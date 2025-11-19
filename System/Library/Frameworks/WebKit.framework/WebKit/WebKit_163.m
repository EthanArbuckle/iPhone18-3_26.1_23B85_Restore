void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111F3D0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F3D0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "NetworkProcess is taking too much time to process a notification event", v5, 2u);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::setPushesAndNotificationsEnabledForOrigin(WebCore::SecurityOriginData const&,BOOL)::$_0,void,WebKit::WebsiteDataStore &>::call(uint64_t result, WebKit::WebsiteDataStore *this)
{
  if (*(this + 3) >= -1)
  {
    v3 = result;
    v4 = WebKit::WebsiteDataStore::networkProcess(this, this);
    atomic_fetch_add((v4 + 16), 1u);
    v5 = *(this + 3);
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F111F4F0;
    v20 = v5;
    v19[0] = v7;
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 699;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v23 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v20);
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, v6);
    IPC::Encoder::operator<<<BOOL &>(v10, v19);
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F1120530;
    v11[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v12 = v11;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v21[0] = v12;
      v21[1] = IdentifierInternal;
      v22 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v23, 0, v21, 1);
      if (v22 == 1)
      {
        v15 = v21[0];
        v21[0] = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      v16 = v23;
      v23 = 0;
      if (v16)
      {
        IPC::Encoder::~Encoder(v16, v14);
        bmalloc::api::tzoneFree(v17, v18);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::removePushSubscriptionsForOrigins(WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void,WebKit::WebsiteDataStore &>::call(uint64_t result, WebKit::WebsiteDataStore *this)
{
  if (*(this + 3) >= -1)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 12);
    if (v3)
    {
      v5 = 32 * v3;
      for (i = *v2; ; i = (i + 32))
      {
        v7 = WebKit::WebsiteDataStore::networkProcess(this, this);
        atomic_fetch_add((v7 + 16), 1u);
        v8 = *(this + 3);
        WebCore::SecurityOriginData::toString(&v22, i);
        v9 = WTF::fastMalloc(0x10);
        v10 = v22;
        v22 = 0;
        *v9 = &unk_1F111F540;
        v9[1] = v10;
        v12 = IPC::Encoder::operator new(0x238, v11);
        *v12 = 651;
        *(v12 + 68) = 0;
        *(v12 + 70) = 0;
        *(v12 + 69) = 0;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = 0;
        IPC::Encoder::encodeHeader(v12);
        v25 = v12;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v8);
        IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v12, i);
        v13 = WTF::fastMalloc(0x10);
        *v13 = &unk_1F1120558;
        v13[1] = v9;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          break;
        }

        v14 = v13;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v23[0] = v14;
        v23[1] = IdentifierInternal;
        v24 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v25, 0, v23, 1);
        if (v24 == 1)
        {
          v17 = v23[0];
          v23[0] = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        v18 = v25;
        v25 = 0;
        if (v18)
        {
          IPC::Encoder::~Encoder(v18, v16);
          bmalloc::api::tzoneFree(v20, v21);
        }

        v19 = v22;
        v22 = 0;
        if (v19)
        {
          if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v16);
          }
        }

        result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
        v5 -= 32;
        if (!v5)
        {
          return result;
        }
      }

      result = 141;
      __break(0xC471u);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKitL33removePushSubscriptionsForOriginsERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEENK3__0clERNS2_16WebsiteDataStoreEEUlOT_E_vJjEED1Ev(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111F540;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKitL33removePushSubscriptionsForOriginsERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEENK3__0clERNS2_16WebsiteDataStoreEEUlOT_E_vJjEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F540;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

unint64_t std::__introsort<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v78 = *v9;
                v76 = v9[1];
                v21 = *(v76 + 248);
                v23 = *(*v9 + 248);
                if (v21 == v23)
                {
                  goto LABEL_343;
                }

                if (v21 < v23)
                {
                  goto LABEL_233;
                }

LABEL_344:
                v164 = *(a2 - 1);
                v165 = *(v164 + 248);
                if (v165 == v21)
                {
                  if (*(v164 + 16) >= *(v76 + 16))
                  {
                    return result;
                  }
                }

                else if (v165 >= v21)
                {
                  return result;
                }

                v7[1] = v164;
                *(a2 - 1) = v76;
                v172 = *v7;
                v166 = v7[1];
                v168 = *(v166 + 248);
                break;
              case 4:

                return std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
              case 5:
                result = std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
                v94 = *(a2 - 1);
                v95 = *(v94 + 248);
                v96 = v9[3];
                v97 = *(v96 + 248);
                if (v95 == v97)
                {
                  if (*(v94 + 16) >= *(v96 + 16))
                  {
                    return result;
                  }
                }

                else if (v95 >= v97)
                {
                  return result;
                }

                v9[3] = v94;
                *(a2 - 1) = v96;
                v167 = v9[2];
                v166 = v9[3];
                v168 = *(v166 + 248);
                v169 = *(v167 + 248);
                if (v168 == v169)
                {
                  if (*(v166 + 16) >= *(v167 + 16))
                  {
                    return result;
                  }
                }

                else if (v168 >= v169)
                {
                  return result;
                }

                v9[2] = v166;
                v9[3] = v167;
                v173 = v9[1];
                v174 = *(v173 + 248);
                if (v168 == v174)
                {
                  if (*(v166 + 16) >= *(v173 + 16))
                  {
                    return result;
                  }
                }

                else if (v168 >= v174)
                {
                  return result;
                }

                v9[1] = v166;
                v9[2] = v173;
                v172 = *v9;
                break;
              default:
                goto LABEL_10;
            }

            v175 = *(v172 + 248);
            if (v168 == v175)
            {
              if (*(v166 + 16) >= *(v172 + 16))
              {
                return result;
              }
            }

            else if (v168 >= v175)
            {
              return result;
            }

            *v7 = v166;
            v7[1] = v172;
            return result;
          }

          if (v10 < 2)
          {
            return result;
          }

          if (v10 == 2)
          {
            v91 = *(a2 - 1);
            v92 = *(v91 + 248);
            v78 = *v9;
            v93 = *(*v9 + 248);
            if (v92 == v93)
            {
              if (*(v91 + 16) >= v78[2])
              {
                return result;
              }
            }

            else if (v92 >= v93)
            {
              return result;
            }

            *v9 = v91;
            goto LABEL_365;
          }

