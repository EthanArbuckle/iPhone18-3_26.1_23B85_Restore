WebCore *WebKit::eventsToObserve(WebCore *this, WTF::StringImpl *a2)
{
  if ((byte_1ED642BC9 & 1) == 0)
  {
    v20[7] = v2;
    v20[8] = v3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = *(StatusReg + 736);
    if (!v5 || (v6 = *(v5 + 96)) == 0)
    {
      this = WebCore::threadGlobalDataSlow(this);
      v6 = this;
    }

    v7 = *(v6 + 5);
    if (!v7)
    {
      this = WebCore::ThreadGlobalData::initializeEventNames(v6);
      v7 = *(v6 + 5);
    }

    v8 = *(v7 + 1496);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v20[0] = v8;
    v9 = *(StatusReg + 736);
    if (!v9 || (v10 = *(v9 + 96)) == 0)
    {
      this = WebCore::threadGlobalDataSlow(this);
      v10 = this;
    }

    v11 = *(v10 + 5);
    if (!v11)
    {
      this = WebCore::ThreadGlobalData::initializeEventNames(v10);
      v11 = *(v10 + 5);
    }

    v12 = *(v11 + 1456);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v20[1] = v12;
    v13 = *(StatusReg + 736);
    if (!v13 || (v14 = *(v13 + 96)) == 0)
    {
      v14 = WebCore::threadGlobalDataSlow(this);
    }

    v15 = *(v14 + 5);
    if (!v15)
    {
      WebCore::ThreadGlobalData::initializeEventNames(v14);
      v15 = *(v14 + 5);
    }

    v16 = *(v15 + 1136);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    v17 = 0;
    v20[2] = v16;
    do
    {
      v18 = v20[v17];
      v20[v17] = 0;
      *&_MergedGlobals_108[v17 * 8 + 8] = v18;
      ++v17;
    }

    while (v17 != 3);
    for (i = 2; i != -1; --i)
    {
      this = v20[i];
      v20[i] = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          this = WTF::StringImpl::destroy(this, a2);
        }
      }
    }

    byte_1ED642BC9 = 1;
  }

  return this;
}

WTF::StringImpl *WebKit::WebFullScreenManager::enterFullScreenForElement(uint64_t a1, _DWORD *a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 176);
  atomic_fetch_add(v10 + 2, 1u);
  v11 = *(a1 + 184);
  *&v70 = "WebFullScreenManager";
  *(&v70 + 1) = 21;
  v71 = "enterFullScreenForElement";
  v72 = v11;
  (*(*a2 + 104))(v74, a2);
  v12 = *(a2 + 14);
  if (!v12 || !*(v12 + 24))
  {
    v20 = MEMORY[0x1E696EB90];
    goto LABEL_16;
  }

  v13 = *(v12 + 4);
  if (v13)
  {
    v14 = *(v12 + 40);
    v15 = *(v12 + 52);
    if (v15)
    {
LABEL_5:
      v16 = v15;
      v17 = *MEMORY[0x1E69E2B58];
      v18 = 16 * v16;
      do
      {
        v19 = *v14;
        if (*v14 == v17 || *(v19 + 24) == *(v17 + 24) && *(v19 + 32) == *(v17 + 32))
        {
          goto LABEL_15;
        }

        v14 += 2;
        v18 -= 16;
      }

      while (v18);
    }
  }

  else
  {
    v14 = (v12 + 32);
    v15 = v13 >> 5;
    if (v13 >> 5)
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_15:
  v20 = (v14 + 1);
LABEL_16:
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v10, &v70, v74, v20))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&v70, v74, v20);
  }

  v22 = v74[0];
  v74[0] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else if (!v10)
  {
    goto LABEL_23;
  }

  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

LABEL_23:
  if (*(a1 + 72) != a2)
  {
    WebKit::WebFullScreenManager::clearElement(a1, v21);
    a2[7] += 2;
    v23 = *(a1 + 72);
    *(a1 + 72) = a2;
    if (v23)
    {
      if (*(v23 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v23);
      }

      else
      {
        *(v23 + 7) -= 2;
      }
    }

    WTF::WeakPtrFactoryWithBitField<WebCore::EventTarget,WebCore::WeakPtrImplWithEventTargetData>::initializeIfNeeded(a2 + 4, a2);
    v25 = (*(a2 + 2) & 0xFFFFFFFFFFFFLL);
    atomic_fetch_add(v25, 1u);
    v26 = *(a1 + 80);
    *(a1 + 80) = v25;
    if (v26)
    {
      v26 = WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v26, v24);
    }

    v27 = *(*(*(*(*(a2 + 6) + 8) + 552) + 8) + 32);
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a1 + 96) = 1;
    }

    *(a1 + 88) = v27;
    WebKit::eventsToObserve(v26, v24);
    v28 = &unk_1ED642BD0;
    v29 = 24;
    do
    {
      v30 = *(a1 + 72);
      ++*(a1 + 16);
      v74[0] = a1;
      LOBYTE(v70) = 1;
      *(&v70 + 1) = 0;
      BYTE3(v70) = 0;
      *(&v70 + 1) = 0;
      (*(*v30 + 24))(v30, v28, v74, &v70);
      v31 = *(&v70 + 1);
      *(&v70 + 1) = 0;
      if (v31)
      {
        WTF::RefCounted<WebCore::AbortSignal>::deref((v31 + 24));
      }

      v32 = v74[0];
      v74[0] = 0;
      if (v32)
      {
        if (*(v32 + 4) == 1)
        {
          (*(*v32 + 8))(v32);
        }

        else
        {
          --*(v32 + 4);
        }
      }

      v28 += 8;
      v29 -= 8;
    }

    while (v29);
  }

  LOBYTE(v70) = 0;
  v73 = 0;
  *(&v70 + 4) = 0;
  v71 = 0;
  LOBYTE(v72) = 0;
  v33 = *(WebKit::WebPage::videoPresentationManager(*(a1 + 64)) + 80);
  if (!v33 || !*(v33 + 8))
  {
    goto LABEL_50;
  }

  v34 = *(*(*(*(a1 + 72) + 48) + 8) + 728);
  if (!v34)
  {
    v34 = WebCore::Document::ensureQuirks(*(*(*(a1 + 72) + 48) + 8));
  }

  if (WebCore::Quirks::blocksEnteringStandardFullscreenFromPictureInPictureQuirk(v34))
  {
    v67[0] = 31;
    v68 = 0;
    v69 = 1;
    WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(a4, v67);
    if (v69 == 1)
    {
      v36 = v68;
      if (v68)
      {
        if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v35);
        }
      }
    }

    v37 = *a5;
    *a5 = 0;
    (*(*v37 + 16))(v37, 0);
    (*(*v37 + 8))(v37);
  }

  else
  {
LABEL_50:
    v39 = WebKit::WebPage::playbackSessionManager(*(a1 + 64));
    v40 = *(v39 + 7);
    if (v40)
    {
      v41 = WebKit::PlaybackSessionManager::mediaElementWithContextId(v39, v40);
      if (v41)
      {
        v42 = v41;
        *(v41 + 7) += 2;
        WebCore::HTMLMediaElement::prepareForVideoFullscreenStandby(v41);
        if (*(v42 + 7) == 2)
        {
          goto LABEL_80;
        }

        *(v42 + 7) -= 2;
      }
    }

    while (1)
    {
      *(a1 + 24) = WebKit::screenRectOfContents(*(a2 + 9), v40);
      *(a1 + 32) = v43;
      WebKit::WebFullScreenManager::updateMainVideoElement(a1, v43, v44);
      WebKit::WebPage::addReasonsToDisallowLayoutViewportHeightExpansion(*(a1 + 64), 1);
      v42 = *(*(a1 + 64) + 56);
      if (v42)
      {
        v45 = *(v42 + 2);
        v42 = (v42 + 8);
        *v42 = v45 + 1;
        v46 = (*(**(v42 + 21) + 56))(*(v42 + 21));
        if (v46)
        {
          v47 = v46;
          ++*(v46 + 8);
          *(a1 + 56) = WebCore::ScrollableArea::visibleContentRect();
          if (v47[2] == 1)
          {
            (*(*v47 + 8))(v47);
          }

          else
          {
            --v47[2];
          }
        }

        WTF::RefCounted<WebCore::Page>::deref(v42);
      }

      if (a3 == 4)
      {
        WebKit::WebFullScreenManager::willEnterFullScreen(a1, a2, a4, a5, 4);
        *(a1 + 170) = 1;
        goto LABEL_70;
      }

      if (*(a1 + 96))
      {
        break;
      }

      __break(1u);
LABEL_80:
      WebCore::Node::removedLastRef(v42);
    }

    v48 = *(a1 + 72);
    v49 = *(a1 + 64) + 32;
    v50 = *(*(*(v48 + 48) + 8) + 728);
    if (!v50)
    {
      v50 = WebCore::Document::ensureQuirks(*(*(v48 + 48) + 8));
    }

    v51 = WebCore::Quirks::blocksReturnToFullscreenFromPictureInPictureQuirk(v50);
    ++*(a1 + 16);
    a2[7] += 2;
    v52 = *a4;
    *a4 = 0;
    v53 = *a5;
    *a5 = 0;
    v54 = (*(*v49 + 56))(v49);
    v56 = IPC::Encoder::operator new(0x238, v55);
    *v56 = 2022;
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    *(v56 + 1) = v54;
    *(v56 + 68) = 0;
    *(v56 + 70) = 0;
    *(v56 + 69) = 0;
    IPC::Encoder::encodeHeader(v56);
    v75 = v56;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, *(a1 + 88));
    v57 = IPC::Encoder::grow(v56, 1uLL, 1);
    if (!v58 || (*v57 = v51, IPC::ArgumentCoder<WebKit::FullScreenMediaDetails,void>::encode(v56, &v70), v59 = WTF::fastMalloc(0x30), *v59 = &unk_1F11235D0, *(v59 + 1) = a1, *(v59 + 2) = a1, *(v59 + 3) = a2, *(v59 + 4) = v52, *(v59 + 5) = v53, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E198F14);
    }

    v60 = v59;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v74[0] = v60;
    v74[1] = IdentifierInternal;
    (*(*v49 + 40))(v49, &v75, v74, 0);
    v62 = v74[0];
    v74[0] = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }

    v63 = v75;
    v75 = 0;
    if (v63)
    {
      IPC::Encoder::~Encoder(v63, v38);
      bmalloc::api::tzoneFree(v65, v66);
    }
  }

LABEL_70:
  if (v73 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v72);
  }

  result = v71;
  v71 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v38);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(uint64_t *a1, char *a2)
{
  v2 = *a1;
  *a1 = 0;
  if (a2[16])
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0;
    v8[0] = v3;
    v9 = v4;
    v10 = 1;
  }

  else
  {
    v8[0] = 0;
    v10 = 0;
  }

  (*(*v2 + 16))(v2, v8);
  if (v10 == 1)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::screenRectOfContents(WebKit *this, WebCore::Element *a2)
{
  if (!this)
  {
    return 0;
  }

  if ((*(this + 45) & 2) != 0)
  {
    __break(0xC471u);
    goto LABEL_28;
  }

  ++*(this + 4);
  v42 = WebCore::RenderObject::absoluteBoundingBoxRect(this, 1, 0);
  v43 = v3;
  if (v3 < 1 || v3 <= 0)
  {
    v41.m_location = 0;
    v41.m_size = 0;
    v23 = WebCore::RenderObject::paintingRootRect(this, &v41);
    v26 = v23 - (v25 & 0xFFFFFFC0);
    v27 = v26 + 32;
    v29 = HIDWORD(v23) - (v28 & 0xFFFFFFC0);
    v30 = v29 + 32;
    v31 = (((v26 + 32) >> 6) + v23 / 64) | ((((v29 + 32) >> 6) + SHIDWORD(v23) / 64) << 32);
    v16 = __OFADD__(v26, v32);
    v33 = v26 + v32;
    v34 = (v26 >> 31) + 0x7FFFFFFF;
    if (!v16)
    {
      v34 = v33;
    }

    v35 = (v34 / 64 - (v27 >> 6) + ((v34 - (v33 & 0xFFFFFFC0) + 32) >> 6));
    v16 = __OFADD__(v29, v24);
    v36 = v29 + v24;
    v37 = (v29 >> 31) + 0x7FFFFFFF;
    if (!v16)
    {
      v37 = v36;
    }

    v38 = (v37 / 64 - (v30 >> 6) + ((v37 - (v36 & 0xFFFFFFC0) + 32) >> 6));
    v42 = v31;
    v43 = v35 | (v38 << 32);
    v22 = 0;
    if (v35 < 1 || v38 < 1)
    {
      goto LABEL_19;
    }
  }

  v4 = *(*(this + 3) + 8);
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E199330);
  }

  v5 = *(*(*(*(v4 + 48) + 8) + 2024) + 256);
  if (!v5)
  {
    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x19E1992F0);
  }

  ++*(v5 + 2);
  v6 = WebCore::LocalFrameView::layoutViewportRect(v5);
  v9 = v6 - (v8 & 0xFFFFFFC0);
  v10 = v9 + 32;
  v12 = HIDWORD(v6) - (v11 & 0xFFFFFFC0);
  v13 = v12 + 32;
  v14 = (((v9 + 32) >> 6) + v6 / 64) | ((((v12 + 32) >> 6) + SHIDWORD(v6) / 64) << 32);
  v16 = __OFADD__(v9, v15);
  v17 = v9 + v15;
  v18 = (v9 >> 31) + 0x7FFFFFFF;
  if (!v16)
  {
    v18 = v17;
  }

  v19 = (v18 / 64 - (v10 >> 6) + ((v18 - (v17 & 0xFFFFFFC0) + 32) >> 6));
  v16 = __OFADD__(v12, v7);
  v20 = v12 + v7;
  v21 = (v12 >> 31) + 0x7FFFFFFF;
  if (!v16)
  {
    v21 = v20;
  }

  v41.m_location = v14;
  v41.m_size = (v19 | ((v21 / 64 - (v13 >> 6) + ((v21 - (v20 & 0xFFFFFFC0) + 32) >> 6)) << 32));
  WebCore::IntRect::intersect(&v42, &v41);
  v22 = WebCore::ScrollView::contentsToScreen(v5, &v42);
  if (*(v5 + 2) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --*(v5 + 2);
  }

LABEL_19:
  v39 = *(this + 4);
  if (!v39)
  {
    __break(0xC471u);
    JUMPOUT(0x19E199310);
  }

  *(this + 4) = v39 - 1;
  return v22;
}

uint64_t WebKit::WebFullScreenManager::updateMainVideoElement(WebKit::WebFullScreenManager *this, uint64_t a2, const Node *a3)
{
  v4 = *(this + 9);
  if (!v4)
  {
    v27 = 0;
    return WebKit::WebFullScreenManager::setMainVideoElement(this, &v27);
  }

  if ((*(v4 + 32) & 0x10) == 0 || *(*(v4 + 104) + 24) != *(*MEMORY[0x1E69E2D10] + 24))
  {
    v27 = 0;
    v7 = *(v4 + 24) + 1;
    *(v4 + 24) = v7;
    v8 = *(v4 + 88);
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = MEMORY[0x1E69E2D10];
    while (1)
    {
      v10 = *(v8 + 32);
      if ((v10 & 0x10) != 0 && *(*(v8 + 104) + 24) == *(*v9 + 24))
      {
        break;
      }

      if ((v10 & 4) == 0 || (AncestorSibling = *(v8 + 88)) == 0)
      {
        if (v8 == v4)
        {
          goto LABEL_15;
        }

        AncestorSibling = *(v8 + 64);
        if (!AncestorSibling)
        {
          AncestorSibling = WebCore::NodeTraversal::nextAncestorSibling(v8, v4, a3);
        }
      }

      v8 = AncestorSibling;
      if (!AncestorSibling)
      {
LABEL_15:
        v7 = *(v4 + 24);
LABEL_16:
        v6 = 0;
        v12 = v7 + 1;
        *(v4 + 24) = v12;
        if (v12)
        {
          goto LABEL_17;
        }

        goto LABEL_75;
      }
    }

    v6 = 0;
    ++*(v4 + 24);
    ++*(v8 + 24);
    v13 = 0.0;
    v14 = 0.0;
    while (1)
    {
      *(v8 + 28) += 2;
      WebCore::Element::boundingAbsoluteRectWithoutLayout(&v28, v8);
      v16 = v28;
      if (v31 != 1 || v28 == 0)
      {
        if (!v31)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v18 = v29;
        if (v29 <= 0.0 || ((v19 = v30, v30 > 0.0) ? (v20 = (v29 * v30) > (v13 * v14)) : (v20 = 0), !v20))
        {
          v18 = v14;
          v19 = v13;
          goto LABEL_42;
        }

        *(v8 + 28) += 2;
        if (!v6)
        {
          goto LABEL_41;
        }

        if (*(v6 + 7) != 2)
        {
          *(v6 + 7) -= 2;
LABEL_41:
          v6 = v8;
LABEL_42:
          v21 = *(v16 + 16);
          if (!v21)
          {
            __break(0xC471u);
            JUMPOUT(0x19E199700);
          }

          *(v16 + 16) = v21 - 1;
          v13 = v19;
          v14 = v18;
          goto LABEL_44;
        }

        v13 = v19;
        v14 = v18;
        WebCore::Node::removedLastRef(v6);
        if ((v31 & 1) == 0)
        {
          v6 = v8;
          goto LABEL_44;
        }

        v16 = v28;
        v6 = v8;
      }

      v18 = v14;
      v19 = v13;
      if (v16)
      {
        goto LABEL_42;
      }

LABEL_44:
      if (*(v8 + 28) == 2)
      {
        WebCore::Node::removedLastRef(v8);
      }

      else
      {
        *(v8 + 28) -= 2;
      }

      v22 = *(v8 + 88);
      if (v22)
      {
LABEL_47:
        while (1)
        {
          v23 = *(v22 + 32);
          if ((v23 & 0x10) != 0 && *(*(v22 + 104) + 24) == *(*v9 + 24))
          {
            break;
          }

          if ((v23 & 4) == 0 || (v24 = *(v22 + 88)) == 0)
          {
            if (v22 == v4)
            {
              goto LABEL_60;
            }

            v24 = *(v22 + 64);
            if (!v24)
            {
              v24 = WebCore::NodeTraversal::nextAncestorSibling(v22, v4, v15);
            }
          }

          v22 = v24;
          if (!v24)
          {
            goto LABEL_61;
          }
        }

        v25 = 0;
        ++*(v22 + 24);
      }

      else
      {
        if (v8 == v4)
        {
LABEL_60:
          v22 = 0;
        }

        else
        {
          v22 = *(v8 + 64);
          if (v22)
          {
            goto LABEL_47;
          }

          v22 = WebCore::NodeTraversal::nextAncestorSibling(v8, v4, v15);
          if (v22)
          {
            goto LABEL_47;
          }
        }

LABEL_61:
        v25 = 1;
      }

      v26 = *(v8 + 24);
      if (!v26)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1996E0);
      }

      *(v8 + 24) = v26 - 1;
      v8 = v22;
      if (v25)
      {
        v27 = v6;
        v12 = *(v4 + 24);
        if (!v12)
        {
          goto LABEL_75;
        }

LABEL_17:
        *(v4 + 24) = v12 - 1;
        if (v12 != 1)
        {
          *(v4 + 24) = v12 - 2;
          result = WebKit::WebFullScreenManager::setMainVideoElement(this, &v27);
          v27 = 0;
          if (v6)
          {
            goto LABEL_19;
          }

          return result;
        }

LABEL_75:
        __break(0xC471u);
        JUMPOUT(0x19E1996B4);
      }
    }
  }

  *(v4 + 28) += 2;
  v27 = v4;
  result = WebKit::WebFullScreenManager::setMainVideoElement(this, &v27);
  v27 = 0;
  v6 = v4;
