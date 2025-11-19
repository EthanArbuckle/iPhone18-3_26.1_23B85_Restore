void WebKit::InjectedBundlePageLoaderClient::didCommitLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didFinishDocumentLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didFinishLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::didFinishProgress(uint64_t this, WebKit::WebPage *a2)
{
  v2 = *(this + 232);
  if (v2)
  {
    return v2(*(a2 + 1), *(this + 16));
  }

  return this;
}

void WebKit::InjectedBundlePageLoaderClient::didFailLoadWithErrorForFrame(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **this, uint64_t *a5)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v13 = 0;
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    API::Error::create(this, &v14);
    v10 = v14;
    if (v14)
    {
      v5(v8, v9, *(v14 + 1), &v13, *(a1 + 16));
      CFRelease(*(v10 + 1));
    }

    else
    {
      v5(v8, v9, 0, &v13, *(a1 + 16));
    }

    v11 = v13;
    if (v13)
    {
      v11 = [v13 _apiObject];
    }

    v12 = *a5;
    *a5 = v11;
    if (v12)
    {
      CFRelease(*(v12 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didSameDocumentNavigationForFrame(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v5 = *(a1 + 80);
  if (v5)
  {
    v12 = 0;
    v7 = *(a2 + 8);
    v8 = *(a3 + 8);
    if ((a4 - 1) < 3)
    {
      v9 = (a4 - 1) + 1;
    }

    else
    {
      v9 = 0;
    }

    v5(v7, v8, v9, &v12, *(a1 + 16));
    v10 = v12;
    if (v12)
    {
      v10 = [v12 _apiObject];
    }

    v11 = *a5;
    *a5 = v10;
    if (v11)
    {
      CFRelease(*(v11 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didReceiveTitleForFrame(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v14 = 0;
    v9 = *(a2 + 8);
    WebKit::toAPI(&v13, *a3);
    v10 = v13;
    if (v13)
    {
      v5(v9, *(v13 + 8), *(a4 + 8), &v14, *(a1 + 16));
      CFRelease(*(v10 + 8));
    }

    else
    {
      v5(v9, 0, *(a4 + 8), &v14, *(a1 + 16));
    }

    v11 = v14;
    if (v14)
    {
      v11 = [v14 _apiObject];
    }

    v12 = *a5;
    *a5 = v11;
    if (v12)
    {
      CFRelease(*(v12 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didRemoveFrameFromHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didDisplayInsecureContentForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didRunInsecureContentForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didFirstLayoutForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 96);
  if (v6)
  {
    v10[3] = v4;
    v10[4] = v5;
    v10[0] = 0;
    v6(*(a2 + 8), *(a3 + 8), v10, *(a1 + 16));
    v8 = v10[0];
    if (v10[0])
    {
      v8 = [v10[0] _apiObject];
    }

    v9 = *a4;
    *a4 = v8;
    if (v9)
    {
      CFRelease(*(v9 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didFirstVisuallyNonEmptyLayoutForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::didLayoutForFrame(uint64_t this, WebKit::WebPage *a2, WebFrame *a3)
{
  v3 = *(this + 168);
  if (v3)
  {
    return v3(*(a2 + 1), a3->_private, *(this + 16));
  }

  return this;
}

void WebKit::InjectedBundlePageLoaderClient::didReachLayoutMilestone(uint64_t a1, uint64_t a2, __int16 a3, uint64_t *a4)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v9 = 0;
    v6 = a3 & 3;
    if ((a3 & 4) != 0)
    {
      v6 = a3 & 3 | 4;
    }

    if ((a3 & 0x10) != 0)
    {
      v6 |= 0x10u;
    }

    if ((a3 & 0x20) != 0)
    {
      v6 |= 0x20u;
    }

    if ((a3 & 0x80) != 0)
    {
      v6 |= 0x80u;
    }

    v4(*(a2 + 8), v6 | a3 & 0x100u, &v9, *(a1 + 16));
    v7 = v9;
    if (v9)
    {
      v7 = [v9 _apiObject];
    }

    v8 = *a4;
    *a4 = v7;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didClearWindowObjectForFrame(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, WebKit::WebFrame *a3, WebCore::DOMWrapperWorld *a4)
{
  v4 = *(this + 17);
  if (v4)
  {
    v6 = *(a2 + 1);
    v7 = *(a3 + 1);
    WebKit::InjectedBundleScriptWorld::getOrCreate(a4, &v10);
    if (v10)
    {
      v8 = *(v10 + 1);
    }

    else
    {
      v8 = 0;
    }

    v4(v6, v7, v8, *(this + 2));
    v9 = v10;
    v10 = 0;
    if (v9)
    {
      CFRelease(*(v9 + 1));
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::didCancelClientRedirectForFrame(uint64_t this, WebKit::WebPage *a2, WebFrame *a3)
{
  v3 = *(this + 144);
  if (v3)
  {
    return v3(*(a2 + 1), a3->_private, *(this + 16));
  }

  return this;
}

void WebKit::InjectedBundlePageLoaderClient::willPerformClientRedirectForFrame(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4, double a5, double a6)
{
  v6 = *(a1 + 152);
  if (v6)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
    WebKit::toURLRef(&v13, *a4);
    v12 = v13;
    if (v13)
    {
      v6(v10, v11, *(v13 + 8), *(a1 + 16), a5, a6);
      CFRelease(*(v12 + 8));
    }

    else
    {
      v6(v10, v11, 0, *(a1 + 16), a5, a6);
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::didHandleOnloadEventsForFrame(uint64_t this, WebKit::WebPage *a2, WebFrame *a3)
{
  v3 = *(this + 160);
  if (v3)
  {
    return v3(*(a2 + 1), a3->_private, *(this + 16));
  }

  return this;
}

void WebKit::InjectedBundlePageLoaderClient::globalObjectIsAvailableForFrame(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, WebKit::WebFrame *a3, WebCore::DOMWrapperWorld *a4)
{
  if (*(this + 25))
  {
    WebKit::InjectedBundleScriptWorld::getOrCreate(a4, &v11);
    v7 = v11;
    v8 = *(this + 25);
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
    if (v11)
    {
      v8(v9, v10, *(v11 + 1), *(this + 2));
      CFRelease(*(v7 + 1));
    }

    else
    {
      v8(v9, v10, 0, *(this + 2));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::serviceWorkerGlobalObjectIsAvailableForFrame(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, WebKit::WebFrame *a3, WebCore::DOMWrapperWorld *a4)
{
  if (*(this + 41))
  {
    WebKit::InjectedBundleScriptWorld::getOrCreate(a4, &v11);
    v7 = v11;
    v8 = *(this + 41);
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
    if (v11)
    {
      v8(v9, v10, *(v11 + 1), *(this + 2));
      CFRelease(*(v7 + 1));
    }

    else
    {
      v8(v9, v10, 0, *(this + 2));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::willInjectUserScriptForFrame(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, WebKit::WebFrame *a3, WebCore::DOMWrapperWorld *a4)
{
  if (*(this + 39))
  {
    WebKit::InjectedBundleScriptWorld::getOrCreate(a4, &v11);
    v7 = v11;
    v8 = *(this + 39);
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
    if (v11)
    {
      v8(v9, v10, *(v11 + 1), *(this + 2));
      CFRelease(*(v7 + 1));
    }

    else
    {
      v8(v9, v10, 0, *(this + 2));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::willDisconnectDOMWindowExtensionFromGlobalObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 208))
  {
    v5 = WebKit::InjectedBundleDOMWindowExtension::get(a3);
    if (v5)
    {
      v6 = v5;
      CFRetain(*(v5 + 8));
      (*(a1 + 208))(*(a2 + 8), *(v6 + 8), *(a1 + 16));
      v7 = *(v6 + 8);

      CFRelease(v7);
    }

    else
    {
      v8 = *(a1 + 208);
      v9 = *(a2 + 8);
      v10 = *(a1 + 16);

      v8(v9, 0, v10);
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didReconnectDOMWindowExtensionToGlobalObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 216))
  {
    v5 = WebKit::InjectedBundleDOMWindowExtension::get(a3);
    if (v5)
    {
      v6 = v5;
      CFRetain(*(v5 + 8));
      (*(a1 + 216))(*(a2 + 8), *(v6 + 8), *(a1 + 16));
      v7 = *(v6 + 8);

      CFRelease(v7);
    }

    else
    {
      v8 = *(a1 + 216);
      v9 = *(a2 + 8);
      v10 = *(a1 + 16);

      v8(v9, 0, v10);
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::willDestroyGlobalObjectForDOMWindowExtension(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 224))
  {
    v5 = WebKit::InjectedBundleDOMWindowExtension::get(a3);
    if (v5)
    {
      v6 = v5;
      CFRetain(*(v5 + 8));
      (*(a1 + 224))(*(a2 + 8), *(v6 + 8), *(a1 + 16));
      v7 = *(v6 + 8);

      CFRelease(v7);
    }

    else
    {
      v8 = *(a1 + 224);
      v9 = *(a2 + 8);
      v10 = *(a1 + 16);

      v8(v9, 0, v10);
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::shouldForceUniversalAccessFromLocalURL(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, atomic_uint **a3)
{
  v3 = *(this + 30);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v6 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v12 = v6;
  API::String::create(&v12, &v13);
  v8 = v12;
  v9 = v13;
  v12 = 0;
  v13 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
    if (v9)
    {
      goto LABEL_7;
    }

    return v3(v5, 0, *(this + 2));
  }

  if (!v9)
  {
    return v3(v5, 0, *(this + 2));
  }

LABEL_7:
  v10 = v3(v5, *(v9 + 1), *(this + 2));
  CFRelease(*(v9 + 1));
  return v10;
}

void WebKit::InjectedBundlePageLoaderClient::featuresUsedInPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v5 = *(a2 + 8);
    API::Array::createStringArray(a3, &v8);
    if (v8)
    {
      v6 = *(v8 + 1);
    }

    else
    {
      v6 = 0;
    }

    v3(v5, v6, *(a1 + 16));
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      CFRelease(*(v7 + 1));
    }
  }
}

uint64_t WebKit::InjectedBundlePageLoaderClient::layoutMilestones(WebKit::InjectedBundlePageLoaderClient *this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = v1(*(this + 2));

    return WebKit::toLayoutMilestones(v2);
  }

  else
  {
    v4 = *(this + 12);
    v5 = v4 == 0;
    v6 = v4 != 0;
    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (*(this + 13))
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t WebKit::toLayoutMilestones(WebKit *this)
{
  v1 = (this & 1) != 0;
  if ((this & 2) != 0)
  {
    v1 |= 2u;
  }

  if ((this & 4) != 0)
  {
    v1 |= 4u;
  }

  if ((this & 0x10) != 0)
  {
    v1 |= 0x10u;
  }

  if ((this & 0x20) != 0)
  {
    v1 |= 0x20u;
  }

  if ((this & 0x80) != 0)
  {
    v1 |= 0x80u;
  }

  return v1 | this & 0x100u;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::WebProcessPool::HandleSynchronousMessage>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v2)
    {
      CFRelease(*(v2 + 8));
    }

    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1, 0);
  }

  *(a1 + 16) = -1;
  return a1;
}

WTF::DeferrableRefCountedBase *JSC::JSGenericTypedArrayView<JSC::Uint8Adaptor>::possiblySharedTypedImpl@<X0>(JSC::JSArrayBufferView *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 40);
  v5 = v4 - 88;
  if ((v4 - 88) > 0x35)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0x3D) == 0)
  {
    if (((1 << v5) & 0x3D000000000000) != 0)
    {
      v6 = *(this + 6);
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v6 += 2;
      goto LABEL_12;
    }

LABEL_8:
    if (v4 != 16 && v4 != 48)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v6 = JSC::JSArrayBufferView::slowDownAndWasteMemory(this);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = *(*(this + 1) - 8);
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = v6;
  if (*(this + 40))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(this + 3);
    v8 = 1;
  }

  JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::tryCreate(&v10, *(this + 4), v7, v8, a2);
  result = v10;
  v10 = 0;
  if (result)
  {
    return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
  }

  return result;
}

void WebKit::InjectedBundleHitTestResult::~InjectedBundleHitTestResult(WebKit::InjectedBundleHitTestResult *this)
{
  *this = &unk_1F112B490;
  MEMORY[0x19EB04BD0](this + 16);
}

{
  *this = &unk_1F112B490;
  MEMORY[0x19EB04BD0](this + 16);

  JUMPOUT(0x19EB14CF0);
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WebKit::UserData>>(IPC::Decoder *a1, uint64_t a2, __n128 a3)
{
  IPC::ArgumentCoder<std::tuple<WebKit::UserData>,void>::decode<IPC::Decoder>(a1, &v11, a3);
  if ((v12 & 1) == 0)
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9 && v8 != 0)
    {
      (*(*v9 + 16))(v9, v7);
    }
  }

  std::__optional_storage_base<std::tuple<WebKit::UserData>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebKit::UserData>,false>>(a2, &v11);
  if (v12 == 1)
  {
    v5 = v11;
    v11 = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }
  }

  return a1;
}

void std::__optional_storage_base<std::tuple<WebKit::UserData>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WebKit::UserData>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {

      std::tuple<WebKit::UserData>::operator=[abi:sn200100](a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      CFRelease(*(v3 + 8));
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      CFRetain(*(v4 + 8));
      v4 = v5;
    }

    *a1 = v4;
    *(a1 + 8) = 1;
  }
}

uint64_t *std::tuple<WebKit::UserData>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*(v3 + 8));
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return a1;
}

uint64_t Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));

  return IPC::Encoder::operator<<<BOOL &>(a2, (a1 + 24));
}

uint64_t WTF::Detail::CallableWrapper<WebKit::InjectedBundle::setAsynchronousSpellCheckingEnabled(BOOL)::$_0,void,WebCore::Page &>::call(uint64_t result, uint64_t a2)
{
  v2 = 0x8000000;
  if (!*(result + 8))
  {
    v2 = 0;
  }

  *(*(a2 + 120) + 680) = *(*(a2 + 120) + 680) & 0xFFFFFFFFF7FFFFFFLL | v2;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::InjectedBundle::setUserStyleSheetLocation(WTF::String const&)::$_0,void,WebCore::Page &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112B4E0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::InjectedBundle::setUserStyleSheetLocation(WTF::String const&)::$_0,void,WebCore::Page &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112B4E0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::InjectedBundle::setUserStyleSheetLocation(WTF::String const&)::$_0,void,WebCore::Page &>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 120);
  WTF::URL::URL(v5, (a1 + 8));
  WebCore::Settings::setUserStyleSheetLocation(v2, v5);
  result = v5[0];
  v5[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

WebKit::NotificationPermissionRequestManager *WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(WebKit::NotificationPermissionRequestManager *result)
{
  if (*result == 1)
  {
    WebKit::NotificationPermissionRequestManager::~NotificationPermissionRequestManager(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::Notification>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB043E0](result - 8);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = a2;
  v10 = WTF::fastMalloc(((32 * a2) | 0x10));
  if (a2)
  {
    v12 = v10 + 4;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  *a1 = (v10 + 4);
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if (*v15 ^ 1 | *(v15 + 8))
      {
        if (*v15 == 0)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v11);
            }
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

          v19 = WTF::UUIDHash::hash((v6 + 32 * v13), v11);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = v17 + 32 * v21;
            v19 = ++v20 + v21;
          }

          while (*v22 != 0);
          v23 = *(v22 + 16);
          *(v22 + 16) = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v11);
          }

          *v22 = *v15;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v22 + 16) = v24;
          v25 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v11);
          }

          if (v15 == a3)
          {
            v14 = v22;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v11);
  return v14;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::InjectedBundle::liveDocumentURLs(BOOL)::$_0,void,WebCore::Page &>::call(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 176);
  ++*(v3 + 16);
  do
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = v4 + 1;
    if (*(v3 + 136) == 1)
    {
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }

    v7 = *(v3 + 224);
    if (v7)
    {
      *(v7 + 28) += 2;
      v8 = *(a1 + 8);
      v9 = *(v7 + 464);
      v28[0] = *(v7 + 448);
      v28[1] = v9;
      v10 = *v8;
      if (*v8)
      {
        if (!(*&v28[0] ^ 1 | *(&v28[0] + 1)) || v28[0] == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2E1AACLL);
        }

        v11 = *(v10 - 8);
        v13 = WTF::UUIDHash::hash(v28, a2) & v11;
        v14 = (v10 + 32 * v13);
        v15 = *v14;
        v16 = v14[1];
        if (v16 == *(&v28[0] + 1) && v15 == *&v28[0])
        {
LABEL_26:
          v21 = (v10 + 32 * v13);
          v22 = *v8;
          if (!*v8)
          {
LABEL_31:
            if (v22 != v21)
            {
              v23 = v21[2];
              v21[1] = 0;
              v21[2] = 0;
              *v21 = 1;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v12);
              }

              v24 = *v8;
              v25 = vadd_s32(*(*v8 - 16), 0xFFFFFFFF00000001);
              *(v24 - 16) = v25;
              v26 = *(v24 - 4);
              if (6 * v25.i32[1] < v26 && v26 >= 9)
              {
                WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(v8, v26 >> 1, 0);
              }
            }

            goto LABEL_41;
          }
        }

        else
        {
          v18 = 1;
          while (v15 | v16)
          {
            v13 = (v13 + v18) & v11;
            v19 = (v10 + 32 * v13);
            v15 = *v19;
            v16 = v19[1];
            v20 = v16 == *(&v28[0] + 1) && v15 == *&v28[0];
            ++v18;
            if (v20)
            {
              goto LABEL_26;
            }
          }

          v22 = *v8;
          if (!*v8)
          {
            goto LABEL_41;
          }

          v21 = (v22 + 32 * *(v22 - 4));
        }

        v22 += 32 * *(v22 - 4);
        if (v22 != v21)
        {
          goto LABEL_31;
        }
      }

LABEL_41:
      if (*(v7 + 28) == 2)
      {
        WebCore::Node::removedLastRef(v7);
      }

      else
      {
        *(v7 + 28) -= 2;
      }
    }

    v4 = *(v3 + 16) - 1;
    if (*(v3 + 16) != 1)
    {
LABEL_4:
      *(v3 + 16) = v4;
      goto LABEL_5;
    }

LABEL_44:
    (*(*v3 + 8))(v3);
LABEL_5:
    result = WebCore::FrameTree::traverseNext((v3 + 40), 0);
    v6 = result;
    if (result)
    {
      ++*(result + 16);
    }

    if (*(v3 + 16) == 1)
    {
      result = (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 16);
    }

    v3 = v6;
  }

  while (v6);
  return result;
}

unsigned int **WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned int **a2)
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

  return WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unsigned int **WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned int **a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
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
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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

          v19 = WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,true>::hash(*(v14 + 1));
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v19 = ++v20 + v21;
          }

          while (*(v17 + 16 * v21));
          v22 = (v17 + 16 * v21);
          v23 = v22[1];
          v22[1] = 0;
          if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, v10);
          }

          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v10);
          }

          v25 = *v13;
          *v13 = 0;
          *v22 = v25;
          v26 = v13[1];
          v13[1] = 0;
          v22[1] = v26;
          v27 = v13[1];
          v13[1] = 0;
          if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27);
            WTF::fastFree(v27, v10);
          }

          v28 = *v13;
          *v13 = 0;
          if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28);
            WTF::fastFree(v28, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15);
            WTF::fastFree(v15, v10);
          }

          v16 = *v13;
          *v13 = 0;
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