LABEL_10:
          if (v10 <= 23)
          {
            v98 = v9 + 1;
            v99 = v9 == a2 || v98 == a2;
            v100 = v99;
            if ((a4 & 1) == 0)
            {
              if (v100)
              {
                return result;
              }

              v156 = 0;
              v76 = -8;
              v157 = 8;
              for (i = v9; ; ++i)
              {
                v159 = *(v9 + v156);
                v156 = v157;
                v160 = *v98;
                v23 = *(*v98 + 248);
                v161 = *(v159 + 248);
                if (v23 != v161)
                {
                  break;
                }

                if (*(v160 + 16) < *(v159 + 16))
                {
                  goto LABEL_332;
                }

LABEL_340:
                v157 = v156 + 8;
                v98 = (v9 + v156 + 8);
                v76 -= 8;
                if (v98 == a2)
                {
                  return result;
                }
              }

              if (v23 >= v161)
              {
                goto LABEL_340;
              }

LABEL_332:
              *v98 = v159;
              v162 = v76;
              v78 = i;
              while (1)
              {
                v163 = *(v78 - 1);
                v21 = *(v163 + 248);
                if (v23 == v21)
                {
                  if (*(v160 + 16) >= *(v163 + 16))
                  {
LABEL_339:
                    *v78 = v160;
                    goto LABEL_340;
                  }
                }

                else if (v23 >= v21)
                {
                  goto LABEL_339;
                }

                *v78-- = v163;
                v162 += 8;
                if (!v162)
                {
                  goto LABEL_342;
                }
              }
            }

            if (v100)
            {
              return result;
            }

            v101 = 0;
            v102 = v9;
LABEL_254:
            v103 = v102;
            v102 = v98;
            v105 = *v103;
            v104 = v103[1];
            v106 = *(v104 + 248);
            v107 = *(*v103 + 248);
            if (v106 == v107)
            {
              if (*(v104 + 16) >= *(v105 + 16))
              {
                goto LABEL_268;
              }
            }

            else if (v106 >= v107)
            {
              goto LABEL_268;
            }

            v103[1] = v105;
            v108 = v9;
            if (v103 == v9)
            {
              goto LABEL_267;
            }

            v109 = v101;
            while (1)
            {
              v110 = *(v9 + v109 - 8);
              v111 = *(v110 + 248);
              if (v106 == v111)
              {
                if (*(v104 + 16) >= *(v110 + 16))
                {
                  v108 = v103;
LABEL_267:
                  *v108 = v104;
LABEL_268:
                  v98 = v102 + 1;
                  v101 += 8;
                  if (v102 + 1 == a2)
                  {
                    return result;
                  }

                  goto LABEL_254;
                }
              }

              else if (v106 >= v111)
              {
                v108 = (v9 + v109);
                goto LABEL_267;
              }

              --v103;
              *(v9 + v109) = v110;
              v109 -= 8;
              if (!v109)
              {
                v108 = v9;
                goto LABEL_267;
              }
            }
          }

          if (!a3)
          {
            if (v9 == a2)
            {
              return result;
            }

            v112 = (v10 - 2) >> 1;
            v113 = v112;
            while (1)
            {
              v114 = v113;
              if (v112 < v113)
              {
                goto LABEL_284;
              }

              v115 = (2 * v113) | 1;
              v116 = &v9[v115];
              if (2 * v114 + 2 < v10)
              {
                v117 = v116[1];
                v118 = *(*v116 + 248);
                v119 = *(v117 + 248);
                if (v118 != v119)
                {
                  if (v118 >= v119)
                  {
                    goto LABEL_277;
                  }

LABEL_276:
                  ++v116;
                  v115 = 2 * v114 + 2;
                  goto LABEL_277;
                }

                if (*(*v116 + 16) < *(v117 + 16))
                {
                  goto LABEL_276;
                }
              }

LABEL_277:
              v120 = *v116;
              v121 = *(*v116 + 248);
              v122 = v9[v114];
              v123 = *(v122 + 248);
              if (v121 == v123)
              {
                if (*(v120 + 16) >= *(v122 + 16))
                {
LABEL_281:
                  v9[v114] = v120;
                  if (v112 < v115)
                  {
LABEL_282:
                    v124 = v116;
LABEL_283:
                    *v124 = v122;
                    goto LABEL_284;
                  }

                  while (2)
                  {
                    v125 = 2 * v115;
                    v115 = (2 * v115) | 1;
                    v124 = &v9[v115];
                    v126 = v125 + 2;
                    if (v126 < v10)
                    {
                      v127 = v124[1];
                      result = *v124;
                      v128 = *(*v124 + 248);
                      v129 = *(v127 + 248);
                      if (v128 == v129)
                      {
                        result = *(result + 16);
                        if (result < *(v127 + 16))
                        {
LABEL_289:
                          ++v124;
                          v115 = v126;
                        }
                      }

                      else if (v128 < v129)
                      {
                        goto LABEL_289;
                      }
                    }

                    v130 = *v124;
                    v131 = *(*v124 + 248);
                    if (v131 == v123)
                    {
                      if (*(v130 + 16) < *(v122 + 16))
                      {
                        goto LABEL_282;
                      }
                    }

                    else if (v131 < v123)
                    {
                      goto LABEL_282;
                    }

                    *v116 = v130;
                    v116 = v124;
                    if (v112 < v115)
                    {
                      goto LABEL_283;
                    }

                    continue;
                  }
                }
              }

              else if (v121 >= v123)
              {
                goto LABEL_281;
              }

LABEL_284:
              v113 = v114 - 1;
              if (!v114)
              {
                while (1)
                {
                  v132 = 0;
                  v133 = *v9;
                  v134 = v9;
                  do
                  {
                    v135 = v134;
                    v136 = &v134[v132];
                    v134 = v136 + 1;
                    v137 = 2 * v132;
                    v132 = (2 * v132) | 1;
                    v138 = v137 + 2;
                    if (v138 >= v10)
                    {
                      goto LABEL_305;
                    }

                    v141 = v136[2];
                    v139 = v136 + 2;
                    v140 = v141;
                    v142 = *(v139 - 1);
                    v143 = *(v142 + 248);
                    v144 = *(v141 + 248);
                    if (v143 != v144)
                    {
                      if (v143 >= v144)
                      {
                        goto LABEL_305;
                      }

LABEL_304:
                      v134 = v139;
                      v132 = v138;
                      goto LABEL_305;
                    }

                    if (*(v142 + 16) < *(v140 + 16))
                    {
                      goto LABEL_304;
                    }

LABEL_305:
                    *v135 = *v134;
                  }

                  while (v132 <= ((v10 - 2) >> 1));
                  if (v134 == --a2)
                  {
                    goto LABEL_322;
                  }

                  *v134 = *a2;
                  *a2 = v133;
                  v145 = (v134 - v9 + 8) >> 3;
                  v146 = v145 - 2;
                  if (v145 >= 2)
                  {
                    v147 = v146 >> 1;
                    v148 = &v9[v146 >> 1];
                    v149 = *v148;
                    v150 = *(*v148 + 248);
                    v133 = *v134;
                    v151 = *(*v134 + 248);
                    if (v150 == v151)
                    {
                      if (*(v149 + 16) < *(v133 + 16))
                      {
                        goto LABEL_315;
                      }
                    }

                    else
                    {
                      if (v150 >= v151)
                      {
                        goto LABEL_323;
                      }

LABEL_315:
                      *v134 = v149;
                      if (v146 >= 2)
                      {
                        do
                        {
                          v152 = v147 - 1;
                          v147 = (v147 - 1) >> 1;
                          v134 = &v9[v147];
                          v153 = *v134;
                          v154 = *(*v134 + 248);
                          if (v154 == v151)
                          {
                            if (*(v153 + 16) >= *(v133 + 16))
                            {
                              goto LABEL_316;
                            }
                          }

                          else if (v154 >= v151)
                          {
                            goto LABEL_316;
                          }

                          *v148 = v153;
                          v148 = &v9[v147];
                        }

                        while (v152 > 1);
                      }

                      else
                      {
LABEL_316:
                        v134 = v148;
                      }

LABEL_322:
                      *v134 = v133;
                    }
                  }

LABEL_323:
                  if (v10-- <= 2)
                  {
                    return result;
                  }
                }
              }
            }
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          v13 = v12;
          if (v10 >= 0x81)
          {
            v14 = *v12;
            v15 = *(*v12 + 248);
            v16 = *v9;
            v17 = *(*v9 + 248);
            if (v15 == v17)
            {
              if (*(v14 + 16) < *(v16 + 16))
              {
LABEL_15:
                v18 = *v8;
                v19 = *(*v8 + 248);
                if (v19 == v15)
                {
                  if (*(v18 + 16) < *(v14 + 16))
                  {
                    goto LABEL_17;
                  }
                }

                else if (v19 < v15)
                {
LABEL_17:
                  *v9 = v18;
LABEL_49:
                  *v8 = v16;
                  goto LABEL_55;
                }

                *v9 = v14;
                *v12 = v16;
                v29 = *v8;
                v30 = *(*v8 + 248);
                if (v30 == v17)
                {
                  if (*(v29 + 16) >= *(v16 + 16))
                  {
                    goto LABEL_55;
                  }
                }

                else if (v30 >= v17)
                {
                  goto LABEL_55;
                }

                *v12 = v29;
                goto LABEL_49;
              }
            }

            else if (v15 < v17)
            {
              goto LABEL_15;
            }

            v26 = *v8;
            v27 = *(*v8 + 248);
            if (v27 == v15)
            {
              if (*(v26 + 16) >= *(v14 + 16))
              {
                goto LABEL_55;
              }
            }

            else if (v27 >= v15)
            {
              goto LABEL_55;
            }

            *v12 = v26;
            *v8 = v14;
            v32 = *v12;
            v33 = *(*v12 + 248);
            v34 = *v9;
            v35 = *(*v9 + 248);
            if (v33 == v35)
            {
              if (*(v32 + 16) >= *(v34 + 16))
              {
                goto LABEL_55;
              }
            }

            else if (v33 >= v35)
            {
LABEL_55:
              v38 = v11 - 1;
              v39 = v9[v11 - 1];
              v40 = *(v39 + 248);
              v41 = v9[1];
              v42 = *(v41 + 248);
              if (v40 == v42)
              {
                if (*(v39 + 16) < *(v41 + 16))
                {
LABEL_57:
                  v43 = *(a2 - 2);
                  v44 = *(v43 + 248);
                  if (v44 == v40)
                  {
                    if (*(v43 + 16) < *(v39 + 16))
                    {
                      goto LABEL_59;
                    }
                  }

                  else if (v44 < v40)
                  {
LABEL_59:
                    v9[1] = v43;
LABEL_76:
                    *(a2 - 2) = v41;
                    goto LABEL_79;
                  }

                  v9[1] = v39;
                  v9[v38] = v41;
                  v47 = *(a2 - 2);
                  v48 = *(v47 + 248);
                  if (v48 == v42)
                  {
                    if (*(v47 + 16) >= *(v41 + 16))
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v48 >= v42)
                  {
                    goto LABEL_79;
                  }

                  v9[v38] = v47;
                  goto LABEL_76;
                }
              }

              else if (v40 < v42)
              {
                goto LABEL_57;
              }

              v45 = *(a2 - 2);
              v46 = *(v45 + 248);
              if (v46 == v40)
              {
                if (*(v45 + 16) >= *(v39 + 16))
                {
                  goto LABEL_79;
                }
              }

              else if (v46 >= v40)
              {
                goto LABEL_79;
              }

              v9[v38] = v45;
              *(a2 - 2) = v39;
              v49 = v9[v38];
              v50 = *(v49 + 248);
              v51 = v9[1];
              v52 = *(v51 + 248);
              if (v50 == v52)
              {
                if (*(v49 + 16) >= *(v51 + 16))
                {
                  goto LABEL_79;
                }
              }

              else if (v50 >= v52)
              {
LABEL_79:
                v55 = v12[1];
                v53 = v12 + 1;
                v54 = v55;
                v56 = *(v55 + 248);
                v57 = v9[2];
                v58 = *(v57 + 248);
                if (v56 == v58)
                {
                  if (*(v54 + 16) < *(v57 + 16))
                  {
LABEL_81:
                    v59 = *(a2 - 3);
                    v60 = *(v59 + 248);
                    if (v60 == v56)
                    {
                      if (*(v59 + 16) < *(v54 + 16))
                      {
                        goto LABEL_83;
                      }
                    }

                    else if (v60 < v56)
                    {
LABEL_83:
                      v9[2] = v59;
LABEL_98:
                      *(a2 - 3) = v57;
                      goto LABEL_101;
                    }

                    v9[2] = v54;
                    *v53 = v57;
                    v63 = *(a2 - 3);
                    v64 = *(v63 + 248);
                    if (v64 == v58)
                    {
                      if (*(v63 + 16) >= *(v57 + 16))
                      {
                        goto LABEL_101;
                      }
                    }

                    else if (v64 >= v58)
                    {
                      goto LABEL_101;
                    }

                    *v53 = v63;
                    goto LABEL_98;
                  }
                }

                else if (v56 < v58)
                {
                  goto LABEL_81;
                }

                v61 = *(a2 - 3);
                v62 = *(v61 + 248);
                if (v62 == v56)
                {
                  if (*(v61 + 16) >= *(v54 + 16))
                  {
                    goto LABEL_101;
                  }
                }

                else if (v62 >= v56)
                {
                  goto LABEL_101;
                }

                *v53 = v61;
                *(a2 - 3) = v54;
                v65 = *v53;
                v66 = *(*v53 + 248);
                v67 = v9[2];
                v68 = *(v67 + 248);
                if (v66 == v68)
                {
                  if (*(v65 + 16) >= *(v67 + 16))
                  {
                    goto LABEL_101;
                  }
                }

                else if (v66 >= v68)
                {
LABEL_101:
                  v69 = *v13;
                  v21 = *(*v13 + 248);
                  v70 = v9[v38];
                  v23 = *(v70 + 248);
                  if (v21 == v23)
                  {
                    if (*(v69 + 16) < *(v70 + 16))
                    {
LABEL_103:
                      v71 = *v53;
                      v72 = *(*v53 + 248);
                      if (v72 == v21)
                      {
                        if (*(v71 + 16) < *(v69 + 16))
                        {
                          goto LABEL_105;
                        }
                      }

                      else if (v72 < v21)
                      {
LABEL_105:
                        v9[v38] = v71;
LABEL_118:
                        *v53 = v70;
                        goto LABEL_119;
                      }

                      v9[v38] = v69;
                      *v13 = v70;
                      if (v72 == v23)
                      {
                        if (*(v71 + 16) < *(v70 + 16))
                        {
                          goto LABEL_113;
                        }
                      }

                      else if (v72 < v23)
                      {
LABEL_113:
                        *v13 = v71;
                        v69 = v71;
                        goto LABEL_118;
                      }

                      v69 = v70;
                      goto LABEL_119;
                    }
                  }

                  else if (v21 < v23)
                  {
                    goto LABEL_103;
                  }

                  v73 = *v53;
                  v74 = *(*v53 + 248);
                  if (v74 == v21)
                  {
                    if (*(v73 + 16) >= *(v69 + 16))
                    {
LABEL_119:
                      v75 = *v9;
                      *v9 = v69;
                      *v13 = v75;
                      goto LABEL_120;
                    }
                  }

                  else if (v74 >= v21)
                  {
                    goto LABEL_119;
                  }

                  *v13 = v73;
                  *v53 = v69;
                  if (v74 == v23)
                  {
                    if (*(v73 + 16) < *(v70 + 16))
                    {
                      goto LABEL_117;
                    }
                  }

                  else if (v74 < v23)
                  {
LABEL_117:
                    v9[v38] = v73;
                    v53 = v13;
                    v69 = v70;
                    goto LABEL_118;
                  }

                  v69 = v73;
                  goto LABEL_119;
                }

                v9[2] = v65;
                *v53 = v67;
                goto LABEL_101;
              }

              v9[1] = v49;
              v9[v38] = v51;
              goto LABEL_79;
            }

            *v9 = v32;
            *v12 = v34;
            goto LABEL_55;
          }

          v20 = *v9;
          v21 = *(*v9 + 248);
          v22 = *v13;
          v23 = *(*v13 + 248);
          if (v21 == v23)
          {
            if (*(v20 + 16) < *(v22 + 16))
            {
LABEL_20:
              v24 = *v8;
              v25 = *(*v8 + 248);
              if (v25 == v21)
              {
                if (*(v24 + 16) < *(v20 + 16))
                {
                  goto LABEL_22;
                }
              }

              else if (v25 < v21)
              {
LABEL_22:
                *v13 = v24;
LABEL_52:
                *v8 = v22;
                goto LABEL_120;
              }

              *v13 = v20;
              *v9 = v22;
              v31 = *v8;
              v21 = *(*v8 + 248);
              if (v21 == v23)
              {
                if (*(v31 + 16) >= *(v22 + 16))
                {
                  goto LABEL_120;
                }
              }

              else if (v21 >= v23)
              {
                goto LABEL_120;
              }

              *v9 = v31;
              goto LABEL_52;
            }
          }

          else if (v21 < v23)
          {
            goto LABEL_20;
          }

          v28 = *v8;
          v23 = *(*v8 + 248);
          if (v23 == v21)
          {
            if (*(v28 + 16) >= *(v20 + 16))
            {
              goto LABEL_120;
            }
          }

          else if (v23 >= v21)
          {
            goto LABEL_120;
          }

          *v9 = v28;
          *v8 = v20;
          v36 = *v9;
          v23 = *(*v9 + 248);
          v37 = *v13;
          v21 = *(*v13 + 248);
          if (v23 == v21)
          {
            if (*(v36 + 16) >= *(v37 + 16))
            {
              goto LABEL_120;
            }

            goto LABEL_73;
          }

          if (v23 < v21)
          {
LABEL_73:
            *v13 = v36;
            *v9 = v37;
          }

LABEL_120:
          --a3;
          v76 = *v9;
          if ((a4 & 1) == 0)
          {
            v77 = *(v9 - 1);
            v21 = *(v77 + 248);
            v23 = *(v76 + 248);
            if (v21 == v23)
            {
              if (*(v77 + 16) < *(v76 + 16))
              {
                break;
              }
            }

            else if (v21 < v23)
            {
              break;
            }

            v78 = *v8;
            v21 = *(*v8 + 248);
            if (v23 == v21)
            {
              v78 = v78[2];
              if (*(v76 + 16) < v78)
              {
                goto LABEL_179;
              }
            }

            else if (v23 < v21)
            {
LABEL_179:
              for (++v9; ; ++v9)
              {
                if (v9 == a2)
                {
                  goto LABEL_342;
                }

                v78 = *v9;
                v21 = *(*v9 + 248);
                if (v23 == v21)
                {
                  v78 = v78[2];
                  if (*(v76 + 16) < v78)
                  {
                    goto LABEL_198;
                  }
                }

                else if (v23 < v21)
                {
                  goto LABEL_198;
                }
              }
            }

            for (++v9; v9 < a2; ++v9)
            {
              v21 = *(*v9 + 248);
              if (v23 == v21)
              {
                if (*(v76 + 16) < *(*v9 + 16))
                {
                  break;
                }
              }

              else if (v23 < v21)
              {
                break;
              }
            }

LABEL_198:
            v78 = a2;
            if (v9 < a2)
            {
              v78 = a2 - 1;
              if (a2 == v7)
              {
                goto LABEL_342;
              }

              while (1)
              {
                v21 = *(*v78 + 248);
                if (v23 == v21)
                {
                  if (*(v76 + 16) >= *(*v78 + 16))
                  {
                    break;
                  }
                }

                else if (v23 >= v21)
                {
                  break;
                }

                v99 = v78-- == v7;
                if (v99)
                {
                  goto LABEL_342;
                }
              }
            }

            if (v9 >= v78)
            {
LABEL_226:
              v88 = v9 - 1;
              if (v9 - 1 != v7)
              {
                *v7 = *v88;
              }

              a4 = 0;
              *v88 = v76;
              continue;
            }

            v86 = *v9;
            v87 = *v78;
LABEL_209:
            *v9++ = v87;
            *v78 = v86;
            while (1)
            {
              if (v9 == a2)
              {
                goto LABEL_342;
              }

              v86 = *v9;
              v21 = *(*v9 + 248);
              if (v23 == v21)
              {
                if (*(v76 + 16) < *(v86 + 16))
                {
LABEL_216:
                  if (v78 == v7)
                  {
                    goto LABEL_342;
                  }

                  --v78;
                  while (1)
                  {
                    v87 = *v78;
                    v21 = *(*v78 + 248);
                    if (v23 == v21)
                    {
                      if (*(v76 + 16) >= *(v87 + 16))
                      {
LABEL_225:
                        if (v9 >= v78)
                        {
                          goto LABEL_226;
                        }

                        goto LABEL_209;
                      }
                    }

                    else if (v23 >= v21)
                    {
                      goto LABEL_225;
                    }

                    v99 = v78-- == v7;
                    if (v99)
                    {
                      goto LABEL_342;
                    }
                  }
                }
              }

              else if (v23 < v21)
              {
                goto LABEL_216;
              }

              ++v9;
            }
          }

          break;
        }

        v78 = v9 + 1;
        if (v9 + 1 == a2)
        {
          goto LABEL_342;
        }

        v23 = *(v76 + 248);
        v79 = 1;
        while (1)
        {
          v80 = v9[v79];
          v21 = *(v80 + 248);
          if (v21 != v23)
          {
            if (v21 >= v23)
            {
              break;
            }

            goto LABEL_129;
          }

          if (*(v80 + 16) >= *(v76 + 16))
          {
            break;
          }

LABEL_129:
          v78 = &v9[++v79];
          if (&v9[v79] == a2)
          {
            goto LABEL_342;
          }
        }

        v78 = &v9[v79];
        if (v79 != 1)
        {
          j = a2 - 1;
          if (a2 != v9)
          {
            do
            {
              v21 = *(*j + 248);
              if (v21 == v23)
              {
                if (*(*j + 16) < *(v76 + 16))
                {
                  goto LABEL_149;
                }
              }

              else if (v21 < v23)
              {
                goto LABEL_149;
              }

              v99 = j-- == v9;
            }

            while (!v99);
          }

LABEL_342:
          __break(1u);
LABEL_343:
          if (*(v76 + 16) >= v78[2])
          {
            goto LABEL_344;
          }

LABEL_233:
          v89 = *(a2 - 1);
          v90 = *(v89 + 248);
          if (v90 == v21)
          {
            if (*(v89 + 16) >= *(v76 + 16))
            {
              goto LABEL_354;
            }

LABEL_235:
            *v7 = v89;
          }

          else
          {
            if (v90 < v21)
            {
              goto LABEL_235;
            }

LABEL_354:
            *v7 = v76;
            v7[1] = v78;
            v170 = *(a2 - 1);
            v171 = *(v170 + 248);
            if (v171 == v23)
            {
              if (*(v170 + 16) >= v78[2])
              {
                return result;
              }
            }

            else if (v171 >= v23)
            {
              return result;
            }

            v7[1] = v170;
          }

LABEL_365:
          *(a2 - 1) = v78;
          return result;
        }

        j = a2;
        if (v78 < a2)
        {
          for (j = a2 - 1; ; --j)
          {
            v21 = *(*j + 248);
            if (v21 == v23)
            {
              if (v78 >= j || *(*j + 16) < *(v76 + 16))
              {
                break;
              }
            }

            else if (v78 >= j || v21 < v23)
            {
              break;
            }
          }
        }