LABEL_19:
  if (*(v6 + 7) == 2)
  {
    return WebCore::Node::removedLastRef(v6);
  }

  *(v6 + 7) -= 2;
  return result;
}

uint64_t WebKit::WebFullScreenManager::willEnterFullScreen(uint64_t a1, WebCore::Element *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v10 = *(a1 + 176);
  atomic_fetch_add(v10 + 2, 1u);
  v11 = *(a1 + 184);
  v49 = "WebFullScreenManager";
  v50 = 21;
  v51 = "willEnterFullScreen";
  v52 = v11;
  (*(*a2 + 104))(v53, a2);
  v12 = *(a2 + 14);
  if (!v12 || !*(v12 + 24))
  {
    v20 = MEMORY[0x1E696EB90];
    goto LABEL_16;
  }

  v13 = *(v12 + 4);
  if (v13)
  {
    v14 = *(v12 + 40);
    v15 = *(v12 + 52);
    if (v15)
    {
LABEL_5:
      v16 = v15;
      v17 = *MEMORY[0x1E69E2B58];
      v18 = 16 * v16;
      do
      {
        v19 = *v14;
        if (*v14 == v17 || *(v19 + 24) == *(v17 + 24) && *(v19 + 32) == *(v17 + 32))
        {
          goto LABEL_15;
        }

        v14 += 2;
        v18 -= 16;
      }

      while (v18);
    }
  }

  else
  {
    v14 = (v12 + 32);
    v15 = v13 >> 5;
    if (v13 >> 5)
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_15:
  v20 = (v14 + 1);
LABEL_16:
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v10, &v49, v53, v20))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&v49, v53, v20);
  }

  v22 = v53[0];
  v53[0] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else if (!v10)
  {
    goto LABEL_23;
  }

  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

LABEL_23:
  v23 = *(a1 + 64);
  if ((*(v23 + 528) & 1) == 0)
  {
    *(v23 + 528) = 1;
    WebKit::WebPage::resetViewportDefaultConfiguration(v23, *(v23 + 88), *(v23 + 1576));
  }

  v24 = WebCore::Document::fullscreen(*(*(a2 + 6) + 8));
  WebCore::DocumentFullscreen::willEnterFullscreen(v24, a2);
  if (v51 == 1)
  {
    WebKit::WebFullScreenManager::close(a1);
    v46[0] = 0;
    v48 = 0;
    if (v51)
    {
      v46[0] = v49;
      v25 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v47 = v25;
      v48 = 1;
    }
  }

  else
  {
    v46[0] = 0;
    v48 = 0;
  }

  WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()(a3, v46);
  if (v48 == 1)
  {
    v27 = v47;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v26);
      }
    }
  }

  v28 = *(*(a2 + 6) + 8);
  *(v28 + 7) += 2;
  WebCore::Document::updateLayout();
  if (*(v28 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v28);
  }

  else
  {
    *(v28 + 7) -= 2;
  }

  *(a1 + 40) = WebKit::screenRectOfContents(*(a2 + 9), v29);
  *(a1 + 48) = v30;
  v31 = *(a1 + 64);
  v33 = *(v31 + 32);
  v32 = v31 + 32;
  ++*(a1 + 16);
  v34 = *a4;
  *a4 = 0;
  v35 = (*(v33 + 56))(v32);
  v37 = IPC::Encoder::operator new(0x238, v36);
  *v37 = 2019;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 1) = v35;
  *(v37 + 68) = 0;
  *(v37 + 70) = 0;
  *(v37 + 69) = 0;
  IPC::Encoder::encodeHeader(v37);
  v54 = v37;
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v37, (a1 + 24));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v37, (a1 + 40));
  v38 = WTF::fastMalloc(0x28);
  *v38 = &unk_1F1123648;
  *(v38 + 8) = a1;
  *(v38 + 16) = a1;
  *(v38 + 24) = a5;
  *(v38 + 32) = v34;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v39 = v38;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v53[0] = v39;
    v53[1] = IdentifierInternal;
    (*(*v32 + 40))(v32, &v54, v53, 0);
    v42 = v53[0];
    v53[0] = 0;
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v41);
      result = bmalloc::api::tzoneFree(v44, v45);
    }

    if (v51 == 1)
    {
      result = v50;
      v50 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v41);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFullScreenManager::exitFullScreenForElement(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3;
  v77[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 176);
  atomic_fetch_add((v5 + 8), 1u);
  if (a2)
  {
    v7 = *(a1 + 184);
    *&buf = "WebFullScreenManager";
    *(&buf + 1) = 21;
    v76 = "exitFullScreenForElement";
    v77[0] = v7;
    (*(*a2 + 104))(v70, a2);
    v8 = a2[14];
    if (!v8 || !*(v8 + 24))
    {
      v16 = MEMORY[0x1E696EB90];
      goto LABEL_61;
    }

    v9 = *(v8 + 4);
    if (v9)
    {
      v10 = *(v8 + 40);
      v11 = *(v8 + 52);
      if (v11)
      {
LABEL_6:
        v12 = v11;
        v13 = *MEMORY[0x1E69E2B58];
        v14 = 16 * v12;
        do
        {
          v15 = *v10;
          if (*v10 == v13 || *(v15 + 24) == *(v13 + 24) && *(v15 + 32) == *(v13 + 32))
          {
            goto LABEL_60;
          }

          v10 += 2;
          v14 -= 16;
        }

        while (v14);
      }
    }

    else
    {
      v10 = (v8 + 32);
      v11 = v9 >> 5;
      if (v9 >> 5)
      {
        goto LABEL_6;
      }
    }

    v10 = 0;
LABEL_60:
    v16 = (v10 + 1);
LABEL_61:
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v5, &buf, v70, v16))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&buf, v70, v16);
    }

    v50 = v70[0];
    v70[0] = 0;
    if (v50)
    {
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v17 = *(a1 + 184);
  v70[0] = "WebFullScreenManager";
  v70[1] = 21;
  v70[2] = "exitFullScreenForElement";
  v70[3] = v17;
  v18 = MEMORY[0x1E696EBD0];
  do
  {
    v19 = *v18;
    if (v19)
    {
      goto LABEL_65;
    }

    v20 = *v18;
    atomic_compare_exchange_strong_explicit(v18, &v20, v19 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v20 != v19);
  v21 = WTF::Logger::messageHandlerObservers(a1);
  v22 = *(v21 + 12);
  if (v22)
  {
    v23 = *v21;
    v24 = *v21 + 8 * v22;
    do
    {
      v25 = *v23;
      LODWORD(buf) = 0;
      WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v70);
      LODWORD(v76) = 0;
      WTF::String::String(v77, "null");
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v71, &buf, 2uLL);
      (*(*v25 + 16))(v25, &WebKit2LogFullscreen, 0, v71);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71, v26);
      for (i = 24; i != -8; i -= 16)
      {
        v29 = *(&buf + i);
        *(&buf + i) = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v27);
        }
      }

      ++v23;
    }

    while (v23 != v24);
  }

  v30 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v3 = a3;
  if (*(v5 + 12))
  {
    WTF::Logger::LogSiteIdentifier::toString(&v73, v70);
    WTF::String::String(&v72, "null");
    *&buf = v73;
    v71[0] = v72;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v71, &v74);
    if (!v74)
    {
      goto LABEL_80;
    }

    v32 = v72;
    v72 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    v33 = v73;
    v73 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v31);
    }

    v34 = qword_1ED640AE0;
    v35 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      WTF::String::utf8();
      v37 = v71[0] ? v71[0] + 16 : 0;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v37;
      _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v35 = v71[0];
      v71[0] = 0;
      if (v35)
      {
        if (*v35 == 1)
        {
          v35 = WTF::fastFree(v35, v36);
        }

        else
        {
          --*v35;
        }
      }
    }

    if (WebKit2LogFullscreen)
    {
      v38 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v39 = *v38;
        if (v39)
        {
          break;
        }

        v40 = *v38;
        atomic_compare_exchange_strong_explicit(v38, &v40, v39 | 1, memory_order_acquire, memory_order_acquire);
        if (v40 == v39)
        {
          v41 = WTF::Logger::observers(v35);
          v42 = *(v41 + 12);
          if (v42)
          {
            v43 = *v41;
            v44 = *v41 + 8 * v42;
            do
            {
              v45 = *v43;
              LODWORD(buf) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v70);
              LODWORD(v76) = 0;
              WTF::String::String(v77, "null");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v71, &buf, 2uLL);
              (*(*v45 + 16))(v45, &WebKit2LogFullscreen, 0, v71);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71, v46);
              for (j = 24; j != -8; j -= 16)
              {
                v48 = *(&buf + j);
                *(&buf + j) = 0;
                if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v48, v36);
                }
              }

              ++v43;
            }

            while (v43 != v44);
          }

          v49 = 1;
          atomic_compare_exchange_strong_explicit(v38, &v49, 0, memory_order_release, memory_order_relaxed);
          v3 = a3;
          if (v49 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v50 = v74;
    v74 = 0;
    if (v50)
    {
LABEL_64:
      if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v36);
        if (!v5)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

LABEL_65:
    if (!v5)
    {
      goto LABEL_68;
    }
  }

LABEL_66:
  if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v5 + 8));
    (*(*v5 + 8))(v5);
  }

LABEL_68:
  WebKit::WebPage::removeReasonsToDisallowLayoutViewportHeightExpansion(*(a1 + 64), 1);
  if (*(a1 + 170) == 1)
  {
    ++*(a1 + 16);
    v51 = *v3;
    *v3 = 0;
    v52 = WTF::fastMalloc(0x20);
    *v52 = &unk_1F11235F8;
    v52[1] = a1;
    v52[2] = a1;
    v52[3] = v51;
    *&buf = v52;
    WebKit::WebFullScreenManager::willExitFullScreen(a1, &buf);
    if (buf)
    {
      (*(*buf + 8))(buf);
    }

    goto LABEL_76;
  }

  v53 = *(a1 + 64);
  v55 = *(v53 + 32);
  v54 = v53 + 32;
  ++*(a1 + 16);
  v56 = *v3;
  *v3 = 0;
  v57 = (*(v55 + 56))(v54);
  v59 = IPC::Encoder::operator new(0x238, v58);
  *v59 = 2023;
  *(v59 + 2) = 0;
  *(v59 + 3) = 0;
  *(v59 + 1) = v57;
  *(v59 + 68) = 0;
  *(v59 + 70) = 0;
  *(v59 + 69) = 0;
  IPC::Encoder::encodeHeader(v59);
  v70[0] = v59;
  v60 = WTF::fastMalloc(0x20);
  *v60 = &unk_1F1123620;
  v60[1] = a1;
  v60[2] = a1;
  v60[3] = v56;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_80:
    __break(0xC471u);
    JUMPOUT(0x19E19A358);
  }

  v61 = v60;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *&buf = v61;
  *(&buf + 1) = IdentifierInternal;
  (*(*v54 + 40))(v54, v70, &buf, 0);
  v64 = buf;
  *&buf = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = v70[0];
  v70[0] = 0;
  if (v65)
  {
    IPC::Encoder::~Encoder(v65, v63);
    bmalloc::api::tzoneFree(v67, v68);
  }

LABEL_76:
  *&buf = 0;
  return WebKit::WebFullScreenManager::setMainVideoElement(a1, &buf);
}

uint64_t WebKit::WebFullScreenManager::willExitFullScreen(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72) && (*(a1 + 96) & 1) != 0)
  {
    v4 = *(a1 + 176);
    atomic_fetch_add(v4 + 2, 1u);
    v5 = *(a1 + 184);
    v36 = "WebFullScreenManager";
    v37 = 21;
    v38 = "willExitFullScreen";
    v39 = v5;
    (*(**(a1 + 72) + 104))(&v40);
    v6 = *(*(a1 + 72) + 112);
    if (!v6 || !*(v6 + 24))
    {
      v17 = MEMORY[0x1E696EB90];
      goto LABEL_21;
    }

    v7 = *(v6 + 4);
    if (v7)
    {
      v8 = *(v6 + 40);
      v9 = *(v6 + 52);
      if (v9)
      {
LABEL_7:
        v10 = v9;
        v11 = *MEMORY[0x1E69E2B58];
        v12 = 16 * v10;
        do
        {
          v13 = *v8;
          if (*v8 == v11 || *(v13 + 24) == *(v11 + 24) && *(v13 + 32) == *(v11 + 32))
          {
            goto LABEL_20;
          }

          v8 += 2;
          v12 -= 16;
        }

        while (v12);
      }
    }

    else
    {
      v8 = (v6 + 32);
      v9 = v7 >> 5;
      if (v7 >> 5)
      {
        goto LABEL_7;
      }
    }

    v8 = 0;
LABEL_20:
    v17 = (v8 + 1);
LABEL_21:
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v4, &v36, &v40, v17))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&v36, &v40, v17);
    }

    v19 = v40;
    v40 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
      if (!v4)
      {
        goto LABEL_28;
      }
    }

    else if (!v4)
    {
      goto LABEL_28;
    }

    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

LABEL_28:
    WebKit::WebFullScreenManager::setPIPStandbyElement(a1, 0);
    *(a1 + 40) = WebKit::screenRectOfContents(*(*(a1 + 72) + 72), v20);
    *(a1 + 48) = v21;
    v22 = WebCore::Document::fullscreen(*(*(*(a1 + 72) + 48) + 8));
    if ((WebCore::DocumentFullscreen::willExitFullscreen(v22) & 1) == 0)
    {
      WebKit::WebFullScreenManager::close(a1);
      v35 = *a2;
      *a2 = 0;
      (*(*v35 + 16))(v35);
      return (*(*v35 + 8))(v35);
    }

    if (*(a1 + 96))
    {
      v23 = *(a1 + 64) + 32;
      ++*(a1 + 16);
      v24 = *a2;
      *a2 = 0;
      v25 = (*(*v23 + 56))(v23);
      v27 = IPC::Encoder::operator new(0x238, v26);
      *v27 = 2020;
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 1) = v25;
      *(v27 + 68) = 0;
      *(v27 + 70) = 0;
      *(v27 + 69) = 0;
      IPC::Encoder::encodeHeader(v27);
      v40 = v27;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, *(a1 + 88));
      IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v27, (a1 + 40));
      IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v27, (a1 + 24));
      v28 = WTF::fastMalloc(0x20);
      *v28 = &unk_1F1123670;
      *(v28 + 1) = a1;
      *(v28 + 2) = a1;
      *(v28 + 3) = v24;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        v29 = v28;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v36 = v29;
        v37 = IdentifierInternal;
        (*(*v23 + 40))(v23, &v40, &v36, 0);
        v32 = v36;
        v36 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        result = v40;
        v40 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v31);
          return bmalloc::api::tzoneFree(v33, v34);
        }

        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = 141;
    __break(0xC471u);
    return result;
  }

  v14 = *a2;
  *a2 = 0;
  (*(*v14 + 16))(v14);
  v15 = *(*v14 + 8);

  return v15(v14);
}

uint64_t WebKit::WebFullScreenManager::close(uint64_t this)
{
  if ((*(this + 169) & 1) == 0)
  {
    v1 = this;
    *(this + 169) = 1;
    v2 = *(this + 176);
    atomic_fetch_add(v2 + 2, 1u);
    v3 = *(this + 184);
    v4[0] = "WebFullScreenManager";
    v4[1] = 21;
    v4[2] = "close";
    v4[3] = v3;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v4))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v4);
    }

    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }

    WebKit::WebPage::closeFullScreen(*(v1 + 64));
    this = WebKit::WebFullScreenManager::invalidate(v1);
    *(v1 + 169) = 0;
  }

  return this;
}

uint64_t WebKit::WebFullScreenManager::didEnterFullScreen(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72))
  {
    v4 = *(a1 + 176);
    atomic_fetch_add(v4 + 2, 1u);
    v5 = *(a1 + 184);
    v32[0] = "WebFullScreenManager";
    v32[1] = 21;
    v32[2] = "didEnterFullScreen";
    v32[3] = v5;
    (*(**(a1 + 72) + 104))(&v31);
    v6 = *(*(a1 + 72) + 112);
    if (!v6 || !*(v6 + 24))
    {
      v14 = MEMORY[0x1E696EB90];
      goto LABEL_20;
    }

    v7 = *(v6 + 4);
    if (v7)
    {
      v8 = *(v6 + 40);
      v9 = *(v6 + 52);
      if (v9)
      {
LABEL_6:
        v10 = v9;
        v11 = *MEMORY[0x1E69E2B58];
        v12 = 16 * v10;
        do
        {
          v13 = *v8;
          if (*v8 == v11 || *(v13 + 24) == *(v11 + 24) && *(v13 + 32) == *(v11 + 32))
          {
            goto LABEL_19;
          }

          v8 += 2;
          v12 -= 16;
        }

        while (v12);
      }
    }

    else
    {
      v8 = (v6 + 32);
      v9 = v7 >> 5;
      if (v7 >> 5)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
LABEL_19:
    v14 = (v8 + 1);
LABEL_20:
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v4, v32, &v31, v14))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v32, &v31, v14);
    }

    v19 = v31;
    v31 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
      if (v4)
      {
LABEL_25:
        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }

    else if (v4)
    {
      goto LABEL_25;
    }

    v20 = *a2;
    *a2 = 0;
    v21 = (*(*v20 + 16))(v20, 1);
    (*(*v20 + 8))(v20);
    if ((v21 & 1) == 0)
    {
      return WebKit::WebFullScreenManager::close(a1);
    }

    v22 = WebKit::WebPage::playbackSessionManager(*(a1 + 64));
    v23 = *(v22 + 7);
    if (v23 && (v24 = WebKit::PlaybackSessionManager::mediaElementWithContextId(v22, v23)) != 0)
    {
      v25 = v24;
      *(v24 + 28) += 2;
      if (*(*(v24 + 104) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      WebKit::WebFullScreenManager::setPIPStandbyElement(a1, v26);
      result = WebKit::WebFullScreenManager::updateMainVideoElement(a1, v27, v28);
      if (*(v25 + 7) == 2)
      {
        return WebCore::Node::removedLastRef(v25);
      }

      else
      {
        *(v25 + 7) -= 2;
      }
    }

    else
    {
      WebKit::WebFullScreenManager::setPIPStandbyElement(a1, 0);
      return WebKit::WebFullScreenManager::updateMainVideoElement(a1, v29, v30);
    }

    return result;
  }

  v15 = *a2;
  *a2 = 0;
  (*(*v15 + 16))(v15, 0);
  v16 = *(*v15 + 8);

  return v16(v15);
}

