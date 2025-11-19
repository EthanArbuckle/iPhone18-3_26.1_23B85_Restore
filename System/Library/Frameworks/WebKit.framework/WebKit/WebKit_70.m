uint64_t sub_19D92D588(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (v15)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  v17 = *(v14 + 16);
  if (v17)
  {
    *(v14 + 16) = v17 - 1;
    goto LABEL_8;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkDataTaskCocoa::updateFirstPartyInfoForSession(WTF::URL const&)::$_0::operator()(WTF::StringImpl **a1, void *a2)
{
  v3 = [objc_msgSend(a2 "_resolvedCNAMEChain")];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    MEMORY[0x19EB02040](&v8, v4);
    WebKit::NetworkTaskCocoa::lastCNAMEDomain(&v8, a1);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_19D92D710(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::StringView::toString(WTF::StringView *this)
{
  if (*(this + 12) == 1)
  {
    return WTF::String::String();
  }

  else
  {
    return WTF::String::String();
  }
}

WebKit::NetworkDataTaskCocoa *WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(WebKit::NetworkDataTaskCocoa *this, WebKit::NetworkSession *a2, WebKit::NetworkDataTaskClient *a3, const WebKit::NetworkLoadParameters *a4)
{
  v170 = *MEMORY[0x1E69E9840];
  v7 = (WebKit::NetworkDataTask::NetworkDataTask(this, a2, a3, (a4 + 48), *(a4 + 250), *(a4 + 252), *(a4 + 254)) + 552);
  WebKit::NetworkTaskCocoa::NetworkTaskCocoa(v7, a2);
  *this = &unk_1F10ED0D0;
  *(this + 69) = &unk_1F10ED168;
  v8 = WebKit::NetworkSessionCocoa::sessionWrapperForTask(a2, *a4, *a4 != 0, (a4 + 48), *(a4 + 250), *(a4 + 1620));
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v8, v8);
  v9 = *v8;
  atomic_fetch_add(*v8, 1u);
  *(this + 74) = v9;
  v148 = (this + 608);
  *(this + 600) = 0u;
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics((this + 616));
  *(this + 93) = *(a4 + 2);
  *(this + 94) = *(a4 + 1);
  *(this + 95) = *a4;
  *(this + 768) = *(a4 + 3168);
  v10 = *(a4 + 4);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  *(this + 97) = v10;
  *(this + 98) = *(a4 + 406);
  WebCore::ResourceRequestBase::RequestData::RequestData(&v154, a4 + 6);
  v11 = *(a4 + 25);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v156 = v11;
  v12 = *(a4 + 26);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v157 = v12;
  v13 = *(a4 + 27);
  if (v13)
  {
    ++*v13;
  }

  v14 = *(a4 + 28);
  v158 = v13;
  v159 = v14;
  v160 = *(a4 + 232);
  v15 = *(a4 + 30);
  v161 = v15;
  if (v15)
  {
    v16 = v15;
  }

  v17 = WebCore::ResourceRequestBase::url(&v154);
  v18 = *v17;
  if (*v17)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v151 = v18;
  v19 = *(v17 + 24);
  v152 = *(v17 + 8);
  v153 = v19;
  if ((v152 & 1) == 0)
  {
    WebKit::NetworkDataTask::scheduleFailure(this, 1);
    goto LABEL_82;
  }

  if ((v152 & 2) != 0 && *(this + 104) == 1)
  {
    WTF::URL::user(buf, &v151);
    v22 = this + 48;
    v21 = *(this + 6);
    v23 = *buf;
    *buf = 0;
    *(this + 6) = v23;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }

      v80 = *buf;
      *buf = 0;
      if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v80, v20);
      }
    }

    WTF::URL::password(buf, &v151);
    v26 = this + 56;
    v25 = *(this + 7);
    v27 = *buf;
    *buf = 0;
    *(this + 7) = v27;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }

      v81 = *buf;
      *buf = 0;
      if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v24);
      }
    }

    WebCore::ResourceRequestBase::removeCredentials(&v154);
    v29 = WebCore::ResourceRequestBase::url(&v154);
    v30 = *v29;
    if (*v29)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    v31 = v151;
    v151 = v30;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v28);
    }

    v32 = *(v29 + 8);
    v153 = *(v29 + 24);
    v152 = v32;
    v33 = *(this + 2);
    if (!v33 || (v34 = *(v33 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19D92E008);
    }

    v36 = *(v34 + 16);
    v35 = (v34 + 16);
    *v35 = v36 + 1;
    v37 = *(v35 + 2);
    *buf = *(v35 + 1);
    v38 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v37 + 248), buf);
    if (v38)
    {
      v39 = v38;
      v40 = (v38 + 8);
      ++*(v38 + 8);
      if (*v35)
      {
        --*v35;
        if (*v22 && *(*v22 + 4) || *v26 && *(*v26 + 4))
        {
          WebCore::CredentialBase::CredentialBase();
          *v163 = 0;
          WebCore::CredentialStorage::set((v39 + 112), (this + 64), buf, &v151);
          WebCore::Credential::~Credential(buf, v82);
        }

        else
        {
          WebCore::CredentialStorage::get(buf, (v38 + 112), (this + 64), &v151);
          v42 = *buf;
          *buf = 0;
          v43 = *(this + 9);
          *(this + 9) = v42;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v41);
          }

          v44 = *&buf[8];
          *&buf[8] = 0;
          v45 = *(this + 10);
          *(this + 10) = v44;
          if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v45, v41);
          }

          *(this + 88) = buf[16];
          v46 = *v163;
          *v163 = 0;
          v47 = *(this + 12);
          *(this + 12) = v46;
          if (v47)
          {

            v87 = *v163;
            *v163 = 0;
            if (v87)
            {
            }
          }

          v48 = *&buf[8];
          *&buf[8] = 0;
          if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v41);
          }

          v49 = *buf;
          *buf = 0;
          if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v49, v41);
          }
        }

        v50 = *v40;
        if (!*v40)
        {
          __break(0xC471u);
          JUMPOUT(0x19D92E1C8);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v50 = *v35;
      v40 = v35;
      if (*v35)
      {
LABEL_35:
        *v40 = v50 - 1;
        goto LABEL_36;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D92DEB8);
  }

LABEL_36:
  if ((WebCore::Credential::isEmpty((this + 72)) & 1) == 0 && (WebCore::ResourceRequestBase::hasHTTPHeaderField() & 1) == 0)
  {
    WebKit::applyBasicAuthorizationHeader(&v154, (this + 72), v83);
  }

  v51 = WebKit::NetworkTaskCocoa::requestThirdPartyCookieBlockingDecision(v7, &v154);
  WebKit::NetworkDataTask::restrictRequestReferrerToOriginIfNeeded(this, &v154);
  v52 = WebCore::ResourceRequest::nsURLRequest();
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  v55 = [v53 mutableCopy];
  if ((*(a4 + 254) & 1) != 0 || (*(a4 + 3242) & 1) != 0 || (v56 = WebCore::ResourceRequestBase::url(&v154), v57 = WTF::URL::host(v56), v59 = v58, PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(&v154), v61 = WTF::URL::host(PartyForCookies), WTF::operator==(v57, v59 & 0xFFFFFFFFFFLL, v61, v62 & 0xFFFFFFFFFFLL)))
  {
    [v55 _setPrivacyProxyFailClosedForUnreachableNonMainHosts:1];
  }

  if ((*(a4 + 3243) & 1) == 0)
  {
    [v55 _setProhibitPrivacyProxy:1];
  }

  v64 = *(a4 + 1622);
  if ((v64 & 1) != 0 && *(a4 + 254) == 1)
  {
    v84 = *(this + 74);
    if (!v84 || (v85 = *(v84 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19D92E248);
    }

    WebKit::configureForAdvancedPrivacyProtections(*(v85 + 16), v63);
  }

  WebKit::enableAdvancedPrivacyProtections(v55, v64);
  if ((v64 & 0x10) != 0)
  {
    [v55 _setPrivacyProxyFailClosedForUnreachableHosts:1];
  }

  if ((v64 & 0x400) != 0)
  {
    [v55 _setPrivacyProxyFailClosed:1];
  }

  if ((v64 & 0x20) != 0)
  {
    [v55 _setWebSearchContent:1];
  }

  if ((*(a4 + 196) & 0x40) != 0)
  {
    [v55 _setAllowPrivateAccessTokensForThirdParty:1];
  }

  if (WebKit::NetworkTaskCocoa::isOptInCookiePartitioningEnabled(v7) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v55 _setAllowOnlyPartitionedCookies:v51 == 2];
  }

  [v55 setAttribution:(v155 & 4) == 0];
  if (v55)
  {
    v65 = v55;
  }

  if (v53)
  {
  }

  v66 = *(this + 2);
  if (!v66 || (v67 = *(v66 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D92DFE8);
  }

  if ([v55 attribution])
  {
    v68 = v67 + 1;
  }

  else
  {
    v68 = v67;
  }

  *(v68 + 1064) = 1;
  if (*(a4 + 248))
  {
    v69 = 0;
  }

  else
  {
    v69 = WTF::URL::protocolIs() ^ 1;
  }

  v70 = *(this + 2);
  if (v70)
  {
    v71 = *(v70 + 8);
  }

  else
  {
    v71 = 0;
  }

  v72 = *(v71 + 16) + 1;
  *(v71 + 16) = v72;
  v73 = (v71 + 1160);
  if (!v69 || (v75 = v55, *v73))
  {
    v74 = [v55 mutableCopy];
    v75 = v74;
    if ((v69 & 1) == 0)
    {
      [v74 _setProperty:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695AD60]];
    }

    if (*v73)
    {
      WTF::String::createNSString((v71 + 1160), buf);
      [v75 setBoundInterfaceIdentifier:*buf];
      v86 = *buf;
      *buf = 0;
      if (v86)
      {
      }
    }

    if (v55)
    {
    }

    v72 = *(v71 + 16);
  }

  if (!v72)
  {
    __break(0xC471u);
    JUMPOUT(0x19D92E028);
  }

  *(v71 + 16) = v72 - 1;
  if ((WTF::URL::protocolIs() & 1) == 0 && !WTF::URL::protocolIs())
  {
    v88 = *(this + 74);
    if (!v88 || (v89 = *(v88 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19D92E6ACLL);
    }

    WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(v148, [*(v89 + 16) dataTaskWithRequest:v75]);
    v90 = *(a2 + 4);
    *buf = WTF::URL::host(&v151);
    *&buf[8] = v91;
    buf[12] = v92;
    v93 = *(v90 + 376);
    if (v93)
    {
      if (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashSetTranslatorAdapter<WTF::StringViewHashTranslator>,(WTF::ShouldValidateKey)1,WTF::StringView>(v93, buf))
      {
        WTF::URL::port(&v151);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        [*v148 set_hostOverride:host_with_numeric_port];
        if (host_with_numeric_port)
        {
        }
      }
    }

    WebKit::NetworkTaskCocoa::updateTaskWithStoragePartitionIdentifier(v7, &v154);
    is_enabled = kdebug_is_enabled();
    v95 = MEMORY[0x1E695ABC0];
    if (!is_enabled)
    {
      goto LABEL_136;
    }

    if (*MEMORY[0x1E696EB68] == 1)
    {
      v114 = WTFSignpostLogHandle();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v145 = *v148;
        v143 = WTFCurrentContinuousTime();
        WebCore::ResourceRequestBase::httpMethod(&v154);
        WTF::String::utf8();
        if (v150)
        {
          v115 = v150 + 16;
        }

        else
        {
          v115 = 0;
        }

        v142 = v115;
        WTF::String::utf8();
        v116 = WebCore::ResourceRequestBase::priority(&v154);
        v117 = v149 + 16;
        if (!v149)
        {
          v117 = 0;
        }

        if (v116 >= 5)
        {
          v118 = *v95;
        }

        else
        {
          v118 = dbl_19E7032B0[v116];
        }

        v134 = *(a4 + 3200);
        *buf = 67110915;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = 0;
        *&buf[14] = 2048;
        *&buf[16] = v145;
        *v163 = 2048;
        *&v163[2] = v143;
        *v164 = 2082;
        *&v164[2] = v142;
        *v165 = 2081;
        *&v165[2] = v117;
        v166 = 2048;
        v167 = v118;
        v168 = 1024;
        v169 = v134;
        _os_log_impl(&dword_19D52D000, v114, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu %{public}s %{private}s pri: %.2f preconnect: %d", buf, 0x46u);
        v136 = v149;
        v149 = 0;
        if (v136)
        {
          if (*v136 == 1)
          {
            WTF::fastFree(v136, v135);
          }

          else
          {
            --*v136;
          }
        }

        v137 = v150;
        v150 = 0;
        if (v137)
        {
          if (*v137 == 1)
          {
            WTF::fastFree(v137, v135);
          }

          else
          {
            --*v137;
          }
        }
      }

LABEL_136:
      if (!*(a4 + 250))
      {
        v108 = *(this + 74);
        if (!v108 || (v109 = *(v108 + 8)) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19D92E72CLL);
        }

        v110 = [*(v109 + 16) configuration];
        v111 = v110;
        if (v110)
        {
          v112 = v110;
        }

        [v111 setURLCredentialStorage:0];
        [*v148 _adoptEffectiveConfiguration:v111];
        if (v111)
        {
        }
      }

      v96 = *(this + 74);
      if (!v96 || (v97 = *(v96 + 8)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19D92E6CCLL);
      }

      v98 = [*v148 taskIdentifier];
      v100 = *(v97 + 32);
      v99 = (v97 + 32);
      if (v100 && WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(v99, v98))
      {
        __break(0xC471u);
        JUMPOUT(0x19D92E6ECLL);
      }

      v101 = *(this + 74);
      if (!v101 || (v102 = *(v101 + 8)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19D92E70CLL);
      }

      v103 = [*v148 taskIdentifier];
      v149 = this;
      v150 = v103;
      WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkDataTaskCocoa*>(buf, (v102 + 32), &v150, &v149);
      if (*(a4 + 3200) == 1)
      {
        [*v148 set_preconnect:1];
      }

      WebKit::NetworkTaskCocoa::setCookieTransform(v7, &v154);
      if (WebKit::NetworkTaskCocoa::shouldBlockCookies(v51))
      {
        v119 = *(this + 2);
        if (!v119 || (v120 = *(v119 + 8)) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19D92E74CLL);
        }

        ++v120[4];
        v121 = (*(*v120 + 88))(v120);
        v122 = v120[4];
        if (!v122)
        {
          __break(0xC471u);
          JUMPOUT(0x19D92E76CLL);
        }

        v120[4] = v122 - 1;
        if (v121)
        {
          if (*(this + 584) == 1)
          {
            v123 = qword_1ED6416F0;
            if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
            {
              v146 = *(this + 94);
              v124 = *(this + 93);
              v125 = [*(this + 76) taskIdentifier];
              v126 = [objc_msgSend(objc_msgSend(v75 "URL")];
              *buf = 134219010;
              *&buf[4] = this;
              *&buf[12] = 2048;
              *&buf[14] = v146;
              *&buf[22] = 2048;
              *v163 = v124;
              *&v163[8] = 2048;
              *v164 = v125;
              *&v164[8] = 2080;
              *v165 = v126;
              _os_log_impl(&dword_19D52D000, v123, OS_LOG_TYPE_DEFAULT, "%p - NetworkDataTaskCocoa::logCookieInformation: pageID=%llu, frameID=%llu, taskID=%lu: Blocking cookies for URL %s", buf, 0x34u);
            }
          }
        }

        WebKit::NetworkTaskCocoa::blockCookies(v7);
      }

      v104 = WebCore::ResourceRequestBase::priority(&v154);
      v106 = (&unk_19E7032D8 + 4 * v104);
      if (v104 >= 5)
      {
        v106 = v95;
      }

      *&v105 = *v106;
      [*v148 setPriority:v105];
      WebKit::NetworkTaskCocoa::updateTaskWithFirstPartyForSameSiteCookies(*v148, &v154, v107);
      if (*(a4 + 3232) == 1)
      {
        [*v148 set_nw_activity:*(a4 + 403)];
      }

      goto LABEL_78;
    }

    v127 = WTFSignpostLogHandle();
    v128 = v127;
    if (v127)
    {
      v129 = v127;
    }

    if (*v148)
    {
      v147 = os_signpost_id_make_with_pointer(v128, *v148);
      if (v147 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_206:
        if (v128)
        {
        }

        goto LABEL_136;
      }
    }

    else
    {
      v147 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v128))
    {
      WebCore::ResourceRequestBase::httpMethod(&v154);
      WTF::String::utf8();
      if (v150)
      {
        v130 = v150 + 16;
      }

      else
      {
        v130 = 0;
      }

      v144 = v130;
      WTF::String::utf8();
      v131 = WebCore::ResourceRequestBase::priority(&v154);
      v132 = v149 + 16;
      if (!v149)
      {
        v132 = 0;
      }

      if (v131 >= 5)
      {
        v133 = *v95;
      }

      else
      {
        v133 = dbl_19E7032B0[v131];
      }

      v138 = *(a4 + 3200);
      *buf = 136446979;
      *&buf[4] = v144;
      *&buf[12] = 2081;
      *&buf[14] = v132;
      *&buf[22] = 2048;
      *v163 = v133;
      *&v163[8] = 1024;
      *v164 = v138;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v128, OS_SIGNPOST_INTERVAL_BEGIN, v147, "DataTask", "%{public}s %{private}s pri: %.2f preconnect: %d", buf, 0x26u);
      v140 = v149;
      v149 = 0;
      if (v140)
      {
        if (*v140 == 1)
        {
          WTF::fastFree(v140, v139);
        }

        else
        {
          --*v140;
        }
      }

      v141 = v150;
      v150 = 0;
      if (v141)
      {
        if (*v141 == 1)
        {
          WTF::fastFree(v141, v139);
        }

        else
        {
          --*v141;
        }
      }
    }

    goto LABEL_206;
  }

  WebKit::NetworkDataTask::scheduleFailure(this, 2);
LABEL_78:
  if (v55)
  {
  }

  if (v75)
  {
  }

LABEL_82:
  v77 = v151;
  v151 = 0;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v76);
  }

  v78 = v161;
  v161 = 0;
  if (v78)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&v154);
  return this;
}

void sub_19D92E790(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, WebKit::SandboxExtension **a14, WTF *a15, WTF *a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15)
  {
    if (*a15 == 1)
    {
      WTF::fastFree(a15, a2);
    }

    else
    {
      --*a15;
    }
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::fastFree(a16, a2);
    }

    else
    {
      --*a16;
    }
  }

  if (v26)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest(&a22);
  v29 = v22[97];
  v22[97] = 0;
  if (v29)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v29, v28);
  }

  WebCore::NetworkLoadMetrics::~NetworkLoadMetrics((v22 + 77), v28);
  v31 = *a13;
  *a13 = 0;
  if (v31)
  {
  }

  v32 = *a14;
  *a14 = 0;
  if (v32)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v32);
  }

  v33 = v22[74];
  v22[74] = 0;
  if (v33)
  {
    if (atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v33);
      WTF::fastFree(v33, v30);
    }
  }

  WebKit::NetworkTaskCocoa::~NetworkTaskCocoa(v23, v30);
  WebKit::NetworkDataTask::~NetworkDataTask(v22, v34);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkSessionCocoa::sessionWrapperForTask(WebKit **a1, WebKit::AuxiliaryProcess *a2, char a3, WebCore::ResourceRequestBase *a4, unsigned int a5, int a6)
{
  if ((a6 & 0x100) != 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = 1;
  }

  isParentProcessAFullWebBrowser = WebKit::isParentProcessAFullWebBrowser(a1[4], a2);
  v14 = a1[4];
  v28 = a1[3];
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v14 + 31, &v28);
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  ++*(v15 + 8);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a4);
  WebCore::RegistrableDomain::RegistrableDomain(&v28, PartyForCookies);
  shouldBlockThirdPartyCookiesButKeepFirstPartyCookiesFor = WebCore::NetworkStorageSession::shouldBlockThirdPartyCookiesButKeepFirstPartyCookiesFor();
  v20 = shouldBlockThirdPartyCookiesButKeepFirstPartyCookiesFor;
  if (shouldBlockThirdPartyCookiesButKeepFirstPartyCookiesFor)
  {
    v24 = WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, a3);
    v25 = (v24 + 8);
    ++*(v24 + 8);
    v6 = WebKit::SessionSet::isolatedSession(v24, a5, &v28, a1);
    WTF::RefCounted<WebKit::SessionSet>::deref(v25, v26);
  }

  v21 = v28;
  v28 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }
  }

  v22 = *(v16 + 8);
  if ((v20 & 1) == 0)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    *(v16 + 8) = v22 - 1;
LABEL_13:
    if ((v12 & (isParentProcessAFullWebBrowser ^ 1)) != 0)
    {
      return WebKit::NetworkSessionCocoa::appBoundSession(a1, a2, a3, a5);
    }

    if (a5 <= 1)
    {
      return WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, a3) + 32;
    }

    return WebKit::NetworkSessionCocoa::initializeEphemeralStatelessSessionIfNeeded(a1, a2, a3);
  }

  if (v22)
  {
    *(v16 + 8) = v22 - 1;
    return v6;
  }

