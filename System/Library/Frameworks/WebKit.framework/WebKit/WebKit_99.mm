_DWORD *WebKit::WebPaymentCoordinatorProxy::didReceiveMessage(WebKit::WebPaymentCoordinatorProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v222 = *MEMORY[0x1E69E9840];
  WebKit::WebPaymentCoordinatorProxy::sharedPreferencesForWebProcess(v194, *(this + 6));
  if (v194[24] == 1 && (v194[8] & 0x80) != 0)
  {
    v10 = (this + 40);
    ++*(this + 10);
    v11 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0xB39:
      case 0xB3C:
        WebKit::WebPaymentCoordinatorProxy::abortPaymentSession(this);
        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      case 0xB3A:
        IPC::Decoder::decode<WebKit::PaymentSetupConfiguration>(&v195, a3);
        if (v202 == 1)
        {
          IPC::ArgumentCoder<WebKit::PaymentSetupFeatures,void>::decode(a3, &v208);
          if (v209 & 1) != 0 || (v51 = *a3, v180 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v181 = *(a3 + 3)) != 0) && v180 && ((*(*v181 + 16))(v181, v51), (v209))
          {
            if ((v202 & 1) == 0)
            {
              goto LABEL_225;
            }

            std::__tuple_leaf<0ul,WebKit::PaymentSetupConfiguration,false>::__tuple_leaf[abi:sn200100]<WebKit::PaymentSetupConfiguration,0>(buf, &v195);
            cf = v208;
            v52 = 1;
          }

          else
          {
            v52 = 0;
            buf[0] = 0;
          }

          v216 = v52;
          if (v202)
          {
            v53 = v199[0];
            v199[0] = 0;
            if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v53, v51);
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v198, v51);
            v55 = v197;
            v197 = 0;
            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v54);
            }

            v56 = v196;
            v196 = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v54);
            }

            v57 = v195;
            v195 = 0;
            if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v57, v54);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v216 = 0;
        }

        if ((v216 & 1) == 0)
        {
          v96 = *a3;
          v166 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v167 = *(a3 + 3);
          if (!v167)
          {
            goto LABEL_155;
          }

          if (!v166)
          {
            goto LABEL_155;
          }

          (*(*v167 + 16))(v167, v96);
          if ((v216 & 1) == 0)
          {
            goto LABEL_155;
          }
        }

        v95 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v96 & 1) == 0)
        {
          goto LABEL_155;
        }

        a3 = v95;
        while (1)
        {
          v97 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v98 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v98, v97 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v98 == v97)
          {
            goto LABEL_152;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_152:
        v99 = WTF::fastMalloc(0x18);
        *v99 = &unk_1F10F7AE0;
        v99[1] = a3;
        v99[2] = a2;
        v195 = v99;
        if ((v216 & 1) == 0)
        {
          goto LABEL_225;
        }

        WebKit::WebPaymentCoordinatorProxy::beginApplePaySetup(this, buf, &cf, &v195);
        v100 = v195;
        v195 = 0;
        if (v100)
        {
          (*(*v100 + 8))(v100);
        }

LABEL_155:
        if (v216 == 1)
        {
          v101 = cf;
          cf = 0;
          if (v101)
          {
            CFRelease(v101);
          }

          v102 = v212;
          *&v212 = 0;
          if (v102 && atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v102, v96);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v211, v96);
          v103 = *&buf[16];
          *&buf[16] = 0;
          if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v103, v29);
          }

          goto LABEL_164;
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      case 0xB3B:
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_119;
        }

        v40 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v29 & 1) == 0)
        {
          goto LABEL_119;
        }

        a3 = v40;
        while (1)
        {
          v41 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v42 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v42 == v41)
          {
            goto LABEL_115;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_115:
        v83 = WTF::fastMalloc(0x18);
        *v83 = &unk_1F10F7A68;
        v83[1] = a3;
        v83[2] = a2;
        v195 = v83;
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_225;
        }

        WebKit::WebPaymentCoordinatorProxy::canMakePaymentsWithActiveCard(this, buf, &buf[8], &v195);
        goto LABEL_117;
      case 0xB3D:
        v20 = *(a3 + 1);
        v21 = *(a3 + 2);
        v22 = *a3;
        if (v20 <= &v21[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v182 = *(a3 + 3);
          if (v182)
          {
            if (v20)
            {
              (*(*v182 + 16))(v182);
              v20 = *(a3 + 1);
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v21 + 1;
          if (v21)
          {
            v23 = *v21;
            if (v23 < 2)
            {
              if (v23)
              {
                IPC::ArgumentCoder<WebCore::ApplePayCouponCodeUpdate,void>::decode(a3, &v195);
                if ((v205 & 1) == 0)
                {
                  v168 = *a3;
                  v169 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v170 = *(a3 + 3);
                  if (!v170 || !v169 || ((*(*v170 + 16))(v170, v168), (v205 & 1) == 0))
                  {
LABEL_265:
                    buf[0] = 0;
                    v220 = 0;
LABEL_172:
                    if (v220 & 1) != 0 || (v136 = *a3, v137 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v138 = *(a3 + 3)) != 0) && v137 && ((*(*v138 + 16))(v138, v136), (v220))
                    {
                      std::optional<WebCore::ApplePayShippingContactUpdate>::optional[abi:sn200100](&v195, buf);
                      v206 = 1;
                      if (v220 & 1) == 0 || (v219 & 1) == 0 || (WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v218, v107), WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v217, v108), WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(buf, v109), (v206))
                      {
LABEL_176:
                        WebKit::WebPaymentCoordinatorProxy::completeCouponCodeChange(this, &v195);
LABEL_211:
                        if ((v206 & 1) == 0 || v205 != 1)
                        {
                          return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                        }

                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      LOBYTE(v195) = 0;
                      v206 = 0;
                    }

                    v139 = *a3;
                    v140 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v141 = *(a3 + 3);
                    if (!v141)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    if (!v140)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    (*(*v141 + 16))(v141, v139);
                    if ((v206 & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    goto LABEL_176;
                  }
                }

                WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(buf, &v195);
                v25 = v203;
                *&v26 = 0;
                v27 = *(&v203 + 1);
                v203 = v26;
                *&v217 = v25;
                *(&v217 + 1) = v27;
                v28 = v204;
                v204 = 0u;
                v218 = v28;
                LOBYTE(v219) = 1;
                v220 = 1;
                if ((v205 & 1) == 0)
                {
                  goto LABEL_172;
                }
              }

              else
              {
                LOBYTE(v195) = 0;
                LOBYTE(v205) = 0;
                std::optional<WebCore::ApplePayShippingContactUpdate>::optional[abi:sn200100](buf, &v195);
                v220 = 1;
                if (v205 != 1)
                {
                  goto LABEL_172;
                }
              }

              WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v24);
              WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v105);
              WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&v195, v106);
              goto LABEL_172;
            }

            goto LABEL_310;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v183 = *(a3 + 3);
        if (v183)
        {
          if (v20)
          {
            (*(*v183 + 16))(v183);
            v22 = *a3;
            v20 = *(a3 + 1);
            goto LABEL_310;
          }
        }

        else
        {
          v20 = 0;
        }

        v22 = 0;
LABEL_310:
        *a3 = 0;
        *(a3 + 1) = 0;
        v184 = *(a3 + 3);
        if (v184 && v20)
        {
          (*(*v184 + 16))(v184, v22);
        }

        goto LABEL_265;
      case 0xB3E:
        IPC::ArgumentCoder<WebCore::PaymentMerchantSession,void>::decode(a3, buf);
        if (buf[8])
        {
          goto LABEL_88;
        }

        v151 = *a3;
        v152 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v153 = *(a3 + 3);
        if (!v153 || !v152)
        {
          goto LABEL_247;
        }

        (*(*v153 + 16))(v153, v151);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_282;
        }

LABEL_88:
        v195 = *buf;
        if (*buf)
        {
          CFRetain(*buf);
          LOBYTE(v196) = 1;
          if (buf[8])
          {
            v58 = *buf;
            *buf = 0;
            if (v58)
            {
              CFRelease(v58);
            }
          }
        }

        else
        {
          LOBYTE(v196) = 1;
        }

        WebKit::WebPaymentCoordinatorProxy::completeMerchantValidation(this, &v195);
        if (v196)
        {
          v130 = v195;
          v195 = 0;
          if (v130)
          {
            CFRelease(v130);
          }
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      case 0xB3F:
        v63 = *(a3 + 1);
        v64 = *(a3 + 2);
        v65 = *a3;
        if (v63 <= &v64[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v188 = *(a3 + 3);
          if (v188)
          {
            if (v63)
            {
              (*(*v188 + 16))(v188);
              v63 = *(a3 + 1);
            }
          }

          else
          {
            v63 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v64 + 1;
          if (v64)
          {
            v66 = *v64;
            if (v66 < 2)
            {
              if (v66)
              {
                IPC::ArgumentCoder<WebCore::ApplePayPaymentMethodUpdate,void>::decode(a3, &v195);
                if ((v206 & 1) == 0)
                {
                  v174 = *a3;
                  v175 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v176 = *(a3 + 3);
                  if (!v176 || !v175 || ((*(*v176 + 16))(v176, v174), (v206 & 1) == 0))
                  {
LABEL_269:
                    buf[0] = 0;
                    v221 = 0;
LABEL_192:
                    if (v221 & 1) != 0 || (v154 = *a3, v155 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v156 = *(a3 + 3)) != 0) && v155 && ((*(*v156 + 16))(v156, v154), (v221))
                    {
                      std::optional<WebCore::ApplePayPaymentMethodUpdate>::optional[abi:sn200100](&v195, buf);
                      v207 = 1;
                      if ((v221 & 1) == 0 || v220 != 1)
                      {
                        goto LABEL_199;
                      }

                      v120 = v219;
                      v219 = 0;
                      if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v120, v119);
                      }

                      WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v218, v119);
                      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v217, v121);
                      WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(buf, v122);
                      if (v207)
                      {
LABEL_199:
                        WebKit::WebPaymentCoordinatorProxy::completePaymentMethodSelection(this, &v195);
                        if ((v207 & 1) == 0 || v206 != 1)
                        {
                          return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                        }

                        v123 = v205;
                        v205 = 0;
                        if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v123, v110);
                        }

LABEL_213:
                        WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v110);
                        WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v129);
LABEL_214:
                        WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&v195, v115);
                        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                      }
                    }

                    else
                    {
                      LOBYTE(v195) = 0;
                      v207 = 0;
                    }

                    v157 = *a3;
                    v158 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v159 = *(a3 + 3);
                    if (!v159)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    if (!v158)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    (*(*v159 + 16))(v159, v157);
                    if ((v207 & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    goto LABEL_199;
                  }
                }

                WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(buf, &v195);
                v68 = v203;
                *&v69 = 0;
                v70 = *(&v203 + 1);
                v203 = v69;
                *&v217 = v68;
                *(&v217 + 1) = v70;
                v71 = v204;
                v204 = 0u;
                v218 = v71;
                v219 = v205;
                v220 = 1;
                v221 = 1;
                if ((v206 & 1) == 0)
                {
                  goto LABEL_192;
                }

                v205 = 0;
                WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v67);
              }

              else
              {
                LOBYTE(v195) = 0;
                v206 = 0;
                std::optional<WebCore::ApplePayPaymentMethodUpdate>::optional[abi:sn200100](buf, &v195);
                v221 = 1;
                if (v206 != 1)
                {
                  goto LABEL_192;
                }

                v117 = v205;
                v205 = 0;
                if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v117, v116);
                }

                WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v116);
              }

              WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v72);
              WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&v195, v118);
              goto LABEL_192;
            }

            goto LABEL_326;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v189 = *(a3 + 3);
        if (v189)
        {
          if (v63)
          {
            (*(*v189 + 16))(v189);
            v65 = *a3;
            v63 = *(a3 + 1);
            goto LABEL_326;
          }
        }

        else
        {
          v63 = 0;
        }

        v65 = 0;