uint64_t WebKit::WebFullScreenManager::didExitFullScreen(void *a1, uint64_t *a2)
{
  v4 = a1[8];
  if (*(v4 + 528) == 1)
  {
    *(v4 + 528) = 0;
    WebKit::WebPage::resetViewportDefaultConfiguration(v4, *(v4 + 88), *(v4 + 1576));
  }

  if (!a1[9])
  {
    v16 = *a2;
    *a2 = 0;
    (*(*v16 + 16))(v16);
    v17 = *(*v16 + 8);

    return v17(v16);
  }

  v5 = a1[22];
  atomic_fetch_add(v5 + 2, 1u);
  v6 = a1[23];
  v39 = "WebFullScreenManager";
  v40 = 21;
  v41 = "didExitFullScreen";
  v42 = v6;
  (*(*a1[9] + 104))(v37);
  v7 = *(a1[9] + 112);
  if (!v7 || !*(v7 + 24))
  {
    v15 = MEMORY[0x1E696EB90];
    goto LABEL_22;
  }

  v8 = *(v7 + 4);
  if (v8)
  {
    v9 = *(v7 + 40);
    v10 = *(v7 + 52);
    if (v10)
    {
LABEL_8:
      v11 = v10;
      v12 = *MEMORY[0x1E69E2B58];
      v13 = 16 * v11;
      do
      {
        v14 = *v9;
        if (*v9 == v12 || *(v14 + 24) == *(v12 + 24) && *(v14 + 32) == *(v12 + 32))
        {
          goto LABEL_21;
        }

        v9 += 2;
        v13 -= 16;
      }

      while (v13);
    }
  }

  else
  {
    v9 = (v7 + 32);
    v10 = v8 >> 5;
    if (v8 >> 5)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_21:
  v15 = (v9 + 1);
LABEL_22:
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v5, &v39, v37, v15))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&v39, v37, v15);
  }

  v20 = v37[0];
  v37[0] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
    if (v5)
    {
LABEL_27:
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        (*(*v5 + 8))(v5);
      }
    }
  }

  else if (v5)
  {
    goto LABEL_27;
  }

  v39 = 0;
  v40 = 0;
  WebCore::Page::setFullscreenInsets();
  WebCore::Page::setFullscreenAutoHideDuration();
  v21 = a1[9];
  v39 = 0;
  v40 = 0;
  if (v21)
  {
    while (1)
    {
      v22 = WebCore::Document::fullscreen(*(*(v21 + 48) + 8));
      if (WebCore::DocumentFullscreen::fullscreenElement(v22) != v21)
      {
        break;
      }

      v23 = HIDWORD(v40);
      if (HIDWORD(v40) == v40)
      {
        WTF::Vector<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Element&>(&v39, v21);
      }

      else
      {
        v28 = v39;
        *(v21 + 28) += 2;
        *&v28[8 * v23] = v21;
        HIDWORD(v40) = v23 + 1;
      }

      v24 = WebCore::Document::parentDocument(*(*(v21 + 48) + 8));
      if (!v24)
      {
        break;
      }

      v25 = v24;
      *(v24 + 7) += 2;
      v26 = WebCore::Document::fullscreen(v24);
      v27 = WebCore::DocumentFullscreen::fullscreenElement(v26);
      v21 = v27;
      if (*(v25 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v25);
        if (!v21)
        {
          break;
        }
      }

      else
      {
        *(v25 + 7) -= 2;
        if (!v27)
        {
          break;
        }
      }
    }
  }

  v29 = *a2;
  *a2 = 0;
  (*(*v29 + 16))(v29);
  (*(*v29 + 8))(v29);
  while (1)
  {
    v31 = HIDWORD(v40);
    if (!HIDWORD(v40))
    {
      break;
    }

    v32 = &v39[8 * HIDWORD(v40)];
    v33 = *(v32 - 1);
    *(v32 - 1) = 0;
    v34 = v31 - 1;
    WTF::VectorDestructor<true,WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::destruct(&v39[8 * v31 - 8], &v39[8 * v31]);
    HIDWORD(v40) = v34;
    WebCore::Element::scrollIntoViewIfNotVisible();
    if (v33)
    {
      if (*(v33 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v33);
      }

      else
      {
        *(v33 + 7) -= 2;
      }
    }
  }

  WebKit::WebFullScreenManager::clearElement(a1, v30);
  WebCore::Page::localMainFrame(&v38, *(a1[8] + 56));
  if (v38)
  {
    WebCore::LocalFrameView::forceLayout(*(v38 + 216));
    *v37 = xmmword_19E704010;
    WebCore::LocalFrameView::setScrollPosition();
    v36 = v38;
    v38 = 0;
    if (v36)
    {
      if (v36[4] == 1)
      {
        (*(*v36 + 8))(v36);
      }

      else
      {
        --v36[4];
      }
    }
  }

  return WTF::Vector<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v35);
}

uint64_t WebKit::WebFullScreenManager::setAnimatingFullScreen(uint64_t this, uint64_t a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    v4 = WebCore::Document::fullscreen(*(*(v2 + 48) + 8));

    return MEMORY[0x1EEE56EE0](v4, a2);
  }

  return this;
}

uint64_t WebKit::WebFullScreenManager::requestRestoreFullScreen(WTF::Logger *a1, uint64_t *a2)
{
  v68[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 9))
  {
    v3 = *a2;
    *a2 = 0;
    (*(*v3 + 16))(v3, 0);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  v6 = *(a1 + 10);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    v19 = *(a1 + 22);
    atomic_fetch_add((v19 + 8), 1u);
    v20 = *(a1 + 23);
    v61[0] = "WebFullScreenManager";
    v61[1] = 21;
    v61[2] = "requestRestoreFullScreen";
    v61[3] = v20;
    v21 = MEMORY[0x1E696EBD0];
    do
    {
      v22 = *v21;
      if (v22)
      {
        goto LABEL_64;
      }

      v23 = *v21;
      atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v23 != v22);
    v24 = WTF::Logger::messageHandlerObservers(a1);
    v25 = *(v24 + 12);
    if (v25)
    {
      v26 = *v24;
      v27 = *v24 + 8 * v25;
      do
      {
        v28 = *v26;
        LODWORD(buf) = 0;
        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v61);
        LODWORD(v67) = 0;
        WTF::String::String(v68, "no element to restore");
        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v62, &buf, 2uLL);
        (*(*v28 + 16))(v28, &WebKit2LogFullscreen, 0, v62);
        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v62, v29);
        for (i = 24; i != -8; i -= 16)
        {
          v32 = *(&buf + i);
          *(&buf + i) = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v30);
          }
        }

        ++v26;
      }

      while (v26 != v27);
    }

    v33 = 1;
    atomic_compare_exchange_strong_explicit(v21, &v33, 0, memory_order_release, memory_order_relaxed);
    if (v33 != 1)
    {
      WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
    }

    if ((*(v19 + 12) & 1) == 0)
    {
      goto LABEL_65;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v64, v61);
    WTF::String::String(&v63, "no element to restore");
    *&buf = v64;
    v62[0] = v63;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v62, &v65);
    if (!v65)
    {
      __break(0xC471u);
      return result;
    }

    v35 = v63;
    v63 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    v36 = v64;
    v64 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v34);
    }

    v37 = qword_1ED640AE0;
    v38 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      WTF::String::utf8();
      v40 = v62[0] ? v62[0] + 16 : 0;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v38 = v62[0];
      v62[0] = 0;
      if (v38)
      {
        if (*v38 == 1)
        {
          v38 = WTF::fastFree(v38, v39);
        }

        else
        {
          --*v38;
        }
      }
    }

    if (WebKit2LogFullscreen)
    {
      v41 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v42 = *v41;
        if (v42)
        {
          break;
        }

        v43 = *v41;
        atomic_compare_exchange_strong_explicit(v41, &v43, v42 | 1, memory_order_acquire, memory_order_acquire);
        if (v43 == v42)
        {
          v44 = WTF::Logger::observers(v38);
          v45 = *(v44 + 12);
          if (v45)
          {
            v46 = *v44;
            v47 = *v44 + 8 * v45;
            do
            {
              v48 = *v46;
              LODWORD(buf) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v61);
              LODWORD(v67) = 0;
              WTF::String::String(v68, "no element to restore");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v62, &buf, 2uLL);
              (*(*v48 + 16))(v48, &WebKit2LogFullscreen, 0, v62);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v62, v49);
              for (j = 24; j != -8; j -= 16)
              {
                v51 = *(&buf + j);
                *(&buf + j) = 0;
                if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v51, v39);
                }
              }

              ++v46;
            }

            while (v46 != v47);
          }

          v52 = 1;
          atomic_compare_exchange_strong_explicit(v41, &v52, 0, memory_order_release, memory_order_relaxed);
          if (v52 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v53 = v65;
    v65 = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, v39);
    }

LABEL_64:
    if (v19)
    {
LABEL_65:
      if (atomic_fetch_add((v19 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v19 + 8));
        (*(*v19 + 8))(v19);
      }
    }

    v54 = *a2;
    *a2 = 0;
    (*(*v54 + 16))(v54, 0);
    return (*(*v54 + 8))(v54);
  }

  v7[7] += 2;
  v8 = *(a1 + 22);
  atomic_fetch_add(v8 + 2, 1u);
  v9 = *(a1 + 23);
  *&buf = "WebFullScreenManager";
  *(&buf + 1) = 21;
  v67 = "requestRestoreFullScreen";
  v68[0] = v9;
  (*(*v7 + 104))(v61, v7);
  v10 = *(v7 + 14);
  if (v10 && *(v10 + 24))
  {
    v11 = *(v10 + 4);
    if (v11)
    {
      v12 = *(v10 + 40);
      v13 = *(v10 + 52);
      if (v13)
      {
LABEL_11:
        v14 = v13;
        v15 = *MEMORY[0x1E69E2B58];
        v16 = 16 * v14;
        do
        {
          v17 = *v12;
          if (*v12 == v15 || *(v17 + 24) == *(v15 + 24) && *(v17 + 32) == *(v15 + 32))
          {
            goto LABEL_70;
          }

          v12 += 2;
          v16 -= 16;
        }

        while (v16);
      }
    }

    else
    {
      v12 = (v10 + 32);
      v13 = v11 >> 5;
      if (v11 >> 5)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_70:
    v18 = (v12 + 1);
    goto LABEL_71;
  }

  v18 = MEMORY[0x1E696EB90];
LABEL_71:
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(v8, &buf, v61, v18))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(&buf, v61, v18);
  }

  v56 = v61[0];
  v61[0] = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v55);
  }

  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  LOBYTE(buf) = 0;
  LOBYTE(v67) = 0;
  WebCore::UserGestureIndicator::UserGestureIndicator();
  WebCore::Document::fullscreen(*(*(v7 + 6) + 8));
  v7[7] += 2;
  *&buf = v7;
  v57 = *a2;
  *a2 = 0;
  v58 = WTF::fastMalloc(0x10);
  *v58 = &unk_1F1123698;
  *(v58 + 1) = v57;
  v62[0] = v58;
  WebCore::DocumentFullscreen::requestFullscreen();
  v59 = v62[0];
  v62[0] = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = buf;
  *&buf = 0;
  if (v60)
  {
    if (*(v60 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v60);
    }

    else
    {
      *(v60 + 7) -= 2;
    }
  }

  result = MEMORY[0x19EB09070](v61);
  if (v7[7] == 2)
  {
    return WebCore::Node::removedLastRef(v7);
  }

  v7[7] -= 2;
  return result;
}

_DWORD *WebKit::WebFullScreenManager::requestExitFullScreen(WebKit::WebFullScreenManager *this)
{
  v92[2] = *MEMORY[0x1E69E9840];
  if (!*(this + 9))
  {
    v8 = *(this + 22);
    atomic_fetch_add((v8 + 8), 1u);
    v9 = *(this + 23);
    v82 = "WebFullScreenManager";
    v83 = 21;
    v84 = "requestExitFullScreen";
    v85 = v9;
    v10 = MEMORY[0x1E696EBD0];
    do
    {
      v11 = *v10;
      if (v11)
      {
        goto LABEL_56;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v12 != v11);
    v13 = WTF::Logger::messageHandlerObservers(this);
    v14 = *(v13 + 12);
    if (v14)
    {
      v15 = *v13;
      v16 = *v13 + 8 * v14;
      do
      {
        v17 = *v15;
        LODWORD(buf) = 0;
        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v82);
        LODWORD(v91) = 0;
        WTF::String::String(v92, "no element, closing");
        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, &buf, 2uLL);
        (*(*v17 + 16))(v17, &WebKit2LogFullscreen, 0, v86);
        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v18);
        for (i = 24; i != -8; i -= 16)
        {
          v21 = *(&buf + i);
          *(&buf + i) = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v19);
          }
        }

        ++v15;
      }

      while (v15 != v16);
    }

    v22 = 1;
    atomic_compare_exchange_strong_explicit(v10, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != 1)
    {
      WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
    }

    if ((*(v8 + 12) & 1) == 0)
    {
      goto LABEL_57;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v88, &v82);
    WTF::String::String(&v87, "no element, closing");
    *&buf = v88;
    v86[0] = v87;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v86, &v89);
    if (!v89)
    {
      __break(0xC471u);
      goto LABEL_124;
    }

    v24 = v87;
    v87 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    v25 = v88;
    v88 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v26 = qword_1ED640AE0;
    v27 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      WTF::String::utf8();
      v29 = v86[0] ? v86[0] + 16 : 0;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v27 = v86[0];
      v86[0] = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          v27 = WTF::fastFree(v27, v28);
        }

        else
        {
          --*v27;
        }
      }
    }

    if (WebKit2LogFullscreen)
    {
      v30 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v31 = *v30;
        if (v31)
        {
          break;
        }

        v32 = *v30;
        atomic_compare_exchange_strong_explicit(v30, &v32, v31 | 1, memory_order_acquire, memory_order_acquire);
        if (v32 == v31)
        {
          v33 = WTF::Logger::observers(v27);
          v34 = *(v33 + 12);
          if (v34)
          {
            v35 = *v33;
            v36 = *v33 + 8 * v34;
            do
            {
              v37 = *v35;
              LODWORD(buf) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v82);
              LODWORD(v91) = 0;
              WTF::String::String(v92, "no element, closing");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, &buf, 2uLL);
              (*(*v37 + 16))(v37, &WebKit2LogFullscreen, 0, v86);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v38);
              for (j = 24; j != -8; j -= 16)
              {
                v40 = *(&buf + j);
                *(&buf + j) = 0;
                if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v40, v28);
                }
              }

              ++v35;
            }

            while (v35 != v36);
          }

          v41 = 1;
          atomic_compare_exchange_strong_explicit(v30, &v41, 0, memory_order_release, memory_order_relaxed);
          if (v41 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v42 = v89;
    v89 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v28);
    }

LABEL_56:
    if (v8)
    {
LABEL_57:
      if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v8 + 8));
        (*(*v8 + 8))(v8);
      }
    }

    return WebKit::WebFullScreenManager::close(this);
  }

  v2 = WebKit::WebPage::localMainFrame(*(this + 8), &v81);
  if (!v81)
  {
    v3 = 0;
    goto LABEL_61;
  }

  v3 = *(v81 + 28);
  if (!v3)
  {
LABEL_61:
    v44 = 1;
    goto LABEL_63;
  }

  *(v3 + 7) += 2;
  v4 = WebCore::Document::fullscreen(v3);
  v2 = WebCore::DocumentFullscreen::fullscreenElement(v4);
  if (!v2)
  {
    v44 = 0;
LABEL_63:
    v45 = *(this + 22);
    atomic_fetch_add(v45 + 2, 1u);
    v46 = *(this + 23);
    v82 = "WebFullScreenManager";
    v83 = 21;
    v84 = "requestExitFullScreen";
    v85 = v46;
    v47 = MEMORY[0x1E696EBD0];
    do
    {
      v48 = *v47;
      if (v48)
      {
        goto LABEL_108;
      }

      v49 = *v47;
      atomic_compare_exchange_strong_explicit(v47, &v49, v48 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v49 != v48);
    v80 = v45;
    v50 = WTF::Logger::messageHandlerObservers(v2);
    v51 = *(v50 + 12);
    if (v51)
    {
      v52 = *v50;
      v53 = *v50 + 8 * v51;
      do
      {
        v54 = *v52;
        LODWORD(buf) = 0;
        WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v82);
        LODWORD(v91) = 0;
        WTF::String::String(v92, "top document not in fullscreen, closing");
        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, &buf, 2uLL);
        (*(*v54 + 16))(v54, &WebKit2LogFullscreen, 0, v86);
        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v55);
        for (k = 24; k != -8; k -= 16)
        {
          v58 = *(&buf + k);
          *(&buf + k) = 0;
          if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v58, v56);
          }
        }

        ++v52;
      }

      while (v52 != v53);
    }

    v59 = 1;
    atomic_compare_exchange_strong_explicit(v47, &v59, 0, memory_order_release, memory_order_relaxed);
    if (v59 != 1)
    {
      WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
    }

    v45 = v80;
    if ((v80[3] & 1) == 0)
    {
      goto LABEL_109;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v88, &v82);
    WTF::String::String(&v87, "top document not in fullscreen, closing");
    *&buf = v88;
    v86[0] = v87;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v86, &v89);
    if (v89)
    {
      v61 = v87;
      v87 = 0;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v60);
      }

      v62 = v88;
      v88 = 0;
      if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v60);
      }

      v63 = qword_1ED640AE0;
      v64 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
      if (v64)
      {
        WTF::String::utf8();
        v66 = v86[0] ? v86[0] + 16 : 0;
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v66;
        _os_log_impl(&dword_19D52D000, v63, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
        v64 = v86[0];
        v86[0] = 0;
        if (v64)
        {
          if (*v64 == 1)
          {
            v64 = WTF::fastFree(v64, v65);
          }

          else
          {
            --*v64;
          }
        }
      }

      if (WebKit2LogFullscreen)
      {
        v67 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v68 = *v67;
          if (v68)
          {
            break;
          }

          v69 = *v67;
          atomic_compare_exchange_strong_explicit(v67, &v69, v68 | 1, memory_order_acquire, memory_order_acquire);
          if (v69 == v68)
          {
            v70 = WTF::Logger::observers(v64);
            v71 = *(v70 + 12);
            if (v71)
            {
              v72 = *v70;
              v73 = *v70 + 8 * v71;
              do
              {
                v74 = *v72;
                LODWORD(buf) = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v82);
                LODWORD(v91) = 0;
                WTF::String::String(v92, "top document not in fullscreen, closing");
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, &buf, 2uLL);
                (*(*v74 + 16))(v74, &WebKit2LogFullscreen, 0, v86);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v75);
                for (m = 24; m != -8; m -= 16)
                {
                  v77 = *(&buf + m);
                  *(&buf + m) = 0;
                  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v77, v65);
                  }
                }

                ++v72;
              }

              while (v72 != v73);
            }

            v78 = 1;
            atomic_compare_exchange_strong_explicit(v67, &v78, 0, memory_order_release, memory_order_relaxed);
            v45 = v80;
            if (v78 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v79 = v89;
      v89 = 0;
      if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v65);
      }

LABEL_108:
      if (!v45)
      {
LABEL_111:
        WebKit::WebFullScreenManager::close(this);
        if (v44)
        {
          goto LABEL_114;
        }

        goto LABEL_112;
      }

LABEL_109:
      if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v45 + 2);
        (*(*v45 + 8))(v45);
      }

      goto LABEL_111;
    }

    __break(0xC471u);