uint64_t WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,true>::hash(uint64_t a1)
{
  if (a1)
  {
    v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
    v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
    return (v3 >> 31) ^ v3;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::InjectedBundlePageLoaderClient::willLoadDataRequest(WebKit::WebPage &,WebCore::ResourceRequest const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WTF::String const&,WTF::String const&,WTF::URL const&,API::Object *)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112B530;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::InjectedBundlePageLoaderClient::willLoadDataRequest(WebKit::WebPage &,WebCore::ResourceRequest const&,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WTF::String const&,WTF::String const&,WTF::URL const&,API::Object *)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112B530;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::InjectedBundlePageResourceLoadClient::didInitiateLoadForResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const WebCore::ResourceRequest *a5, uint64_t a6)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v11 = *(a2 + 8);
    v12 = *(a3 + 8);
    v13 = API::Object::newObject(0xD8uLL, 24);
    v14 = API::Object::Object(v13);
    *v14 = &unk_1F110EC40;
    WebCore::ResourceRequest::ResourceRequest(v14 + 2, a5);
    v6(v11, v12, a4, *(v13 + 1), a6, *(a1 + 16));
    v15 = *(v13 + 1);

    CFRelease(v15);
  }
}

void WebKit::InjectedBundlePageResourceLoadClient::willSendRequestForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, API::URLResponse *a6)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v11 = *(a2 + 8);
    v12 = *(a3 + 8);
    v13 = API::Object::newObject(0xD8uLL, 24);
    v14 = API::Object::Object(v13);
    *v14 = &unk_1F110EC40;
    WebCore::ResourceRequest::ResourceRequest(v14 + 2, a5);
    v15 = v13[1];
    API::URLResponse::create(a6, v41);
    v16 = v41[0];
    if (v41[0])
    {
      v17 = *(v41[0] + 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v6(v11, v12, a4, v15, v17, *(a1 + 16));
    v19 = v18;
    if (v18)
    {
      v20 = [v18 _apiObject];
      if ((*(*v20 + 2))(v20) != 24)
      {
        __break(0xC471u);
        return;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v16)
    {
      CFRelease(*(v16 + 1));
    }

    CFRelease(v13[1]);
    if (v19)
    {
      WebCore::ResourceRequestBase::httpBody(v41, (v20 + 2));
      WebCore::ResourceRequest::updateFromDelegatePreservingOldProperties(a5, (v20 + 2));
      if (v41[0])
      {
        WebCore::ResourceRequestBase::setHTTPBody();
        v40 = v41[0];
        v41[0] = 0;
        if (v40)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v40);
        }
      }

      CFRelease(v20[1]);
    }

    else
    {
      WebCore::ResourceRequest::ResourceRequest(v41);
      WebCore::ResourceRequestBase::RequestData::operator=(a5, v41);
      v22 = v47;
      v47 = 0;
      v23 = *(a5 + 152);
      *(a5 + 152) = v22;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v48;
      v48 = 0;
      v25 = *(a5 + 160);
      *(a5 + 160) = v24;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }

      v26 = v49;
      v49 = 0;
      v27 = *(a5 + 168);
      *(a5 + 168) = v26;
      if (v27)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v27);
      }

      *(a5 + 176) = v50;
      *(a5 + 184) = v51;
      v28 = cf;
      cf = 0;
      v29 = *(a5 + 192);
      *(a5 + 192) = v28;
      if (v29)
      {
        CFRelease(v29);
        v30 = cf;
        cf = 0;
        if (v30)
        {
          CFRelease(v30);
        }
      }

      v31 = v49;
      v49 = 0;
      if (v31)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v31);
      }

      v32 = v48;
      v48 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v21);
      }

      v33 = v47;
      v47 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v21);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v21);
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v45, v34);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v44, v35);
      v37 = v43;
      v43 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v36);
      }

      v38 = v42;
      v42 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v36);
      }

      v39 = v41[0];
      v41[0] = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v36);
      }
    }
  }
}

void WebKit::InjectedBundlePageResourceLoadClient::didReceiveResponseForResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, API::URLResponse *this)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    API::URLResponse::create(this, &v11);
    v10 = v11;
    if (v11)
    {
      v5(v8, v9, a4, *(v11 + 1), *(a1 + 16));
      CFRelease(*(v10 + 1));
    }

    else
    {
      v5(v8, v9, a4, 0, *(a1 + 16));
    }
  }
}

uint64_t WebKit::InjectedBundlePageResourceLoadClient::didReceiveContentLengthForResource(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 48);
  if (v5)
  {
    return v5(*(a2 + 8), *(a3 + 8), a4, a5, *(result + 16));
  }

  return result;
}

uint64_t WebKit::InjectedBundlePageResourceLoadClient::didFinishLoadForResource(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    return v4(*(a2 + 8), *(a3 + 8), a4, *(result + 16));
  }

  return result;
}

void WebKit::InjectedBundlePageResourceLoadClient::didFailLoadForResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint **this)
{
  v5 = *(a1 + 64);
  if (v5)
  {
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    API::Error::create(this, &v11);
    v10 = v11;
    if (v11)
    {
      v5(v8, v9, a4, *(v11 + 1), *(a1 + 16));
      CFRelease(*(v10 + 1));
    }

    else
    {
      v5(v8, v9, a4, 0, *(a1 + 16));
    }
  }
}

uint64_t WebKit::InjectedBundlePageResourceLoadClient::shouldCacheResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    return v4(*(a2 + 8), *(a3 + 8), a4, *(a1 + 16));
  }

  else
  {
    return 1;
  }
}

uint64_t WebKit::InjectedBundlePageResourceLoadClient::shouldUseCredentialStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    return v4(*(a2 + 8), *(a3 + 8), a4, *(a1 + 16));
  }

  else
  {
    return 1;
  }
}

_OWORD *WebKit::InjectedBundlePageUIClient::InjectedBundlePageUIClient(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 0u;
  result = (a1 + 8);
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_1F112B5B8;
  if (!a2)
  {
    return a1;
  }

  v4 = *a2;
  if (v4 == 5)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[5];
    result[4] = a2[4];
    result[5] = v8;
    result[2] = v6;
    result[3] = v7;
    v9 = a2[6];
    v10 = a2[7];
    v11 = a2[9];
    result[8] = a2[8];
    result[9] = v11;
    result[6] = v9;
    result[7] = v10;
    v12 = a2[10];
    v13 = a2[11];
    v14 = a2[13];
    result[12] = a2[12];
    result[13] = v14;
    result[10] = v12;
    result[11] = v13;
    return a1;
  }

  if (v4 > 4)
  {
    return a1;
  }

  if (v4 < 6)
  {
    memcpy(result, a2, constinit_21[v4]);
    return a1;
  }

  __break(1u);
  return result;
}

void WebKit::InjectedBundlePageUIClient::willAddMessageToConsole(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint **a5, uint64_t a6)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v14 = v10;
    API::String::create(&v14, &v15);
    v12 = v14;
    v13 = v15;
    v14 = 0;
    v15 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13)
    {
LABEL_9:
      v6(v9, *(v13 + 1), a6, *(a1 + 16));
      CFRelease(*(v13 + 1));
      return;
    }

    v6(v9, 0, a6, *(a1 + 16));
  }
}

void WebKit::InjectedBundlePageUIClient::willAddMessageWithArgumentsToConsole(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint **a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9, atomic_uint **a10)
{
  v10 = *(a1 + 224);
  if (v10)
  {
    if (a2)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    v27 = v16;
    API::String::create(&v27, &v28);
    v18 = v27;
    v19 = v28;
    v27 = 0;
    v28 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    if (v19)
    {
      v20 = *(v19 + 1);
    }

    else
    {
      v20 = 0;
    }

    API::Array::createStringArray(a6, a7, &v26);
    if (v26)
    {
      v21 = *(v26 + 1);
    }

    else
    {
      v21 = 0;
    }

    v22 = *a10;
    if (*a10)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v27 = v22;
    API::String::create(&v27, &v28);
    v24 = v27;
    v25 = v28;
    v27 = 0;
    v28 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
      if (v25)
      {
LABEL_18:
        v10(v15, v20, v21, a8, a9, *(v25 + 1), *(a1 + 16));
        CFRelease(*(v25 + 1));
        if (!v19)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if (v25)
    {
      goto LABEL_18;
    }

    v10(v15, v20, v21, a8, a9, 0, *(a1 + 16));
    if (v19)
    {
LABEL_19:
      CFRelease(*(v19 + 1));
    }
  }
}

void WebKit::InjectedBundlePageUIClient::willRunJavaScriptAlert(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2, atomic_uint **a3, WebKit::WebFrame *a4)
{
  v4 = *(this + 5);
  if (v4)
  {
    if (a2)
    {
      v7 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v14 = v8;
    API::String::create(&v14, &v15);
    v10 = v14;
    v11 = v15;
    v14 = 0;
    v15 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v11)
      {
LABEL_9:
        v12 = *(v11 + 1);
        if (a4)
        {
LABEL_10:
          v13 = *(a4 + 1);
          goto LABEL_11;
        }

LABEL_16:
        v13 = 0;
LABEL_11:
        v4(v7, v12, v13, *(this + 2));
        if (v11)
        {
          CFRelease(*(v11 + 1));
        }

        return;
      }
    }

    else if (v11)
    {
      goto LABEL_9;
    }

    v12 = 0;
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }
}

void WebKit::InjectedBundlePageUIClient::willRunJavaScriptConfirm(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2, atomic_uint **a3, WebKit::WebFrame *a4)
{
  v4 = *(this + 6);
  if (v4)
  {
    if (a2)
    {
      v7 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v14 = v8;
    API::String::create(&v14, &v15);
    v10 = v14;
    v11 = v15;
    v14 = 0;
    v15 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v11)
      {
LABEL_9:
        v12 = *(v11 + 1);
        if (a4)
        {
LABEL_10:
          v13 = *(a4 + 1);
          goto LABEL_11;
        }

LABEL_16:
        v13 = 0;
LABEL_11:
        v4(v7, v12, v13, *(this + 2));
        if (v11)
        {
          CFRelease(*(v11 + 1));
        }

        return;
      }
    }

    else if (v11)
    {
      goto LABEL_9;
    }

    v12 = 0;
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }
}

void WebKit::InjectedBundlePageUIClient::willRunJavaScriptPrompt(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2, atomic_uint **a3, atomic_uint **a4, WebKit::WebFrame *a5)
{
  v5 = *(this + 7);
  if (!v5)
  {
    return;
  }

  if (a2)
  {
    v9 = *(a2 + 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v21 = v10;
  API::String::create(&v21, &v22);
  v12 = v21;
  v13 = v22;
  v21 = 0;
  v22 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
LABEL_9:
    v14 = *(v13 + 1);
    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:
  v15 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v21 = v15;
  API::String::create(&v21, &v22);
  v17 = v21;
  v18 = v22;
  v21 = 0;
  v22 = 0;
  if (!v17 || atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_25:
    v19 = 0;
    if (a5)
    {
      goto LABEL_16;
    }

LABEL_26:
    v20 = 0;
    goto LABEL_17;
  }

  WTF::StringImpl::destroy(v17, v16);
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_15:
  v19 = *(v18 + 1);
  if (!a5)
  {
    goto LABEL_26;
  }

LABEL_16:
  v20 = *(a5 + 1);
LABEL_17:
  v5(v9, v14, v19, v20, *(this + 2));
  if (v18)
  {
    CFRelease(*(v18 + 1));
  }

  if (v13)
  {
    CFRelease(*(v13 + 1));
  }
}

void WebKit::InjectedBundlePageUIClient::mouseDidMoveOverElement(uint64_t a1, uint64_t a2, WebKit::InjectedBundleHitTestResult *this, char a4, uint64_t *a5)
{
  if (*(a1 + 64))
  {
    WebKit::InjectedBundleHitTestResult::create(this, &v15);
    v14 = 0;
    if (a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = v15;
    if (v15)
    {
      v11 = *(v15 + 1);
    }

    else
    {
      v11 = 0;
    }

    (*(a1 + 64))(v9, v11, a4 & 0x1F, &v14, *(a1 + 16));
    v12 = v14;
    if (v14)
    {
      v12 = [v14 _apiObject];
    }

    v13 = *a5;
    *a5 = v12;
    if (!v13)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_10;
    }

    CFRelease(*(v13 + 8));
    if (v10)
    {
LABEL_10:
      CFRelease(*(v10 + 1));
    }
  }
}

uint64_t WebKit::InjectedBundlePageUIClient::pageDidScroll(uint64_t this, WebKit::WebPage *a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    if (a2)
    {
      v3 = *(a2 + 1);
    }

    else
    {
      v3 = 0;
    }

    return v2(v3, *(this + 16));
  }

  return this;
}

uint64_t WebKit::InjectedBundlePageUIClient::statusBarIsVisible(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2(v3, *(this + 2));
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 == 1;
  }
}

uint64_t WebKit::InjectedBundlePageUIClient::menuBarIsVisible(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2(v3, *(this + 2));
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 == 1;
  }
}

uint64_t WebKit::InjectedBundlePageUIClient::toolbarsAreVisible(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2)
{
  v2 = *(this + 16);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2(v3, *(this + 2));
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 == 1;
  }
}

uint64_t WebKit::InjectedBundlePageUIClient::didExceedDatabaseQuota(WebKit::InjectedBundlePageUIClient *this, WebKit::WebPage *a2, API::SecurityOrigin *a3, atomic_uint **a4, atomic_uint **a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = *(this + 18);
  if (!v9)
  {
    return 0;
  }

  if (a2)
  {
    v27 = *(a2 + 1);
    if (a3)
    {
LABEL_4:
      v15 = *(a3 + 1);
      goto LABEL_5;
    }
  }

  else
  {
    v27 = 0;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  v15 = 0;
LABEL_5:
  v16 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  v28 = v16;
  API::String::create(&v28, &v29);
  v18 = v28;
  v19 = v29;
  v28 = 0;
  v29 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
    if (v19)
    {
      goto LABEL_10;
    }
  }

  else if (v19)
  {
LABEL_10:
    v20 = *(v19 + 1);
    goto LABEL_11;
  }

  v20 = 0;
LABEL_11:
  v21 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v28 = v21;
  API::String::create(&v28, &v29);
  v23 = v28;
  v24 = v29;
  v28 = 0;
  v29 = 0;
  if (!v23 || atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v24)
    {
      goto LABEL_16;
    }

LABEL_23:
    v25 = v9(v27, v15, v20, 0, a6, a7, a8, a9, *(this + 2));
    if (!v19)
    {
      return v25;
    }

    goto LABEL_17;
  }

  WTF::StringImpl::destroy(v23, v22);
  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_16:
  v25 = v9(v27, v15, v20, *(v24 + 1), a6, a7, a8, a9, *(this + 2));
  CFRelease(*(v24 + 1));
  if (v19)
  {
LABEL_17:
    CFRelease(*(v19 + 1));
  }

  return v25;
}

void WebKit::InjectedBundlePageUIClient::didClickAutoFillButton(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageUIClient::didResignInputElementStrongPasswordAppearance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 216);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