LABEL_149:
        if (v78 >= j)
        {
          v9 = v78;
          goto LABEL_170;
        }

        v82 = *j;
        v9 = v78;
        v83 = j;
        while (2)
        {
          *v9++ = v82;
          *v83 = v80;
          while (2)
          {
            if (v9 == a2)
            {
              goto LABEL_342;
            }

            v80 = *v9;
            v21 = *(*v9 + 248);
            if (v21 != v23)
            {
              if (v21 >= v23)
              {
                break;
              }

              goto LABEL_157;
            }

            if (*(v80 + 16) < *(v76 + 16))
            {
LABEL_157:
              ++v9;
              continue;
            }

            break;
          }

          if (v83 == v7)
          {
            goto LABEL_342;
          }

          --v83;
          while (2)
          {
            v82 = *v83;
            v21 = *(*v83 + 248);
            if (v21 != v23)
            {
              if (v21 < v23)
              {
                break;
              }

              goto LABEL_164;
            }

            if (*(v82 + 16) >= *(v76 + 16))
            {
LABEL_164:
              v99 = v83-- == v7;
              if (v99)
              {
                goto LABEL_342;
              }

              continue;
            }

            break;
          }

          if (v9 < v83)
          {
            continue;
          }

          break;
        }

LABEL_170:
        v84 = v9 - 1;
        if (v9 - 1 != v7)
        {
          *v7 = *v84;
        }

        *v84 = v76;
        if (v78 < j)
        {
LABEL_175:
          result = std::__introsort<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,false>(v7, v9 - 1, a3, a4 & 1);
          a4 = 0;
          continue;
        }

        break;
      }

      v85 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **>(v7, v9 - 1);
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **>(v9, a2);
      if (!result)
      {
        if (!v85)
        {
          goto LABEL_175;
        }

        continue;
      }

      break;
    }

    a2 = v9 - 1;
    if (!v85)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 248);
  v6 = *result;
  v7 = *(*result + 248);
  if (v5 == v7)
  {
    if (*(v4 + 16) < *(v6 + 16))
    {
LABEL_3:
      v8 = *a3;
      v9 = *(*a3 + 248);
      if (v9 == v5)
      {
        if (*(v8 + 16) < *(v4 + 16))
        {
          goto LABEL_5;
        }
      }

      else if (v9 < v5)
      {
LABEL_5:
        *result = v8;
LABEL_20:
        *a3 = v6;
        goto LABEL_21;
      }

      *result = v4;
      *a2 = v6;
      v4 = *a3;
      v11 = *(*a3 + 248);
      if (v11 == v7)
      {
        if (*(v4 + 16) >= *(v6 + 16))
        {
          goto LABEL_22;
        }
      }

      else if (v11 >= v7)
      {
        goto LABEL_22;
      }

      *a2 = v4;
      goto LABEL_20;
    }
  }

  else if (v5 < v7)
  {
    goto LABEL_3;
  }

  v6 = *a3;
  v10 = *(*a3 + 248);
  if (v10 == v5)
  {
    if (*(v6 + 16) >= *(v4 + 16))
    {
LABEL_21:
      v4 = v6;
      goto LABEL_22;
    }
  }

  else if (v10 >= v5)
  {
    goto LABEL_21;
  }

  *a2 = v6;
  *a3 = v4;
  v12 = *a2;
  v13 = *(*a2 + 248);
  v14 = *result;
  v15 = *(*result + 248);
  if (v13 == v15)
  {
    if (*(v12 + 16) >= *(v14 + 16))
    {
      goto LABEL_22;
    }
  }

  else if (v13 >= v15)
  {
    goto LABEL_22;
  }

  *result = v12;
  *a2 = v14;
  v4 = *a3;