LABEL_124:
    JUMPOUT(0x19E19C304);
  }

  v5 = *(this + 22);
  atomic_fetch_add(v5 + 2, 1u);
  v6 = *(this + 23);
  *&buf = "WebFullScreenManager";
  *(&buf + 1) = 21;
  v91 = "requestExitFullScreen";
  v92[0] = v6;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v5, &WebKit2LogFullscreen, 0, &buf))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, &buf);
  }

  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v7 = WebCore::Document::fullscreen(*(*(*(this + 9) + 48) + 8));
  WebCore::DocumentFullscreen::fullyExitFullscreen(v7);
LABEL_112:
  if (*(v3 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v3);
  }

  else
  {
    *(v3 + 7) -= 2;
  }

LABEL_114:
  result = v81;
  v81 = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

uint64_t WebKit::WebFullScreenManager::handleEvent(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3 && (*(v3 + 22) & 2) != 0 && (*(v3 + 32) & 8) != 0)
  {
    v4 = result;
    *(v3 + 28) += 2;
    v5 = *(result + 72);
    if (v5)
    {
      v6 = *(*(v5 + 48) + 8);
      *(v6 + 7) += 2;
      if ((v6 + 208) == a2)
      {
        v7 = WebCore::Document::fullscreen(v6);
        result = WebCore::DocumentFullscreen::fullscreenElement(v7);
        if (result)
        {
          if (v3 == *(v4 + 9))
          {
            result = WebKit::WebFullScreenManager::updateMainVideoElement(v4, v8, v9);
          }

          else
          {
            v10 = *(v4 + 14);
            if (v10 && v3 == *(v10 + 8))
            {
              if ((*(v3 + 32) & 0x10) == 0 || *(*(v3 + 104) + 24) != *(*MEMORY[0x1E69E2D10] + 24))
              {
                result = 96;
                __break(0xC471u);
                return result;
              }

              if (WebCore::HTMLMediaElement::paused(v3) && (WebCore::HTMLMediaElement::seeking(v3) & 1) == 0)
              {
                result = WTF::RunLoop::TimerBase::start();
              }

              else
              {
                result = WebKit::WebFullScreenManager::endTextRecognitionForMainVideoIfNeeded(v4);
              }
            }
          }
        }
      }

      if (*(v6 + 7) == 2)
      {
        result = WebCore::Node::removedLastRef(v6);
      }

      else
      {
        *(v6 + 7) -= 2;
      }
    }

    if (*(v3 + 28) == 2)
    {

      return WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 28) -= 2;
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebFullScreenManager::endTextRecognitionForMainVideoIfNeeded(WebKit::WebPage **this)
{
  result = WTF::RunLoop::TimerBase::stop((this + 15));
  if (*(this + 168) == 1)
  {
    result = WebKit::WebPage::cancelTextRecognitionForVideoInElementFullScreen(this[8]);
    *(this + 168) = 0;
  }

  return result;
}

void WebKit::WebFullScreenManager::enterFullScreenForOwnerElements(int a1, void *a2, uint64_t *a3)
{
  v4 = WebKit::WebFrame::webFrame(a2, 1);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(v5 + 40);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = v7[4];
      v27 = 0;
      v28 = 0;
      v7[4] = v8 + 2;
      v9 = v7;
      do
      {
        v10 = *(v9 + 14);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            *(v11 + 28) += 2;
            v12 = HIDWORD(v28);
            if (HIDWORD(v28) == v28)
            {
              if (HIDWORD(v28) + (HIDWORD(v28) >> 1) <= HIDWORD(v28) + 1)
              {
                v13 = HIDWORD(v28) + 1;
              }

              else
              {
                v13 = HIDWORD(v28) + (HIDWORD(v28) >> 1);
              }

              if (v13 <= 0x10)
              {
                v14 = 16;
              }

              else
              {
                v14 = v13;
              }

              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v27, v14);
              v12 = HIDWORD(v28);
              v15 = (v27 + 8 * HIDWORD(v28));
            }

            else
            {
              v15 = (v27 + 8 * HIDWORD(v28));
            }

            *v15 = v11;
            HIDWORD(v28) = v12 + 1;
          }
        }

        v16 = WebCore::FrameTree::parent((v9 + 10));
        v18 = v16;
        if (v16)
        {
          ++*(v16 + 16);
        }

        if (v9[4] == 1)
        {
          (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }

        v9 = v18;
      }

      while (v18);
      if (HIDWORD(v28))
      {
        v19 = 8 * HIDWORD(v28);
        v20 = v27 - 8;
        do
        {
          v21 = *(v20 + v19);
          *(v21 + 7) += 2;
          WebCore::DocumentFullscreen::elementEnterFullscreen(v21, v17);
          if (*(v21 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v21);
          }

          else
          {
            *(v21 + 7) -= 2;
          }

          v19 -= 8;
        }

        while (v19);
      }

      v22 = *a3;
      *a3 = 0;
      (*(*v22 + 16))(v22);
      (*(*v22 + 8))(v22);
      WTF::Vector<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v23);
      if (v7[4] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[4];
      }
    }

    else
    {
      v24 = *a3;
      *a3 = 0;
      (*(*v24 + 16))(v24);
      (*(*v24 + 8))(v24);
    }

    CFRelease(*(v5 + 8));
  }

  else
  {
    v25 = *a3;
    *a3 = 0;
    (*(*v25 + 16))(v25);
    v26 = *(*v25 + 8);

    v26(v25);
  }
}

uint64_t WebKit::WebFullScreenManager::exitFullScreenInMainFrame(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 64) + 56);
  if (v3 && (v4 = *(v3 + 176)) != 0)
  {
    ++v4[4];
    WebCore::DocumentFullscreen::finishExitFullscreen();
    v5 = *a2;
    *a2 = 0;
    (*(*v5 + 16))(v5);
    result = (*(*v5 + 8))(v5);
    if (v4[4] != 1)
    {
      --v4[4];
      return result;
    }

    v8 = *(*v4 + 8);
    v9 = v4;
  }

  else
  {
    v7 = *a2;
    *a2 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);
    v9 = v7;
  }

  return v8(v9);
}

void WebKit::GPUProcessConnection::create(atomic_ullong **a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = WTF::fastMalloc(0xD0);
  *a2 = WebKit::GPUProcessConnection::GPUProcessConnection(v4, a1);
  v5 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "GPUProcessConnection::create - %p", &v6, 0xCu);
  }
}

uint64_t WebKit::GPUProcessConnection::GPUProcessConnection(uint64_t a1, atomic_ullong **a2)
{
  *(a1 + 24) = 3;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1122FC8;
  *(a1 + 8) = 0;
  v4 = *a2;
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v13 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v13, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v5)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_4:
  *(a1 + 32) = v4;
  IPC::MessageReceiverMap::MessageReceiverMap((a1 + 40));
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 56) = IdentifierInternal;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v7 = *a2;
  v8 = WTF::RunLoop::currentSingleton(IdentifierInternal);
  v9 = IPC::Connection::open(v7, a1, v8);
  v11 = WebKit::WebProcess::singleton(v9, v10);
  WebKit::WebProcess::shouldUseRemoteRenderingFor(v11, 7);
  return a1;
}

void WebKit::GPUProcessConnection::~GPUProcessConnection(WebKit::GPUProcessConnection *this)
{
  *this = &unk_1F1122FC8;
  IPC::Connection::invalidate(*(this + 4));
  v3 = *(this + 17);
  if (v3)
  {
    (**v3)(*(this + 17));
    WebKit::RemoteAudioSourceProviderManager::stopListeningForIPC(v3);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v6);
  }

  std::unique_ptr<WebKit::SampleBufferDisplayLayerManager>::reset[abi:sn200100](this + 15, 0);
  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  IPC::MessageReceiverMap::~MessageReceiverMap((this + 40), v7);
  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v9);
}

{
  WebKit::GPUProcessConnection::~GPUProcessConnection(this);
  if (atomic_load((v1 + 16)))
  {
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
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

    WTF::fastFree(v1, v2);
  }
}

atomic_ullong *WebKit::GPUProcessConnection::didBecomeUnresponsive(atomic_ullong *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = this;
    v3 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v3);
    this = v4;
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  if (*(v2 + 45) == this)
  {

    return WebKit::WebProcess::gpuProcessConnectionDidBecomeUnresponsive(v2);
  }

  return this;
}

uint64_t WebKit::GPUProcessConnection::waitForDidInitialize(WebKit::GPUProcessConnection *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(this + 64))
  {
    goto LABEL_19;
  }

  v2 = *(this + 4);
  WTF::ApproximateTime::now(this);
  v4 = IPC::Connection::waitForMessage(v2, 0x38u, 0, 0, v15, v3 + 3.0);
  if (!v15[8])
  {
    v5 = atomic_load((v2 + 33));
    if (v5)
    {
      v6 = *(v2 + 8);
      if (v6)
      {
        v4 = (**v6)(*(v2 + 8));
      }

      if (v15[8])
      {
LABEL_21:
        mpark::throw_bad_variant_access(v4);
      }

      (*(*v6 + 32))(v6, v2, *v15);
      (*(*v6 + 8))(v6);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v15[8] && (v8 = *v15, *v15 = 0, v8))
    {
      IPC::Decoder::~Decoder(v8);
      bmalloc::api::tzoneFree(v11, v12);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else if (v7)
    {
      goto LABEL_15;
    }

LABEL_19:
    v10 = atomic_load((*(this + 4) + 33));
    return v10 & 1;
  }

  if (v15[8] != 1)
  {
    goto LABEL_21;
  }

  if (!v15[0])
  {
    goto LABEL_19;
  }

LABEL_15:
  v9 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v14 = IPC::errorAsString();
    *v15 = 134218242;
    *&v15[4] = this;
    v16 = 2082;
    v17 = v14;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - GPUProcessConnection::waitForDidInitialize - failed, error:%{public}s", v15, 0x16u);
  }

  IPC::Connection::invalidate(*(this + 4));
  v10 = 0;
  *(this + 64) = 1;
  return v10 & 1;
}

uint64_t WebKit::GPUProcessConnection::sharedResourceCache@<X0>(uint64_t this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = this;
  if (!*(this + 72))
  {
    v5 = WebKit::RemoteSharedResourceCacheProxy::operator new(0x10, a2);
    *(v5 + 8) = 1;
    *v5 = &unk_1F1123028;
    this = *(v3 + 72);
    *(v3 + 72) = v5;
    if (this)
    {
      if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (this + 8));
        this = (*(*this + 8))(this);
      }
    }
  }

  v6 = *(v3 + 72);
  atomic_fetch_add((v6 + 8), 1u);
  *a3 = v6;
  return this;
}

atomic_uchar **WebKit::GPUProcessConnection::didClose(WebKit::GPUProcessConnection *this, IPC::Connection *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - GPUProcessConnection::didClose", buf, 0xCu);
  }

  v5 = (this + 24);
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
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v61 = WebKit::WebProcess::operator new(0x370, v4);
    v8 = WebKit::WebProcess::WebProcess(v61);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  result = WebKit::WebProcess::gpuProcessConnectionClosed(v8, v4);
  while (1)
  {
    v11 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v12 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_15;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_15:
  v13 = 0;
  v62 = 0;
  v63 = 0;
  atomic_compare_exchange_strong_explicit(this + 200, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    result = MEMORY[0x19EB01E30](this + 200);
  }

  *buf = 0uLL;
  v14 = *(this + 23);
  if (!v14)
  {
    v22 = 0;
    LODWORD(v15) = 0;
LABEL_34:
    v23 = 0;
    goto LABEL_35;
  }

  v15 = *(v14 - 12);
  if (!v15)
  {
    v22 = 0;
    goto LABEL_34;
  }

  if (v15 >> 29)
  {
    __break(0xC471u);
    return result;
  }

  v16 = WTF::fastMalloc((8 * v15));
  *&buf[8] = v15;
  *buf = v16;
  v17 = *(this + 23);
  if (v17 && *(v17 - 12))
  {
    v18 = *(v17 - 4);
    if (v18)
    {
      v19 = 16 * v18;
      v20 = *(this + 23);
      while (*v20 == -1 || *v20 == 0)
      {
        v20 += 2;
        v19 -= 16;
        if (!v19)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v20 = *(this + 23);
    }

    v47 = (v17 + 16 * v18);
    if (v47 == v20)
    {
LABEL_101:
      v23 = 0;
      v22 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v48 = 0;
        v50 = *v20;
        v49 = v20[1];
        atomic_compare_exchange_strong_explicit(*v20, &v48, 1u, memory_order_acquire, memory_order_acquire);
        if (v48)
        {
          v57 = v49;
          MEMORY[0x19EB01E30](v50);
          v49 = v57;
        }

        if (*(v50 + 24))
        {
          ++*(v50 + 8);
        }

        else
        {
          v49 = 0;
        }

        v51 = 1;
        atomic_compare_exchange_strong_explicit(v50, &v51, 0, memory_order_release, memory_order_relaxed);
        if (v51 == 1)
        {
          if (!v49)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v58 = v50;
          v59 = v49;
          WTF::Lock::unlockSlow(v58);
          v49 = v59;
          if (!v59)
          {
LABEL_92:
            v23 = 1;
            goto LABEL_93;
          }
        }

        v64 = v49;
        LODWORD(v52) = *&buf[12];
        if (*&buf[12] == *&buf[8])
        {
          v53 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(buf, *&buf[12] + 1, &v64);
          v52 = *&buf[12];
          v54 = *buf;
          v55 = *v53;
          *v53 = 0;
          *(v54 + 8 * v52) = v55;
        }

        else
        {
          v64 = 0;
          *(*buf + 8 * *&buf[12]) = v49;
        }

        *&buf[12] = v52 + 1;
        v56 = v64;
        v64 = 0;
        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        do
        {
LABEL_93:
          v20 += 2;
          if (v20 == v47)
          {
            goto LABEL_100;
          }
        }

        while (*v20 == -1 || *v20 == 0);
      }

      while (v20 != v47);
LABEL_100:
      LODWORD(v15) = *&buf[8];
      v22 = *&buf[12];
    }

    if (v15 <= v22)
    {
      goto LABEL_35;
    }

    v16 = *buf;
    if (v22)
    {
      *buf = WTF::fastRealloc(*buf, (8 * v22));
      LODWORD(v15) = v22;
      goto LABEL_35;
    }

    if (!*buf)
    {
      v22 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v23 = 0;
  }

  *buf = 0;
  WTF::fastFree(v16, v10);
  v22 = 0;
  LODWORD(v15) = 0;
LABEL_35:
  v24 = v62;
  if (HIDWORD(v63))
  {
    v25 = 8 * HIDWORD(v63);
    v26 = v62;
    do
    {
      v27 = *v26;
      *v26 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v26 = (v26 + 8);
      v25 -= 8;
    }

    while (v25);
  }

  if (v24)
  {
    WTF::fastFree(v24, v10);
  }

  v28 = *buf;
  *buf = 0uLL;
  v62 = v28;
  v63 = __PAIR64__(v22, v15);
  WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v10);
  v30 = *(this + 23);
  if ((v23 & 1) == 0)
  {
LABEL_63:
    *(this + 48) = 0;
    if (!v30)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (!v30)
  {
    goto LABEL_61;
  }

  v31 = *(v30 - 4);
  if (!v31)
  {
    goto LABEL_56;
  }

  v32 = 0;
  v33 = (v30 + 16 * v31 - 16);
  do
  {
    if (*v33 != -1 && *v33 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v33))
    {
      v34 = *v33;
      *v33 = 0;
      if (v34)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v34, v29);
      }

      *v33 = -1;
      ++v32;
    }

    v33 -= 2;
    --v31;
  }

  while (v31);
  v30 = *(this + 23);
  if (v32)
  {
    v35 = *(v30 - 12) - v32;
    *(v30 - 16) += v32;
    *(v30 - 12) = v35;
    goto LABEL_56;
  }

  if (!v30)
  {
LABEL_61:
    LODWORD(v30) = 0;
    *(this + 48) = 0;
    goto LABEL_65;
  }

LABEL_56:
  v36 = *(v30 - 4);
  if (6 * *(v30 - 12) < v36 && v36 > 8)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::shrinkToBestSize(this + 23);
    v30 = *(this + 23);
    goto LABEL_63;
  }

  *(this + 48) = 0;
LABEL_64:
  LODWORD(v30) = *(v30 - 12);
  if (v30 > 0x7FFFFFFE)
  {
    v38 = -2;
    goto LABEL_67;
  }

LABEL_65:
  v38 = 2 * v30;
LABEL_67:
  *(this + 49) = v38;
  v39 = 1;
  atomic_compare_exchange_strong_explicit(this + 200, &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((this + 200));
  }

  if (HIDWORD(v63))
  {
    v40 = v62;
    v41 = 8 * HIDWORD(v63);
    do
    {
      v42 = *v40;
      v40 = (v40 + 8);
      (*(*v42 + 48))(v42, this);
      v41 -= 8;
    }

    while (v41);
    WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v43);
    if (!this)
    {
      return WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::clear(184, v44);
    }
  }

  else
  {
    WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v29);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(this + 3, v44);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::clear(this + 184, v45);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(this + 3, v46);
}

atomic_uchar **WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::clear(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = (a1 + 16);
  atomic_compare_exchange_strong_explicit((a1 + 16), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  result = *a1;
  if (*a1)
  {
    *a1 = 0;
    result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(result, a2);
    v6 = *a1;
    *(a1 + 8) = 0;
    if (v6)
    {
      LODWORD(v6) = *(v6 - 3);
      if (v6 > 0x7FFFFFFE)
      {
        v7 = -2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
    *(a1 + 8) = 0;
  }

  v7 = 2 * v6;
LABEL_9:
  *(a1 + 12) = v7;
  v8 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

uint64_t WebKit::GPUProcessConnection::sampleBufferDisplayLayerManager(WebKit::GPUProcessConnection *this, void *a2)
{
  v4 = (this + 120);
  result = *(this + 15);
  if (!result)
  {
    v5 = WebKit::SampleBufferDisplayLayerManager::operator new(0x20, a2);
    *v5 = 0;
    *(v5 + 1) = this;
    v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(this + 3);
    *(v5 + 2) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
    *(v5 + 3) = 0;
    if (*(this + 15))
    {
      result = 1469;
      __break(0xC471u);
    }

    else
    {
      std::unique_ptr<WebKit::SampleBufferDisplayLayerManager>::reset[abi:sn200100](v4, v5);
      return *v4;
    }
  }

  return result;
}

atomic_uchar *WebKit::GPUProcessConnection::resetAudioMediaStreamTrackRendererInternalUnit(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::audioMediaStreamTrackRendererInternalUnitManager(v3, a2);

  return WebKit::AudioMediaStreamTrackRendererInternalUnitManager::reset(v4, a2);
}

uint64_t WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(WebKit::GPUProcessConnection *this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    v1 = WTF::fastMalloc(0x10);
    *v1 = 1;
    WebKit::RemoteVideoFrameObjectHeapProxyProcessor::create(this, (v1 + 8));
    v3 = *(this + 16);
    *(this + 16) = v1;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v3);
      return *(this + 16);
    }
  }

  return v1;
}

WebKit::WebProcess *WebKit::GPUProcessConnection::protectedMediaPlayerManager@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a1);
    result = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = result;
  }

  v5 = *(result + 51);
  while (1)
  {
    v6 = *(v5 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(v5 + 8);
    atomic_compare_exchange_strong_explicit((v5 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 8));
LABEL_8:
  *a2 = v5;
  return result;
}

void *WebKit::GPUProcessConnection::audioSourceProviderManager(WebKit::GPUProcessConnection *this)
{
  v1 = *(this + 17);
  if (!v1)
  {
    v1 = WTF::fastMalloc(0x28);
    *v1 = &unk_1F1129D98;
    v1[1] = 3;
    WTF::WorkQueue::create();
    v1[3] = 0;
    v1[4] = 0;
    v3 = *(this + 17);
    *(this + 17) = v1;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      return *(this + 17);
    }
  }

  return v1;
}