WTF::StringImpl *WebKit::InjectedBundleScriptWorld::create@<X0>(WebKit::InjectedBundleScriptWorld **a1@<X8>)
{
  v2 = WebKit::uniqueWorldName(void)::uniqueWorldNameNumber++;
  WTF::makeString<WTF::ASCIILiteral,unsigned long long>("UniqueWorld_", 13, v2, &v5);
  WebKit::InjectedBundleScriptWorld::create(&v5, a1);
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

WebCore::DOMWrapperWorld *WebKit::InjectedBundleScriptWorld::create@<X0>(atomic_uint **a1@<X0>, WebKit::InjectedBundleScriptWorld **a2@<X8>)
{
  v4 = API::Object::newObject(0x28uLL, 145);
  WebCore::ScriptController::createWorld();
  WebKit::InjectedBundleScriptWorld::InjectedBundleScriptWorld(v4, v6, a1);
  *a2 = v4;
  result = v6;
  if (v6)
  {
    return WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v6);
  }

  return result;
}

WTF::StringImpl *WebKit::InjectedBundleScriptWorld::getOrCreate@<X0>(WebKit::InjectedBundleScriptWorld *this@<X0>, WebKit::InjectedBundleScriptWorld **a2@<X8>)
{
  v5 = WebCore::mainThreadNormalWorldSingleton(this);
  if (v5 == this)
  {
    v6 = WebKit::InjectedBundleScriptWorld::normalWorldSingleton(v5);
    result = CFRetain(*(v6 + 1));
    *a2 = v6;
    return result;
  }

  if ((_MergedGlobals_111 & 1) == 0)
  {
    qword_1ED642C30 = 0;
    _MergedGlobals_111 = 1;
    goto LABEL_16;
  }

  if (!qword_1ED642C30)
  {
    goto LABEL_16;
  }

  v8 = *(qword_1ED642C30 - 8);
  v9 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  for (i = 1; ; ++i)
  {
    v14 = *(qword_1ED642C30 + 16 * v12);
    if (!v14)
    {
      goto LABEL_16;
    }

    if (v14 != -1)
    {
      v15 = *(v14 + 8);
      if (!v15)
      {
        __break(0xC471u);
        goto LABEL_22;
      }

      if (v15 == this)
      {
        break;
      }
    }

    v12 = (v12 + i) & v8;
  }

  v16 = *(qword_1ED642C30 + 16 * v12 + 8);
  if (v16)
  {
    v17 = *(v16 + 8);
    if (v17)
    {
      result = CFRetain(v17[1]);
      *a2 = v17;
      return result;
    }
  }

LABEL_16:
  v18 = API::Object::newObject(0x28uLL, 145);
  v19 = WebKit::uniqueWorldName(void)::uniqueWorldNameNumber++;
  v23[0] = "UniqueWorld_";
  v23[1] = 13;
  v22 = v19;
  WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>(v23, &v22, &v21);
  if (!v21)
  {
    __break(0xC471u);
LABEL_22:
    JUMPOUT(0x19E2E3208);
  }

  WebKit::InjectedBundleScriptWorld::InjectedBundleScriptWorld(v18, this, &v21);
  *a2 = v18;
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v20);
    }
  }

  return result;
}

WebKit::InjectedBundleScriptWorld *WebKit::InjectedBundleScriptWorld::normalWorldSingleton(WebKit::InjectedBundleScriptWorld *this)
{
  {
    return WebKit::InjectedBundleScriptWorld::normalWorldSingleton(void)::world;
  }

  v6[3] = v1;
  v6[4] = v2;
  v4 = API::Object::newObject(0x28uLL, 145);
  v5 = WebCore::mainThreadNormalWorldSingleton(v4);
  v6[0] = 0;
  result = WebKit::InjectedBundleScriptWorld::InjectedBundleScriptWorld(v4, v5, v6);
  WebKit::InjectedBundleScriptWorld::normalWorldSingleton(void)::world = v4;
  return result;
}

WebKit::InjectedBundleScriptWorld *WebKit::InjectedBundleScriptWorld::InjectedBundleScriptWorld(WebKit::InjectedBundleScriptWorld *this, WebCore::DOMWrapperWorld *a2, atomic_uint **a3)
{
  v6 = API::Object::Object(this);
  *(v6 + 2) = 0;
  *v6 = &unk_1F112B660;
  ++*a2;
  *(v6 + 3) = a2;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 4) = v7;
  if ((_MergedGlobals_111 & 1) == 0)
  {
    qword_1ED642C30 = 0;
    _MergedGlobals_111 = 1;
  }

  if (!*(a2 + 1))
  {
    v9 = WTF::fastCompactMalloc(0x10);
    *v9 = 1;
    *(v9 + 8) = a2;
    v10 = *(a2 + 1);
    *(a2 + 1) = v9;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v8);
      }

      else
      {
        --*v10;
      }
    }
  }

  v11 = *(a2 + 1);
  ++*v11;
  v26 = v11;
  v27 = this;
  if (v11 == -1 || !v11)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2E34F0);
  }

  v12 = qword_1ED642C30;
  if (qword_1ED642C30 || (WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand(), (v12 = qword_1ED642C30) != 0))
  {
    v13 = *(v12 - 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,true>::hash(v11[1]);
  v15 = 0;
  for (i = 1; ; ++i)
  {
    v17 = v14 & v13;
    v18 = (v12 + 16 * (v14 & v13));
    v19 = *v18;
    if (!*v18)
    {
      break;
    }

    if (v19 != -1)
    {
      v18 = v15;
      if (WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,true>::equal(*(v19 + 8), v11))
      {
        goto LABEL_23;
      }
    }

    v14 = i + v17;
    v15 = v18;
  }

  if (v15)
  {
    *v15 = 0;
    v15[1] = 0;
    --*(qword_1ED642C30 - 16);
    v18 = v15;
  }

  WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>::translate<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>,WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>> WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebKit::InjectedBundleScriptWorld&>(WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl> &&,WebKit::InjectedBundleScriptWorld&)::{lambda(void)#1}>( v18,  &v26,  &v27);
  v21 = qword_1ED642C30;
  if (qword_1ED642C30)
  {
    v22 = *(qword_1ED642C30 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(qword_1ED642C30 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 > 2 * v23)
    {
      goto LABEL_23;
    }
  }

  else if (3 * v24 > 4 * v23)
  {
    goto LABEL_23;
  }

  WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand();
LABEL_23:
  if (v26)
  {
    if (*v26 == 1)
    {
      WTF::fastFree(v26, v20);
    }

    else
    {
      --*v26;
    }
  }

  return this;
}

WTF **WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>::~WeakRef(WTF **a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, a2);
    }

    else
    {
      --*v3;
    }
  }

  return a1;
}

void WebKit::InjectedBundleScriptWorld::~InjectedBundleScriptWorld(WebKit::InjectedBundleScriptWorld *this)
{
  *this = &unk_1F112B660;
  if ((_MergedGlobals_111 & 1) == 0)
  {
    qword_1ED642C30 = 0;
    _MergedGlobals_111 = 1;
  }

  v2 = WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::DOMWrapperWorld const*>(*(this + 3));
  WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v2, v3);
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v6);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v4);
}

{
  WebKit::InjectedBundleScriptWorld::~InjectedBundleScriptWorld(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::InjectedBundleScriptWorld::protectedCoreWorld@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  ++*v2;
  *a2 = v2;
  return this;
}

uint64_t WKBundleSetClient(void *a1, __int128 *a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v5 = WebKit::InjectedBundleClient::operator new(v3, v4);
  v7 = WebKit::InjectedBundleClient::InjectedBundleClient(v5, a2);
  WebKit::InjectedBundle::setClient(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WKBundleSetServiceWorkerProxyCreationCallback(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  result = WebCore::SWContextManager::singleton(v3);
  *(result + 24) = a2;
  return result;
}

WTF::StringImpl *WKBundlePostMessage(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v5 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v11);
    WTF::String::isolatedCopy();
    v6 = v11;
    v11 = 0;
    if (v6)
    {
      CFRelease(*(v6 + 8));
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
LABEL_7:
      v7 = [a3 _apiObject];
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  WebKit::InjectedBundle::postMessage(v5, &v10, v7);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void WKBundlePostSynchronousMessage(void *a1, void *a2, void *a3, API::Object **a4)
{
  v14 = 0;
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v7 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v15);
    WTF::String::isolatedCopy();
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_7:
  v9 = [a3 _apiObject];
LABEL_8:
  WebKit::InjectedBundle::postSynchronousMessage(v7, &v13, v9, &v14);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v14;
  if (a4)
  {
    if (v14)
    {
      v12 = v14[1];
    }

    *a4 = v12;
  }

  else if (v14)
  {
    CFRelease(v14[1]);
  }
}

uint64_t WKBundleGarbageCollectJavaScriptObjects(void *a1)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v1 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v2 = WebCore::GCController::singleton(v1);

  return MEMORY[0x1EEE54BE0](v2);
}

uint64_t WKBundleGarbageCollectJavaScriptObjectsOnAlternateThreadForDebugging(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v4 = WebCore::GCController::singleton(v3);

  return MEMORY[0x1EEE54BF0](v4, a2);
}

uint64_t WKBundleGetJavaScriptObjectsCount(void *a1)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v1 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);

  return WebKit::InjectedBundle::javaScriptObjectsCount(v1);
}

WTF::StringImpl *WKBundleAddOriginAccessAllowListEntry(void *a1, void *a2, void *a3, void *a4, const WTF::String *a5)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v9 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v20);
    WTF::String::isolatedCopy();
    v10 = v20;
    v20 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    if (a3)
    {
LABEL_7:
      WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v20);
      WTF::String::isolatedCopy();
      v11 = v20;
      v20 = 0;
      if (v11)
      {
        CFRelease(*(v11 + 8));
      }

      if (a4)
      {
        goto LABEL_10;
      }

LABEL_14:
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_10:
  WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a4, &v20);
  WTF::String::isolatedCopy();
  v12 = v20;
  v20 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }

LABEL_15:
  WebKit::InjectedBundle::addOriginAccessAllowListEntry(v9, &v19, &v18, &v17, a5);
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *WKBundleRemoveOriginAccessAllowListEntry(void *a1, void *a2, void *a3, void *a4, const WTF::String *a5)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v9 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v20);
    WTF::String::isolatedCopy();
    v10 = v20;
    v20 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    if (a3)
    {
LABEL_7:
      WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v20);
      WTF::String::isolatedCopy();
      v11 = v20;
      v20 = 0;
      if (v11)
      {
        CFRelease(*(v11 + 8));
      }

      if (a4)
      {
        goto LABEL_10;
      }

LABEL_14:
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_10:
  WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a4, &v20);
  WTF::String::isolatedCopy();
  v12 = v20;
  v20 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }

LABEL_15:
  WebKit::InjectedBundle::removeOriginAccessAllowListEntry(v9, &v19, &v18, &v17, a5);
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

uint64_t WKBundleResetOriginAccessAllowLists(void *a1)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v1 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);

  return WebKit::InjectedBundle::resetOriginAccessAllowLists(v1);
}

uint64_t WKBundleSetAsynchronousSpellCheckingEnabledForTesting(void *a1, char a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);

  return WebKit::InjectedBundle::setAsynchronousSpellCheckingEnabled(v3, a2);
}

void *WKBundleGetLiveDocumentURLsForTesting(void *a1, char a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  WebKit::InjectedBundle::liveDocumentURLs(v3, a2, &v29);
  v5 = WKMutableArrayCreate();
  v6 = v29;
  if (!v29)
  {
    v8 = 0;
    v7 = 0;
LABEL_12:
    v10 = v8;
    v8 = (v29 + 32 * v7);
    if (!v29)
    {
      v12 = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = *(v29 - 1);
  v8 = (v29 + 32 * v7);
  if (!*(v29 - 3))
  {
    goto LABEL_12;
  }

  if (!v7)
  {
    v11 = 0;
    v10 = v29;
    goto LABEL_15;
  }

  v9 = 32 * v7;
  v10 = v29;
  while (*v10 <= 1uLL)
  {
    v10 = (v10 + 32);
    v9 -= 32;
    if (!v9)
    {
      v10 = v8;
      break;
    }
  }

LABEL_10:
  v11 = *(v29 - 1);
LABEL_15:
  v12 = (v29 + 32 * v11);
LABEL_16:
  if (v10 != v12)
  {
    do
    {
      v13 = API::Object::newObject(0x18uLL, 9);
      v14 = API::Object::Object(v13);
      *v14 = &unk_1F110EAE0;
      *(v14 + 2) = 0;
      v15 = *(v14 + 1);
      v17 = WKStringCreateWithUTF8CString("id", v16);
      v19 = WKStringCreateWithUTF8CString("url", v18);
      WTF::UUID::toString(&v28, v10);
      API::String::create(&v30);
      if (v30)
      {
        v21 = *(v30 + 1);
      }

      else
      {
        v21 = 0;
      }

      v22 = v28;
      v28 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }

      API::String::create(&v30);
      if (v30)
      {
        v23 = *(v30 + 1);
      }

      else
      {
        v23 = 0;
      }

      WKDictionarySetItem(v15, v17, v21);
      WKDictionarySetItem(v15, v19, v23);
      WKArrayAppendItem(v5, v15);
      if (v23)
      {
        CFRelease(*([(CFTypeRef *)v23 _apiObject]+ 8));
      }

      if (v21)
      {
        CFRelease(*([(CFTypeRef *)v21 _apiObject]+ 8));
      }

      if (v19)
      {
        CFRelease(*([v19 _apiObject] + 8));
      }

      if (v17)
      {
        CFRelease(*([v17 _apiObject] + 8));
      }

      if (v15)
      {
        CFRelease(*([v15 _apiObject] + 8));
      }

      do
      {
        v10 = (v10 + 32);
      }

      while (v10 != v8 && *v10 <= 1uLL);
    }

    while (v10 != v12);
    v6 = v29;
  }

  if (v6)
  {
    v24 = *(v6 - 4);
    if (v24)
    {
      v25 = (v6 + 16);
      do
      {
        if (*(v25 - 2) ^ 1 | *(v25 - 1))
        {
          v26 = *v25;
          *v25 = 0;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v4);
            }
          }
        }

        v25 += 4;
        --v24;
      }

      while (v24);
    }

    WTF::fastFree((v6 - 16), v4);
  }

  return v5;
}

WTF::StringImpl *WKBundleSetDatabaseQuota(WebCore::DatabaseTracker *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = WebCore::DatabaseTracker::singleton(a1);
  WebCore::SecurityOriginData::fromDatabaseIdentifier();
  if ((v9 & 1) == 0)
  {
    __break(1u);
  }

  result = WebCore::DatabaseTracker::setQuota(v1, &v6);
  if (v9 == 1 && v8 == 0)
  {
    v5 = v7;
    v7 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

uint64_t WKBundleCreateWKDataFromUInt8Array(void *a1, uint64_t a2, const OpaqueJSValue *a3)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  WebKit::InjectedBundle::createWebDataFromUint8Array(a3, &v5);
  if (v5)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleNumberOfPages(void *a1, void *a2, double a3, double a4)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v7 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v8 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a2);

  return WebKit::InjectedBundle::numberOfPages(v7, v8, a3, a4, v9);
}

uint64_t WKBundlePageNumberForElementById(void *a1, void *a2, void *a3, double a4, double a5)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v9 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v10 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a2);
  if (a3)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v17);
    WTF::String::isolatedCopy();
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      CFRelease(*(v11 + 8));
    }
  }

  else
  {
    v16 = 0;
  }

  v13 = WebKit::InjectedBundle::pageNumberForElementById(v9, v10, &v16, a4, a5);
  v14 = v16;
  v16 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return v13;
}

uint64_t WKBundlePageSizeAndMarginsInPixels(void *a1, void *a2, WebCore::LocalFrame *a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v16 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a2);
  WebKit::InjectedBundle::pageSizeAndMarginsInPixels(v16, a3, a4, a5, a6, a7, a8, &v21, a9);
  API::String::create(&v22);
  if (v22)
  {
    v18 = *(v22 + 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = v21;
  v21 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  return v18;
}

uint64_t WKBundleIsPageBoxVisible(void *a1, void *a2, WebCore::LocalFrame *a3)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v5 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v6 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a2);

  return WebKit::InjectedBundle::isPageBoxVisible(v5, v6, a3);
}

WTF::StringImpl *WKBundleSetUserStyleSheetLocationForTesting(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v8);
    WTF::String::isolatedCopy();
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 8));
    }
  }

  else
  {
    v7 = 0;
  }

  WebKit::InjectedBundle::setUserStyleSheetLocation(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WebKit::NotificationPermissionRequestManager *WKBundleRemoveAllWebNotificationPermissions(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  v3 = WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a2);

  return WebKit::InjectedBundle::removeAllWebNotificationPermissions(v3, v4);
}