LABEL_326:
        *a3 = 0;
        *(a3 + 1) = 0;
        v190 = *(a3 + 3);
        if (v190 && v63)
        {
          (*(*v190 + 16))(v190, v65);
        }

        goto LABEL_269;
      case 0xB40:
        IPC::ArgumentCoder<WebCore::ApplePayPaymentAuthorizationResult,void>::decode(a3, buf);
        if (v214)
        {
          goto LABEL_53;
        }

        v148 = *a3;
        v149 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v150 = *(a3 + 3);
        if (v150 && v149)
        {
          (*(*v150 + 16))(v150, v148);
          if (v214)
          {
LABEL_53:
            LOWORD(v195) = *buf;
            v44 = *&buf[8];
            *&buf[8] = 0;
            v196 = v44;
            v45 = *&buf[16];
            *&buf[16] = 0;
            v197 = v45;
            LOBYTE(v198[0]) = 0;
            v200 = 0;
            if (v213 == 1)
            {
              *v198 = v211;
              *v199 = v212;
              v200 = v213;
              v212 = 0u;
              v211 = 0u;
            }

            v201 = 1;
            WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v43);
            WebKit::WebPaymentCoordinatorProxy::completePaymentSession(this, &v195);
            if (v201)
            {
              if (v200 == 1)
              {
                v47 = v199[1];
                v199[1] = 0;
                if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v47, v46);
                }

                v48 = v199[0];
                v199[0] = 0;
                if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v48, v46);
                }

                v49 = v198[1];
                v198[1] = 0;
                if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v49, v46);
                }

                v50 = v198[0];
                v198[0] = 0;
                if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v50, v46);
                }
              }

              WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v196, v46);
            }
          }

          else
          {
LABEL_282:
            v62 = *(a3 + 3);
            v60 = *a3;
            v61 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            if (v62)
            {
LABEL_94:
              if (v61)
              {
                (*(*v62 + 16))(v62, v60);
              }
            }
          }
        }

        else
        {
LABEL_247:
          *a3 = 0;
          *(a3 + 1) = 0;
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      case 0xB41:
        v73 = *(a3 + 1);
        v74 = *(a3 + 2);
        v75 = *a3;
        if (v73 <= &v74[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v191 = *(a3 + 3);
          if (v191)
          {
            if (v73)
            {
              (*(*v191 + 16))(v191);
              v73 = *(a3 + 1);
            }
          }

          else
          {
            v73 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v74 + 1;
          if (v74)
          {
            v76 = *v74;
            if (v76 < 2)
            {
              if (v76)
              {
                IPC::ArgumentCoder<WebCore::ApplePayShippingContactUpdate,void>::decode(a3, &v195);
                if ((v205 & 1) == 0)
                {
                  v177 = *a3;
                  v178 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v179 = *(a3 + 3);
                  if (!v179 || !v178 || ((*(*v179 + 16))(v179, v177), (v205 & 1) == 0))
                  {
LABEL_271:
                    buf[0] = 0;
                    v220 = 0;
LABEL_206:
                    if (v220 & 1) != 0 || (v160 = *a3, v161 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v162 = *(a3 + 3)) != 0) && v161 && ((*(*v162 + 16))(v162, v160), (v220))
                    {
                      std::optional<WebCore::ApplePayShippingContactUpdate>::optional[abi:sn200100](&v195, buf);
                      v206 = 1;
                      if (v220 & 1) == 0 || (v219 & 1) == 0 || (WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v218, v126), WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v217, v127), WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(buf, v128), (v206))
                      {
LABEL_210:
                        WebKit::WebPaymentCoordinatorProxy::completeShippingContactSelection(this, &v195);
                        goto LABEL_211;
                      }
                    }

                    else
                    {
                      LOBYTE(v195) = 0;
                      v206 = 0;
                    }

                    v163 = *a3;
                    v164 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v165 = *(a3 + 3);
                    if (!v165)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    if (!v164)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    (*(*v165 + 16))(v165, v163);
                    if ((v206 & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    goto LABEL_210;
                  }
                }

                WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(buf, &v195);
                v78 = v203;
                *&v79 = 0;
                v80 = *(&v203 + 1);
                v203 = v79;
                *&v217 = v78;
                *(&v217 + 1) = v80;
                v81 = v204;
                v204 = 0u;
                v218 = v81;
                LOBYTE(v219) = 1;
                v220 = 1;
                if ((v205 & 1) == 0)
                {
                  goto LABEL_206;
                }
              }

              else
              {
                LOBYTE(v195) = 0;
                LOBYTE(v205) = 0;
                std::optional<WebCore::ApplePayShippingContactUpdate>::optional[abi:sn200100](buf, &v195);
                v220 = 1;
                if (v205 != 1)
                {
                  goto LABEL_206;
                }
              }

              WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v77);
              WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v124);
              WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&v195, v125);
              goto LABEL_206;
            }

            goto LABEL_334;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v192 = *(a3 + 3);
        if (v192)
        {
          if (v73)
          {
            (*(*v192 + 16))(v192);
            v75 = *a3;
            v73 = *(a3 + 1);
            goto LABEL_334;
          }
        }

        else
        {
          v73 = 0;
        }

        v75 = 0;
LABEL_334:
        *a3 = 0;
        *(a3 + 1) = 0;
        v193 = *(a3 + 3);
        if (v193 && v73)
        {
          (*(*v193 + 16))(v193, v75);
        }

        goto LABEL_271;
      case 0xB42:
        v33 = *(a3 + 1);
        v34 = *(a3 + 2);
        v35 = *a3;
        if (v33 <= &v34[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v185 = *(a3 + 3);
          if (v185)
          {
            if (v33)
            {
              (*(*v185 + 16))(v185);
              v33 = *(a3 + 1);
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v34 + 1;
          if (v34)
          {
            v36 = *v34;
            if (v36 < 2)
            {
              if (v36)
              {
                IPC::ArgumentCoder<WebCore::ApplePayShippingMethodUpdate,void>::decode(a3, &v195);
                if ((v204 & 1) == 0)
                {
                  v171 = *a3;
                  v172 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v173 = *(a3 + 3);
                  if (!v173 || !v172 || ((*(*v173 + 16))(v173, v171), (v204 & 1) == 0))
                  {
LABEL_267:
                    buf[0] = 0;
                    BYTE8(v218) = 0;
LABEL_179:
                    if (BYTE8(v218) & 1) != 0 || (v142 = *a3, v143 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v144 = *(a3 + 3)) != 0) && v143 && ((*(*v144 + 16))(v144, v142), (BYTE8(v218)))
                    {
                      std::optional<WebCore::ApplePayShippingMethodUpdate>::optional[abi:sn200100](&v195, buf);
                      BYTE8(v204) = 1;
                      if (BYTE8(v218) & 1) == 0 || (v218 & 1) == 0 || (WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v217, v112), WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(buf, v113), (BYTE8(v204)))
                      {
LABEL_183:
                        WebKit::WebPaymentCoordinatorProxy::completeShippingMethodSelection(this, &v195);
                        if ((BYTE8(v204) & 1) == 0 || v204 != 1)
                        {
                          return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                        }

                        WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v114);
                        goto LABEL_214;
                      }
                    }

                    else
                    {
                      LOBYTE(v195) = 0;
                      BYTE8(v204) = 0;
                    }

                    v145 = *a3;
                    v146 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v147 = *(a3 + 3);
                    if (!v147)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    if (!v146)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    (*(*v147 + 16))(v147, v145);
                    if ((BYTE8(v204) & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
                    }

                    goto LABEL_183;
                  }
                }

                WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(buf, &v195);
                *&v38 = 0;
                v39 = v203;
                v203 = v38;
                v217 = v39;
                LOBYTE(v218) = 1;
                BYTE8(v218) = 1;
                if ((v204 & 1) == 0)
                {
                  goto LABEL_179;
                }
              }

              else
              {
                LOBYTE(v195) = 0;
                LOBYTE(v204) = 0;
                std::optional<WebCore::ApplePayShippingMethodUpdate>::optional[abi:sn200100](buf, &v195);
                BYTE8(v218) = 1;
                if (v204 != 1)
                {
                  goto LABEL_179;
                }
              }

              WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v203, v37);
              WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&v195, v111);
              goto LABEL_179;
            }

            goto LABEL_318;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v186 = *(a3 + 3);
        if (v186)
        {
          if (v33)
          {
            (*(*v186 + 16))(v186);
            v35 = *a3;
            v33 = *(a3 + 1);
            goto LABEL_318;
          }
        }

        else
        {
          v33 = 0;
        }

        v35 = 0;
LABEL_318:
        *a3 = 0;
        *(a3 + 1) = 0;
        v187 = *(a3 + 3);
        if (v187 && v33)
        {
          (*(*v187 + 16))(v187, v35);
        }

        goto LABEL_267;
      case 0xB43:
        [objc_loadWeak(this + 12) dismissViewControllerAnimated:1 completion:0];
        objc_storeWeak(this + 12, 0);
        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      case 0xB44:
        IPC::Decoder::decode<WebKit::PaymentSetupConfiguration>(buf, a3);
        if (cf == 1)
        {
          std::__tuple_leaf<0ul,WebKit::PaymentSetupConfiguration,false>::__tuple_leaf[abi:sn200100]<WebKit::PaymentSetupConfiguration,0>(&v195, buf);
          v202 = 1;
          if (cf)
          {
            v15 = v212;
            *&v212 = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v14);
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v211, v14);
            v17 = *&buf[16];
            *&buf[16] = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }

            v18 = *&buf[8];
            *&buf[8] = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v16);
            }

            v19 = *buf;
            *buf = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v16);
            }
          }
        }

        else
        {
          LOBYTE(v195) = 0;
          v202 = 0;
        }

        if (v202)
        {
          goto LABEL_123;
        }

        goto LABEL_226;
      case 0xB45:
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_119;
        }

        v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v29 & 1) == 0)
        {
          goto LABEL_119;
        }

        a3 = v30;
        while (1)
        {
          v31 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v32 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v32 == v31)
          {
            goto LABEL_112;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_112:
        v82 = WTF::fastMalloc(0x18);
        *v82 = &unk_1F10F7A90;
        v82[1] = a3;
        v82[2] = a2;
        v195 = v82;
        if (buf[16])
        {
          WebKit::WebPaymentCoordinatorProxy::openPaymentSetup(this, buf, &buf[8], &v195);
LABEL_117:
          v84 = v195;
          v195 = 0;
          if (v84)
          {
            (*(*v84 + 8))(v84);
          }

LABEL_119:
          if (buf[16] != 1)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
          }

LABEL_164:
          v104 = *&buf[8];
          *&buf[8] = 0;
          if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v104, v29);
          }

          v94 = *buf;
          *buf = 0;
          if (!v94)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
          }
        }

        else
        {
LABEL_225:
          while (1)
          {
            __break(1u);
LABEL_226:
            v86 = *a3;
            v134 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v135 = *(a3 + 3);
            if (!v135)
            {
              break;
            }

            if (!v134)
            {
              break;
            }

            (*(*v135 + 16))(v135, v86);
            if ((v202 & 1) == 0)
            {
              break;
            }

LABEL_123:
            v85 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v86 & 1) == 0)
            {
              break;
            }

            a3 = v85;
            while (1)
            {
              v87 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v88 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v88, v87 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v88 == v87)
              {
                goto LABEL_129;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_129:
            v89 = WTF::fastMalloc(0x18);
            *v89 = &unk_1F10F7AB8;
            v89[1] = a3;
            v89[2] = a2;
            *buf = v89;
            if (v202)
            {
              WebKit::WebPaymentCoordinatorProxy::getSetupFeatures(this, &v195, buf);
              v90 = *buf;
              *buf = 0;
              if (v90)
              {
                (*(*v90 + 8))(v90);
              }

              break;
            }
          }

          if (v202 != 1)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
          }

          v91 = v199[0];
          v199[0] = 0;
          if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v91, v86);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v198, v86);
          v92 = v197;
          v197 = 0;
          if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v92, v29);
          }

          v93 = v196;
          v196 = 0;
          if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v93, v29);
          }

          v94 = v195;
          v195 = 0;
          if (!v94)
          {
            return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
          }
        }

        if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v94, v29);
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
      default:
        v59 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v11 >= 0x107F)
          {
            v131 = 4223;
          }

          else
          {
            v131 = v11;
          }

          v132 = (&IPC::Detail::messageDescriptions)[3 * v131];
          v133 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v132;
          *&buf[12] = 2048;
          *&buf[14] = v133;
          _os_log_error_impl(&dword_19D52D000, v59, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        v60 = *a3;
        v61 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v62 = *(a3 + 3);
        if (v62)
        {
          goto LABEL_94;
        }

        return WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v10);
    }
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a3 + 25);
    if (v12 >= 0x107F)
    {
      v12 = 4223;
    }

    v13 = (&IPC::Detail::messageDescriptions)[3 * v12];
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebPaymentCoordinatorProxy", buf, 0xCu);
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v8)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::WebPaymentCoordinatorProxy::sharedPreferencesForWebProcess(uint64_t this, uint64_t a2)
{
  if (a2 && (v2 = *(a2 + 8)) != 0)
  {
    ++v2[4];
    this = (*(*v2 + 104))(v2);
    v3 = v2[4];
    if (v3)
    {
      v2[4] = v3 - 1;
    }

    else
    {
      this = 290;
      __break(0xC471u);
    }
  }

  else
  {
    *this = 0;
    *(this + 24) = 0;
  }

  return this;
}

uint64_t WebKit::WebPaymentCoordinatorProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, IPC::Decoder **a4)
{
  v70 = *MEMORY[0x1E69E9840];
  WebKit::WebPaymentCoordinatorProxy::sharedPreferencesForWebProcess(v54, *(a1 + 48));
  if (v54[24] == 1 && (v54[8] & 0x80) != 0)
  {
    v14 = (a1 + 40);
    ++*(a1 + 40);
    v15 = *(a3 + 25);
    if (v15 == 4215)
    {
      v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v20 & 1) == 0 || (v15 = v19, v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v22 & 1) == 0))
      {
        buf[0] = 0;
        v69 = 0;
        goto LABEL_62;
      }

      v4 = v21;
      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, &v55);
      if (v58 & 1) != 0 || (v51 = *a3, v52 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v53 = *(a3 + 3)) != 0) && v52 && ((*(*v53 + 16))(v53, v51), (v58))
      {
        IPC::Decoder::decode<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, &v59);
        if (v61 == 1)
        {
          IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest,void>::decode(a3, v62);
          if (v63)
          {
            goto LABEL_17;
          }

          goto LABEL_67;
        }

        buf[0] = 0;
        v69 = 0;
        goto LABEL_33;
      }

      buf[0] = 0;
      v69 = 0;
      while (1)
      {
        if ((v69 & 1) == 0)
        {
LABEL_62:
          v46 = *a3;
          v47 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v48 = *(a3 + 3);
          if (!v48)
          {
            goto LABEL_50;
          }

          if (!v47)
          {
            goto LABEL_50;
          }

          (*(*v48 + 16))(v48, v46);
          if ((v69 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        a3 = *a4;
        *a4 = 0;
        while (1)
        {
          v35 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v36 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v36 == v35)
          {
            goto LABEL_43;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_43:
        v37 = WTF::fastMalloc(0x18);
        *v37 = &unk_1F10F7B30;
        v37[1] = a3;
        v37[2] = a2;
        v62[0] = v37;
        if (v69)
        {
          break;
        }

        do
        {
          __break(1u);
LABEL_67:
          v23 = *a3;
          v49 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v50 = *(a3 + 3);
          if (!v50 || !v49 || ((*(*v50 + 16))(v50, v23), (v63 & 1) == 0))
          {
            buf[0] = 0;
            v69 = 0;
            goto LABEL_21;
          }

LABEL_17:
          ;
        }

        while ((v58 & 1) == 0 || (v61 & 1) == 0);
        *buf = v15;
        *&buf[8] = v4;
        v24 = v55;
        v55 = 0;
        v65 = v56;
        v66 = v57;
        LODWORD(v56) = v56 & 0xFFFFFFFE;
        *&buf[16] = v24;
        v67[0] = v59;
        v25 = v60;
        v59 = 0;
        v60 = 0;
        v67[1] = v25;
        WebCore::ApplePaySessionPaymentRequest::ApplePaySessionPaymentRequest(v68, v62);
        v69 = 1;
        if (v63)
        {
          MEMORY[0x19EB0CAC0](v62);
        }

LABEL_21:
        if (v61)
        {
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v23);
        }

LABEL_33:
        if (v58)
        {
          v34 = v55;
          v55 = 0;
          if (v34)
          {
            if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v23);
            }
          }
        }
      }

      WebKit::WebPaymentCoordinatorProxy::showPaymentUI(a1, *buf, *&buf[8], &buf[16], v67, v68, v62);
      v38 = v62[0];
      v62[0] = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      if (v69)
      {
        MEMORY[0x19EB0CAC0](v68);
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v67, v39);
        v41 = *&buf[16];
        *&buf[16] = 0;
        if (v41)
        {
          if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v40);
          }
        }
      }
    }

    else
    {
      if (v15 != 4214)
      {
        v28 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v15 >= 0x107F)
          {
            v43 = 4223;
          }

          else
          {
            v43 = v15;
          }

          v44 = (&IPC::Detail::messageDescriptions)[3 * v43];
          v45 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v44;
          *&buf[12] = 2048;
          *&buf[14] = v45;
          _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v29 = *a3;
        v30 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v31 = *(a3 + 3);
        if (v31 && v30)
        {
          (*(*v31 + 16))(v31, v29);
        }

        v13 = 0;
        goto LABEL_51;
      }

      v16 = *a4;
      *a4 = 0;
      while (1)
      {
        v17 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v18 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_24;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_24:
      v26 = WTF::fastMalloc(0x18);
      *v26 = &unk_1F10F7B08;
      v26[1] = v16;
      v26[2] = a2;
      *buf = v26;
      WebKit::WebPaymentCoordinatorProxy::canMakePayments(a1, buf);
      v27 = *buf;
      *buf = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

LABEL_50:
    v13 = 1;
LABEL_51:
    WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(v14);
    return v13;
  }

  v9 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a3 + 25);
    if (v32 >= 0x107F)
    {
      v32 = 4223;
    }

    v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebPaymentCoordinatorProxy", buf, 0xCu);
  }

  v10 = *a3;
  v11 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v12 = *(a3 + 3);
  if (v12 && v11)
  {
    (*(*v12 + 16))(v12, v10);
  }

  return 0;
}

void IPC::handleMessage<Messages::WebProcess::SetWebsiteDataStoreParameters,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebProcessDataStoreParameters &&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::WebProcessDataStoreParameters>>(v3, a1);
  if (v4 == 1)
  {
    WebKit::WebProcess::setWebsiteDataStoreParameters(a2, v3);
    if (v4)
    {
      WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(v3);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebProcess::PrewarmWithDomainInformation,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::PrewarmInformation &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::PrewarmInformation>(&v17, a1);
  if (v19)
  {
    *&v5 = 0;
    v14 = v17;
    v6 = v18;
    v17 = v5;
    v18 = v5;
    v15 = v6;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v7);
    v16 = 1;
    result = WebKit::WebProcess::prewarmWithDomainInformation(a2, &v14);
    if (v16)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v9);
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v10);
    }
  }

  else
  {
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsEmptyDocument,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsEmptyDocument(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsSecure,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsSecure(a2, &v5);
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsBypassingContentSecurityPolicy(a2, &v5);
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v6);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::setDomainRelaxationForbiddenForURLScheme(a2, &v6, v4);
    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsDisplayIsolated,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsDisplayIsolated(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCORSEnabled,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, atomic_ullong **a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsCORSEnabled(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCachePartitioned,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsCachePartitioned(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsCanDisplayOnlyIfCanRequest,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsCanDisplayOnlyIfCanRequest(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::RegisterURLSchemeAsWebExtension,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::registerURLSchemeAsWebExtension(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessage<Messages::WebProcess::UpdateStorageAccessUserAgentStringQuirks,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)>(WTF::StringImpl **a1)
{
  result = IPC::Decoder::decode<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(&v3, a1);
  if (v4 == 1)
  {
    result = WebKit::WebProcess::updateStorageAccessUserAgentStringQuirks();
    if (v4)
    {
      result = v3;
      if (v3)
      {
        return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, v2);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebProcess::StartMemorySampler,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::SandboxExtensionHandle &&,WTF::String const&,double)>(IPC::Decoder *a1, WebKit::WebMemorySampler *a2)
{
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, &v24);
  if (v25 & 1) != 0 || ((v14 = *a1, v15 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v16 = *(a1 + 3)) != 0) ? (v17 = v15 == 0) : (v17 = 1), !v17 && ((*(*v16 + 16))(v16, v14), (v25)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v26);
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v4 = IPC::Decoder::decode<unsigned long long>(a1);
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (v25 & 1) != 0 && (v27)
      {
        v6 = v24;
        v24 = 0;
        v21 = v6;
        v22[0] = v26;
        v22[1] = v4;
        v23 = 1;
        v7 = *&v4;
        if (v25)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v24);
        }

        WebKit::WebProcess::startMemorySampler(a2, &v21, v22, v7);
        if (v23)
        {
          v9 = v22[0];
          v22[0] = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v8);
            }
          }

          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v21);
        }

        return;
      }

      __break(1u);
LABEL_30:
      v18 = *a1;
      v19 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v20 = *(a1 + 3);
      if (v20)
      {
        if (v19)
        {
          (*(*v20 + 16))(v20, v18);
          if (v27)
          {
            continue;
          }
        }
      }

      goto LABEL_17;
    }

    if (v27)
    {
      v10 = v26;
      v26 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v5);
        }
      }
    }