LABEL_22:
  v16 = *a4;
  v17 = *(*a4 + 248);
  v18 = *(v4 + 248);
  if (v17 == v18)
  {
    if (*(v16 + 16) >= *(v4 + 16))
    {
      return result;
    }
  }

  else if (v17 >= v18)
  {
    return result;
  }

  *a3 = v16;
  *a4 = v4;
  v19 = *a3;
  v20 = *(*a3 + 248);
  v21 = *a2;
  v22 = *(*a2 + 248);
  if (v20 == v22)
  {
    if (*(v19 + 16) >= *(v21 + 16))
    {
      return result;
    }
  }

  else if (v20 >= v22)
  {
    return result;
  }

  *a2 = v19;
  *a3 = v21;
  v23 = *a2;
  v24 = *(*a2 + 248);
  v25 = *result;
  v26 = *(*result + 248);
  if (v24 != v26)
  {
    if (v24 >= v26)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (*(v23 + 16) < *(v25 + 16))
  {
LABEL_36:
    *result = v23;
    *a2 = v25;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_18;
      }

      std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
      v9 = *(a2 - 1);
      v10 = *(v9 + 248);
      v11 = a1[3];
      v12 = *(v11 + 248);
      if (v10 == v12)
      {
        if (*(v9 + 16) >= *(v11 + 16))
        {
          return 1;
        }
      }

      else if (v10 >= v12)
      {
        return 1;
      }

      a1[3] = v9;
      *(a2 - 1) = v11;
      v31 = a1[2];
      v30 = a1[3];
      v32 = *(v30 + 248);
      v33 = *(v31 + 248);
      if (v32 == v33)
      {
        if (*(v30 + 16) >= *(v31 + 16))
        {
          return 1;
        }
      }

      else if (v32 >= v33)
      {
        return 1;
      }

      a1[2] = v30;
      a1[3] = v31;
      v37 = a1[1];
      v38 = *(v37 + 248);
      if (v32 == v38)
      {
        if (*(v30 + 16) >= *(v37 + 16))
        {
          return 1;
        }
      }

      else if (v32 >= v38)
      {
        return 1;
      }

      a1[1] = v30;
      a1[2] = v37;
      v36 = *a1;
LABEL_85:
      v50 = *(v36 + 248);
      if (v32 == v50)
      {
        if (*(v30 + 16) >= *(v36 + 16))
        {
          return 1;
        }
      }

      else if (v32 >= v50)
      {
        return 1;
      }

      *a1 = v30;
      a1[1] = v36;
      return 1;
    }

    v7 = *a1;
    v13 = a1[1];
    v14 = *(v13 + 248);
    v15 = *(*a1 + 248);
    if (v14 == v15)
    {
      if (*(v13 + 16) < *(v7 + 16))
      {
LABEL_15:
        v16 = *(a2 - 1);
        v17 = *(v16 + 248);
        if (v17 == v14)
        {
          if (*(v16 + 16) < *(v13 + 16))
          {
            goto LABEL_17;
          }
        }

        else if (v17 < v14)
        {
LABEL_17:
          *a1 = v16;
          goto LABEL_34;
        }

        *a1 = v13;
        a1[1] = v7;
        v34 = *(a2 - 1);
        v35 = *(v34 + 248);
        if (v35 == v15)
        {
          if (*(v34 + 16) >= *(v7 + 16))
          {
            return 1;
          }
        }

        else if (v35 >= v15)
        {
          return 1;
        }

        a1[1] = v34;
LABEL_34:
        *(a2 - 1) = v7;
        return 1;
      }
    }

    else if (v14 < v15)
    {
      goto LABEL_15;
    }

    v26 = *(a2 - 1);
    v27 = *(v26 + 248);
    if (v27 == v14)
    {
      if (*(v26 + 16) >= *(v13 + 16))
      {
        return 1;
      }
    }

    else if (v27 >= v14)
    {
      return 1;
    }

    a1[1] = v26;
    *(a2 - 1) = v13;
    v36 = *a1;
    v30 = a1[1];
    v32 = *(v30 + 248);
    goto LABEL_85;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *(v5 + 248);
    v7 = *a1;
    v8 = *(*a1 + 248);
    if (v6 == v8)
    {
      if (*(v5 + 16) >= *(v7 + 16))
      {
        return 1;
      }
    }

    else if (v6 >= v8)
    {
      return 1;
    }

    *a1 = v5;
    goto LABEL_34;
  }

LABEL_18:
  v18 = (a1 + 2);
  v19 = *a1;
  v20 = a1 + 1;
  v21 = a1[1];
  v22 = *(v21 + 248);
  v23 = *(*a1 + 248);
  if (v22 == v23)
  {
    if (*(v21 + 16) < *(v19 + 16))
    {
LABEL_20:
      v24 = *v18;
      v25 = *(*v18 + 248);
      if (v25 == v22)
      {
        if (*(v24 + 16) < *(v21 + 16))
        {
          goto LABEL_22;
        }
      }

      else if (v25 < v22)
      {
LABEL_22:
        *a1 = v24;
LABEL_61:
        v20 = a1 + 2;
LABEL_64:
        *v20 = v19;
        goto LABEL_65;
      }

      *a1 = v21;
      a1[1] = v19;
      if (v25 == v23)
      {
        if (*(v24 + 16) >= *(v19 + 16))
        {
          goto LABEL_65;
        }
      }

      else if (v25 >= v23)
      {
        goto LABEL_65;
      }

      *v20 = v24;
      goto LABEL_61;
    }
  }

  else if (v22 < v23)
  {
    goto LABEL_20;
  }

  v28 = *v18;
  v29 = *(*v18 + 248);
  if (v29 == v22)
  {
    if (*(v28 + 16) >= *(v21 + 16))
    {
      goto LABEL_65;
    }
  }

  else if (v29 >= v22)
  {
    goto LABEL_65;
  }

  *v20 = v28;
  *v18 = v21;
  if (v29 == v23)
  {
    if (*(v28 + 16) >= *(v19 + 16))
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  if (v29 < v23)
  {
LABEL_63:
    *a1 = v28;
    goto LABEL_64;
  }

LABEL_65:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (2)
  {
    v42 = *v39;
    v43 = *(*v39 + 248);
    v44 = *v18;
    v45 = *(*v18 + 248);
    if (v43 == v45)
    {
      if (*(v42 + 16) >= *(v44 + 16))
      {
        goto LABEL_80;
      }
    }

    else if (v43 >= v45)
    {
      goto LABEL_80;
    }

    *v39 = v44;
    v46 = v40;
    while (1)
    {
      v47 = *(a1 + v46 + 8);
      v48 = *(v47 + 248);
      if (v43 != v48)
      {
        if (v43 >= v48)
        {
          goto LABEL_79;
        }

        goto LABEL_76;
      }

      if (*(v42 + 16) >= *(v47 + 16))
      {
        break;
      }

LABEL_76:
      v18 -= 8;
      *(a1 + v46 + 16) = v47;
      v46 -= 8;
      if (v46 == -16)
      {
        v18 = a1;
        goto LABEL_79;
      }
    }

    v18 = a1 + v46 + 16;
LABEL_79:
    *v18 = v42;
    if (++v41 != 8)
    {
LABEL_80:
      v18 = v39;
      v40 += 8;
      if (++v39 == a2)
      {
        return 1;
      }

      continue;
    }

    return v39 + 1 == a2;
  }
}

uint64_t WTF::RefCounted<WebKit::SecKeyProxyStore>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 8);
    *(v2 + 8) = 0;
    if (v3 && (CFRelease(v3), *v2 != 1))
    {
      result = 191;
      __break(0xC471u);
    }

    else
    {
      v4 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 - 8), a2);

      return WTF::fastFree(v4, v5);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111F568;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F568;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_0,void>::call(atomic_uint *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 4;
      atomic_fetch_add(result + 4, 1u);
      WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(result);

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InitializeNetworkProcess,WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2>(WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111F5B8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InitializeNetworkProcess,WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2>(WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111F5B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InitializeNetworkProcess,WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2>(WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(void)::$_2 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(atomic_uint *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 4;
      atomic_fetch_add(result + 4, 1u);
      WebKit::AuxiliaryProcessProxy::beginResponsivenessChecks(result);

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::NetworkProcessProxy(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111F5E0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::NetworkProcessProxy(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F5E0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::NetworkProcessProxy(void)::$_0,void>::call(atomic_uint *result, void *a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      atomic_fetch_add((v3 + 16), 1u);
      {
        *algn_1ED63B6A8 = 0u;
        *&qword_1ED63B6C8 = 0u;
        dword_1ED63B6B0 = 1;
        qword_1ED63B6B8 = 0;
        qword_1ED63B6C0 = 0;
        qword_1ED63B6C8 = 0;
        byte_1ED63B6D0 = 0;
        off_1ED63B6D8 = 0;
        *&dword_1ED63B6E0 = 0;
        WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
      }

      v4 = IPC::Encoder::operator new(0x238, a2);
      *v4 = 732;
      *(v4 + 68) = 0;
      *(v4 + 70) = 0;
      *(v4 + 69) = 0;
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 1) = 0;
      IPC::Encoder::encodeHeader(v4);
      v14 = v4;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, dword_1ED63B6E4);
      if (dword_1ED63B6E4)
      {
        v5 = off_1ED63B6D8;
        v6 = 32 * dword_1ED63B6E4;
        do
        {
          IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::encode(v4, v5);
          v5 += 4;
          v6 -= 32;
        }

        while (v6);
      }

      LOBYTE(v12) = 0;
      v13 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v3, &v14, 0, &v12, 1);
      if (v13 == 1)
      {
        v8 = v12;
        v12 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }

      v9 = v14;
      v14 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v7);
        bmalloc::api::tzoneFree(v10, v11);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>(WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111F608;
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

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>(WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111F608;
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

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>(WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3 || (v5 = *a3) == 0)
  {
    v9 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>(v9);
    return;
  }

  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  if (v6 <= &v7[-v5])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v21 = *(a3 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_46;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_46:
    *a3 = 0;
    *(a3 + 1) = 0;
    v22 = *(a3 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22, v5);
        v5 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_49;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_49:
    *a3 = 0;
    *(a3 + 1) = 0;
    v23 = *(a3 + 3);
    if (v23 && v6)
    {
      (*(*v23 + 16))(v23, v5);
    }

    goto LABEL_29;
  }

  *(a3 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_46;
  }

  v8 = *v7;
  if (v8 >= 2)
  {
    goto LABEL_49;
  }

  if (!v8)
  {
    v28[0] = 0;
    v29 = 0;
    v30 = 1;
    goto LABEL_14;
  }

  IPC::ArgumentCoder<IPC::ConnectionHandle,void>::decode(a3, v31);
  if ((v32 & 1) == 0)
  {
    v11 = *a3;
    v12 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    PartyWebsiteDataRemoval = *(a3 + 3);
    if (PartyWebsiteDataRemoval)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

LABEL_8:
  WTF::MachSendRight::MachSendRight();
  v29 = 1;
  v30 = 1;
  if (v32)
  {
    WTF::MachSendRight::~MachSendRight(v31);
  }

  while (1)
  {
LABEL_14:
    PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a3);
    if ((PartyWebsiteDataRemoval & 0x100) == 0)
    {
      v13 = 0;
      v24[0] = 0;
      goto LABEL_20;
    }

    if (v30)
    {
      break;
    }

    __break(1u);
LABEL_34:
    if (v12)
    {
      (*(*PartyWebsiteDataRemoval + 16))(PartyWebsiteDataRemoval, v11);
      if (v32)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    v28[0] = 0;
    v30 = 0;
    v15 = *a3;
    v16 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v17 = *(a3 + 3);
    if (v17)
    {
      if (v16)
      {
        (*(*v17 + 16))(v17, v15);
        if (v30)
        {
          continue;
        }
      }
    }

    v24[0] = 0;
    v27 = 0;
    goto LABEL_31;
  }

  v14 = PartyWebsiteDataRemoval;
  v24[0] = 0;
  v25 = 0;
  if (v29 == 1)
  {
    WTF::MachSendRight::MachSendRight();
    v25 = 1;
  }

  v26 = v14;
  v13 = 1;
LABEL_20:
  v27 = v13;
  if ((v30 & 1) != 0 && v29 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v28);
    v13 = v27;
  }

  if (v13)
  {
    goto LABEL_24;
  }

LABEL_31:
  v18 = *a3;
  v19 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v20 = *(a3 + 3);
  if (!v20 || !v19 || ((*(*v20 + 16))(v20, v18), (v27 & 1) == 0))
  {
    IPC::Connection::cancelReply<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>((a1 + 8));
    return;
  }

LABEL_24:
  std::apply[abi:sn200100]<WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0,std::tuple<std::optional<IPC::ConnectionHandle>,WebCore::HTTPCookieAcceptPolicy>>((a1 + 8), v24);
  if ((v27 & 1) != 0 && v25 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v24);
  }
}

void IPC::Connection::cancelReply<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0>(void *a1)
{
  v1[0] = 0;
  v2 = 0;
  v3 = 0;
  std::apply[abi:sn200100]<WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0,std::tuple<std::optional<IPC::ConnectionHandle>,WebCore::HTTPCookieAcceptPolicy>>(a1, v1);
  if (v2 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }
}

void std::apply[abi:sn200100]<WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebKit::WebProcessProxy &,WTF::CompletionHandler<void ()(WebKit::NetworkProcessConnectionInfo &&)> &&)::$_0,std::tuple<std::optional<IPC::ConnectionHandle>,WebCore::HTTPCookieAcceptPolicy>>(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = *(*a1 + 8);
    if (v3)
    {
      v5 = *(a2 + 8);
      atomic_fetch_add((v3 + 16), 1u);
      v6 = *(v3 + 56);
      ++*v6;
      WebKit::ResponsivenessTimer::stop(v6);
      WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(v6);
      if ((*(a2 + 4) & 1) == 0)
      {
        v12 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "NetworkProcessProxy::getNetworkProcessConnection: connection identifier is empty", buf, 2u);
        }

        *buf = 0;
        v19[0] = 0;
        v19[4] = 0;
        v21 = 0;
        v13 = a1[1];
        a1[1] = 0;
        (*(*v13 + 16))(v13, buf);
        (*(*v13 + 8))(v13);
        WTF::MachSendRight::~MachSendRight(buf);
        goto LABEL_20;
      }

      v7 = *(v3 + 88);
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
            goto LABEL_15;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_15:
        if (*(a2 + 4))
        {
          if ((*a2 - 1) < 0xFFFFFFFE)
          {
            WTF::MachSendRight::MachSendRight();
            v19[0] = v5;
            IPC::Connection::getAuditToken(v7, v16);
            v19[4] = 0;
            v21 = 0;
            if (v17 == 1)
            {
              *&v19[4] = v16[0];
              v20 = v16[1];
              v21 = v17;
            }

            goto LABEL_19;
          }

          v15 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *v19 = "auto WebKit::NetworkProcessProxy::getNetworkProcessConnection(WebProcessProxy &, CompletionHandler<void (NetworkProcessConnectionInfo &&)> &&)::(anonymous class)::operator()(auto &&, auto) [identifier:auto = std::optional<IPC::ConnectionHandle>, cookieAcceptPolicy:auto = WebCore::HTTPCookieAcceptPolicy]";
            _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Network/NetworkProcessProxy.cpp 355: Invalid message dispatched %{public}s", buf, 0xCu);
          }

          *(v7 + 94) = 1;
          if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
          {
            *buf = 0;
            v19[0] = 0;
            v19[4] = 0;
            v21 = 0;
LABEL_19:
            v14 = a1[1];
            a1[1] = 0;
            (*(*v14 + 16))(v14, buf);
            (*(*v14 + 8))(v14);
            WTF::MachSendRight::~MachSendRight(buf);
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
LABEL_20:
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
            return;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(0xC471u);
      }

      __break(1u);
LABEL_27:
      __break(0xC471u);
      return;
    }
  }

  v10 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "NetworkProcessProxy::getNetworkProcessConnection: NetworkProcessProxy deallocated during connection establishment", buf, 2u);
  }

  *buf = 0;
  v19[0] = 0;
  v19[4] = 0;
  v21 = 0;
  v11 = a1[1];
  a1[1] = 0;
  (*(*v11 + 16))(v11, buf);
  (*(*v11 + 8))(v11);
  WTF::MachSendRight::~MachSendRight(buf);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F630;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F630;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::DownloadProxyMap::operator new(WebKit::DownloadProxyMap *this, void *a2)
{
  if (this == 40 && WebKit::DownloadProxyMap::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::DownloadProxyMap::s_heapRef, a2);
  }

  else
  {
    return WebKit::DownloadProxyMap::operatorNewSlow(this);
  }
}