uint64_t WKBundleCopyWebNotificationID(void *a1, const OpaqueJSContext *a2, JSValue a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  WebKit::InjectedBundle::webNotificationID(a2, a3, v7);
  if (v7[16] == 1 && (API::Data::create(0x10, v7, &v6), v6))
  {
    return *(v6 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleSetTabKeyCyclesThroughElements(void *a1, void *a2, char a3)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  WTF::downcast<WebKit::InjectedBundle,API::Object>(a1);
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a2);
  *(*(result + 56) + 298) = a3;
  return result;
}

uint64_t WKBundleClearResourceLoadStatistics(WebCore::ResourceLoadObserver *a1)
{
  v1 = *(*WebCore::ResourceLoadObserver::shared(a1) + 104);

  return v1();
}

uint64_t WKBundleResourceLoadStatisticsNotifyObserver(WebCore::ResourceLoadObserver *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = WebCore::ResourceLoadObserver::shared(a1);
  v5 = (*(*v4 + 112))(v4);
  if (v5)
  {
    v6 = WebCore::ResourceLoadObserver::shared(v5);
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F112B688;
    v7[1] = a2;
    v7[2] = a3;
    v10 = v7;
    (*(*v6 + 96))(v6, &v10);
    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {

    return a3(a2);
  }

  return result;
}

void WKBundleExtendClassesForParameterCoder(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 _apiObject];
    if ((*(*v3 + 16))(v3) == 1)
    {
      if (a1)
      {
        v4 = [a1 _apiObject];
      }

      else
      {
        v4 = 0;
      }

      v5 = WTF::downcast<WebKit::InjectedBundle,API::Object>(v4);

      WebKit::InjectedBundle::extendClassesForParameterCoder(v5, v3);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

WebKit::InjectedBundleDOMWindowExtension *WKBundleDOMWindowExtensionCreate(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  v4 = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a2);
  v5 = API::Object::newObject(0x28uLL, 137);
  result = WebKit::InjectedBundleDOMWindowExtension::InjectedBundleDOMWindowExtension(v5, v3, v4);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

const void *WKBundleDOMWindowExtensionGetFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleDOMWindowExtension const*,WebKit::InjectedBundleDOMWindowExtension>(a1);
  WebKit::InjectedBundleDOMWindowExtension::frame(v1, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 8);
  v4 = 0;
  CFRelease(v2);
  return v2;
}

uint64_t WebKit::toImpl<OpaqueWKBundleDOMWindowExtension const*,WebKit::InjectedBundleDOMWindowExtension>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 137)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WKBundleDOMWindowExtensionGetScriptWorld(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleDOMWindowExtension const*,WebKit::InjectedBundleDOMWindowExtension>(a1);
  result = WebKit::InjectedBundleDOMWindowExtension::world(v1);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL WKBundleFrameIsMainFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::isMainFrame(v1);
}

const void *WKBundleFrameGetParentFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::parentFrame(v1, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 8);
  CFRelease(v2);
  return v2;
}

uint64_t WKBundleFrameCopyURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::url(v1, v6);
  if (!v6[0])
  {
    return 0;
  }

  API::URL::create(v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6[0];
  v6[0] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleFrameCopyProvisionalURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::provisionalURL(v1, &v6);
  if (!v6)
  {
    return 0;
  }

  API::URL::create(&v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleFrameGetFrameLoadState(void *a1)
{
  v1 = *(WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1) + 40);
  if (!v1)
  {
    return 2;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 2;
  }

  result = 2;
  if ((*(v2 + 136) & 1) == 0)
  {
    v4 = *(*(v2 + 208) + 88);
    if (v4 >= 2)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t WKBundleFrameCopyChildFrames(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::childFrames(v1, &v3);
  if (v3)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleFrameGetJavaScriptContext(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::jsContext(v1);
}

const void *WKBundleFrameForJavaScriptContext(WebKit::WebFrame *a1, const OpaqueJSContext *a2)
{
  WebKit::WebFrame::frameForContext(a1, a2, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 8);
  CFRelease(v2);
  return v2;
}

uint64_t WKBundleFrameGetJavaScriptContextForWorld(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  v4 = *(WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a2) + 24);
  ++*v4;
  v5 = WebKit::WebFrame::jsContextForWorld(v3, v4);
  WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v4);
  return v5;
}

uint64_t WKBundleFrameGetJavaScriptWrapperForNodeForWorld(void *a1, WebKit::InjectedBundleNodeHandle *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  if (a2 && (a2 = [(WebKit::InjectedBundleNodeHandle *)a2 _apiObject], (*(*a2 + 16))(a2) != 140))
  {
    result = 105;
    __break(0xC471u);
  }

  else
  {
    v6 = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a3);

    return WebKit::WebFrame::jsWrapperForWorld(v5, a2, v6);
  }

  return result;
}

uint64_t WKBundleFrameGetJavaScriptWrapperForRangeForWorld(void *a1, WebKit::InjectedBundleRangeHandle *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  if (a2 && (a2 = [(WebKit::InjectedBundleRangeHandle *)a2 _apiObject], (*(*a2 + 16))(a2) != 144))
  {
    result = 105;
    __break(0xC471u);
  }

  else
  {
    v6 = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a3);

    return WebKit::WebFrame::jsWrapperForWorld(v5, a2, v6);
  }

  return result;
}