LABEL_17:
    if (v25)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v24);
    }
  }

  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
  }
}

void IPC::handleMessage<Messages::WebProcess::BindAccessibilityFrameWithData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v14), (v15) || (v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v15)))
  {
    WebKit::WebProcess::bindAccessibilityFrameWithData(a2, v6, v14[0], v14[1]);
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
    }
  }
}

void IPC::handleMessage<Messages::WebProcess::SetInjectedBundleParameter,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::String,std::span<unsigned char const,18446744073709551615ul>>>(a1, v5);
  if (v6 == 1)
  {
    WebKit::WebProcess::setInjectedBundleParameter(a2, v5, v5[1], v5[2]);
    if (v6)
    {
      v4 = v5[0];
      v5[0] = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }
  }
}

void IPC::handleMessage<Messages::WebProcess::HandleInjectedBundleMessage,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,WebKit::UserData const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::String,WebKit::UserData>>(&v6, a1);
  if (v8 == 1)
  {
    WebKit::WebProcess::handleInjectedBundleMessage(a2, &v6, &v7);
    if (v8)
    {
      v4 = v7;
      v7 = 0;
      if (v4)
      {
        CFRelease(v4[1]);
      }

      v5 = v6;
      v6 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v3);
        }
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::FetchWebsiteData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::MemoryCache *a3)
{
  v6 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F7B80;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebProcess::fetchWebsiteData(a3, v7, &v17);
      result = v17;
      v17 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*result + 16);

      return v16();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteData,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>>(&v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v11 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v9)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F10F7BA8;
      v10[1] = v8;
      v10[2] = a1;
      v12 = v10;
      v17 = a3;
      v16[0] = WebKit::WebProcess::deleteWebsiteData;
      v16[1] = 0;
      v15[0] = &v17;
      v15[1] = v16;
      v15[2] = &v12;
      IPC::callMemberFunction<WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>,void ()(void)>(WebKit::WebProcess *,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&) WebKit::WebProcess::*,std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebProcess &&)#1}::operator()<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>(v15, v13);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteDataForOrigins,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::MemoryCache *a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
  if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

  v3 = v7;
  IPC::VectorArgumentCoder<false,WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v5, &v23, v8);
  if ((v25 & 1) == 0)
  {
    v16 = *v5;
    v17 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    v15 = *(v5 + 24);
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_3:
  v20 = v3;
  v21[0] = v23;
  v10 = v24;
  v23 = 0;
  v24 = 0;
  v21[1] = v10;
  v22 = 1;
  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v5 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F7BD0;
    v15[1] = v5;
    v15[2] = a1;
    v23 = v15;
    if (v22)
    {
      WebKit::WebProcess::deleteWebsiteDataForOrigins(a3, v20, v21, &v23);
      result = v23;
      v23 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

    __break(1u);
LABEL_24:
    if (v17)
    {
      (*(*v15 + 16))(v15, v16);
      if (v25)
      {
        goto LABEL_3;
      }
    }

LABEL_17:
    v20 = 0;
    v22 = 0;
    v12 = *v5;
    v18 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    result = *(v5 + 24);
    if (result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      result = (*(*result + 16))(result, v12);
      if (v22)
      {
        continue;
      }
    }

    break;
  }

  if (v22 == 1)
  {
    return WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v12);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebProcess::DeleteWebsiteDataForOrigin,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::MemoryCache *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
  if ((v6 & 0x100000000) == 0 || (v7 = v6, IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v33), (v39 & 1) == 0) && ((v20 = *a2, v21 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v22 = *(a2 + 3)) == 0) || !v21 || ((*(*v22 + 16))(v22, v20), (v39 & 1) == 0)))
  {
    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      return (*(*result + 16))(result, v23);
    }

    return result;
  }

  LOBYTE(v26[0]) = 0;
  v28 = -1;
  if (v35)
  {
    if (v35 == 255)
    {
      goto LABEL_6;
    }

    *v26 = *v33;
  }

  else
  {
    v9 = *v33;
    v33[0] = 0;
    v33[1] = 0;
    *v26 = v9;
    v27 = v34;
  }

  v28 = v35;
LABEL_6:
  LOBYTE(v29[0]) = 0;
  v31 = -1;
  if (v38)
  {
    if (v38 != 255)
    {
      *v29 = v36;
      v31 = v38;
    }

    v32 = 1;
  }

  else
  {
    *v29 = v36;
    v30 = v37;
    v31 = 0;
    v32 = 1;
    v36 = 0uLL;
  }

  v38 = -1;
  if (!v35)
  {
    v10 = v33[1];
    v33[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v33[0];
    v33[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = result;
  while (1)
  {
    v15 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v16 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_21;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F10F7BF8;
  *(v17 + 1) = v14;
  *(v17 + 2) = a1;
  v33[0] = v17;
  WebKit::WebProcess::deleteWebsiteDataForOrigin(a3, v7, v26, v33);
  result = v33[0];
  v33[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v32)
  {
LABEL_24:
    if (!v31)
    {
      v18 = v29[1];
      v29[1] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v13);
      }

      result = v29[0];
      v29[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v13);
      }
    }

    v31 = -1;
    if (!v28)
    {
      v19 = v26[1];
      v26[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v13);
      }

      result = v26[0];
      v26[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebProcess::ReloadExecutionContextsForOrigin,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ClientOrigin const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v40);
  if ((v46 & 1) == 0)
  {
    v22 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    v25 = !v24 || v23 == 0;
    if (v25 || ((*(*v24 + 16))(v24, v22), (v46 & 1) == 0))
    {
LABEL_59:
      v26 = *a2;
      v27 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v27)
      {
        return (*(*result + 16))(result, v26);
      }

      return result;
    }
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v30);
  if ((v31 & 1) == 0)
  {
    goto LABEL_63;
  }

  do
  {
    if (v46)
    {
      LOBYTE(v32[0]) = 0;
      v34 = -1;
      if (v42)
      {
        if (v42 == 255)
        {
LABEL_7:
          LOBYTE(v35[0]) = 0;
          v37 = -1;
          if (v45)
          {
            if (v45 == 255)
            {
LABEL_10:
              v38 = v30;
              v9 = 1;
              v39 = 1;
              if (v45)
              {
                goto LABEL_17;
              }

              goto LABEL_11;
            }

            *v35 = *v43;
          }

          else
          {
            v8 = *v43;
            v43[0] = 0;
            v43[1] = 0;
            *v35 = v8;
            v36 = v44;
          }

          v37 = v45;
          goto LABEL_10;
        }

        *v32 = *v40;
      }

      else
      {
        v7 = *v40;
        v40[0] = 0;
        v40[1] = 0;
        *v32 = v7;
        v33 = v41;
      }

      v34 = v42;
      goto LABEL_7;
    }

    __break(1u);
LABEL_63:
    v6 = *a2;
    v28 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (!v29)
    {
      break;
    }

    if (!v28)
    {
      break;
    }

    (*(*v29 + 16))(v29, v6);
  }

  while ((v31 & 1) != 0);
  LOBYTE(v32[0]) = 0;
  v39 = 0;
  if ((v46 & 1) == 0)
  {
    goto LABEL_59;
  }

  v9 = 0;
  if (!v45)
  {
LABEL_11:
    v10 = v43[1];
    v43[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
    }

    v11 = v43[0];
    v43[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }
  }

LABEL_17:
  v45 = -1;
  if (v42)
  {
    goto LABEL_23;
  }

  v12 = v40[1];
  v40[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = v40[0];
  v40[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v6);
    if ((v9 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
LABEL_23:
    if ((v9 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_33;
  }

  v16 = result;
  while (1)
  {
    v17 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v18 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_30;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_30:
  v19 = WTF::fastMalloc(0x18);
  *v19 = &unk_1F10F7C20;
  *(v19 + 1) = v16;
  *(v19 + 2) = a1;
  v40[0] = v19;
  WebKit::WebProcess::reloadExecutionContextsForOrigin(a3, v32, v38, *(&v38 + 1), v40);
  result = v40[0];
  v40[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
LABEL_33:
    if (!v37)
    {
      v20 = v35[1];
      v35[1] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v15);
      }

      result = v35[0];
      v35[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v15);
      }
    }

    v37 = -1;
    if (!v34)
    {
      v21 = v32[1];
      v32[1] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v15);
      }

      result = v32[0];
      v32[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::DeleteAllCookies,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F7C48;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebProcess::deleteAllCookies(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::EnsureAutomationSessionProxy,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebProcess::ensureAutomationSessionProxy(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::PrepareToSuspend,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL,WTF::MonotonicTime>>(a2, v13);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v11 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F7C70;
        v10[1] = v8;
        v10[2] = a1;
        v12 = v10;
        v9 = v14;
        if (v14)
        {
          break;
        }

        __break(1u);
      }

      v17 = a3;
      v16[0] = WebKit::WebProcess::prepareToSuspend;
      v16[1] = 0;
      v15[0] = &v17;
      v15[1] = v16;
      v15[2] = &v12;
      IPC::callMemberFunction<WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&),std::tuple<BOOL,WTF::MonotonicTime>,void ()(void)>(WebKit::WebProcess *,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&) WebKit::WebProcess::*,std::tuple<BOOL,WTF::MonotonicTime> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebProcess &&)#1}::operator()<BOOL,WTF::MonotonicTime>(v15, v13[0]);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebProcess::SetInitialGamepads,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t a2, double a3, __n128 a4)
{
  IPC::VectorArgumentCoder<false,std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v18, a4);
  if (v20 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v20)))
  {
    v16[0] = v18;
    v7 = v19;
    v18 = 0;
    v19 = 0;
    v16[1] = v7;
    v17 = 1;
    WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v6);
    WebKit::WebProcess::setInitialGamepads(a2, v16);
    if (v17)
    {
      WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v8);
    }
  }

  else
  {
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebProcess::GamepadConnected,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::GamepadData const&,WebCore::EventMakesGamepadsVisible)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebKit::GamepadData>(&v31, a1);
  if (v37 == 1)
  {
    result = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
    if ((result & 0x100) != 0)
    {
      if ((v37 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      *&v6 = 0;
      v21 = v31;
      v7 = *v32;
      v32[0] = 0;
      v32[1] = 0;
      *v22 = v7;
      v8 = v33[0];
      *&v7 = v33[1];
      *v33 = v6;
      v23 = v8;
      v24 = v7;
      v9 = v34[0];
      *&v7 = v34[1];
      *v34 = v6;
      v25 = v9;
      v26 = v7;
      v10 = v36;
      v36 = 0;
      v27 = v35;
      v28 = v10;
      v29 = result;
      v30 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21) = 0;
    v30 = 0;
    if (v37)
    {
      if (v36)
      {
        WTF::fastFree((v36 - 16), v5);
      }

LABEL_9:
      v11 = v34[0];
      if (v34[0])
      {
        v34[0] = 0;
        LODWORD(v34[1]) = 0;
        WTF::fastFree(v11, v5);
      }

      v12 = v33[0];
      if (v33[0])
      {
        v33[0] = 0;
        LODWORD(v33[1]) = 0;
        WTF::fastFree(v12, v5);
      }

      v13 = v32[1];
      v32[1] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v5);
      }

      v14 = v32[0];
      v32[0] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v5);
      }
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v30 = 0;
  }

  if (v30)
  {
    result = WebKit::WebProcess::gamepadConnected(a2, &v21, v29);
    if (v30)
    {
      if (v28)
      {
        WTF::fastFree((v28 - 16), v15);
      }

      v16 = v25;
      if (v25)
      {
        v25 = 0;
        LODWORD(v26) = 0;
        WTF::fastFree(v16, v15);
      }

      v17 = v23;
      if (v23)
      {
        v23 = 0;
        LODWORD(v24) = 0;
        WTF::fastFree(v17, v15);
      }

      v18 = v22[1];
      v22[1] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }

      result = v22[0];
      v22[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v20)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::WebProcess::EstablishRemoteWorkerContextConnectionToNetworkProcess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPreferencesStore const&,WebCore::Site &&,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebKit::RemoteWorkerInitializationData &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, atomic_ullong **a3)
{
  v8 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v10 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a2);
  if ((v10 & 0x100) == 0 || (v3 = v10, v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8), (v12 & 1) == 0) || (v4 = v11, v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8), (v14 & 1) == 0) || (v6 = v13, v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8), (v18 & 1) == 0))
  {
    v63 = 0;
    v82 = 0;
    goto LABEL_54;
  }

  v5 = v15;
  IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode(v8, v48, v16, v17);
  if (v55 & 1) != 0 || (v37 = *v8, v38 = *(v8 + 1), *v8 = 0, *(v8 + 1) = 0, (v39 = *(v8 + 3)) != 0) && v38 && ((*(*v39 + 16))(v39, v37), (v55))
  {
    IPC::ArgumentCoder<WebCore::Site,void>::decode(v8, &v56);
    if (v58)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v63 = 0;
  v82 = 0;
  while (1)
  {
    if ((v82 & 1) == 0)
    {
LABEL_54:
      v30 = *v8;
      v40 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      result = *(v8 + 3);
      if (!result)
      {
        goto LABEL_39;
      }

      if (!v40)
      {
        goto LABEL_39;
      }

      result = (*(*result + 16))(result, v30);
      if ((v82 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
    if ((v30 & 1) == 0)
    {
      goto LABEL_39;
    }

    v8 = result;
    while (1)
    {
      v31 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v32 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v32 == v31)
      {
        goto LABEL_36;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_36:
    v33 = WTF::fastMalloc(0x18);
    *v33 = &unk_1F10F7C98;
    *(v33 + 1) = v8;
    *(v33 + 2) = a1;
    v48[0] = v33;
    if (v82)
    {
      break;
    }

    do
    {
      __break(1u);
LABEL_59:
      v41 = *v8;
      v42 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      v43 = *(v8 + 3);
      if (!v43 || !v42 || ((*(*v43 + 16))(v43, v41), (v58 & 1) == 0))
      {
        v63 = 0;
        v82 = 0;
        goto LABEL_24;
      }

LABEL_7:
      IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(v8, &v83);
      if ((v86 & 1) == 0)
      {
        v26 = *v8;
        v44 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v45 = *(v8 + 3);
        if (!v45)
        {
          goto LABEL_66;
        }

        if (!v44)
        {
          goto LABEL_66;
        }

        (*(*v45 + 16))(v45, v26);
        if ((v86 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      IPC::ArgumentCoder<WebKit::RemoteWorkerInitializationData,void>::decode(v8, &v59);
      if ((v62 & 1) == 0)
      {
        v26 = *v8;
        v46 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v47 = *(v8 + 3);
        if (v47 && v46)
        {
          (*(*v47 + 16))(v47, v26);
        }

LABEL_66:
        v63 = 0;
        v82 = 0;
        goto LABEL_17;
      }
    }

    while ((v55 & 1) == 0 || (v58 & 1) == 0 || (v86 & 1) == 0);
    v63 = v3;
    v64 = v4;
    v65 = v6;
    v20 = v48[0];
    v21 = v48[1];
    *v48 = 0u;
    v66 = v5;
    v67 = v20;
    v68 = v21;
    LODWORD(v20) = v49;
    v49 = 0;
    v69 = v20;
    LOBYTE(v20) = v50;
    v50 = 0;
    v70 = v20;
    v71 = v51;
    v22 = v52;
    v51 = 0;
    v52 = 0;
    v72 = v22;
    LODWORD(v20) = v53;
    v53 = 0;
    v73 = v20;
    LOBYTE(v20) = v54;
    v54 = 0;
    v74 = v20;
    v23 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
    }

    v75 = v23;
    v24 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
    }

    v76 = v24;
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v80 = v59;
    v81[0] = v60;
    v25 = v61;
    v60 = 0;
    v61 = 0;
    v81[1] = v25;
    v82 = 1;
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v19);
LABEL_17:
    if (v58)
    {
      v27 = v57;
      v57 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v26);
      }

      v28 = v56;
      v56 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
      }
    }

LABEL_24:
    if (v55)
    {
      if (v51)
      {
        WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v51, v52);
      }

      if (v48[0])
      {
        WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v48[0], LODWORD(v48[1]));
      }
    }
  }

  v83 = v77;
  v84 = v78;
  v85 = v79;
  WebKit::WebProcess::establishRemoteWorkerContextConnectionToNetworkProcess(a3, v63, v64, v65, v66, &v67, &v75, &v83, &v80, v48);
  result = v48[0];
  v48[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_39:
  if (v82 == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v81, v30);
    v35 = v76;
    v76 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    v36 = v75;
    v75 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v34);
    }

    if (v71)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v71, v72);
    }

    result = v67;
    if (v67)
    {
      return WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v67, v68);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::RegisterServiceWorkerClients,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, atomic_ullong **a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F7CC0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebProcess::registerServiceWorkerClients(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::SetIsInProcessCache,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WTF *a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL>>(a2);
  if ((result & 0x100) != 0)
  {
    v7 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = result;
      while (1)
      {
        v10 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F7CE8;
      v11[1] = v9;
      v11[2] = a1;
      v13 = v11;
      WebKit::WebProcess::setIsInProcessCache(a3, v7 & 1, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::GetActivePagesOriginsForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F7D10;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebProcess::getActivePagesOriginsForTesting(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::SetScreenProperties,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ScreenProperties const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ScreenProperties>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::setScreenProperties(a2, &v5);
    if (v7)
    {
      result = v6;
      if (v6)
      {
        return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v6, v4);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::IsJITEnabled,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F7D38;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebProcess::isJITEnabled(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::SetMediaMIMETypes,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>(IPC::Decoder *a1, WebCore::AVAssetMIMETypeCache *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, &v7);
  if (v9 == 1)
  {
    v10[0] = v7;
    v4 = v8;
    v7 = 0;
    v8 = 0;
    v10[1] = v4;
    WebKit::WebProcess::setMediaMIMETypes(a2, v10);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v5);
    if (v9)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v6);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::SetMockMediaDeviceIsEphemeral,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,BOOL)>(IPC::Decoder *a1, WebKit::GPUProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,BOOL>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::GPUProcess::setMockMediaDeviceIsEphemeral(a2, &v5, v6);
    if (v7)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WebKit::SandboxExtension *IPC::handleMessage<Messages::WebProcess::GrantUserMediaDeviceSandboxExtensions,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::MediaDeviceSandboxExtensions &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::MediaDeviceSandboxExtensions,void>::decode(a1, &v22);
  if (v25 & 1) != 0 || ((v12 = *a1, v13 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v14 = *(a1 + 3)) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v25)))
  {
    v4 = v22;
    v22 = 0u;
    v18 = v4;
    v5 = v23;
    v23 = 0;
    v19 = v5;
    v6 = v24;
    v24 = 0u;
    v20 = v6;
    v21 = 1;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v24 + 1);
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v7);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v8);
    result = WebKit::WebProcess::grantUserMediaDeviceSandboxExtensions(a2, &v18);
    if (v21)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v20 + 1);
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
    }
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v17)
    {
      return (*(*result + 16))(result, v16);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::RevokeUserMediaDeviceSandboxExtensions,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, WTF *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v6);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::revokeUserMediaDeviceSandboxExtensions(a2, v6, v4);
    if (v7)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebProcess::ClearCachedPage,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::BackForwardCache *a3)
{
  IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, v15);
  if (v16 & 1) != 0 || ((v11 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v13 = v12 == 0) : (v13 = 1), !v13 && (result = (*(*result + 16))(result, v11), (v16)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F7D60;
      result[1] = v8;
      result[2] = a1;
      v14 = result;
      if (v16)
      {
        WebKit::WebProcess::clearCachedPage(a3, v15[0], v15[1], &v14);
        result = v14;
        v14 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebProcess::SeedResourceLoadStatisticsForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::ResourceLoadObserver *a3)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v37);
  if ((v38 & 1) == 0)
  {
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      (*(*v23 + 16))(v23, v21);
    }

    goto LABEL_33;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v39);
  if (v40)
  {
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = *a2;
    if (v7 <= &v8[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v29 = *(a2 + 3);
      if (v29)
      {
        if (v7)
        {
          (*(*v29 + 16))(v29);
          v7 = *(a2 + 1);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v8 + 1;
      if (v8)
      {
        v3 = *v8;
        if (v3 < 2)
        {
          v10 = v37;
          v37 = 0;
          v33 = v10;
          v34 = v39;
          v35 = v3;
          v11 = 1;
          v36 = 1;
          goto LABEL_7;
        }

        goto LABEL_47;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30)
    {
      if (v7)
      {
        (*(*v30 + 16))(v30);
        v9 = *a2;
        v7 = *(a2 + 1);
LABEL_47:
        *a2 = 0;
        *(a2 + 1) = 0;
        v31 = *(a2 + 3);
        if (v31 && v7)
        {
          (*(*v31 + 16))(v31, v9);
        }

        LOBYTE(v33) = 0;
        v32 = v39;
        v36 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v9);
        }

        v11 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    goto LABEL_47;
  }

  v9 = *a2;
  v27 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (v28 && v27)
  {
    (*(*v28 + 16))(v28, v9);
  }

  v11 = 0;
  LOBYTE(v33) = 0;
  v36 = 0;
LABEL_7:
  v12 = v37;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_33:
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v25)
    {
      v26 = *(*result + 16);

      return v26();
    }

    return result;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = v13;
  while (1)
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
  v18 = WTF::fastMalloc(0x18);
  *v18 = &unk_1F10F7D88;
  *(v18 + 1) = v15;
  *(v18 + 2) = a1;
  v39 = v18;
  WebKit::WebProcess::seedResourceLoadStatisticsForTesting(a3, &v33, &v34, v3 & 1, &v39);
  result = v39;
  v39 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v36)
  {
LABEL_19:
    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v14);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::SetThirdPartyCookieBlockingMode,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebProcess *a3)
{
  v6 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a2);
  if ((v6 & 0x100) != 0)
  {
    v7 = v6;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F7DB0;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebProcess::setThirdPartyCookieBlockingMode(a3, v7, &v17);
      result = v17;
      v17 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*result + 16);

      return v16();
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessage<Messages::WebProcess::SetDomainsWithUserInteraction,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(WTF::StringImpl *a1, WebCore::ResourceLoadObserver *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::WebProcess::setDomainsWithUserInteraction(a2);
    if (v6)
    {
      result = v5;
      if (v5)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, v4);
      }
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessageAsync<Messages::WebProcess::SetDomainsWithCrossPageStorageAccess,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v15 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 2))(result, v7), (v15)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F7DD8;
      result[1] = v8;
      result[2] = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebProcess::setDomainsWithCrossPageStorageAccess(a3, &v14, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 1))(result);
      }
    }
  }

  if (v15 == 1)
  {
    result = v14;
    if (v14)
    {
      return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v14, v7);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::SendResourceLoadStatisticsDataImmediately,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::ResourceLoadObserver *a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v8)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F10F7E00;
    v9[1] = v7;
    v9[2] = a1;
    v11 = v9;
    WebKit::WebProcess::sendResourceLoadStatisticsDataImmediately(a3);
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessage<Messages::WebProcess::UpdateDomainsWithStorageAccessQuirks,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(WTF::StringImpl *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(a1, &v6);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::updateDomainsWithStorageAccessQuirks(a2, &v6, v4);
    if (v7)
    {
      result = v6;
      if (v6)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v5);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::UpdateScriptTrackingPrivacyFilter,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::ScriptTrackingPrivacyRules &&)>(IPC::Decoder *a1, WebKit::ScriptTrackingPrivacyFilter *a2)
{
  IPC::Decoder::decode<std::tuple<WebKit::ScriptTrackingPrivacyRules>>(v5, a1);
  if (v6 == 1)
  {
    WebKit::WebProcess::updateScriptTrackingPrivacyFilter(a2, v5);
  }

  return std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(v5, v3);
}