void *WTF::Detail::CallableWrapper<std::optional<WebCore::SecurityOriginData> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DataTaskWithRequest,WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0>(WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111F658;
  v3 = a1[7];
  a1[7] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v5 + 8), a2);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WebCore::SecurityOriginData> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DataTaskWithRequest,WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0>(WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111F658;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v5 + 8), a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<std::optional<WebCore::SecurityOriginData> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DataTaskWithRequest,WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0>(WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(API::DataTask &)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
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
        v15 = a3[3];
        if (v15)
        {
          if (v6)
          {
            (*(*v15 + 16))(v15);
            v5 = *a3;
            v6 = a3[1];
            goto LABEL_14;
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
            if (!v8)
            {
              v12 = 0;
              v11 = 0;
              goto LABEL_10;
            }

            v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v10)
            {
              v11 = v9;
              v12 = 1;
LABEL_10:
              v13 = (a1 + 8);
              v14 = v11;
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

LABEL_14:
      *a3 = 0;
      a3[1] = 0;
      v16 = a3[3];
      if (v16)
      {
        if (v6)
        {
          (*(*v16 + 16))(v16, v5);
          v5 = *a3;
          v6 = a3[1];
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_17:
      *a3 = 0;
      a3[1] = 0;
      v17 = a3[3];
      if (v17 && v6)
      {
        (*(*v17 + 16))(v17, v5);
      }

LABEL_18:
      v18 = *a3;
      v19 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v20 = a3[3];
      if (v20)
      {
        if (v19)
        {
          (*(*v20 + 16))(v20, v18);
          v21 = *a3;
          v22 = a3[1];
          v23 = a3[3];
          *a3 = 0;
          a3[1] = 0;
          if (v23)
          {
            if (v22)
            {
              (*(*v23 + 16))(v23, v21);
            }
          }
        }
      }
    }
  }

  v13 = (a1 + 8);
  v14 = 0;
  v12 = 0;
LABEL_20:

  std::apply[abi:sn200100]<WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0,std::tuple<WebCore::ResourceRequest &&<std::optional<WebCore::SecurityOriginData> const&::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,std::optional<WebCore::SecurityOriginData> const&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v13, v14, v12);
}

void std::apply[abi:sn200100]<WebKit::NetworkProcessProxy::dataTaskWithRequest(WebKit::WebPageProxy &,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,BOOL,WTF::CompletionHandler<void ()(API::DataTask &)> &&)::$_0,std::tuple<WebCore::ResourceRequest &&<std::optional<WebCore::SecurityOriginData> const&::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,std::optional<WebCore::SecurityOriginData> const&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = API::Object::newObject(0x70uLL, 53);
  API::DataTask::DataTask(v7, a2, a3, a1 + 2, a1 + 6, *(a1 + 32));
  v8 = a1[5];
  a1[5] = 0;
  (*(*v8 + 16))(v8, v7);
  (*(*v8 + 8))(v8);
  if ((a3 & 1) == 0)
  {
    API::DataTask::networkProcessCrashed(v7, v9);
LABEL_19:
    if (v7)
    {
      v24 = *(v7 + 1);

      CFRelease(v24);
    }

    return;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13180CLL);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13182CLL);
  }

  v10 = (v6 + 560);
  v11 = *(v6 + 560);
  if (!v11)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v6 + 560), 0);
    v11 = *v10;
  }

  v12 = *(v11 - 8);
  v13 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v11 + 16 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    while (v18 != a2)
    {
      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v11 + 16 * v16);
      v18 = *v17;
      ++v20;
      if (!*v17)
      {
        if (v19)
        {
          *v19 = 0;
          v19[1] = 0;
          --*(*v10 - 16);
          v17 = v19;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_19;
  }

LABEL_14:
  v21 = v17[1];
  *v17 = a2;
  v17[1] = v7;
  if (v21)
  {
    CFRelease(*(v21 + 8));
  }

  v22 = *v10;
  if (*v10)
  {
    v23 = *(v22 - 12) + 1;
  }

  else
  {
    v23 = 1;
  }

  *(v22 - 12) = v23;
  v25 = (*(v22 - 16) + v23);
  v26 = *(v22 - 4);
  if (v26 > 0x400)
  {
    if (v26 > 2 * v25)
    {
      return;
    }
  }

  else if (3 * v26 > 4 * v25)
  {
    return;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Navigation,WTF::RawPtrTraits<API::Navigation>,WTF::DefaultRefDerefTraits<API::Navigation>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v6 + 560), v17);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1318E4);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<API::DataTask,WTF::RawPtrTraits<API::DataTask>,WTF::DefaultRefDerefTraits<API::DataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1319D8);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(WTF::CompletionHandler<void ()(WebKit::WebsiteData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F6A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(WTF::CompletionHandler<void ()(WebKit::WebsiteData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F6A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(WTF::CompletionHandler<void ()(WebKit::WebsiteData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, void *a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::WebsiteData>,void>::decode<IPC::Decoder>(a3, &v15);
    if (v19 & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v14 = *(a3 + 3)) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v19))
    {
      v20[0] = v15;
      v5 = v16;
      v15 = 0;
      v16 = 0;
      v20[1] = v5;
      v6 = v17;
      v17 = 0uLL;
      v21 = v6;
      v7 = v18;
      v18 = 0;
      v22 = v7;
      WTF::CompletionHandler<void ()(WebKit::WebsiteData)>::operator()((a1 + 8), v20);
      if (v22)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v8);
      }

      if (*(&v21 + 1))
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v21 + 1), v8);
      }

      if (v21)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v21, v8);
      }

      result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v8);
      if (v19)
      {
        if (v18)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v10);
        }

        if (*(&v17 + 1))
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v17 + 1), v10);
        }

        if (v17)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v10);
        }

        return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>((a1 + 8), v12);
    }
  }

  else
  {
    v11 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(v11, a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(uint64_t *a1, void *a2)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  memset(v6, 0, sizeof(v6));
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  v10 = 0;
  WTF::CompletionHandler<void ()(WebKit::WebsiteData)>::operator()(a1, &v8);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v3);
  }

  if (*(&v9 + 1))
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(&v9 + 1), v3);
  }

  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v3);
  }

  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v3);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F6D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F6D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F6F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F6F8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RenameOriginInWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F720;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RenameOriginInWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F720;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RenameOriginInWebsiteData,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F748;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F748;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v12);
      result = (*(*v5 + 8))(v5);
      if (v13)
      {
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
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetRenderTreeExternalRepresentation,WTF::CompletionHandler<void ()(WTF::String const&)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData> const&,WebCore::AuthenticationChallenge &&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebKit::WebPageProxy *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111F770;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData> const&,WebCore::AuthenticationChallenge &&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebKit::WebPageProxy *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111F770;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
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

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData> const&,WebCore::AuthenticationChallenge &&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebKit::WebPageProxy *>::call(atomic_uint *result, uint64_t a2)
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

  v4 = result;
  v5 = (v3 + 16);
  atomic_fetch_add((v3 + 16), 1u);
  if (a2)
  {
    WebKit::WebPageProxy::didReceiveAuthenticationChallengeProxy(a2, result + 3, *(result + 32));
  }

  else
  {
    v14 = *(result + 2);
    v6 = WebKit::allDataStores(result);
    v7 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v6, &v14);
    v8 = v7;
    if (v7 && (CFRetain(*(v7 + 8)), *(WebCore::AuthenticationChallengeBase::protectionSpace((*(v4 + 3) + 16)) + 21) == 8))
    {
      (*(**(v8 + 416) + 24))(*(v8 + 416), v4 + 6);
    }

    else
    {
      v9 = *(*(v4 + 3) + 472);
      WebCore::CredentialBase::CredentialBase(&v14);
      cf = 0;
      WebKit::AuthenticationDecisionListener::completeChallenge(v9);
      v11 = cf;
      cf = 0;
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v15;
      v15 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = v14;
      v14 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
      }

      if (!v8)
      {
        goto LABEL_18;
      }
    }

    CFRelease(*(v8 + 8));
  }