LABEL_22:
  result = 290;
  __break(0xC471u);
  return result;
}

void sub_19D92EC44(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  WTF::RefCounted<WebKit::SessionSet>::deref(v11, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v13);
  }

  v14 = *(v10 + 8);
  if (v14)
  {
    *(v10 + 8) = v14 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WTF::StringImpl *WebKit::applyBasicAuthorizationHeader(WebKit *this, WebCore::ResourceRequest *a2, const WebCore::Credential *a3)
{
  WebCore::CredentialBase::serializationForBasicAuthorizationHeader(&v5, a2);
  WebCore::ResourceRequestBase::setHTTPHeaderField();
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void sub_19D92ED20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL WTF::operator==(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = a2 == a4 && a1 == a3;
  if (a1 == a3 || a2 != a4)
  {
    return result;
  }

  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if (a4)
      {
        if (*a1 != *a3)
        {
          return 0;
        }

        v6 = a4 - 1;
        if (a4 != 1)
        {
          v5 = (a1 + 1);
          v4 = (a3 + 1);
          if (a4 == 2)
          {
            v10 = v5->u8[0];
            v12 = v4->u8[0];
            return v10 == v12;
          }

          v9 = __clz(a4 - 2);
          if (v9 == 29)
          {
            if (v5->i32[0] == v4->i32[0])
            {
              v10 = *&a1[a4 - 4];
              v11 = &a3[a4];
LABEL_16:
              v12 = *(v11 - 1);
              return v10 == v12;
            }

            return 0;
          }

          if (v9 <= 27)
          {
            if (v9 == 27)
            {
              v14 = vandq_s8(vceqq_s8(*&a1[a4 - 16], *&a3[a4 - 16]), vceqq_s8(*(a1 + 1), *(a3 + 1)));
              v14.i8[0] = vminvq_u8(v14);
              return v14.i32[0] != 0;
            }

LABEL_52:
            v25 = vceqq_s8(*v5, *v4);
            v25.i8[0] = vminvq_u8(v25);
            if (!v25.i32[0])
            {
              return 0;
            }

            if (a4 < 0x11uLL)
            {
              return 1;
            }

            goto LABEL_67;
          }

          if (v9 == 28)
          {
            if (v5->i64[0] != v4->i64[0])
            {
              return 0;
            }

            v15 = *&a1[a4 - 8];
            v16 = &a3[a4];
            return v15 == *(v16 - 1);
          }

          if (v9 == 30)
          {
            if (v5->u16[0] == v4->u16[0])
            {
              v10 = *&a1[a4 - 2];
              v12 = *&a3[a4 - 2];
              return v10 == v12;
            }

            return 0;
          }

          if (v9 != 31)
          {
            goto LABEL_52;
          }

LABEL_31:
          v10 = v5->u16[0];
          v12 = v4->u16[0];
          return v10 == v12;
        }

        return 1;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      v32 = v6 & 0xF;
      do
      {
        v33 = vceqq_s8(*(v5 + v32), *(v4 + v32));
        v33.i8[0] = vminvq_u8(v33);
        result = v33.i32[0] != 0;
        v32 += 16;
        if (v33.i32[0])
        {
          v34 = v32 >= v6;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
      return result;
    }

    if (!a4)
    {
      goto LABEL_66;
    }

    if (*a3 != *a1)
    {
      return 0;
    }

    v18 = (a1 + 1);
    v19 = a4 - 1;
    v20 = (a3 + 2);
    if (v19 >= 8)
    {
      v21 = vceqq_s16(*v20, vmovl_u8(*v18));
      v21.i16[0] = vminvq_u16(v21);
      if (!v21.i32[0])
      {
        return 0;
      }

      v22 = v19 & 7;
      do
      {
        v23 = vceqq_s16(*(v20 + 2 * v22), vmovl_u8(*(v18 + v22)));
        v23.i16[0] = vminvq_u16(v23);
        result = v23.i32[0] != 0;
        v22 += 8;
        if (v23.i32[0])
        {
          v24 = v22 >= v19;
        }

        else
        {
          v24 = 1;
        }
      }

      while (!v24);
      return result;
    }

    if (v19 >= 4)
    {
      v35 = (v18->u32[0] | (v18->u32[0] << 16)) & 0xFFFF0000FFFFLL;
      v13 = ((v35 | (v35 << 8)) & 0xFF00FF00FF00FFLL) == v20->i64[0];
      v36 = v19 & 3;
      v37 = (*(v18->u32 + v36) | (*(v18->u32 + v36) << 16)) & 0xFFFF0000FFFFLL;
      v38 = (v37 | (v37 << 8)) & 0xFF00FF00FF00FFLL;
      v39 = *(v20->i64 + 2 * v36);
      return v13 && v38 == v39;
    }

    if (v19 >= 2)
    {
      v45 = (v18->u16[0] | (v18->u16[0] << 8)) & 0xFF00FF;
      v46 = v20->i32[0];
      v47 = v19 & 1;
      v48 = (*(v18->u16 + v47) | (*(v18->u16 + v47) << 8)) & 0xFF00FF;
      v49 = *(v20->i32 + 2 * v47);
      return v45 == v46 && v48 == v49;
    }

    if (a4 != 2)
    {
      return 1;
    }

    v12 = v18->u8[0];
LABEL_97:
    v10 = v20->u16[0];
    return v10 == v12;
  }

  if ((a4 & 0x100000000) != 0)
  {
    if (!a4)
    {
      goto LABEL_66;
    }

    if (*a1 != *a3)
    {
      return 0;
    }

    v20 = (a1 + 2);
    v26 = a4 - 1;
    v27 = (a3 + 1);
    if (v26 >= 8)
    {
      v28 = vceqq_s16(*v20, vmovl_u8(*v27));
      v28.i16[0] = vminvq_u16(v28);
      if (!v28.i32[0])
      {
        return 0;
      }

      v29 = v26 & 7;
      do
      {
        v30 = vceqq_s16(*(v20 + 2 * v29), vmovl_u8(*(v27 + v29)));
        v30.i16[0] = vminvq_u16(v30);
        result = v30.i32[0] != 0;
        v29 += 8;
        if (v30.i32[0])
        {
          v31 = v29 >= v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
      return result;
    }

    if (v26 >= 4)
    {
      v40 = (v27->u32[0] | (v27->u32[0] << 16)) & 0xFFFF0000FFFFLL;
      v13 = ((v40 | (v40 << 8)) & 0xFF00FF00FF00FFLL) == v20->i64[0];
      v41 = v26 & 3;
      v42 = (*(v27->u32 + v41) | (*(v27->u32 + v41) << 16)) & 0xFFFF0000FFFFLL;
      v43 = (v42 | (v42 << 8)) & 0xFF00FF00FF00FFLL;
      v44 = *(v20->i64 + 2 * v41);
      return v13 && v43 == v44;
    }

    if (v26 >= 2)
    {
      v51 = (v27->u16[0] | (v27->u16[0] << 8)) & 0xFF00FF;
      v52 = v20->i32[0];
      v53 = v26 & 1;
      v54 = (*(v27->u16 + v53) | (*(v27->u16 + v53) << 8)) & 0xFF00FF;
      v55 = *(v20->i32 + 2 * v53);
      return v51 == v52 && v54 == v55;
    }

    if (a4 != 2)
    {
      return 1;
    }

    v12 = v27->u8[0];
    goto LABEL_97;
  }

  if (!a4)
  {
    goto LABEL_66;
  }

  if (*a1 != *a3)
  {
    return 0;
  }

  v17 = a4 - 1;
  if (a4 == 1)
  {
    return 1;
  }

  v5 = (a1 + 2);
  v4 = (a3 + 2);
  if (a4 == 2)
  {
    goto LABEL_31;
  }

  v50 = __clz(a4 - 2);
  if (v50 > 29)
  {
    if (v50 == 30)
    {
      if (v5->i32[0] == v4->i32[0])
      {
        v10 = *&a1[2 * a4 - 4];
        v11 = &a3[2 * a4];
        goto LABEL_16;
      }

      return 0;
    }

    if (v50 == 31)
    {
      v10 = v5->i32[0];
      v12 = v4->i32[0];
      return v10 == v12;
    }
  }

  else
  {
    if (v50 == 28)
    {
      v14 = vandq_s8(vceqq_s16(*&a1[2 * a4 - 16], *&a3[2 * a4 - 16]), vceqq_s16(*(a1 + 2), *(a3 + 2)));
      v14.i16[0] = vminvq_u16(v14);
      return v14.i32[0] != 0;
    }

    if (v50 == 29)
    {
      if (v5->i64[0] != v4->i64[0])
      {
        return 0;
      }

      v15 = *&a1[2 * a4 - 8];
      v16 = &a3[2 * a4];
      return v15 == *(v16 - 1);
    }
  }

  v56 = vceqq_s16(*v5, *v4);
  v56.i16[0] = vminvq_u16(v56);
  if (!v56.i32[0])
  {
    return 0;
  }

  if (a4 < 9uLL)
  {
    return 1;
  }

  v57 = v17 & 7;
  do
  {
    v58 = vceqq_s16(*(v5 + 2 * v57), *(v4 + 2 * v57));
    v58.i16[0] = vminvq_u16(v58);
    result = v58.i32[0] != 0;
    v57 += 8;
    if (v58.i32[0])
    {
      v59 = v57 >= v17;
    }

    else
    {
      v59 = 1;
    }
  }

  while (!v59);
  return result;
}

uint64_t *WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkDataTaskCocoa*>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D92F460);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 24 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v26 = 0;
        v25 = v9 + 24 * *(v9 - 4);
        goto LABEL_22;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 24 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  v19 = *a4;
  *v15 = v4;
  if (v19)
  {
    v27 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v19 + 8));
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v27);
  }

  else
  {
    result = 0;
  }

  v20 = v15[2];
  v15[2] = result;
  if (v20)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v20, a2);
  }

  v15[1] = v19;
  v21 = *a2;
  if (*a2)
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
      goto LABEL_21;
    }

LABEL_24:
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(a2, v15);
    v15 = result;
    v21 = *a2;
    if (*a2)
    {
      LODWORD(v24) = *(v21 - 4);
    }

    else
    {
      LODWORD(v24) = 0;
    }

    goto LABEL_21;
  }

  if (3 * v24 <= 4 * v23)
  {
    goto LABEL_24;
  }

LABEL_21:
  v25 = v21 + 24 * v24;
  v26 = 1;
LABEL_22:
  *v8 = v15;
  v8[1] = v25;
  *(v8 + 16) = v26;
  return result;
}

void WebCore::NetworkLoadMetrics::~NetworkLoadMetrics(WebCore::NetworkLoadMetrics *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

void WebKit::NetworkTaskCocoa::~NetworkTaskCocoa(WebKit::NetworkTaskCocoa *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EDA00;
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

void WebKit::NetworkDataTaskCocoa::~NetworkDataTaskCocoa(WebKit::NetworkDataTaskCocoa *this, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!*(this + 76))
  {
    goto LABEL_23;
  }

  if (kdebug_is_enabled())
  {
    if (*MEMORY[0x1E696EB68] == 1)
    {
      v28 = WTFSignpostLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(this + 76);
        v35[0] = 67109888;
        v35[1] = 2;
        v36 = 1024;
        v37 = 0;
        v38 = 2048;
        v39 = v29;
        v40 = 2048;
        v41 = WTFCurrentContinuousTime();
        _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu ", v35, 0x22u);
      }

      goto LABEL_3;
    }

    v30 = WTFSignpostLogHandle();
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    v33 = *(this + 76);
    if (v33)
    {
      v34 = os_signpost_id_make_with_pointer(v31, v33);
      if (v34 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_49:
        if (v31)
        {
        }

        goto LABEL_3;
      }
    }

    else
    {
      v34 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v31))
    {
      LOWORD(v35[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v31, OS_SIGNPOST_INTERVAL_END, v34, "DataTask", &unk_19E9BA835, v35, 2u);
    }

    goto LABEL_49;
  }

LABEL_3:
  v3 = *(this + 76);
  if (v3)
  {
    v4 = *(this + 74);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = [v3 taskIdentifier];
        v7 = *(v5 + 32);
        if (!v7)
        {
          goto LABEL_53;
        }

        if (v6 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19D92F8F8);
        }

        if (!v6)
        {
          goto LABEL_53;
        }

        v8 = *(v7 - 8);
        v9 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
        v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
        v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
        v12 = v8 & ((v11 >> 31) ^ v11);
        v13 = (v7 + 24 * v12);
        v14 = *v13;
        if (*v13 != v6)
        {
          v15 = 1;
          while (v14)
          {
            v12 = (v12 + v15) & v8;
            v13 = (v7 + 24 * v12);
            v14 = *v13;
            ++v15;
            if (*v13 == v6)
            {
              goto LABEL_15;
            }
          }

          v13 = (v7 + 24 * *(v7 - 4));
        }

LABEL_15:
        if ((v7 + 24 * *(v7 - 4)) == v13)
        {
LABEL_53:
          __break(0xC471u);
          JUMPOUT(0x19D92F8D8);
        }

        *v13 = -1;
        v16 = v13[2];
        v13[2] = 0;
        if (v16)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v16, a2);
        }

        v17 = *(v5 + 32);
        v18 = vadd_s32(*(v17 - 16), 0xFFFFFFFF00000001);
        *(v17 - 16) = v18;
        v19 = *(v17 - 4);
        if (6 * v18.i32[1] < v19 && v19 >= 9)
        {
          WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash((v5 + 32), v19 >> 1, 0);
        }
      }
    }
  }

LABEL_23:
  v21 = *(this + 97);
  *(this + 97) = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v21, a2);
  }

  v22 = *(this + 92);
  *(this + 92) = 0;
  if (v22)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v22, a2);
  }

  v23 = *(this + 88);
  *(this + 88) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, a2);
  }

  v24 = *(this + 76);
  *(this + 76) = 0;
  if (v24)
  {
  }

  v25 = *(this + 75);
  *(this + 75) = 0;
  if (v25)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v25);
  }

  v26 = *(this + 74);
  *(this + 74) = 0;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, a2);
  }

  WebKit::NetworkTaskCocoa::~NetworkTaskCocoa((this + 552), a2);
  WebKit::NetworkDataTask::~NetworkDataTask(this, v27);
}

{
  WebKit::NetworkDataTaskCocoa::~NetworkDataTaskCocoa(this, a2);

  WTF::fastFree(v2, v3);
}

void sub_19D92F91C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = v2[97];
  v2[97] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  WebCore::NetworkLoadMetrics::~NetworkLoadMetrics((v2 + 77), a2);
  v6 = v2[76];
  v2[76] = 0;
  if (v6)
  {
  }

  v7 = v2[75];
  v2[75] = 0;
  if (v7)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
  }

  v8 = v2[74];
  v2[74] = 0;
  if (v8)
  {
    if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v5);
    }
  }

  WebKit::NetworkTaskCocoa::~NetworkTaskCocoa((v2 + 69), v5);
  WebKit::NetworkDataTask::~NetworkDataTask(v2, v9);
  _Unwind_Resume(a1);
}

void non-virtual thunk toWebKit::NetworkDataTaskCocoa::~NetworkDataTaskCocoa(WebKit::NetworkDataTaskCocoa *this, void *a2)
{
  WebKit::NetworkDataTaskCocoa::~NetworkDataTaskCocoa((this - 552), a2);
}

{
  WebKit::NetworkDataTaskCocoa::~NetworkDataTaskCocoa((this - 552), a2);

  WTF::fastFree(v2, v3);
}

void WebKit::NetworkDataTaskCocoa::didSendData(WebKit::NetworkDataTaskCocoa *this, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v8 = *MEMORY[0x1E696EB68];
  v9 = WTFSignpostLogHandle();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 76);
      v15 = 67110400;
      *v16 = 0;
      *&v16[4] = 1024;
      *&v16[6] = 0;
      *v17 = 2048;
      *&v17[2] = v11;
      v18 = 2048;
      v19 = WTFCurrentContinuousTime();
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu sent %llu bytes (expected %llu bytes)", &v15, 0x36u);
    }

    goto LABEL_2;
  }

  if (v9)
  {
    v12 = v9;
  }

  v13 = *(this + 76);
  if (!v13)
  {
    v14 = 0xEEEEB0B5B2B2EEEELL;
LABEL_15:
    if (os_signpost_enabled(v10))
    {
      v15 = 134218240;
      *v16 = a2;
      *&v16[8] = 2048;
      *v17 = a3;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v10, OS_SIGNPOST_EVENT, v14, "DataTask", "sent %llu bytes (expected %llu bytes)", &v15, 0x16u);
    }

    goto LABEL_17;
  }

  v14 = os_signpost_id_make_with_pointer(v10, v13);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (v10)
  {
  }

LABEL_2:
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      (**v7)(v7);
      (*(*v7 + 80))(v7, a2, a3);
      (*(*v7 + 8))(v7);
    }
  }
}

uint64_t WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, uint64_t *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v91 = *MEMORY[0x1E696EB68];
  v92 = WTFSignpostLogHandle();
  v93 = v92;
  if (v91 == 1)
  {
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v94 = *(a1 + 608);
      *buf = 67109888;
      *&buf[4] = 0;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      *&buf[14] = 2048;
      v100 = v94;
      *v101 = 2048;
      *&v101[2] = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v93, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu redirect", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v92)
  {
    v95 = v92;
  }

  v96 = *(a1 + 608);
  if (!v96)
  {
    v97 = 0xEEEEB0B5B2B2EEEELL;
LABEL_138:
    if (os_signpost_enabled(v93))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v93, OS_SIGNPOST_EVENT, v97, "DataTask", "redirect", buf, 2u);
    }

    goto LABEL_140;
  }

  v97 = os_signpost_id_make_with_pointer(v93, v96);
  if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_138;
  }

LABEL_140:
  if (v93)
  {
  }

LABEL_2:
  if ((*(a1 + 714) & 0x80000000) == 0)
  {
    v8 = WebCore::ResourceRequestBase::url(a3);
    WebCore::SecurityOrigin::create(buf, v8, v9);
    v10 = WebCore::ResourceResponseBase::url(a2);
    WebCore::EmptyOriginAccessPatterns::singleton(v10);
    v12 = WebCore::SecurityOrigin::canRequest() ? 0 : 0x80;
    *(a1 + 714) = v12 & 0x80 | *(a1 + 714) & 0x7F;
    v13 = *buf;
    *buf = 0;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v13, v11);
    }
  }

  v14 = (a1 + 328);
  if (WebCore::ResourceRequestBase::isNull((a1 + 328)))
  {
    v14 = (a1 + 128);
  }

  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 307 || WebCore::ResourceResponseBase::httpStatusCode(a2) == 308)
  {
    WebCore::ResourceRequestBase::httpBody(buf, v14);
    if (*buf)
    {
      if (*(*buf + 20))
      {
        v15 = *(a1 + 112);
        if (!v15 || (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v15, "get", 3uLL) & 1) == 0)
        {
          WebCore::ResourceRequestBase::setHTTPBody();
        }
      }
    }

    WebCore::ResourceRequestBase::httpContentType(&v98, v14);
    v17 = v98;
    if (!v98)
    {
      goto LABEL_34;
    }

    if (*(v98 + 1))
    {
      WebCore::ResourceRequestBase::setHTTPHeaderField();
      v17 = v98;
      v98 = 0;
      if (!v17)
      {
LABEL_34:
        v23 = *buf;
        *buf = 0;
        if (v23)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v23);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v98 = 0;
    }

    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    goto LABEL_34;
  }

  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 303)
  {
    v18 = *WebCore::ResourceRequestBase::httpMethod(v14);
    if (v18)
    {
      if (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v18, "head", 4uLL))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v98 = *buf;
        WebCore::ResourceRequestBase::setHTTPMethod(a3, &v98);
        v20 = v98;
        v98 = 0;
        if (v20)
        {
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v19);
          }
        }
      }
    }

    WebCore::ResourceRequestBase::httpContentType(buf, v14);
    v22 = *buf;
    if (*buf)
    {
      if (*(*buf + 4))
      {
        WebCore::ResourceRequestBase::setHTTPHeaderField();
        v22 = *buf;
        *buf = 0;
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *buf = 0;
      }

      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }
  }