uint64_t IPC::handleMessage<Messages::WebProcess::GrantAccessToAssetServices,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, void *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, a2, v5);
  if (v6 == 1)
  {
    result = WebKit::WebProcess::grantAccessToAssetServices(a2, v5);
    if (v6)
    {
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::SwitchFromStaticFontRegistryToUserFontRegistry,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, void *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, a2, v5);
  if (v6 == 1)
  {
    result = WebKit::WebProcess::switchFromStaticFontRegistryToUserFontRegistry(a2, v5);
    if (v6)
    {
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebProcess::UnblockServicesRequiredByAccessibility,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, void *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, a2, v4);
  if (v5 == 1)
  {
    WebKit::WebProcess::unblockServicesRequiredByAccessibility(a2, v4);
    if (v5)
    {
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v3);
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::DidWriteToPasteboardAsynchronously,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = WebKit::WebProcess::didWriteToPasteboardAsynchronously(a2, &v10, v4);
    if (v11)
    {
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
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebProcess::SetMediaAccessibilityPreferences,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::setMediaAccessibilityPreferences(a2);
    if (v7)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebProcess::ReleaseMemory,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v8)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F10F7E28;
    v9[1] = v7;
    v9[2] = a1;
    v11 = v9;
    WebKit::WebProcess::releaseMemory(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebProcess::PostNotification,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,std::optional<unsigned long long>)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,std::optional<unsigned long long>>>(v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebProcess::postNotification(a2, v5, v5[1], v6);
    if (v7)
    {
      result = v5[0];
      v5[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebProcess::PostObserverNotification,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    WebKit::WebProcess::postObserverNotification(a2, &v10);
    if (v11)
    {
      v5 = v10;
      v10 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebProcess::GetNotifyStateForTesting,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, int a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v15 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v15)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F7E50;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebProcess::getNotifyStateForTesting(a3, &v14, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
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

uint64_t IPC::handleMessage<Messages::WebProcess::SetResourceMonitorContentRuleList,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebCompiledContentRuleListData &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebKit::WebCompiledContentRuleListData>>(v5, a1);
  if (v6 == 1)
  {
    WebKit::WebProcess::setResourceMonitorContentRuleList(a2, v5);
  }

  return std::optional<WebKit::WebCompiledContentRuleListData>::~optional(v5, v3);
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebProcess::SetResourceMonitorContentRuleListAsync,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::WebCompiledContentRuleListData &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebKit::WebCompiledContentRuleListData>>(&v15, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F7E78;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::WebProcess::setResourceMonitorContentRuleListAsync(a3, &v15, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v13);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebProcess::RegisterAdditionalFonts,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WebKit::AdditionalFonts &&)>(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AdditionalFonts,void>::decode(a1, &v16);
  if (v18)
  {
    v14[0] = v16;
    v5 = v17;
    v16 = 0;
    v17 = 0;
    v14[1] = v5;
    v15 = 1;
    WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
    WebKit::WebProcess::registerAdditionalFonts(a2, v14);
    if (v15)
    {
      WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v6);
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = a1[3];
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      (*(*v9 + 16))(v9, v7);
    }

    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12 && v11)
    {
      v13 = *(*v12 + 16);

      v13();
    }
  }
}

void *IPC::handleMessage<Messages::WebProcess::RegisterFontMap,IPC::Connection,WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::CrashOnOverflow>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&<WebKit::SandboxExtensionHandle,0ul,WTF::Vector,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    *this = 0;
    *(this + 1) = 0;
    v55 = *(this + 3);
    if (v55)
    {
      if (v4)
      {
        (*(*v55 + 16))(v55);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_110;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_110:
    *this = 0;
    *(this + 1) = 0;
    v56 = *(this + 3);
    if (v56 && v4)
    {
      (*(*v56 + 16))(v56);
    }

    goto LABEL_70;
  }

  v10 = *v5;
  v62 = 0;
  if (v10)
  {
    v11 = 0;
LABEL_9:
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(this, &v66);
    if ((v67 & 1) == 0)
    {
      v13 = *this;
      v37 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v38 = *(this + 3);
      if (!v38 || v37 == 0)
      {
        goto LABEL_68;
      }

      (*(*v38 + 16))(v38, v13);
      if ((v67 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v12 = IPC::ArgumentCoder<WTF::URL,void>::decode(this, &v58);
    if ((v61 & 1) == 0)
    {
      v13 = *this;
      v35 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v36 = *(this + 3);
      if (!v36)
      {
        goto LABEL_64;
      }

      if (!v35)
      {
        goto LABEL_64;
      }

      v12 = (*(*v36 + 16))(v36, v13);
      if ((v61 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if (v67)
    {
      if (v66 + 1 < 2)
      {
LABEL_92:
        v49 = v58;
        v58 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v13);
        }

        goto LABEL_64;
      }

      v15 = v62;
      if (v62 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v62), (v15 = v62) != 0))
      {
        v16 = *(v15 - 2);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v66 + 4);
      if (v17 < 0x100)
      {
        v18 = WTF::StringImpl::hashSlowCase(v66);
      }

      else
      {
        v18 = v17 >> 8;
      }

      v19 = 0;
      for (i = 1; ; ++i)
      {
        v21 = v18 & v16;
        v22 = &v15[6 * (v18 & v16)];
        v23 = *v22;
        if (*v22 == -1)
        {
          v19 = &v15[6 * v21];
        }

        else
        {
          if (!v23)
          {
            if (v19)
            {
              *(v19 + 1) = 0u;
              *(v19 + 2) = 0u;
              *v19 = 0u;
              --*(v15 - 4);
              v22 = v19;
            }

            v24 = v66;
            v66 = 0;
            v25 = *v22;
            *v22 = v24;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v13);
            }

            v26 = v58;
            v58 = 0;
            v63 = v26;
            v64 = v59;
            v65 = v60;
            LODWORD(v59) = v59 & 0xFFFFFFFE;
            WTF::URL::operator=((v22 + 1), &v63);
            v28 = v63;
            v63 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v27);
            }

            v29 = v62;
            if (v62)
            {
              v30 = *(v62 - 3) + 1;
            }

            else
            {
              v30 = 1;
            }

            *(v62 - 3) = v30;
            v31 = (*(v29 - 4) + v30);
            v32 = *(v29 - 1);
            if (v32 > 0x400)
            {
              if (v32 <= 2 * v31)
              {
LABEL_38:
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v62);
              }
            }

            else if (3 * v32 <= 4 * v31)
            {
              goto LABEL_38;
            }

            if (v61 == 1)
            {
              v33 = v58;
              v58 = 0;
              if (v33)
              {
                if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v27);
                }
              }
            }

            if (v67 == 1)
            {
              v34 = v66;
              v66 = 0;
              if (v34)
              {
                if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v27);
                }
              }
            }

            if (++v11 == v10)
            {
              v50 = v62;
              v2 = a2;
              goto LABEL_75;
            }

            goto LABEL_9;
          }

          if (WTF::equal(v23, v66, v14))
          {
            if (v61)
            {
              goto LABEL_92;
            }

LABEL_64:
            if (v67 == 1)
            {
              v40 = v66;
              v66 = 0;
              if (v40)
              {
                if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v40, v13);
                }
              }
            }

LABEL_68:
            if (v62)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v62, v13);
            }