LABEL_18:

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::TerminateIdleServiceWorkers,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F798;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::TerminateIdleServiceWorkers,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F798;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::TerminateIdleServiceWorkers,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DumpResourceLoadStatistics,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F7C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DumpResourceLoadStatistics,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F7C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DumpResourceLoadStatistics,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = v12;
      v12 = 0;
      v14 = v5;
      WTF::CompletionHandler<void ()(WTF::String)>::operator()((a1 + 8), &v14);
      result = v14;
      v14 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }

      if (v13)
      {
        result = v12;
        v12 = 0;
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
      return IPC::Connection::cancelReply<Messages::WebPage::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F7E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F7E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsVeryPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F810;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsVeryPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F810;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsVeryPrevalentResource,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F838;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F838;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F860;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F860;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetVeryPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F888;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetVeryPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F888;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetVeryPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetLastSeen,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F8B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetLastSeen,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F8B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetLastSeen,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DomainIDExistsInDatabase,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F8D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DomainIDExistsInDatabase,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F8D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DomainIDExistsInDatabase,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::MergeStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F900;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::MergeStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F900;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::MergeStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InsertExpiredStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F928;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InsertExpiredStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F928;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::InsertExpiredStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F950;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F950;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearPrevalentResource,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F978;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F978;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F9A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F9A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F9C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F9C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111F9F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F9F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::LogUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FA18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::LogUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FA18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::LogUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HadUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FA40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HadUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FA40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HadUserInteraction,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FA68;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FA68;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FA90;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FA90;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FAB8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FAB8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTimeToLiveUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FAE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTimeToLiveUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FAE0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTimeToLiveUserInteraction,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FB08;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FB08;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FB30;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FB30;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FB58;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FB58;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FB80;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FB80;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FBA8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FBA8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FBD0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FBD0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FBF8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FBF8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FC20;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FC20;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FC48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FC48;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FC70;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FC70;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FC98;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FC98;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsGrandfathered,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FCC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsGrandfathered,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FCC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsGrandfathered,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfathered,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FCE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfathered,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FCE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfathered,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FD10;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FD10;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, void *a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, &v10);
    if (v12 == 1)
    {
      v13[0] = v10;
      v5.n128_u64[0] = v11;
      v10 = 0;
      v11 = 0;
      v13[1] = v5.n128_u64[0];
      WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()((a1 + 8), v13, v5);
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v6);
      if (v12)
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v8);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>((a1 + 8), v4);
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(v9, a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(uint64_t *a1, void *a2)
{
  v8 = 0uLL;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v3.n128_u64[0] = 0;
  v7 = v3;
  v8 = v3;
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a1, &v8, v3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v4);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FD38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FD38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
{
  if (!a3 || (a2 = *a3) == 0)
  {
    v19 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v19, a2, a4);
  }

  v6 = *(a3 + 1);
  v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v33 = *(a3 + 3);
    if (v33)
    {
      if (v6)
      {
        (*(*v33 + 16))(v33);
        a2 = *a3;
        v6 = *(a3 + 1);
LABEL_63:
        *a3 = 0;
        *(a3 + 1) = 0;
        v34 = *(a3 + 3);
        if (v34 && v6)
        {
          (*(*v34 + 16))(v34, a2);
        }

LABEL_24:
        v15 = *a3;
        v16 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v17 = *(a3 + 3);
        if (v17 && v16)
        {
          (*(*v17 + 16))(v17, v15);
          v31 = *(a3 + 3);
          v15 = *a3;
          v32 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (v31)
          {
            if (v32)
            {
              (*(*v31 + 16))(v31, v15);
            }
          }
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
        }

        return IPC::Connection::cancelReply<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v15, a4);
      }
    }

    else
    {
      v6 = 0;
    }

    a2 = 0;
    goto LABEL_63;
  }

  *(a3 + 2) = v7 + 8;
  if (!v7)
  {
    goto LABEL_63;
  }

  v9 = *v7;
  v45 = 0;
  v46 = 0;
  if (v9 >= 0xAAAA)
  {
    do
    {
      result = IPC::Decoder::decode<WebKit::ITPThirdPartyData>(&v40, a3);
      v22 = v44;
      if (v44 == 1)
      {
        if (HIDWORD(v46) == v46)
        {
          result = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(&v45, &v40);
        }

        else
        {
          v23 = v45 + 24 * HIDWORD(v46);
          v24 = v40;
          v40 = 0;
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          *v23 = v24;
          v25 = v41;
          v41 = 0;
          *(v23 + 8) = v25;
          LODWORD(v25) = v42;
          v42 = 0;
          *(v23 + 16) = v25;
          LODWORD(v25) = v43;
          v43 = 0;
          *(v23 + 20) = v25;
          ++HIDWORD(v46);
        }
      }

      if (v44 == 1)
      {
        WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, a2);
        result = v40;
        v40 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      if ((v22 & 1) == 0)
      {
LABEL_23:
        WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
        goto LABEL_24;
      }

      --v9;
    }

    while (v9);
    v26 = HIDWORD(v46);
    v20 = v45;
    if (v46 > HIDWORD(v46))
    {
      v27 = v45;
      if (HIDWORD(v46))
      {
        if (HIDWORD(v46) >= 0xAAAAAAB)
        {
          __break(0xC471u);
          return result;
        }

        v27 = WTF::fastMalloc((24 * HIDWORD(v46)));
        LODWORD(v46) = 24 * v26 / 0x18;
        v45 = v27;
        if (v27 != v20)
        {
          WTF::VectorMover<false,WebKit::ITPThirdPartyData>::move(v20, (v20 + 24 * v26), v27);
          v27 = v45;
        }
      }

      if (v20)
      {
        if (v27 == v20)
        {
          v45 = 0;
          LODWORD(v46) = 0;
        }

        WTF::fastFree(v20, a2);
LABEL_51:
        v20 = v45;
      }

      else
      {
        v20 = v27;
      }
    }

    v21 = v46;
  }

  else
  {
    if (v9)
    {
      LODWORD(v46) = 24 * v9 / 0x18u;
      v45 = WTF::fastMalloc((24 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebKit::ITPThirdPartyData>(&v40, a3);
        v10 = v44;
        if (v44 == 1)
        {
          if (HIDWORD(v46) == v46)
          {
            WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(&v45, &v40);
          }

          else
          {
            v11 = v45 + 24 * HIDWORD(v46);
            v12 = v40;
            v40 = 0;
            *(v11 + 8) = 0;
            *(v11 + 16) = 0;
            *v11 = v12;
            v13 = v41;
            v41 = 0;
            *(v11 + 8) = v13;
            LODWORD(v13) = v42;
            v42 = 0;
            *(v11 + 16) = v13;
            LODWORD(v13) = v43;
            v43 = 0;
            *(v11 + 20) = v13;
            ++HIDWORD(v46);
          }
        }

        if (v44 == 1 && (WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, a2), v14 = v40, v40 = 0, v14) && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, a2);
          if ((v10 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if ((v10 & 1) == 0)
        {
          goto LABEL_23;
        }

        if (!--v9)
        {
          goto LABEL_51;
        }
      }
    }

    v20 = 0;
    v21 = 0;
  }

  v35 = v21;
  v45 = 0;
  v46 = 0;
  v39 = 1;
  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
  v38[0] = 0;
  v38[1] = 0;
  v36[0] = v20;
  v36[1] = v35;
  v37 = 1;
  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v28);
  v29 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v29 + 16))(v29, v36);
  result = (*(*v29 + 8))(v29);
  if (v37)
  {
    return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v30);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::ITPThirdPartyData>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::ITPThirdPartyData,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FD60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FD60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfatheringTime,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FD88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfatheringTime,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FD88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetGrandfatheringTime,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMaxStatisticsEntries,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FDB0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMaxStatisticsEntries,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FDB0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMaxStatisticsEntries,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FDD8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FDD8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPruneEntriesDownTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FE00;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPruneEntriesDownTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FE00;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPruneEntriesDownTo,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FE28;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FE28;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FE50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FE50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FE78;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FE78;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FEA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FEA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetParametersToDefaultValues,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FEC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetParametersToDefaultValues,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FEC8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetParametersToDefaultValues,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetParametersToDefaultValues(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, **(a1 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 32));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 40));
  v4 = *(a1 + 48);

  return IPC::ArgumentCoder<WebKit::DidFilterKnownLinkDecoration,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::DidFilterKnownLinkDecoration,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char a2)
{
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    *result = a2;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FEF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FEF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FF18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FF18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FF40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FF40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DeleteCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F111FF68;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111FF68;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F111FF90;
  v8[1] = v6;
  v8[2] = v7;
  v10 = v8;
  WebKit::WebsiteDataStore::removeData(v4, v5, a2, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111FF90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111FF90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasIsolatedSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FFB8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasIsolatedSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FFB8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasIsolatedSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111FFE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111FFE0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120008;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120008;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120030;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120030;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120058;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120058;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120080;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120080;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11200A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11200A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11200D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11200D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11200F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11200F8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120120;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120120;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::setDomainsWithCrossPageStorageAccess(WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120148;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::setDomainsWithCrossPageStorageAccess(WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120148;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendSync<Messages::NetworkProcess::ProcessWillSuspendImminentlyForTestingSync>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>, double a5@<D0>)
{
  SyncMessageEncoder = IPC::Connection::createSyncMessageEncoder(0xFAA, a2, v23);
  if (a3)
  {
    v10 = *(v23[0] + 2);
    if (v10)
    {
      if (!*(v23[0] + 3))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v23[0] + 32;
    }

    *v10 |= 4u;
    a1[92] = 1;
  }

  SyncMessageEncoder = IPC::Connection::sendSyncMessage(a1, v23[1], v23, a3, &v21, a5);
  if (v22)
  {
    if (v22 == 1)
    {
      *a4 = v21;
      a4[16] = 1;
      goto LABEL_14;
    }

LABEL_18:
    mpark::throw_bad_variant_access(SyncMessageEncoder);
  }

  v12 = v21;
  v21 = 0;
  if (*(v12 + 25) == 3194)
  {
    *a4 = 11;
    a4[16] = 1;
    IPC::Decoder::~Decoder(v12);
    bmalloc::api::tzoneFree(v13, v14);
    if (!v22)
    {
      v15 = v21;
      v21 = 0;
      if (v15)
      {
        IPC::Decoder::~Decoder(v15);
        bmalloc::api::tzoneFree(v16, v17);
      }
    }
  }

  else
  {
    *a4 = v12;
    a4[16] = 0;
  }

LABEL_14:
  result = v23[0];
  v23[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v19, v20);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120170;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120170;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DestroySession,WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0>(WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120198;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DestroySession,WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0>(WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120198;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::DestroySession,WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0>(WebKit::NetworkProcessProxy::removeSession(WebKit::WebsiteDataStore &,WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::String &&)> &&,IPC::Connection*>::call(WTF::StringImpl *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v3 = 0;
    *(result + 1) = 0;
    (*(*v1 + 16))(v1, &v3);
    (*(*v1 + 8))(v1);
    result = v3;
    v3 = 0;
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

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[7 * v2];
  if (!*(result - 3))
  {
    return &result[7 * v2];
  }

  if (v2)
  {
    v4 = 56 * v2;
    while ((*result + 1) <= 1)
    {
      result += 7;
      v4 -= 56;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(WebKit::RemoteWorkerType,WebCore::Site &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::__1<WebCore::ProcessQualified<WTF::UUID>>,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)> &&)::$_0,void,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11201C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(WebKit::RemoteWorkerType,WebCore::Site &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::__1<WebCore::ProcessQualified<WTF::UUID>>,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)> &&)::$_0,void,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11201C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(WebKit::RemoteWorkerType,WebCore::Site &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::__1<WebCore::ProcessQualified<WTF::UUID>>,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)> &&)::$_0,void,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, a2, 1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11201E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11201E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120210;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120210;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v59 = *MEMORY[0x1E69E9840];
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
        v27 = *(a3 + 3);
        if (v27)
        {
          if (v6)
          {
            (*(*v27 + 16))(v27);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_45;
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
            if (!v8)
            {
              LOBYTE(v46) = 0;
              v58 = 0;
              std::optional<WebKit::BackgroundFetchState>::optional[abi:sn200100](&v32, &v46);
              v45 = 1;
              if (v58 != 1)
              {
LABEL_17:
                if (v45 & 1) != 0 || (v18 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v20 = *(a3 + 3)) != 0) && v19 && ((*(*v20 + 16))(v20, v18), (v45))
                {
                  std::optional<WebKit::BackgroundFetchState>::optional[abi:sn200100](v30, &v32);
                  v31 = 1;
                  if (v45 & 1) == 0 || (v44 & 1) == 0 || (WebKit::BackgroundFetchState::~BackgroundFetchState(&v32, v15), (v31))
                  {
LABEL_21:
                    v16 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    (*(*v16 + 16))(v16, v30);
                    (*(*v16 + 8))(v16);
                    if ((v31 & 1) != 0 && v30[152] == 1)
                    {
                      WebKit::BackgroundFetchState::~BackgroundFetchState(v30, v17);
                    }

                    return;
                  }
                }

                else
                {
                  v30[0] = 0;
                  v31 = 0;
                }

                v21 = *a3;
                v22 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v23 = *(a3 + 3);
                if (!v23 || !v22 || ((*(*v23 + 16))(v23, v21), (v31 & 1) == 0))
                {
                  IPC::Connection::cancelReply<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>((a1 + 8));
                  return;
                }

                goto LABEL_21;
              }

LABEL_16:
              WebKit::BackgroundFetchState::~BackgroundFetchState(&v46, v9);
              goto LABEL_17;
            }

            IPC::ArgumentCoder<WebKit::BackgroundFetchState,void>::decode(a3, &v46);
            if ((v58 & 1) == 0)
            {
              v24 = *a3;
              v25 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v26 = *(a3 + 3);
              if (!v26 || !v25 || ((*(*v26 + 16))(v26, v24), (v58 & 1) == 0))
              {
LABEL_32:
                LOBYTE(v32) = 0;
                v45 = 0;
                goto LABEL_17;
              }
            }

            LOBYTE(v32) = 0;
            v34 = -1;
            if (v48)
            {
              if (v48 == 255)
              {
                goto LABEL_11;
              }

              v32 = v46;
            }

            else
            {
              v10 = v46;
              v46 = 0uLL;
              v32 = v10;
              v33 = v47;
            }

            v34 = v48;
LABEL_11:
            v11 = v49;
            v49 = 0;
            v35 = v11;
            v36 = v50;
            v37 = v51;
            LODWORD(v50) = v50 & 0xFFFFFFFE;
            v12 = v52;
            v52 = 0uLL;
            v38 = v12;
            v39 = v53;
            v13 = v54;
            v53 = 0;
            v54 = 0;
            v40 = v13;
            v41 = v55;
            *&v43[15] = *&v57[15];
            v42 = v56;
            *v43 = *v57;
            v44 = 1;
            v45 = 1;
            goto LABEL_16;
          }

          goto LABEL_48;
        }
      }

LABEL_45:
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *(a3 + 3);
      if (v28)
      {
        if (v6)
        {
          (*(*v28 + 16))(v28, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_48;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_48:
      *a3 = 0;
      *(a3 + 1) = 0;
      v29 = *(a3 + 3);
      if (v29 && v6)
      {
        (*(*v29 + 16))(v29, v5);
      }

      goto LABEL_32;
    }
  }

  v14 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(v14);
}

void IPC::Connection::cancelReply<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v7 = 0;
  std::optional<WebKit::BackgroundFetchState>::optional[abi:sn200100](v5, v6);
  if (v7 == 1)
  {
    WebKit::BackgroundFetchState::~BackgroundFetchState(v6, v2);
  }

  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, v5);
  (*(*v3 + 8))(v3);
  if (v5[152] == 1)
  {
    WebKit::BackgroundFetchState::~BackgroundFetchState(v5, v4);
  }
}

uint64_t std::optional<WebKit::BackgroundFetchState>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a1);
    WTF::URL::URL(a1 + 32, (a2 + 32));
    v4 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = v4;
    *(a1 + 88) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
    v5 = *(a2 + 96);
    v6 = *(a2 + 104);
    *(a2 + 96) = 0;
    *(a1 + 96) = v5;
    *(a1 + 104) = v6;
    v7 = *(a2 + 112);
    v8 = *(a2 + 128);
    *(a1 + 143) = *(a2 + 143);
    *(a1 + 112) = v7;
    *(a1 + 128) = v8;
    *(a1 + 152) = 1;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AbortBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120238;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AbortBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120238;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AbortBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PauseBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120260;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PauseBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120260;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::PauseBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResumeBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120288;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResumeBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120288;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResumeBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClickBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11202B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClickBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11202B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClickBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,std::optional<unsigned long long>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11202D8;
  WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,std::optional<unsigned long long>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11202D8;
  WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,std::optional<unsigned long long>>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 104);
    *(a1 + 104) = 0;
    (*(*v4 + 16))(v4, a2, a3);
LABEL_38:
    v19 = *(*v4 + 8);

    return v19(v4);
  }

  if ((WebCore::operator==() & 1) == 0)
  {
    v4 = *(a1 + 104);
    *(a1 + 104) = 0;
    (*(*v4 + 16))(v4, 0, 0);
    goto LABEL_38;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  LOBYTE(v22) = 0;
  v24 = -1;
  LODWORD(v7) = *(a1 + 40);
  if (!*(a1 + 40))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *&v22 = v8;
    v7 = *(a1 + 24);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(&v22 + 1) = v7;
    v23 = *(a1 + 32);
    LOBYTE(v7) = *(a1 + 40);
    goto LABEL_10;
  }

  if (v7 != 255)
  {
    v22 = *(a1 + 16);
LABEL_10:
    v24 = v7;
  }

  LOBYTE(v25) = 0;
  v27 = -1;
  LODWORD(v9) = *(a1 + 72);
  if (*(a1 + 72))
  {
    if (v9 == 255)
    {
      goto LABEL_18;
    }

    v25 = *(a1 + 48);
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *&v25 = v10;
    v9 = *(a1 + 56);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *(&v25 + 1) = v9;
    v26 = *(a1 + 64);
    LOBYTE(v9) = *(a1 + 72);
  }

  v27 = v9;