LABEL_36:
  if (*(a1 + 544) == 1)
  {
    WebCore::ResourceRequestBase::url(a3);
    if ((WTF::URL::protocolIs() & 1) == 0)
    {
      WebCore::ResourceRequestBase::httpReferrer(buf, a3);
      v25 = WTF::protocolIs();
      v26 = *buf;
      *buf = 0;
      if (!v26 || atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        if (!v25)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      WTF::StringImpl::destroy(v26, v24);
      if (v25)
      {
LABEL_41:
        WebCore::ResourceRequestBase::clearHTTPReferrer(a3);
      }
    }
  }

LABEL_42:
  v27 = WebCore::ResourceRequestBase::url(a3);
  WTF::URL::user(buf, v27);
  v29 = *buf;
  *buf = 0;
  v30 = *(a1 + 48);
  *(a1 + 48) = v29;
  if (v30)
  {
    if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }

    v31 = *buf;
    *buf = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v28);
    }
  }

  WTF::URL::password(buf, v27);
  v33 = *buf;
  *buf = 0;
  v34 = *(a1 + 56);
  *(a1 + 56) = v33;
  if (v34)
  {
    if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }

    v35 = *buf;
    *buf = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v32);
    }
  }

  v36 = WebCore::ResourceRequestBase::httpMethod(a3);
  WTF::String::operator=((a1 + 112), v36);
  WebCore::ResourceRequestBase::removeCredentials(a3);
  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = *(v37 + 8);
    if (v38)
    {
      v39 = 0;
      ++*(v38 + 16);
      goto LABEL_57;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = 1;
LABEL_57:
  v40 = WebCore::ResourceRequestBase::url(a3);
  v41 = WebCore::ResourceResponseBase::url(a2);
  if (WTF::protocolHostAndPortAreEqual(v40, v41, v42))
  {
    v43 = *(a1 + 48);
    if (!v43 || !*(v43 + 4))
    {
      v44 = *(a1 + 56);
      if ((!v44 || !*(v44 + 4)) && (*(a2 + 138) & 1) == 0)
      {
        if (v39)
        {
          goto LABEL_147;
        }

        v45 = *(v38 + 32);
        v98 = *(v38 + 24);
        if (WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v45 + 248), &v98))
        {
          v46 = *(v38 + 32);
          v98 = *(v38 + 24);
          v47 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v46 + 248), &v98);
          v48 = WebCore::ResourceRequestBase::url(a3);
          WebCore::CredentialStorage::get(buf, (v47 + 112), (a1 + 64), v48);
        }

        else
        {
          WebCore::CredentialBase::CredentialBase(buf);
          *v101 = 0;
        }

        if ((WebCore::Credential::isEmpty(buf) & 1) == 0)
        {
          v81 = *buf;
          if (*buf)
          {
            atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
          }

          v82 = *(a1 + 72);
          *(a1 + 72) = v81;
          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v82, v79);
          }

          v83 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit(*&buf[8], 2u, memory_order_relaxed);
          }

          v84 = *(a1 + 80);
          *(a1 + 80) = v83;
          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v84, v79);
          }

          *(a1 + 88) = v100;
          v85 = *v101;
          if (*v101)
          {
            v86 = *v101;
          }

          v87 = *(a1 + 96);
          *(a1 + 96) = v85;
          if (v87)
          {
          }

          WebKit::applyBasicAuthorizationHeader(a3, (a1 + 72), v80);
        }

        v88 = *v101;
        *v101 = 0;
        if (v88)
        {
        }

        v89 = *&buf[8];
        *&buf[8] = 0;
        if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, v79);
        }

        v90 = *buf;
        *buf = 0;
        if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, v79);
        }
      }
    }
  }

  else
  {
    WebCore::ResourceRequestBase::clearHTTPAuthorization(a3);
    WebCore::ResourceRequestBase::clearHTTPOrigin(a3);
  }

  if (*(a1 + 545) == 1)
  {
    v49 = WebCore::ResourceRequestBase::url(a3);
    WebCore::ResourceRequestBase::setFirstPartyForCookies(a3, v49);
  }

  else
  {
    PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a3);
    WebCore::RegistrableDomain::RegistrableDomain(&v98, PartyForCookies);
    if (v39)
    {
      __break(0xC471u);
      JUMPOUT(0x19D93076CLL);
    }

    v51 = *(v38 + 32);
    *buf = *(v38 + 24);
    v52 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v51 + 248), buf);
    if (v52)
    {
      v54 = v52;
      ++*(v52 + 8);
      v55 = WebCore::ResourceResponseBase::url(a2);
      WebCore::RegistrableDomain::RegistrableDomain(buf, v55);
      hasStorageAccess = WebCore::NetworkStorageSession::hasStorageAccess();
      v58 = *buf;
      *buf = 0;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v56);
      }

      v59 = WebCore::ResourceRequestBase::url(a3);
      WebCore::RegistrableDomain::RegistrableDomain(buf, v59);
      v60 = WebCore::NetworkStorageSession::hasStorageAccess();
      v61 = *buf;
      *buf = 0;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v53);
      }

      if ((hasStorageAccess & v60) == 1)
      {
        v62 = WebCore::ResourceRequestBase::url(a3);
        WebCore::ResourceRequestBase::setFirstPartyForCookies(a3, v62);
      }

      v63 = *(v54 + 8);
      if (!v63)
      {
        __break(0xC471u);
        JUMPOUT(0x19D93078CLL);
      }

      *(v54 + 8) = v63 - 1;
    }

    v64 = v98;
    v98 = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v53);
    }
  }

  v65 = *a4;
  *a4 = 0;
  *buf = v65;
  *&buf[8] = a1;
  v66 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a1 + 8));
  v100 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v66);
  WebCore::ResourceResponseBase::ResourceResponseBase(v101, a2);
  v67 = *(a2 + 248);
  v102 = v67;
  if (v67)
  {
    v78 = v67;
  }

  v103 = *(a2 + 256);
  v68 = WTF::fastMalloc(0x128);
  *v68 = &unk_1F10ED698;
  v69 = *buf;
  memset(buf, 0, sizeof(buf));
  *(v68 + 8) = v69;
  *(v68 + 24) = v100;
  v100 = 0;
  WebCore::ResourceResponseBase::ResourceResponseBase(v68 + 32, v101);
  v70 = v102;
  v102 = 0;
  *(v68 + 280) = v70;
  *(v68 + 288) = v103;
  v98 = v68;
  WebKit::NetworkTaskCocoa::willPerformHTTPRedirection(a1 + 552, a2, a3, &v98);
  v72 = v98;
  v98 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = v102;
  v102 = 0;
  if (v73)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v101, v71);
  v75 = v100;
  v100 = 0;
  if (v75)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v75, v74);
  }

  result = *buf;
  *buf = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
    if (v39)
    {
      return result;
    }
  }

  else if (v39)
  {
    return result;
  }

  v77 = *(v38 + 16);
  if (!v77)
  {
LABEL_147:
    __break(0xC471u);
    JUMPOUT(0x19D93074CLL);
  }

  *(v38 + 16) = v77 - 1;
  return result;
}

void sub_19D9307B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::ThreadSafeWeakPtrControlBlock *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkDataTaskCocoa::setPendingDownloadLocation(uint64_t a1, atomic_uint **a2, uint64_t *a3, int a4)
{
  v18 = 0;
  WTF::String::operator=((a1 + 120), a2);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
  if (*a3)
  {
    v8 = WTF::fastMalloc(0x18);
    *v8 = 1;
    v9 = *a3;
    *a3 = 0;
    *(v8 + 8) = v9;
    *(v8 + 16) = 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 600);
  *(a1 + 600) = v8;
  if (v10)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
    v8 = *(a1 + 600);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else if (!v8)
  {
    goto LABEL_6;
  }

  ++*v8;
  v17 = *(v8 + 16);
  *(v8 + 16) = v17 + 1;
  if (!v17)
  {
    WebKit::SandboxExtensionImpl::consume(*(v8 + 8));
  }

  WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
LABEL_6:
  v11 = *(a1 + 120);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v18, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v12);
    }
  }

  else
  {
    v18 = &stru_1F1147748;
    v13 = &stru_1F1147748;
  }

  [*(a1 + 608) set_pathToDownloadTaskFile:v18];
  v15 = v18;
  v18 = 0;
  if (v15)
  {
  }

  if (a4)
  {
    if (WTF::FileSystemImpl::fileExists((a1 + 120), v14))
    {
      WTF::FileSystemImpl::deleteFile(a2, v16);
    }
  }
}

uint64_t WebKit::NetworkDataTaskCocoa::suggestedFilename@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 528);
  if (!v3 || !v3[1])
  {
    [objc_msgSend(*(this + 608) "response")];

    JUMPOUT(0x19EB02040);
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  *a2 = v3;
  return this;
}

uint64_t WebKit::NetworkDataTaskCocoa::cancel(id *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    return [this[76] cancel];
  }

  v3 = *MEMORY[0x1E696EB68];
  v4 = WTFSignpostLogHandle();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = this[76];
      v10[0] = 67109888;
      v10[1] = 0;
      v11 = 1024;
      v12 = 0;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu cancel", v10, 0x22u);
    }

    return [this[76] cancel];
  }

  if (v4)
  {
    v7 = v4;
  }

  v8 = this[76];
  if (!v8)
  {
    v9 = 0xEEEEB0B5B2B2EEEELL;
LABEL_12:
    if (os_signpost_enabled(v5))
    {
      LOWORD(v10[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v5, OS_SIGNPOST_EVENT, v9, "DataTask", "cancel", v10, 2u);
    }

    goto LABEL_14;
  }

  v9 = os_signpost_id_make_with_pointer(v5, v8);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v5)
  {
  }

  return [this[76] cancel];
}

void WebKit::NetworkDataTaskCocoa::resume(WebKit::NetworkDataTaskCocoa *this)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v15 = *MEMORY[0x1E696EB68];
  v16 = WTFSignpostLogHandle();
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(this + 76);
      *buf = 67109888;
      *&buf[4] = 0;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      *&buf[14] = 2048;
      *&buf[16] = v18;
      *v46 = 2048;
      *&v46[2] = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu resume", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v16)
  {
    v29 = v16;
  }

  v30 = *(this + 76);
  if (!v30)
  {
    v31 = 0xEEEEB0B5B2B2EEEELL;
LABEL_48:
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v17, OS_SIGNPOST_EVENT, v31, "DataTask", "resume", buf, 2u);
    }

    goto LABEL_50;
  }

  v31 = os_signpost_id_make_with_pointer(v17, v30);
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_48;
  }

LABEL_50:
  if (v17)
  {
  }

LABEL_2:
  if (*(this + 546))
  {
    return;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_54;
  }

  v5 = *(v3 + 16);
  v4 = (v3 + 16);
  *v4 = v5 + 1;
  v6 = *(v4 + 2);
  *buf = *(v4 + 1);
  v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), buf);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = *(v7 + 8);
  *(v7 + 8) = v9 + 1;
  v10 = *(v7 + 328);
  v11 = *(this + 98);
  if (v10 >= v11)
  {
    if (v9 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9312FCLL);
    }

    *(v7 + 8) = v9;
LABEL_9:
    if (*v4)
    {
      --*v4;
      v12 = *(this + 2);
      if (v12)
      {
        v13 = *(v12 + 8);
        if (v13)
        {
          v4 = (v13 + 16);
          ++*(v13 + 16);
          if (*(v13 + 1216) == 1 && *(this + 768) == 1)
          {
            while (1)
            {
              v19 = *(this + 1);
              if ((v19 & 1) == 0)
              {
                break;
              }

              v40 = *(this + 1);
              atomic_compare_exchange_strong_explicit(this + 1, &v40, v19 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v40 == v19)
              {
                goto LABEL_23;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_23:
            *buf = this;
            v20.n128_f64[0] = WTF::makeBlockPtr<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(&aBlock, buf);
            if (*buf)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((*buf + 8));
            }

            if (*(v13 + 1217) == 1)
            {
              v21 = aBlock;
              (*(aBlock + 2))(aBlock, 1, v20);
            }

            else
            {
              v32 = v13;
              v41 = (v13 + 16);
              v33 = [objc_msgSend(*(this + 76) currentRequest];
              v34 = v33;
              if (v33)
              {
                v35 = v33;
              }

              v36 = WebKit::NetworkSessionCocoa::deviceManagementPolicyMonitor(v32);
              v44 = v34;
              v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
              v21 = aBlock;
              *buf = _Block_copy(aBlock);
              *&buf[8] = v34;
              if (v34)
              {
                v38 = v34;
              }

              WTF::makeBlockPtr<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(&v42, buf);
              v39 = v42;
              [v36 requestPoliciesForWebsites:v37 completionHandler:v42];
              _Block_release(v39);
              WebKit::NetworkDataTaskCocoa::resume(void)::$_1::~$_1(buf);
              if (v34)
              {
              }

              v4 = v41;
            }

            _Block_release(v21);
          }

          else
          {
            [*(this + 76) resume];
          }

          v14 = *v4;
          if (!*v4)
          {
            __break(0xC471u);
            JUMPOUT(0x19D9312DCLL);
          }

          goto LABEL_15;
        }
      }

LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19D9312BCLL);
    }

LABEL_57:
    __break(0xC471u);
    JUMPOUT(0x19D931140);
  }

  v22 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v8 + 16);
    *buf = 134218752;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    *v46 = v23;
    *&v46[8] = 2048;
    v47 = v11;
    _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "%p - NetworkDataTaskCocoa::resume: task is delayed because cookies version (%llu) of session (%llu) is lower than required (%llu)", buf, 0x2Au);
    v11 = *(this + 98);
  }

  *buf = v11;
  v24 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1);
  v25 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v24);
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F10ED6E8;
  v26[1] = this;
  v26[2] = v25;
  *&buf[8] = v26;
  WebCore::NetworkStorageSession::addCookiesVersionChangeCallback();
  v27 = *&buf[8];
  *&buf[8] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(v8 + 8);
  if (!v28)
  {
    goto LABEL_57;
  }

  *(v8 + 8) = v28 - 1;
  v14 = *v4;
  if (!*v4)
  {
    goto LABEL_57;
  }

LABEL_15:
  *v4 = v14 - 1;
}

void sub_19D931320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14)
{
  _Block_release(v15);
  if (v14)
  {
  }

  _Block_release(aBlock);
  if (*a9)
  {
    --*a9;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

double WTF::makeBlockPtr<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v4 = MEMORY[0x1E69E9818];
  *&result = 50331650;
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(WebKit::NetworkDataTaskCocoa::resume(void)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
  v4[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(WebKit::NetworkDataTaskCocoa::resume(void)::$_0)::descriptor;
  v4[4] = v3;
  *a1 = v4;
  return result;
}

void sub_19D931524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkSessionCocoa::deviceManagementPolicyMonitor(WebKit::NetworkSessionCocoa *this)
{
  result = *(this + 151);
  if (!result)
  {
    result = [objc_alloc(WebKit::getDMFWebsitePolicyMonitorClass[0](0)) initWithPolicyChangeHandler:0];
    v3 = *(this + 151);
    *(this + 151) = result;
    if (v3)
    {

      return *(this + 151);
    }
  }

  return result;
}

void WTF::makeBlockPtr<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = malloc_type_malloc(0x30uLL, 0x10E0040B46A7B6EuLL);
  *v5 = MEMORY[0x1E69E9818];
  v5[1] = 50331650;
  v5[2] = WTF::BlockPtr<void ()(NSDictionary<NSURL *,NSNumber *> *,NSError *)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(WebKit::NetworkDataTaskCocoa::resume(void)::$_1)::{lambda(void *,NSDictionary<NSURL *,NSNumber *> *,NSError *)#1}::__invoke;
  v5[3] = &WTF::BlockPtr<void ()(NSDictionary<NSURL *,NSNumber *> *,NSError *)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(WebKit::NetworkDataTaskCocoa::resume(void)::$_1)::descriptor;
  v5[4] = v3;
  v5[5] = v4;
  *a1 = v5;

  _Block_release(0);
}

void sub_19D93163C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Block_release(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkDataTaskCocoa::resume(void)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
  }

  _Block_release(*a1);
  return a1;
}

unint64_t WebKit::NetworkDataTaskCocoa::state(id *this)
{
  result = [this[76] state];
  if (result >= 4)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

void WebKit::NetworkDataTaskCocoa::description(id *this)
{
  [this[76] description];

  JUMPOUT(0x19EB02040);
}

uint64_t WebKit::NetworkDataTaskCocoa::setH2PingCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WTF::URL::isolatedCopy();
  v5 = WTF::fastMalloc(0x30);
  *v5 = &unk_1F10ED710;
  WTF::URL::URL((v5 + 1), &v25);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10ED760;
  v8 = *a3;
  *a3 = 0;
  *(v7 + 1) = v8;
  if (v8)
  {
    v9 = v25;
    v25 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }

    v10 = *(a1 + 608);
    v24[0] = 0;
    v24[1] = 0;
    WTF::URL::isolatedCopy();
    v11 = v5;
    v19 = 0;
    v20 = 0;
    v25 = v7;
    v26 = v5;
    v12 = v21;
    v21 = 0;
    v27 = v12;
    v28 = v22;
    v29 = v23;
    LODWORD(v22) = v22 & 0xFFFFFFFE;
    v13 = malloc_type_malloc(0x58uLL, 0x10E004071618FDAuLL);
    *v13 = MEMORY[0x1E69E9818];
    v13[1] = 50331650;
    v13[2] = WTF::BlockPtr<void ()(_NSHTTPConnectionInfo *)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0)::{lambda(void *,_NSHTTPConnectionInfo *)#1}::__invoke;
    v13[3] = &WTF::BlockPtr<void ()(_NSHTTPConnectionInfo *)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0)::descriptor;
    v13[4] = v7;
    v25 = 0;
    v26 = 0;
    v13[5] = v11;
    WTF::URL::URL((v13 + 6), &v27);
    v15 = v27;
    v27 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(&v25);
    [v10 getUnderlyingHTTPConnectionInfoWithCompletionHandler:{v13, v19, v20}];
    _Block_release(v13);
    v17 = v21;
    v21 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }

    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(&v19);
    return WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(v24);
  }

  else
  {
    result = 141;
    __break(0xC471u);
  }

  return result;
}

void sub_19D931928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, WTF::StringImpl *a21)
{
  _Block_release(v21);
  v24 = a11;
  a11 = 0;
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }
  }

  WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(&a9);
  WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(&a17);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkDataTaskCocoa::setPriority(uint64_t a1, unsigned int a2, double a3)
{
  v3 = (&unk_19E7032D8 + 4 * a2);
  if (a2 >= 5)
  {
    v3 = MEMORY[0x1E695ABC0];
  }

  LODWORD(a3) = *v3;
  return [*(a1 + 608) setPriority:a3];
}

void WebKit::NetworkProcess::platformInitializeNetworkProcessCocoa(uint64_t a1, uint64_t a2)
{
  *(a1 + 400) = *(a2 + 72);
  _CFNetworkSetATSContext();
  v4 = WTF::String::operator=((a1 + 176), (a2 + 56));
  WebKit::initializeNetworkSettings(v4);
  WTF::FileSystemImpl::setAllowsMaterializingDatalessFiles();
  *(a1 + 320) = 2;
  v5 = [objc_alloc(MEMORY[0x1E695AC38]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  [MEMORY[0x1E695AC38] setSharedURLCache:v5];
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, v20);
  IPC::Connection::getAuditToken(v20[0], v23);
  v6 = v20[0];
  v20[0] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  if (v24 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ((v24 & 1) == 0)
    {
      v14 = std::__throw_bad_optional_access[abi:sn200100]();
      if (v5)
      {
      }

      _Unwind_Resume(v14);
    }

    [MEMORY[0x1E6977FA0] setDelegation:v23];
  }

  *(a1 + 401) = *(a2 + 146);
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(a1, buf);
  IPC::Connection::getAuditToken(*buf, v20);
  v7 = *buf;
  *buf = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  if (v22 != 1)
  {
    v8 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Unable to get audit token for UI process to block network access";
    v10 = buf;
    goto LABEL_16;
  }

  *buf = *v20;
  v18 = v21;
  if (sandbox_check_by_audit_token() != 1)
  {
    goto LABEL_11;
  }

  v11 = qword_1ED6416A0;
  v12 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "Setting sandbox state flag to block network access", buf, 2u);
  }

  WTF::auditTokenForSelf(buf, v12);
  if (v19 != 1)
  {
    v8 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *v15 = 0;
    v9 = "Unable to get audit token to block network access";
    v10 = v15;
LABEL_16:
    _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, v9, v10, 2u);
    goto LABEL_11;
  }

  *v15 = *buf;
  v16 = v18;
  if ((sandbox_enable_state_flag() & 1) == 0)
  {
    v13 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unable to set sandbox state flag to block network access", v15, 2u);
    }
  }

LABEL_11:
  WebKit::AuxiliaryProcess::increaseFileDescriptorLimit(a1);
  if (v5)
  {
  }
}

uint64_t WebKit::initializeNetworkSettings(WebKit *this)
{
  _CFNetworkHTTPConnectionCacheSetLimit();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WebKitEnableHTTPPipelining", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    WebCore::ResourceRequest::setHTTPPipeliningEnabled((AppBooleanValue != 0));
  }

  _CFNetworkHTTPConnectionCacheSetLimit();
  _CFNetworkHTTPConnectionCacheSetLimit();
  return _CFNetworkHTTPConnectionCacheSetLimit();
}

uint64_t WebKit::AuxiliaryProcess::protectedParentProcessConnection@<X0>(uint64_t this@<X0>, atomic_ullong **a2@<X8>)
{
  v3 = *(this + 40);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
  }