LABEL_70:
            v13 = *this;
            v14 = *(this + 1);
            *this = 0;
            *(this + 1) = 0;
            v12 = *(this + 3);
            if (!v12)
            {
LABEL_71:
              v41 = *this;
              v42 = *(this + 1);
              *this = 0;
              *(this + 1) = 0;
              result = *(this + 3);
              if (result)
              {
                if (v42)
                {
                  return (*(*result + 16))(result, v41);
                }
              }

              return result;
            }

LABEL_96:
            if (v14)
            {
              (*(*v12 + 16))(v12, v13);
            }

            goto LABEL_71;
          }
        }

        v18 = i + v21;
      }
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v50 = 0;
LABEL_75:
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(this, &v66);
  if (v67 & 1) != 0 || (v13 = *this, v51 = *(this + 1), *this = 0, *(this + 1) = 0, (v52 = *(this + 3)) != 0) && v51 && ((*(*v52 + 16))(v52, v13), (v67))
  {
    v12 = IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(this, v13, &v63);
    if (BYTE8(v64) & 1) != 0 || (v13 = *this, v53 = *(this + 1), *this = 0, *(this + 1) = 0, (v54 = *(this + 3)) != 0) && v53 && (v12 = (*(*v54 + 16))(v54, v13), (BYTE8(v64)))
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_95;
      }

      v44 = v66;
      v66 = 0;
      v58 = v50;
      *&v59 = v44;
      *(&v59 + 1) = v63;
      v45 = v64;
      v63 = 0;
      *&v64 = 0;
      *&v60 = v45;
      v46 = 1;
      BYTE8(v60) = 1;
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v13);
      v50 = 0;
    }

    else
    {
      v46 = 0;
      LOBYTE(v58) = 0;
      BYTE8(v60) = 0;
    }

    if ((v67 & 1) != 0 && v66)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v66, v13);
    }
  }

  else
  {
    v46 = 0;
    LOBYTE(v58) = 0;
    BYTE8(v60) = 0;
  }

  if (v50)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v50, v13);
    if ((BYTE8(v60) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v46 & 1) == 0)
  {
    goto LABEL_71;
  }

  result = WebKit::WebProcess::registerFontMap(v2, &v58, &v59, &v59 + 8);
  if (BYTE8(v60))
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59 + 8, v47);
    if (v59)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v59, v48);
    }

    result = v58;
    if (v58)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v58, v48);
    }
  }

  return result;
}

void WebKit::WebProcessPool::didReceiveMessage(CFTypeRef *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = *(WebKit::WebProcessPool::webProcessProxyFromConnection(this, a2) + 1104);
  CFRetain(this[1]);
  v7 = *(a3 + 25);
  if (v7 > 0xB51)
  {
    switch(v7)
    {
      case 0xB52u:
        if ((v6 & 0x800000000) != 0)
        {
          WebKit::WebProcessPool::startedUsingGamepads(this, a2);
          goto LABEL_99;
        }

        v14 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
LABEL_40:
          v25 = *a3;
          v26 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v27 = *(a3 + 3);
          if (v27)
          {
            if (v26)
            {
              (*(*v27 + 16))(v27, v25);
            }
          }

          goto LABEL_99;
        }

        *buf = 136315138;
        *&buf[4] = "WebProcessPool_StartedUsingGamepads";
        v15 = "Message %s received by a disabled message endpoint";
        break;
      case 0xB53u:
        if ((v6 & 0x800000000) != 0)
        {
          IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_59;
        }

        v14 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *buf = 136315138;
        *&buf[4] = "WebProcessPool_StopGamepadEffects";
        v15 = "Message %s received by a disabled message endpoint";
        break;
      case 0xB54u:
        if ((v6 & 0x800000000) != 0)
        {
          v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v29 & 1) == 0)
          {
            goto LABEL_99;
          }

          v30 = v28;
          while (1)
          {
            v31 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v32 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v32 == v31)
            {
              goto LABEL_65;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_65:
          v47 = WTF::fastMalloc(0x18);
          *v47 = &unk_1F10F7EA0;
          v47[1] = v30;
          v47[2] = a2;
          *buf = v47;
          WebKit::WebProcessPool::stoppedUsingGamepads(this, a2, buf);
          v48 = *buf;
          *buf = 0;
          if (v48)
          {
            (*(*v48 + 8))(v48);
          }

          goto LABEL_98;
        }

        v14 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *buf = 136315138;
        *&buf[4] = "WebProcessPool_StoppedUsingGamepads";
        v15 = "Message %s received by a disabled message endpoint";
        break;
      default:
        goto LABEL_27;
    }

LABEL_38:
    v23 = v14;
    v24 = 12;
LABEL_39:
    _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, v15, buf, v24);
    goto LABEL_40;
  }

  if (v7 == 2895)
  {
    IPC::Decoder::decode<std::tuple<WTF::String,WebKit::UserData>>(buf, a3);
    if (buf[16] == 1)
    {
      WebKit::WebProcessPool::handleMessage(this, a2, buf, &buf[8]);
      if (buf[16])
      {
        v17 = *&buf[8];
        *&buf[8] = 0;
        if (v17)
        {
          CFRelease(*(v17 + 8));
        }

        v18 = *buf;
        *buf = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v16);
        }
      }
    }

    goto LABEL_99;
  }

  if (v7 == 2896)
  {
    if ((v6 & 0x800000000) == 0)
    {
      v14 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315138;
      *&buf[4] = "WebProcessPool_PlayGamepadEffect";
      v15 = "Message %s received by a disabled message endpoint";
      goto LABEL_38;
    }

    v33 = *(a3 + 1);
    v34 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v35 = v34 - *a3;
    v12 = v33 >= v35;
    v36 = v33 - v35;
    if (!v12 || v36 <= 3)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v71 = *(a3 + 3);
      if (v71)
      {
        if (v33)
        {
          (*(*v71 + 16))(v71);
          v33 = *(a3 + 1);
        }
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_121;
    }

    *(a3 + 2) = v34 + 1;
    if (!v34)
    {
LABEL_121:
      *a3 = 0;
      *(a3 + 1) = 0;
      v72 = *(a3 + 3);
      if (v72 && v33)
      {
        (*(*v72 + 16))(v72);
      }

      goto LABEL_109;
    }

    v38 = *v34;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v73);
    if ((v74 & 1) == 0)
    {
      v63 = *a3;
      v64 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v65 = *(a3 + 3);
      if (!v65 || !v64 || ((*(*v65 + 16))(v65, v63), (v74 & 1) == 0))
      {
LABEL_109:
        v66 = *a3;
        v67 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v68 = *(a3 + 3);
        if (v68 && v67)
        {
          (*(*v68 + 16))(v68, v66);
        }

        goto LABEL_98;
      }
    }

    v39 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a3);
    v41 = v39;
    if ((v39 & 0x100) != 0)
    {
      IPC::ArgumentCoder<WebCore::GamepadEffectParameters,void>::decode(a3, v75);
      if (v76)
      {
        if ((v74 & 1) == 0)
        {
          while (1)
          {
            __break(1u);
LABEL_102:
            v44 = *a3;
            v59 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v60 = *(a3 + 3);
            if (!v60)
            {
              break;
            }

            if (!v59)
            {
              break;
            }

            (*(*v60 + 16))(v60, v44);
            if ((buf[16] & 1) == 0)
            {
              break;
            }

LABEL_59:
            v43 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v44 & 1) == 0)
            {
              break;
            }

            a3 = v43;
            while (1)
            {
              v45 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v46 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v46 == v45)
              {
                goto LABEL_68;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_68:
            v49 = WTF::fastMalloc(0x18);
            *v49 = &unk_1F10F7EF0;
            v49[1] = a3;
            v49[2] = a2;
            *&v75[0] = v49;
            if (buf[16])
            {
              WebKit::WebProcessPool::stopGamepadEffects(this);
              v50 = *&v75[0];
              *&v75[0] = 0;
              if (v50)
              {
                (*(*v50 + 8))(v50);
              }

              break;
            }
          }

          if (buf[16] == 1)
          {
            v51 = *&buf[8];
            *&buf[8] = 0;
            if (v51)
            {
              if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_98;
        }

        *buf = v38;
        v38 = v73;
        v73 = 0;
        *&buf[8] = v38;
        buf[16] = v41;
        v78 = v75[0];
        v79 = v75[1];
        v42 = 1;
        v80 = v75[2];
      }

      else
      {
        v40 = *a3;
        v61 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v62 = *(a3 + 3);
        if (v62 && v61)
        {
          (*(*v62 + 16))(v62, v40);
        }

        v42 = 0;
        buf[0] = 0;
      }

      v81 = v42;
    }

    else
    {
      v42 = 0;
      buf[0] = 0;
      v81 = 0;
    }

    if (v74)
    {
      v52 = v73;
      v73 = 0;
      if (v52)
      {
        if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v40);
        }
      }
    }

    if ((v42 & 1) == 0)
    {
      goto LABEL_109;
    }

    v53 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v44 & 1) == 0)
    {
      goto LABEL_94;
    }

    v54 = v53;
    while (1)
    {
      v55 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v56 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v56, v55 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v56 == v55)
      {
        goto LABEL_90;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_90:
    v57 = WTF::fastMalloc(0x18);
    *v57 = &unk_1F10F7EC8;
    v57[1] = v54;
    v57[2] = a2;
    *&v75[0] = v57;
    WebKit::WebProcessPool::playGamepadEffect(this);
    v58 = *&v75[0];
    *&v75[0] = 0;
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }

    if (v81)
    {
      v38 = *&buf[8];
LABEL_94:
      *&buf[8] = 0;
      if (!v38 || atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_98;
      }

      v51 = v38;
LABEL_97:
      WTF::StringImpl::destroy(v51, v44);
    }

LABEL_98:
    if (!this)
    {
      return;
    }

    goto LABEL_99;
  }

  if (v7 != 2897)
  {
LABEL_27:
    v19 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    if (v7 >= 0x107F)
    {
      v20 = 4223;
    }

    else
    {
      v20 = v7;
    }

    v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
    v22 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v22;
    v15 = "Unhandled message %s to %llu";
    v23 = v19;
    v24 = 22;
    goto LABEL_39;
  }

  IPC::Decoder::decode<WTF::Seconds>(a3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_40;
  }

  v9 = *(a3 + 1);
  v10 = (*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 - *a3;
  v12 = v9 >= v11;
  v13 = v9 - v11;
  if (!v12 || v13 <= 7)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v69 = *(a3 + 3);
    if (v69)
    {
      if (v9)
      {
        (*(*v69 + 16))(v69);
        v9 = *(a3 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_116;
  }

  *(a3 + 2) = v10 + 8;
  if (!v10)
  {
LABEL_116:
    *a3 = 0;
    *(a3 + 1) = 0;
    v70 = *(a3 + 3);
    if (v70 && v9)
    {
      (*(*v70 + 16))(v70);
    }

    goto LABEL_40;
  }

  WTF::isIntegralOrPointerType(this);
LABEL_99:
  CFRelease(this[1]);
}

BOOL WebKit::WebProcessPool::didReceiveSyncMessage(CFTypeRef *a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  CFRetain(a1[1]);
  v8 = *(a3 + 25);
  if (v8 != 4216)
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v22 = 4223;
      }

      else
      {
        v22 = v8;
      }

      v23 = (&IPC::Detail::messageDescriptions)[3 * v22];
      v24 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
    }

    v13 = *a3;
    v14 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v15 = *(a3 + 3);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
    }

LABEL_22:
    CFRelease(a1[1]);
    return v8 == 4216;
  }

  IPC::Decoder::decode<std::tuple<WTF::String,WebKit::UserData>>(buf, a3);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = *a4;
  *a4 = 0;
  while (1)
  {
    v10 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v11 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_12:
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F10F7F18;
  v16[1] = v9;
  v16[2] = a2;
  v25 = v16;
  if ((buf[16] & 1) == 0)
  {
    __break(1u);
  }

  WebKit::WebProcessPool::handleSynchronousMessage(a1, a2, buf, &buf[8], &v25);
  v18 = v25;
  v25 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (buf[16])
  {
    v19 = *&buf[8];
    *&buf[8] = 0;
    if (v19)
    {
      CFRelease(*(v19 + 8));
    }

    v20 = *buf;
    *buf = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }
  }

  if (a1)
  {
    goto LABEL_22;
  }

  return v8 == 4216;
}