LABEL_18:
  v28 = *(a1 + 80);
  v29 = *(a1 + 96);
  v11 = WTF::fastMalloc(0x68);
  v21 = 0;
  *v11 = &unk_1F1120300;
  *(v11 + 8) = v6;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v11 + 16), &v22);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v11 + 48), &v25);
  v12 = v28;
  *(v11 + 96) = v29;
  *(v11 + 80) = v12;
  v20 = v11;
  WebKit::WebPageProxy::forMostVisibleWebPageIfAny(v5, a1 + 16, &v20);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (!v27)
  {
    v14 = *(&v25 + 1);
    *(&v25 + 1) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v25;
    *&v25 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }
  }

  v27 = -1;
  if (!v24)
  {
    v16 = *(&v22 + 1);
    *(&v22 + 1) = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    v17 = v22;
    *&v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }
  }

  v24 = -1;
  result = v21;
  v21 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t *_ZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyON3WTF17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISB_EEDaT_ENUlPSI_E_D1Ev(uint64_t *a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 64))
  {
    v3 = a1[6];
    a1[6] = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = a1[5];
    a1[5] = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v5 = a1[2];
    a1[2] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = a1[1];
    a1[1] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 32) = -1;
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_EUlPSK_E_vJPNS2_12WebPageProxyEEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1120300;
  _ZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyON3WTF17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISB_EEDaT_ENUlPSI_E_D1Ev(a1 + 1, a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_EUlPSK_E_vJPNS2_12WebPageProxyEEED0Ev(uint64_t *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1120300;
  _ZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyON3WTF17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISB_EEDaT_ENUlPSI_E_D1Ev(a1 + 1, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_EUlPSK_E_vJPNS2_12WebPageProxyEEE4callESO_(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641350;
  v5 = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 67109120;
    *&buf[4] = a2 != 0;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::requestStorageSpace trying to get a visible page: %d", buf, 8u);
  }

  if (a2)
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 40) != 1)
      {
        mpark::throw_bad_variant_access(v5);
      }

      v7 = MEMORY[0x1E696EBA8];
    }

    else
    {
      v7 = (a1 + 24);
    }

    WTF::FileSystemImpl::encodeForFileName(&v22, v7, v6);
    *buf = " content";
    v25 = 9;
    result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v22, buf, &v23);
    if (v23)
    {
      v10 = v22;
      v22 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = *(*(a2 + 424) + 288);
      WebCore::SecurityOriginData::databaseIdentifier(buf, (a1 + 16));
      v12 = *(a1 + 80);
      v13 = *(a1 + 88);
      v14 = *(a1 + 96);
      v15 = *(a1 + 8);
      *(a1 + 8) = 0;
      v16 = WTF::fastMalloc(0x10);
      *v16 = &unk_1F1120328;
      v16[1] = v15;
      v21 = v16;
      WebKit::WebPageProxy::requestStorageSpace(a2, v11, buf, &v23, &v23, v12, v13, v13, v14, &v21);
      v18 = v21;
      v21 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      v19 = *buf;
      *buf = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      result = v23;
      v23 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v17);
        }
      }
    }

    else
    {
      __break(0xC471u);
    }
  }

  else
  {
    v20 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v20 + 16))(v20, 0, 0);
    return (*(*v20 + 8))(v20);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_ENUlPSK_E_clINS2_12WebPageProxyEEESJ_SL_EUlSK_E_vJyEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120328;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_ENUlPSK_E_clINS2_12WebPageProxyEEESJ_SL_EUlSK_E_vJyEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120328;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit19NetworkProcessProxy19requestStorageSpaceEN3PAL9SessionIDERKN7WebCore12ClientOriginEyyyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEN3__0clISD_EEDaT_ENUlPSK_E_clINS2_12WebPageProxyEEESJ_SL_EUlSK_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, a2, 1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0,void,std::optional<unsigned long long>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1120350;
  WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0,void,std::optional<unsigned long long>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1120350;
  WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0,void,std::optional<unsigned long long>>::call(atomic_uint *result, void *a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = result;
      atomic_fetch_add((v4 + 16), 1u);
      v6 = IPC::Encoder::operator new(0x238, a2);
      *v6 = 601;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = 0;
      IPC::Encoder::encodeHeader(v6);
      v15 = v6;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(v5 + 2));
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v6, (v5 + 6));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(v5 + 11));
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v6, v12);
      LOBYTE(v13) = 0;
      v14 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v15, 0, &v13, 1);
      if (v14 == 1)
      {
        v8 = v13;
        v13 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }

      v9 = v15;
      v15 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v7);
        bmalloc::api::tzoneFree(v10, v11);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v23 + 8), v8);
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
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v12 + 8), v8);
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

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t Messages::NetworkProcess::PreconnectTo::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 16));
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a2, *(a1 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *(a1 + 32));
  IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>&>(a2, (a1 + 33));
  v4 = *(a1 + 40);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