LABEL_4:
  *a2 = v3;
  return this;
}

CFDataRef WebKit::NetworkProcess::sourceApplicationAuditData(WebKit::NetworkProcess *this, IPC::Connection *a2)
{
  if (a2 && (IPC::Connection::getAuditToken(a2, bytes), (bytes[32] & 1) != 0))
  {
    result = CFDataCreate(0, bytes, 32);
  }

  else
  {
    result = 0;
  }

  *this = result;
  return result;
}

uint64_t WebKit::NetworkProcess::hostNamesWithHSTSCache@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v17[0] = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v17);
  if (result)
  {
    v5 = result;
    if (((*(*result + 288))(result) & 1) == 0)
    {
      goto LABEL_20;
    }

    ++*(v5 + 16);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [objc_msgSend(*(*(v5 + 1136) + 48) "configuration")];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = [v7 nonPreloadedHosts];
    if (v7)
    {
    }

    result = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v10 = result;
    if (result)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          MEMORY[0x19EB02040](&v18, *(*(&v19 + 1) + 8 * v12));
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3, &v18, v13, v17);
          v15 = v18;
          v18 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }

          ++v12;
        }

        while (v10 != v12);
        result = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v10 = result;
      }

      while (result);
    }

    v16 = *(v5 + 16);
    if (!v16)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19D932060);
    }

    *(v5 + 16) = v16 - 1;
  }

  return result;
}

void sub_19D932084(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  v15 = *(v13 + 16);
  if (v15)
  {
    *(v13 + 16) = v15 - 1;
    if (*v12)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v12, a2);
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void WebKit::NetworkProcess::deleteHSTSCacheForHostNames(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v17 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v4)
  {
    v5 = v4;
    if (((*(*v4 + 288))(v4) & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = *(v5 + 16) + 1;
    *(v5 + 16) = v6;
    v7 = *(a3 + 12);
    if (v7)
    {
      v8 = *a3;
      v9 = 8 * v7;
      do
      {
        v10 = [objc_msgSend(*(*(v5 + 1136) + 48) "configuration")];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        v13 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v17, v13);
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v14);
          }
        }

        else
        {
          v17 = &stru_1F1147748;
          v15 = &stru_1F1147748;
        }

        [v11 resetHSTSForHost:v17];
        v16 = v17;
        v17 = 0;
        if (v16)
        {
        }

        if (v11)
        {
        }

        ++v8;
        v9 -= 8;
      }

      while (v9);
      v6 = *(v5 + 16);
    }

    if (!v6)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19D932284);
    }

    *(v5 + 16) = v6 - 1;
  }
}

void sub_19D9322A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  v13 = *(v10 + 16);
  if (v13)
  {
    *(v10 + 16) = v13 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void WebKit::NetworkProcess::clearHSTSCache(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  if (v11)
  {
    v4 = v11;
  }

  v12 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v12);
  if (v5)
  {
    v6 = v5;
    if (((*(*v5 + 288))(v5) & 1) == 0)
    {
      goto LABEL_16;
    }

    ++*(v6 + 16);
    v7 = [objc_msgSend(*(*(v6 + 1136) + 48) "configuration")];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    [v8 resetHSTSHostsSinceDate:{v11, v11}];
    if (v8)
    {
    }

    v10 = *(v6 + 16);
    if (!v10)
    {
LABEL_16:
      __break(0xC471u);
      JUMPOUT(0x19D932450);
    }

    *(v6 + 16) = v10 - 1;
  }

  if (v11)
  {
  }
}

void sub_19D932474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  v11 = v10;
  if (v11)
  {
  }

  v13 = *(v9 + 16);
  if (v13)
  {
    *(v9 + 16) = v13 - 1;
    if (a9)
    {
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void WebKit::NetworkProcess::platformFlushCookies(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v8);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 2);
    WebCore::NetworkStorageSession::nsCookieStorage(&v8, v4);
    WebKit::saveCookies(v8, a3);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
    }

    v7 = *(v5 + 2);
    if (v7)
    {
      *(v5 + 2) = v7 - 1;
    }

    else
    {
      __break(0xC471u);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a3);
  }
}

void sub_19D9325A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    *(v10 + 8) = v12 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::saveCookies(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  WTF::makeBlockPtr<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0,WTF::CompletionHandler<void ()(void)> &&,void>(&v7, &v8);
  v4 = v8;
  [a1 _saveCookies:v8];
  _Block_release(v4);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void sub_19D93269C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  _Block_release(v9);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl **WebKit::NetworkProcess::uiProcessBundleIdentifier(WebKit::NetworkProcess *this)
{
  v1 = (this + 176);
  if (!*(this + 22))
  {
    MEMORY[0x19EB02040](&v7, [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
    v4 = v7;
    v7 = 0;
    v5 = *v1;
    *v1 = v4;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v3);
      }

      v6 = v7;
      v7 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

  return v1;
}

atomic_uint *WebKit::NetworkProcess::setBackupExclusionPeriodForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v8 = WTF::fastMalloc(0x10);
  *v8 = 1;
  v9 = *a3;
  *a3 = 0;
  *(v8 + 8) = v9;
  v16 = a2;
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (!v10)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8);
  }

  v11 = v10;
  ++*(v10 + 16);
  v12 = *(v10 + 1048);
  atomic_fetch_add(v8, 1u);
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10ED788;
  v13[1] = v8;
  v16 = v13;
  WebKit::NetworkStorageManager::setBackupExclusionPeriodForTesting(v12, &v16, a4);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v14 = *(v11 + 16);
  if (v14)
  {
    *(v11 + 16) = v14 - 1;
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void sub_19D9328C0(_Unwind_Exception *a1)
{
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v1);
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 16) = v4 - 1;
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v1);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkProcess::clearProxyConfigData(WebKit::NetworkProcess *this, SessionID a2)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v3 = result;
    ++*(result + 16);
    result = (*(*result + 272))(result);
    v4 = *(v3 + 16);
    if (v4)
    {
      *(v3 + 16) = v4 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

void sub_19D9329B0(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkProcess::setProxyConfigData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = (*(*result + 280))(result, a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

void sub_19D932A90(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D932DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D932EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::RefCountedBase *a11, uint64_t a12)
{
  if (a11)
  {
    WTF::RefCounted<WebCore::FormData>::deref(a11);
  }

  if (a12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a12 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D933430(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  if (v1)
  {
    v6 = *(v1 + 8);
    if (!v6)
    {
      goto LABEL_10;
    }

    *(v1 + 8) = v6 - 1;
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    *(v3 + 16) = v7 - 1;
    v8 = *(v4 - 88);
    *(v4 - 88) = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  __break(0xC471u);
  JUMPOUT(0x19D933654);
}

void downgradeRequest(NSURLRequest *a1, void *a2)
{
  v9 = [a2 mutableCopy];
  if ([objc_msgSend(objc_msgSend(v9 "URL")])
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:objc_msgSend(v9 resolvingAgainstBaseURL:{"URL"), 0}];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    [v5 setScheme:@"http"];
    [v9 setURL:{objc_msgSend(v5, "URL")}];
    a1->super.isa = v9;
    v7 = v5;
    if (!v5)
    {
      return;
    }

LABEL_9:

    return;
  }

  a1->super.isa = a2;
  if (a2)
  {
    v8 = a2;
  }

  v7 = v9;
  if (v9)
  {
    goto LABEL_9;
  }
}

void sub_19D93375C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void updateIgnoreStrictTransportSecuritySetting(id *a1, uint64_t a2)
{
  v4 = [objc_msgSend(*a1 "URL")];
  v11 = v4;
  if (v4)
  {
    v5 = v4;
    v4 = v11;
  }

  if ([v4 isEqualToString:@"https"])
  {
    if (!a2)
    {
      goto LABEL_21;
    }

    v6 = *a1;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 _ignoreHSTS] & 1) == 0)
    {
      goto LABEL_21;
    }

    a2 = 0;
  }

  else
  {
    if (![v11 isEqualToString:@"http"])
    {
      goto LABEL_21;
    }

    v7 = *a1;
    if (objc_opt_respondsToSelector())
    {
      if ([v7 _ignoreHSTS] == a2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_21;
      }

      a2 = 1;
    }
  }

  v8 = [*a1 mutableCopy];
  if (objc_opt_respondsToSelector())
  {
    [v8 _setIgnoreHSTS:a2];
  }

  if (v8)
  {
    v9 = v8;
  }

  v10 = *a1;
  *a1 = v8;
  if (!v10)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v8)
  {
LABEL_20:
  }

LABEL_21:
  if (v11)
  {
  }
}

void sub_19D9338E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19D933CE0(_Unwind_Exception *a1)
{
  v5 = *(v1 + 8);
  if (v5)
  {
    *(v1 + 8) = v5 - 1;
    v6 = *(v2 + 16);
    if (v6)
    {
      *(v2 + 16) = v6 - 1;
      v7 = *(v3 - 88);
      *(v3 - 88) = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v7 + 8));
      }

      _Unwind_Resume(a1);
    }

    __break(0xC471u);
    JUMPOUT(0x19D933E28);
  }

  __break(0xC471u);
  JUMPOUT(0x19D933E08);
}

void sub_19D934218(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((a12 + 40), a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D934EFC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19)
{
  if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a12)
  {
  }

  if (a19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a19 + 8));
  }

  if (!v19)
  {
LABEL_16:
    _Unwind_Resume(a1);
  }

  v21 = *(v19 + 16);
  if (v21)
  {
    *(v19 + 16) = v21 - 1;
    goto LABEL_16;
  }

  __break(0xC471u);
}

uint64_t checkForLegacyTLS(NSURLSessionTaskTransactionMetrics *a1)
{
  if ([(NSNumber *)[(NSURLSessionTaskTransactionMetrics *)a1 negotiatedTLSProtocolVersion] unsignedShortValue]- 769 < 2)
  {
    return 1;
  }

  v2 = [(NSNumber *)[(NSURLSessionTaskTransactionMetrics *)a1 negotiatedTLSCipherSuite] unsignedShortValue];
  result = 1;
  if (v2 <= 49154)
  {
    if (v2 <= 0x1B && ((1 << v2) & 0x8492400) != 0)
    {
      return result;
    }

    v4 = v2 - 139;
    if (v4 <= 8 && ((1 << v4) & 0x111) != 0)
    {
      return result;
    }

    return 0;
  }

  if (((v2 - 49155) > 0x14 || ((1 << (v2 - 3)) & 0x108421) == 0) && v2 != 65411)
  {
    return 0;
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkSessionCocoa::continueDidReceiveChallenge(uint64_t a1, uint64_t a2, WebCore::AuthenticationChallengeBase *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v132[2] = *MEMORY[0x1E69E9840];
  if (*a6)
  {
    v13 = *(a1 + 32);
    atomic_fetch_add(v13 + 36, 1u);
    v122 = v13;
    WebKit::createChallengeCompletionHandler(&v127, &v122, *(a1 + 24), a3, (*a6 + 64), a5, a7);
    v14 = v122;
    v122 = 0;
    if (v14 && atomic_fetch_add(v14 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 36);
      (*(*v14 + 24))(v14);
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      v15 = *(a1 + 1219);
      v16 = *a6;
      if (v15 == 1 && (*(v16 + 545) & 1) == 0)
      {
        WebCore::CredentialBase::CredentialBase(&v122);
        v124 = 0;
        WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(&v127);
        v18 = v124;
        v124 = 0;
        if (v18)
        {
        }

        v19 = v123;
        v123 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v17);
        }

        v20 = v122;
        v122 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v17);
        }

LABEL_118:
        result = v127;
        v127 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }

        return result;
      }

LABEL_54:
      WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v122, a3);
      v57 = *(a3 + 53);
      v125 = v57;
      if (v57)
      {
        v58 = v57;
      }

      v59 = *(a3 + 54);
      v126 = v59;
      if (v59)
      {
        v60 = v59;
      }

      if (!kdebug_is_enabled())
      {
LABEL_59:
        v61 = WebCore::AuthenticationChallengeBase::protectionSpace(&v122);
        if (!WebCore::ProtectionSpaceBase::isPasswordBased(v61))
        {
          goto LABEL_110;
        }

        v63 = (v16 + 48);
        v62 = *(v16 + 48);
        if (v62 && *(v62 + 4) || (v64 = *(v16 + 56)) != 0 && *(v64 + 4))
        {
          WebCore::CredentialBase::CredentialBase();
          v132[0] = 0;
          WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(&v127);
          v66 = v132[0];
          v132[0] = 0;
          if (v66)
          {
          }

          v67 = v130;
          v130 = 0;
          if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v67, v65);
          }

          v68 = *buf;
          *buf = 0;
          if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v65);
          }

          v69 = *v63;
          *v63 = 0;
          if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v69, v65);
          }

          v70 = *(v16 + 56);
          *(v16 + 56) = 0;
          if (!v70)
          {
            goto LABEL_113;
          }

          goto LABEL_76;
        }

        v71 = *(v16 + 16);
        if (v71)
        {
          v72 = *(v71 + 8);
          if (v72)
          {
            v73 = 0;
            ++*(v72 + 16);
            goto LABEL_81;
          }
        }

        else
        {
          v72 = 0;
        }

        v73 = 1;
LABEL_81:
        if (*(v16 + 104) != 1)
        {
          goto LABEL_105;
        }

        if (!WebCore::Credential::isEmpty((v16 + 72)) || WebCore::AuthenticationChallengeBase::previousFailureCount(&v122))
        {
          if (v73)
          {
            __break(0xC471u);
            JUMPOUT(0x19D935F80);
          }

          v74 = *(v72 + 32);
          *buf = *(v72 + 24);
          v75 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v74 + 248), buf);
          if (v75)
          {
            v76 = v75;
            ++*(v75 + 8);
            v77 = WebCore::AuthenticationChallengeBase::protectionSpace(&v122);
            WebCore::CredentialStorage::remove((v76 + 112), (v16 + 64), v77);
            v78 = *(v76 + 8);
            if (!v78)
            {
              __break(0xC471u);
              JUMPOUT(0x19D935FA0);
            }

            *(v76 + 8) = v78 - 1;
          }
        }

        if (WebCore::AuthenticationChallengeBase::previousFailureCount(&v122))
        {
          goto LABEL_105;
        }

        if (v73)
        {
          __break(0xC471u);
          JUMPOUT(0x19D935FC0);
        }

        v79 = *(v72 + 32);
        v128 = *(v72 + 24);
        if (WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v79 + 248), &v128))
        {
          v80 = *(v72 + 32);
          v128 = *(v72 + 24);
          v81 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v80 + 248), &v128);
          if (!v81)
          {
            __break(0xC471u);
            JUMPOUT(0x19D935FE0);
          }

          v82 = v81;
          ++*(v81 + 8);
          v83 = WebCore::AuthenticationChallengeBase::protectionSpace(&v122);
          WebCore::CredentialStorage::get(buf, (v82 + 112), (v16 + 64), v83);
          v84 = *(v82 + 8);
          if (!v84)
          {
            __break(0xC471u);
            JUMPOUT(0x19D936000);
          }

          *(v82 + 8) = v84 - 1;
        }

        else
        {
          WebCore::CredentialBase::CredentialBase(buf);
          v132[0] = 0;
        }

        if (WebCore::Credential::isEmpty(buf) & 1) != 0 || (WebCore::CredentialBase::compare(buf, (v16 + 72), v86))
        {
          v87 = v132[0];
          v132[0] = 0;
          if (v87)
          {
          }

          v88 = v130;
          v130 = 0;
          if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v88, v85);
          }

          v89 = *buf;
          *buf = 0;
          if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v89, v85);
          }

LABEL_105:
          v90 = WebCore::AuthenticationChallengeBase::proposedCredential(&v122);
          if ((WebCore::Credential::isEmpty(v90) & 1) != 0 || WebCore::AuthenticationChallengeBase::previousFailureCount(&v122))
          {
            if (v73)
            {
              goto LABEL_110;
            }

            v91 = *(v72 + 16);
            if (v91)
            {
              *(v72 + 16) = v91 - 1;
LABEL_110:
              v92 = *(v16 + 24);
              if (!v92 || (v93 = *(v92 + 8)) == 0)
              {
                WebCore::CredentialBase::CredentialBase(buf);
                v132[0] = 0;
                WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(&v127);
                v120 = v132[0];
                v132[0] = 0;
                if (v120)
                {
                }

                v121 = v130;
                v130 = 0;
                if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v121, v65);
                }

                v70 = *buf;
                *buf = 0;
                if (!v70)
                {
                  goto LABEL_113;
                }

LABEL_76:
                if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v70, v65);
                }

                goto LABEL_113;
              }

              (**v93)(v93);
              (*(*v93 + 40))(v93, &v122, a4, &v127);
              (*(*v93 + 8))(v93);
LABEL_113:
              v94 = v126;
              v126 = 0;
              if (v94)
              {
              }

              v95 = v125;
              v125 = 0;
              if (v95)
              {
              }

              WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v122, v65);
              goto LABEL_118;
            }

LABEL_171:
            __break(0xC471u);
            JUMPOUT(0x19D935F60);
          }

          WebCore::AuthenticationChallengeBase::proposedCredential(&v122);
          WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(&v127);
          if (v73)
          {
            goto LABEL_113;
          }

LABEL_122:
          v96 = *(v72 + 16);
          if (v96)
          {
            *(v72 + 16) = v96 - 1;
            goto LABEL_113;
          }

          goto LABEL_171;
        }

        v97 = WebCore::AuthenticationChallengeBase::failureResponse(&v122);
        if (WebCore::ResourceResponseBase::httpStatusCode(v97) != 401 || (v98 = *(v72 + 32), v128 = *(v72 + 24), (v99 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v98 + 248), &v128)) == 0))
        {
LABEL_128:
          WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(&v127);
          v105 = v132[0];
          v132[0] = 0;
          if (v105)
          {
          }

          v106 = v130;
          v130 = 0;
          if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v106, v65);
          }

          v107 = *buf;
          *buf = 0;
          if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v107, v65);
          }

          goto LABEL_122;
        }

        v100 = v99;
        ++*(v99 + 8);
        v101 = WebCore::AuthenticationChallengeBase::protectionSpace(&v122);
        v102 = WebCore::AuthenticationChallengeBase::failureResponse(&v122);
        v103 = WebCore::ResourceResponseBase::url(v102);
        WebCore::CredentialStorage::set((v100 + 112), (v16 + 64), buf, v101, v103);
        v104 = *(v100 + 8);
        if (v104)
        {
          *(v100 + 8) = v104 - 1;
          goto LABEL_128;
        }

LABEL_177:
        __break(0xC471u);
        JUMPOUT(0x19D935F00);
      }

      v108 = *MEMORY[0x1E696EB68];
      v109 = WTFSignpostLogHandle();
      v110 = v109;
      if (v108)
      {
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v111 = *(v16 + 608);
          v112 = WTFCurrentContinuousTime();
          *buf = 67109888;
          *&buf[4] = 0;
          v130 = 0x800000000000400;
          v131 = v111;
          LOWORD(v132[0]) = 2048;
          *(v132 + 2) = v112;
          _os_log_impl(&dword_19D52D000, v110, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received challenge", buf, 0x22u);
        }

        goto LABEL_59;
      }

      if (v109)
      {
        v113 = v109;
      }

      v114 = *(v16 + 608);
      if (v114)
      {
        v115 = os_signpost_id_make_with_pointer(v110, v114);
        if (v115 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
LABEL_157:
          if (v110)
          {
          }

          goto LABEL_59;
        }
      }

      else
      {
        v115 = 0xEEEEB0B5B2B2EEEELL;
      }

      if (os_signpost_enabled(v110))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19D52D000, v110, OS_SIGNPOST_EVENT, v115, "DataTask", "received challenge", buf, 2u);
      }

      goto LABEL_157;
    }

    v16 = *a6;
    goto LABEL_54;
  }

  WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(&v122, (a2 + 48), a5);
  v22 = v123;
  if (v123)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v123, v122, buf);
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v22, v23);
    if (*buf)
    {
      v24 = *(a1 + 32);
      atomic_fetch_add((v24 + 144), 1u);
      v128 = v24;
      v25 = *(a1 + 24);
      v26 = *(*buf + 120);
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      v127 = v26;
      WebKit::createChallengeCompletionHandler(&v122, &v128, v25, a3, &v127, 0, a7);
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }

      v28 = v128;
      v128 = 0;
      if (v28 && atomic_fetch_add(v28 + 36, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v28 + 36);
        (*(*v28 + 24))(v28);
      }

      WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 32), &v128);
      v29 = v128;
      v30 = *(a1 + 24);
      v31 = *(*buf + 72);
      if (WebCore::SecurityOriginData::isNull((*buf + 136)))
      {
        v32 = 0;
      }

      else
      {
        v32 = (*buf + 136);
      }

      WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v29, v30, v31, v31 != 0, v32, a3, a4, &v122);
      if (v29)
      {
        WebKit::AuthenticationManager::deref(v29);
      }

      result = v122;
      v122 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v35 = *buf;
      *buf = 0;
      if (v35)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v35 + 5, v33);
      }

      return result;
    }
  }

  if (a5 == -1)
  {
    goto LABEL_177;
  }

  if (!a5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D935F20);
  }

  v36 = *(a2 + 40);
  if (!v36)
  {
    goto LABEL_146;
  }

  v37 = *(v36 - 8);
  v38 = (~(a5 << 32) + a5) ^ ((~(a5 << 32) + a5) >> 22);
  v39 = 9 * ((v38 + ~(v38 << 13)) ^ ((v38 + ~(v38 << 13)) >> 8));
  v40 = (v39 ^ (v39 >> 15)) + ~((v39 ^ (v39 >> 15)) << 27);
  v41 = v37 & ((v40 >> 31) ^ v40);
  v42 = *(v36 + 16 * v41);
  if (v42 != a5)
  {
    v43 = 1;
    while (v42)
    {
      v41 = (v41 + v43) & v37;
      v42 = *(v36 + 16 * v41);
      ++v43;
      if (v42 == a5)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_146;
  }

LABEL_41:
  v44 = *(v36 + 16 * v41 + 8);
  v45 = *(a1 + 32);
  ++*(v45 + 184);
  v122 = v44;
  v46 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v45 + 216), &v122);
  if (v46)
  {
    v47 = v46;
    v48 = (v46 + 16);
    ++*(v46 + 16);
    v49 = *(v45 + 184);
    if (v49)
    {
      *(v45 + 184) = v49 - 1;
      WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v122, a3);
      v50 = *(a3 + 53);
      v125 = v50;
      if (v50)
      {
        v51 = v50;
      }

      v52 = *(a3 + 54);
      v126 = v52;
      if (v52)
      {
        v53 = v52;
      }

      WebKit::Download::didReceiveChallenge(v47, &v122, a7);
      v55 = v126;
      v126 = 0;
      if (v55)
      {
      }

      v56 = v125;
      v125 = 0;
      if (v56)
      {
      }

      WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v122, v54);
      return WTF::RefCounted<WebKit::Download>::deref(v48);
    }