uint64_t WebKit::GPUProcessConnection::dispatchMessage(WebKit::GPUProcessConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 25);
  if (v5 >= 0x107F)
  {
    v5 = 4223;
  }

  v6 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v5 + 2]);
  if (v6 > 136)
  {
    if (v6 == 137)
    {
      v23 = WebKit::GPUProcessConnection::sampleBufferDisplayLayerManager(this, a2);
      WebKit::SampleBufferDisplayLayerManager::ref(v23, v24);
      WebKit::SampleBufferDisplayLayerManager::didReceiveLayerMessage(v23, a2, a3);
      WebKit::SampleBufferDisplayLayerManager::deref(v23);
      return 1;
    }

    if (v6 == 148)
    {
      {
        v9 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v27 = WebKit::WebProcess::operator new(0x370, a2);
        v9 = WebKit::WebProcess::WebProcess(v27);
        WebKit::WebProcess::singleton(void)::process = v9;
      }

      v10 = WebKit::WebProcess::supplement<WebKit::UserMediaCaptureManager>(v9);
      if (v10)
      {
        v11 = v10;
        if (!*(v10 + 4))
        {
          goto LABEL_52;
        }

        WebKit::UserMediaCaptureManager::didReceiveMessage(v10, a2, a3);
        if (!*(v11 + 4))
        {
          __break(0xC471u);
          JUMPOUT(0x19E19DA74);
        }
      }

      return 1;
    }
  }

  else
  {
    if (v6 == 24)
    {
      {
        v18 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v28 = WebKit::WebProcess::operator new(0x370, a2);
        v18 = WebKit::WebProcess::WebProcess(v28);
        WebKit::WebProcess::singleton(void)::process = v18;
      }

      v19 = *(v18 + 51);
      v20 = v19 + 1;
      while (1)
      {
        v21 = *v20;
        if ((*v20 & 1) == 0)
        {
          break;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v22 == v21)
        {
          goto LABEL_35;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_35:
      WebKit::RemoteMediaPlayerManager::didReceivePlayerMessage(v19, a2, a3);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v19 + 1, v25);
      return 1;
    }

    if (v6 == 68)
    {
      {
        v7 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v26 = WebKit::WebProcess::operator new(0x370, a2);
        v7 = WebKit::WebProcess::WebProcess(v26);
        WebKit::WebProcess::singleton(void)::process = v7;
      }

      v8 = WebKit::WebProcess::supplement<WebKit::RemoteCDMFactory>(v7);
      WebKit::RemoteCDMFactory::ref(v8);
      WebKit::RemoteCDMFactory::didReceiveSessionMessage(v8, a2, a3);
      if (!*(*(v8 + 3) + 8))
      {
LABEL_52:
        __break(0xC471u);
        JUMPOUT(0x19E19DA00);
      }

      return 1;
    }
  }

  if (IPC::MessageReceiverMap::dispatchMessage((this + 40), a2, a3))
  {
    return 1;
  }

  result = 0;
  v13 = *(a3 + 25);
  if (v13 >= 0x107F)
  {
    v13 = 4223;
  }

  v14 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v13 + 2]);
  if (v14 > 57)
  {
    if (v14 != 142)
    {
      if (v14 != 110)
      {
        if (v14 != 58)
        {
          return result;
        }

        v15 = qword_1ED640D38;
        if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        v33 = 0;
        v16 = "The RemoteAudioSession object has beed destroyed";
        v17 = &v33;
        goto LABEL_48;
      }

      v15 = qword_1ED640D38;
      if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
      {
        v29 = 0;
        v16 = "The RemoteRemoteCommandListener object has beed destroyed";
        v17 = &v29;
        goto LABEL_48;
      }

      return 1;
    }

    v15 = qword_1ED640D38;
    if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v31 = 0;
    v16 = "The SourceBufferPrivateRemote object has beed destroyed";
    v17 = &v31;
LABEL_48:
    _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    return 1;
  }

  if (v14 == 25)
  {
    v15 = qword_1ED640D38;
    if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "The MediaSourcePrivateRemote object has beed destroyed";
      v17 = buf;
      goto LABEL_48;
    }

    return 1;
  }

  if (v14 == 56)
  {
    v15 = qword_1ED640D38;
    if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v30 = 0;
    v16 = "The RemoteAudioHardwareListener object has beed destroyed";
    v17 = &v30;
    goto LABEL_48;
  }

  return result;
}

atomic_uchar **WebKit::GPUProcessConnection::didInitialize(uint64_t a1, _BYTE *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2[40])
  {
    *(a1 + 64) = 1;
    v4 = qword_1ED6416A0;
    v5 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *v17 = 134217984;
      *&v17[4] = a1;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessConnection::didInitialize", v17, 0xCu);
    }

    v7 = WebKit::WebProcess::singleton(v5, v6);
    v9 = WebKit::WebProcess::libWebRTCCodecs(v7, v8);
    if ((a2[40] & 1) == 0 || (*(v9 + 122) = a2[36], v11 = WebKit::WebProcess::singleton(v9, v10), WebKit::WebProcess::protectedLibWebRTCCodecs(v11, v12, v17), (a2[40] & 1) == 0))
    {
      __break(1u);
    }

    result = WebKit::LibWebRTCCodecs::setHasAV1HardwareDecoder(*v17, a2[37]);
    v15 = *v17;
    *v17 = 0;
    if (v15)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v15 + 8), v14);
    }
  }

  else
  {
    v16 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
    {
      *v17 = 134217984;
      *&v17[4] = a1;
      _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "%p - GPUProcessConnection::didInitialize - failed", v17, 0xCu);
    }

    result = IPC::Connection::invalidate(*(a1 + 32));
    *(a1 + 64) = 1;
  }

  return result;
}

uint64_t WebKit::GPUProcessConnection::didReceiveRemoteCommand(WebCore::PlatformMediaSessionManager *a1, uint64_t a2, uint64_t a3)
{
  v5 = WebCore::PlatformMediaSessionManager::singleton(a1);

  return MEMORY[0x1EEE597C8](v5, a2, a3);
}

IPC::Encoder *WebKit::GPUProcessConnection::createVisibilityPropagationContextForPage(WebKit::GPUProcessConnection *this, WebKit::WebPage *a2)
{
  v2 = *(this + 4);
  v3 = *(a2 + 229);
  v5 = *(a2 + 6);
  v6 = v3;
  v7[0] = &v6;
  v7[1] = &v5;
  canShowWhileLocked = WebKit::WebPage::canShowWhileLocked(a2);
  return IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage>(v2, v7);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 43;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage::encode<IPC::Encoder>(a2, v4);
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

IPC::Encoder *WebKit::GPUProcessConnection::destroyVisibilityPropagationContextForPage(WebKit::GPUProcessConnection *this, WebKit::WebPage *a2)
{
  v2 = *(this + 4);
  v3 = *(a2 + 229);
  v5 = *(a2 + 6);
  v6 = v3;
  v7[0] = &v6;
  v7[1] = &v5;
  return IPC::Connection::send<Messages::GPUConnectionToWebProcess::DestroyVisibilityPropagationContextForPage>(v2, v7);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUConnectionToWebProcess::DestroyVisibilityPropagationContextForPage>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 44;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::GPUConnectionToWebProcess::DestroyVisibilityPropagationContextForPage::encode<IPC::Encoder>(a2, v4);
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

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::ConfigureLoggingChannel>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 37;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::GPUConnectionToWebProcess::ConfigureLoggingChannel::encode<IPC::Encoder>(a2, v10);
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

IPC::Encoder *WebKit::GPUProcessConnection::updateMediaConfiguration(WebKit::GPUProcessConnection *this, int a2)
{
  v4 = WebCore::SystemBatteryStatusTestingOverrides::singleton(this);
  v5 = *(v4 + 1);
  if ((v5 & 0x100) != 0 && *(this + 145))
  {
    if (*(this + 144) != v5)
    {
      goto LABEL_11;
    }
  }

  else if (*(this + 145) != (v5 & 0x100) >> 8)
  {
    goto LABEL_11;
  }

  v4 = WebCore::SystemBatteryStatusTestingOverrides::singleton(v4);
  v6 = *v4;
  if ((*v4 & 0x100) != 0 && *(this + 147))
  {
    if (*(this + 146) == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(this + 147) != (v6 & 0x100) >> 8)
  {
LABEL_11:
    a2 = 1;
  }

LABEL_12:
  result = WebCore::VP9TestingOverrides::singleton(v4);
  v8 = *result;
  if ((*result & 0x100) != 0 && *(this + 149))
  {
    if (*(this + 148) != v8)
    {
      goto LABEL_28;
    }
  }

  else if (*(this + 149) != (v8 & 0x100) >> 8)
  {
    goto LABEL_28;
  }

  result = WebCore::VP9TestingOverrides::singleton(result);
  v9 = *(result + 1);
  if ((v9 & 0x100) != 0 && *(this + 151))
  {
    if (*(this + 150) != v9)
    {
      goto LABEL_28;
    }
  }

  else if (*(this + 151) != (v9 & 0x100) >> 8)
  {
    goto LABEL_28;
  }

  result = WebCore::VP9TestingOverrides::singleton(result);
  v10 = *(result + 32);
  v11 = *(this + 176);
  v12 = v10 ^ v11;
  if ((v10 & 1) == 0 || (v11 & 1) == 0)
  {
LABEL_23:
    if (((a2 | v12) & 1) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (*(this + 19) == *(result + 1) && *(this + 20) == *(result + 2))
  {
    v12 = *(this + 21) != *(result + 3);
    goto LABEL_23;
  }

LABEL_28:
  v13 = WebCore::SystemBatteryStatusTestingOverrides::singleton(result);
  v14 = *(v13 + 1);
  v15 = WebCore::SystemBatteryStatusTestingOverrides::singleton(v13);
  v16 = *v15;
  v17 = WebCore::VP9TestingOverrides::singleton(v15);
  v18 = *v17;
  v19 = WebCore::VP9TestingOverrides::singleton(v17);
  v20 = *(v19 + 1);
  v21 = WebCore::VP9TestingOverrides::singleton(v19);
  v22 = *(v21 + 24);
  v23 = *(v21 + 8);
  *(this + 72) = v14;
  *(this + 73) = v16;
  *(this + 74) = v18;
  *(this + 75) = v20;
  *(this + 152) = v23;
  *(this + 168) = v22;
  v24 = *(this + 4);
  v26 = IPC::Encoder::operator new(0x238, v25);
  *v26 = 53;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = 0;
  IPC::Encoder::encodeHeader(v26);
  v30 = v26;
  IPC::ArgumentCoder<WebKit::MediaOverridesForTesting,void>::encode(v26, this + 144);
  IPC::Connection::sendMessageImpl(v24, &v30, 0, 0);
  result = v30;
  v30 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v27);
    return bmalloc::api::tzoneFree(v28, v29);
  }

  return result;
}

IPC::Encoder *WebKit::GPUProcessConnection::setMediaEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v5[0] = &v6;
  v5[1] = a3;
  return IPC::Connection::send<Messages::GPUConnectionToWebProcess::SetMediaEnvironment>(v3, v5);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUConnectionToWebProcess::SetMediaEnvironment>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 52;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::GPUConnectionToWebProcess::SetMediaEnvironment::encode<IPC::Encoder>(a2, v4);
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

IPC::Encoder *WebKit::GPUProcessConnection::createRenderingBackend(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v5[0] = &v6;
  v5[1] = a3;
  return IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateRenderingBackend>(v3, v5);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateRenderingBackend>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 42;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::GPUConnectionToWebProcess::CreateRenderingBackend::encode<IPC::Encoder>(a2, v4);
  IPC::Connection::sendMessageImpl(a1, &v9, 1, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::GPUProcessConnection::releaseRenderingBackend(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = &v5;
  v5 = a2;
  return IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseRenderingBackend>(v2, &v4);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseRenderingBackend>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 51;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::Connection::sendMessageImpl(a1, &v9, 1, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 40;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL::encode<IPC::Encoder>(a2, v10);
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

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseGraphicsContextGL>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 49;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateGPU>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 39;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::GPUConnectionToWebProcess::CreateGPU::encode<IPC::Encoder>(a2, v10);
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

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseGPU>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 48;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

uint64_t WebKit::RemoteSharedResourceCacheProxy::operator new(WebKit::RemoteSharedResourceCacheProxy *this, void *a2)
{
  if (WebKit::RemoteSharedResourceCacheProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSharedResourceCacheProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteSharedResourceCacheProxy::operatorNewSlow(0x10);
  }
}

uint64_t WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[1] = a4;
  v14 = a3;
  v8 = *a1;
  v13[0] = &v14;
  IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteBarcodeDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v13, a2);
  result = WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::operator new(0x28, v9);
  v11 = v14;
  *(result + 8) = 1;
  *result = &unk_1F1123048;
  *(result + 16) = v11;
  v12 = *a1;
  *a1 = 0;
  *(result + 24) = v12;
  *(result + 32) = a2;
  *a5 = result;
  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteBarcodeDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v51, v7);
    if (v53 != 1)
    {
      return 16;
    }

    v34 = v52;
    if (v52 <= 1)
    {
LABEL_58:
      __break(0xC471u);
      JUMPOUT(0x19E19ED4CLL);
    }

    v35 = v51;
    *v51 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v43 = atomic_exchange((*(v39 + 16) + 128), v42);
    v44 = *(a1 + 124);
    if (v43 == 0x80000000 || v44 != 0)
    {
      v46 = v44 + 1;
      *(a1 + 124) = v46;
      if (v46 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v48, v7);
  if (v50 != 1)
  {
    return 16;
  }

  v9 = v48;
  v10 = v49;
  v53 = v49;
  if (v49 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19ED0CLL);
  }

  *v48 = 1579;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 7 | 8;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 7)) = **a2;
    v51 = (v11 + v13);
    v52 = v15;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v51, *(a2 + 8));
  if (v51)
  {
    v17 = v53 - v52;
    if (v53 - v52 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(a1 + 88) = v20;
    v21 = *(a1 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_57;
  }

  if ((v50 & 1) == 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v49 <= 1)
  {
    __break(0xC471u);
    goto LABEL_57;
  }

  *v48 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
  if (v23 + 16 >= v24)
  {
    v23 = 0;
  }

  v25 = v23 + 16;
  if (v24 <= v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1579;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v51 = v29;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v29, **a2);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v29, *(a2 + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v51, 1, 0);
  v31 = v51;
  v51 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::operator new(WebKit::ShapeDetection::RemoteBarcodeDetectorProxy *this, void *a2)
{
  if (this == 40 && WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::operatorNewSlow(this);
  }
}

void WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::~RemoteBarcodeDetectorProxy(WebKit::ShapeDetection::RemoteBarcodeDetectorProxy *this)
{
  *this = &unk_1F1123048;
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
    if (v44 != 1)
    {
      goto LABEL_19;
    }

    v18 = v43;
    if (v43 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E19F134);
    }

    v19 = v42;
    *v42 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_19;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
  if (v44 != 1)
  {
    goto LABEL_19;
  }

  v8 = v43;
  if (v43 <= 1)
  {
    goto LABEL_56;
  }

  v9 = v42;
  *v42 = 1601;
  v10 = v9 + 1;
  if (v8 - 2 < (-v10 & 7 | 8uLL))
  {
    v41 = v3;
    if ((v44 & 1) == 0)
    {
LABEL_53:
      __break(1u);
      goto LABEL_56;
    }

    if (v43 > 1)
    {
      *v42 = 3197;
      v31 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v33 = *(v2 + 72);
      v32 = *(v2 + 80);
      if (v31 + 16 >= v33)
      {
        v31 = 0;
      }

      v34 = v31 + 16;
      if (v33 <= v34)
      {
        v34 = 0;
      }

      *(v2 + 88) = v34;
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      atomic_exchange((*(v32 + 16) + 128), v34);
      *(v2 + 124) = 0;
      v35 = *(v2 + 8);
      v36 = IPC::Encoder::operator new(0x238, v7);
      *v36 = 1601;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 1) = v41;
      *(v36 + 68) = 0;
      *(v36 + 70) = 0;
      *(v36 + 69) = 0;
      IPC::Encoder::encodeHeader(v36);
      v45 = v36;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, *(this + 2));
      IPC::Connection::sendMessageImpl(v35, &v45, 1, 0);
      v38 = v45;
      v45 = 0;
      if (v38)
      {
        IPC::Encoder::~Encoder(v38, v37);
        bmalloc::api::tzoneFree(v39, v40);
      }

      goto LABEL_19;
    }

LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E19F114);
  }

  v11 = -v10 & 7;
  *(v10 + v11) = *(this + 2);
  if (v11 != 7)
  {
    v11 = 6;
  }

  v12 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = v11 + 10;
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v16 = v15 + v12;
  if (v14 <= v16)
  {
    v16 = 0;
  }

  *(v2 + 88) = v16;
  if (*(v13 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  if (atomic_exchange((*(v13 + 16) + 128), v16) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_19:
  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    IPC::StreamClientConnection::operator delete(v17);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }
}

{
  WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::~RemoteBarcodeDetectorProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

unint64_t IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v8 = v7 + v9;
  }

  if (*(a1 + 64) != a4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v62, v8);
    if (v64 != 1)
    {
      return 0;
    }

    v31 = v63;
    if (v63 <= 1)
    {
      __break(0xC471u);
      goto LABEL_73;
    }

    v32 = v62;
    *v62 = 3198;
    v33 = v32 + 1;
    if (v31 - 2 < (-v33 & 7 | 8uLL))
    {
      return 0;
    }

    v34 = -v33 & 7;
    *(v33 + v34) = a4;
    if (v34 != 7)
    {
      v34 = 6;
    }

    v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(a1 + 72);
    v36 = *(a1 + 80);
    v38 = v34 + 10;
    if (v35 + 16 >= v37)
    {
      v35 = 0;
    }

    v39 = v38 + v35;
    if (v37 <= v39)
    {
      v39 = 0;
    }

    *(a1 + 88) = v39;
    if (*(v36 + 8) <= 0xFFuLL)
    {
      goto LABEL_73;
    }

    v40 = atomic_exchange((*(v36 + 16) + 128), v39);
    v41 = *(a1 + 124);
    if (v40 == 0x80000000 || v41 != 0)
    {
      v43 = v41 + 1;
      *(a1 + 124) = v43;
      if (v43 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v62, v8);
  if (v64 != 1)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  while (1)
  {
    v11 = *v10;
    if ((*v10 & 1) == 0)
    {
      break;
    }

    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_10:
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11236C0;
  v14[1] = v13;
  v61[0] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_75;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v61[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19F6A8);
  }

  v16 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v10, v61);
  if ((v64 & 1) == 0)
  {
    goto LABEL_73;
  }

  v18 = v63;
  if (v63 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19F6C8);
  }

  v19 = v62;
  *v62 = 1586;
  v20 = v19 + 1;
  if (v18 - 2 < (-v20 & 7 | 8uLL))
  {
    if (v64)
    {
      if (v63 <= 1)
      {
LABEL_74:
        __break(0xC471u);
LABEL_75:
        JUMPOUT(0x19E19F688);
      }

      *v62 = 3197;
      v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = *(a1 + 72);
      if (v44 + 16 >= v45)
      {
        v44 = 0;
      }

      v46 = v44 + 16;
      if (v45 <= v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v46;
      }

      *(a1 + 88) = v47;
      v48 = *(a1 + 80);
      if (*(v48 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v48 + 16) + 128), v47);
        *(a1 + 124) = 0;
        v49 = IPC::Encoder::operator new(0x238, v17);
        *v49 = 1586;
        *(v49 + 2) = 0;
        *(v49 + 3) = 0;
        *(v49 + 1) = a4;
        *(v49 + 68) = 0;
        *(v49 + 70) = 0;
        *(v49 + 69) = 0;
        IPC::Encoder::encodeHeader(v49);
        v60 = v49;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v16);
        if (IPC::Connection::sendMessageImpl(v10, &v60, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v10, v16, &v59);
          if (v59)
          {
            WTF::RunLoop::mainSingleton(v51);
            v52 = v59;
            v59 = 0;
            v53 = WTF::fastMalloc(0x10);
            *v53 = &unk_1F11236E8;
            v53[1] = v52;
            v58 = v53;
            WTF::RunLoop::dispatch();
            if (v58)
            {
              (*(*v58 + 8))(v58);
            }

            v54 = v59;
            v59 = 0;
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }
          }

          LOBYTE(v16) = 0;
          v28 = 0;
        }

        else
        {
          v28 = v16 & 0xFFFFFFFFFFFFFF00;
        }

        v55 = v60;
        v60 = 0;
        if (v55)
        {
          IPC::Encoder::~Encoder(v55, v50);
          bmalloc::api::tzoneFree(v56, v57);
        }

        goto LABEL_28;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v21 = -v20 & 7;
  *(v20 + v21) = v16;
  v22 = 6;
  if (v21 > 6)
  {
    v22 = v21;
  }

  v23 = v22 + 10;
  v24 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(a1 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v23 + v24;
  if (v25 <= v26)
  {
    v26 = 0;
  }

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(a1 + 124))
  {
    if (*(a1 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(a1 + 100));
    }

    *(a1 + 124) = 0;
  }

  v28 = v16 & 0xFFFFFFFFFFFFFF00;