uint64_t WKBundleFrameCopyName(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::name(v1, &v6);
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleFrameCopyCounterValue(void *a1, uint64_t a2)
{
  WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::counterValue(a2, v3, &v8);
  API::String::create(&v9);
  if (v9)
  {
    v5 = *(v9 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return v5;
}

uint64_t WKBundleFrameGetPendingUnloadCount(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::pendingUnloadCount(v1);
}

uint64_t WKBundleFrameGetPage(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  result = WebKit::WebFrame::page(v1);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t WKBundleFrameStopLoading(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::stopLoading(v1);
}

uint64_t WKBundleFrameCopyLayerTreeAsText(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::layerTreeAsText(v1, &v6);
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleFrameAllowsFollowingLink(void *a1, uint64_t a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKURL const*,API::URL>(a2, v12);
    v4 = v12[0];
    v5 = *(v12[0] + 2);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      v4 = v12[0];
      v11 = v5;
      v12[0] = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v12[0] = 0;
    }

    CFRelease(*(v4 + 1));
  }

  else
  {
    v11 = 0;
  }

LABEL_8:
  MEMORY[0x19EB01DD0](v12, &v11, 0);
  v7 = WebKit::WebFrame::allowsFollowingLink(v3, v12);
  v8 = v12[0];
  v12[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  return v7;
}

BOOL WKBundleFrameHasHorizontalScrollbar(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::hasHorizontalScrollbar(v1);
}

BOOL WKBundleFrameHasVerticalScrollbar(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::hasVerticalScrollbar(v1);
}

uint64_t WKBundleFrameGetDocumentBackgroundColor(void *a1, double *a2, double *a3, double *a4, double *a5)
{
  v9 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::getDocumentBackgroundColor(v9, a2, a3, a4, a5);
}

uint64_t WKBundleFrameCopySuggestedFilenameForResourceWithURL(void *a1, uint64_t a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  if (!a2)
  {
    v12 = 0;
    goto LABEL_8;
  }

  WebKit::toProtectedImpl<OpaqueWKURL const*,API::URL>(a2, v13);
  v4 = v13[0];
  v5 = *(v13[0] + 2);
  if (!v5)
  {
    v12 = 0;
    v13[0] = 0;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  v4 = v13[0];
  v12 = v5;
  v13[0] = 0;
  if (v4)
  {
LABEL_7:
    CFRelease(*(v4 + 1));
  }

LABEL_8:
  MEMORY[0x19EB01DD0](v13, &v12, 0);
  WebKit::WebFrame::suggestedFilenameForResourceWithURL(v3, v13, &v14);
  API::String::create(&v15);
  if (v15)
  {
    v7 = *(v15 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v13[0];
  v13[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = v12;
  v12 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  return v7;
}

uint64_t WKBundleFrameCopyMIMETypeForResourceWithURL(void *a1, uint64_t a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  if (!a2)
  {
    v12 = 0;
    goto LABEL_8;
  }

  WebKit::toProtectedImpl<OpaqueWKURL const*,API::URL>(a2, v13);
  v4 = v13[0];
  v5 = *(v13[0] + 2);
  if (!v5)
  {
    v12 = 0;
    v13[0] = 0;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  v4 = v13[0];
  v12 = v5;
  v13[0] = 0;
  if (v4)
  {
LABEL_7:
    CFRelease(*(v4 + 1));
  }

LABEL_8:
  MEMORY[0x19EB01DD0](v13, &v12, 0);
  WebKit::WebFrame::mimeTypeForResourceWithURL(v3, v13, &v14);
  API::String::create(&v15);
  if (v15)
  {
    v7 = *(v15 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v13[0];
  v13[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = v12;
  v12 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  return v7;
}

uint64_t WKBundleFrameContainsAnyFormElements(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::containsAnyFormElements(v1);
}

uint64_t WKBundleFrameContainsAnyFormControls(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);

  return WebKit::WebFrame::containsAnyFormControls(v1);
}

WTF::StringImpl *WKBundleFrameSetTextDirection(WTF::StringImpl *result, void *a2)
{
  if (result)
  {
    v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(result);
    if (a2)
    {
      WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v7);
      WTF::String::isolatedCopy();
      v4 = v7;
      v7 = 0;
      if (v4)
      {
        CFRelease(*(v4 + 8));
      }
    }

    else
    {
      v6 = 0;
    }

    WebKit::WebFrame::setTextDirection(v3, &v6);
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

  return result;
}

void *WKBundleFrameSetAccessibleName(void *result, WTF::StringImpl *a2)
{
  if (result)
  {
    v3 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(result);
    if (a2)
    {
      WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v9);
      WTF::String::isolatedCopy();
      v4 = v9;
      v9 = 0;
      if (v4)
      {
        CFRelease(*(v4 + 1));
      }

      a2 = 0;
      if (v8)
      {
        a2 = v8;
        if ((*(v8 + 16) & 0x10) == 0)
        {
          WTF::AtomStringImpl::addSlowCase();
          a2 = v9;
          v9 = 0;
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v5);
          }
        }
      }
    }

    v9 = a2;
    WebKit::WebFrame::setAccessibleName(v3, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WKBundleFrameCopyWebArchiveFilteringSubframes(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = 0;
  WebKit::WebFrame::webArchiveData(v5, a2, a3, v14, &v13, &theData);
  v7 = v13;
  v13 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v6);
  if (!theData)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  API::Data::create(Length, BytePtr, v14);
  if (v14[0])
  {
    v10 = *(v14[0] + 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = theData;
  theData = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t WKBundleFrameCallShouldCloseOnWebView(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1) + 40);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  if (!v2 || (*(v2 + 136) & 1) != 0)
  {
    return 1;
  }

  v3 = *(v2 + 208);

  return WebCore::FrameLoader::shouldClose(v3);
}

uint64_t WKBundleFrameCreateHitTestResult(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  WebKit::WebFrame::hitTest(v1, &v3);
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleFrameCopySecurityOrigin(void *a1)
{
  v1 = *(WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1) + 40);
  if (v1 && (v2 = *(v1 + 8)) != 0 && (*(v2 + 136) & 1) == 0 && (WebCore::SecurityContext::securityOrigin((*(v2 + 224) + 208)), API::SecurityOrigin::create(&v4), v4))
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleFrameFocus(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1);
  v2 = *(result + 40);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if ((*(v3 + 136) & 1) == 0)
      {
        ++*(v3 + 16);
        v4 = *(*(v3 + 24) + 8);
        v5 = v4[2];
        v4 += 2;
        *v4 = v5 + 1;
        WebCore::FocusController::setFocusedFrame();
        result = WTF::RefCounted<WebCore::Page>::deref(v4);
        if (*(v3 + 16) == 1)
        {
          v6 = *(*v3 + 8);

          return v6(v3);
        }

        else
        {
          --*(v3 + 16);
        }
      }
    }
  }

  return result;
}

void *_WKBundleFrameGenerateTestReport(void *result, void *a2, void *a3)
{
  if (result)
  {
    result = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(result);
    v5 = result[5];
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        if ((*(v6 + 136) & 1) == 0)
        {
          ++*(v6 + 16);
          v7 = *(v6 + 224);
          if (!v7)
          {
LABEL_24:
            if (*(v6 + 16) == 1)
            {
              return (*(*v6 + 8))(v6);
            }

            --*(v6 + 16);
            return result;
          }

          *(v7 + 28) += 2;
          if (*(v7 + 3344))
          {
            if (a2)
            {
              goto LABEL_8;
            }
          }

          else
          {
            WebCore::Document::ensureReportingScope(v7);
            if (a2)
            {
LABEL_8:
              WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v13);
              WTF::String::isolatedCopy();
              v8 = v13;
              v13 = 0;
              if (v8)
              {
                CFRelease(*(v8 + 8));
              }

              if (a3)
              {
                goto LABEL_11;
              }

              goto LABEL_15;
            }
          }

          v12 = 0;
          if (a3)
          {
LABEL_11:
            WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v13);
            WTF::String::isolatedCopy();
            v9 = v13;
            v13 = 0;
            if (v9)
            {
              CFRelease(*(v9 + 8));
            }

            goto LABEL_16;
          }

LABEL_15:
          v11 = 0;
LABEL_16:
          WebCore::ReportingScope::generateTestReport();
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          result = v12;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(v12, v10);
          }

          if (*(v7 + 28) == 2)
          {
            result = WebCore::Node::removedLastRef(v7);
          }

          else
          {
            *(v7 + 28) -= 2;
          }

          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

void *_WKAccessibilityRootObjectForTesting(void *a1)
{
  v1 = a1;
  if (a1)
  {
    atomic_store(1u, MEMORY[0x1E69E2500]);
    v2 = *(WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(a1) + 40);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        if ((*(v3 + 136) & 1) == 0)
        {
          ++*(v3 + 16);
          v4 = *(v3 + 320);
          if (!v4)
          {
            goto LABEL_30;
          }

          v5 = *(v4 + 8);
          if (!v5)
          {
            goto LABEL_30;
          }

          v6 = *(v5 + 224);
          if (v6)
          {
            *(v6 + 7) += 2;
            v7 = WebCore::Document::axObjectCache(v6);
            v8 = v7;
            if (v7)
            {
              ++*(v7 + 8);
            }

            if (*(v6 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v6);
            }

            else
            {
              *(v6 + 7) -= 2;
            }
          }

          else
          {
            v8 = 0;
          }

          if (*(v3 + 16) == 1)
          {
            (*(*v3 + 8))(v3);
            if (v8)
            {
LABEL_14:
              v9 = WebKit::toImpl<OpaqueWKBundleFrame const*,WebKit::WebFrame>(v1);
              if (*(*(*(v9 + 40) + 8) + 136))
              {
                v10 = 0;
              }

              else
              {
                v10 = *(*(v9 + 40) + 8);
              }

              v11 = WebCore::AXObjectCache::rootObjectForFrame(v8, v10);
              if (v11)
              {
                v12 = *(v11 + 16);
                *(v11 + 16) = v12 + 1;
                v1 = *(v11 + 40);
                if (v12)
                {
                  *(v11 + 16) = v12;
                }

                else
                {
                  (*(*v11 + 8))(v11);
                }
              }

              else
              {
                v1 = 0;
              }

              v13 = *(v8 + 2);
              if (v13)
              {
                *(v8 + 2) = v13 - 1;
                return v1;
              }

LABEL_30:
              __break(0xC471u);
              JUMPOUT(0x19E2E5C58);
            }
          }

          else
          {
            --*(v3 + 16);
            if (v8)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    return 0;
  }

  return v1;
}

void API::InjectedBundle::PageUIClient::plugInStartLabelTitle(atomic_uint **a1@<X8>)
{
  v3 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a1 = v3;
}

void API::InjectedBundle::PageUIClient::plugInStartLabelSubtitle(atomic_uint **a1@<X8>)
{
  v3 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a1 = v3;
}

void API::InjectedBundle::PageUIClient::plugInExtraStyleSheet(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

void API::InjectedBundle::PageUIClient::plugInExtraScript(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

uint64_t WebKit::InjectedBundleClient::operator new(WebKit::InjectedBundleClient *this, void *a2)
{
  if (WebKit::InjectedBundleClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundleClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::InjectedBundleClient::operatorNewSlow(0x40);
  }
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand()
{
  if (qword_1ED642C30 && (v0 = *(qword_1ED642C30 - 4)) != 0)
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1ED642C30 - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(8u);
  }
}

unsigned int *WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>::translate<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>,WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>> WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebKit::InjectedBundleScriptWorld&>(WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl> &&,WebKit::InjectedBundleScriptWorld&)::{lambda(void)#1}>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::fastFree(v6, a2);
    }

    else
    {
      --*v6;
    }
  }

  v7 = *a3;
  if (!*(v7 + 16))
  {
    v8 = WTF::fastCompactMalloc(0x10);
    *v8 = 1;
    *(v8 + 8) = v7;
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;
    if (v9)
    {
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, a2);
      }
    }
  }

  v10 = *(v7 + 16);
  atomic_fetch_add(v10, 1u);
  result = *(a1 + 8);
  *(a1 + 8) = v10;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED642C30;
  if (qword_1ED642C30)
  {
    v3 = *(qword_1ED642C30 - 4);
    v4 = *(qword_1ED642C30 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED642C30 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = v3;
    v8 = v2;
    do
    {
      if (*v8 != -1)
      {
        if (*v8)
        {
          WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::reinsert(v8);
        }

        WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>::~KeyValuePair(v8, v6);
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v6);
}

uint64_t WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::fastFree(v4, a2);
    }

    else
    {
      --*v4;
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::reinsert(void *a1)
{
  v2 = qword_1ED642C30;
  if (qword_1ED642C30)
  {
    v3 = *(qword_1ED642C30 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,true>::hash(*(*a1 + 8));
  v6 = 0;
  do
  {
    v7 = v4 & v3;
    v4 = ++v6 + v7;
  }

  while (*(v2 + 16 * v7));
  v8 = v2 + 16 * v7;
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v5);
  }

  v10 = *v8;
  *v8 = 0;
  if (v10)
  {
    if (*v10 == 1)
    {
      WTF::fastFree(v10, v5);
    }

    else
    {
      --*v10;
    }
  }

  v11 = *a1;
  *a1 = 0;
  *v8 = v11;
  v12 = a1[1];
  a1[1] = 0;
  *(v8 + 8) = v12;
  return v8;
}

uint64_t WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,true>::hash(uint64_t a1)
{
  if (a1)
  {
    v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
    v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
    return (v3 >> 31) ^ v3;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

BOOL WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,true>::equal(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v2 = *(a2 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2E612CLL);
  }

  return v2 == a1;
}

uint64_t WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t a1, void *a2)
{
  if (qword_1ED642C30)
  {
    v2 = qword_1ED642C30 + 16 * *(qword_1ED642C30 - 4);
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
    return WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

unsigned int *WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::remove(uint64_t a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(a1, a2);
  v3 = qword_1ED642C30;
  v4 = vadd_s32(*(qword_1ED642C30 - 16), 0xFFFFFFFF00000001);
  *(qword_1ED642C30 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    return WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v5 >> 1);
  }

  return result;
}

unsigned int *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(uint64_t a1, void *a2)
{
  result = WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>::~WeakRef(a1, a2)[1];
  *a1 = -1;
  *(a1 + 8) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v4);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::DOMWrapperWorld const*>(uint64_t a1)
{
  if (!qword_1ED642C30)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::DOMWrapperWorld const*>(a1);
  if (!result)
  {
    if (qword_1ED642C30)
    {
      return qword_1ED642C30 + 16 * *(qword_1ED642C30 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleScriptWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::DOMWrapperWorld const*>(uint64_t a1)
{
  v1 = qword_1ED642C30;
  if (qword_1ED642C30)
  {
    v3 = *(qword_1ED642C30 - 8);
    v4 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    for (i = 0; ; v4 = i + v6)
    {
      v6 = v4 & v3;
      v7 = *(v1 + 16 * v6);
      if (!v7)
      {
        break;
      }

      if (v7 != -1)
      {
        v8 = *(v7 + 8);
        if (!v8)
        {
          result = 92;
          __break(0xC471u);
          return result;
        }

        if (v8 == a1)
        {
          return v1 + 16 * v6;
        }
      }

      ++i;
    }
  }

  return 0;
}

WebKit::InjectedBundleNodeHandle *WKBundleHitTestResultCopyNodeHandle(void *a1)
{
  result = *(WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 96);
  if (result)
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(result, &v2);
    if (v2)
    {
      return *(v2 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 139)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

WebKit::InjectedBundleNodeHandle *WKBundleHitTestResultCopyURLElementHandle(void *a1)
{
  result = *(WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 120);
  if (result)
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(result, &v2);
    if (v2)
    {
      return *(v2 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *WKBundleHitTestResultGetFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::frame(v1, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 8);
  v4 = 0;
  CFRelease(v2);
  return v2;
}

const void *WKBundleHitTestResultGetTargetFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::targetFrame(v1, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4 + 8);
  v4 = 0;
  CFRelease(v2);
  return v2;
}

uint64_t WKBundleHitTestResultCopyAbsoluteImageURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::absoluteImageURL(v1, &v6);
  if (!v6)
  {
    return 0;
  }

  API::URL::create(&v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultCopyAbsolutePDFURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::absolutePDFURL(v1, &v6);
  if (!v6)
  {
    return 0;
  }

  API::URL::create(&v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultCopyAbsoluteLinkURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::absoluteLinkURL(v1, &v6);
  if (!v6)
  {
    return 0;
  }

  API::URL::create(&v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultCopyAbsoluteMediaURL(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::absoluteMediaURL(v1, &v6);
  if (!v6)
  {
    return 0;
  }

  API::URL::create(&v6, &v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultMediaIsInFullscreen(void *a1)
{
  v1 = (WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 16);

  return WebCore::HitTestResult::mediaIsInFullscreen(v1);
}

uint64_t WKBundleHitTestResultMediaHasAudio(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 16;

  return MEMORY[0x1EEE5C780](v1);
}

uint64_t WKBundleHitTestResultIsDownloadableMedia(void *a1)
{
  v1 = (WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 16);

  return WebCore::HitTestResult::isDownloadableMedia(v1);
}

uint64_t WKBundleHitTestResultGetMediaType(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  v2 = WebKit::InjectedBundleHitTestResult::mediaType(v1);
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

uint64_t WKBundleHitTestResultCopyImage(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebKit::InjectedBundleHitTestResult::image(v1, &v3);
  if (v3)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleHitTestResultGetIsSelected(void *a1)
{
  v1 = (WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1) + 16);

  return WebCore::HitTestResult::isSelected(v1);
}

uint64_t WKBundleHitTestResultCopyLinkLabel(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebCore::HitTestResult::textContent(&v6, (v1 + 16));
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultCopyLinkTitle(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebCore::HitTestResult::titleDisplayString(&v6, (v1 + 16));
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleHitTestResultCopyLinkSuggestedFilename(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleHitTestResult const*,WebKit::InjectedBundleHitTestResult>(a1);
  WebCore::HitTestResult::linkSuggestedFilename(&v6, (v1 + 16));
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

uint64_t WKBundleNodeHandleCreate(uint64_t a1, const OpaqueJSContext *a2, JSValue a3)
{
  WebKit::InjectedBundleNodeHandle::getOrCreate(a2, a3, &v4);
  if (v4)
  {
    return *(v4 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleNodeHandleCopyDocument(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  WebKit::InjectedBundleNodeHandle::document(v1, &v3);
  if (v3)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 140)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WKBundleNodeHandleCopySnapshotWithOptions(void *a1, unsigned int a2)
{
  v3 = a2 >> 8;
  v4 = a2 >> 4;
  v5 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  v7[0] = 0;
  v7[4] = 0;
  WebKit::InjectedBundleNodeHandle::renderedImage(v5, a2 & 0xF | ((v4 & 7) << 6) & 0xFDFF | ((v3 & 1) << 9), (a2 >> 7) & 1, v7, &v8);
  if (v8)
  {
    return *(v8 + 1);
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WKBundleNodeHandleSetHTMLInputElementValueForUser(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v8);
    WTF::String::isolatedCopy();
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 8));
    }
  }

  else
  {
    v7 = 0;
  }

  WebKit::InjectedBundleNodeHandle::setHTMLInputElementValueForUser(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t WKBundleNodeHandleSetHTMLInputElementSpellcheckEnabled(void *a1, int a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementSpellcheckEnabled(v3, a2);
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutoFilled(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilled(v1);
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutoFilledAndViewable(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilledAndViewable(v1);
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutoFilledAndObscured(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilledAndObscured(v1);
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutoFillButtonEnabledWithButtonType(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFillButtonEnabled(v1);
}

uint64_t WKBundleNodeHandleGetHTMLInputElementAutoFillButtonType(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  LODWORD(result) = WebKit::InjectedBundleNodeHandle::htmlInputElementAutoFillButtonType(v1);
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t WKBundleNodeHandleGetHTMLInputElementLastAutoFillButtonType(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  LODWORD(result) = WebKit::InjectedBundleNodeHandle::htmlInputElementLastAutoFillButtonType(v1);
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutoFillAvailable(void *a1, int a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setAutoFillAvailable(v3, a2);
}

uint64_t WKBundleNodeHandleGetHTMLInputElementLastChangeWasUserEdit(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::htmlInputElementLastChangeWasUserEdit(v1);
}

uint64_t WKBundleNodeHandleGetHTMLTextAreaElementLastChangeWasUserEdit(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::htmlTextAreaElementLastChangeWasUserEdit(v1);
}

uint64_t WKBundleNodeHandleCopyDocumentFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  WebKit::InjectedBundleNodeHandle::documentFrame(v1, &v3);
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleNodeHandleCopyHTMLIFrameElementContentFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  WebKit::InjectedBundleNodeHandle::htmlIFrameElementContentFrame(v1, &v3);
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleNodeHandleSetHTMLInputElementAutofilled(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);

  return WebKit::InjectedBundleNodeHandle::setHTMLInputElementAutoFilled(v1);
}

uint64_t WKBundleNodeHandleCopyOwningDocumentFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleNodeHandle const*,WebKit::InjectedBundleNodeHandle>(a1);
  WebKit::InjectedBundleNodeHandle::document(v1, &v6);
  v2 = v6;
  if (!v6)
  {
    return 0;
  }

  WebKit::InjectedBundleNodeHandle::documentFrame(v6, &v5);
  if (v5)
  {
    v3 = *(v5 + 8);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(*(v2 + 1));
  return v3;
}

uint64_t WKBundlePageSetEditorClient(void *a1, __int128 *a2)
{
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    if (WebKit::InjectedBundlePageEditorClient::s_heapRef)
    {
      result = bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundlePageEditorClient::s_heapRef, v3);
    }

    else
    {
      result = WebKit::InjectedBundlePageEditorClient::operatorNewSlow(0x90);
    }

    *(result + 8) = 0u;
    v6 = (result + 8);
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *result = &unk_1F112B218;
    v7 = *a2;
    if (*a2 == 1)
    {
      *v6 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[4];
      *(result + 56) = a2[3];
      *(result + 72) = v10;
      *(result + 24) = v8;
      *(result + 40) = v9;
      v11 = a2[5];
      v12 = a2[6];
      v13 = a2[7];
      *(result + 136) = *(a2 + 16);
      *(result + 104) = v12;
      *(result + 120) = v13;
      *(result + 88) = v11;
    }

    else if (v7 <= 0)
    {
      if (v7)
      {
        __break(1u);
        return result;
      }

      v14 = *a2;
      v15 = a2[2];
      *(result + 24) = a2[1];
      *(result + 40) = v15;
      *v6 = v14;
      v16 = a2[3];
      v17 = a2[4];
      v18 = a2[5];
      *(result + 104) = *(a2 + 12);
      *(result + 72) = v17;
      *(result + 88) = v18;
      *(result + 56) = v16;
    }
  }

  else
  {
    result = API::InjectedBundle::EditorClient::operator new(8, v3);
    *result = &unk_1F112B838;
  }

  v20 = result;
  WebKit::WebPage::setInjectedBundleEditorClient(v4, &v20);
  result = v20;
  if (v20)
  {
    v19 = *(*v20 + 8);

    return v19();
  }

  return result;
}

uint64_t WKBundlePageSetFormClient(void *a1, unsigned int *a2)
{
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (WebKit::InjectedBundlePageFormClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundlePageFormClient::s_heapRef, v3);
  }

  else
  {
    NonCompact = WebKit::InjectedBundlePageFormClient::operatorNewSlow(0x70);
  }

  v8 = WebKit::InjectedBundlePageFormClient::InjectedBundlePageFormClient(NonCompact, a2);
  WebKit::WebPage::setInjectedBundleFormClient(v4, &v8);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

_OWORD *WKBundlePageSetPageLoaderClient(void *a1, unsigned int *a2)
{
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (WebKit::InjectedBundlePageLoaderClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundlePageLoaderClient::s_heapRef, v3);
  }

  else
  {
    NonCompact = WebKit::InjectedBundlePageLoaderClient::operatorNewSlow(0x150);
  }

  v8 = WebKit::InjectedBundlePageLoaderClient::InjectedBundlePageLoaderClient(NonCompact, a2);
  WebKit::WebPage::setInjectedBundlePageLoaderClient(v4, &v8);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t WKBundlePageSetResourceLoadClient(void *a1, __int128 *a2)
{
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (WebKit::InjectedBundlePageResourceLoadClient::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundlePageResourceLoadClient::s_heapRef, v3);
  }

  else
  {
    result = WebKit::InjectedBundlePageResourceLoadClient::operatorNewSlow(0x58);
  }

  *(result + 8) = 0u;
  v6 = (result + 8);
  *(result + 72) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *result = &unk_1F112B558;
  if (a2)
  {
    v8 = *a2;
    if (*a2 == 1)
    {
      *v6 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      v11 = a2[4];
      *(result + 56) = a2[3];
      *(result + 72) = v11;
      *(result + 24) = v9;
      *(result + 40) = v10;
    }

    else if (v8 <= 0)
    {
      if (v8)
      {
        __break(1u);
        return result;
      }

      v12 = *a2;
      v13 = a2[1];
      v14 = a2[3];
      *(result + 40) = a2[2];
      *(result + 56) = v14;
      *v6 = v12;
      *(result + 24) = v13;
    }
  }

  v15 = result;
  WebKit::WebPage::setInjectedBundleResourceLoadClient(v4, &v15);
  result = v15;
  if (v15)
  {
    v7 = *(*v15 + 8);

    return v7();
  }

  return result;
}

uint64_t WKBundlePageSetUIClient(void *a1, _OWORD *a2)
{
  v4 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (WebKit::InjectedBundlePageUIClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::InjectedBundlePageUIClient::s_heapRef, v3);
  }

  else
  {
    NonCompact = WebKit::InjectedBundlePageUIClient::operatorNewSlow(0xE8);
  }

  v8 = WebKit::InjectedBundlePageUIClient::InjectedBundlePageUIClient(NonCompact, a2);
  WebKit::WebPage::setInjectedBundleUIClient(v4, &v8);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t WKBundlePageGetMainFrame(void *a1)
{
  v1 = *(WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1) + 88);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleFrameCreateFrameHandle(void *a1)
{
  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 138)
  {
    API::FrameHandle::create(v1[11], 1, &v3);
    if (v3)
    {
      return *(v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

uint64_t WKBundlePageInsertNewlineInQuotedContent(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::insertNewlineInQuotedContent(v1);
}

WTF::StringImpl *WKAccessibilityTestingInjectPreference(WTF::StringImpl *result, void *a2, void *a3, WTF::StringImpl *a4)
{
  if (!result)
  {
    return result;
  }

  {
    v6 = WebKit::WebProcess::singleton(void)::process;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_12:
    v18 = 0;
    if (a3)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v13 = a2;
  v6 = WebKit::WebProcess::operator new(0x370, a2);
  v9 = WebKit::WebProcess::WebProcess(v6);
  a2 = v13;
  WebKit::WebProcess::singleton(void)::process = v9;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_4:
  WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v15);
  WTF::String::isolatedCopy();
  v7 = v15;
  v15 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  if (a3)
  {
LABEL_7:
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v15);
    WTF::String::isolatedCopy();
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
  if (a4)
  {
LABEL_14:
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a4, &v15);
    WTF::String::isolatedCopy();
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    a4 = v14;
  }

LABEL_17:
  v15 = a4;
  v16 = 1;
  WebKit::AuxiliaryProcess::preferenceDidUpdate(v6, &v18, &v17, &v15);
  if (a4 && atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a4, v11);
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

uint64_t WKAccessibilityFocusedObject(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1) + 56);
  if (!v1)
  {
    return v1;
  }

  v2 = WebCore::FocusController::focusedOrMainFrame(*(v1 + 80));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  ++*(v2 + 16);
  v4 = *(v2 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
    atomic_store(1u, MEMORY[0x1E69E2500]);
    if (WebCore::Document::axObjectCache(v4) && (v5 = WebCore::AXObjectCache::focusedObjectForPage()) != 0)
    {
      v1 = *(v5 + 40);
    }

    else
    {
      v1 = 0;
    }

    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  else
  {
    v1 = 0;
  }

  if (v3[4] == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[4];
  }

  return v1;
}

void *WKAccessibilityAnnounce(void *result, void *a2)
{
  if (result)
  {
    result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(result);
    v3 = result[7];
    if (v3)
    {
      v4 = *(v3 + 176);
      if (v4)
      {
        if ((*(v4 + 136) & 1) == 0)
        {
          result = *(v4 + 224);
          if (result)
          {
            result = WebCore::Document::axObjectCache(result);
            if (result)
            {
              v5 = result;
              if (a2)
              {
                WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v9);
                WTF::String::isolatedCopy();
                v6 = v9;
                v9 = 0;
                if (v6)
                {
                  CFRelease(*(v6 + 8));
                }
              }

              else
              {
                v8 = 0;
              }

              MEMORY[0x19EB04930](v5, &v8);
              result = v8;
              v8 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  return WTF::StringImpl::destroy(result, v7);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

WebCore::Page *WKBundlePageSetEditable(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (result)
  {
    result = *(result + 7);
    if (result)
    {

      return WebCore::Page::setEditable(result);
    }
  }

  return result;
}

uint64_t WKBundlePageCopyRenderTreeExternalRepresentation(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::WebPage::renderTreeExternalRepresentation(v1);
  API::String::create(&v6);
  if (v6)
  {
    v3 = *(v6 + 1);
  }

  else
  {
    v3 = 0;
  }

  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  return v3;
}

uint64_t WKBundlePageCopyRenderTreeExternalRepresentationForPrinting(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::WebPage::renderTreeExternalRepresentationForPrinting(&v6, v1);
  API::String::create(&v7);
  if (v7)
  {
    v3 = *(v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  return v3;
}

IPC::Encoder *WKBundlePageClose(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::sendClose(v1);
}

double WKBundlePageGetTextZoomFactor(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::textZoomFactor(v1);
}

double WKBundlePageGetPageZoomFactor(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::pageZoomFactor(v1);
}

uint64_t WKBundlePageDumpHistoryForTesting(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v12);
    WTF::String::isolatedCopy();
    v4 = v12;
    v12 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 1));
    }
  }

  else
  {
    v10 = 0;
  }

  WebKit::WebPage::dumpHistoryForTesting(v3, &v10, &v11);
  API::String::create(&v12);
  if (v12)
  {
    v6 = *(v12 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  return v6;
}

uint64_t WKBundlePageInstallPageOverlay(void *a1, void *a2)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a2);

  return WebCore::PageOverlayController::installPageOverlay();
}

uint64_t WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 143)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WKBundlePageUninstallPageOverlay(void *a1, void *a2)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a2);

  return WebCore::PageOverlayController::uninstallPageOverlay();
}

uint64_t WKBundlePageInstallPageOverlayWithAnimation(void *a1, void *a2)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a2);

  return WebCore::PageOverlayController::installPageOverlay();
}

uint64_t WKBundlePageUninstallPageOverlayWithAnimation(void *a1, void *a2)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a2);

  return WebCore::PageOverlayController::uninstallPageOverlay();
}

uint64_t WKBundlePageHasLocalDataForURL(void *a1, uint64_t a2)
{
  v3 = *(WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1) + 56);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKURL const*,API::URL>(a2, v12);
    v4 = v12[0];
    v5 = *(v12[0] + 2);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      v4 = v12[0];
      v11 = v5;
      v12[0] = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v12[0] = 0;
    }

    CFRelease(*(v4 + 1));
  }

  else
  {
    v11 = 0;
  }

LABEL_8:
  MEMORY[0x19EB01DD0](v12, &v11, 0);
  hasLocalDataForURL = WebCore::Page::hasLocalDataForURL(v3, v12);
  v8 = v12[0];
  v12[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  return hasLocalDataForURL;
}

uint64_t WKBundlePageCanHandleRequest(uint64_t result)
{
  if (result)
  {
    v1 = [result _apiObject];
    if ((*(*v1 + 16))(v1) == 24)
    {

      return WebKit::WebPage::canHandleRequest((v1 + 16), v2);
    }

    else
    {
      result = 105;
      __break(0xC471u);
    }
  }

  return result;
}

WTF *WKBundlePageReplaceStringMatches(void *a1, void *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKArray const*,API::Array>(a2);
  v21 = 0;
  v22 = 0;
  v6 = *(v5 + 28);
  if (v6)
  {
    if (v6 >> 30)
    {
      __break(0xC471u);
      goto LABEL_30;
    }

    v7 = v5;
    LODWORD(v22) = *(v5 + 28);
    v21 = WTF::fastMalloc((4 * v6));
    v8 = *(v7 + 28);
    if (v8)
    {
      v9 = 0;
      while (v9 < *(v7 + 28))
      {
        v10 = *(*(v7 + 16) + 8 * v9);
        if (v10 && (*(*v10 + 16))(v10) == 33)
        {
          v11 = v10[2];
          v12 = HIDWORD(v22);
          if (HIDWORD(v22) == v22)
          {
            if (HIDWORD(v22) + (HIDWORD(v22) >> 1) <= HIDWORD(v22) + 1)
            {
              v13 = HIDWORD(v22) + 1;
            }

            else
            {
              v13 = HIDWORD(v22) + (HIDWORD(v22) >> 1);
            }

            if (v13 <= 0x10)
            {
              v14 = 16;
            }

            else
            {
              v14 = v13;
            }

            WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v21, v14);
            v12 = HIDWORD(v22);
          }

          *(v21 + v12) = v11;
          ++HIDWORD(v22);
        }

        if (v8 == ++v9)
        {
          goto LABEL_18;
        }
      }

      __break(0xC471u);
LABEL_30:
      JUMPOUT(0x19E2E8124);
    }
  }

LABEL_18:
  v15 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a3)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a3, &v23);
    WTF::String::isolatedCopy();
    v16 = v23;
    v23 = 0;
    if (v16)
    {
      CFRelease(*(v16 + 8));
    }
  }

  else
  {
    v20 = 0;
  }

  WebKit::FindController::replaceMatches(*(v15 + 408), &v21, &v20);
  v18 = v20;
  v20 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  result = v21;
  if (v21)
  {
    v21 = 0;
    LODWORD(v22) = 0;
    return WTF::fastFree(result, v17);
  }

  return result;
}

uint64_t WKBundlePageCreateSnapshotWithOptions(void *a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  v6 = a2;
  v11 = a2 >> 8;
  v12 = a2 >> 4;
  v13 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v15[0] = a3 | (a4 << 32);
  v15[1] = a5 | (a6 << 32);
  WebKit::WebPage::scaledSnapshotWithOptions(v13, v15, (v6 & 0xF | ((v12 & 7) << 6) & 0xFDFF | ((v11 & 1) << 9)), &v16, 1.0);
  if (v16)
  {
    return *(v16 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundlePageCreateSnapshotInViewCoordinates(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v10 = (a2 & 1 | 4u);
  v11 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v13[0] = a3 | (a4 << 32);
  v13[1] = a5 | (a6 << 32);
  WebKit::WebPage::scaledSnapshotWithOptions(v11, v13, v10, &v14, 1.0);
  if (v14)
  {
    return *(v14 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundlePageCreateSnapshotInDocumentCoordinates(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v11 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v13[0] = a3 | (a4 << 32);
  v13[1] = a5 | (a6 << 32);
  WebKit::WebPage::scaledSnapshotWithOptions(v11, v13, (a2 & 1), &v14, 1.0);
  if (v14)
  {
    return *(v14 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundlePageCreateScaledSnapshotInDocumentCoordinates(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v15[0] = a3 | (a4 << 32);
  v15[1] = a5 | (a6 << 32);
  WebKit::WebPage::scaledSnapshotWithOptions(v13, v15, (a2 & 1), &v16, a7);
  if (v16)
  {
    return *(v16 + 1);
  }

  else
  {
    return 0;
  }
}

_DWORD *WKBundlePageListenForLayoutMilestones(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::listenForLayoutMilestones(v1);
}

uint64_t WKBundlePageCloseInspectorForTest(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v2 = WebKit::WebPage::inspector(v1, 1);

  return WebKit::WebInspector::close(v2, v3);
}

WTF::StringImpl *WKBundlePageEvaluateScriptInInspectorForTest(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v4 = WebKit::WebPage::inspector(v3, 1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v9);
    WTF::String::isolatedCopy();
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }
  }

  else
  {
    v8 = 0;
  }

  WebKit::WebInspector::evaluateScriptForTest(v4, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WKBundlePageForceRepaint(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::updateRenderingWithForcedRepaintWithoutCallback(v1);
}

uint64_t WKBundlePageFlushPendingEditorStateUpdate(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::flushPendingEditorStateUpdate(v1);
}

_DWORD *WKBundlePageGetRenderTreeSize(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::renderTreeSize(v1);
}

uint64_t WKBundlePageIsTrackingRepaints(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::isTrackingRepaints(v1);
}

uint64_t WKBundlePageCopyTrackedRepaintRects(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::WebPage::trackedRepaintRects(v1, &v3);
  if (v3)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundlePageSetComposition(void *a1, void *a2, int a3, int a4, char a5, void *a6, void *a7)
{
  v129 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v124 = 0;
  if (a6)
  {
    v8 = WebKit::toImpl<OpaqueWKArray const*,API::Array>(a6);
    v9 = *(v8 + 28);
    if (v9)
    {
      if (v9 >= 0x6666667)
      {
        __break(0xC471u);
LABEL_185:
        JUMPOUT(0x19E2E91A0);
      }

      LODWORD(v124) = 40 * v9 / 0x28u;
      v123 = WTF::fastMalloc((40 * v9));
    }

    v111 = a7;
    API::Array::elementsOfType<API::Dictionary>(v125, v8);
    v10 = v126;
    v11 = v128;
    if (v126 != v128)
    {
      v12 = v127;
      do
      {
        v13 = *v10;
        API::Array::GetObjectTransform<API::Dictionary>::operator()(*v10);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v121 = v113[0];
        v15 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v13 + 16), &v121, v14);
        v17 = v15;
        if (v15 && (*(*v15 + 16))(v15) != 33)
        {
          __break(0xC471u);
          goto LABEL_185;
        }

        v18 = *(v17 + 2);
        v19 = v121;
        v121 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v16);
        }

        LOBYTE(v121) = 0;
        v122 = 0;
        LOBYTE(v119) = 0;
        v120 = 0;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v118 = v113[0];
        v22 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v13 + 16), &v118, v20);
        v23 = v118;
        v118 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v21);
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        else if (!v22)
        {
          goto LABEL_21;
        }

        if ((*(*v22 + 16))(v22) != 20)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2E91C0);
        }

        WTF::String::isolatedCopy();
        v117 = 7;
        WebCore::CSSPropertyParserHelpers::deprecatedParseColorRawWithoutContext();
        std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(&v121, v113);
        if ((v113[0] & 0x8000000000000) != 0)
        {
          v45 = (v113[0] & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v113[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v45);
            WTF::fastFree(v45, v24);
          }
        }

        v25 = v118;
        v118 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v24);
        }

LABEL_21:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v118 = v113[0];
        v28 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v13 + 16), &v118, v26);
        v29 = v118;
        v118 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v27);
          if (!v28)
          {
            goto LABEL_30;
          }
        }

        else if (!v28)
        {
          goto LABEL_30;
        }

        if ((*(*v28 + 16))(v28) != 20)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2E91E0);
        }

        WTF::String::isolatedCopy();
        v117 = 7;
        WebCore::CSSPropertyParserHelpers::deprecatedParseColorRawWithoutContext();
        std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(&v119, v113);
        if ((v113[0] & 0x8000000000000) != 0)
        {
          v46 = (v113[0] & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v113[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v46);
            WTF::fastFree(v46, v30);
          }
        }

        v31 = v118;
        v118 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v30);
        }

LABEL_30:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v118 = v113[0];
        v33 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v13 + 16), &v118, v32);
        v35 = v33;
        if (v33 && (*(*v33 + 16))(v33) != 33)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2E9200);
        }

        v113[0] = __PAIR64__(*(v35 + 4) + v18, v18);
        LOBYTE(v113[1]) = 0;
        v114 = 0;
        if (v122 == 1)
        {
          v113[1] = v121;
          if ((v121 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v121 & 0xFFFFFFFFFFFFLL), 1u);
          }

          v114 = 1;
        }

        LOBYTE(v115) = 0;
        v116 = 0;
        if (v120 == 1)
        {
          v115 = v119;
          if ((v119 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v119 & 0xFFFFFFFFFFFFLL), 1u);
          }

          v116 = 1;
        }

        if (HIDWORD(v124) == v124)
        {
          WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CompositionHighlight>(&v123, v113);
        }

        else
        {
          v36 = v123 + 40 * HIDWORD(v124);
          *v36 = v113[0];
          *(v36 + 8) = 0;
          *(v36 + 16) = 0;
          if (v114 == 1)
          {
            *(v36 + 8) = 0;
            if (v36 != v113)
            {
              v39 = v113[1];
              v113[1] = 0;
              *(v36 + 8) = v39;
            }

            *(v36 + 16) = 1;
          }

          *(v36 + 24) = 0;
          *(v36 + 32) = 0;
          if (v116 == 1)
          {
            *(v36 + 24) = 0;
            if (v36 != v113)
            {
              v40 = v115;
              v115 = 0;
              *(v36 + 24) = v40;
            }

            *(v36 + 32) = 1;
          }

          ++HIDWORD(v124);
        }

        if (v116 == 1 && (v115 & 0x8000000000000) != 0)
        {
          v41 = (v115 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v115 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v41);
            WTF::fastFree(v41, v34);
          }
        }

        if (v114 == 1 && (v113[1] & 0x8000000000000) != 0)
        {
          v42 = (v113[1] & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v113[1] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v42);
            WTF::fastFree(v42, v34);
          }
        }

        v37 = v118;
        v118 = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v34);
        }

        if (v120 == 1 && (v119 & 0x8000000000000) != 0)
        {
          v43 = (v119 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v119 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v43);
            WTF::fastFree(v43, v34);
          }
        }

        if (v122 == 1 && (v121 & 0x8000000000000) != 0)
        {
          v44 = (v121 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v121 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v44);
            WTF::fastFree(v44, v34);
          }
        }

        v38 = v10 + 1;
        while (v38 - 1 != v12)
        {
          v10 = v38;
          if (v38 != v12)
          {
            ++v38;
            if ((*(**v10 + 16))() != 9)
            {
              continue;
            }
          }

          goto LABEL_62;
        }

        v10 = v38 - 1;
LABEL_62:
        ;
      }

      while (v10 != v11);
    }

    a7 = v111;
  }

  v121 = 0;
  if (!a7)
  {
    goto LABEL_164;
  }

  v47 = WebKit::toImpl<OpaqueWKArray const*,API::Array>(a7);
  if (!v47)
  {
    goto LABEL_164;
  }

  API::Array::elementsOfType<API::Dictionary>(v125, v47);
  v48 = v126;
  v112 = v128;
  if (v126 == v128)
  {
    goto LABEL_164;
  }

  v49 = v127;
  do
  {
    v50 = *v48;
    API::Array::GetObjectTransform<API::Dictionary>::operator()(*v48);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v119 = v113[0];
    v52 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v50 + 16), &v119, v51);
    v54 = v52;
    if (v52 && (*(*v52 + 16))(v52) != 33)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2E9260);
    }

    v55 = *(v54 + 2);
    v56 = v119;
    v119 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v53);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v119 = v113[0];
    v58 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v50 + 16), &v119, v57);
    v60 = v58;
    if (v58 && (*(*v58 + 16))(v58) != 33)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2E9280);
    }

    v61 = *(v60 + 2);
    v62 = v119;
    v119 = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v59);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v118 = v113[0];
    v64 = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((v50 + 16), &v118, v63);
    WTF::downcast<API::String,API::Object>(v64);
    WTF::String::isolatedCopy();
    v67 = v118;
    v118 = 0;
    if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v67, v65);
    }

    v68 = v121;
    if (v121)
    {
      if (v119 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2E92A0);
      }

      if (!v119)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2E92C0);
      }

      v69 = *(v121 - 2);
      v70 = *(v119 + 4);
      if (v70 < 0x100)
      {
        v71 = WTF::StringImpl::hashSlowCase(v119);
      }

      else
      {
        v71 = v70 >> 8;
      }

      for (i = 0; ; v71 = i + v73)
      {
        v73 = v71 & v69;
        v74 = (v68 + 24 * (v71 & v69));
        v75 = *v74;
        if (*v74 != -1)
        {
          if (!v75)
          {
            v76 = v121;
            if (!v121)
            {
              goto LABEL_117;
            }

            v74 = (v121 + 24 * *(v121 - 1));
            goto LABEL_113;
          }

          if (WTF::equal(v75, v119, v66))
          {
            break;
          }
        }

        ++i;
      }

      v76 = v121;
      if (!v121)
      {
        goto LABEL_114;
      }