LABEL_170:
    __break(0xC471u);
    JUMPOUT(0x19D935F40);
  }

  v116 = *(v45 + 184);
  if (!v116)
  {
    goto LABEL_170;
  }

  *(v45 + 184) = v116 - 1;
LABEL_146:
  WebCore::CredentialBase::CredentialBase(&v122);
  v124 = 0;
  WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(a7);
  v118 = v124;
  v124 = 0;
  if (v118)
  {
  }

  v119 = v123;
  v123 = 0;
  if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v119, v117);
  }

  result = v122;
  v122 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v117);
  }

  return result;
}

void sub_19D936024(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 - 88);
  *(v64 - 88) = 0;
  if (v66)
  {
  }

  v67 = *(v64 - 104);
  *(v64 - 104) = 0;
  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v67, a2);
  }

  v68 = *(v64 - 112);
  *(v64 - 112) = 0;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v68, a2);
  }

  v69 = a64;
  a64 = 0;
  if (v69)
  {
  }

  v70 = a63;
  a63 = 0;
  if (v70)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&a10, a2);
  v71 = *(v64 - 128);
  *(v64 - 128) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  _Unwind_Resume(a1);
}

void sub_19D936CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a9)
  {
  }

  WTF::RefCounted<WebKit::Download>::deref((v20 + 16));
  v25 = *(v22 - 128);
  *(v22 - 128) = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v25 + 40), v24);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a10 + 8));
  }

  if (a20)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t extractResolutionReport(NSError *a1)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)[(NSError *)a1 userInfo] objectForKeyedSubscript:@"_NSURLErrorNWResolutionReportKey"];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFRetain(v2);
  v4 = [(NSDictionary *)[(NSError *)a1 userInfo] objectForKeyedSubscript:@"_NSURLErrorNWPathKey"];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = v6;
    if (v6)
    {
      enumerate_block[0] = MEMORY[0x1E69E9820];
      enumerate_block[1] = 3321888768;
      enumerate_block[2] = ___ZL23extractResolutionReportP7NSError_block_invoke;
      enumerate_block[3] = &__block_descriptor_40_e8_32c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE_e35_B16__0__NSObject_OS_nw_interface__8l;
      v30 = v6;
      v8 = v6;
      nw_path_enumerate_interfaces(v5, enumerate_block);
      provider_name = nw_resolution_report_get_provider_name();
      WTF::String::fromUTF8(&v28, provider_name, v10);
      extended_dns_error_extra_text = nw_resolution_report_get_extended_dns_error_extra_text();
      WTF::String::fromUTF8(&v27, extended_dns_error_extra_text, v12);
      v31[0] = @"provider";
      WTF::String::createNSString(&v28, &v26);
      v13 = v26;
      if (!v26)
      {
        v13 = &stru_1F1147748;
      }

      v32[0] = v13;
      v31[1] = @"dnsFailureReason";
      dns_failure_reason = nw_resolution_report_get_dns_failure_reason();
      v15 = &stru_1F1147748;
      if (dns_failure_reason <= 3)
      {
        v15 = off_1E7630BD0[dns_failure_reason];
      }

      v32[1] = v15;
      v31[2] = @"extendedDNSErrorExtraText";
      WTF::String::createNSString(&v27, &v25);
      v16 = v25;
      if (!v25)
      {
        v16 = &stru_1F1147748;
      }

      v31[3] = @"interfaces";
      v32[2] = v16;
      v32[3] = v7;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
      v19 = v25;
      v25 = 0;
      if (v19)
      {
      }

      v20 = v26;
      v26 = 0;
      if (v20)
      {
      }

      v21 = v27;
      v27 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v17);
      }

      v22 = v28;
      v28 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      v23 = v30;
      v30 = 0;
      if (v23)
      {
      }
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v3);
  return v18;
}

void sub_19D937094(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a9)
  {
  }

  if (a10)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a17)
  {
  }

  CFRelease(v18);
  CFRelease(v17);
  _Unwind_Resume(a1);
}

void **WTF::RetainPtr<NSError>::operator=(void **a1, void *a2)
{
  if (a2)
  {
    v6 = a2;
  }

  v4 = *a1;
  *a1 = a2;
  if (v4)
  {
  }

  return a1;
}

uint64_t WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9372E4);
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 16 * v7);
  if (v8 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        goto LABEL_10;
      }
    }

    v7 = *(v2 - 4);
  }

LABEL_10:
  v10 = *(v2 - 4);
  if (v7 == v10)
  {
    return 0;
  }

  v13 = (v2 + 16 * v7);
  v11 = v13[1];
  *v13 = -1;
  v14 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v14;
  if (v10 >= 9 && 6 * v14.i32[1] < v10)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v10 >> 1, 0);
  }

  return v11;
}

void sub_19D937B60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF::StringImpl *a34, WebCore::AdditionalNetworkLoadMetricsForWebInspector *a35, uint64_t a36)
{
  if (a34 && atomic_fetch_add_explicit(a34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a34, a2);
  }

  if (a35)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(a35, a2);
  }

  if (v37)
  {
  }

  if (v36)
  {
  }

  if (a36)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a36 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::AdditionalNetworkLoadMetricsForWebInspector::create@<X0>(uint64_t *a1@<X8>)
{
  v3 = WTF::fastMalloc(0x68);
  *v3 = 1;
  *(v3 + 4) = 3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  result = WebCore::HTTPHeaderMap::HTTPHeaderMap((v3 + 40));
  *(v3 + 80) = -1;
  *(v3 + 88) = -1;
  *(v3 + 72) = -1;
  *(v3 + 96) = 0;
  *a1 = v3;
  return result;
}

void sub_19D937CE0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v5 = *(v2 + 4);
  *(v2 + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 3);
  *(v2 + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 2);
  *(v2 + 2) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *v3;
  *v3 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  if (*v2 == 1)
  {
    WTF::fastFree(v2, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

unint64_t WTF::makeString<WTF::String,char,unsigned int>(unint64_t result, _DWORD *a2, unint64_t a3)
{
  v5 = result;
  if (!a2)
  {
    goto LABEL_26;
  }

  for (i = a2[1]; ; i = 0)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      ++v7;
      v9 = v8 > 9;
      v8 /= 0xAu;
    }

    while (v9);
    if (v7 < 0)
    {
      break;
    }

    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    v12 = v10;
    if (i < 0)
    {
      break;
    }

    if (v12)
    {
      break;
    }

    v13 = (i + v11);
    if (__OFADD__(i, v11))
    {
      break;
    }

    if (!a2 || (a2[4] & 4) != 0)
    {
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      result = WTF::tryFastCompactMalloc((v13 + 20));
      v14 = v19;
      if (!v19)
      {
        break;
      }

      v17 = v19 + 5;
      *v19 = 2;
      v14[1] = v13;
      *(v14 + 1) = v14 + 5;
      v14[4] = 4;
      v19 = a2;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v19, v14 + 20);
      v18 = v19;
      if (!v19 || (v18 = v19[1], v18 < v13))
      {
        *(v17 + v18) = 58;
        result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a3, v17 + v18 + 1, ~v18 + v13);
        goto LABEL_24;
      }
    }

    else
    {
      if (v13 > 0x7FFFFFEF)
      {
        break;
      }

      result = WTF::tryFastCompactMalloc((2 * v13 + 20));
      v14 = v19;
      if (!v19)
      {
        break;
      }

      *v19 = 2;
      v14[1] = v13;
      *(v14 + 1) = v14 + 5;
      v14[4] = 0;
      v19 = a2;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v19, v14 + 20);
      v15 = v19;
      if (!v19 || (v15 = v19[1], v15 < v13))
      {
        v16 = v14 + v15 + 10;
        *v16 = 58;
        v20 = a3;
        result = WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v20, v16 + 1, ~v15 + v13);
LABEL_24:
        *v5 = v14;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  *v5 = 0;
  __break(0xC471u);
  return result;
}

void sub_19D937F60(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *stringForTLSProtocolVersion(void *result, int a2)
{
  if (a2 > 771)
  {
    if (a2 == 772 || a2 == 65277 || a2 == 65279)
    {
      return WTF::StringImpl::createWithoutCopyingNonEmpty();
    }

LABEL_12:
    *result = 0;
    return result;
  }

  if (a2 != 769 && a2 != 770 && a2 != 771)
  {
    goto LABEL_12;
  }

  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

void *stringForTLSCipherSuite(void *result, int a2)
{
  if (a2 > 49169)
  {
    if (a2 <= 49191)
    {
      if (a2 > 49186)
      {
        if (a2 == 49187 || a2 == 49188 || a2 == 49191)
        {
          return WTF::StringImpl::createWithoutCopyingNonEmpty();
        }
      }

      else if (a2 == 49170 || a2 == 49171 || a2 == 49172)
      {
        return WTF::StringImpl::createWithoutCopyingNonEmpty();
      }
    }

    else if (a2 <= 49198)
    {
      if (a2 == 49192 || a2 == 49195 || a2 == 49196)
      {
        return WTF::StringImpl::createWithoutCopyingNonEmpty();
      }
    }

    else if (a2 > 52391)
    {
      if (a2 == 52392 || a2 == 52393)
      {
        return WTF::StringImpl::createWithoutCopyingNonEmpty();
      }
    }

    else if (a2 == 49199 || a2 == 49200)
    {
      return WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  else if (a2 <= 156)
  {
    if (a2 > 59)
    {
      if (a2 == 60 || a2 == 61 || a2 == 156)
      {
        return WTF::StringImpl::createWithoutCopyingNonEmpty();
      }
    }

    else if (a2 == 10 || a2 == 47 || a2 == 53)
    {
      return WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  else if (a2 <= 4866)
  {
    if (a2 == 157 || a2 == 4865 || a2 == 4866)
    {
      return WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  else if (a2 > 49160)
  {
    if (a2 == 49161 || a2 == 49162)
    {
      return WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  else if (a2 == 4867 || a2 == 49160)
  {
    return WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  *result = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[6] = 0;
  a1[7] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((a1 + 6), (a2 + 48));
  a1[8] = 0;
  a1[9] = 0;
  return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((a1 + 8), (a2 + 64));
}

void sub_19D9383C8(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3, a2);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_dispose__0(uint64_t a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 64), a2);

  return WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 48, v3);
}

void sub_19D9384E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9385C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::dynamic_objc_cast<NSHTTPURLResponse>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19D938C98(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  v6 = *(v4 - 160);
  *(v4 - 160) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v6 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19D9390E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, uint64_t a11)
{
  (*(*v11 + 8))(v11);
  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a11 + 8));
  }

  _Unwind_Resume(a1);
}

unsigned int *WebCore::SharedBuffer::create<NSData *&>@<X0>(WebCore::FragmentedSharedBuffer **a1@<X0>, NSData *a2@<X1>, uint64_t *a3@<X8>)
{
  WebCore::FragmentedSharedBuffer::create(&v6, *a1, a2);
  v4 = WTF::fastMalloc(0x40);
  MEMORY[0x19EB04740](v4, &v6);
  *a3 = v4;
  result = v6;
  v6 = 0;
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

void sub_19D939228(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  WTF::fastFree(v10, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D9393B8(_Unwind_Exception *a1)
{
  v3 = v2;
  WTF::RefCounted<WebKit::Download>::deref(v1);
  v5 = *(v3 + 16);
  if (v5)
  {
    *(v3 + 16) = v5 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D939604(_Unwind_Exception *a1)
{
  WTF::RefCounted<WebKit::Download>::deref(v1);
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 16) = v4 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D93999C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    WTF::RefCounted<WebKit::Download>::deref((a14 + 16));
  }

  if (*v18)
  {
    --*v18;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v17);
    v20 = *(v16 + 16);
    if (v20)
    {
      *(v16 + 16) = v20 - 1;
      if (a16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a16 + 8));
      }

      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19D9399FCLL);
}

void sub_19D939B6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((a10 + 40), a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D939C80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((a10 + 40), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::applyProxyConfigurationToSessionConfiguration(WebKit::NetworkSessionCocoa *this, NSURLSessionConfiguration *a2)
{
  if (*(this + 301))
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(this + 301)];
    v6 = *(this + 301);
    v9 = v5;
    if (v6)
    {
      v7 = *(this + 149);
      v8 = 8 * v6;
      do
      {
        [v5 addObject:*v7++];
        v8 -= 8;
        v5 = v9;
      }

      while (v8);
    }

    [(NSURLSessionConfiguration *)a2 setProxyConfigurations:v5];
    if (v9)
    {
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];

    [(NSURLSessionConfiguration *)a2 setProxyConfigurations:v3];
  }
}

void sub_19D939E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void **WebKit::SessionWrapper::initialize(uint64_t a1, WebKit::AuxiliaryProcess *a2, WebKit **a3, int a4)
{
  isParentProcessAFullWebBrowser = WebKit::isParentProcessAFullWebBrowser(a3[4], a2);
  if (![(WebKit::AuxiliaryProcess *)a2 _sourceApplicationSecondaryIdentifier]&& isParentProcessAFullWebBrowser)
  {
    [(WebKit::AuxiliaryProcess *)a2 set_sourceApplicationSecondaryIdentifier:@"com.apple.WebKit.InAppBrowser"];
  }

  WebKit::NetworkSessionCocoa::applyProxyConfigurationToSessionConfiguration(a3, a2);
  v9 = [[WKNetworkSessionDelegate alloc] initWithNetworkSession:a3 wrapper:a1 withCredentials:a4 == 1];
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;
  if (v10)
  {

    v9 = *(a1 + 24);
  }

  v11 = [MEMORY[0x1E695AC78] sessionWithConfiguration:a2 delegate:v9 delegateQueue:{objc_msgSend(MEMORY[0x1E696ADC8], "mainQueue")}];

  return WTF::RetainPtr<NSNumber>::operator=((a1 + 16), v11);
}

WebKit::NetworkSessionCocoa *WebKit::NetworkSessionCocoa::NetworkSessionCocoa(WebKit::NetworkSessionCocoa *this, WebKit::NetworkProcess *a2, const WebKit::NetworkSessionCreationParameters *a3)
{
  *WebKit::NetworkSession::NetworkSession(this, a2, a3) = &unk_1F10ED1B0;
  v6 = WTF::fastMalloc(0x90);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *(this + 142) = v6;
  *(this + 1144) = 0u;
  v7 = *(a3 + 4);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 145) = v7;
  v8 = *(a3 + 7);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 146) = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v10 = this + 1168;
  v11 = this + 1176;
  *(this + 147) = v9;
  v12 = *(a3 + 6);
  *(this + 148) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  *(this + 608) = 0;
  *(this + 151) = 0;
  *(this + 1192) = 0u;
  *(this + 1218) = *(a3 + 72);
  *(this + 1219) = *(a3 + 312);
  v13 = *(a3 + 38);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = this + 1224;
  *(this + 153) = v13;
  *(this + 1232) = *(a3 + 332);
  *(this + 1233) = *(a3 + 648);
  *(this + 78) = 0uLL;
  *(this + 79) = 0uLL;
  WebKit::configurationForSessionID(&v72, *(this + 3), *(a2 + 400));
  if (*(this + 3) >= -1)
  {
    TemporaryDirectory = WTF::FileSystemImpl::createTemporaryDirectory(@"BlobRegistryFiles", v15);
    MEMORY[0x19EB02040](buf, TemporaryDirectory);
    v47 = *buf;
    *buf = 0;
    v48 = *(this + 88);
    *(this + 88) = v47;
    if (v48)
    {
      if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v46);
      }

      v49 = *buf;
      *buf = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v46);
      }
    }
  }

  if (*(a3 + 22) && *(this + 3) >= -1)
  {
    WebKit::SandboxExtension::consumePermanently(a3 + 23);
    v50 = objc_alloc(MEMORY[0x1E695ACD0]);
    v51 = objc_alloc(MEMORY[0x1E695DFF8]);
    WTF::String::createNSString(a3 + 22, buf);
    v52 = [v51 initFileURLWithPath:*buf isDirectory:1];
    v53 = [v50 initPersistentStoreWithURL:v52];
    [(NSURLSessionConfiguration *)v72 set_hstsStorage:v53];
    if (v53)
    {
    }

    if (v52)
    {
    }

    v54 = *buf;
    *buf = 0;
    if (v54)
    {
    }
  }

  if (*(a3 + 1) != 0 && *(this + 3) >= -1)
  {
    v55 = objc_alloc(MEMORY[0x1E695AC50]);
    if (*(a3 + 1) == 0)
    {
      __break(0xC471u);
LABEL_125:
      JUMPOUT(0x19D93A8C0);
    }

    v56 = v55;
    WTF::UUID::toString(&v71, (a3 + 16));
    WTF::String::createNSString(&v71, buf);
    v57 = [v56 _initWithIdentifier:*buf private:0];
    [(NSURLSessionConfiguration *)v72 setURLCredentialStorage:v57];
    if (v57)
    {
    }

    v59 = *buf;
    *buf = 0;
    if (v59)
    {
    }

    v60 = v71;
    v71 = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v58);
    }
  }

  if (*(a3 + 334) == 1)
  {
    if (*(a3 + 333) == 1)
    {
      v16 = qword_1ED640E78;
      if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "Using experimental network loader.", buf, 2u);
        if ((*(a3 + 334) & 1) == 0)
        {
          __break(1u);
LABEL_122:
          __break(0xC471u);
          goto LABEL_125;
        }

        v17 = *(a3 + 333);
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }

    [(NSURLSessionConfiguration *)v72 set_usesNWLoader:v17 & 1];
  }

  if (*(a3 + 335) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(NSURLSessionConfiguration *)v72 set_allowsHSTSWithUntrustedRootCertificate:1];
  }

  [(NSURLSessionConfiguration *)v72 set_preventsAppSSO:1];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:@"Content-Type"];
  [(NSURLSessionConfiguration *)v72 set_suppressedAutoAddedHTTPHeaders:v18];
  if ((*(a3 + 40) & 1) == 0)
  {
    [(NSURLSessionConfiguration *)v72 setAllowsCellularAccess:0];
  }

  [(NSURLSessionConfiguration *)v72 setURLCache:0];
  WebKit::NetworkProcess::sourceApplicationAuditData(buf, *(a2 + 5));
  v19 = *buf;
  if (*buf)
  {
    [(NSURLSessionConfiguration *)v72 set_sourceApplicationAuditTokenData:*buf];
    CFRelease(v19);
  }

  if (*v10 && *(*v10 + 4))
  {
    WTF::String::createNSString(this + 146, buf);
    [(NSURLSessionConfiguration *)v72 set_sourceApplicationBundleIdentifier:*buf];
    v61 = *buf;
    *buf = 0;
    if (v61)
    {
    }

    [(NSURLSessionConfiguration *)v72 set_sourceApplicationAuditTokenData:0];
  }

  if (*v11)
  {
    if (*(*v11 + 4))
    {
      WTF::String::createNSString(this + 147, buf);
      [(NSURLSessionConfiguration *)v72 set_sourceApplicationSecondaryIdentifier:*buf];
      v62 = *buf;
      *buf = 0;
      if (v62)
      {
      }
    }
  }

  v20 = *(a3 + 20);
  if (v20 && *(v20 + 4))
  {
    WebKit::SandboxExtension::consumePermanently(a3 + 21);
    v21 = objc_alloc(MEMORY[0x1E695ACE8]);
    v22 = objc_alloc(MEMORY[0x1E695DFF8]);
    WTF::String::createNSString(a3 + 20, buf);
    v23 = [v22 initFileURLWithPath:*buf isDirectory:1];
    v24 = [v21 initPersistentStoreWithURL:{objc_msgSend(v23, "URLByAppendingPathComponent:isDirectory:", @"AlternativeService.sqlite", 0)}];
    [(NSURLSessionConfiguration *)v72 set_alternativeServicesStorage:v24];
    if (v24)
    {
    }

    if (v23)
    {
    }

    v25 = *buf;
    *buf = 0;
    if (v25)
    {
    }

    [(NSURLSessionConfiguration *)v72 _alternativeServicesStorage];
    if (objc_opt_respondsToSelector())
    {
      [-[NSURLSessionConfiguration _alternativeServicesStorage](v72 "_alternativeServicesStorage")];
    }
  }

  [(NSURLSessionConfiguration *)v72 set_preventsSystemHTTPProxyAuthentication:*(a3 + 332)];
  [(NSURLSessionConfiguration *)v72 set_requiresSecureHTTPSProxyConnection:*(a3 + 322)];
  v26 = *(a3 + 6);
  if (v26)
  {
    v63 = v26;
  }

  else
  {
    WebKit::proxyDictionary(buf, (a3 + 80), (a3 + 120));
    v26 = *buf;
  }

  [(NSURLSessionConfiguration *)v72 setConnectionProxyDictionary:v26];
  if (v26)
  {
  }

  if (*v14)
  {
    if (*(*v14 + 4))
    {
      WTF::String::createNSString(this + 153, buf);
      [(NSURLSessionConfiguration *)v72 set_CTDataConnectionServiceType:*buf];
      v64 = *buf;
      *buf = 0;
      if (v64)
      {
      }
    }
  }

  v27 = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(a2);
  v28 = v27;
  if (v27)
  {
    WebKit::LegacyCustomProtocolManager::ref(v27);
  }

  WebKit::LegacyCustomProtocolManager::registerProtocolClass(v28, v72);
  if (v28)
  {
    WebKit::LegacyCustomProtocolManager::deref(v28);
  }

  [(NSURLSessionConfiguration *)v72 set_timingDataOptions:1];
  if (*(a3 + 320) == 1)
  {
    [(NSURLSessionConfiguration *)v72 set_socketStreamProperties:&unk_1F1184DC8];
  }

  *buf = *a3;
  v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a2 + 31, buf);
  if (!v29)
  {
    goto LABEL_122;
  }

  v30 = v29;
  ++*(v29 + 2);
  WebCore::NetworkStorageSession::cookieStorage(buf, v29);
  v31 = *buf;
  *buf = 0;
  if (v31)
  {
    CFRelease(v31);
    v32 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithCFHTTPCookieStorage:v31];
    [(NSURLSessionConfiguration *)v72 setHTTPCookieStorage:v32];
  }

  else
  {
    WebCore::NetworkStorageSession::nsCookieStorage(buf, v30);
    v32 = *buf;
  }

  [(WTF::StringImpl *)v32 set_overrideSessionCookieAcceptPolicy:1];
  if (*(this + 1233))
  {
    v33 = 769;
  }

  else
  {
    v33 = 771;
  }

  [(NSURLSessionConfiguration *)v72 setTLSMinimumSupportedProtocolVersion:v33];
  WebKit::NetworkSessionCocoa::initializeNSURLSessionsInSet(this, *(this + 142), v72);
  *(this + 608) = *(a3 + 96);
  v34 = *(this + 9);
  if (v34)
  {
    while (1)
    {
      v35 = *v34;
      if ((*v34 & 1) == 0)
      {
        break;
      }

      v36 = *v34;
      atomic_compare_exchange_strong_explicit(v34, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v36 == v35)
      {
        goto LABEL_60;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v34);
LABEL_60:
    v37 = *(a3 + 75);
    if (v37 && *(v37 - 12))
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(buf, a3 + 75);
      v65 = WTF::fastMalloc(0x10);
      *v65 = &unk_1F10ED878;
      v71 = v65;
      WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(v34, buf, &v71);
      v67 = v71;
      v71 = 0;
      if (v67)
      {
        (*(*v67 + 8))(v67);
      }

      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v66);
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v34);
    v38 = *(this + 9);
    if (v38)
    {
      while (1)
      {
        v39 = *v38;
        if ((*v38 & 1) == 0)
        {
          break;
        }

        v40 = *v38;
        atomic_compare_exchange_strong_explicit(v38, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v40 == v39)
        {
          goto LABEL_65;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v38);
LABEL_65:
      v41 = *(a3 + 76);
      if (v41 && *(v41 - 12))
      {
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(buf, a3 + 76);
        v68 = WTF::fastMalloc(0x10);
        *v68 = &unk_1F10ED8A0;
        v71 = v68;
        WebKit::WebResourceLoadStatisticsStore::setManagedDomains(v38, buf, &v71);
        v70 = v71;
        v71 = 0;
        if (v70)
        {
          (*(*v70 + 8))(v70);
        }

        if (*buf)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v69);
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v38);
    }
  }

  if (*(a3 + 560) == 1)
  {
    WebKit::NetworkSessionCocoa::setProxyConfigData(this, a3 + 68);
  }

  if (v32)
  {
  }

  v42 = *(v30 + 2);
  if (!v42)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93A8E0);
  }

  *(v30 + 2) = v42 - 1;
  v43 = v72;
  v72 = 0;
  if (v43)
  {
  }

  return this;
}