LABEL_28:
  v29 = v61[0];
  v61[0] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  return v28 | v16;
}

atomic_ullong *WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::detect(WTF::ApproximateTime *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*a2 + 120);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) != v6)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
    if (v65 != 1)
    {
      return result;
    }

    v32 = v64;
    if (v64 <= 1)
    {
      __break(0xC471u);
      goto LABEL_71;
    }

    v33 = v63;
    *v63 = 3198;
    v34 = v33 + 1;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      return result;
    }

    v35 = -v34 & 7;
    *(v34 + v35) = v6;
    if (v35 != 7)
    {
      v35 = 6;
    }

    v36 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v5 + 72);
    v37 = *(v5 + 80);
    v39 = v35 + 10;
    if (v36 + 16 >= v38)
    {
      v36 = 0;
    }

    v40 = v39 + v36;
    if (v38 <= v40)
    {
      v40 = 0;
    }

    *(v5 + 88) = v40;
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_71;
    }

    v41 = atomic_exchange((*(v37 + 16) + 128), v40);
    v42 = *(v5 + 124);
    if (v41 == 0x80000000 || v42 != 0)
    {
      v44 = v42 + 1;
      *(v5 + 124) = v44;
      if (v44 >= *(v5 + 120))
      {
        if (*(v5 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v5 + 100));
        }

        *(v5 + 124) = 0;
      }
    }

    *(v5 + 64) = v6;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
  if (v65 != 1)
  {
    return result;
  }

  v11 = *(v5 + 8);
  while (1)
  {
    v12 = *v11;
    if ((*v11 & 1) == 0)
    {
      break;
    }

    v13 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_10:
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1123710;
  v15[1] = v14;
  v62[0] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v62[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19FC34);
  }

  v17 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v11, v62);
  if ((v65 & 1) == 0)
  {
    goto LABEL_71;
  }

  v19 = v64;
  if (v64 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19FC54);
  }

  v20 = v63;
  *v63 = 954;
  v21 = v20 + 1;
  v22 = -v21 & 7 | 8;
  v23 = v19 - 2 - v22;
  if (v19 - 2 < v22 || (*(v21 + (-v21 & 7)) = v4, v24 = v21 + v22, v25 = -v24 & 7 | 8, v23 < v25))
  {
    if (v65)
    {
      if (v64 <= 1)
      {
LABEL_72:
        __break(0xC471u);
LABEL_73:
        JUMPOUT(0x19E19FC14);
      }

      *v63 = 3197;
      v45 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v5 + 72);
      if (v45 + 16 >= v46)
      {
        v45 = 0;
      }

      v47 = v45 + 16;
      if (v46 <= v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      *(v5 + 88) = v48;
      v49 = *(v5 + 80);
      if (*(v49 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v49 + 16) + 128), v48);
        *(v5 + 124) = 0;
        v50 = IPC::Encoder::operator new(0x238, v18);
        *v50 = 954;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0;
        *(v50 + 1) = v6;
        *(v50 + 68) = 0;
        *(v50 + 70) = 0;
        *(v50 + 69) = 0;
        IPC::Encoder::encodeHeader(v50);
        v61 = v50;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v4);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v17);
        if (IPC::Connection::sendMessageImpl(v11, &v61, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v11, v17, &v60);
          if (v60)
          {
            WTF::RunLoop::mainSingleton(v52);
            v53 = v60;
            v60 = 0;
            v54 = WTF::fastMalloc(0x10);
            *v54 = &unk_1F1123738;
            v54[1] = v53;
            v59 = v54;
            WTF::RunLoop::dispatch();
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }

            v55 = v60;
            v60 = 0;
            if (v55)
            {
              (*(*v55 + 8))(v55);
            }
          }
        }

        v56 = v61;
        v61 = 0;
        if (v56)
        {
          IPC::Encoder::~Encoder(v56, v51);
          bmalloc::api::tzoneFree(v57, v58);
        }

        goto LABEL_28;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v24 + (-v24 & 7)) = v17;
  v26 = v19 - v23 + v25;
  if (v26 <= 0x10)
  {
    v26 = 16;
  }

  v27 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v5 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + v26;
  if (v28 <= v29)
  {
    v29 = 0;
  }

  *(v5 + 88) = v29;
  v30 = *(v5 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_71;
  }

  if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v5 + 124))
  {
    if (*(v5 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v5 + 100));
    }

    *(v5 + 124) = 0;
  }

LABEL_28:
  v31 = v62[0];
  v62[0] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
}

uint64_t WebKit::ShapeDetection::RemoteFaceDetectorProxy::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[1] = a4;
  v14 = a3;
  v8 = *a1;
  v13[0] = &v14;
  IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteFaceDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v13, a2);
  result = WebKit::ShapeDetection::RemoteFaceDetectorProxy::operator new(0x28, v9);
  v11 = v14;
  *(result + 8) = 1;
  *result = &unk_1F1123070;
  *(result + 16) = v11;
  v12 = *a1;
  *a1 = 0;
  *(result + 24) = v12;
  *(result + 32) = a2;
  *a5 = result;
  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteFaceDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v52, v7);
    if (v54 != 1)
    {
      return 16;
    }

    v35 = v53;
    if (v53 <= 1)
    {
LABEL_58:
      __break(0xC471u);
      JUMPOUT(0x19E1A012CLL);
    }

    v36 = v52;
    *v52 = 3198;
    v37 = v36 + 2;
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
      return 18;
    }

    v38 = -v37 & 7;
    *&v37[v38] = a3;
    if (v38 != 7)
    {
      v38 = 6;
    }

    v39 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(a1 + 72);
    v40 = *(a1 + 80);
    v42 = v38 + 10;
    if (v39 + 16 >= v41)
    {
      v39 = 0;
    }

    v43 = v42 + v39;
    if (v41 <= v43)
    {
      v43 = 0;
    }

    *(a1 + 88) = v43;
    if (*(v40 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v44 = atomic_exchange((*(v40 + 16) + 128), v43);
    v45 = *(a1 + 124);
    if (v44 == 0x80000000 || v45 != 0)
    {
      v47 = v45 + 1;
      *(a1 + 124) = v47;
      if (v47 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v49, v7);
  if (v51 != 1)
  {
    return 16;
  }

  v9 = v49;
  v10 = v50;
  v54 = v50;
  if (v50 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1A00ECLL);
  }

  *v49 = 1580;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 7 | 8;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 7)) = **a2;
    v52 = (v11 + v13);
    v53 = v15;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  IPC::ArgumentCoder<WebCore::ShapeDetection::FaceDetectorOptions,void>::encode(&v52, *(a2 + 8));
  if (v52)
  {
    v17 = v54 - v53;
    if (v54 - v53 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(a1 + 88) = v20;
    v21 = *(a1 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_57;
  }

  if ((v51 & 1) == 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v50 <= 1)
  {
    __break(0xC471u);
    goto LABEL_57;
  }

  *v49 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
  if (v23 + 16 >= v24)
  {
    v23 = 0;
  }

  v25 = v23 + 16;
  if (v24 <= v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1580;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v52 = v29;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v29, **a2);
  v30 = *(a2 + 8);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v29, *v30);
  IPC::Encoder::operator<<<BOOL>(v29, (v30 + 2));
  v22 = IPC::Connection::sendMessageImpl(v28, &v52, 1, 0);
  v32 = v52;
  v52 = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v31);
    bmalloc::api::tzoneFree(v33, v34);
  }

  return v22;
}

uint64_t WebKit::ShapeDetection::RemoteFaceDetectorProxy::operator new(WebKit::ShapeDetection::RemoteFaceDetectorProxy *this, void *a2)
{
  if (this == 40 && WebKit::ShapeDetection::RemoteFaceDetectorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ShapeDetection::RemoteFaceDetectorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::ShapeDetection::RemoteFaceDetectorProxy::operatorNewSlow(this);
  }
}

void WebKit::ShapeDetection::RemoteFaceDetectorProxy::~RemoteFaceDetectorProxy(WebKit::ShapeDetection::RemoteFaceDetectorProxy *this)
{
  *this = &unk_1F1123070;
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
    if (v44 != 1)
    {
      goto LABEL_19;
    }

    v18 = v43;
    if (v43 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A0514);
    }

    v19 = v42;
    *v42 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_19;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
  if (v44 != 1)
  {
    goto LABEL_19;
  }

  v8 = v43;
  if (v43 <= 1)
  {
    goto LABEL_56;
  }

  v9 = v42;
  *v42 = 1602;
  v10 = v9 + 1;
  if (v8 - 2 < (-v10 & 7 | 8uLL))
  {
    v41 = v3;
    if ((v44 & 1) == 0)
    {
LABEL_53:
      __break(1u);
      goto LABEL_56;
    }

    if (v43 > 1)
    {
      *v42 = 3197;
      v31 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v33 = *(v2 + 72);
      v32 = *(v2 + 80);
      if (v31 + 16 >= v33)
      {
        v31 = 0;
      }

      v34 = v31 + 16;
      if (v33 <= v34)
      {
        v34 = 0;
      }

      *(v2 + 88) = v34;
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      atomic_exchange((*(v32 + 16) + 128), v34);
      *(v2 + 124) = 0;
      v35 = *(v2 + 8);
      v36 = IPC::Encoder::operator new(0x238, v7);
      *v36 = 1602;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 1) = v41;
      *(v36 + 68) = 0;
      *(v36 + 70) = 0;
      *(v36 + 69) = 0;
      IPC::Encoder::encodeHeader(v36);
      v45 = v36;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, *(this + 2));
      IPC::Connection::sendMessageImpl(v35, &v45, 1, 0);
      v38 = v45;
      v45 = 0;
      if (v38)
      {
        IPC::Encoder::~Encoder(v38, v37);
        bmalloc::api::tzoneFree(v39, v40);
      }

      goto LABEL_19;
    }

LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E1A04F4);
  }

  v11 = -v10 & 7;
  *(v10 + v11) = *(this + 2);
  if (v11 != 7)
  {
    v11 = 6;
  }

  v12 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = v11 + 10;
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v16 = v15 + v12;
  if (v14 <= v16)
  {
    v16 = 0;
  }

  *(v2 + 88) = v16;
  if (*(v13 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  if (atomic_exchange((*(v13 + 16) + 128), v16) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_19:
  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    IPC::StreamClientConnection::operator delete(v17);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }
}

{
  WebKit::ShapeDetection::RemoteFaceDetectorProxy::~RemoteFaceDetectorProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_ullong *WebKit::ShapeDetection::RemoteFaceDetectorProxy::detect(WTF::ApproximateTime *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*a2 + 120);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) != v6)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
    if (v65 != 1)
    {
      return result;
    }

    v32 = v64;
    if (v64 <= 1)
    {
      __break(0xC471u);
      goto LABEL_71;
    }

    v33 = v63;
    *v63 = 3198;
    v34 = v33 + 1;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      return result;
    }

    v35 = -v34 & 7;
    *(v34 + v35) = v6;
    if (v35 != 7)
    {
      v35 = 6;
    }

    v36 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v5 + 72);
    v37 = *(v5 + 80);
    v39 = v35 + 10;
    if (v36 + 16 >= v38)
    {
      v36 = 0;
    }

    v40 = v39 + v36;
    if (v38 <= v40)
    {
      v40 = 0;
    }

    *(v5 + 88) = v40;
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_71;
    }

    v41 = atomic_exchange((*(v37 + 16) + 128), v40);
    v42 = *(v5 + 124);
    if (v41 == 0x80000000 || v42 != 0)
    {
      v44 = v42 + 1;
      *(v5 + 124) = v44;
      if (v44 >= *(v5 + 120))
      {
        if (*(v5 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v5 + 100));
        }

        *(v5 + 124) = 0;
      }
    }

    *(v5 + 64) = v6;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
  if (v65 != 1)
  {
    return result;
  }

  v11 = *(v5 + 8);
  while (1)
  {
    v12 = *v11;
    if ((*v11 & 1) == 0)
    {
      break;
    }

    v13 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_10:
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1123760;
  v15[1] = v14;
  v62[0] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v62[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1A0A84);
  }

  v17 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v11, v62);
  if ((v65 & 1) == 0)
  {
    goto LABEL_71;
  }

  v19 = v64;
  if (v64 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1A0AA4);
  }

  v20 = v63;
  *v63 = 1150;
  v21 = v20 + 1;
  v22 = -v21 & 7 | 8;
  v23 = v19 - 2 - v22;
  if (v19 - 2 < v22 || (*(v21 + (-v21 & 7)) = v4, v24 = v21 + v22, v25 = -v24 & 7 | 8, v23 < v25))
  {
    if (v65)
    {
      if (v64 <= 1)
      {
LABEL_72:
        __break(0xC471u);
LABEL_73:
        JUMPOUT(0x19E1A0A64);
      }

      *v63 = 3197;
      v45 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v5 + 72);
      if (v45 + 16 >= v46)
      {
        v45 = 0;
      }

      v47 = v45 + 16;
      if (v46 <= v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      *(v5 + 88) = v48;
      v49 = *(v5 + 80);
      if (*(v49 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v49 + 16) + 128), v48);
        *(v5 + 124) = 0;
        v50 = IPC::Encoder::operator new(0x238, v18);
        *v50 = 1150;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0;
        *(v50 + 1) = v6;
        *(v50 + 68) = 0;
        *(v50 + 70) = 0;
        *(v50 + 69) = 0;
        IPC::Encoder::encodeHeader(v50);
        v61 = v50;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v4);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v17);
        if (IPC::Connection::sendMessageImpl(v11, &v61, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v11, v17, &v60);
          if (v60)
          {
            WTF::RunLoop::mainSingleton(v52);
            v53 = v60;
            v60 = 0;
            v54 = WTF::fastMalloc(0x10);
            *v54 = &unk_1F1123788;
            v54[1] = v53;
            v59 = v54;
            WTF::RunLoop::dispatch();
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }

            v55 = v60;
            v60 = 0;
            if (v55)
            {
              (*(*v55 + 8))(v55);
            }
          }
        }

        v56 = v61;
        v61 = 0;
        if (v56)
        {
          IPC::Encoder::~Encoder(v56, v51);
          bmalloc::api::tzoneFree(v57, v58);
        }

        goto LABEL_28;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v24 + (-v24 & 7)) = v17;
  v26 = v19 - v23 + v25;
  if (v26 <= 0x10)
  {
    v26 = 16;
  }

  v27 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v5 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + v26;
  if (v28 <= v29)
  {
    v29 = 0;
  }

  *(v5 + 88) = v29;
  v30 = *(v5 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_71;
  }

  if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v5 + 124))
  {
    if (*(v5 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v5 + 100));
    }

    *(v5 + 124) = 0;
  }

LABEL_28:
  v31 = v62[0];
  v62[0] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
}

uint64_t WebKit::ShapeDetection::RemoteTextDetectorProxy::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v12 = &v13;
  v13 = a3;
  IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteTextDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v7, &v12, a2);
  result = WebKit::ShapeDetection::RemoteTextDetectorProxy::operator new(0x28, v8);
  v10 = v13;
  *(result + 8) = 1;
  *result = &unk_1F1123098;
  *(result + 16) = v10;
  v11 = *a1;
  *a1 = 0;
  *(result + 24) = v11;
  *(result + 32) = a2;
  *a4 = result;
  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CreateRemoteTextDetector,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
    if (v46 != 1)
    {
      return 16;
    }

    v20 = v45;
    if (v45 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A0F04);
    }

    v21 = v44;
    *v44 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      return 18;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = a3;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(a1 + 72);
    v25 = *(a1 + 80);
    v27 = v23 + 10;
    if (v24 + 16 >= v26)
    {
      v24 = 0;
    }

    v28 = v27 + v24;
    if (v26 <= v28)
    {
      v28 = 0;
    }

    *(a1 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
      goto LABEL_54;
    }

    v29 = atomic_exchange((*(v25 + 16) + 128), v28);
    v30 = *(a1 + 124);
    if (v29 == 0x80000000 || v30 != 0)
    {
      v32 = v30 + 1;
      *(a1 + 124) = v32;
      if (v32 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v10 = v45;
  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  v11 = v44;
  *v44 = 1581;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 7 | 8uLL))
  {
    v13 = -v12 & 7;
    *(v12 + v13) = **a2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(a1 + 72);
    v15 = *(a1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(a1 + 88) = v18;
    if (*(v15 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v15 + 16) + 128), v18) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v19 = 0;
      *(a1 + 124) = 0;
      return v19;
    }

    goto LABEL_54;
  }

  if ((v46 & 1) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    JUMPOUT(0x19E1A0EE4);
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_54;
  }

  *v44 = 3197;
  v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  v35 = *(a1 + 80);
  if (v34 + 16 >= v36)
  {
    v34 = 0;
  }

  v37 = v34 + 16;
  if (v36 <= v37)
  {
    v37 = 0;
  }

  *(a1 + 88) = v37;
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_54;
  }

  atomic_exchange((*(v35 + 16) + 128), v37);
  *(a1 + 124) = 0;
  v38 = *(a1 + 8);
  v39 = IPC::Encoder::operator new(0x238, v9);
  *v39 = 1581;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v47 = v39;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, **a2);
  v19 = IPC::Connection::sendMessageImpl(v38, &v47, 1, 0);
  v41 = v47;
  v47 = 0;
  if (v41)
  {
    IPC::Encoder::~Encoder(v41, v40);
    bmalloc::api::tzoneFree(v42, v43);
  }

  return v19;
}