LABEL_113:
      v76 = (v76 + 24 * *(v76 - 1));
LABEL_114:
      if (v76 != v74)
      {
        v113[0] = v55;
        v113[1] = v61;
        v77 = *(v74 + 5);
        if (v77 == *(v74 + 4))
        {
          v78 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v74 + 8, v77 + 1, v113);
          v77 = *(v74 + 5);
          v79 = *(v74 + 1);
          v80 = *v78;
        }

        else
        {
          v79 = *(v74 + 1);
          v80 = *v113;
        }

        *(v79 + 16 * v77) = v80;
        ++*(v74 + 5);
        goto LABEL_148;
      }
    }

LABEL_117:
    v81 = WTF::fastMalloc(0x10);
    *v81 = v55;
    *(v81 + 1) = v61;
    if (v119 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2E9220);
    }

    if (!v119)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2E9240);
    }

    v83 = v81;
    v84 = v121;
    if (v121 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v121, 0), (v84 = v121) != 0))
    {
      v85 = *(v84 - 2);
    }

    else
    {
      v85 = 0;
    }

    v86 = *(v119 + 4);
    if (v86 < 0x100)
    {
      v87 = WTF::StringImpl::hashSlowCase(v119);
    }

    else
    {
      v87 = v86 >> 8;
    }

    v88 = 0;
    for (j = 1; ; ++j)
    {
      v90 = v87 & v85;
      v91 = v84 + 24 * (v87 & v85);
      v92 = *v91;
      if (*v91 == -1)
      {
        v88 = (v84 + 24 * v90);
        goto LABEL_130;
      }

      if (!v92)
      {
        break;
      }

      if (WTF::equal(v92, v119, v82))
      {
        WTF::fastFree(v83, v65);
        goto LABEL_148;
      }

LABEL_130:
      v87 = j + v90;
    }

    if (v88)
    {
      v92 = 0;
      *v88 = 0;
      v88[1] = 0;
      v88[2] = 0;
      --*(v121 - 4);
      v91 = v88;
    }

    v93 = v119;
    if (v119)
    {
      atomic_fetch_add_explicit(v119, 2u, memory_order_relaxed);
      v92 = *v91;
    }

    *v91 = v93;
    if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v92, v65);
    }

    v94 = *(v91 + 8);
    if (v94)
    {
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
      WTF::fastFree(v94, v65);
    }

    *(v91 + 8) = v83;
    *(v91 + 16) = 0x100000001;
    v95 = v121;
    if (v121)
    {
      v96 = *(v121 - 3) + 1;
    }

    else
    {
      v96 = 1;
    }

    *(v121 - 3) = v96;
    v97 = (*(v95 - 4) + v96);
    v98 = *(v95 - 1);
    if (v98 > 0x400)
    {
      if (v98 <= 2 * v97)
      {
LABEL_147:
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v121, v91);
      }
    }

    else if (3 * v98 <= 4 * v97)
    {
      goto LABEL_147;
    }

LABEL_148:
    v99 = v119;
    v119 = 0;
    if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v99, v65);
    }

    v100 = v48 + 1;
    while (v100 - 1 != v49)
    {
      v48 = v100;
      if (v100 != v49)
      {
        ++v100;
        if ((*(**v48 + 16))() != 9)
        {
          continue;
        }
      }

      goto LABEL_157;
    }

    v48 = v100 - 1;
LABEL_157:
    ;
  }

  while (v48 != v112);