void sub_19D93A904(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, WTF::StringImpl *a11, void *a12, void *a13)
{
  if (v18)
  {
  }

  if (a13)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12)
  {
  }

  v20 = *(v13 + 159);
  if (v20)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v20, a2);
  }

  v21 = *(v13 + 158);
  if (v21)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v21, a2);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  v23 = *(v13 + 151);
  *(v13 + 151) = 0;
  if (v23)
  {
  }

  WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, a2);
  v25 = *(v13 + 148);
  *(v13 + 148) = 0;
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *v15;
  *v15 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v24);
  }

  v27 = *v14;
  *v14 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v24);
  }

  v28 = *(v13 + 145);
  *(v13 + 145) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v24);
  }

  v29 = *(v13 + 144);
  if (v29)
  {
    WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::deallocateTable(v29, v24);
  }

  if (*a10)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*a10, v24);
  }

  v30 = *(v13 + 142);
  *(v13 + 142) = 0;
  if (v30)
  {
    WTF::RefCounted<WebKit::SessionSet>::deref((v30 + 8), v24);
  }

  WebKit::NetworkSession::~NetworkSession(v13);
  _Unwind_Resume(a1);
}

uint64_t WebKit::configurationForSessionID(void **a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (a2 > -2)
  {
    WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(a1, [MEMORY[0x1E695AC80] defaultSessionConfiguration]);
    v7 = 3;
    v6 = "sensitive";
  }

  else
  {
    WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(a1, [MEMORY[0x1E695AC80] ephemeralSessionConfiguration]);
    if (a3)
    {
      v6 = "silent";
    }

    else
    {
      v6 = "sensitive";
    }

    if (a3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }
  }

  [*a1 set_shouldSkipPreferredClientCertificateLookup:1];
  v8 = NSSelectorFromString(&cfstr_SetLoggingpriv.isa);
  if (objc_opt_respondsToSelector())
  {
    [*a1 v8];
    v9 = qword_1ED640E78;
    if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "Regular";
      *v12 = 136446722;
      if (a2 < -1)
      {
        v10 = "Ephemeral";
      }

      *&v12[4] = v10;
      v13 = 2048;
      v14 = a2;
      v15 = 2082;
      v16 = v6;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "Setting logging level for %{public}s session %llu to %{public}s", v12, 0x20u);
    }
  }

  [*a1 set_connectionCacheNumPriorityLevels:{5, *v12}];
  [*a1 set_connectionCacheMinimumFastLanePriority:2];
  [*a1 set_connectionCacheNumFastLanes:1];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*a1 set_skipsStackTraceCapture:1];
  }

  return result;
}

void sub_19D93ADF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::proxyDictionary(WebKit *this, const WTF::URL *a2, const WTF::URL *a3)
{
  if (*(a2 + 8) & 1) != 0 || (*(a3 + 8))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (*(a2 + 8))
    {
      v21 = WTF::URL::host(a2);
      v22 = v14;
      v23 = v15;
      WTF::StringView::createNSString(&v24, &v21);
      [v6 setObject:v24 forKey:*MEMORY[0x1E695AE50]];
      v16 = v24;
      v24 = 0;
      if (v16)
      {
      }

      v17 = WTF::URL::port(a2);
      if ((v17 & 0x10000) != 0)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v17];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        [v6 setObject:v19 forKey:*MEMORY[0x1E695AE58]];
        if (v19)
        {
        }
      }
    }

    if (*(a3 + 8))
    {
      v21 = WTF::URL::host(a3);
      v22 = v7;
      v23 = v8;
      WTF::StringView::createNSString(&v24, &v21);
      [v6 setObject:v24 forKey:*MEMORY[0x1E695AE60]];
      v9 = v24;
      v24 = 0;
      if (v9)
      {
      }

      v10 = WTF::URL::port(a3);
      if ((v10 & 0x10000) != 0)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        [v6 setObject:v12 forKey:*MEMORY[0x1E695AE68]];
        if (v12)
        {
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *this = v6;
}

void sub_19D93AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::initializeNSURLSessionsInSet(uint64_t a1, uint64_t a2, WebKit::AuxiliaryProcess *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  ++*(a2 + 40);
  WebKit::SessionWrapper::initialize(a2 + 32, a3, a1, 1);
  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 40) = v6 - 1;
    if ([-[WebKit::AuxiliaryProcess HTTPCookieStorage](a3 "HTTPCookieStorage")] == 1)
    {
      v7 = qword_1ED640E78;
      if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 24);
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "Creating network session with ID %llu that will not accept cookies.", &v9, 0xCu);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D93B144(_Unwind_Exception *a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NetworkSessionCocoa::setProxyConfigData(uint64_t a1, uint64_t *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = nw_context_clear_proxiesPtr();
  if (byte_1EB01D1BD == 1)
  {
    v6 = off_1EB01D1F8;
  }

  else
  {
    if (byte_1EB01D1BC == 1)
    {
      v33 = qword_1EB01D1F0;
    }

    else
    {
      v33 = dlopen("/usr/lib/libnetwork.dylib", 2);
      qword_1EB01D1F0 = v33;
      byte_1EB01D1BC = 1;
    }

    v6 = dlsym(v33, "nw_context_add_proxy");
    off_1EB01D1F8 = v6;
    byte_1EB01D1BD = 1;
  }

  if (byte_1EB01D1BE == 1)
  {
    v38 = off_1EB01D200;
  }

  else
  {
    if (byte_1EB01D1BC == 1)
    {
      v34 = qword_1EB01D1F0;
    }

    else
    {
      v34 = dlopen("/usr/lib/libnetwork.dylib", 2);
      qword_1EB01D1F0 = v34;
      byte_1EB01D1BC = 1;
    }

    v38 = dlsym(v34, "nw_proxy_config_create_with_agent_data");
    off_1EB01D200 = v38;
    byte_1EB01D1BE = 1;
  }

  if (byte_1EB01D1BF == 1)
  {
    v37 = off_1EB01D208;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    if (byte_1EB01D1BC == 1)
    {
      v35 = qword_1EB01D1F0;
    }

    else
    {
      v35 = dlopen("/usr/lib/libnetwork.dylib", 2);
      qword_1EB01D1F0 = v35;
      byte_1EB01D1BC = 1;
    }

    v37 = dlsym(v35, "nw_proxy_config_stack_requires_http_protocols");
    off_1EB01D208 = v37;
    byte_1EB01D1BF = 1;
    if (!v5)
    {
      return;
    }
  }

  if (v6 && v38 && v37)
  {
    v39 = (a1 + 1192);
    WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 1192), v4);
    v7 = *(a2 + 3);
    if (!v7)
    {
      goto LABEL_40;
    }

    v8 = 0;
    v9 = *a2;
    v36 = *a2 + 48 * v7;
    do
    {
      if (*(v9 + 32) == 1)
      {
        v47 = *(v9 + 16);
      }

      else
      {
        v47 = 0uLL;
      }

      v10 = (v38)(*v9, *(v9 + 12), &v47);
      v40 = (v37)();
      v11 = *(a1 + 1204);
      if (v11 == *(a1 + 1200))
      {
        if (v11 + (v11 >> 1) <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = v11 + (v11 >> 1);
        }

        if (v12 >> 29)
        {
          __break(0xC471u);
          JUMPOUT(0x19D93B624);
        }

        v13 = *v39;
        if (v12 <= 0x10)
        {
          v14 = 16;
        }

        else
        {
          v14 = v12;
        }

        v16 = WTF::fastMalloc((8 * v14));
        *(a1 + 1200) = v14;
        *(a1 + 1192) = v16;
        if (v11)
        {
          v17 = 8 * v11;
          v18 = v13;
          do
          {
            v19 = *v18;
            *v18 = 0;
            *v16 = v19;
            v20 = *v18;
            *v18 = 0;
            if (v20)
            {
            }

            v16 = (v16 + 8);
            v18 = (v18 + 8);
            v17 -= 8;
          }

          while (v17);
          v16 = *v39;
        }

        if (v13)
        {
          if (v16 == v13)
          {
            *(a1 + 1192) = 0;
            *(a1 + 1200) = 0;
          }

          WTF::fastFree(v13, v15);
          v16 = *v39;
        }

        v11 = *(a1 + 1204);
        v21 = (v16 + 8 * v11);
      }

      else
      {
        v21 = (*v39 + 8 * v11);
      }

      v8 |= v40;
      *v21 = v10;
      *(a1 + 1204) = v11 + 1;
      v9 += 48;
    }

    while (v9 != v36);
    if (v8)
    {
      v22 = WTF::fastMalloc(0x10);
      *v22 = &unk_1F10ED8F0;
      v22[1] = a1;
      *&v47 = v22;
      WebKit::NetworkSessionCocoa::forEachSessionWrapper(a1, &v47);
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }
    }

    else
    {
LABEL_40:
      *&v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v23 = WTF::fastMalloc(0x10);
      *v23 = &unk_1F10ED918;
      v23[1] = &v47;
      v45 = v23;
      WebKit::NetworkSessionCocoa::forEachSessionWrapper(a1, &v45);
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = v47;
      v25 = [v47 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v25)
      {
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v41 + 1) + 8 * i);
            v5(v28);
            v29 = *(a1 + 1204);
            if (v29)
            {
              v30 = *(a1 + 1192);
              v31 = 8 * v29;
              do
              {
                (v6)(v28, *v30++);
                v31 -= 8;
              }

              while (v31);
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v25);
      }

      v32 = v47;
      *&v47 = 0;
      if (v32)
      {
      }
    }
  }
}

void sub_19D93B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(v24 - 112);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::~NetworkSessionCocoa(WebKit::NetworkSessionCocoa *this)
{
  WebKit::NetworkSessionCocoa::notifyAdAttributionKitOfSessionTermination(this);
  v3 = *(this + 159);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = *(this + 158);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = *(this + 153);
  *(this + 153) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = *(this + 151);
  *(this + 151) = 0;
  if (v6)
  {
  }

  WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1192, v2);
  v8 = *(this + 148);
  *(this + 148) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 147);
  *(this + 147) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(this + 146);
  *(this + 146) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(this + 145);
  *(this + 145) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *(this + 144);
  if (v12)
  {
    WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::deallocateTable(v12, v7);
  }

  v13 = *(this + 143);
  if (v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v13, v7);
  }

  v14 = *(this + 142);
  *(this + 142) = 0;
  if (v14)
  {
    WTF::RefCounted<WebKit::SessionSet>::deref((v14 + 8), v7);
  }

  WebKit::NetworkSession::~NetworkSession(this);
}

void sub_19D93B898(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 159);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(v2 + 158);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(v2 + 153);
  *(v2 + 153) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 151);
  *(v2 + 151) = 0;
  if (v7)
  {
  }

  WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 1192, a2);
  v9 = *(v2 + 148);
  *(v2 + 148) = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v2 + 147);
  *(v2 + 147) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(v2 + 146);
  *(v2 + 146) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(v2 + 145);
  *(v2 + 145) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = *(v2 + 144);
  if (v13)
  {
    WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::deallocateTable(v13, v8);
  }

  v14 = *(v2 + 143);
  if (v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v8);
  }

  v15 = *(v2 + 142);
  *(v2 + 142) = 0;
  if (v15)
  {
    WTF::RefCounted<WebKit::SessionSet>::deref((v15 + 8), v8);
  }

  WebKit::NetworkSession::~NetworkSession(v2);
  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::notifyAdAttributionKitOfSessionTermination(WebKit::NetworkSessionCocoa *this)
{
  if (*(this + 78) != 0)
  {
    [MEMORY[0x1E698B4F8] sharedInstance];
    if (objc_opt_respondsToSelector())
    {
      v2 = (this + 1248);
      v3 = [MEMORY[0x1E698B4F8] sharedInstance];
      if (*(this + 78) == 0)
      {
        __break(0xC471u);
      }

      else
      {
        v4 = v3;
        WTF::UUID::createNSUUID(&v6, v2);
        [v4 removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:v6 completionHandler:&__block_literal_global_6];
        v5 = v6;
        v6 = 0;
        if (v5)
        {
        }
      }
    }
  }
}

void sub_19D93BA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::operator delete(WebKit::NetworkSessionCocoa *a1)
{
  WebKit::NetworkSessionCocoa::~NetworkSessionCocoa(a1);
  if (v1[4])
  {

    bzero(v1, 0x500uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t WebKit::NetworkSessionCocoa::sessionSetForPage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D93BBD4);
    }

    v5 = *(a1 + 1144);
    if (v5)
    {
      v8 = *(v5 - 8);
      v10 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2) & v8;
      v11 = *(v5 + 16 * v10);
      if (v11 == a2)
      {
LABEL_8:
        v6 = *(v5 + 16 * v10 + 8);
        if (v6)
        {
          ++*(v6 + 8);
          WTF::RefCounted<WebKit::SessionSet>::deref((v6 + 8), v9);
          return v6;
        }
      }

      else
      {
        v12 = 1;
        while (v11)
        {
          v10 = (v10 + v12) & v8;
          v11 = *(v5 + 16 * v10);
          ++v12;
          if (v11 == a2)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  return *(a1 + 1136);
}

uint64_t WebKit::NetworkSessionCocoa::initializeEphemeralStatelessSessionIfNeeded(uint64_t a1, uint64_t a2, char a3)
{
  v4 = WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, a3);
  v5 = (v4 + 8);
  ++*(v4 + 8);
  v6 = WebKit::SessionSet::initializeEphemeralStatelessSessionIfNeeded(v4, a1);
  WTF::RefCounted<WebKit::SessionSet>::deref(v5, v7);
  return v6;
}

uint64_t WebKit::SessionSet::initializeEphemeralStatelessSessionIfNeeded(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    return a1 + 88;
  }

  v4 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [*(a1 + 48) configuration];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  [v5 setHTTPCookieAcceptPolicy:1];
  [v5 setURLCredentialStorage:0];
  [v5 setURLCache:0];
  [v5 setAllowsCellularAccess:{objc_msgSend(v8, "allowsCellularAccess")}];
  [v5 setConnectionProxyDictionary:{objc_msgSend(v8, "connectionProxyDictionary")}];
  if (*(a2 + 1233) == 1)
  {
    v10 = [v8 TLSMinimumSupportedProtocolVersion];
  }

  else
  {
    v10 = 771;
  }

  [v5 setTLSMinimumSupportedProtocolVersion:v10];
  [v5 set_shouldSkipPreferredClientCertificateLookup:1];
  [v5 set_sourceApplicationAuditTokenData:{objc_msgSend(v8, "_sourceApplicationAuditTokenData")}];
  [v5 set_sourceApplicationSecondaryIdentifier:{objc_msgSend(v8, "_sourceApplicationSecondaryIdentifier")}];
  [v5 set_CTDataConnectionServiceType:{objc_msgSend(v8, "_CTDataConnectionServiceType")}];
  ++*(a1 + 96);
  WebKit::SessionWrapper::initialize(a1 + 88, v5, a2, 2);
  v11 = *(a1 + 96);
  if (v11)
  {
    *(a1 + 96) = v11 - 1;
    if (v8)
    {
    }

    if (v5)
    {
    }

    return a1 + 88;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void sub_19D93BDD8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 96);
  if (v4)
  {
    *(v2 + 96) = v4 - 1;
    if (v3)
    {
    }

    if (v1)
    {
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
  JUMPOUT(0x19D93BE0CLL);
}

uint64_t WebKit::SessionSet::isolatedSession(uint64_t a1, unsigned int a2, WTF **a3, uint64_t a4)
{
  if (WTF::equal(*a3, 0, a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C3C8);
  }

  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C3E8);
  }

  v9 = *(a1 + 16);
  if (v9 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 16), 0), (v9 = *(a1 + 16)) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::ASCIICaseInsensitiveHash::hash(*a3, v8) & v10;
  v12 = (v9 + 16 * v11);
  if ((WTF::equal(*v12, 0, v13) & 1) == 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*v12 == -1)
      {
        v15 = v12;
      }

      else
      {
        v17 = WTF::equalIgnoringASCIICase(*v12, *a3, v14);
        if (v17)
        {
          goto LABEL_21;
        }
      }

      v11 = (v11 + v16) & v10;
      v12 = (v9 + 16 * v11);
      ++v16;
    }

    while (!WTF::equal(*v12, 0, v14));
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*(a1 + 16) - 16);
      v12 = v15;
    }
  }

  WTF::String::operator=(v12, a3);
  v19 = WebKit::IsolatedSession::operator new(0x40, v18);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 8) = 1;
  WebKit::SessionWrapper::initialize(v19, [*(a1 + 48) configuration], a4, 1);
  v20 = *(v19 + 8);
  if (!v20)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C448);
  }

  *(v19 + 8) = v20 - 1;
  v17 = std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v12 + 1, v19);
  v21 = *(a1 + 16);
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
  if (v24 <= 0x400)
  {
    if (3 * v24 > 4 * v23)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v24 <= 2 * v23)
  {
LABEL_20:
    v17 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 16), v12);
    v12 = v17;
  }