uint64_t WebKit::ShapeDetection::RemoteTextDetectorProxy::operator new(WebKit::ShapeDetection::RemoteTextDetectorProxy *this, void *a2)
{
  if (this == 40 && WebKit::ShapeDetection::RemoteTextDetectorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ShapeDetection::RemoteTextDetectorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::ShapeDetection::RemoteTextDetectorProxy::operatorNewSlow(this);
  }
}

void WebKit::ShapeDetection::RemoteTextDetectorProxy::~RemoteTextDetectorProxy(WebKit::ShapeDetection::RemoteTextDetectorProxy *this)
{
  *this = &unk_1F1123098;
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
    if (v44 != 1)
    {
      goto LABEL_19;
    }

    v18 = v43;
    if (v43 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A130CLL);
    }

    v19 = v42;
    *v42 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_19;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v42, v5);
  if (v44 != 1)
  {
    goto LABEL_19;
  }

  v8 = v43;
  if (v43 <= 1)
  {
    goto LABEL_56;
  }

  v9 = v42;
  *v42 = 1603;
  v10 = v9 + 1;
  if (v8 - 2 < (-v10 & 7 | 8uLL))
  {
    v41 = v3;
    if ((v44 & 1) == 0)
    {
LABEL_53:
      __break(1u);
      goto LABEL_56;
    }

    if (v43 > 1)
    {
      *v42 = 3197;
      v31 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v33 = *(v2 + 72);
      v32 = *(v2 + 80);
      if (v31 + 16 >= v33)
      {
        v31 = 0;
      }

      v34 = v31 + 16;
      if (v33 <= v34)
      {
        v34 = 0;
      }

      *(v2 + 88) = v34;
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      atomic_exchange((*(v32 + 16) + 128), v34);
      *(v2 + 124) = 0;
      v35 = *(v2 + 8);
      v36 = IPC::Encoder::operator new(0x238, v7);
      *v36 = 1603;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 1) = v41;
      *(v36 + 68) = 0;
      *(v36 + 70) = 0;
      *(v36 + 69) = 0;
      IPC::Encoder::encodeHeader(v36);
      v45 = v36;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, *(this + 2));
      IPC::Connection::sendMessageImpl(v35, &v45, 1, 0);
      v38 = v45;
      v45 = 0;
      if (v38)
      {
        IPC::Encoder::~Encoder(v38, v37);
        bmalloc::api::tzoneFree(v39, v40);
      }

      goto LABEL_19;
    }

LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E1A12ECLL);
  }

  v11 = -v10 & 7;
  *(v10 + v11) = *(this + 2);
  if (v11 != 7)
  {
    v11 = 6;
  }

  v12 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = v11 + 10;
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v16 = v15 + v12;
  if (v14 <= v16)
  {
    v16 = 0;
  }

  *(v2 + 88) = v16;
  if (*(v13 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  if (atomic_exchange((*(v13 + 16) + 128), v16) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_19:
  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    IPC::StreamClientConnection::operator delete(v17);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }
}

{
  WebKit::ShapeDetection::RemoteTextDetectorProxy::~RemoteTextDetectorProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_ullong *WebKit::ShapeDetection::RemoteTextDetectorProxy::detect(WTF::ApproximateTime *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*a2 + 120);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) != v6)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
    if (v65 != 1)
    {
      return result;
    }

    v32 = v64;
    if (v64 <= 1)
    {
      __break(0xC471u);
      goto LABEL_71;
    }

    v33 = v63;
    *v63 = 3198;
    v34 = v33 + 1;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      return result;
    }

    v35 = -v34 & 7;
    *(v34 + v35) = v6;
    if (v35 != 7)
    {
      v35 = 6;
    }

    v36 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v5 + 72);
    v37 = *(v5 + 80);
    v39 = v35 + 10;
    if (v36 + 16 >= v38)
    {
      v36 = 0;
    }

    v40 = v39 + v36;
    if (v38 <= v40)
    {
      v40 = 0;
    }

    *(v5 + 88) = v40;
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_71;
    }

    v41 = atomic_exchange((*(v37 + 16) + 128), v40);
    v42 = *(v5 + 124);
    if (v41 == 0x80000000 || v42 != 0)
    {
      v44 = v42 + 1;
      *(v5 + 124) = v44;
      if (v44 >= *(v5 + 120))
      {
        if (*(v5 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v5 + 100));
        }

        *(v5 + 124) = 0;
      }
    }

    *(v5 + 64) = v6;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v63, v8);
  if (v65 != 1)
  {
    return result;
  }

  v11 = *(v5 + 8);
  while (1)
  {
    v12 = *v11;
    if ((*v11 & 1) == 0)
    {
      break;
    }

    v13 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_10:
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F11237B0;
  v15[1] = v14;
  v62[0] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v62[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1A187CLL);
  }

  v17 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v11, v62);
  if ((v65 & 1) == 0)
  {
    goto LABEL_71;
  }

  v19 = v64;
  if (v64 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1A189CLL);
  }

  v20 = v63;
  *v63 = 1664;
  v21 = v20 + 1;
  v22 = -v21 & 7 | 8;
  v23 = v19 - 2 - v22;
  if (v19 - 2 < v22 || (*(v21 + (-v21 & 7)) = v4, v24 = v21 + v22, v25 = -v24 & 7 | 8, v23 < v25))
  {
    if (v65)
    {
      if (v64 <= 1)
      {
LABEL_72:
        __break(0xC471u);
LABEL_73:
        JUMPOUT(0x19E1A185CLL);
      }

      *v63 = 3197;
      v45 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v5 + 72);
      if (v45 + 16 >= v46)
      {
        v45 = 0;
      }

      v47 = v45 + 16;
      if (v46 <= v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      *(v5 + 88) = v48;
      v49 = *(v5 + 80);
      if (*(v49 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v49 + 16) + 128), v48);
        *(v5 + 124) = 0;
        v50 = IPC::Encoder::operator new(0x238, v18);
        *v50 = 1664;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0;
        *(v50 + 1) = v6;
        *(v50 + 68) = 0;
        *(v50 + 70) = 0;
        *(v50 + 69) = 0;
        IPC::Encoder::encodeHeader(v50);
        v61 = v50;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v4);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v17);
        if (IPC::Connection::sendMessageImpl(v11, &v61, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v11, v17, &v60);
          if (v60)
          {
            WTF::RunLoop::mainSingleton(v52);
            v53 = v60;
            v60 = 0;
            v54 = WTF::fastMalloc(0x10);
            *v54 = &unk_1F11237D8;
            v54[1] = v53;
            v59 = v54;
            WTF::RunLoop::dispatch();
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }

            v55 = v60;
            v60 = 0;
            if (v55)
            {
              (*(*v55 + 8))(v55);
            }
          }
        }

        v56 = v61;
        v61 = 0;
        if (v56)
        {
          IPC::Encoder::~Encoder(v56, v51);
          bmalloc::api::tzoneFree(v57, v58);
        }

        goto LABEL_28;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v24 + (-v24 & 7)) = v17;
  v26 = v19 - v23 + v25;
  if (v26 <= 0x10)
  {
    v26 = 16;
  }

  v27 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v5 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + v26;
  if (v28 <= v29)
  {
    v29 = 0;
  }

  *(v5 + 88) = v29;
  v30 = *(v5 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_71;
  }

  if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v5 + 124))
  {
    if (*(v5 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v5 + 100));
    }

    *(v5 + 124) = 0;
  }

LABEL_28:
  v31 = v62[0];
  v62[0] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
}

uint64_t WebKit::ImageBufferRemoteDisplayListBackend::create@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (WebKit::ImageBufferRemoteDisplayListBackend::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferRemoteDisplayListBackend::s_heapRef, a1);
  }

  else
  {
    NonCompact = WebKit::ImageBufferRemoteDisplayListBackend::operatorNewSlow(0);
  }

  v4 = NonCompact;
  *WebCore::ImageBufferBackend::ImageBufferBackend() = MEMORY[0x1E69E2E88] + 16;
  result = WebCore::GraphicsContext::GraphicsContext();
  *(v4 + 40) = &unk_1F1123290;
  *(v4 + 693) = 0;
  *v4 = &unk_1F11230C0;
  *a2 = v4;
  return result;
}

void WebKit::ImageBufferRemoteDisplayListBackend::~ImageBufferRemoteDisplayListBackend(WebKit::ImageBufferRemoteDisplayListBackend *this)
{
  WebCore::NullImageBufferBackend::~NullImageBufferBackend(this);

  bmalloc::api::tzoneFree(v1, v2);
}

WTF::StringImpl *WebKit::ImageBufferRemoteDisplayListBackend::debugDescription@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  v11 = 256;
  v12 = 0;
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::release(a1, &v6);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
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

  return result;
}

uint64_t WebKit::ImageBufferRemotePDFDocumentBackend::create@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (WebKit::ImageBufferRemotePDFDocumentBackend::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferRemotePDFDocumentBackend::s_heapRef, a1);
  }

  else
  {
    NonCompact = WebKit::ImageBufferRemotePDFDocumentBackend::operatorNewSlow(0);
  }

  v4 = NonCompact;
  *WebCore::ImageBufferBackend::ImageBufferBackend() = MEMORY[0x1E69E2E88] + 16;
  result = WebCore::GraphicsContext::GraphicsContext();
  *(v4 + 40) = &unk_1F1123290;
  *(v4 + 693) = 0;
  *v4 = &unk_1F11231A8;
  *a2 = v4;
  return result;
}

void WebKit::ImageBufferRemotePDFDocumentBackend::~ImageBufferRemotePDFDocumentBackend(WebKit::ImageBufferRemotePDFDocumentBackend *this)
{
  WebCore::NullImageBufferBackend::~NullImageBufferBackend(this);

  bmalloc::api::tzoneFree(v1, v2);
}

WTF::StringImpl *WebKit::ImageBufferRemotePDFDocumentBackend::debugDescription@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  v11 = 256;
  v12 = 0;
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::release(a1, &v6);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
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

  return result;
}

uint64_t WebKit::GPUProcessConnection::ref(uint64_t this)
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

WebKit::SampleBufferDisplayLayerManager *std::unique_ptr<WebKit::SampleBufferDisplayLayerManager>::reset[abi:sn200100](WebKit::SampleBufferDisplayLayerManager **a1, WebKit::SampleBufferDisplayLayerManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SampleBufferDisplayLayerManager::~SampleBufferDisplayLayerManager(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::SampleBufferDisplayLayerManager::~SampleBufferDisplayLayerManager(WebKit::SampleBufferDisplayLayerManager *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
}

void WebCore::NullGraphicsContext::~NullGraphicsContext(WebCore::NullGraphicsContext *this)
{
  WebCore::GraphicsContext::~GraphicsContext(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebCore::NullGraphicsContext::drawTiledImage()
{
  return 0;
}

{
  return 0;
}

double WebCore::NullGraphicsContext::getCTM@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_19E704710;
  a1[1] = unk_19E704720;
  result = 0.0;
  a1[2] = xmmword_19E704730;
  return result;
}

uint64_t WebCore::GraphicsContext::applyDeviceScaleFactor(WebCore::GraphicsContext *this, float a2)
{
  *v3 = a2;
  *&v3[1] = a2;
  return (*(*this + 656))(this, v3);
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::WebFullScreenManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::WebFullScreenManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++v1[4];
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

  if (v1[4] == 1)
  {
    v6 = *(*v1 + 8);

    return v6(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(WTF::Logger *a1, WTF::Logger::LogSiteIdentifier *a2, atomic_uint **a3, atomic_uint **a4)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696EBD0];
  do
  {
    v8 = *v7;
    if (v8)
    {
      v22 = 0;
      return v22 & 1;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v9 != v8);
  v10 = WTF::Logger::messageHandlerObservers(a1);
  v11 = *(v10 + 12);
  if (v11)
  {
    v12 = *v10;
    v13 = *v10 + 8 * v11;
    do
    {
      v14 = *v12;
      v26[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v27, a2);
      v28 = 0;
      WTF::String::String(v29, "<");
      v29[2] = 0;
      v15 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v30 = v15;
      v31 = 0;
      WTF::String::String(v32, " id=");
      v32[2] = 0;
      v16 = *a4;
      if (*a4)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v33 = v16;
      v34 = 0;
      WTF::String::String(v35, ">");
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, v26, 6uLL);
      (*(*v14 + 16))(v14, &WebKit2LogFullscreen, 0, v25);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
      for (i = 22; i != -2; i -= 4)
      {
        v20 = *&v26[i];
        *&v26[i] = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v22 = *(a1 + 12);
  return v22 & 1;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [2],WTF::String,char [6],WTF::AtomString,char [3]>(WTF::Logger::LogSiteIdentifier *a1, atomic_uint **a2, atomic_uint **a3)
{
  v51[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v37, a1);
  WTF::String::String(&v36, "<");
  v31 = a2;
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  WTF::String::String(&v35, " id=");
  v5 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  WTF::String::String(&v34, ">");
  v42 = v4;
  *buf = v37;
  v33[0] = v36;
  v40 = v5;
  v41 = v35;
  v39 = v34;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v33, &v42, &v41, &v40, &v39, &v38);
  if (!v38)
  {
    __break(0xC471u);
    return result;
  }

  v8 = v34;
  v34 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v7);
  }

LABEL_12:
  v9 = v35;
  v35 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
    if (v4)
    {
LABEL_15:
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v7);
      }
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  v10 = v36;
  v36 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v37;
  v37 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = qword_1ED640AE0;
  v13 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    WTF::String::utf8();
    v15 = v33[0] ? v33[0] + 16 : 0;
    *buf = 136446210;
    *&buf[4] = v15;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v13 = v33[0];
    v33[0] = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        v13 = WTF::fastFree(v13, v14);
      }

      else
      {
        --*v13;
      }
    }
  }

  if (WebKit2LogFullscreen)
  {
    v16 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v17 = *v16;
      if (v17)
      {
        break;
      }

      v18 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
      if (v18 == v17)
      {
        v19 = WTF::Logger::observers(v13);
        v20 = *(v19 + 12);
        if (v20)
        {
          v21 = *v19;
          v22 = *v19 + 8 * v20;
          do
          {
            v23 = *v21;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], a1);
            v44 = 0;
            WTF::String::String(v45, "<");
            v45[2] = 0;
            v24 = *v31;
            if (*v31)
            {
              atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
            }

            v46 = v24;
            v47 = 0;
            WTF::String::String(v48, " id=");
            v48[2] = 0;
            v25 = *a3;
            if (*a3)
            {
              atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
            }

            v49 = v25;
            v50 = 0;
            WTF::String::String(v51, ">");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, buf, 6uLL);
            (*(*v23 + 16))(v23, &WebKit2LogFullscreen, 0, v33);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v26);
            for (i = 88; i != -8; i -= 16)
            {
              v28 = *&buf[i];
              *&buf[i] = 0;
              if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v14);
              }
            }

            ++v21;
          }

          while (v21 != v22);
        }

        v29 = 1;
        atomic_compare_exchange_strong_explicit(v16, &v29, 0, memory_order_release, memory_order_relaxed);
        if (v29 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v38;
  v38 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::EnterFullScreen,WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0>(WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11235D0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
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

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::EnterFullScreen,WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0>(WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11235D0;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::EnterFullScreen,WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0>(WebKit::WebFullScreenManager::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3)
  {
    if (*a3)
    {
      v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if (v4 & 0x100) != 0 && (v4)
      {
        return WebKit::WebFullScreenManager::willEnterFullScreen(*(a1 + 8), *(a1 + 24), (a1 + 32), (a1 + 40), 1);
      }
    }
  }

  v9[0] = 8;
  v10 = 0;
  v11 = 1;
  WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)>::operator()((a1 + 32), v9);
  if (v11 == 1)
  {
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  (*(*v8 + 16))(v8, 0);
  return (*(*v8 + 8))(v8);
}

void *WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11235F8;
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
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11235F8;
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
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = WebKit::WebFullScreenManager::didExitFullScreen(v1, (a1 + 24));
  *(v1 + 170) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::ExitFullScreen,WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1123620;
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
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::ExitFullScreen,WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1>(WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebFullScreenManager::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1123620;
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
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::BeganEnterFullScreen,WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0>(WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1123648;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::BeganEnterFullScreen,WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0>(WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1123648;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::BeganEnterFullScreen,WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0>(WebKit::WebFullScreenManager::willEnterFullScreen(WebCore::Element &,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&,unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<BOOL ()(BOOL)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (v4 & 0x100) != 0) && (v4 & 1) != 0 || *(a1 + 24) == 4)
  {
    v8 = *(a1 + 8);

    return WebKit::WebFullScreenManager::didEnterFullScreen(v8, (a1 + 32));
  }

  else
  {
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::BeganExitFullScreen,WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1123670;
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
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebFullScreenManagerProxy::BeganExitFullScreen,WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebFullScreenManager::willExitFullScreen(WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1123670;
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
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::requestRestoreFullScreen(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebCore::ExceptionOr<void>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1123698;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::requestRestoreFullScreen(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebCore::ExceptionOr<void>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1123698;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFullScreenManager::requestRestoreFullScreen(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebCore::ExceptionOr<void>>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  v4 = v3 ^ 1u;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, v4);
  result = (*(*v5 + 8))(v5);
  if ((v4 & 1) == 0 && v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v2, v7);
  }

  return result;
}

atomic_uchar **WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *a1)
{
  if (*a1)
  {
    v2 = *(*a1 - 12);
  }

  else
  {
    v2 = 0;
  }

  v3 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(v2);

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::rehash(a1, v3, 0);
}

atomic_uchar **WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, atomic_uchar **a3)
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
  v11 = 0;
  if (v7)
  {
    v12 = v7;
    v13 = v6;
    do
    {
      if (*v13 != -1)
      {
        if (*v13 == 0)
        {
          *v13 = 0;
        }

        else
        {
          v14 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::lookupForReinsert(a1, v13);
          v15 = *v14;
          *v14 = 0;
          if (v15)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v15, v10);
          }

          v16 = *v13;
          *v13 = 0;
          *v14 = v16;
          v17 = *v13;
          *v13 = 0;
          if (v17)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v17, v10);
          }

          if (v13 == a3)
          {
            v11 = v14;
          }
        }
      }

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

_OWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>::hash(a2);
  v5 = 0;
  do
  {
    v6 = (v2 + 16 * (v4 & v3));
    v4 = ++v5 + (v4 & v3);
  }

  while (*v6 != 0);
  return v6;
}

unint64_t WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::GPUProcessConnection::Client const*>::hash(void *a1)
{
  v1 = ~(*a1 << 32) + *a1;
  v2 = (v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13);
  v3 = (9 * (v2 ^ (v2 >> 8))) ^ ((9 * (v2 ^ (v2 >> 8))) >> 15);
  v4 = ~(a1[1] << 32) + a1[1];
  v5 = 9 * (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) ^ (((v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  return (0xD7862706ELL * (277951225 * (((v3 + ~(v3 << 27)) >> 31) ^ (v3 + ~(v3 << 27))) + 95187966 * ((v6 >> 31) ^ v6))) >> 4;
}

uint64_t WebKit::SampleBufferDisplayLayerManager::operator new(WebKit::SampleBufferDisplayLayerManager *this, void *a2)
{
  if (this == 32 && WebKit::SampleBufferDisplayLayerManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SampleBufferDisplayLayerManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::SampleBufferDisplayLayerManager::operatorNewSlow(this);
  }
}

uint64_t Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *a1);
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t Messages::GPUConnectionToWebProcess::DestroyVisibilityPropagationContextForPage::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, v4);
}

uint64_t Messages::GPUConnectionToWebProcess::ConfigureLoggingChannel::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 9);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

void *Messages::GPUConnectionToWebProcess::SetMediaEnvironment::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t Messages::GPUConnectionToWebProcess::CreateRenderingBackend::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  v4 = *(a1 + 8);

  return IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::encode(a2, v4);
}