LABEL_164:
  v101 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, v125);
    WTF::String::isolatedCopy();
    v102 = v125[0];
    v125[0] = 0;
    if (v102)
    {
      CFRelease(*(v102 + 8));
    }
  }

  else
  {
    v113[0] = 0;
  }

  WebKit::WebPage::setCompositionForTesting(v101, v113, a3, a4, a5);
  v104 = v113[0];
  v113[0] = 0;
  if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v104, v103);
  }

  if (v121)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v121, v103);
  }

  return WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v123, v103);
}

uint64_t API::Array::elementsOfType<API::Dictionary>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(a2 + 28);
  v5 = v3 + 8 * v4;
  if (v4)
  {
    v7 = 8 * v4;
    while (1)
    {
      result = (*(**v3 + 16))();
      if (result == 9)
      {
        break;
      }

      v3 += 8;
      v7 -= 8;
      if (!v7)
      {
        v3 = v5;
        break;
      }
    }

    v8 = v3;
    v3 = *(a2 + 16);
    v9 = *(a2 + 28);
  }

  else
  {
    v9 = 0;
    v8 = *(a2 + 16);
  }

  v2[2] = v8;
  v2[3] = v5;
  v10 = v3 + 8 * v9;
  v2[6] = v10;
  v2[7] = v10;
  return result;
}

BOOL WKBundlePageHasComposition(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::hasCompositionForTesting(v1);
}

WTF::StringImpl *WKBundlePageConfirmComposition(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v4 = 0;
  WebKit::WebPage::confirmCompositionForTesting(v1, &v4);
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

WTF::StringImpl *WKBundlePageConfirmCompositionWithText(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v8);
    WTF::String::isolatedCopy();
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 8));
    }
  }

  else
  {
    v7 = 0;
  }

  WebKit::WebPage::confirmCompositionForTesting(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WebCore::Page *WKBundlePageSetUseDarkAppearance(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (result)
  {
    result = *(result + 7);
    if (result)
    {

      return WebCore::Page::setUseColorAppearance(result);
    }
  }

  return result;
}

uint64_t WKBundlePageIsUsingDarkAppearance(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (!v1 || !*(v1 + 56))
  {
    return 0;
  }

  return MEMORY[0x1EEE5DDB0]();
}

uint64_t WKBundlePageCanShowMIMEType(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v10);
    WTF::String::isolatedCopy();
    v4 = v10;
    v10 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 8));
    }
  }

  else
  {
    v9 = 0;
  }

  canShowMIMEType = WebKit::WebPage::canShowMIMEType(v3, &v9);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return canShowMIMEType;
}

uint64_t WKBundlePageExtendIncrementalRenderingSuppression(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::extendIncrementalRenderingSuppression(v1);
}

_DWORD *WKBundlePageStopExtendingIncrementalRenderingSuppression(void *a1, int a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::stopExtendingIncrementalRenderingSuppression(v3, a2);
}

BOOL WKBundlePageIsUsingEphemeralSession(void *a1)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v2 = &qword_1ED643000;
  {
    goto LABEL_6;
  }

  v3 = WebKit::WebProcess::singleton(void)::process;
  while (1)
  {
    v2 = *(v3 + 712);
    if (v2)
    {
      break;
    }

    __break(1u);
LABEL_6:
    v5 = v2;
    v6 = WebKit::WebProcess::operator new(0x370, v1);
    v3 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v3;
    *(v5 + 2024) = 1;
  }

  return *(v3 + 88) < -1;
}

uint64_t WKBundlePageSetUseTestingViewportConfiguration(void *a1, char a2)
{
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  *(result + 1176) = a2;
  return result;
}

uint64_t WKBundlePageStartMonitoringScrollOperations(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (result)
  {
    result = *(result + 56);
    if (result)
    {

      return MEMORY[0x1EEE5A7F0]();
    }
  }

  return result;
}

uint64_t WKBundlePageRegisterScrollOperationCompletionCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (result)
  {
    v8 = *(result + 56);
    if (v8)
    {
      result = WebCore::Page::isMonitoringWheelEvents(*(result + 56));
      if (result)
      {
        WebCore::Page::wheelEventTestMonitor(&v13, v8);
        if (v13)
        {
          v9 = WTF::fastMalloc(0x18);
          *v9 = &unk_1F112B748;
          v9[1] = a2;
          v9[2] = a5;
          v12 = v9;
          WebCore::WheelEventTestMonitor::setTestCallbackAndStartMonitoring();
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          v11 = v13;
          v13 = 0;
          if (v11)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WheelEventTestMonitor,(WTF::DestructionThread)0>::deref(v11, v10);
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WKBundlePageCallAfterTasksAndTimers(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(result);
    if (result)
    {
      v5 = result[7];
      if (v5)
      {
        v6 = *(v5 + 176);
        if (v6)
        {
          if ((*(v6 + 136) & 1) == 0 && *(v6 + 224))
          {
            v7 = WTF::fastMalloc(0x18);
            *v7 = &unk_1F112B770;
            v7[1] = a2;
            v7[2] = a3;
            v8 = v7;
            WebCore::Document::postTask();
            result = v8;
            if (v8)
            {
              return (*(*v8 + 8))(v8);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t WKBundlePageFlushDeferredDidReceiveMouseEventForTesting(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::flushDeferredDidReceiveMouseEvent(v1);
}

WTF::StringImpl *WKBundlePagePostMessage(void *a1, void *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v11);
    WTF::String::isolatedCopy();
    v6 = v11;
    v11 = 0;
    if (v6)
    {
      CFRelease(*(v6 + 8));
    }

    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v7 = [a3 _apiObject];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  WebKit::WebPage::postMessage(v5, &v10, v7);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *WKBundlePagePostMessageWithAsyncReply(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v15);
    WTF::String::isolatedCopy();
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    if (a3)
    {
LABEL_5:
      a3 = [a3 _apiObject];
    }
  }

  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F112B810;
  v11[1] = a4;
  v11[2] = a5;
  v15 = v11;
  WebKit::WebPage::postMessageWithAsyncReply(v9, &v14, a3, &v15);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WKBundlePagePostMessageIgnoringFullySynchronousMode(void *a1, void *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v11);
    WTF::String::isolatedCopy();
    v6 = v11;
    v11 = 0;
    if (v6)
    {
      CFRelease(*(v6 + 8));
    }

    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v7 = [a3 _apiObject];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  WebKit::WebPage::postMessageIgnoringFullySynchronousMode(v5, &v10, v7);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void WKBundlePagePostSynchronousMessageForTesting(void *a1, void *a2, void *a3, IPC::Decoder **a4)
{
  v14 = 0;
  v7 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v15);
    WTF::String::isolatedCopy();
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    if (a3)
    {
      goto LABEL_5;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_6;
  }

  v13 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_5:
  v9 = [a3 _apiObject];
LABEL_6:
  WebKit::WebPage::postSynchronousMessageForTesting(v7, &v13, v9, &v14);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v14;
  if (a4)
  {
    if (v14)
    {
      v12 = v14[1];
    }

    *a4 = v12;
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      CFRelease(*(v12 + 1));
    }
  }
}

WTF::StringImpl *WKBundlePageAddUserScript(void *a1, void *a2, int a3, int a4)
{
  v7 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v8 = v7;
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v14);
    v7 = WTF::String::isolatedCopy();
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      CFRelease(*(v9 + 8));
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = WebKit::InjectedBundleScriptWorld::normalWorldSingleton(v7);
  WebKit::WebPage::addUserScript(v8, &v13, v10, a4 == 1, a3 == 1, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

WTF::StringImpl *WKBundlePageAddUserScriptInWorld(void *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v15);
    WTF::String::isolatedCopy();
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }
  }

  else
  {
    v14 = 0;
  }

  v11 = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a3);
  WebKit::WebPage::addUserScript(v9, &v14, v11, a5 == 1, a4 == 1, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WKBundlePageAddUserStyleSheet(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v8);
    WTF::String::isolatedCopy();
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 8));
    }
  }

  else
  {
    v7 = 0;
  }

  WebKit::WebPage::addUserStyleSheet(v3);
  result = v7;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, v5);
    }
  }

  return result;
}

uint64_t WKBundlePageRemoveAllUserContent(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::removeAllUserContent(v1, v2);
}

uint64_t WKBundlePageCopyGroupIdentifier(void *a1)
{
  WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  API::String::create(&v2);
  if (v2)
  {
    return *(v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundlePageSetCaptionDisplayMode(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v4 = WebCore::Page::group(*(v3 + 56));
  v6 = WebCore::PageGroup::ensureCaptionPreferences(v4);
  if (!a2)
  {
    v11 = 0;
LABEL_8:
    v9 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v12);
  WTF::String::isolatedCopy();
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  if ((WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v11, "forcedonly", 0xAuLL) & 1) == 0)
  {
    if (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v11, "manual", 6uLL))
    {
      v8 = 0;
      v9 = 3;
      goto LABEL_9;
    }

    if (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v11, "automatic", 9uLL))
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_9;
    }

    if (WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v11, "alwayson", 8uLL))
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v9 = 1;
LABEL_9:
  result = v11;
  if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v8)
    {
      return result;
    }

    return (*(*v6 + 24))(v6, v9);
  }

  result = WTF::StringImpl::destroy(v11, v5);
  if ((v8 & 1) == 0)
  {
    return (*(*v6 + 24))(v6, v9);
  }

  return result;
}

uint64_t WKBundlePageCreateCaptionUserPreferencesTestingModeToken(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  v2 = WebCore::Page::group(*(v1 + 56));
  v3 = WebCore::PageGroup::ensureCaptionPreferences(v2);
  v5 = API::Object::newObject(0x18uLL, 4);
  if (*MEMORY[0x1E69E2740])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2740], v4);
  }

  else
  {
    NonCompact = WebCore::CaptionUserPreferencesTestingModeToken::operatorNewSlow(8);
  }

  v7 = NonCompact;
  if (!*(v3 + 8))
  {
    v9 = WTF::fastCompactMalloc(0x10);
    *v9 = 1;
    *(v9 + 8) = v3;
    v10 = *(v3 + 8);
    *(v3 + 8) = v9;
    if (v10)
    {
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v8);
      }
    }
  }

  v11 = *(v3 + 8);
  atomic_fetch_add(v11, 1u);
  *v7 = v11;
  ++*(v3 + 136);
  API::Object::Object(v5);
  *v5 = &unk_1F112B6B0;
  v12 = *v7;
  if (*v7)
  {
    atomic_fetch_add(v12, 1u);
  }

  *(v5 + 2) = v12;
  return *(v5 + 1);
}

_DWORD *WKBundlePageLayoutIfNeeded(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);

  return WebKit::WebPage::layoutIfNeeded(v1);
}

uint64_t WKBundlePageSetSkipDecidePolicyForResponseIfPossible(void *a1, char a2)
{
  result = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  *(result + 1951) = a2;
  return result;
}