uint64_t WebKit::WebProcessProxy::didReceiveSyncMessage(atomic_uint *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v12 = a1 + 4;
  atomic_fetch_add(a1 + 4, 1u);
  v13 = *(a3 + 50);
  if (v13 <= 0x107A)
  {
    if (v13 == 4217)
    {
      v29 = *a4;
      *a4 = 0;
      while (1)
      {
        v30 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v31 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v31 == v30)
        {
          goto LABEL_31;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_31:
      v32 = WTF::fastMalloc(0x18);
      *v32 = &unk_1F10F7FE0;
      v32[1] = v29;
      v32[2] = a2;
      *buf = v32;
      WebKit::WebProcessProxy::getNetworkProcessConnection(a1, buf);
      v33 = *buf;
      *buf = 0;
      if (v33)
      {
        goto LABEL_32;
      }

      goto LABEL_63;
    }

    if (v13 != 4218)
    {
      goto LABEL_35;
    }

    IPC::Decoder::decode<std::tuple<WebCore::CryptoKeyData>>(buf, a3);
    if (v60 != 1)
    {
      goto LABEL_63;
    }

    v17 = *a4;
    *a4 = 0;
    while (1)
    {
      v18 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v19 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_52;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_52:
    v45 = WTF::fastMalloc(0x18);
    *v45 = &unk_1F10F8030;
    v45[1] = v17;
    v45[2] = a2;
    v52 = v45;
    if ((v60 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::WebProcessProxy::serializeAndWrapCryptoKey(a1, buf, &v52);
    v46 = v52;
    v52 = 0;
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    if ((v60 & 1) == 0)
    {
      goto LABEL_63;
    }

    if (v59 == 1)
    {
      v47 = v58;
      v58 = 0;
      if (v47)
      {
        if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v42);
        }
      }
    }

    if (v57 == 1)
    {
      WebCore::JsonWebKey::~JsonWebKey(v55, v42);
    }

    if (v54 != 1)
    {
      goto LABEL_63;
    }

    v44 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_63;
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    goto LABEL_50;
  }

  if (v13 != 4221)
  {
    if (v13 != 4220)
    {
      if (v13 == 4219)
      {
        v14 = *a4;
        *a4 = 0;
        while (1)
        {
          v15 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v16 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v15)
          {
            goto LABEL_34;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_34:
        v34 = WTF::fastMalloc(0x18);
        *v34 = &unk_1F10F7FB8;
        v34[1] = v14;
        v34[2] = a2;
        *buf = v34;
        WebKit::WebProcessProxy::shouldTerminate(a1, buf);
        goto LABEL_42;
      }

LABEL_35:
      if ((WebKit::WebProcessProxy::dispatchSyncMessage(a1, a2, a3, a4) & 1) == 0)
      {
        v35 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v49 = *(a3 + 50);
          if (v49 >= 0x107F)
          {
            v49 = 4223;
          }

          v50 = (&IPC::Detail::messageDescriptions)[3 * v49];
          v51 = *(a3 + 56);
          *buf = 136315394;
          *&buf[4] = v50;
          *&buf[12] = 2048;
          *&buf[14] = v51;
          _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v36 = *a3;
        v37 = *(a3 + 8);
        *a3 = 0;
        *(a3 + 8) = 0;
        v38 = *(a3 + 24);
        if (v38 && v37)
        {
          (*(*v38 + 16))(v38, v36);
        }

        v39 = 0;
        if (a1)
        {
          goto LABEL_64;
        }

        return v39;
      }

      goto LABEL_63;
    }

    IPC::Decoder::decode<std::tuple<WebCore::WrappedCryptoKey>>(buf, a3, a3, a4, a5, a6, a7, a8);
    if (v56 != 1)
    {
      goto LABEL_63;
    }

    v26 = *a4;
    *a4 = 0;
    while (1)
    {
      v27 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v28 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v28 == v27)
      {
        goto LABEL_45;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_45:
    v41 = WTF::fastMalloc(0x18);
    *v41 = &unk_1F10F8058;
    v41[1] = v26;
    v41[2] = a2;
    v52 = v41;
    WebKit::WebProcessProxy::unwrapCryptoKey(a1, buf, &v52);
    v43 = v52;
    v52 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    if ((v56 & 1) == 0)
    {
      goto LABEL_63;
    }

    v44 = v54;
    if (!v54)
    {
      goto LABEL_63;
    }

    v54 = 0;
    v55[0] = 0;
LABEL_50:
    WTF::fastFree(v44, v42);
    goto LABEL_63;
  }

  v20 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_63;
  }

  v22 = v20;
  v23 = *a4;
  *a4 = 0;
  while (1)
  {
    v24 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v25 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_41;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_41:
  v40 = WTF::fastMalloc(0x18);
  *v40 = &unk_1F10F8008;
  v40[1] = v23;
  v40[2] = a2;
  *buf = v40;
  WebKit::WebProcessProxy::waitForSharedPreferencesForWebProcessToSync(a1, v22, buf);
LABEL_42:
  v33 = *buf;
  *buf = 0;
  if (v33)
  {
LABEL_32:
    (*(*v33 + 8))(v33);
  }

LABEL_63:
  v39 = 1;
  if (a1)
  {
LABEL_64:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  }

  return v39;
}

void WebKit::WebPasteboardProxy::~WebPasteboardProxy(WebKit::WebPasteboardProxy *this, void *a2)
{
  *this = &unk_1F10F8080;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  *this = &unk_1F10F8080;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 16;
    do
    {
      if (*(v4 - 16) != -1)
      {
        WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 16);
        *(v4 - 16) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void IPC::ArgumentCoder<std::tuple<WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::decode(a1, v9);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData>,void>::decode<IPC::Decoder,WebKit::WebHitTestResultData>(a1, v9, a2);
    if (v10)
    {
      WebKit::WebHitTestResultData::~WebHitTestResultData(v9, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[864] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData>,void>::decode<IPC::Decoder,WebKit::WebHitTestResultData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1);
  if ((v7 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData>,void>::decode<IPC::Decoder,WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>>(a1, a2, &v7, a3, v6);
  }

  else
  {
    *a3 = 0;
    a3[864] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData>,void>::decode<IPC::Decoder,WebKit::WebHitTestResultData,WTF::OptionSet<WebKit::WebEventModifier>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>, __n128 a5@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v14, a5);
  if ((v15 & 1) == 0)
  {
    v10 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if ((*(a2 + 848) & 1) == 0 || (a3[1] & 1) == 0)
  {
    __break(1u);
LABEL_15:
    (*(*v9 + 16))(v9, v10);
LABEL_13:
    *a4 = 0;
    a4[864] = 0;
    return;
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN6WebKit20WebHitTestResultDataEN3WTF9OptionSetINS3_16WebEventModifierEEENS3_8UserDataEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S8_S9_EJEJEJS4_S8_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(a4, a2, a3, &v14);
  a4[864] = 1;
  if (v15)
  {
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      CFRelease(*(v11 + 8));
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN6WebKit20WebHitTestResultDataEN3WTF9OptionSetINS3_16WebEventModifierEEENS3_8UserDataEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S8_S9_EJEJEJS4_S8_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4)
{
  *(WebKit::WebHitTestResultData::WebHitTestResultData(a1, a2) + 848) = *a3;
  v6 = *a4;
  if (v6)
  {
    CFRetain(*(v6 + 8));
  }

  *(a1 + 856) = v6;
  return a1;
}

uint64_t std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    *a1 = *a2;
    WTF::URL::URL(a1 + 8, (a2 + 8));
    WTF::URL::URL(a1 + 48, (a2 + 48));
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(a1 + 96) = v4;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 104, (a2 + 104));
    *(a1 + 128) = 0;
    *(a1 + 120) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 136, (a2 + 136));
    v5 = *(a2 + 152);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 152) = v5;
    v6 = *(a2 + 160);
    *(a2 + 160) = 0;
    *(a1 + 160) = v6;
    v7 = *(a2 + 168);
    *(a2 + 168) = 0;
    *(a1 + 168) = v7;
    v8 = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a1 + 176) = v8;
    v9 = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 184) = v9;
    v10 = *(a2 + 200);
    *(a2 + 200) = 0;
    *(a1 + 200) = v10;
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 208));
    v11 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a1 + 240) = v11;
    v12 = *(a2 + 248);
    v13 = *(a2 + 264);
    v14 = *(a2 + 280);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 264) = v13;
    *(a1 + 280) = v14;
    *(a1 + 248) = v12;
    v15 = *(a2 + 304);
    *(a2 + 304) = 0;
    *(a1 + 304) = v15;
    v16 = *(a2 + 312);
    v17 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 312) = v16;
    *(a1 + 328) = v17;
    *(a1 + 352) = 1;
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22FocusFromServiceWorkerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F67F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22FocusFromServiceWorkerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F67F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22FocusFromServiceWorkerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3710;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14ShowShareSheetENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore22ShareDataWithParsedURLEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6820;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14ShowShareSheetENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore22ShareDataWithParsedURLEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6820;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14ShowShareSheetENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore22ShareDataWithParsedURLEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3735;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy17ShowContactPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore19ContactsRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSB_11ContactInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6848;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy17ShowContactPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore19ContactsRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSB_11ContactInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6848;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy17ShowContactPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ON7WebCore19ContactsRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSB_11ContactInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3732;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (a2[2])
  {
    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v15);
    if ((a2[2] & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKN7WebCore29DigitalCredentialsRequestDataEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_30DigitalCredentialsResponseDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(v13);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = 48 * v6;
      do
      {
        IPC::ArgumentCoder<WebCore::ContactInfo,void>::encode(v5, v7);
        v7 += 48;
        v8 -= 48;
      }

      while (v8);
    }
  }

  else
  {
    v16 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v16);
  }

  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKN7WebCore29DigitalCredentialsRequestDataEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_30DigitalCredentialsResponseDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6870;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKN7WebCore29DigitalCredentialsRequestDataEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_30DigitalCredentialsResponseDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6870;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKN7WebCore29DigitalCredentialsRequestDataEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_30DigitalCredentialsResponseDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3733;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (*(a2 + 16))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (*(a2 + 16) == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2 + 1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy31DismissDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6898;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy31DismissDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6898;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy31DismissDigitalCredentialsPickerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3707;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::IntRect>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::IntRect>(a2, &v9);
  v5 = v10;
  if (v10 == 1)
  {
    *a1 = v9;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v6 = *a2;
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a1, v13);
  if (v20 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v20)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData>(a1, v13, a2);
    if (v20)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v18;
      v18 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      if (!v17)
      {
        v7 = v16;
        v16 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v4);
        }

        v8 = v15;
        v15 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
        }
      }

      v17 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v14);
    }
  }

  else
  {
    *a2 = 0;
    a2[864] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v10, a3);
  }

  else
  {
    *a3 = 0;
    a3[864] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, v14);
  if (v16 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v16)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse>(a1, a2, a3, v14, a4);
    if (v16)
    {
      v9 = cf;
      cf = 0;
      if (v9)
      {
        CFRelease(v9);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v14, v8);
    }
  }

  else
  {
    *a4 = 0;
    a4[864] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v14);
  if (v15 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v15)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest>(a1, a2, a3, a4, v14, a5);
    if (v15)
    {
      WebCore::ResourceRequest::~ResourceRequest(v14);
    }
  }

  else
  {
    *a5 = 0;
    a5[864] = 0;
  }
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    v15 = a6;
    v16 = a1;
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v8)
      {
        (*(*v13 + 16))(v13);
        v10 = *v16;
        v8 = v16[1];
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
  }

  else
  {
    a1[2] = (v9 + 1);
    if (v9)
    {
      v11 = *v9;
      if (v11 < 2)
      {
        v17 = v11 | 0x100;
        return IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL>(a1, a2, a3, a4, a5, &v17, a6);
      }

      v15 = a6;
      v16 = a1;
      goto LABEL_13;
    }

    v15 = a6;
    v16 = a1;
  }