uint64_t Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebCore::GraphicsContextGLAttributes,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 16));
  v4 = *(a1 + 24);

  return IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::encode(a2, v4);
}

uint64_t Messages::GPUConnectionToWebProcess::CreateGPU::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::encode(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11236C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11236C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v18);
    if (v19)
    {
      goto LABEL_4;
    }

    v9 = *a3;
    v10 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v11 = a3[3];
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
      if (v19)
      {
LABEL_4:
        v15 = v18[0];
        v16 = v18[1];
        v17 = 1;
        v5 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v5 + 16))(v5, &v15);
        result = (*(*v5 + 8))(v5);
        if (v17)
        {
          result = v15;
          if (v15)
          {
            v15 = 0;
            LODWORD(v16) = 0;
            return WTF::fastFree(result, v7);
          }
        }

        return result;
      }

      v12 = *a3;
      v13 = a3[1];
      v14 = a3[3];
      *a3 = 0;
      a3[1] = 0;
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    return IPC::Connection::cancelReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8));
  }

  v8 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v8);
}

WTF *IPC::Connection::cancelReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *a1;
  *a1 = 0;
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

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11236E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11236E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1123710;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1123710;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, _BYTE *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = *(a3 + 1);
    v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v36 = *(a3 + 3);
      if (v36)
      {
        if (v6)
        {
          (*(*v36 + 16))(v36);
          a2 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_65;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_65:
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (v37 && v6)
      {
        (*(*v37 + 16))(v37, a2);
      }

      goto LABEL_55;
    }

    *(a3 + 2) = v7 + 8;
    if (!v7)
    {
      goto LABEL_65;
    }

    v9 = *v7;
    v51 = 0;
    v52 = 0;
    if (v9 >= 0x5555)
    {
      while (1)
      {
        result = IPC::Decoder::decode<WebCore::ShapeDetection::DetectedBarcode>(&v44, a3);
        v24 = v50;
        if (v50 == 1)
        {
          v25 = HIDWORD(v52);
          if (HIDWORD(v52) == v52)
          {
            result = WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedBarcode>(&v51, &v44);
          }

          else
          {
            v26 = v51 + 48 * HIDWORD(v52);
            *v26 = v44;
            v27 = v45;
            v45 = 0;
            *(v26 + 16) = v27;
            *(v26 + 24) = v46;
            *(v26 + 32) = 0;
            *(v26 + 40) = 0;
            v28 = v47;
            v47 = 0;
            *(v26 + 32) = v28;
            LODWORD(v28) = v48;
            v48 = 0;
            *(v26 + 40) = v28;
            LODWORD(v28) = v49;
            v49 = 0;
            *(v26 + 44) = v28;
            HIDWORD(v52) = v25 + 1;
          }
        }

        if (v50 == 1)
        {
          v29 = v47;
          if (v47)
          {
            v47 = 0;
            v48 = 0;
            WTF::fastFree(v29, a2);
          }

          result = v45;
          v45 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (!--v9)
        {
          LODWORD(v9) = v52;
          v18 = HIDWORD(v52);
          v17 = v51;
          if (v52 <= HIDWORD(v52))
          {
            goto LABEL_29;
          }

          v30 = v51;
          if (HIDWORD(v52))
          {
            if (HIDWORD(v52) >= 0x5555556)
            {
              __break(0xC471u);
              return result;
            }

            v30 = WTF::fastMalloc((48 * HIDWORD(v52)));
            LODWORD(v9) = 48 * v18 / 0x30;
            if (v30 != v17)
            {
              WTF::VectorMover<false,WebCore::ShapeDetection::DetectedBarcode>::move(v17, (v17 + 48 * v18), v30);
            }
          }

          if (v17)
          {
            if (v30 == v17)
            {
              LODWORD(v9) = 0;
              v30 = 0;
              v51 = 0;
              LODWORD(v52) = 0;
            }

            WTF::fastFree(v17, a2);
          }

          v17 = v30;
          goto LABEL_29;
        }
      }
    }

    if (v9)
    {
      LODWORD(v52) = 48 * v9 / 0x30u;
      v51 = WTF::fastMalloc((48 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ShapeDetection::DetectedBarcode>(&v44, a3);
        v10 = v50;
        if (v50 == 1)
        {
          v11 = HIDWORD(v52);
          if (HIDWORD(v52) == v52)
          {
            WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedBarcode>(&v51, &v44);
          }

          else
          {
            v12 = v51 + 48 * HIDWORD(v52);
            *v12 = v44;
            v13 = v45;
            v45 = 0;
            *(v12 + 16) = v13;
            *(v12 + 24) = v46;
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            v14 = v47;
            v47 = 0;
            *(v12 + 32) = v14;
            LODWORD(v14) = v48;
            v48 = 0;
            *(v12 + 40) = v14;
            LODWORD(v14) = v49;
            v49 = 0;
            *(v12 + 44) = v14;
            HIDWORD(v52) = v11 + 1;
          }
        }

        if (v50 == 1)
        {
          v15 = v47;
          if (v47)
          {
            v47 = 0;
            v48 = 0;
            WTF::fastFree(v15, a2);
          }

          v16 = v45;
          v45 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, a2);
          }
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v17 = v51;
          LODWORD(v9) = v52;
          v18 = HIDWORD(v52);
          goto LABEL_29;
        }
      }

LABEL_54:
      WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, a2);
LABEL_55:
      v31 = *a3;
      v32 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v33 = *(a3 + 3);
      if (v33 && v32)
      {
        (*(*v33 + 16))(v33, v31);
        v34 = *(a3 + 3);
        v31 = *a3;
        v35 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v34)
        {
          if (v35)
          {
            (*(*v34 + 16))(v34, v31);
          }
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      return IPC::Connection::cancelReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v31, a4);
    }

    v18 = 0;
    v17 = 0;
LABEL_29:
    v51 = 0;
    v52 = 0;
    v43 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, a2);
    v42[0] = 0;
    v42[1] = 0;
    v38 = v17;
    v39 = v9;
    v40 = v18;
    v41 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v21);
    v22 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v22 + 16))(v22, &v38);
    result = (*(*v22 + 8))(v22);
    if (v41)
    {
      return WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v23);
    }
  }

  else
  {
    v19 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v19, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ShapeDetection::DetectedBarcode>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedBarcode,void>::decode(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
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

WTF *WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedBarcode>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 48 * a1[3];
  *v4 = *v3;
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  v6 = *(v3 + 24);
  *(v4 + 32) = 0;
  v4 += 32;
  *(v4 - 16) = v5;
  *(v4 - 8) = v6;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 32));
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A4518);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 48 * *(result + 3));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 2) = v5 / 0x30;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ShapeDetection::DetectedBarcode>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ShapeDetection::DetectedBarcode>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 2);
      *(v5 + 2) = 0;
      v7 = *(v5 + 24);
      *(a3 + 32) = 0;
      v8 = a3 + 32;
      *(v8 - 16) = v6;
      *(v8 - 8) = v7;
      *(v8 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v8, v5 + 8);
      v10 = *(v5 + 4);
      if (v10)
      {
        *(v5 + 4) = 0;
        *(v5 + 10) = 0;
        WTF::fastFree(v10, v9);
      }

      result = *(v5 + 2);
      *(v5 + 2) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }

      v5 = (v5 + 48);
      a3 = v8 + 16;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBarcodeDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1123738;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBarcodeDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1123738;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBarcodeDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBarcodeDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1123760;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1123760;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, _BYTE *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = *(a3 + 1);
    v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v31 = *(a3 + 3);
      if (v31)
      {
        if (v6)
        {
          (*(*v31 + 16))(v31);
          a2 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_63;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_63:
      *a3 = 0;
      *(a3 + 1) = 0;
      v32 = *(a3 + 3);
      if (v32 && v6)
      {
        (*(*v32 + 16))(v32, a2);
      }

      goto LABEL_48;
    }

    *(a3 + 2) = v7 + 8;
    if (!v7)
    {
      goto LABEL_63;
    }

    v9 = *v7;
    v45 = 0;
    v46 = 0;
    if (v9 >= 0x6666)
    {
      while (1)
      {
        result = IPC::Decoder::decode<WebCore::ShapeDetection::DetectedFace>(&v39, a3);
        v21 = v44;
        if (v44 == 1)
        {
          v22 = HIDWORD(v46);
          if (HIDWORD(v46) == v46)
          {
            result = WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedFace>(&v45, &v39);
          }

          else
          {
            v23 = v45 + 40 * HIDWORD(v46);
            *v23 = v39;
            *(v23 + 16) = 0;
            *(v23 + 32) = 0;
            if (v43 == 1)
            {
              *(v23 + 16) = 0;
              *(v23 + 24) = 0;
              v24 = v40;
              v40 = 0;
              *(v23 + 16) = v24;
              LODWORD(v24) = v41;
              v41 = 0;
              *(v23 + 24) = v24;
              LODWORD(v24) = v42;
              v42 = 0;
              *(v23 + 28) = v24;
              *(v23 + 32) = 1;
            }

            HIDWORD(v46) = v22 + 1;
          }
        }

        if (v44 == 1 && v43 == 1)
        {
          result = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, a2);
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_47;
        }

        if (!--v9)
        {
          LODWORD(v9) = v46;
          v15 = HIDWORD(v46);
          v14 = v45;
          if (v46 <= HIDWORD(v46))
          {
            goto LABEL_28;
          }

          v25 = v45;
          if (HIDWORD(v46))
          {
            if (HIDWORD(v46) >= 0x6666667)
            {
              __break(0xC471u);
              return result;
            }

            v25 = WTF::fastMalloc((40 * HIDWORD(v46)));
            LODWORD(v9) = 40 * v15 / 0x28;
            if (v25 != v14)
            {
              WTF::VectorMover<false,WebCore::ShapeDetection::DetectedFace>::move(v14, v14 + 5 * v15, v25);
            }
          }

          if (v14)
          {
            if (v25 == v14)
            {
              LODWORD(v9) = 0;
              v25 = 0;
            }

            WTF::fastFree(v14, a2);
          }

          v14 = v25;
          goto LABEL_28;
        }
      }
    }

    if (v9)
    {
      LODWORD(v46) = 40 * v9 / 0x28u;
      v45 = WTF::fastMalloc((40 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ShapeDetection::DetectedFace>(&v39, a3);
        v10 = v44;
        if (v44 == 1)
        {
          v11 = HIDWORD(v46);
          if (HIDWORD(v46) == v46)
          {
            WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedFace>(&v45, &v39);
          }

          else
          {
            v12 = v45 + 40 * HIDWORD(v46);
            *v12 = v39;
            *(v12 + 16) = 0;
            *(v12 + 32) = 0;
            if (v43 == 1)
            {
              *(v12 + 16) = 0;
              *(v12 + 24) = 0;
              v13 = v40;
              v40 = 0;
              *(v12 + 16) = v13;
              LODWORD(v13) = v41;
              v41 = 0;
              *(v12 + 24) = v13;
              LODWORD(v13) = v42;
              v42 = 0;
              *(v12 + 28) = v13;
              *(v12 + 32) = 1;
            }

            HIDWORD(v46) = v11 + 1;
          }
        }

        if (v44 == 1 && v43 == 1)
        {
          WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, a2);
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v14 = v45;
          LODWORD(v9) = v46;
          v15 = HIDWORD(v46);
          goto LABEL_28;
        }
      }

LABEL_47:
      WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
LABEL_48:
      v26 = *a3;
      v27 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *(a3 + 3);
      if (v28 && v27)
      {
        (*(*v28 + 16))(v28, v26);
        v29 = *(a3 + 3);
        v26 = *a3;
        v30 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v29)
        {
          if (v30)
          {
            (*(*v29 + 16))(v29, v26);
          }
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      return IPC::Connection::cancelReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v26, a4);
    }

    v15 = 0;
    v14 = 0;
LABEL_28:
    v45 = 0;
    v46 = 0;
    v38 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
    v37[0] = 0;
    v37[1] = 0;
    v33 = v14;
    v34 = v9;
    v35 = v15;
    v36 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v18);
    v19 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v19 + 16))(v19, &v33);
    result = (*(*v19 + 8))(v19);
    if (v36)
    {
      return WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v20);
    }
  }

  else
  {
    v16 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v16, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

uint64_t IPC::Decoder::decode<WebCore::ShapeDetection::DetectedFace>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedFace,void>::decode(a2, a1);
  if ((a1[40] & 1) == 0)
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

unint64_t WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedFace>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *result;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  if (*(result + 32) == 1)
  {
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 16, (result + 16));
    *(v4 + 32) = 1;
  }

  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t *WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A5038);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 40 * *(result + 3));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 2) = v5 / 0x28;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ShapeDetection::DetectedFace>::move(v3, v4, v6);
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

void *WTF::VectorMover<false,WebCore::ShapeDetection::DetectedFace>::move(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 8;
      v8 = &v5[v6];
      *v7 = *&v5[v6];
      *(a3 + v6 * 8 + 16) = 0;
      result = (a3 + v6 * 8 + 16);
      *(v7 + 32) = 0;
      if (LOBYTE(v5[v6 + 4]) == 1)
      {
        *result = 0;
        *(a3 + v6 * 8 + 24) = 0;
        result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(result, v8 + 4);
        *(v7 + 32) = 1;
        if (v8[4])
        {
          result = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v8 + 2), v9);
        }
      }

      v6 += 5;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteFaceDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1123788;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteFaceDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1123788;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteFaceDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteFaceDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11237B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11237B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, _BYTE *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = *(a3 + 1);
    v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v36 = *(a3 + 3);
      if (v36)
      {
        if (v6)
        {
          (*(*v36 + 16))(v36);
          a2 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_65;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_65:
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (v37 && v6)
      {
        (*(*v37 + 16))(v37, a2);
      }

      goto LABEL_55;
    }

    *(a3 + 2) = v7 + 8;
    if (!v7)
    {
      goto LABEL_65;
    }

    v9 = *v7;
    v50 = 0;
    v51 = 0;
    if (v9 >= 0x6666)
    {
      while (1)
      {
        result = IPC::Decoder::decode<WebCore::ShapeDetection::DetectedText>(&v44, a3);
        v24 = v49;
        if (v49 == 1)
        {
          v25 = HIDWORD(v51);
          if (HIDWORD(v51) == v51)
          {
            result = WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedText>(&v50, &v44);
          }

          else
          {
            v26 = v50 + 40 * HIDWORD(v51);
            *v26 = v44;
            v27 = v45;
            v45 = 0;
            *(v26 + 24) = 0;
            *(v26 + 32) = 0;
            *(v26 + 16) = v27;
            v28 = v46;
            v46 = 0;
            *(v26 + 24) = v28;
            LODWORD(v28) = v47;
            v47 = 0;
            *(v26 + 32) = v28;
            LODWORD(v28) = v48;
            v48 = 0;
            *(v26 + 36) = v28;
            HIDWORD(v51) = v25 + 1;
          }
        }

        if (v49 == 1)
        {
          v29 = v46;
          if (v46)
          {
            v46 = 0;
            v47 = 0;
            WTF::fastFree(v29, a2);
          }

          result = v45;
          v45 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (!--v9)
        {
          LODWORD(v9) = v51;
          v18 = HIDWORD(v51);
          v17 = v50;
          if (v51 <= HIDWORD(v51))
          {
            goto LABEL_29;
          }

          v30 = v50;
          if (HIDWORD(v51))
          {
            if (HIDWORD(v51) >= 0x6666667)
            {
              __break(0xC471u);
              return result;
            }

            v30 = WTF::fastMalloc((40 * HIDWORD(v51)));
            LODWORD(v9) = 40 * v18 / 0x28;
            if (v30 != v17)
            {
              WTF::VectorMover<false,WebCore::ShapeDetection::DetectedText>::move(v17, (v17 + 40 * v18), v30);
            }
          }

          if (v17)
          {
            if (v30 == v17)
            {
              LODWORD(v9) = 0;
              v30 = 0;
              v50 = 0;
              LODWORD(v51) = 0;
            }

            WTF::fastFree(v17, a2);
          }

          v17 = v30;
          goto LABEL_29;
        }
      }
    }

    if (v9)
    {
      LODWORD(v51) = 40 * v9 / 0x28u;
      v50 = WTF::fastMalloc((40 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ShapeDetection::DetectedText>(&v44, a3);
        v10 = v49;
        if (v49 == 1)
        {
          v11 = HIDWORD(v51);
          if (HIDWORD(v51) == v51)
          {
            WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedText>(&v50, &v44);
          }

          else
          {
            v12 = v50 + 40 * HIDWORD(v51);
            *v12 = v44;
            v13 = v45;
            v45 = 0;
            *(v12 + 24) = 0;
            *(v12 + 32) = 0;
            *(v12 + 16) = v13;
            v14 = v46;
            v46 = 0;
            *(v12 + 24) = v14;
            LODWORD(v14) = v47;
            v47 = 0;
            *(v12 + 32) = v14;
            LODWORD(v14) = v48;
            v48 = 0;
            *(v12 + 36) = v14;
            HIDWORD(v51) = v11 + 1;
          }
        }

        if (v49 == 1)
        {
          v15 = v46;
          if (v46)
          {
            v46 = 0;
            v47 = 0;
            WTF::fastFree(v15, a2);
          }

          v16 = v45;
          v45 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, a2);
          }
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v17 = v50;
          LODWORD(v9) = v51;
          v18 = HIDWORD(v51);
          goto LABEL_29;
        }
      }

LABEL_54:
      WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, a2);
LABEL_55:
      v31 = *a3;
      v32 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v33 = *(a3 + 3);
      if (v33 && v32)
      {
        (*(*v33 + 16))(v33, v31);
        v34 = *(a3 + 3);
        v31 = *a3;
        v35 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v34)
        {
          if (v35)
          {
            (*(*v34 + 16))(v34, v31);
          }
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      return IPC::Connection::cancelReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v31, a4);
    }

    v18 = 0;
    v17 = 0;
LABEL_29:
    v50 = 0;
    v51 = 0;
    v43 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, a2);
    v42[0] = 0;
    v42[1] = 0;
    v38 = v17;
    v39 = v9;
    v40 = v18;
    v41 = 1;
    WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v21);
    v22 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v22 + 16))(v22, &v38);
    result = (*(*v22 + 8))(v22);
    if (v41)
    {
      return WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v23);
    }
  }

  else
  {
    v19 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v19, a2, a4);
  }

  return result;
}