uint64_t WKBundlePageCopyFrameTextForTesting(void *a1, char a2)
{
  v3 = WebKit::toImpl<OpaqueWKBundlePage const*,WebKit::WebPage>(a1);
  WebKit::WebFrame::frameTextForTesting(*(v3 + 88), a2, &v8);
  API::String::create(&v8, &v9);
  if (v9)
  {
    v5 = *(v9 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v8 = 0;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return v5;
}

uint64_t WKBundlePageOverlayCreate(__int128 *a1, void *a2)
{
  if (PageOverlayClientImpl::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(PageOverlayClientImpl::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *(NonCompact + 8) = 0u;
  v4 = (NonCompact + 8);
  *(NonCompact + 104) = 0;
  *(NonCompact + 88) = 0u;
  *(NonCompact + 72) = 0u;
  *(NonCompact + 56) = 0u;
  *(NonCompact + 40) = 0u;
  *(NonCompact + 24) = 0u;
  *NonCompact = &unk_1F112B6D8;
  *(NonCompact + 112) = 0u;
  *(NonCompact + 128) = 0u;
  if (a1)
  {
    v5 = *a1;
    if (*a1 == 1)
    {
      v6 = *a1;
      v7 = a1[2];
      *(NonCompact + 24) = a1[1];
      *(NonCompact + 40) = v7;
      *v4 = v6;
      v8 = a1[3];
      v9 = a1[4];
      v10 = a1[5];
      *(NonCompact + 104) = *(a1 + 12);
      *(NonCompact + 72) = v9;
      *(NonCompact + 88) = v10;
      *(NonCompact + 56) = v8;
    }

    else if (v5 <= 0)
    {
      if (v5)
      {
        __break(1u);
        goto LABEL_16;
      }

      *v4 = *a1;
      v11 = a1[1];
      v12 = a1[2];
      v13 = a1[3];
      *(NonCompact + 72) = *(a1 + 8);
      *(NonCompact + 40) = v12;
      *(NonCompact + 56) = v13;
      *(NonCompact + 24) = v11;
    }
  }

  v16 = NonCompact;
  WebKit::WebPageOverlay::create(&v16, &v17);
  if (v17)
  {
    v14 = *(v17 + 1);
    goto LABEL_12;
  }

LABEL_16:
  v14 = 0;
LABEL_12:
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return v14;
}

uint64_t WKBundlePageOverlaySetAccessibilityClient(void *a1, uint64_t a2)
{
  v3 = *(WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a1) + 40);
  if ((*(*v3 + 56))(v3))
  {
    v4 = *(*v3 + 88);

    return v4(v3, a2);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WKBundlePageOverlaySetNeedsDisplay(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a1);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v17 = v10;
  *&v17[1] = v11;
  v13 = a5;
  *&v17[2] = v12;
  *&v17[3] = v13;
  v18.m_location = WebCore::enclosingIntRect(v17, v14);
  v18.m_size = v15;
  return WebKit::WebPageOverlay::setNeedsDisplay(v9, &v18);
}

_DWORD *WKBundlePageOverlayClear(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundlePageOverlay const*,WebKit::WebPageOverlay>(a1);

  return WebKit::WebPageOverlay::clear(v1);
}

uint64_t WKBundleRangeHandleCreate(WebCore::JSRange **a1, const OpaqueJSContext *a2, JSValue a3)
{
  WebKit::InjectedBundleRangeHandle::getOrCreate(a1, a2, a3, &v4);
  if (v4)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::toImpl<OpaqueWKBundleRangeHandle const*,WebKit::InjectedBundleRangeHandle>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 144)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WKBundleRangeHandleCopySnapshotWithOptions(void *a1, unsigned int a2)
{
  v2 = a2;
  v3 = a2 >> 4;
  WebKit::toImpl<OpaqueWKBundleRangeHandle const*,WebKit::InjectedBundleRangeHandle>(a1);
  WebKit::InjectedBundleRangeHandle::renderedImage(v2 & 0xF | ((v3 & 7) << 6), &v5);
  if (v5)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleRangeHandleCopyDocumentFrame(void *a1)
{
  v1 = WebKit::toImpl<OpaqueWKBundleRangeHandle const*,WebKit::InjectedBundleRangeHandle>(a1);
  WebKit::InjectedBundleRangeHandle::document(v1, &v4);
  WebKit::InjectedBundleNodeHandle::documentFrame(v4, &v5);
  v2 = v4;
  v4 = 0;
  if (v2)
  {
    CFRelease(*(v2 + 1));
  }

  if (v5)
  {
    return *(v5 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleScriptWorldCreateWorld()
{
  WebKit::InjectedBundleScriptWorld::create(&v1);
  if (v1)
  {
    return *(v1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t WKBundleScriptWorldClearWrappers(void *a1)
{
  v1 = *(WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a1) + 24);

  return MEMORY[0x1EEE55D38](v1);
}

uint64_t WKBundleScriptWorldMakeAllShadowRootsOpen(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a1);
  *(*(result + 24) + 54) = 1;
  return result;
}

uint64_t WKBundleScriptWorldExposeClosedShadowRootsForExtensions(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a1);
  *(*(result + 24) + 55) = 1;
  return result;
}

uint64_t WKBundleScriptWorldDisableOverrideBuiltinsBehavior(void *a1)
{
  result = WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a1);
  *(*(result + 24) + 56) = 1;
  return result;
}

uint64_t WKBundleScriptWorldCopyName(void *a1)
{
  WebKit::toImpl<OpaqueWKBundleScriptWorld const*,WebKit::InjectedBundleScriptWorld>(a1);
  API::String::create(&v2);
  if (v2)
  {
    return *(v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t API::InjectedBundle::EditorClient::operator new(API::InjectedBundle::EditorClient *this, void *a2)
{
  if (this == 8 && API::InjectedBundle::EditorClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::InjectedBundle::EditorClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

void API::CaptionUserPreferencesTestingModeToken::~CaptionUserPreferencesTestingModeToken(API::CaptionUserPreferencesTestingModeToken *this, void *a2)
{
  *this = &unk_1F112B6B0;
  WebCore::CaptionUserPreferencesTestingModeToken::~CaptionUserPreferencesTestingModeToken((this + 16), a2);
}

{
  *this = &unk_1F112B6B0;
  WebCore::CaptionUserPreferencesTestingModeToken::~CaptionUserPreferencesTestingModeToken((this + 16), a2);

  JUMPOUT(0x19EB14CF0);
}

void WebCore::CaptionUserPreferencesTestingModeToken::~CaptionUserPreferencesTestingModeToken(WebCore::CaptionUserPreferencesTestingModeToken *this, void *a2)
{
  v3 = *this;
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        *(v4 + 136) = v5 - 1;
      }
    }

    *this = 0;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

uint64_t PageOverlayClientImpl::willMoveToPage(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (a3)
    {
      v5 = *(a3 + 8);
    }

    else
    {
      v5 = 0;
    }

    return v3(v4, v5, *(result + 16));
  }

  return result;
}

uint64_t PageOverlayClientImpl::didMoveToPage(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (a3)
    {
      v5 = *(a3 + 8);
    }

    else
    {
      v5 = 0;
    }

    return v3(v4, v5, *(result + 16));
  }

  return result;
}

atomic_uchar **PageOverlayClientImpl::drawRect(atomic_uchar **this, WebKit::WebPageOverlay *a2, WebCore::GraphicsContext *a3, const WebCore::IntRect *a4)
{
  if (this[5])
  {
    v7 = this;
    *&v8 = *(a4 + 3);
    v20 = *(a4 + 2);
    v21 = v8;
    v9 = WebCore::DestinationColorSpace::SRGB(this);
    (*(*a3 + 376))(&v24, a3, &v20, v9, 256);
    this = v24;
    if (v24)
    {
      v10 = (*(*v24 + 2))(v24);
      v23 = (-*a4 - (*a4 & 0xFFFFFFFF00000000));
      WebCore::FloatPoint::FloatPoint(&v20, &v23);
      v11.n128_f32[0] = v20;
      v12.n128_u32[0] = v21;
      (*(*v10 + 672))(v10, v11, v12);
      v13 = v7[5];
      v14 = *(a2 + 1);
      v15 = (*(*v10 + 24))(v10);
      (v13)(v14, v15, v7[2], *a4, *(a4 + 1), *(a4 + 2), *(a4 + 3));
      v16 = v24;
      v24 = 0;
      v22 = v16;
      WebCore::FloatRect::FloatRect(&v20, a4);
      this = WebCore::GraphicsContext::drawConsumingImageBuffer();
      v18 = v22;
      v22 = 0;
      if (v18)
      {
        this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v18 + 1, v17);
      }

      v19 = v24;
      v24 = 0;
      if (v19)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v19 + 1, v17);
      }
    }
  }

  return this;
}

uint64_t PageOverlayClientImpl::mouseEvent(void *a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v5 = *(a3 + 8);
  if (v5 == 5)
  {
    v8 = *(a3 + 48);
    if (v8 == 254)
    {
      v11 = a1[8];
      if (v11)
      {
        return v11(*(a2 + 8), a1[2], *(a3 + 52), *(a3 + 56));
      }

      return 0;
    }

    v6 = a1[9];
    if (v6)
    {
      a4.n128_f64[0] = *(a3 + 52);
      v7 = *(a2 + 8);
      a5.n128_f64[0] = *(a3 + 56);
      goto LABEL_8;
    }

    return 0;
  }

  if (v5 != 7)
  {
    if (v5 != 6)
    {
      return 0;
    }

    v6 = a1[6];
    if (!v6)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v6 = a1[7];
  if (!v6)
  {
    return 0;
  }

LABEL_7:
  a4.n128_f64[0] = *(a3 + 52);
  v7 = *(a2 + 8);
  a5.n128_f64[0] = *(a3 + 56);
  v8 = *(a3 + 48);
LABEL_8:
  if (v8 >= 3)
  {
    v9 = 4294967294;
  }

  else
  {
    v9 = v8;
  }

  return v6(v7, v9, a1[2], a4, a5);
}

uint64_t PageOverlayClientImpl::copyAccessibilityAttributeStringValueForPoint(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, WTF::StringImpl **a6)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    return 0;
  }

  v11 = *(a2 + 8);
  API::String::create(&v23);
  v12 = v23 ? *(v23 + 1) : 0;
  v13 = API::Object::newObject(0x20uLL, 35);
  v14 = API::Object::Object(v13);
  *v14 = &unk_1F10E7C90;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  v15 = v6(v11, v12, *(v14 + 1), *(a1 + 120));
  v16 = [v15 _apiObject];
  if ((*(*v16 + 16))(v16) != 20)
  {
    return 0;
  }

  if (v15)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(v15, &v23);
    WTF::String::isolatedCopy();
    v18 = v23;
    v23 = 0;
    if (v18)
    {
      CFRelease(*(v18 + 1));
    }

    v19 = v22;
  }

  else
  {
    v19 = 0;
  }

  v21 = *a6;
  *a6 = v19;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }
  }

  return 1;
}

uint64_t PageOverlayClientImpl::copyAccessibilityAttributeBoolValueForPoint(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    return 0;
  }

  v11 = *(a2 + 8);
  API::String::create(&v18);
  v12 = v18 ? *(v18 + 1) : 0;
  v13 = API::Object::newObject(0x20uLL, 35);
  v14 = API::Object::Object(v13);
  *v14 = &unk_1F10E7C90;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  v15 = v6(v11, v12, *(v14 + 1), *(a1 + 120));
  v16 = [v15 _apiObject];
  if ((*(*v16 + 16))(v16) != 31)
  {
    return 0;
  }

  *a6 = WKBooleanGetValue(v15);
  return 1;
}

unsigned int *PageOverlayClientImpl::copyAccessibilityAttributeNames@<X0>(unsigned int *this@<X0>, WebKit::WebPageOverlay *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v4 = *(this + 17);
  if (v4)
  {
    v6 = v4(*(a2 + 1), a3, *(this + 15));
    this = WebKit::toImpl<OpaqueWKArray const*,API::Array>(v6);
    v7 = this[7];
    if (v7)
    {
      if (v7 >> 29)
      {
        __break(0xC471u);
        return this;
      }

      v8 = WTF::fastMalloc((8 * v7));
      v9 = 0;
      *(a4 + 8) = v7;
      *a4 = v8;
      do
      {
        ItemAtIndex = WKArrayGetItemAtIndex(v6, v9);
        v11 = [ItemAtIndex _apiObject];
        if ((*(*v11 + 16))(v11) == 20)
        {
          if (ItemAtIndex)
          {
            WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(ItemAtIndex, &v21);
            WTF::String::isolatedCopy();
            v13 = v21;
            v21 = 0;
            if (v13)
            {
              CFRelease(*(v13 + 8));
            }
          }

          else
          {
            v20 = 0;
          }

          v14 = *(a4 + 12);
          if (v14 == *(a4 + 8))
          {
            v18 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a4, v14 + 1, &v20);
            v14 = *(a4 + 12);
            v15 = *a4;
            v16 = *v18;
            *v18 = 0;
          }

          else
          {
            v15 = *a4;
            v16 = v20;
            v20 = 0;
          }

          *(v15 + 8 * v14) = v16;
          *(a4 + 12) = v14 + 1;
          v17 = v20;
          v20 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v12);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v19 = *(a4 + 12);
    }

    else
    {
      v19 = 0;
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a4, v19);
  }

  return this;
}

uint64_t PageOverlayClientImpl::setAccessibilityClient(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      if ((*a2 & 0x80000000) != 0)
      {
        __break(1u);
      }
    }

    else
    {
      v2 = *(a2 + 16);
      *(result + 112) = *a2;
      *(result + 128) = v2;
    }
  }

  else
  {
    *(result + 112) = 0u;
    *(result + 128) = 0u;
  }

  return result;
}

uint64_t API::Array::GetObjectTransform<API::Dictionary>::operator()(uint64_t a1)
{
  if (!a1 || (*(*a1 + 16))(a1) == 9)
  {
    return a1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WKBundlePageCallAfterTasksAndTimers::$_0,void,WebCore::ScriptExecutionContext &>::call(uint64_t a1)
{
  v8 = *(a1 + 8);
  v1 = WTF::fastMalloc(0x18);
  *v1 = &unk_1F112B7E8;
  *(v1 + 8) = v8;
  v3 = WebCore::Timer::operator new(0x38, v2);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F112B798;
  WebCore::TimerBase::TimerBase(v3);
  *v3 = &unk_1F10EB388;
  *(v3 + 6) = v4;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F112B7C0;
  v5[1] = v3;
  v5[2] = v1;
  v6 = *(v3 + 6);
  *(v3 + 6) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return WebCore::TimerBase::start();
}

void *WTF::Detail::CallableWrapper<WebCore::Timer::schedule(WTF::Seconds,WTF::Function<void ()(void)> &&)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112B7C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::schedule(WTF::Seconds,WTF::Function<void ()(void)> &&)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112B7C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::schedule(WTF::Seconds,WTF::Function<void ()(void)> &&)::{lambda(void)#2},void>::call(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WKBundlePagePostMessageWithAsyncReply::$_0,void,API::Object *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  return (*(a1 + 8))(v2, *(a1 + 16));
}

uint64_t *WebKit::InjectedBundleCSSStyleDeclarationHandle::getOrCreate@<X0>(const OpaqueJSContext *a1@<X1>, JSValue a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = (a1 - 16);
  if ((a1 & 8) == 0)
  {
    v5 = (a1 & 0xFFFFFFFFFFFFC000 | 8);
  }

  result = WebCore::JSCSSStyleDeclaration::toWrapped(*v5, a1, a2);
  if (result)
  {
    v7 = result;
    (**result)(result);
    WebKit::InjectedBundleCSSStyleDeclarationHandle::getOrCreate(v7, a3);
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *WebKit::InjectedBundleCSSStyleDeclarationHandle::getOrCreate@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  if (!result)
  {
    v19 = 0;
    goto LABEL_41;
  }

  v3 = result;
  if ((_MergedGlobals_112 & 1) == 0)
  {
    qword_1ED642C40 = 0;
    _MergedGlobals_112 = 1;
  }

  if (!result[1])
  {
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = v3;
    v6 = v3[1];
    v3[1] = v5;
    if (v6)
    {
      if (*v6 == 1)
      {
        WTF::fastFree(v6, v4);
      }

      else
      {
        --*v6;
      }
    }
  }

  v7 = v3[1];
  ++*v7;
  if (v7 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2EB924);
  }

  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2EB944);
  }

  v8 = qword_1ED642C40;
  if (qword_1ED642C40 || (WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand(), (v8 = qword_1ED642C40) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::PtrHashBase<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,true>::hash(v7[1]);
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v10 & v9;
    v15 = (v8 + 16 * (v10 & v9));
    v16 = *v15;
    if (*v15 == -1)
    {
      v12 = (v8 + 16 * v14);
      goto LABEL_21;
    }

    if (!v16)
    {
      if (v12)
      {
        *v12 = 0;
        v12[1] = 0;
        --*(qword_1ED642C40 - 16);
        *v12 = v7;
      }

      else
      {
        *v15 = v7;
        v12 = v15;
      }

      v19 = API::Object::newObject(0x20uLL, 136);
      v20 = API::Object::Object(v19);
      *(v20 + 2) = 0;
      *v20 = &unk_1F112B8D0;
      (**v3)(v3);
      *(v19 + 24) = v3;
      if (!*(v19 + 16))
      {
        v22 = WTF::fastCompactMalloc(0x10);
        *v22 = 1;
        *(v22 + 8) = v19;
        v23 = *(v19 + 16);
        *(v19 + 16) = v22;
        if (v23)
        {
          if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23);
            WTF::fastFree(v23, v21);
          }
        }
      }

      v24 = *(v19 + 16);
      atomic_fetch_add(v24, 1u);
      result = v12[1];
      v12[1] = v24;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v21);
      }

      v25 = qword_1ED642C40;
      if (qword_1ED642C40)
      {
        v26 = *(qword_1ED642C40 - 12) + 1;
      }

      else
      {
        v26 = 1;
      }

      *(qword_1ED642C40 - 12) = v26;
      v27 = (*(v25 - 16) + v26);
      v28 = *(v25 - 4);
      if (v28 > 0x400)
      {
        if (v28 > 2 * v27)
        {
          goto LABEL_41;
        }
      }

      else if (3 * v28 > 4 * v27)
      {
        goto LABEL_41;
      }

      result = WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::expand();
      goto LABEL_41;
    }

    v17 = v16[1];
    if (!v17)
    {
      goto LABEL_53;
    }

    v18 = v7[1];
    if (!v18)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2EB904);
    }

    if (v18 == v17)
    {
      break;
    }

LABEL_21:
    v10 = i + v14;
  }

  if (*v7 == 1)
  {
    WTF::fastFree(v7, v11);
  }

  else
  {
    --*v7;
  }

  v19 = v15[1][1];
  if (!v19)
  {
LABEL_53:
    __break(0xC471u);
    JUMPOUT(0x19E2EB8E4);
  }

  result = CFRetain(*(v19 + 8));
LABEL_41:
  *a2 = v19;
  return result;
}

void WebKit::InjectedBundleCSSStyleDeclarationHandle::~InjectedBundleCSSStyleDeclarationHandle(WebKit::InjectedBundleCSSStyleDeclarationHandle *this, void *a2)
{
  *this = &unk_1F112B8D0;
  if ((_MergedGlobals_112 & 1) == 0)
  {
    qword_1ED642C40 = 0;
    _MergedGlobals_112 = 1;
    v4 = (this + 24);
LABEL_18:
    v3 = *v4;
    goto LABEL_19;
  }

  v4 = (this + 24);
  v3 = *(this + 3);
  if (qword_1ED642C40)
  {
    v5 = *(qword_1ED642C40 - 8);
    v6 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    for (i = 1; ; ++i)
    {
      v11 = v9;
      v12 = *(qword_1ED642C40 + 16 * v9);
      if (v12 != -1)
      {
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = *(v12 + 1);
        if (!v13)
        {
          __break(0xC471u);
          return;
        }

        if (v13 == v3)
        {
          break;
        }
      }

      v9 = (v11 + i) & v5;
    }

    if (v11 != *(qword_1ED642C40 - 4))
    {
      v14 = (qword_1ED642C40 + 16 * v11);
      *v14 = 0;
      if (*v12 == 1)
      {
        WTF::fastFree(v12, a2);
      }

      else
      {
        --*v12;
      }

      v15 = v14[1];
      *v14 = -1;
      v14[1] = 0;
      if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, a2);
      }

      v16 = qword_1ED642C40;
      v17 = vadd_s32(*(qword_1ED642C40 - 16), 0xFFFFFFFF00000001);
      *(qword_1ED642C40 - 16) = v17;
      v18 = *(v16 - 4);
      if (6 * v17.i32[1] < v18 && v18 >= 9)
      {
        WTF::HashTable<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleCSSStyleDeclarationHandle,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::CSSStyleDeclaration,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v18 >> 1);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  *v4 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v20 = *(this + 2);
  if (v20)
  {
    *(v20 + 8) = 0;
    v21 = *(this + 2);
    *(this + 2) = 0;
    if (v21)
    {
      if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v21);
        WTF::fastFree(v21, a2);
      }
    }
  }
}

{
  WebKit::InjectedBundleCSSStyleDeclarationHandle::~InjectedBundleCSSStyleDeclarationHandle(this, a2);

  JUMPOUT(0x19EB14CF0);
}

WebKit::RemoteWebInspectorUI *WebKit::RemoteWebInspectorUI::RemoteWebInspectorUI(WebKit::RemoteWebInspectorUI *this, WebKit::WebPage *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F112B8F8;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F112BAA0;
  *(this + 4) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 5) = v4;
  v5 = *(a2 + 7);
  if (v5)
  {
    ++*(v5 + 8);
  }

  WTF::fastMalloc(0x38);
  *(this + 6) = WebCore::InspectorFrontendAPIDispatcher::InspectorFrontendAPIDispatcher();
  WTF::RefCounted<WebCore::Page>::deref((v5 + 8));
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 96) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  return this;
}

void WebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI(WebKit::RemoteWebInspectorUI *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    WTF::RefCounted<WebCore::InspectorFrontendHost>::deref(v7);
  }

  v8 = *(this + 6);
  *(this + 6) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::InspectorFrontendAPIDispatcher>::deref(v8);
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, a2);
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v10);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI(WebKit::RemoteWebInspectorUI *this, WTF::StringImpl *a2)
{
  WebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI((this - 24), a2);
}

{
  WebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI((this - 24), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteWebInspectorUI::initialize(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = *a2;
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a1 + 72);
  *(a1 + 72) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = *(a1 + 88);
  *(a1 + 88) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  *(a1 + 96) = *(a2 + 32);
  WTF::String::operator=((a1 + 104), a3);
  v12 = *(*(a1 + 40) + 8);
  if (v12)
  {
    CFRetain(*(v12 - 8));
    v13 = *(v12 + 40);
    if (v13)
    {
      ++*(v13 + 8);
    }

    WebCore::InspectorController::setInspectorFrontendClient();
    WTF::RefCounted<WebCore::Page>::deref((v13 + 8));
    CFRelease(*(v12 - 8));
    WebCore::InspectorFrontendAPIDispatcher::reset(*(a1 + 48));
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::Value::create(1);
    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v18, v20, 1uLL);
    WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v14);
    v16 = v20[0];
    v20[0] = 0;
    if (v16)
    {
      if (*v16 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v16;
      }
    }

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

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteWebInspectorUI::updateFindString(WebKit::RemoteWebInspectorUI *this, const WTF::String *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::Value::create(v10, a2, v3);
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8, v10, 1uLL);
  WebCore::InspectorFrontendAPIDispatcher::dispatchCommandWithResultAsync();
  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
  v6 = v10[0];
  v10[0] = 0;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v6;
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t WebKit::RemoteWebInspectorUI::sendMessageToBackend(WebKit::RemoteWebInspectorUI *this, const WTF::String *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
  v6 = *(*(this + 5) + 8);
  if (v6)
  {
    v7 = v16;
    v8 = *(v6 + 32);
    v9 = IPC::Encoder::operator new(0x238, v5);
    *v9 = 1690;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v17 = v9;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}