LABEL_21:
  WTF::WallTime::now(v17);
  *(v12[1] + 7) = v26;
  ++*(a1 + 8);
  ++*(a4 + 16);
  if (a2 > 1)
  {
    v27 = WebKit::SessionSet::initializeEphemeralStatelessSessionIfNeeded(a1, a4);
  }

  else
  {
    v27 = v12[1];
  }

  ++*(v27 + 8);
  v28 = *(a4 + 16);
  if (!v28)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C408);
  }

  *(a4 + 16) = v28 - 1;
  v29 = WTF::RefCounted<WebKit::SessionSet>::deref((a1 + 8), v25);
  v30 = *(a1 + 16);
  if (!v30 || *(v30 - 12) < 0xBu)
  {
    goto LABEL_26;
  }

  WTF::WallTime::now(v29);
  v34 = v33;
  v37 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(*(a1 + 16), v35, v36);
  v40 = *(a1 + 16);
  if (v40)
  {
    v41 = v40 + 16 * *(v40 - 4);
  }

  else
  {
    v41 = 0;
  }

  v70 = 0;
  v71[0] = v37;
  v42 = 0;
  v71[1] = v38;
  while (1)
  {
    v43 = v71[0];
    if (v71[0] == v41)
    {
      break;
    }

    if (WTF::equal(*v71[0], 0, v39))
    {
      __break(0xC471u);
      JUMPOUT(0x19D93C388);
    }

    if (*v43 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D93C3A8);
    }

    v45 = *(a1 + 16);
    v46 = *(v45 - 8);
    v47 = WTF::ASCIICaseInsensitiveHash::hash(*v43, v44) & v46;
    v48 = v45 + 16 * v47;
    WTF::equal(*v48, 0, v49);
    v51 = 1;
    while (*v48 == -1 || (WTF::equalIgnoringASCIICase(*v48, *v43, v50) & 1) == 0)
    {
      v47 = (v47 + v51) & v46;
      v48 = v45 + 16 * v47;
      ++v51;
      WTF::equal(*v48, 0, v50);
    }

    v53 = *(*(v48 + 8) + 56);
    if (v53 >= v34)
    {
      v53 = v34;
    }

    else
    {
      v54 = *v43;
      if (*v43)
      {
        atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
      }

      v70 = v54;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v52);
      }

      v42 = v54;
    }

    v71[0] += 16;
    WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v71, v52, v50);
    v34 = v53;
  }

  v55 = v70;
  if (*(a1 + 16))
  {
    if (WTF::equal(v70, 0, v39))
    {
      __break(0xC471u);
      JUMPOUT(0x19D93C488);
    }

    if (v70 == -1)
    {
LABEL_94:
      __break(0xC471u);
      JUMPOUT(0x19D93C2A8);
    }

    v56 = *(a1 + 16);
    if (v56)
    {
      v57 = *(v56 - 8);
      v58 = WTF::ASCIICaseInsensitiveHash::hash(v70, v38) & v57;
      v59 = (v56 + 16 * v58);
      if (WTF::equal(*v59, 0, v60))
      {
LABEL_61:
        v63 = *(a1 + 16);
        v55 = v70;
        if (!v63)
        {
          goto LABEL_62;
        }

        v59 = &v63[2 * *(v63 - 1)];
      }

      else
      {
        v62 = 1;
        while (*v59 == -1 || (WTF::equalIgnoringASCIICase(*v59, v70, v61) & 1) == 0)
        {
          v58 = (v58 + v62) & v57;
          v59 = (v56 + 16 * v58);
          ++v62;
          if (WTF::equal(*v59, 0, v61))
          {
            goto LABEL_61;
          }
        }

        v63 = *(a1 + 16);
        if (!v63)
        {
          v55 = v70;
LABEL_75:
          if (v63 != v59)
          {
            v65 = *v59;
            *v59 = 0;
            if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v65, v38);
            }

            *v59 = -1;
            std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v59 + 1, 0);
            v66 = *(a1 + 16);
            v67 = vadd_s32(*(v66 - 16), 0xFFFFFFFF00000001);
            *(v66 - 16) = v67;
            v68 = *(v66 - 4);
            if (6 * v67.i32[1] < v68 && v68 >= 9)
            {
              WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash((a1 + 16), v68 >> 1, 0);
            }
          }

          goto LABEL_62;
        }

        v55 = v70;
      }

      v63 += 2 * *(v63 - 1);
      if (v63 == v59)
      {
        goto LABEL_62;
      }

      goto LABEL_75;
    }
  }

LABEL_62:
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v38);
  }

  v64 = *(a1 + 16);
  if (v64 && *(v64 - 12) >= 0xBu)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C468);
  }

  if (!v27)
  {
    goto LABEL_94;
  }

LABEL_26:
  v31 = *(v27 + 8);
  if (!v31)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93C428);
  }

  *(v27 + 8) = v31 - 1;
  return v27;
}

void sub_19D93C4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 8);
  if (v11)
  {
    *(v10 + 8) = v11 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkSessionCocoa::appBoundSession(WebKit **a1, uint64_t a2, char a3, unsigned int a4)
{
  v8 = WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, a3);
  v10 = (v8 + 24);
  if (!*(v8 + 24))
  {
    v11 = v8;
    v12 = WebKit::IsolatedSession::operator new(0x40, v9);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v10, v12);
    v13 = *(v11 + 24);
    ++*(v13 + 8);
    WebKit::SessionWrapper::initialize(v13, [*(v11 + 48) configuration], a1, 1);
    v14 = *(v13 + 8);
    if (!v14)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v13 + 8) = v14 - 1;
  }

  if (a4 <= 1)
  {
    return *v10;
  }

  return WebKit::NetworkSessionCocoa::initializeEphemeralStatelessSessionIfNeeded(a1, a2, a3);
}

void sub_19D93C71C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

BOOL WebKit::NetworkSessionCocoa::hasAppBoundSession(WebKit::NetworkSessionCocoa *this)
{
  if (*(*(this + 142) + 24))
  {
    return 1;
  }

  v2 = *(this + 143);
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
LABEL_5:
    v5 = v3;
    v3 = &v2[2 * v4];
    goto LABEL_6;
  }

  v4 = *(v2 - 1);
  v3 = &v2[2 * v4];
  if (!*(v2 - 3))
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v7 = 16 * v4;
    v5 = *(this + 143);
    while ((*v5 + 1) <= 1)
    {
      v5 += 2;
      v7 -= 16;
      if (!v7)
      {
        v5 = v3;
        break;
      }
    }

LABEL_6:
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v5 = *(this + 143);
LABEL_21:
  v2 += 2 * *(v2 - 1);
LABEL_7:
  if (v2 == v5)
  {
    return 0;
  }

  do
  {
    v6 = *(v5[1] + 24);
    result = v6 != 0;
    if (v6)
    {
      break;
    }

    do
    {
      v5 += 2;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }

  while (v5 != v2);
  return result;
}

void *WebKit::NetworkSessionCocoa::clearAppBoundSession(WebKit::NetworkSessionCocoa *this)
{
  std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100]((*(this + 142) + 24), 0);
  v2 = *(this + 143);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v2);
  v4 = result;
  v6 = v5;
  v7 = 0;
  if (v2)
  {
    v7 = &v2[2 * *(v2 - 1)];
  }

  if (v7 != result)
  {
    do
    {
      result = std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100]((v4[1] + 24), 0);
      do
      {
        v4 += 2;
      }

      while (v4 != v6 && (*v4 + 1) <= 1);
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t WebKit::NetworkSessionCocoa::hasIsolatedSession(WebKit::NetworkSessionCocoa *this, WTF **a2, const WTF::StringImpl *a3)
{
  v5 = *(this + 142);
  if (*(v5 + 16))
  {
    if (WTF::equal(*a2, 0, a3))
    {
      __break(0xC471u);
      JUMPOUT(0x19D93CB18);
    }

    if (*a2 == -1)
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x19D93CAD8);
    }

    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = *(v7 - 8);
      v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v6) & v8;
      v10 = (v7 + 16 * v9);
      if ((WTF::equal(*v10, 0, v11) & 1) == 0)
      {
        v12 = 1;
        while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, a3) & 1) == 0)
        {
          v9 = (v9 + v12) & v8;
          v10 = (v7 + 16 * v9);
          ++v12;
          if (WTF::equal(*v10, 0, a3))
          {
            goto LABEL_10;
          }
        }

        return 1;
      }
    }
  }

LABEL_10:
  v13 = *(this + 143);
  if (!v13)
  {
    v14 = 0;
    v15 = 0;
LABEL_12:
    v16 = v14;
    v14 = &v13[2 * v15];
    goto LABEL_13;
  }

  v15 = *(v13 - 1);
  v14 = &v13[2 * v15];
  if (!*(v13 - 3))
  {
    goto LABEL_12;
  }

  if (!v15)
  {
    v16 = v13;
    goto LABEL_37;
  }

  v27 = 16 * v15;
  v16 = v13;
  while ((*v16 + 1) <= 1)
  {
    v16 += 2;
    v27 -= 16;
    if (!v27)
    {
      v16 = v14;
      break;
    }
  }

LABEL_13:
  if (v13)
  {
LABEL_37:
    v17 = &v13[2 * *(v13 - 1)];
    goto LABEL_15;
  }

  v17 = 0;
LABEL_15:
  if (v17 == v16)
  {
    return 0;
  }

  while (1)
  {
    v18 = v16[1];
    if (*(v18 + 16))
    {
      if (WTF::equal(*a2, 0, a3))
      {
        goto LABEL_41;
      }

      if (*a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19D93CAF8);
      }

      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = *(v20 - 8);
        v22 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v19) & v21;
        v23 = (v20 + 16 * v22);
        if ((WTF::equal(*v23, 0, v24) & 1) == 0)
        {
          break;
        }
      }
    }

    do
    {
LABEL_25:
      v16 += 2;
    }

    while (v16 != v14 && (*v16 + 1) <= 1);
    if (v16 == v17)
    {
      return 0;
    }
  }

  v25 = 1;
  while (*v23 == -1 || (WTF::equalIgnoringASCIICase(*v23, *a2, a3) & 1) == 0)
  {
    v22 = (v22 + v25) & v21;
    v23 = (v20 + 16 * v22);
    ++v25;
    if (WTF::equal(*v23, 0, a3))
    {
      goto LABEL_25;
    }
  }

  return 1;
}

WTF::StringImpl *WebKit::NetworkSessionCocoa::clearIsolatedSessions(WebKit::NetworkSessionCocoa *this, WTF::StringImpl *a2)
{
  v3 = *(this + 142);
  v4 = *(v3 + 16);
  if (v4)
  {
    *(v3 + 16) = 0;
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 143);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v5);
  v8 = result;
  v9 = v7;
  if (v5)
  {
    v5 = (v5 + 16 * *(v5 - 1));
  }

  if (v5 != result)
  {
    do
    {
      v10 = *(v8 + 1);
      result = *(v10 + 16);
      if (result)
      {
        *(v10 + 16) = 0;
        result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(result, v7);
      }

      do
      {
        v8 = (v8 + 16);
      }

      while (v8 != v9 && (*v8 + 1) <= 1);
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t WebKit::NetworkSessionCocoa::invalidateAndCancelSessionSet(WebKit::NetworkSessionCocoa *this, WebKit::SessionSet *a2)
{
  [*(this + 6) invalidateAndCancel];
  [*(this + 13) invalidateAndCancel];
  [*(this + 7) sessionInvalidated];
  [*(this + 14) sessionInvalidated];
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(*(this + 2), v3, v4);
  result = *(this + 2);
  if (result)
  {
    v8 = result + 16 * *(result - 4);
  }

  else
  {
    v8 = 0;
  }

  v13[1] = v5;
  if (v8 != v6)
  {
    do
    {
      [*(*(v6 + 8) + 16) invalidateAndCancel];
      [*(*(v6 + 8) + 24) sessionInvalidated];
      v13[0] = v6 + 16;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v10, v11);
      v6 = v13[0];
    }

    while (v13[0] != v8);
    result = *(this + 2);
  }

  if (result)
  {
    *(this + 2) = 0;
    result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(result, v5);
  }

  v9 = *(this + 3);
  if (v9)
  {
    [*(v9 + 16) invalidateAndCancel];
    v12 = *(*(this + 3) + 24);

    return [v12 sessionInvalidated];
  }

  return result;
}

WebKit::NetworkSessionCocoa *WebKit::NetworkSessionCocoa::invalidateAndCancel(WebKit::NetworkSessionCocoa **this)
{
  WebKit::NetworkSession::invalidateAndCancel(this);
  WebKit::NetworkSessionCocoa::invalidateAndCancelSessionSet(this[142], v2);
  v3 = this[143];
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v6 = result;
  v7 = v5;
  if (v3)
  {
    v3 = (v3 + 16 * *(v3 - 1));
  }

  if (v3 != result)
  {
    do
    {
      result = WebKit::NetworkSessionCocoa::invalidateAndCancelSessionSet(*(v6 + 8), v5);
      do
      {
        v6 += 16;
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
    }

    while (v6 != v3);
  }

  return result;
}

void WebKit::NetworkSessionCocoa::originsWithCredentials(WebKit::NetworkSessionCocoa *this@<X0>, uint64_t *a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(*(*(this + 142) + 48) "configuration")];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    v6 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v23 = a2;
    *a2 = 0;
    v7 = [v4 allCredentials];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v10)
    {
      v24 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = [objc_msgSend(v8 objectForKeyedSubscript:{v12), "allValues"}];
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
          if (v14)
          {
            v15 = *v29;
LABEL_11:
            v16 = 0;
            while (1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v13);
              }

              if (v4 != v6 || [*(*(&v28 + 1) + 8 * v16) persistence] == 1)
              {
                break;
              }

              if (v14 == ++v16)
              {
                v14 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
                if (v14)
                {
                  goto LABEL_11;
                }

                goto LABEL_30;
              }
            }

            MEMORY[0x19EB02040](&v27, [v12 protocol]);
            MEMORY[0x19EB02040](&v26, [v12 host]);
            v17 = [v12 port];
            v18 = v27;
            if (v27)
            {
              atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
            }

            v19 = v26;
            if (v26)
            {
              atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
            }

            v36[0] = v18;
            v36[1] = v19;
            v37 = v17 | 0x10000;
            v38 = 0;
            if (v18 == -1)
            {
              __break(0xC471u);
              return;
            }

            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v36, v23, v25);
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v36);
            v21 = v26;
            v26 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v20);
            }

            v22 = v27;
            v27 = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v20);
            }
          }

LABEL_30:
          ;
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v10);
    }

    if (v8)
    {
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_19D93D060(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, mpark **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (v35)
  {
  }

  if (*a10)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(*a10, a2);
  }

  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::removeCredentialsForOrigins(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(*(*(a1 + 1136) + 48) "configuration")];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    v42 = 0;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 32 * v6;
      do
      {
        if ((WebCore::SecurityOriginData::isNull(v7) & 1) == 0 && *(v7 + 24) != 1)
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v7, &v42, v43);
        }

        v7 = (v7 + 32);
        v8 -= 32;
      }

      while (v8);
    }

    v9 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v10 = [v4 allCredentials];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v11;
    v14 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v14)
    {
      v28 = *v39;
      do
      {
        v15 = 0;
        v29 = v14;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v38 + 1) + 8 * v15);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v17 = [objc_msgSend(obj objectForKeyedSubscript:{v16, v28), "allValues"}];
          v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
          v31 = v15;
          if (v18)
          {
            v19 = *v35;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                if (v4 != v9 || [*(*(&v34 + 1) + 8 * i) persistence] == 1)
                {
                  MEMORY[0x19EB02040](&v33, [v16 protocol]);
                  MEMORY[0x19EB02040](&v32, [v16 host]);
                  v22 = [v16 port];
                  v24 = v33;
                  if (v33)
                  {
                    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                  }

                  v25 = v32;
                  if (v32)
                  {
                    atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
                  }

                  v43[0] = v24;
                  v43[1] = v25;
                  v44 = v22 | 0x10000;
                  v45 = 0;
                  if (v24 == -1)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19D93D450);
                  }

                  v26 = v32;
                  v32 = 0;
                  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v26, v23);
                  }

                  v27 = v33;
                  v33 = 0;
                  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, v23);
                  }

                  if (v42 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(&v42, v43))
                  {
                    [v4 removeCredential:v21 forProtectionSpace:v16];
                  }

                  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v43);
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
            }

            while (v18);
          }

          v15 = v31 + 1;
        }

        while (v31 + 1 != v29);
        v14 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v14);
    }

    if (obj)
    {
    }

    if (v42)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v42, v13);
    }
  }
}

void sub_19D93D458(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, mpark *a32, char a33)
{
  if (a11)
  {
  }

  if (a32)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(a32, a2);
  }

  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::clearCredentials(uint64_t a1, double a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(*(*(a1 + 1136) + 48) "configuration")];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    v6 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v8 = a2 > 0.0 || v4 == v6;
    v9 = [v4 allCredentials];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v20 = *v27;
      do
      {
        v13 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v15 = [objc_msgSend(obj objectForKeyedSubscript:{v14, v20), "allValues"}];
          v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v16)
          {
            v17 = *v23;
            do
            {
              v18 = 0;
              do
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v22 + 1) + 8 * v18);
                if (!v8 || [*(*(&v22 + 1) + 8 * v18) persistence] == 1)
                {
                  [v4 removeCredential:v19 forProtectionSpace:v14];
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v16);
          }

          ++v13;
        }

        while (v13 != v12);
        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    if (obj)
    {
    }
  }
}

void sub_19D93D718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::createChallengeCompletionHandler(void *a1, uint64_t *a2, uint64_t a3, WebCore::AuthenticationChallengeBase *a4, atomic_uint **a5, uint64_t a6, uint64_t *a7)
{
  WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(v41, a4);
  v14 = *(a4 + 53);
  v42 = v14;
  if (v14)
  {
    v15 = v14;
  }

  v16 = *(a4 + 54);
  v43 = v16;
  if (v16)
  {
    v17 = v16;
  }

  v18 = *a7;
  *a7 = 0;
  v19 = *a2;
  *a2 = 0;
  v34 = v18;
  v35 = v19;
  WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(v36, v41);
  v37 = v42;
  if (v42)
  {
    v20 = v42;
  }

  v38 = v43;
  if (v43)
  {
    v21 = v43;
  }

  v39 = a6;
  v22 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  v40 = v22;
  v23 = WTF::fastMalloc(0x1E8);
  *v23 = &unk_1F10ED4D0;
  v23[1] = v34;
  v23[2] = v35;
  v23[3] = a3;
  WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase((v23 + 4), v36);
  v25 = v39;
  v23[57] = v37;
  v26 = v38;
  v27 = v40;
  v37 = 0;
  v38 = 0;
  v23[58] = v26;
  v23[59] = v25;
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    v28 = v40;
    v23[60] = v27;
    *a1 = v23;
    v40 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v24);
    }
  }

  else
  {
    v23[60] = 0;
    *a1 = v23;
  }

  v29 = v38;
  v38 = 0;
  if (v29)
  {
  }

  v30 = v37;
  v37 = 0;
  if (v30)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v36, v24);
  v32 = v43;
  v43 = 0;
  if (v32)
  {
  }

  v33 = v42;
  v42 = 0;
  if (v33)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v41, v31);
}