LABEL_9:
  *v16 = 0;
  v16[1] = 0;
  v14 = v16[3];
  if (v14)
  {
    if (v8)
    {
      (*(*v14 + 16))(v14, v10);
      v10 = *v16;
      v8 = v16[1];
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
LABEL_13:
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result)
  {
    if (v8)
    {
      result = (*(*result + 16))(result, v10);
    }
  }

  *v15 = 0;
  v15[864] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, _BYTE *a7@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v19);
  if (v20 & 1) != 0 || ((v16 = *a1, v17 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v18 = v17 == 0) : (v18 = 1), !v18 && (result = (*(*result + 16))(result, v16), (v20)))
  {
    result = IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String>(a1, a2, a3, a4, a5, a6, &v19, a7);
    if (v20)
    {
      result = v19;
      v19 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

  else
  {
    *a7 = 0;
    a7[864] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a1;
  if (v10 <= &v11[-*a1])
  {
    v17 = a8;
    v18 = a1;
    *a1 = 0;
    a1[1] = 0;
    v15 = a1[3];
    if (v15)
    {
      if (v10)
      {
        (*(*v15 + 16))(v15);
        v12 = *v18;
        v10 = v18[1];
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
  }

  else
  {
    a1[2] = (v11 + 1);
    if (v11)
    {
      v13 = *v11;
      if (v13 < 2)
      {
        v19 = v13 | 0x100;
        return IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL>(a1, a2, a3, a4, a5, a6, a7, &v19, a8);
      }

      v17 = a8;
      v18 = a1;
      goto LABEL_13;
    }

    v17 = a8;
    v18 = a1;
  }

LABEL_9:
  *v18 = 0;
  v18[1] = 0;
  v16 = v18[3];
  if (v16)
  {
    if (v10)
    {
      (*(*v16 + 16))(v16, v12);
      v12 = *v18;
      v10 = v18[1];
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
LABEL_13:
  *v18 = 0;
  v18[1] = 0;
  result = v18[3];
  if (result)
  {
    if (v10)
    {
      result = (*(*result + 16))(result, v12);
    }
  }

  *v17 = 0;
  v17[864] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>)
{
  result = IPC::Decoder::decode<WebCore::ImageBufferPixelFormat>(a1);
  v18 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>(a2, a3, a4, a5, a6, a7, a8, a9, &v18);
  }

  *a9 = 0;
  a9[864] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceResponse,WebCore::ResourceRequest,BOOL,WTF::String,BOOL,WebCore::CrossOriginOpenerPolicyValue>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X7>, uint64_t a8@<X8>, _BYTE *a9)
{
  result = a8;
  if (*(a1 + 352) & 1) != 0 && (*(a2 + 16) & 1) != 0 && (*(a3 + 264) & 1) != 0 && (*(a4 + 200) & 1) != 0 && (a5[1] & 1) != 0 && (*(a6 + 8) & 1) != 0 && (a7[1] & 1) != 0 && (a9[1])
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN6WebKit13FrameInfoDataENS_8optionalIN3WTF23ObjectIdentifierGenericIN7WebCore24NavigationIdentifierTypeENS6_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_16ResourceResponseENS8_15ResourceRequestEbNS6_6StringEbNS8_28CrossOriginOpenerPolicyValueEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS4_SD_SE_SF_bSG_bSH_EJEJEJS4_SD_SE_SF_bSG_bSH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(a8, a1, a2, a3, a4, a5, a6, a7, a9);
    *(result + 864) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN6WebKit13FrameInfoDataENS_8optionalIN3WTF23ObjectIdentifierGenericIN7WebCore24NavigationIdentifierTypeENS6_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_16ResourceResponseENS8_15ResourceRequestEbNS6_6StringEbNS8_28CrossOriginOpenerPolicyValueEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS4_SD_SE_SF_bSG_bSH_EJEJEJS4_SD_SE_SF_bSG_bSH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t *a7, _BYTE *a8, _BYTE *a9)
{
  v16 = std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(a1, a2);
  *(v16 + 352) = *a3;
  WTF::URL::URL(v16 + 368, a4);
  v17 = *(a4 + 40);
  v18 = *(a4 + 48);
  *(a4 + 40) = 0;
  *(a1 + 408) = v17;
  *(a1 + 416) = v18;
  v19 = *(a4 + 56);
  *(a4 + 56) = 0;
  *(a1 + 424) = v19;
  v20 = *(a4 + 64);
  *(a4 + 64) = 0;
  *(a1 + 432) = v20;
  v21 = *(a4 + 72);
  *(a4 + 72) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = v21;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 448, (a4 + 80));
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 464, (a4 + 96));
  v22 = *(a4 + 112);
  *(a4 + 112) = 0;
  *(a1 + 480) = v22;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  if (*(a4 + 128) == 1)
  {
    v39 = *(a4 + 120);
    *(a4 + 120) = 0;
    *(a1 + 488) = v39;
    *(a1 + 496) = 1;
  }

  v23 = *(a4 + 136);
  *(a1 + 506) = *(a4 + 138);
  *(a1 + 504) = v23;
  v24 = *(a4 + 144);
  *(a4 + 144) = 0;
  *(a1 + 512) = v24;
  v25 = *(a4 + 168);
  *(a1 + 520) = *(a4 + 152);
  *(a1 + 536) = v25;
  v26 = *(a4 + 184);
  v27 = *(a4 + 200);
  v28 = *(a4 + 216);
  *(a1 + 595) = *(a4 + 227);
  *(a1 + 568) = v27;
  *(a1 + 584) = v28;
  *(a1 + 552) = v26;
  v29 = *(a4 + 248);
  *(a4 + 248) = 0;
  *(a1 + 616) = v29;
  *(a1 + 624) = *(a4 + 256);
  WTF::URL::URL(a1 + 632, a5);
  WTF::URL::URL(a1 + 672, (a5 + 40));
  *(a1 + 712) = *(a5 + 80);
  v30 = *(a5 + 88);
  *(a5 + 88) = 0;
  *(a1 + 720) = v30;
  *(a1 + 728) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 728, (a5 + 96));
  *(a1 + 744) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 744, (a5 + 112));
  *(a1 + 760) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 760, (a5 + 128));
  v31 = *(a5 + 144);
  *(a1 + 780) = *(a5 + 148);
  *(a1 + 776) = v31;
  v32 = *(a5 + 152);
  *(a5 + 152) = 0;
  *(a1 + 784) = v32;
  v33 = *(a5 + 160);
  *(a5 + 160) = 0;
  *(a1 + 792) = v33;
  v34 = *(a5 + 168);
  *(a5 + 168) = 0;
  *(a1 + 800) = v34;
  v35 = *(a5 + 176);
  *(a1 + 816) = *(a5 + 184);
  *(a1 + 808) = v35;
  v36 = *(a5 + 192);
  *(a5 + 192) = 0;
  *(a1 + 824) = v36;
  *(a1 + 832) = *a6;
  v37 = *a7;
  *a7 = 0;
  *(a1 + 840) = v37;
  *(a1 + 848) = *a8;
  *(a1 + 849) = *a9;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy23DecidePolicyForResponseENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_13FrameInfoDataENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore24NavigationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNSG_16ResourceResponseERKNSG_15ResourceRequestEbONS_6StringEbNSG_28CrossOriginOpenerPolicyValueEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F68C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy23DecidePolicyForResponseENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_13FrameInfoDataENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore24NavigationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNSG_16ResourceResponseERKNSG_15ResourceRequestEbONS_6StringEbNSG_28CrossOriginOpenerPolicyValueEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F68C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::PolicyDecision>(uint64_t *a1, void *a2, char *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3706;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebKit::PolicyDecision,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebKit::NavigationActionData>>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::tuple<WebKit::NavigationActionData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[2912] & 1) == 0)
  {
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::NavigationActionData>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::NavigationActionData,void>::decode();
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (v8 = a1[3]) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    WebKit::NavigationActionData::NavigationActionData(a2, v10);
    v5 = v11;
    a2[2912] = 1;
    if (v5)
    {
      WebKit::NavigationActionData::~NavigationActionData(v10, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[2912] = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy36DecidePolicyForNavigationActionAsyncENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_20NavigationActionDataEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F68E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy36DecidePolicyForNavigationActionAsyncENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_20NavigationActionDataEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F68E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPageProxy::DecidePolicyForNavigationActionAsync,WebKit::PolicyDecision>(uint64_t *a1, void *a2, char *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3704;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebKit::PolicyDecision,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30DecidePolicyForNewWindowActionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_20NavigationActionDataERKNS_6StringEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6910;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30DecidePolicyForNewWindowActionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_20NavigationActionDataERKNS_6StringEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6910;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30DecidePolicyForNewWindowActionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_ONS8_20NavigationActionDataERKNS_6StringEONS_17CompletionHandlerIFvONS8_14PolicyDecisionEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3705;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::PolicyDecision,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a1, v15);
  if (v22 & 1) != 0 || ((v11 = *a1, v12 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v13 = *(a1 + 3)) != 0) ? (v14 = v12 == 0) : (v14 = 1), !v14 && ((*(*v13 + 16))(v13, v11), (v22)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData>(a1, a2, v15, a3);
    if (v22)
    {
      v7 = cf;
      cf = 0;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v20;
      v20 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      if (!v19)
      {
        v9 = v18;
        v18 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v17;
        v17 = 0;
        if (v10)
        {
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v6);
          }
        }
      }

      v19 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v16);
    }
  }

  else
  {
    *a3 = 0;
    a3[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v12);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v10 = *(a1 + 3)) != 0) ? (v11 = v9 == 0) : (v11 = 1), !v11 && ((*(*v10 + 16))(v10, v8), (v13)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest>(a1, a2, a3, v12, a4);
    if (v13)
    {
      WebCore::ResourceRequest::~ResourceRequest(v12);
    }
  }

  else
  {
    *a4 = 0;
    a4[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v14);
  if (v15 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v15)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, a3, a4, v14, a5);
  }

  else
  {
    *a5 = 0;
    a5[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v18);
  if (v19 & 1) != 0 || ((v14 = *a1, v15 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v16 = *(a1 + 3)) != 0) ? (v17 = v15 == 0) : (v17 = 1), !v17 && ((*(*v16 + 16))(v16, v14), (v19)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>(a1, a2, a3, a4, a5, v18, a6);
    if (v19)
    {
      v13 = v18[0];
      v18[0] = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }
  }

  else
  {
    *a6 = 0;
    a6[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v21);
  if (v22 & 1) != 0 || ((v17 = *a1, v18 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v19 = *(a1 + 3)) != 0) ? (v20 = v18 == 0) : (v20 = 1), !v20 && ((*(*v19 + 16))(v19, v17), (v22)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL>(a1, a2, a3, a4, a5, a6, v21, a7, v14);
    if (v22)
    {
      v16 = v21[0];
      v21[0] = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }
      }
    }
  }

  else
  {
    *a7 = 0;
    a7[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>, __n128 a9@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v22, a9);
  if (v23)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData>(a1, a2, a3, a4, a5, a6, a7, &v22, a8);
    if (v23)
    {
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        CFRelease(*(v17 + 8));
      }
    }
  }

  else
  {
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
    }

    *a8 = 0;
    a8[688] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  result = IPC::Decoder::decode<WTF::Seconds>(a1);
  v19 = result;
  v20 = v18;
  if (v18)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>(a2, a3, a4, a5, a6, a7, a8, a9, &v19);
  }

  *a9 = 0;
  a9[688] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL,WTF::URL,WebKit::UserData,WTF::WallTime>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  result = a8;
  if (*(a1 + 8) & 1) != 0 && (*(a2 + 352) & 1) != 0 && (*(a3 + 200) & 1) != 0 && (*(a4 + 16) & 1) != 0 && (*(a5 + 40) & 1) != 0 && (*(a6 + 40) & 1) != 0 && (*(a7 + 8) & 1) != 0 && (*(a9 + 8))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN6WebKit13FrameInfoDataENS5_15ResourceRequestENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS3_3URLESH_NSA_8UserDataENS3_8WallTimeEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS9_SB_SC_SG_SH_SH_SI_SJ_EJEJEJS9_SB_SC_SG_SH_SH_SI_SJ_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(a8, a1, a2, a3, a4, a5, a6, a7, a9);
    *(result + 688) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN6WebKit13FrameInfoDataENS5_15ResourceRequestENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS3_3URLESH_NSA_8UserDataENS3_8WallTimeEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS9_SB_SC_SG_SH_SH_SI_SJ_EJEJEJS9_SB_SC_SG_SH_SH_SI_SJ_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  *a1 = *a2;
  std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(a1 + 16, a3);
  std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(a1 + 368, a4);
  *(a1 + 568) = *a5;
  WTF::URL::URL(a1 + 584, a6);
  WTF::URL::URL(a1 + 624, a7);
  v15 = *a8;
  if (v15)
  {
    CFRetain(*(v15 + 8));
  }

  *(a1 + 664) = v15;
  *(a1 + 672) = *a9;
  return a1;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[232] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v10, a3);
  }

  else
  {
    *a3 = 0;
    a3[232] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v13);
  if (v14 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v14)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest>(a1, a2, a3, v13, a4, v8);
    if (v14)
    {
      WebCore::ResourceRequest::~ResourceRequest(v13);
    }
  }

  else
  {
    *a4 = 0;
    a4[232] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, __n128 a6@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v16, a6);
  if (v17)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>(a2, a3, a4, &v16, a5);
    if (v17)
    {
      v11 = v16;
      v16 = 0;
      if (v11)
      {
        CFRelease(*(v11 + 8));
      }
    }
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v14 + 16))(v14, v12);
    }

    *a5 = 0;
    a5[232] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest,WebKit::UserData>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = a5;
  if (*(a1 + 8) & 1) != 0 && (*(a2 + 16) & 1) != 0 && (*(a3 + 200) & 1) != 0 && (*(a4 + 8))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS5_15ResourceRequestEN6WebKit8UserDataEEEC2B8sn200100IJLm0ELm1ELm2ELm3EEJS9_SD_SE_SG_EJEJEJS9_SD_SE_SG_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(a5, a1, a2, a3, a4);
    *(result + 232) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS5_15ResourceRequestEN6WebKit8UserDataEEEC2B8sn200100IJLm0ELm1ELm2ELm3EEJS9_SD_SE_SG_EJEJEJS9_SD_SE_SG_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t *a5)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(a1 + 24, a4);
  v7 = *a5;
  if (v7)
  {
    CFRetain(*(v7 + 8));
  }

  *(a1 + 224) = v7;
  return a1;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[64] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v10, a3);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v14);
  if (v15 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v15)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>(a2, a3, v14, a4);
    if (v15)
    {
      v9 = v14[0];
      v14[0] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[64] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::URL>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8) & 1) != 0 && (*(a2 + 16) & 1) != 0 && (*(a3 + 40))
  {
    *a4 = *a1;
    *(a4 + 8) = *a2;
    WTF::URL::URL(a4 + 24, a3);
    *(a4 + 64) = 1;
  }

  else
  {
    __break(1u);
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a1, v13);
  if (v20 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v20)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData>(a1, v13, a2);
    if (v20)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v18;
      v18 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      if (!v17)
      {
        v7 = v16;
        v16 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v4);
        }

        v8 = v15;
        v15 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
        }
      }

      v17 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v14);
    }
  }

  else
  {
    *a2 = 0;
    a2[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest>(a1, a2, v10, a3);
    if (v11)
    {
      WebCore::ResourceRequest::~ResourceRequest(v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v12);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v10 = *(a1 + 3)) != 0) ? (v11 = v9 == 0) : (v11 = 1), !v11 && ((*(*v10 + 16))(v10, v8), (v13)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, a3, v12, a4);
  }

  else
  {
    *a4 = 0;
    a4[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v16);
  if (v17 & 1) != 0 || ((v12 = *a1, v13 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v14 = *(a1 + 3)) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v17)))
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>(a1, a2, a3, a4, &v16, a5);
    if (v17)
    {
      v11 = v16;
      v16 = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v10);
        }
      }
    }
  }

  else
  {
    *a5 = 0;
    a5[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  IPC::Decoder::decode<WebCore::ResourceError>(a1, &v17);
  if (v21 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError>(a1, a2, a3, a4, a5, &v17, a6);
    if (v21)
    {
      v13 = cf;
      cf = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v19;
      v19 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = v18;
      v18 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = v17;
      v17 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v12);
        }
      }
    }
  }

  else
  {
    *a6 = 0;
    a6[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v15 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  if ((v15 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading>(a1, a2, a3, a4, a5, a6, &v15, a7, v14);
  }

  else
  {
    *a7 = 0;
    a7[688] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>, __n128 a9@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v22, a9);
  if (v23)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData>(a1, a2, a3, a4, a5, a6, a7, &v22, a8);
    if (v23)
    {
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        CFRelease(*(v17 + 8));
      }
    }
  }

  else
  {
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
    }

    *a8 = 0;
    a8[688] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  result = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  v18 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>(a2, a3, a4, a5, a6, a7, a8, a9, &v18);
  }

  *a9 = 0;
  a9[688] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>,void>::decode<IPC::Decoder,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, _BYTE *a9)
{
  result = a8;
  if (*(a1 + 352) & 1) != 0 && (*(a2 + 200) & 1) != 0 && (*(a3 + 16) & 1) != 0 && (*(a4 + 8) & 1) != 0 && (*(a5 + 80) & 1) != 0 && (a6[1] & 1) != 0 && (*(a7 + 8) & 1) != 0 && (a9[1])
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN6WebKit13FrameInfoDataEN7WebCore15ResourceRequestENS_8optionalIN3WTF23ObjectIdentifierGenericINS5_24NavigationIdentifierTypeENS8_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_6StringENS5_13ResourceErrorENS5_19WillContinueLoadingENS3_8UserDataENS5_27WillInternallyHandleFailureEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS4_S6_SE_SF_SG_SH_SI_SJ_EJEJEJS4_S6_SE_SF_SG_SH_SI_SJ_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(a8, a1, a2, a3, a4, a5, a6, a7, a9);
    *(result + 688) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEEEJN6WebKit13FrameInfoDataEN7WebCore15ResourceRequestENS_8optionalIN3WTF23ObjectIdentifierGenericINS5_24NavigationIdentifierTypeENS8_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_6StringENS5_13ResourceErrorENS5_19WillContinueLoadingENS3_8UserDataENS5_27WillInternallyHandleFailureEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJS4_S6_SE_SF_SG_SH_SI_SJ_EJEJEJS4_S6_SE_SF_SG_SH_SI_SJ_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7, uint64_t *a8, _BYTE *a9)
{
  v16 = std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(a1, a2);
  WTF::URL::URL(v16 + 352, a3);
  WTF::URL::URL(a1 + 392, (a3 + 40));
  *(a1 + 432) = *(a3 + 80);
  v17 = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = v17;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 448, (a3 + 96));
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 464, (a3 + 112));
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 480, (a3 + 128));
  v18 = *(a3 + 144);
  *(a1 + 500) = *(a3 + 148);
  *(a1 + 496) = v18;
  v19 = *(a3 + 152);
  *(a3 + 152) = 0;
  *(a1 + 504) = v19;
  v20 = *(a3 + 160);
  *(a3 + 160) = 0;
  *(a1 + 512) = v20;
  v21 = *(a3 + 168);
  *(a3 + 168) = 0;
  *(a1 + 520) = v21;
  v22 = *(a3 + 176);
  *(a1 + 536) = *(a3 + 184);
  *(a1 + 528) = v22;
  v23 = *(a3 + 192);
  *(a3 + 192) = 0;
  *(a1 + 544) = v23;
  *(a1 + 552) = *a4;
  v24 = *a5;
  *a5 = 0;
  *(a1 + 568) = v24;
  v25 = *a6;
  *a6 = 0;
  *(a1 + 576) = v25;
  WTF::URL::URL(a1 + 584, a6 + 1);
  v26 = a6[6];
  a6[6] = 0;
  *(a1 + 624) = v26;
  LODWORD(v26) = *(a6 + 14);
  *(a1 + 636) = *(a6 + 30);
  *(a1 + 632) = v26;
  v27 = a6[8];
  a6[8] = 0;
  *(a1 + 640) = v27;
  *(a1 + 648) = *(a6 + 72);
  *(a1 + 656) = *a7;
  v28 = *a8;
  if (v28)
  {
    CFRetain(*(v28 + 8));
  }

  *(a1 + 664) = v28;
  *(a1 + 672) = *a9;
  return a1;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WebCore::ResourceError,WebCore::WillContinueLoading,WebKit::UserData,WebCore::WillInternallyHandleFailure>::~__tuple_impl(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 664);
  *(a1 + 664) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 624);
  *(a1 + 624) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 352));
  v10 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  if (!*(a1 + 232))
  {
    v12 = *(a1 + 216);
    *(a1 + 216) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = *(a1 + 208);
    *(a1 + 208) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

  *(a1 + 232) = -1;
  WebCore::ResourceRequest::~ResourceRequest((a1 + 8));
  return a1;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a1, v15);
  if (v22 & 1) != 0 || ((v11 = *a1, v12 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v13 = *(a1 + 3)) != 0) ? (v14 = v12 == 0) : (v14 = 1), !v14 && ((*(*v13 + 16))(v13, v11), (v22)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData>(a1, a2, v15, a3);
    if (v22)
    {
      v7 = cf;
      cf = 0;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v20;
      v20 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      if (!v19)
      {
        v9 = v18;
        v18 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v17;
        v17 = 0;
        if (v10)
        {
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v6);
          }
        }
      }

      v19 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v16);
    }
  }

  else
  {
    *a3 = 0;
    a3[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v12);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v10 = *(a1 + 3)) != 0) ? (v11 = v9 == 0) : (v11 = 1), !v11 && ((*(*v10 + 16))(v10, v8), (v13)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest>(a1, a2, a3, v12, a4);
    if (v13)
    {
      WebCore::ResourceRequest::~ResourceRequest(v12);
    }
  }

  else
  {
    *a4 = 0;
    a4[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v14);
  if (v15 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v15)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, a3, a4, v14, a5);
  }

  else
  {
    *a5 = 0;
    a5[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v18);
  if (v19 & 1) != 0 || ((v14 = *a1, v15 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v16 = *(a1 + 3)) != 0) ? (v17 = v15 == 0) : (v17 = 1), !v17 && ((*(*v16 + 16))(v16, v14), (v19)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>(a1, a2, a3, a4, a5, &v18, a6);
    if (v19)
    {
      v13 = v18;
      v18 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }
  }

  else
  {
    *a6 = 0;
    a6[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    v16 = a7;
    v17 = a1;
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v9)
      {
        (*(*v13 + 16))(v13);
        v11 = *v17;
        v9 = v17[1];
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
  }

  else
  {
    a1[2] = (v10 + 1);
    if (v10)
    {
      v12 = *v10;
      if (v12 < 2)
      {
        v18 = v12 | 0x100;
        IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL>(a1, a2, a3, a4, a5, a6, &v18, a7);
        return;
      }

      v16 = a7;
      v17 = a1;
      goto LABEL_13;
    }

    v16 = a7;
    v17 = a1;
  }

LABEL_9:
  *v17 = 0;
  v17[1] = 0;
  v14 = v17[3];
  if (v14)
  {
    if (v9)
    {
      (*(*v14 + 16))(v14, v11);
      v11 = *v17;
      v9 = v17[1];
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
LABEL_13:
  *v17 = 0;
  v17[1] = 0;
  v15 = v17[3];
  if (v15)
  {
    if (v9)
    {
      (*(*v15 + 16))(v15, v11);
    }
  }

  *v16 = 0;
  v16[640] = 0;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  v16 = IPC::Decoder::decode<WebCore::TextGranularity>(a1);
  if ((v16 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType>(a1, a2, a3, a4, a5, a6, a7, &v16, a8);
  }

  else
  {
    *a8 = 0;
    a8[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>)
{
  IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(a1, &cf);
  if (v24)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo>(a1, a2, a3, a4, a5, a6, a7, a8, a9, &cf);
    if (v24)
    {
      v18 = cf;
      cf = 0;
      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      (*(*v21 + 16))(v21, v19);
    }

    *a9 = 0;
    a9[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v12 = a1[1];
  v13 = a1[2];
  v14 = *a1;
  if (v12 <= &v13[-*a1])
  {
    v19 = a9;
    *a1 = 0;
    a1[1] = 0;
    v20 = a1;
    v16 = a1[3];
    if (v16)
    {
      if (v12)
      {
        (*(*v16 + 16))(v16);
        v14 = *v20;
        v12 = v20[1];
        goto LABEL_9;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
  }

  else
  {
    a1[2] = (v13 + 1);
    if (v13)
    {
      v15 = *v13;
      if (v15 < 2)
      {
        v21 = v15 | 0x100;
        IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v21);
        return;
      }

      v20 = a1;
      v19 = a9;
      goto LABEL_13;
    }

    v20 = a1;
    v19 = a9;
  }

LABEL_9:
  *v20 = 0;
  v20[1] = 0;
  v17 = v20[3];
  if (v17)
  {
    if (v12)
    {
      (*(*v17 + 16))(v17, v14);
      v14 = *v20;
      v12 = v20[1];
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
LABEL_13:
  *v20 = 0;
  v20[1] = 0;
  v18 = v20[3];
  if (v18)
  {
    if (v12)
    {
      (*(*v18 + 16))(v18, v14);
    }
  }

  *v19 = 0;
  v19[640] = 0;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11)
{
  v13 = a1[1];
  v14 = a1[2];
  v15 = *a1;
  if (v13 <= &v14[-*a1])
  {
    v20 = a9;
    *a1 = 0;
    a1[1] = 0;
    v21 = a1;
    v17 = a1[3];
    if (v17)
    {
      if (v13)
      {
        (*(*v17 + 16))(v17);
        v15 = *v21;
        v13 = v21[1];
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
  }

  else
  {
    a1[2] = (v14 + 1);
    if (v14)
    {
      v16 = *v14;
      if (v16 < 2)
      {
        v22 = v16 | 0x100;
        IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v22);
        return;
      }

      v21 = a1;
      v20 = a9;
      goto LABEL_13;
    }

    v21 = a1;
    v20 = a9;
  }

LABEL_9:
  *v21 = 0;
  v21[1] = 0;
  v18 = v21[3];
  if (v18)
  {
    if (v13)
    {
      (*(*v18 + 16))(v18, v15);
      v15 = *v21;
      v13 = v21[1];
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 0;
LABEL_13:
  *v21 = 0;
  v21[1] = 0;
  v19 = v21[3];
  if (v19)
  {
    if (v13)
    {
      (*(*v19 + 16))(v19, v15);
    }
  }

  *v20 = 0;
  v20[640] = 0;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11, _BYTE *a12)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v26);
  if (v27 & 1) != 0 || (v23 = *a1, v24 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v25 = *(a1 + 3)) != 0) && v24 && ((*(*v25 + 16))(v25, v23), (v27))
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v26);
    if (v27)
    {
      v22 = v26;
      v26 = 0;
      if (v22)
      {
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }
      }
    }
  }

  else
  {
    *a9 = 0;
    a9[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13)
{
  v22 = IPC::Decoder::decode<WebCore::ResourceResponseSource>(a1);
  if ((v22 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, &v22);
  }

  else
  {
    *a9 = 0;
    a9[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, _BYTE *a14)
{
  v16 = a1[1];
  v17 = a1[2];
  v18 = *a1;
  if (v16 <= &v17[-*a1])
  {
    v23 = a9;
    v24 = a1;
    *a1 = 0;
    a1[1] = 0;
    v20 = a1[3];
    if (v20)
    {
      if (v16)
      {
        (*(*v20 + 16))(v20);
        v18 = *v24;
        v16 = v24[1];
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
  }

  else
  {
    a1[2] = (v17 + 1);
    if (v17)
    {
      v19 = *v17;
      if (v19 < 2)
      {
        v25 = v19 | 0x100;
        IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, &v25);
        return;
      }

      v23 = a9;
      v24 = a1;
      goto LABEL_13;
    }

    v23 = a9;
    v24 = a1;
  }

LABEL_9:
  *v24 = 0;
  v24[1] = 0;
  v21 = v24[3];
  if (v21)
  {
    if (v16)
    {
      (*(*v21 + 16))(v21, v18);
      v18 = *v24;
      v16 = v24[1];
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = 0;
LABEL_13:
  *v24 = 0;
  v24[1] = 0;
  v22 = v24[3];
  if (v22)
  {
    if (v16)
    {
      (*(*v22 + 16))(v22, v18);
    }
  }

  *v23 = 0;
  v23[640] = 0;
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, _BYTE *a14, _BYTE *a15)
{
  v24 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  if ((v24 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent>(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, &v24);
  }

  else
  {
    *a9 = 0;
    a9[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, _BYTE *a14, _BYTE *a15, _BYTE *a16)
{
  v26 = IPC::Decoder::decode<IPC::WebCore_Filter_Subclass>(a1);
  if ((v26 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy>(a1, a2, a3, a4, a5, a6, a7, a8, a9, v25, a10, a11, a12, a13, a14, a15, a16, &v26);
  }

  else
  {
    *a9 = 0;
    a9[640] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, _BYTE *a9@<X8>, __n128 a10@<Q0>, uint64_t a11, _BYTE *a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, _BYTE *a18)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v31, a10);
  if (v32)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>(a2, a3, a4, a5, a6, a7, a8, a9, a11, a12, a13, a14, a15, a16, a17, a18, &v31);
    if (v32)
    {
      v27 = v31;
      v31 = 0;
      if (v27)
      {
        CFRelease(*(v27 + 8));
      }
    }
  }

  else
  {
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v28);
    }

    *a9 = 0;
    a9[640] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WebCore::ResourceRequest,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,WebCore::FrameLoadType,WebCore::CertificateInfo,BOOL,BOOL,WTF::String,WebCore::ResourceResponseSource,BOOL,WebCore::HasInsecureContent,WebCore::MouseEventPolicy,WebKit::UserData>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, _BYTE *a10, _BYTE *a11, uint64_t a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, uint64_t a17)
{
  result = a8;
  if (*(a1 + 8) & 1) != 0 && (*(a2 + 352) & 1) != 0 && (*(a3 + 200) & 1) != 0 && (*(a4 + 16) & 1) != 0 && (*(a5 + 8) & 1) != 0 && (a6[1] & 1) != 0 && (a7[1] & 1) != 0 && (*(a9 + 8) & 1) != 0 && (a10[1] & 1) != 0 && (a11[1] & 1) != 0 && (*(a12 + 8) & 1) != 0 && (a13[1] & 1) != 0 && (a14[1] & 1) != 0 && (a15[1] & 1) != 0 && (a16[1] & 1) != 0 && (*(a17 + 8))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN6WebKit13FrameInfoDataENS5_15ResourceRequestENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS3_6StringEbNS5_13FrameLoadTypeENS5_15CertificateInfoEbbSH_NS5_22ResourceResponseSourceEbNS5_18HasInsecureContentENS5_16MouseEventPolicyENSA_8UserDataEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEJS9_SB_SC_SG_SH_bSI_SJ_bbSH_SK_bSL_SM_SN_EJEJEJS9_SB_SC_SG_SH_bSI_SJ_bbSH_SK_bSL_SM_SN_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSR_IJDpT2_EEEDpOT3_(a8, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    *(result + 640) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN6WebKit13FrameInfoDataENS5_15ResourceRequestENS_8optionalINS4_INS5_24NavigationIdentifierTypeES8_yEEEENS3_6StringEbNS5_13FrameLoadTypeENS5_15CertificateInfoEbbSH_NS5_22ResourceResponseSourceEbNS5_18HasInsecureContentENS5_16MouseEventPolicyENSA_8UserDataEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEJS9_SB_SC_SG_SH_bSI_SJ_bbSH_SK_bSL_SM_SN_EJEJEJS9_SB_SC_SG_SH_bSI_SJ_bbSH_SK_bSL_SM_SN_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSR_IJDpT2_EEEDpOT3_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t *a6, _BYTE *a7, _BYTE *a8, uint64_t *a9, _BYTE *a10, _BYTE *a11, uint64_t *a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, uint64_t *a17)
{
  *a1 = *a2;
  std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(a1 + 16, a3);
  std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(a1 + 368, a4);
  *(a1 + 568) = *a5;
  v23 = *a6;
  *a6 = 0;
  *(a1 + 584) = v23;
  *(a1 + 592) = *a7;
  *(a1 + 593) = *a8;
  v24 = *a9;
  *a9 = 0;
  *(a1 + 600) = v24;
  *(a1 + 608) = *a10;
  *(a1 + 609) = *a11;
  v25 = *a12;
  *a12 = 0;
  *(a1 + 616) = v25;
  *(a1 + 624) = *a13;
  *(a1 + 625) = *a14;
  *(a1 + 626) = *a15;
  *(a1 + 627) = *a16;
  v26 = *a17;
  if (*a17)
  {
    CFRetain(*(v26 + 8));
  }

  *(a1 + 632) = v26;
  return a1;
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserData>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = v4;
    IPC::ArgumentCoder<WebKit::UserData,void>::decode(a2, &v16, v5);
    if (v17)
    {
      *a1 = v7;
      v8 = v16;
      if (v16)
      {
        CFRetain(*(v16 + 8));
        *(a1 + 8) = v8;
        *(a1 + 16) = 1;
        CFRelease(*(v8 + 8));
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 1;
      }

      return;
    }

    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 3);
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = *(*v13 + 16);

    v15();
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6938;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6938;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3729;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebKit::WebNavigationDataStore,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::WebNavigationDataStore,void>::decode(a1, &v12);
  if (v17 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v11 = v10 == 0) : (v11 = 1), !v11 && (result = (*(*result + 16))(result, v9), (v17)))
  {
    result = IPC::ArgumentCoder<std::tuple<WebKit::WebNavigationDataStore,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WebKit::WebNavigationDataStore>(a1, &v12, a2);
    if (v17)
    {
      v6 = cf;
      cf = 0;
      if (v6)
      {
        CFRelease(v6);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v15, v5);
      WebCore::ResourceRequest::~ResourceRequest(&v14);
      v8 = v13;
      v13 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
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
  }

  else
  {
    *a2 = 0;
    a2[488] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::WebNavigationDataStore,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WebKit::WebNavigationDataStore>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v6 & 1) == 0)
  {
    v8 = 0;
    *a3 = 0;
    goto LABEL_5;
  }

  if (*(a2 + 480))
  {
    v7 = result;
    result = WebKit::WebNavigationDataStore::WebNavigationDataStore(a3, a2);
    *(a3 + 480) = v7;
    v8 = 1;
LABEL_5:
    *(a3 + 488) = v8;
    return result;
  }

  __break(1u);
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[24] & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
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
    *a2 = 0;
    a2[24] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v12)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WTF::String,WTF::String>(a1, a2, &v11, a3);
    if (v12)
    {
      result = v11;
      v11 = 0;
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
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WTF::String,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    v11 = 0;
    *a4 = 0;
    goto LABEL_6;
  }

  if (a2[1] & 1) != 0 && (a3[1])
  {
    v9 = *a2;
    *a2 = 0;
    v10 = *a3;
    *a3 = 0;
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = result;
    v11 = 1;
LABEL_6:
    *(a4 + 24) = v11;
    return result;
  }

  __break(1u);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14WillSubmitFormENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESG_ONS_6VectorINSt3__14pairINS_6StringESK_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS8_8UserDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6960;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14WillSubmitFormENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESG_ONS_6VectorINSt3__14pairINS_6StringESK_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS8_8UserDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6960;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy14WillSubmitFormENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESG_ONS_6VectorINSt3__14pairINS_6StringESK_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS8_8UserDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3742;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebKit::InteractionInformationAtPosition>>(uint64_t a1, IPC::Decoder *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::InteractionInformationAtPosition,void>::decode(a2, v28);
  if ((v59 & 1) == 0)
  {
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    v24 = !v23 || v22 == 0;
    if (v24 || ((*(*v23 + 16))(v23, v21), (v59 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 528) = 0;
LABEL_13:
      v25 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26 && v25)
      {
        v27 = *(*v26 + 16);

        v27();
      }

      return;
    }
  }

  v4 = v28[3];
  *(a1 + 32) = v28[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v29;
  v5 = v28[1];
  *a1 = v28[0];
  *(a1 + 16) = v5;
  WTF::URL::URL(a1 + 72, v30);
  WTF::URL::URL(a1 + 112, v31);
  v7 = v32;
  v32 = 0u;
  *(a1 + 152) = v7;
  v11 = v34;
  v8 = v35;
  v35 = 0u;
  v9 = v33;
  v33 = 0;
  *(a1 + 168) = v9;
  *(a1 + 176) = v11;
  *(a1 + 192) = v8;
  v10 = v36;
  v36 = 0;
  *(a1 + 208) = v10;
  *(&v11 + 1) = *(&v37 + 1);
  *(a1 + 216) = v37;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  if (v41 == 1)
  {
    *(a1 + 232) = v38;
    v12 = v39;
    v39 = 0;
    *(a1 + 240) = v12;
    *(&v11 + 1) = *(&v40 + 1);
    *(a1 + 248) = v40;
    *(a1 + 264) = 1;
  }

  *&v11 = 0;
  *(a1 + 272) = v42;
  *(a1 + 280) = v43;
  v13 = v44;
  v44 = 0;
  v43 = 0uLL;
  *(a1 + 296) = v13;
  v14 = v56;
  *(a1 + 464) = v55;
  *(a1 + 480) = v14;
  *(a1 + 496) = v57;
  v15 = v52;
  *(a1 + 400) = v51;
  *(a1 + 416) = v15;
  v16 = v54;
  *(a1 + 432) = v53;
  *(a1 + 448) = v16;
  v17 = v48;
  *(a1 + 336) = v47;
  *(a1 + 352) = v17;
  v18 = v50;
  *(a1 + 368) = v49;
  *(a1 + 384) = v18;
  v19 = v46;
  *(a1 + 304) = v45;
  *(a1 + 320) = v19;
  v20 = v58;
  v58 = v11;
  *(a1 + 512) = v20;
  *(a1 + 528) = 1;
  if (v59)
  {
    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(v28, v6);
    if ((*(a1 + 528) & 1) == 0)
    {
      goto LABEL_13;
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24IsPotentialTapInProgressENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6988;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24IsPotentialTapInProgressENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6988;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24IsPotentialTapInProgressENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3712;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebKit::DataDetectionResult>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::DataDetectionResult,void>::decode(a1, &v9);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = a1[1], *a1 = 0, a1[1] = 0, (v7 = a1[3]) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    *a2 = v9;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v4;
}

atomic_uint *IPC::Decoder::decode<std::tuple<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>(a2, &v8);
  if (v9 == 1)
  {
    *a1 = v8;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ShouldGoToBackForwardListItemENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvNSA_21ShouldGoToHistoryItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F69B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ShouldGoToBackForwardListItemENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvNSA_21ShouldGoToHistoryItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F69B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ShouldGoToBackForwardListItemENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvNSA_21ShouldGoToHistoryItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3731;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[24] & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
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
    *a2 = 0;
    a2[24] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v12)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String>(a1, a2, &v11, a3);
    if (v12)
    {
      result = v11;
      v11 = 0;
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
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  if ((result & 0x100) == 0)
  {
    v8 = 0;
    *a4 = 0;
LABEL_6:
    *(a4 + 24) = v8;
    return result;
  }

  if (a2[1] & 1) != 0 && (a3[1])
  {
    v9 = *a2;
    *a2 = 0;
    v10 = *a3;
    *a3 = 0;
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = result;
    v8 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String>(a1, &v10, a2);
    if (v11)
    {
      v5 = v10;
      v10 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v12);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v10 = *(a1 + 3)) != 0) ? (v11 = v9 == 0) : (v11 = 1), !v11 && ((*(*v10 + 16))(v10, v8), (v13)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String>(a1, a2, &v12, a3);
    if (v13)
    {
      v7 = v12;
      v12 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[32] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String>(WTF::StringImpl *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::DiagnosticLoggingDictionary,void>::decode(a1, &v13);
  if (v14)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary>(a1, a2, a3, &v13, a4);
    if (v14)
    {
      if (v13)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v8);
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
    }

    *a4 = 0;
    a4[32] = 0;
  }
}