char *IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>&>(IPC::Encoder *a1, char *a2)
{
  v4 = a2[1];
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *result = 0;
      return result;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19E13AC6CLL);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  *result = 1;
  if ((a2[1] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_10;
  }

  v7 = *a2;

  return IPC::ArgumentCoder<WebKit::DidFilterKnownLinkDecoration,void>::encode<IPC::Encoder>(a1, v7);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetQuota,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120378;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetQuota,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120378;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetQuota,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetStoragePersistedState,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11203A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetStoragePersistedState,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11203A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetStoragePersistedState,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasAppBoundSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11203C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasAppBoundSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11203C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasAppBoundSession,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearAppBoundSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11203F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearAppBoundSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11203F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearAppBoundSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::getAppBoundDomains(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120418;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::getAppBoundDomains(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120418;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::getAppBoundDomains(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>::call(uint64_t a1, uint64_t *a2)
{
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v6, a2);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3, &v6);
  (*(*v3 + 8))(v3);
  result = v6;
  if (v6)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::UpdateBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120440;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::UpdateBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120440;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::UpdateBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120468;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120468;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ClearBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120490;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120490;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WebKit::WebPushMessage>>,void>::decode<IPC::Decoder>(a3, v11);
    if (v12 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (v10 = a3[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v11);
      (*(*v5 + 8))(v5);
      if ((v12 & 1) != 0 && v11[216] == 1)
      {
        WebKit::WebPushMessage::~WebPushMessage(v11, v6);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(v7);
  }
}

void IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(uint64_t *a1)
{
  v6[0] = 0;
  v7 = 0;
  std::optional<WebKit::WebPushMessage>::optional[abi:sn200100](v5, v6);
  if (v7 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v6, v2);
  }

  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, v5);
  (*(*v3 + 8))(v3);
  if (v5[216] == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v5, v4);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11204B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11204B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3, __n128 a4, __n128 a5)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v15, a5);
    if (v16 & 1) != 0 || (v12 = *a3, v13 = a3[1], *a3 = 0, a3[1] = 0, (v14 = a3[3]) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v16))
    {
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v8 + 16))(v8, v15);
      result = (*(*v8 + 8))(v8);
      if (v16)
      {
        return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v10);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8), v12, v7);
    }
  }

  else
  {
    v11 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v11, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t *a1, WTF::StringImpl *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>(WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11204E0;
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
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>(WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11204E0;
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
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>(WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<BOOL,std::optional<WebCore::NotificationPayload>>,void>::decode<IPC::Decoder>(a3, v19);
    if (v29 & 1) != 0 || (v16 = *a3, v17 = a3[1], *a3 = 0, a3[1] = 0, (v18 = a3[3]) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v29))
    {
      v5 = v19[0];
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v6 + 16))(v6, v5, &v20);
      result = (*(*v6 + 8))(v6);
      if ((v29 & 1) != 0 && v28 == 1)
      {
        if (v27 == 1)
        {
          v9 = v26;
          v26 = 0;
          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v8);
          }

          v10 = v25;
          v25 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v8);
          }

          v11 = v24;
          v24 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v8);
          }

          v12 = v23;
          v23 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }

          v13 = v22;
          v22 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v8);
          }
        }

        v14 = v21;
        v21 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v8);
        }

        result = v20;
        v20 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v8);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>((a1 + 8));
    }
  }

  else
  {
    v15 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>(v15);
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::NetworkProcess::ProcessPushMessage,WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_1>(uint64_t *a1)
{
  LOBYTE(v28) = 0;
  v36 = 0;
  std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](v19, &v28);
  if (v36 == 1)
  {
    if (v35 == 1)
    {
      v3 = v34;
      v34 = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v2);
      }

      v4 = v33;
      v33 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v2);
      }

      v5 = v32;
      v32 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v2);
      }

      v6 = v31;
      v31 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v2);
      }

      v7 = v30;
      v30 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v2);
      }
    }

    v8 = v29;
    v29 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v2);
    }

    v9 = v28;
    v28 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v2);
    }
  }

  v10 = *a1;
  *a1 = 0;
  (*(*v10 + 16))(v10, 0, v19);
  result = (*(*v10 + 8))(v10);
  if (v27 == 1)
  {
    if (v26 == 1)
    {
      v13 = v25;
      v25 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v24;
      v24 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = v23;
      v23 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = v22;
      v22 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }

      v17 = v21;
      v21 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
      }
    }

    v18 = v20;
    v20 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    result = v19[0];
    v19[0] = 0;
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

void IPC::ArgumentCoder<std::tuple<BOOL,std::optional<WebCore::NotificationPayload>>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    v9 = a2;
    v10 = a1;
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      if (v2)
      {
        (*(*v6 + 16))(v6);
        v4 = *v10;
        v2 = v10[1];
        goto LABEL_9;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

  else
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v5 = *v3;
      if (v5 < 2)
      {
        v11 = v5 | 0x100;
        IPC::ArgumentCoder<std::tuple<BOOL,std::optional<WebCore::NotificationPayload>>,void>::decode<IPC::Decoder,BOOL>(a1, &v11, a2);
        return;
      }

      v9 = a2;
      v10 = a1;
      goto LABEL_13;
    }

    v9 = a2;
    v10 = a1;
  }

LABEL_9:
  *v10 = 0;
  v10[1] = 0;
  v7 = v10[3];
  if (v7)
  {
    if (v2)
    {
      (*(*v7 + 16))(v7, v4);
      v4 = *v10;
      v2 = v10[1];
      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = 0;
LABEL_13:
  *v10 = 0;
  v10[1] = 0;
  v8 = v10[3];
  if (v8)
  {
    if (v2)
    {
      (*(*v8 + 16))(v8, v4);
    }
  }

  *v9 = 0;
  v9[152] = 0;
}

void IPC::ArgumentCoder<std::tuple<BOOL,std::optional<WebCore::NotificationPayload>>,void>::decode<IPC::Decoder,BOOL>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebCore::NotificationPayload>,void>::decode<IPC::Decoder>(a1, v18);
  if (v27)
  {
    while ((a2[1] & 1) == 0)
    {
      __break(1u);
LABEL_35:
      v6 = (*(*v6 + 16))(v6, v7);
      if ((v27 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    *a3 = *a2;
    std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](a3 + 8, v18);
    a3[152] = 1;
    if ((v27 & 1) != 0 && v26 == 1)
    {
      if (v25 == 1)
      {
        v9 = v24;
        v24 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        v10 = v23;
        v23 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        v11 = v22;
        v22 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v8);
        }

        v12 = v21;
        v21 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v8);
        }

        v13 = v20;
        v20 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v8);
        }
      }

      v14 = v19;
      v19 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v8);
      }

      v15 = v18[0];
      v18[0] = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v8);
        }
      }
    }
  }

  else
  {
    v7 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_33:
    *a3 = 0;
    a3[152] = 0;
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessNotificationEvent,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1120508;
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
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessNotificationEvent,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1120508;
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
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ProcessNotificationEvent,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::processNotificationEvent(WebCore::NotificationData const&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120530;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120530;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120558;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120558;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(WTF::CompletionHandler<void ()(unsigned int)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
    if ((v4 & 0x100000000) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasPushSubscriptionForTesting,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120580;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasPushSubscriptionForTesting,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120580;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::HasPushSubscriptionForTesting,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

uint64_t Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = **(a1 + 24);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)>,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11205A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)>,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11205A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)>,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3, v5);
  return (*(*v3 + 8))(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11205D0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11205D0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v4 = a1[2];
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin - webPageProxyID=%llu - END", &v7, 0x16u);
  }

  v5 = a1[3];
  a1[3] = 0;
  (*(*v5 + 16))(v5);
  return (*(*v5 + 8))(v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::DeleteWebsiteDataForOrigin,WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11205F8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::DeleteWebsiteDataForOrigin,WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11205F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1120620;
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
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1120620;
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
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::reloadExecutionContextsForOrigin END", &v6, 0xCu);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v4 + 16))(v4);
  return (*(*v4 + 8))(v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::ReloadExecutionContextsForOrigin,WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120648;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::ReloadExecutionContextsForOrigin,WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(WebCore::ClientOrigin const&,PAL::SessionID,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120648;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::WeakHashMap<WebKit::WebProcessProxy,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(WTF::StringImpl **result, void *a2)
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    goto LABEL_18;
  }

  v4 = *(v3 - 4);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v6 = v3 + 24 * v4 - 24;
  do
  {
    if ((*v6 + 1) >= 2 && !*(*v6 + 8))
    {
      WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v6, a2);
      result = *(v6 + 16);
      if (result)
      {
        result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
      }

      ++v5;
    }

    v6 -= 24;
    --v4;
  }

  while (v4);
  v3 = *v2;
  if (v5)
  {
    v7 = *(v3 - 12) - v5;
    *(v3 - 16) += v5;
    *(v3 - 12) = v7;
    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_18:
    LODWORD(v3) = 0;
    *(v2 + 2) = 0;
    goto LABEL_35;
  }

LABEL_13:
  v8 = *(v3 - 12);
  v9 = *(v3 - 4);
  if (6 * v8 >= v9 || v9 <= 8)
  {
    *(v2 + 2) = 0;
LABEL_34:
    LODWORD(v3) = *(v3 - 12);
    if (v3 > 0x7FFFFFFE)
    {
      v15 = -2;
      goto LABEL_37;
    }

LABEL_35:
    v15 = 2 * v3;
LABEL_37:
    *(v2 + 3) = v15;
    return result;
  }

  if (v8 <= 1)
  {
    v11 = 1;
    goto LABEL_23;
  }

  v12 = __clz(v8 - 1);
  if (v12)
  {
    v11 = (1 << -v12);
    if (v8 > 0x400)
    {
      if (v11 > 2 * v8)
      {
LABEL_25:
        if (v11 > 0x400)
        {
          v13 = 0.416666667;
        }

        else
        {
          v13 = 0.604166667;
        }

        if (v11 * v13 <= v8)
        {
          LODWORD(v11) = 2 * v11;
        }

        if (v11 <= 8)
        {
          v14 = 8;
        }

        else
        {
          v14 = v11;
        }

        result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v2, v14, 0);
        v3 = *v2;
        *(v2 + 2) = 0;
        if (!v3)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_24:
      LODWORD(v11) = 2 * v11;
      goto LABEL_25;
    }

LABEL_23:
    if (3 * v11 > 4 * v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((24 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 8;
    do
    {
      *(v11 - 2) = 0;
      *(v11 - 8) = 0;
      *v11 = 0;
      v11 += 3;
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
    v14 = v6;
    do
    {
      v15 = v5 + 24 * v12;
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
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

          v19 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash((v5 + 24 * v12));
          v20 = 0;
          do
          {
            v21 = v17 + 24 * (v19 & v18);
            v19 = ++v20 + (v19 & v18);
          }

          while (*v21);
          v22 = *(v21 + 16);
          if (v22)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v9);
            v27 = *v21;
            *v21 = 0;
            if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v27);
              WTF::fastFree(v27, v9);
            }
          }

          else
          {
            *v21 = 0;
          }

          v23 = *v15;
          *v15 = 0;
          *v21 = v23;
          *(v21 + 8) = *(v15 + 8);
          *(v21 + 16) = 0;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v21 + 16) = v24;
          v25 = *(v15 + 16);
          if (v25)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v9);
          }

          v26 = *v15;
          *v15 = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            WTF::fastFree(v26, v9);
          }

          if (v15 == a3)
          {
            v13 = v21;
          }
        }

        else
        {
          if (*(v15 + 16))
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*(v15 + 16), v9);
            v16 = *v15;
          }

          *v15 = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v9);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v14);
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

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AddAllowedFirstPartyForCookies,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120670;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AddAllowedFirstPartyForCookies,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120670;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AddAllowedFirstPartyForCookies,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchLocalStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120698;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchLocalStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120698;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::FetchLocalStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v14 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v14))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v12);
      result = (*(*v5 + 8))(v5);
      if ((v14 & 1) != 0 && v13 == 1)
      {
        result = v12;
        if (v12)
        {
          return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v12, v7);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcess::FetchSessionStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcess::FetchSessionStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RestoreLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11206C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RestoreLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11206C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::RestoreLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11206E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11206E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void Messages::LegacyCustomProtocolManager::WasRedirectedToRequest::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a2, v4);
}

uint64_t Messages::LegacyCustomProtocolManager::DidReceiveResponse::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

_DWORD *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,PAL::SessionID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,PAL::SessionID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = v5;
  result = WTF::fastMalloc(((32 * v5) | 0x10));
  if (v5)
  {
    v9 = result + 4;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = v3;
    do
    {
      v12 = (v2 + 32 * v10);
      if (*v12 >= 2uLL)
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

        v15 = WTF::UUIDHash::hash((v2 + 32 * v10), v8);
        v16 = 0;
        do
        {
          v17 = v15 & v14;
          v18 = (v13 + 32 * v17);
          v15 = ++v16 + v17;
        }

        while (*v18 != 0);
        v19 = v12[1];
        *v18 = *v12;
        v18[1] = v19;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v8);
}