void sub_19D93D9A8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase((v70 + 24), a2);
  if (a10 && atomic_fetch_add(a10 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 36);
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  v73 = STACK[0x398];
  STACK[0x398] = 0;
  if (v73)
  {
  }

  v74 = STACK[0x390];
  STACK[0x390] = 0;
  if (v74)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&a70, v72);
  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::createWebSocketTask(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, WebCore::ResourceRequestBase *a8@<X7>, void *a9@<X8>, uint64_t *a10, __n128 *a11, char a12, char a13, int a14, unsigned __int16 a15, int a16, char a17)
{
  v22 = WebCore::ResourceRequest::nsURLRequest();
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  if (!*a10)
  {
    v26 = 0;
    goto LABEL_18;
  }

  v25 = [v23 mutableCopy];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  if (!v23)
  {
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v26)
  {
LABEL_11:
    v28 = v26;
  }

LABEL_12:
  v81 = 0;
  LODWORD(v82) = 0;
  LOBYTE(v29) = 1;
  BYTE4(v82) = 1;
  v30 = *a10;
  if (*a10)
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 8);
    LODWORD(v30) = *(v30 + 4);
    v81 = v32;
    v29 = (v31 >> 2) & 1;
  }

  LODWORD(v82) = v30;
  BYTE4(v82) = v29;
  WTF::StringView::createNSString(&v80, &v81);
  [v26 addValue:v80 forHTTPHeaderField:@"Sec-WebSocket-Protocol"];
  v33 = v80;
  v80 = 0;
  if (v33)
  {
  }

  if (v26)
  {

    v23 = v26;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:
  [v23 _setProperty:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695AD60]];
  if ((*(a8 + 148) & 4) != 0)
  {
    goto LABEL_30;
  }

  if (v26)
  {
    v34 = v23;
  }

  else
  {
    v35 = [v23 mutableCopy];
    v34 = v35;
    if (v35)
    {
      v36 = v35;
    }

    if (v23)
    {
    }

    v26 = v34;
    if (!v34)
    {
      v38 = 1;
      goto LABEL_27;
    }
  }

  v37 = v26;
  v38 = 0;
LABEL_27:
  [v26 setAttribution:1];
  if ((v38 & 1) == 0)
  {
  }

  v23 = v34;
LABEL_30:
  if ([v23 attribution])
  {
    v39 = a1 + 1;
  }

  else
  {
    v39 = a1;
  }

  *(v39 + 1064) = 1;
  if (a13)
  {
    goto LABEL_45;
  }

  if (v26)
  {
    v40 = v23;
  }

  else
  {
    v41 = [v23 mutableCopy];
    v40 = v41;
    if (v41)
    {
      v42 = v41;
    }

    if (v23)
    {
    }

    v26 = v40;
    if (!v40)
    {
      v44 = 1;
      goto LABEL_42;
    }
  }

  v43 = v26;
  v44 = 0;
LABEL_42:
  [v26 _setProhibitPrivacyProxy:1];
  if ((v44 & 1) == 0)
  {
  }

  v23 = v40;
LABEL_45:
  if (a12)
  {
    goto LABEL_51;
  }

  v45 = WebCore::ResourceRequestBase::url(a8);
  v46 = WTF::URL::host(v45);
  if (a11[1].n128_u8[8])
  {
    if (a11[1].n128_u8[8] != 1)
    {
      mpark::throw_bad_variant_access(v46);
    }

    v48 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v48 = &a11->n128_u64[1];
  }

  v49 = *v48;
  if (v49)
  {
    v50 = *(v49 + 8);
    v51 = *(v49 + 4) | (((*(v49 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v50 = 0;
    v51 = 0x100000000;
  }

  if (WTF::operator==(v46, v47 & 0xFFFFFFFFFFLL, v50, v51))
  {
LABEL_51:
    if (v26)
    {
      v52 = v23;
    }

    else
    {
      v53 = [v23 mutableCopy];
      v52 = v53;
      if (v53)
      {
        v54 = v53;
      }

      if (v23)
      {
      }

      v26 = v52;
      if (!v52)
      {
        v56 = 1;
        goto LABEL_59;
      }
    }

    v55 = v26;
    v56 = 0;
LABEL_59:
    [v26 _setPrivacyProxyFailClosedForUnreachableNonMainHosts:1];
    if ((v56 & 1) == 0)
    {
    }

    v23 = v52;
  }

  if (objc_opt_respondsToSelector())
  {
    v57 = *(a1 + 32);
    v81 = *(a1 + 24);
    v58 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v57 + 248), &v81);
    if (v58)
    {
      v59 = v58;
      v60 = *(v58 + 8) + 1;
      *(v58 + 8) = v60;
      if (*(v58 + 104) == 1)
      {
        v61 = *(a1 + 32);
        v81 = a2;
        v82 = 1;
        if (*(v61 + 384))
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v61 + 384), &v81);
        }

        [v26 _setAllowOnlyPartitionedCookies:WebCore::NetworkStorageSession::thirdPartyCookieBlockingDecisionForRequest() == 2];
        v60 = *(v59 + 8);
      }

      if (!v60)
      {
        __break(0xC471u);
        return;
      }

      *(v59 + 8) = v60 - 1;
    }
  }

  v74 = a9;
  if (v26)
  {
    v62 = v23;
  }

  else
  {
    v63 = [v23 mutableCopy];
    v62 = v63;
    if (v63)
    {
      v64 = v63;
    }

    if (v23)
    {
    }

    v26 = v62;
    if (!v62)
    {
      v66 = 1;
      goto LABEL_78;
    }
  }

  v65 = v26;
  v66 = 0;
LABEL_78:
  WebKit::enableAdvancedPrivacyProtections(v26, a15);
  if ((v66 & 1) == 0)
  {
  }

  v67 = WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, 1);
  ++*(v67 + 8);
  v68 = [*(v67 + 48) webSocketTaskWithRequest:v62];
  v69 = v68;
  v81 = v68;
  if (v68)
  {
    v70 = v68;
  }

  [v69 setMaximumMessageSize:0x7FFFFFFFFFFFFFFFLL];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v67, v67);
  v71 = *v67;
  atomic_fetch_add(*v67, 1u);
  v79 = v71;
  WebKit::WebSocketTask::create(a7, a2, a3, a4, a5, a6, &v79, a8, &v80, a11, &v81, a17);
  v73 = v79;
  *v74 = v80;
  v79 = 0;
  v80 = 0;
  if (v73 && atomic_fetch_add(v73, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v73);
    WTF::fastFree(v73, v72);
  }

  if (v81)
  {
  }

  WTF::RefCounted<WebKit::SessionSet>::deref((v67 + 8), v72);
  if ((v66 & 1) == 0)
  {
  }

  if (v62)
  {
  }
}

void sub_19D93E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, uint64_t a18, uint64_t a19)
{
  v22 = *(v21 + 8);
  if (v22)
  {
    *(v21 + 8) = v22 - 1;
    if (v19)
    {
    }

    if (v20)
    {
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
  JUMPOUT(0x19D93E0C0);
}

void WebKit::NetworkSessionCocoa::addWebSocketTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = WebKit::NetworkSessionCocoa::sessionSetForPage(a1, a2, 1);
  v5 = [*(a3 + 56) taskIdentifier];
  if (v5 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93E3F4);
  }

  v6 = v5;
  if (!v5)
  {
LABEL_30:
    __break(0xC471u);
    JUMPOUT(0x19D93E3D4);
  }

  v7 = *(v4 + 80);
  if (!v7)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand((v4 + 80));
    v7 = *(v4 + 80);
  }

  v8 = *(v7 - 8);
  v9 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 24 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v6)
      {
        goto LABEL_30;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 24 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*(v4 + 80) - 16);
      v13 = v15;
    }
  }

  *v13 = v6;
  v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::controlBlock((a3 + 40));
  v19 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
  v20 = v13[2];
  v13[2] = v19;
  if (v20)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v20, v18);
  }

  v13[1] = a3;
  v21 = *(v4 + 80);
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
  if (v24 <= 0x400)
  {
    if (3 * v24 > 4 * v23)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v24 <= 2 * v23)
  {
LABEL_20:
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand((v4 + 80));
  }

LABEL_21:
  v25 = qword_1ED640E78;
  if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v4 + 80);
    if (v26)
    {
      LODWORD(v26) = *(v26 - 12);
    }

    v27[0] = 67109120;
    v27[1] = v26;
    _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "NetworkSessionCocoa::addWebSocketTask, web socket count is %u", v27, 8u);
  }
}

void WebKit::NetworkSessionCocoa::removeWebSocketTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [*(a3 + 56) taskIdentifier];
  v8 = *(a2 + 80);
  v7 = (a2 + 80);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_26;
  }

  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93E610);
  }

  if (!v4)
  {
    goto LABEL_26;
  }

  v9 = *(v6 - 8);
  v10 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v6 + 24 * v13);
  v15 = *v14;
  if (*v14 != v4)
  {
    v16 = 1;
    while (v15)
    {
      v13 = (v13 + v16) & v9;
      v14 = (v6 + 24 * v13);
      v15 = *v14;
      ++v16;
      if (*v14 == v4)
      {
        goto LABEL_10;
      }
    }

    v14 = (v6 + 24 * *(v6 - 4));
  }

LABEL_10:
  if ((v6 + 24 * *(v6 - 4)) == v14)
  {
LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19D93E5F0);
  }

  *v14 = -1;
  v17 = v14[2];
  v14[2] = 0;
  if (v17)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v17, v5);
  }

  v18 = *v7;
  v19 = vadd_s32(*(*v7 - 16), 0xFFFFFFFF00000001);
  *(v18 - 16) = v19;
  v20 = *(v18 - 4);
  if (6 * v19.i32[1] < v20 && v20 >= 9)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v7, v20 >> 1);
  }

  v22 = qword_1ED640E78;
  if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *v7;
    if (*v7)
    {
      LODWORD(v23) = *(v23 - 12);
    }

    v24[0] = 67109120;
    v24[1] = v23;
    _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "NetworkSessionCocoa::removeWebSocketTask, web socket count is %u", v24, 8u);
  }
}

void WebKit::NetworkSessionCocoa::addWebPageNetworkParameters(uint64_t *a1, uint64_t a2, WTF **a3)
{
  if (WTF::equal(*a3, 0, a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19D93ED28);
  }

  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93ED48);
  }

  v7 = a1 + 144;
  v8 = a1[144];
  if (v8 || (WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::expand(a1 + 144, 0), (v8 = *v7) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 4);
    if (v11 < 0x100)
    {
      LODWORD(v10) = WTF::StringImpl::hashSlowCase(v10);
    }

    else
    {
      LODWORD(v10) = v11 >> 8;
    }
  }

  v12 = v10 & v9;
  v13 = v8 + 16 * (v10 & v9);
  if ((WTF::equal(*v13, 0, v6) & 1) == 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*v13 == -1)
      {
        v15 = v13;
      }

      else if (WTF::equal(*v13, *a3, v14))
      {
        goto LABEL_27;
      }

      v12 = (v12 + v16) & v9;
      v13 = v8 + 16 * v12;
      ++v16;
    }

    while (!WTF::equal(*v13, 0, v14));
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*v7 - 16);
      v13 = v15;
    }
  }

  WTF::String::operator=(v13, a3);
  v18 = *(v13 + 8);
  *(v13 + 8) = 0;
  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    WTF::fastFree(v18, v17);
  }

  v19 = *v7;
  if (*v7)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 <= 0x400)
  {
    if (3 * v22 > 4 * v21)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v22 <= 2 * v21)
  {
LABEL_26:
    v13 = WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::expand(a1 + 144, v13);
  }

LABEL_27:
  v23 = *(v13 + 8);
  if (v23)
  {
    atomic_fetch_add(v23, 1u);
    v24 = *(v23 + 8);
    if (v24)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19D93ED68);
      }

      if (!a2)
      {
        __break(0xC471u);
        JUMPOUT(0x19D93ED88);
      }

      v25 = a1 + 143;
      v26 = a1[143];
      if (!v26)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 143, 0);
        v26 = *v25;
      }

      v27 = *(v26 - 8);
      v28 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v29 = 9 * ((v28 + ~(v28 << 13)) ^ ((v28 + ~(v28 << 13)) >> 8));
      v30 = (v29 ^ (v29 >> 15)) + ~((v29 ^ (v29 >> 15)) << 27);
      v31 = v27 & ((v30 >> 31) ^ v30);
      v32 = (v26 + 16 * v31);
      v33 = *v32;
      if (*v32)
      {
        v34 = 0;
        v35 = 1;
        while (v33 != a2)
        {
          if (v33 == -1)
          {
            v34 = v32;
          }

          v31 = (v31 + v35) & v27;
          v32 = (v26 + 16 * v31);
          v33 = *v32;
          ++v35;
          if (!*v32)
          {
            if (v34)
            {
              *v34 = 0;
              v34[1] = 0;
              --*(*v25 - 16);
              v32 = v34;
            }

            goto LABEL_41;
          }
        }

        goto LABEL_48;
      }

LABEL_41:
      v36 = v32[1];
      *v32 = a2;
      ++*(v24 + 8);
      v32[1] = v24;
      if (v36)
      {
        WTF::RefCounted<WebKit::SessionSet>::deref((v36 + 8), v17);
      }

      v37 = *v25;
      if (*v25)
      {
        v38 = *(v37 - 12) + 1;
      }

      else
      {
        v38 = 1;
      }

      *(v37 - 12) = v38;
      v39 = (*(v37 - 16) + v38);
      v40 = *(v37 - 4);
      if (v40 > 0x400)
      {
        if (v40 > 2 * v39)
        {
LABEL_48:
          if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);

            WTF::fastFree(v23, v17);
          }

          return;
        }
      }

      else if (3 * v40 > 4 * v39)
      {
        goto LABEL_48;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v25, v32);
      goto LABEL_48;
    }

    if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23);
      WTF::fastFree(v23, v17);
    }
  }

  v41 = WTF::fastMalloc(0x90);
  *v41 = 0;
  *(v41 + 8) = 1;
  v43 = (v41 + 8);
  *(v41 + 104) = 0u;
  *(v41 + 120) = 0u;
  *(v41 + 136) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 80) = 0u;
  *(v41 + 96) = 0;
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93EDA8);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93EDC8);
  }

  v44 = v41;
  v45 = a1 + 143;
  v46 = a1[143];
  if (!v46)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 143, 0);
    v46 = *v45;
  }

  v47 = *(v46 - 8);
  v48 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v49 = 9 * ((v48 + ~(v48 << 13)) ^ ((v48 + ~(v48 << 13)) >> 8));
  v50 = (v49 ^ (v49 >> 15)) + ~((v49 ^ (v49 >> 15)) << 27);
  v51 = (v50 >> 31) ^ v50;
  v52 = v47 & v51;
  v53 = (v46 + 16 * (v47 & v51));
  v54 = *v53;
  if (*v53)
  {
    v55 = 0;
    v56 = 1;
    do
    {
      if (v54 == a2)
      {
        WTF::RefCounted<WebKit::SessionSet>::deref(v43, v42);
        goto LABEL_75;
      }

      if (v54 == -1)
      {
        v55 = v53;
      }

      v52 = (v52 + v56) & v47;
      v53 = (v46 + 16 * v52);
      v54 = *v53;
      ++v56;
    }

    while (*v53);
    if (v55)
    {
      *v55 = 0;
      v55[1] = 0;
      --*(*v45 - 16);
      v53 = v55;
    }
  }

  v57 = v53[1];
  *v53 = a2;
  v53[1] = v44;
  if (v57)
  {
    WTF::RefCounted<WebKit::SessionSet>::deref((v57 + 8), v42);
  }

  v58 = *v45;
  if (*v45)
  {
    v59 = *(v58 - 12) + 1;
  }

  else
  {
    v59 = 1;
  }

  *(v58 - 12) = v59;
  v60 = (*(v58 - 16) + v59);
  v61 = *(v58 - 4);
  if (v61 <= 0x400)
  {
    if (3 * v61 > 4 * v60)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v61 <= 2 * v60)
  {
LABEL_72:
    v53 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 143, v53);
  }

LABEL_75:
  v62 = [objc_msgSend(*(a1[142] + 48) "configuration")];
  v63 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v85, v63);
    if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v64);
    }
  }

  else
  {
    v85 = &stru_1F1147748;
    v65 = &stru_1F1147748;
  }

  [v62 set_attributedBundleIdentifier:v85];
  v66 = v85;
  v85 = 0;
  if (v66)
  {
  }

  WebKit::NetworkSessionCocoa::initializeNSURLSessionsInSet(a1, v53[1], v62);
  v67 = v53[1];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v67, v67);
  v69 = *v67;
  atomic_fetch_add(*v67, 1u);
  v70 = *(v13 + 8);
  *(v13 + 8) = v69;
  if (v70 && atomic_fetch_add(v70, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v70);
    WTF::fastFree(v70, v68);
  }

  v71 = a1 + 134;
  v72 = *v71;
  if (!*v71)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v71, 0);
    v72 = *v71;
  }

  v73 = *(v72 - 8);
  v74 = v73 & v51;
  v75 = (v72 + 16 * (v73 & v51));
  v76 = *v75;
  if (*v75)
  {
    v77 = 0;
    v78 = 1;
    while (v76 != a2)
    {
      if (v76 == -1)
      {
        v77 = v75;
      }

      v74 = (v74 + v78) & v73;
      v75 = (v72 + 16 * v74);
      v76 = *v75;
      ++v78;
      if (!*v75)
      {
        if (v77)
        {
          *v77 = 0;
          v77[1] = 0;
          --*(*v71 - 16);
          v75 = v77;
        }

        goto LABEL_94;
      }
    }

    goto LABEL_105;
  }

LABEL_94:
  *v75 = a2;
  v79 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
  }

  v80 = v75[1];
  v75[1] = v79;
  if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v80, v68);
  }

  v81 = *v71;
  if (*v71)
  {
    v82 = *(v81 - 12) + 1;
  }

  else
  {
    v82 = 1;
  }

  *(v81 - 12) = v82;
  v83 = (*(v81 - 16) + v82);
  v84 = *(v81 - 4);
  if (v84 <= 0x400)
  {
    if (3 * v84 > 4 * v83)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (v84 <= 2 * v83)
  {
LABEL_104:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v71, v75);
  }

LABEL_105:
  if (v62)
  {
  }
}

void sub_19D93EE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkSessionCocoa::loadImageForDecoding(WebKit::NetworkSession *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  memset(v35, 0, 44);
  WebCore::ResourceRequest::ResourceRequest(v36);
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46[0] = 0;
  v47 = 0;
  v50 = 0;
  v52 = 0;
  v48 = 0u;
  v49 = 0;
  v53 = 16777472;
  v54 = 0;
  v55 = 0;
  WebCore::ResourceRequestBase::RequestData::operator=(v36, a2);
  v11 = *(a2 + 152);
  *(a2 + 152) = 0;
  v12 = v37;
  v37 = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *(a2 + 160);
  *(a2 + 160) = 0;
  v14 = v38;
  v38 = v13;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = *(a2 + 168);
  *(a2 + 168) = 0;
  v16 = v39;
  v39 = v15;
  if (v16)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v16);
  }

  v40 = *(a2 + 176);
  v41 = *(a2 + 184);
  v17 = *(a2 + 192);
  *(a2 + 192) = 0;
  v18 = v42;
  v42 = v17;
  if (v18)
  {
  }

  v19 = *(a1 + 4);
  atomic_fetch_add((v19 + 144), 1u);
  v20 = WTF::fastMalloc(0x80);
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  *v20 = &unk_1F10ED4F8;
  *(v20 + 24) = 0;
  *(v20 + 32) = v19;
  v21 = WebCore::ResourceRequestBase::url(v36);
  v22 = *v21;
  if (*v21)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(v20 + 40) = v22;
  v23 = *(v21 + 24);
  *(v20 + 48) = *(v21 + 8);
  *(v20 + 64) = v23;
  *(v20 + 80) = *(a1 + 3);
  *(v20 + 88) = a3;
  *(v20 + 96) = a4;
  v24 = WTF::fastMalloc(0x318);
  v25 = WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(v24, a1, v20, v35);
  v26 = *a5;
  *a5 = 0;
  *(v20 + 104) = v25;
  *(v20 + 112) = v26;
  *(v20 + 120) = 0;
  (*(*v25 + 24))(v25);
  v28 = *(v20 + 24);
  *(v20 + 24) = v20;
  if (v28)
  {
    if (v28[4] == 1)
    {
      (*(*v28 + 24))(v28);
    }

    else
    {
      --v28[4];
    }
  }

  if (v52 == 1)
  {
    v34 = v51;
    v51 = 0;
    if (v34)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v27);
  if (v47 == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v46, v29);
  }

  v30 = v42;
  v42 = 0;
  if (v30)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v36);
  v32 = *&v35[2];
  *&v35[2] = 0;
  if (v32)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v32, v31);
  }

  result = *(&v35[1] + 1);
  *(&v35[1] + 1) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v31);
  }

  return result;
}