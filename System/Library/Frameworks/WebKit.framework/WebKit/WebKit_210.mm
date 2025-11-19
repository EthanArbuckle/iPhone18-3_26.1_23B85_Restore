void WebKit::WebEditorClient::didApplyStyle(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::sendEditorStateUpdate((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::didBeginEditing(WebKit::WebEditorClient *this)
{
  if ((_MergedGlobals_114 & 1) == 0)
  {
    atomic_fetch_add_explicit(WebKit::WebEditorClient::didBeginEditing(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    qword_1ED642C68 = WebKit::WebEditorClient::didBeginEditing(void)::$_0::operator() const(void)::impl;
    _MergedGlobals_114 = 1;
  }

  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 352);
      v4 = qword_1ED642C68;
      if (qword_1ED642C68)
      {
        atomic_fetch_add_explicit(qword_1ED642C68, 2u, memory_order_relaxed);
      }

      v7 = v4;
      (*(*v3 + 72))(v3, v2 - 16, &v7);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebEditorClient::respondToChangedContents(WebKit::WebEditorClient *this)
{
  if ((byte_1ED642C61 & 1) == 0)
  {
    atomic_fetch_add_explicit(WebKit::WebEditorClient::respondToChangedContents(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    qword_1ED642C70 = WebKit::WebEditorClient::respondToChangedContents(void)::$_0::operator() const(void)::impl;
    byte_1ED642C61 = 1;
  }

  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 352);
      v4 = qword_1ED642C70;
      if (qword_1ED642C70)
      {
        atomic_fetch_add_explicit(qword_1ED642C70, 2u, memory_order_relaxed);
      }

      v7 = v4;
      (*(*v3 + 88))(v3, v2 - 16, &v7);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }

      WebKit::WebPage::sendEditorStateUpdate((v2 - 16));
      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebEditorClient::respondToChangedSelection(WebKit::WebEditorClient *this, WebCore::LocalFrame *a2)
{
  if ((byte_1ED642C62 & 1) == 0)
  {
    atomic_fetch_add_explicit(WebKit::WebEditorClient::respondToChangedSelection(WebCore::LocalFrame *)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    qword_1ED642C78 = WebKit::WebEditorClient::respondToChangedSelection(WebCore::LocalFrame *)::$_0::operator() const(void)::impl;
    byte_1ED642C62 = 1;
  }

  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v5 = *(v4 + 352);
      v6 = qword_1ED642C78;
      if (qword_1ED642C78)
      {
        atomic_fetch_add_explicit(qword_1ED642C78, 2u, memory_order_relaxed);
      }

      v9 = v6;
      (*(*v5 + 96))(v5, v4 - 16, &v9);
      v8 = v9;
      v9 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      if (a2)
      {
        WebKit::WebPage::didChangeSelection((v4 - 16), a2);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebEditorClient::didEndUserTriggeredSelectionChanges(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::didEndUserTriggeredSelectionChanges((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::updateEditorStateAfterLayoutIfEditabilityChanged(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::updateEditorStateAfterLayoutIfEditabilityChanged((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::didUpdateComposition(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::sendEditorStateUpdate((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::discardedComposition(WebKit::WebEditorClient *this, const WebCore::Document *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::discardedComposition((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebEditorClient::canceledComposition(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::canceledComposition((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::didEndEditing(WebKit::WebEditorClient *this)
{
  if ((byte_1ED642C63 & 1) == 0)
  {
    atomic_fetch_add_explicit(WebKit::WebEditorClient::didEndEditing(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    qword_1ED642C80 = WebKit::WebEditorClient::didEndEditing(void)::$_0::operator() const(void)::impl;
    byte_1ED642C63 = 1;
  }

  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 352);
      v4 = qword_1ED642C80;
      if (qword_1ED642C80)
      {
        atomic_fetch_add_explicit(qword_1ED642C80, 2u, memory_order_relaxed);
      }

      v7 = v4;
      (*(*v3 + 80))(v3, v2 - 16, &v7);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebEditorClient::didWriteSelectionToPasteboard(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      (*(**(v2 + 352) + 120))(*(v2 + 352), v2 - 16);
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::willWriteSelectionToPasteboard(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      (*(**(v3 + 352) + 104))(*(v3 + 352), v3 - 16, a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

uint64_t WebKit::WebEditorClient::getClientPasteboardData(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  if (a3[3])
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *a3;
      v9 = HIDWORD(v45);
      if (HIDWORD(v45) == v45)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v44, v8 + v6);
      }

      else
      {
        v10 = v44;
        v11 = *(v8 + v6);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        v12 = HIDWORD(v45);
        *(v10 + 8 * v9) = v11;
        HIDWORD(v45) = v12 + 1;
      }

      if (v7 >= a3[3])
      {
        break;
      }

      v13 = *a3 + v6;
      v14 = HIDWORD(v43);
      if (HIDWORD(v43) == v43)
      {
        v15 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, v13 + 8);
        v16 = HIDWORD(v43);
        v17 = v42;
        v18 = *v15;
        if (*v15)
        {
          atomic_fetch_add((v18 + 8), 1u);
        }

        v19 = HIDWORD(v43);
        *(v17 + v16) = v18;
      }

      else
      {
        v20 = v42;
        v21 = *(v13 + 8);
        if (v21)
        {
          atomic_fetch_add((v21 + 8), 1u);
        }

        v19 = HIDWORD(v43);
        *(v20 + v14) = v21;
      }

      HIDWORD(v43) = v19 + 1;
      ++v7;
      v6 += 16;
      if (v7 >= a3[3])
      {
        goto LABEL_20;
      }
    }

    __break(0xC471u);
LABEL_47:
    JUMPOUT(0x19E3801D8);
  }

LABEL_20:
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(v22 + 8);
    if (v23)
    {
      CFRetain(*(v23 - 8));
      (*(**(v23 + 352) + 112))(*(v23 + 352), v23 - 16, a2, &v44, &v42);
      CFRelease(*(v23 - 8));
    }
  }

  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a3, 0);
  if (HIDWORD(v45))
  {
    v25 = 0;
    while (v25 < HIDWORD(v43))
    {
      v26 = v42;
      v27 = *(v44 + 8 * v25);
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v40 = v27;
      v28 = *(v26 + v25);
      if (v28)
      {
        atomic_fetch_add((v28 + 8), 1u);
      }

      v41 = v28;
      v29 = a3[3];
      if (v29 == a3[2])
      {
        v30 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v29 + 1, &v40);
        v29 = a3[3];
        v31 = (*a3 + 16 * v29);
        v32 = *v30;
        *v30 = 0;
        v33 = (v30 + 1);
        *v31 = v32;
      }

      else
      {
        v34 = v40;
        v31 = (*a3 + 16 * v29);
        v40 = 0;
        *v31 = v34;
        v33 = &v41;
      }

      v35 = *v33;
      *v33 = 0;
      v31[1] = v35;
      a3[3] = v29 + 1;
      v36 = v41;
      v41 = 0;
      if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v36 + 2);
        (*(*v36 + 8))(v36);
      }

      v37 = v40;
      v40 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v24);
      }

      if (++v25 >= HIDWORD(v45))
      {
        goto LABEL_40;
      }
    }

    __break(0xC471u);
    goto LABEL_47;
  }

LABEL_40:
  v38 = v42;
  if (HIDWORD(v43))
  {
    WTF::VectorDestructor<true,WebCore::SharedBufferBuilder>::destruct(v42, v42 + HIDWORD(v43));
    v38 = v42;
  }

  if (v38)
  {
    v42 = 0;
    LODWORD(v43) = 0;
    WTF::fastFree(v38, v24);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v24);
}

uint64_t WebKit::WebEditorClient::performTwoStepDrop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  CFRetain(*(v5 - 8));
  v9 = (*(**(v5 + 352) + 128))(*(v5 + 352), v5 - 16, a2, a3, a4);
  CFRelease(*(v5 - 8));
  return v9;
}

void WebKit::WebEditorClient::registerUndoStep(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      if ((*(v3 + 185) & 1) == 0)
      {
        ++a2[2];
        v5 = WTF::fastMalloc(0x18);
        v6 = WebKit::generateUndoStep(void)::uniqueEntryID++;
        *v5 = 1;
        *(v5 + 8) = a2;
        *(v5 + 16) = v6;
        v16 = v5;
        v18 = v6;
        WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::WebUndoStep,WTF::RawPtrTraits<WebKit::WebUndoStep>,WTF::DefaultRefDerefTraits<WebKit::WebUndoStep>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::WebUndoStep,WTF::RawPtrTraits<WebKit::WebUndoStep>,WTF::DefaultRefDerefTraits<WebKit::WebUndoStep>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WTF::Ref<WebKit::WebUndoStep,WTF::RawPtrTraits<WebKit::WebUndoStep>,WTF::DefaultRefDerefTraits<WebKit::WebUndoStep>>>((v3 + 344), &v18, &v16, v17);
        (*(*a2 + 40))(&v18, a2);
        v7 = (*(*(v3 + 16) + 56))(v3 + 16);
        v9 = IPC::Encoder::operator new(0x238, v8);
        *v9 = 2319;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = v7;
        *(v9 + 68) = 0;
        *(v9 + 70) = 0;
        *(v9 + 69) = 0;
        IPC::Encoder::encodeHeader(v9);
        v17[0] = v9;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, &v18);
        (*(*(v3 + 16) + 32))(v3 + 16, v17, 1);
        v11 = v17[0];
        v17[0] = 0;
        if (v11)
        {
          IPC::Encoder::~Encoder(v11, v10);
          bmalloc::api::tzoneFree(v14, v15);
        }

        v12 = v18;
        v18 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }

        v13 = v16;
        v16 = 0;
        if (v13)
        {
          WTF::RefCounted<WebKit::WebUndoStep>::deref(v13);
        }
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebEditorClient::clearUndoRedoOperations(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2159;
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

uint64_t WebKit::WebEditorClient::canUndo(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v12 = 0;
    v3 = (*(*(v2 + 16) + 56))(v2 + 16);
    v4 = (*(*(v2 + 16) + 48))(v2 + 16);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4;
    while (1)
    {
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v7 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
    IPC::Connection::sendSync<Messages::WebPageProxy::CanUndoRedo>(&v13, v5, &v12, v3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
    if (!v15)
    {
      v8 = v14;
      if (v13)
      {
        IPC::Decoder::~Decoder(v13);
        bmalloc::api::tzoneFree(v10, v11);
      }
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    CFRelease(*(v2 - 8));
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t WebKit::WebEditorClient::canRedo(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v12 = 1;
    v3 = (*(*(v2 + 16) + 56))(v2 + 16);
    v4 = (*(*(v2 + 16) + 48))(v2 + 16);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4;
    while (1)
    {
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v7 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
    IPC::Connection::sendSync<Messages::WebPageProxy::CanUndoRedo>(&v13, v5, &v12, v3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
    if (!v15)
    {
      v8 = v14;
      if (v13)
      {
        IPC::Decoder::~Decoder(v13);
        bmalloc::api::tzoneFree(v10, v11);
      }
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    CFRelease(*(v2 - 8));
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void WebKit::WebEditorClient::undo(WebKit::WebEditorClient *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v11 = 0;
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v4 = (*(*(v2 + 16) + 48))(v2 + 16);
      if (v4)
      {
        v5 = v4;
        while (1)
        {
          v6 = *v4;
          if ((*v4 & 1) == 0)
          {
            break;
          }

          v7 = *v4;
          atomic_compare_exchange_strong_explicit(v4, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v7 == v6)
          {
            goto LABEL_9;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
        IPC::Connection::sendSync<Messages::WebPageProxy::ExecuteUndoRedo>(&v12, v5, &v11, v3);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
        if (!v13 && v12)
        {
          IPC::Decoder::~Decoder(v12);
          bmalloc::api::tzoneFree(v9, v10);
        }
      }

      v13 = -1;
      v8 = *(v2 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebEditorClient::redo(WebKit::WebEditorClient *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v11 = 1;
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v4 = (*(*(v2 + 16) + 48))(v2 + 16);
      if (v4)
      {
        v5 = v4;
        while (1)
        {
          v6 = *v4;
          if ((*v4 & 1) == 0)
          {
            break;
          }

          v7 = *v4;
          atomic_compare_exchange_strong_explicit(v4, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v7 == v6)
          {
            goto LABEL_9;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
        IPC::Connection::sendSync<Messages::WebPageProxy::ExecuteUndoRedo>(&v12, v5, &v11, v3);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
        if (!v13 && v12)
        {
          IPC::Decoder::~Decoder(v12);
          bmalloc::api::tzoneFree(v9, v10);
        }
      }

      v13 = -1;
      v8 = *(v2 - 8);

      CFRelease(v8);
    }
  }
}

unsigned __int8 *WebKit::WebEditorClient::requestDOMPasteAccess(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  CFRetain(*(v5 - 8));
  v9 = WebKit::WebPage::requestDOMPasteAccess((v5 - 16), a2, a3, a4);
  CFRelease(*(v5 - 8));
  return v9;
}

void WebKit::WebEditorClient::textFieldDidBeginEditing(WebKit::WebEditorClient *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    *(a2 + 7) += 2;
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
    v6 = *(this + 4);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        (*(**(v7 + 360) + 24))(*(v7 + 360), v7 - 16, a2, v8);
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

void WebKit::WebEditorClient::textFieldDidEndEditing(WebKit::WebEditorClient *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    *(a2 + 7) += 2;
    WebKit::WebFrame::fromCoreFrame(*(*(*(*(a2 + 6) + 8) + 552) + 8), &v6);
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        CFRetain(*(v5 - 8));
        (*(**(v5 + 360) + 32))(*(v5 + 360), v5 - 16, a2, v6);
        CFRelease(*(v5 - 8));
      }
    }

    if (v6)
    {
      CFRelease(*(v6 + 8));
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

void WebKit::WebEditorClient::textDidChangeInTextField(WebKit::WebEditorClient *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    *(a2 + 7) += 2;
    v4 = WebCore::UserTypingGestureIndicator::processingUserTypingGesture(this);
    if (v4)
    {
      v5 = WebCore::UserTypingGestureIndicator::focusedElementAtGestureStart(v4) == a2;
    }

    else
    {
      v5 = 0;
    }

    WebKit::WebFrame::fromCoreFrame(*(*(*(*(a2 + 6) + 8) + 552) + 8), &v8);
    v6 = *(this + 4);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        (*(**(v7 + 360) + 40))(*(v7 + 360), v7 - 16, a2, v8, v5);
        CFRelease(*(v7 - 8));
      }
    }

    if (v8)
    {
      CFRelease(*(v8 + 8));
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

void WebKit::WebEditorClient::textDidChangeInTextArea(WebKit::WebEditorClient *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    *(a2 + 7) += 2;
    WebKit::WebFrame::fromCoreFrame(*(*(*(*(a2 + 6) + 8) + 552) + 8), &v8);
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = v5 - 16;
        v7 = v5;
        CFRetain(*(v5 - 8));
        (*(**(v7 + 360) + 48))(*(v7 + 360), v6, a2, v8);
        CFRelease(*(v7 - 8));
      }
    }

    if (v8)
    {
      CFRelease(*(v8 + 8));
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

uint64_t WebKit::WebEditorClient::doTextFieldCommandFromEvent(WebKit::WebEditorClient *this, WebCore::Element *a2, WebCore::KeyboardEvent *a3)
{
  if ((*(a2 + 16) & 0x10) == 0 || *(*(a2 + 13) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    return 0;
  }

  *(a2 + 7) += 2;
  v6 = *(a3 + 15);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  if (MEMORY[0x19EB01EF0](v6, "Up", 2))
  {
    v8 = 0;
  }

  else if (MEMORY[0x19EB01EF0](v6, "Down", 4))
  {
    v8 = 1;
  }

  else if (MEMORY[0x19EB01EF0](v6, "U+001B", 6))
  {
    v8 = 2;
  }

  else if (MEMORY[0x19EB01EF0](v6, "U+0009", 6))
  {
    if ((*(a3 + 92) & 8) != 0)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 5;
    if (!MEMORY[0x19EB01EF0](v6, "Enter", 5))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_11;
    }
  }

  v9 = 1;
LABEL_11:
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v7);
  }

  if (v9)
  {
    WebKit::WebFrame::fromCoreFrame(*(*(*(*(a2 + 6) + 8) + 552) + 8), &v14);
    v12 = *(this + 4);
    if (v12 && (v13 = *(v12 + 8)) != 0)
    {
      CFRetain(*(v13 - 8));
      v10 = (*(**(v13 + 360) + 56))(*(v13 + 360), v13 - 16, a2, v8, v14);
      CFRelease(*(v13 - 8));
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      CFRelease(*(v14 + 8));
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 7) == 2)
  {
    WebCore::Node::removedLastRef(a2);
  }

  else
  {
    *(a2 + 7) -= 2;
  }

  return v10;
}

void WebKit::WebEditorClient::textWillBeDeletedInTextField(WebKit::WebEditorClient *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    *(a2 + 7) += 2;
    WebKit::WebFrame::fromCoreFrame(*(*(*(*(a2 + 6) + 8) + 552) + 8), &v6);
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        CFRetain(*(v5 - 8));
        (*(**(v5 + 360) + 56))(*(v5 + 360), v5 - 16, a2, 6, v6);
        CFRelease(*(v5 - 8));
      }
    }

    if (v6)
    {
      CFRelease(*(v6 + 8));
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

void WebKit::WebEditorClient::ignoreWordInSpellDocument(WebKit::WebEditorClient *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2274;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
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

void WebKit::WebEditorClient::learnWord(WebKit::WebEditorClient *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2279;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
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

void WebKit::WebEditorClient::checkSpellingOfString(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v10 = v6 + 16;
      if ((a3 & 0x100000000) != 0)
      {
        if (a3)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_6:
          v11 = v37[0];
          goto LABEL_7;
        }
      }

      else if (a3)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        goto LABEL_6;
      }

      v11 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_7:
      v34 = v11;
      v12 = (*(*v10 + 56))(v6 + 16);
      v13 = (*(*v10 + 48))(v6 + 16);
      v15 = v13;
      if (!v13)
      {
        v20 = 3;
        goto LABEL_27;
      }

      while (1)
      {
        v16 = *v13;
        if ((*v13 & 1) == 0)
        {
          break;
        }

        v17 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_12:
      IPC::Connection::createSyncMessageEncoder(0x102B, v12, v37);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v37[0], &v34);
      v18 = IPC::Connection::sendSyncMessage(v15, v37[1], v37, 0, &v35, INFINITY);
      if (v36)
      {
        if (v36 != 1)
        {
          mpark::throw_bad_variant_access(v18);
        }

        v20 = v35;
        v21 = 1;
LABEL_24:
        v27 = v37[0];
        v37[0] = 0;
        if (v27)
        {
          IPC::Encoder::~Encoder(v27, v19);
          bmalloc::api::tzoneFree(v30, v31);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
        LOBYTE(v15) = v21 == 0;
        v11 = v34;
LABEL_27:
        v34 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v14);
          if (v15)
          {
LABEL_30:
            *a4 = a3;
            *a5 = HIDWORD(a3);
            if (v20)
            {
              IPC::Decoder::~Decoder(v20);
              bmalloc::api::tzoneFree(v28, v29);
            }

            goto LABEL_34;
          }
        }

        else if (v15)
        {
          goto LABEL_30;
        }

        *a4 = -1;
        *a5 = 0;
LABEL_34:
        CFRelease(*(v6 - 8));
        return;
      }

      v20 = v35;
      v35 = 0;
      if (*(v20 + 50) == 3194)
      {
        v22 = 11;
      }

      else
      {
        v23 = IPC::Decoder::decode<std::tuple<int,int>>(v20);
        if (v19)
        {
          a3 = v23;
          v21 = 0;
LABEL_21:
          if (!v36)
          {
            v26 = v35;
            v35 = 0;
            if (v26)
            {
              IPC::Decoder::~Decoder(v26);
              bmalloc::api::tzoneFree(v32, v33);
            }
          }

          goto LABEL_24;
        }

        v22 = 14;
      }

      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v24, v25);
      v21 = 1;
      v20 = v22;
      goto LABEL_21;
    }
  }
}

void WebKit::WebEditorClient::checkGrammarOfString(uint64_t a1, uint64_t a2, IPC::Decoder *a3, uint64_t a4, IPC::Decoder *a5, unsigned int *a6)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      v15 = v10 + 16;
      if ((a3 & 0x100000000) != 0)
      {
        if (a3)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_6:
          v16 = v84;
          goto LABEL_7;
        }
      }

      else if (a3)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        goto LABEL_6;
      }

      v16 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_7:
      v83 = v16;
      v17 = (*(*v15 + 56))(v10 + 16);
      v18 = (*(*v15 + 48))(v10 + 16);
      v21 = v18;
      if (!v18)
      {
        LOBYTE(v84) = 3;
        v88 = 1;
        goto LABEL_50;
      }

      while (1)
      {
        v22 = *v18;
        if ((*v18 & 1) == 0)
        {
          break;
        }

        v23 = *v18;
        atomic_compare_exchange_strong_explicit(v18, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_12:
      IPC::Connection::createSyncMessageEncoder(0x102A, v17, v95);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v95[0], &v83);
      v24 = IPC::Connection::sendSyncMessage(v21, v95[1], v95, 0, &v93, INFINITY);
      if (v94)
      {
        if (v94 != 1)
        {
          mpark::throw_bad_variant_access(v24);
        }

        LOBYTE(v84) = v93;
        v26 = 1;
        v88 = 1;
LABEL_47:
        v59 = v95[0];
        v95[0] = 0;
        if (v59)
        {
          IPC::Encoder::~Encoder(v59, v25);
          bmalloc::api::tzoneFree(v67, v68);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
        LOBYTE(v21) = v26 == 0;
LABEL_50:
        v60 = v83;
        v83 = 0;
        if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v60, v19);
          if (v21)
          {
            goto LABEL_53;
          }
        }

        else if (v21)
        {
LABEL_53:
          *&v20 = 0;
          v96[0] = 0;
          v96[1] = 0;
          v85 = v20;
          v97 = __PAIR64__(v6, a3);
          v61 = *(a4 + 12);
          if (v61)
          {
            WTF::VectorTypeOperations<WebCore::GrammarDetail>::destruct(*a4, (*a4 + 40 * v61));
          }

          v62 = *a4;
          if (*a4)
          {
            *a4 = 0;
            *(a4 + 8) = 0;
            WTF::fastFree(v62, v19);
          }

          *&v20 = 0;
          *v96 = v20;
          *a4 = v7;
          *(a4 + 8) = v8;
          *(a4 + 12) = v82;
          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v96, v19);
          *a5 = a3;
          *a6 = v6;
          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v63);
          v64 = v84;
          v84 = 0;
          if (v64)
          {
            IPC::Decoder::~Decoder(v64);
            bmalloc::api::tzoneFree(v65, v66);
          }

          goto LABEL_61;
        }

        *a5 = -1;
        *a6 = 0;
LABEL_61:
        CFRelease(*(v10 - 8));
        return;
      }

      v27 = v93;
      v93 = 0;
      if (*(v27 + 25) == 3194)
      {
        v28 = 11;
LABEL_37:
        LOBYTE(v84) = v28;
        v88 = 1;
        IPC::Decoder::~Decoder(v27);
        bmalloc::api::tzoneFree(v48, v49);
        v26 = 1;
LABEL_44:
        if (!v94)
        {
          v58 = v93;
          v93 = 0;
          if (v58)
          {
            IPC::Decoder::~Decoder(v58);
            bmalloc::api::tzoneFree(v69, v70);
          }
        }

        goto LABEL_47;
      }

      LOBYTE(v89[0]) = 0;
      v92 = 0;
      IPC::VectorArgumentCoder<false,WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v27, v96);
      if ((v97 & 1) == 0)
      {
        v73 = *v27;
        v74 = *(v27 + 1);
        *v27 = 0;
        *(v27 + 1) = 0;
        v75 = *(v27 + 3);
        if (!v75 || !v74 || ((*(*v75 + 16))(v75, v73), (v97 & 1) == 0))
        {
          v7 = 0;
          LOBYTE(v84) = 0;
          LOBYTE(v86) = 0;
          goto LABEL_69;
        }
      }

      v31 = *(v27 + 1);
      v32 = ((*(v27 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v33 = *v27;
      v34 = v32 - *v27;
      v35 = v31 >= v34;
      v36 = v31 - v34;
      if (!v35 || v36 <= 3)
      {
        goto LABEL_79;
      }

      *(v27 + 2) = v32 + 1;
      if (v32)
      {
        LODWORD(a3) = *v32;
        v38 = ((v32 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v31 < v38 - v33 || v31 - (v38 - v33) <= 3)
        {
LABEL_79:
          *v27 = 0;
          *(v27 + 1) = 0;
          a3 = v27;
          v78 = *(v27 + 3);
          if (!v78)
          {
            v31 = 0;
LABEL_81:
            v33 = 0;
            goto LABEL_82;
          }

          if (!v31)
          {
            goto LABEL_81;
          }

          (*(*v78 + 16))(v78);
          v33 = *v27;
          v31 = *(v27 + 1);
LABEL_82:
          *a3 = 0;
          *(a3 + 1) = 0;
          v27 = a3;
          v79 = *(a3 + 3);
          if (v79 && v31)
          {
            (*(*v79 + 16))(v79, v33);
          }

          v41 = 0;
          LOBYTE(v84) = 0;
          v40 = 1;
          goto LABEL_31;
        }

        *(v27 + 2) = v38 + 4;
        if (v38)
        {
          v40 = 0;
          v6 = *v38;
          v84 = v96[0];
          v30 = LODWORD(v96[1]);
          v29 = HIDWORD(v96[1]);
          v96[0] = 0;
          v96[1] = 0;
          *&v85 = __PAIR64__(v29, v30);
          v41 = 1;
          *(&v85 + 1) = __PAIR64__(v6, a3);
LABEL_31:
          LOBYTE(v86) = v41;
          if (v97)
          {
            v81 = v6;
            v82 = a3;
            a3 = a5;
            v42 = a6;
            v43 = v29;
            v7 = v30;
            v8 = v27;
            v44 = v10;
            v45 = a4;
            v46 = v41;
            v47 = v40;
            WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v96, v33);
            v40 = v47;
            v41 = v46;
            a4 = v45;
            v10 = v44;
            v27 = v8;
            LODWORD(v30) = v7;
            v29 = v43;
            a6 = v42;
            a5 = a3;
            v6 = v81;
            LODWORD(a3) = v82;
          }

          if (v41)
          {
            if ((v40 & 1) == 0)
            {
              v50 = 1;
LABEL_39:
              v7 = v84;
              v84 = 0;
              *&v85 = 0;
              v89[0] = v7;
              v90 = a3;
              v91 = v6;
              v92 = 1;
              if (v50)
              {
                v51 = v6;
                v52 = a3;
                a3 = a5;
                v53 = a6;
                v54 = v29;
                v55 = v30;
                WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v33);
                LODWORD(v30) = v55;
                v29 = v54;
                a6 = v53;
                a5 = a3;
                LODWORD(a3) = v52;
                v6 = v51;
                v7 = v89[0];
              }

              v89[0] = 0;
              v89[1] = 0;
              v98 = a3;
              v99 = v6;
              v96[0] = 0;
              v96[1] = 0;
              v84 = v27;
              *&v85 = v7;
              v97 = 0;
              LODWORD(v8) = v30;
              *(&v85 + 1) = __PAIR64__(v29, v30);
              v82 = v29;
              v86 = a3;
              v87 = v6;
              v88 = 0;
              WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v96[1], v33);
              v57 = v96[0];
              v96[0] = 0;
              if (v57)
              {
                IPC::Decoder::~Decoder(v57);
                bmalloc::api::tzoneFree(v71, v72);
              }

              WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v89, v56);
              v26 = 0;
              goto LABEL_44;
            }

            WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v33);
LABEL_36:
            v28 = 14;
            goto LABEL_37;
          }

          v7 = v41;
          v80 = v30;
          v82 = a3;
          LODWORD(a3) = v29;
LABEL_69:
          v33 = *v27;
          v76 = *(v27 + 1);
          *v27 = 0;
          *(v27 + 1) = 0;
          LODWORD(v8) = v27;
          v77 = *(v27 + 3);
          if (v77 && v76)
          {
            (*(*v77 + 16))(v77, v33);
          }

          if (v7)
          {
            v50 = 0;
            v29 = a3;
            LODWORD(v30) = v80;
            LODWORD(a3) = v82;
            goto LABEL_39;
          }

          goto LABEL_36;
        }
      }

      a3 = v27;
      goto LABEL_82;
    }
  }
}

void WebKit::WebEditorClient::checkTextOfParagraph(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, WebKit *a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    return;
  }

  CFRetain(*(v7 - 8));
  v11 = v7 + 16;
  v12 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_6:
      v13 = *v85;
      goto LABEL_7;
    }
  }

  else if (a2)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    goto LABEL_6;
  }

  v13 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_7:
  v84 = v13;
  v14 = WebKit::insertionPointFromCurrentSelection(a4, v12);
  v15 = (*(*v11 + 56))(v7 + 16);
  v16 = (*(*v11 + 48))(v7 + 16);
  if (v16)
  {
    v18 = v16;
    while (1)
    {
      v19 = *v16;
      if ((*v16 & 1) == 0)
      {
        break;
      }

      v20 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_13:
    IPC::Connection::createSyncMessageEncoder(0x102C, v15, v91);
    v21 = v91[0];
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v91[0], &v84);
    v85[0] = a3;
    IPC::Encoder::operator<<<unsigned char>(v21, v85);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v21, v14);
    v22 = IPC::Connection::sendSyncMessage(v18, v91[1], v91, 0, &v89, INFINITY);
    if (v90)
    {
      if (v90 != 1)
      {
        mpark::throw_bad_variant_access(v22);
      }

      v85[0] = v89;
      v25 = 1;
      v86 = 1;
LABEL_37:
      v49 = v91[0];
      v91[0] = 0;
      if (v49)
      {
        IPC::Encoder::~Encoder(v49, v23);
        bmalloc::api::tzoneFree(v77, v78);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
      goto LABEL_40;
    }

    v26 = v89;
    v89 = 0;
    if (*(v26 + 25) == 3194)
    {
      v27 = 11;
LABEL_33:
      v85[0] = v27;
      v86 = 1;
      IPC::Decoder::~Decoder(v26);
      bmalloc::api::tzoneFree(v46, v47);
      v25 = 1;
LABEL_34:
      if (!v90)
      {
        v48 = v89;
        v89 = 0;
        if (v48)
        {
          IPC::Decoder::~Decoder(v48);
          bmalloc::api::tzoneFree(v79, v80);
        }
      }

      goto LABEL_37;
    }

    IPC::VectorArgumentCoder<false,WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v26, v85, v24);
    if (v85[16])
    {
      goto LABEL_20;
    }

    v40 = 0;
    v41 = *v26;
    v42 = *(v26 + 1);
    *v26 = 0;
    *(v26 + 1) = 0;
    v43 = *(v26 + 3);
    if (v43)
    {
      if (v42)
      {
        (*(*v43 + 16))(*(v26 + 3), v41);
        if (v85[16])
        {
LABEL_20:
          *&v29 = 0;
          v30 = *v85;
          v31 = *&v85[8];
          *v85 = v29;
          v92[0] = v30;
          LOBYTE(v93) = 1;
          WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v85, v28);
          v32 = v92[0];
          *v92 = 0uLL;
          *&v87 = v32;
          *(&v87 + 1) = v31;
          v88 = 1;
          WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v92, v33);
          if (v88)
          {
            *&v35 = 0;
            v36 = v87;
            v87 = v35;
            v92[0] = 0;
            v92[1] = 0;
            *v85 = v26;
            *&v85[8] = v36;
            v93 = 0;
            v86 = 0;
            WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v92[1], v34);
            v37 = v92[0];
            v92[0] = 0;
            if (v37)
            {
              IPC::Decoder::~Decoder(v37);
              bmalloc::api::tzoneFree(v38, v39);
            }

            if (v88)
            {
              WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v23);
            }

            v25 = 0;
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v40 = *(v26 + 3);
      }

      else
      {
        v40 = *(v26 + 3);
      }
    }

    v44 = *v26;
    v45 = *(v26 + 1);
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v40 && v45)
    {
      (*(*v40 + 16))(v40, v44);
    }

LABEL_32:
    v27 = 14;
    goto LABEL_33;
  }

  v85[0] = 3;
  v25 = 1;
  v86 = 1;
LABEL_40:
  v50 = v84;
  v84 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v17);
  }

  v87 = 0uLL;
  v51 = &v87 + 8;
  if (v25)
  {
    v52 = &v87;
  }

  else
  {
    v52 = &v85[8];
  }

  v53 = *v52;
  *v52 = 0;
  v92[0] = v53;
  if (!v25)
  {
    v51 = &v85[16];
  }

  v54 = *v51;
  *v51 = 0;
  v55 = &v87 + 3;
  if (!v25)
  {
    v55 = &v85[20];
  }

  v56 = *v55;
  *v55 = 0;
  v92[1] = __PAIR64__(v56, v54);
  WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v17);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 12) = v56;
  if (v56)
  {
    v83 = v7;
    if (v56 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19E382454);
    }

    v58 = 3 * v56;
    v59 = (48 * v56);
    v60 = WTF::fastMalloc(v59);
    *(a5 + 8) = v59 / 0x30;
    *a5 = v60;
    v61 = &v53[v58];
    do
    {
      v62 = *v53;
      *(v60 + 16) = *(v53 + 2);
      *v60 = v62;
      v63 = *(v53 + 9);
      *(v60 + 24) = 0;
      *(v60 + 32) = 0;
      *(v60 + 36) = v63;
      if (v63)
      {
        if (v63 >= 0x6666667)
        {
          __break(0xC471u);
          JUMPOUT(0x19E38244CLL);
        }

        v64 = 40 * v63;
        v65 = WTF::fastMalloc((40 * v63));
        *(v60 + 32) = v64 / 0x28;
        *(v60 + 24) = v65;
        v66 = *(v53 + 9);
        if (v66)
        {
          v67 = *(v53 + 3);
          v68 = v67 + 40 * v66;
          v69 = v65 + 16;
          v70 = v67 + 16;
          do
          {
            *(v69 - 16) = *(v70 - 16);
            v71 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v69, v70);
            v72 = *(v70 + 16);
            if (v72)
            {
              atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
            }

            v73 = v70 - 16;
            *(v71 + 16) = v72;
            v69 = v71 + 40;
            v70 += 40;
          }

          while (v73 + 40 != v68);
        }
      }

      v74 = *(v53 + 5);
      if (v74)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
      }

      *(v60 + 40) = v74;
      v60 += 48;
      v53 += 3;
    }

    while (v53 != v61);
    v25 = v86;
    v7 = v83;
  }

  WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v92, v57);
  if (!v25)
  {
    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85[8], v75);
    v76 = *v85;
    *v85 = 0;
    if (v76)
    {
      IPC::Decoder::~Decoder(v76);
      bmalloc::api::tzoneFree(v81, v82);
    }
  }

  CFRelease(*(v7 - 8));
}

uint64_t WebKit::insertionPointFromCurrentSelection(WebKit *this, const WebCore::VisibleSelection *a2)
{
  WebCore::VisiblePosition::VisiblePosition();
  WebCore::startOfParagraph();
  WebCore::makeSimpleRange<WebCore::VisiblePosition &,WebCore::VisiblePosition>(&v10);
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
    }

    else
    {
      *(v9 + 7) -= 2;
    }
  }

  if (v12 == 1)
  {
    result = WebCore::characterCount();
    if (v12)
    {
      v3 = v11;
      v11 = 0;
      if (v3)
      {
        if (*(v3 + 7) == 2)
        {
          v7 = result;
          WebCore::Node::removedLastRef(v3);
          result = v7;
        }

        else
        {
          *(v3 + 7) -= 2;
        }
      }

      v4 = v10;
      v10 = 0;
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v4);
          result = v8;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  v5 = v13;
  v13 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v5);
      return v6;
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  return result;
}

void WebKit::WebEditorClient::updateSpellingUIWithGrammarString(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2409;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      IPC::ArgumentCoder<WebCore::GrammarDetail,void>::encode(v9, a3);
      (*(*(v4 + 16) + 32))(v4 + 16, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebEditorClient::updateSpellingUIWithMisspelledWord(WebKit::WebEditorClient *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2410;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
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

uint64_t WebKit::WebEditorClient::spellingUIIsShowing(WebKit::WebEditorClient *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = (*(*(v3 + 16) + 56))(v3 + 16);
      v5 = (*(*(v3 + 16) + 48))(v3 + 16);
      if (!v5)
      {
        goto LABEL_24;
      }

      v6 = v5;
      while (1)
      {
        v7 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v8 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_9:
      IPC::Connection::createSyncMessageEncoder(0x104E, v4, v28);
      v9 = IPC::Connection::sendSyncMessage(v6, v28[1], v28, 0, &v26, INFINITY);
      if (v27)
      {
        if (v27 != 1)
        {
          mpark::throw_bad_variant_access(v9);
        }

        v11 = v26;
        v12 = 1;
        goto LABEL_21;
      }

      v11 = v26;
      v26 = 0;
      if (*(v11 + 50) == 3194)
      {
        v13 = 11;
      }

      else
      {
        v16 = IPC::Decoder::decode<std::tuple<BOOL>>(v11);
        if (v16 >= 0x100u)
        {
          v1 = v16;
          v12 = 0;
          goto LABEL_18;
        }

        v13 = 14;
      }

      IPC::Decoder::~Decoder(v11);
      bmalloc::api::tzoneFree(v14, v15);
      v12 = 1;
      v11 = v13;
LABEL_18:
      if (!v27)
      {
        v17 = v26;
        v26 = 0;
        if (v17)
        {
          IPC::Decoder::~Decoder(v17);
          bmalloc::api::tzoneFree(v22, v23);
        }
      }

LABEL_21:
      v18 = v28[0];
      v28[0] = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v10);
        bmalloc::api::tzoneFree(v20, v21);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
      if (!v12)
      {
        if (v11)
        {
          IPC::Decoder::~Decoder(v11);
          bmalloc::api::tzoneFree(v24, v25);
        }

        goto LABEL_27;
      }

LABEL_24:
      v1 = 0;
LABEL_27:
      CFRelease(*(v3 - 8));
      return v1 & 1;
    }
  }

  v1 = 0;
  return v1 & 1;
}

void WebKit::WebEditorClient::getGuessesForWord(uint64_t a1, uint64_t *a2, uint64_t *a3, WebKit *a4, WTF::StringImpl **a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v12 = WebKit::insertionPointFromCurrentSelection(a4, v11);
      v13 = (*(*(v6 + 16) + 56))(v6 + 16);
      v14 = (*(*(v6 + 16) + 48))(v6 + 16);
      if (!v14)
      {
LABEL_30:
        CFRelease(*(v6 - 8));
        return;
      }

      v15 = v14;
      while (1)
      {
        v16 = *v14;
        if ((*v14 & 1) == 0)
        {
          break;
        }

        v17 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_9:
      IPC::Connection::createSyncMessageEncoder(0x1034, v13, v49);
      v18 = v49[0];
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v49[0], a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, a3);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v18, v12);
      v19 = IPC::Connection::sendSyncMessage(v15, v49[1], v49, 0, &v47, INFINITY);
      if (v48)
      {
        if (v48 != 1)
        {
          mpark::throw_bad_variant_access(v19);
        }

        LOBYTE(v40) = v47;
        v21 = 1;
        v43 = 1;
LABEL_25:
        v29 = v49[0];
        v49[0] = 0;
        if (v29)
        {
          IPC::Encoder::~Encoder(v29, v20);
          bmalloc::api::tzoneFree(v32, v33);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
        if (!v21)
        {
          v41 = 0;
          v42 = 0;
          v50 = v18;
          v51[0] = __PAIR64__(a2, v12);
          v44 = a5;
          std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::operator=[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v44, &v50);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v30);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v31);
          if (v40)
          {
            IPC::Decoder::~Decoder(v40);
            bmalloc::api::tzoneFree(v36, v37);
          }
        }

        goto LABEL_30;
      }

      v22 = v47;
      v47 = 0;
      if (*(v22 + 25) == 3194)
      {
        v23 = 11;
      }

      else
      {
        LOBYTE(v44) = 0;
        v46 = 0;
        IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v22, &v44);
        if (v46 == 1)
        {
          v18 = v44;
          v44 = 0;
          v12 = v45;
          LODWORD(a2) = HIDWORD(v45);
          v45 = 0;
          v50 = 0;
          v51[0] = 0;
          v40 = v22;
          v41 = v18;
          v51[1] = 0;
          v42 = __PAIR64__(a2, v12);
          v43 = 0;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v24);
          v25 = v50;
          v50 = 0;
          if (v25)
          {
            IPC::Decoder::~Decoder(v25);
            bmalloc::api::tzoneFree(v38, v39);
          }

          if (v46)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v20);
          }

          v21 = 0;
          goto LABEL_22;
        }

        v23 = 14;
      }

      LOBYTE(v40) = v23;
      v43 = 1;
      IPC::Decoder::~Decoder(v22);
      bmalloc::api::tzoneFree(v26, v27);
      v21 = 1;
LABEL_22:
      if (!v48)
      {
        v28 = v47;
        v47 = 0;
        if (v28)
        {
          IPC::Decoder::~Decoder(v28);
          bmalloc::api::tzoneFree(v34, v35);
        }
      }

      goto LABEL_25;
    }
  }
}

WTF::StringImpl ***std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::operator=[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(WTF::StringImpl ***a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 3);
  if (v5)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*v4, (*v4 + 8 * v5));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, a2);
  return a1;
}

void WebKit::WebEditorClient::requestCheckingOfString(uint64_t a1, _DWORD *a2, WebKit *a3)
{
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = IdentifierInternal;
      CFRetain(*(v8 - 8));
      ++a2[2];
      v21 = a2;
      v23 = v9;
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::TextCheckerRequestType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::TextCheckerRequestType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::TextCheckerRequestType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>>((v8 + 104), &v23, &v21, v22);
      v10 = v21;
      v21 = 0;
      if (v10)
      {
        if (v10[2] == 1)
        {
          (*(*v10 + 8))(v10);
        }

        else
        {
          --v10[2];
        }
      }

      v11 = (*(*a2 + 16))(a2);
      v13 = WebKit::insertionPointFromCurrentSelection(a3, v12);
      v14 = (*(*(v8 + 16) + 56))(v8 + 16);
      v16 = IPC::Encoder::operator new(0x238, v15);
      *v16 = 2327;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v14;
      *(v16 + 68) = 0;
      *(v16 + 70) = 0;
      *(v16 + 69) = 0;
      IPC::Encoder::encodeHeader(v16);
      v22[0] = v16;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v9);
      IPC::ArgumentCoder<WebCore::TextCheckingRequestData,void>::encode(v16, v11);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, v13);
      (*(*(v8 + 16) + 32))(v8 + 16, v22, 0);
      v18 = v22[0];
      v22[0] = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v17);
        bmalloc::api::tzoneFree(v19, v20);
      }

      CFRelease(*(v8 - 8));
    }
  }
}

void WebKit::WebEditorClient::willChangeSelectionForAccessibility(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 1731) = 1;
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebEditorClient::didChangeSelectionForAccessibility(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 1731) = 0;
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

uint64_t WebKit::WebFileSystemStorageConnection::errorWritable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = WebCore::FileSystemStorageConnection::errorFileSystemWritable();
  if ((result & 1) == 0)
  {
    atomic_fetch_add((a1 + 8), 1u);
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F1130FF0;
    v6[1] = a3;
    v6[2] = a1;
    v7 = v6;
    WebCore::ScriptExecutionContext::postTaskTo();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebFileSystemStorageConnection::connectionClosed(WebKit::WebFileSystemStorageConnection *this, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = (v4 + 48 * v5);
    if (*(v4 - 12))
    {
      if (v5)
      {
        v7 = 48 * v5;
        v8 = *(this + 3);
        while ((*v8 + 1) <= 1)
        {
          v8 += 6;
          v7 -= 48;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_15;
          }
        }
      }

      else
      {
        v8 = *(this + 3);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  v8 = v6;
  v6 = (v4 + 48 * v5);
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v9 = (v4 + 48 * *(v4 - 4));
LABEL_16:
  while (v8 != v9)
  {
    v10 = *v8;
    v8 += 6;
    result = WebKit::WebFileSystemStorageConnection::invalidateAccessHandle(this, v10);
    while (v8 != v6 && (*v8 + 1) <= 1)
    {
      v8 += 6;
    }
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    v12 = *(v11 - 4);
    v13 = v11 + 48 * v12;
    if (*(v11 - 12))
    {
      if (v12)
      {
        v14 = 48 * v12;
        v15 = v11;
        while ((*v15 + 1) <= 1)
        {
          v15 += 48;
          v14 -= 48;
          if (!v14)
          {
            v15 = v13;
            goto LABEL_34;
          }
        }
      }

      else
      {
        v15 = v11;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v13 = 0;
    LODWORD(v12) = 0;
  }

  v15 = v13;
  v13 = v11 + 48 * v12;
  if (!v11)
  {
    v16 = 0;
    goto LABEL_35;
  }

LABEL_34:
  v16 = v11 + 48 * *(v11 - 4);
LABEL_35:
  while (v15 != v16)
  {
    v17 = *v15;
    v18 = *(v15 + 8);
    v19 = *(v15 + 24);
    *&v21[32] = *(v15 + 40);
    *v21 = v18;
    *&v21[16] = v19;
    v20[0] = *&v21[8];
    v20[1] = *&v21[24];
    result = WebKit::WebFileSystemStorageConnection::errorWritable(this, v20, v17);
    do
    {
      v15 += 48;
    }

    while (v15 != v13 && (*v15 + 1) <= 1);
  }

  if (v11)
  {

    return WTF::fastFree((v11 - 16), a2);
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::invalidateAccessHandle(uint64_t result, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E383474);
  }

  v3 = *(result + 24);
  if (v3)
  {
    v4 = *(v3 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 48 * v8);
    if (v9 == a2)
    {
LABEL_8:
      if (*(v3 + 48 * v8 + 16) != 0)
      {
        v11 = WTF::fastMalloc(0x10);
        *v11 = &unk_1F11311D0;
        v11[1] = a2;
        v12 = v11;
        WebCore::ScriptExecutionContext::postTaskTo();
        result = v12;
        if (v12)
        {
          return (*(*v12 + 8))(v12);
        }
      }
    }

    else
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v3 + 48 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebFileSystemStorageConnection::closeHandle(IPC::Encoder *result, void *a2)
{
  v2 = *(result + 5);
  if (v2)
  {
    v4 = IPC::Encoder::operator new(0x238, a2);
    *v4 = 763;
    *(v4 + 68) = 0;
    *(v4 + 70) = 0;
    *(v4 + 69) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    IPC::Encoder::encodeHeader(v4);
    v8 = v4;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, a2);
    IPC::Connection::sendMessageImpl(v2, &v8, 0, 0);
    result = v8;
    v8 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v5);
      return bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::isSameEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v21[0]) = 24;
    v22 = 1;
    goto LABEL_5;
  }

  if (a2 == a3)
  {
    LOBYTE(v21[0]) = 1;
    v22 = 0;
LABEL_5:
    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, v21);
    (*(*v8 + 8))(v8);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v21, v9);
  }

  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F1131018;
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
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 795;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = 0;
    IPC::Encoder::encodeHeader(v16);
    v23 = v16;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, a3);
    v21[0] = v13;
    v21[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v5, &v23, v21, 0, 0);
    v18 = v21[0];
    v21[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    result = v23;
    v23 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v17);
      return bmalloc::api::tzoneFree(v19, v20);
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::getFileHandle(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4, uint64_t *a5)
{
  v25 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v22 = &v25;
    v23 = a3;
    v24[0] = a4;
    atomic_fetch_add((a1 + 8), 1u);
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      v9 = *a5;
      *a5 = 0;
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    else
    {
      v9 = *a5;
      *a5 = 0;
    }

    v13 = WTF::fastMalloc(0x28);
    v15 = v13;
    *v13 = &unk_1F1131040;
    v13[1] = a1;
    v13[2] = a1;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      v13[3] = v8;
      v13[4] = v9;
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v14);
      }
    }

    else
    {
      v13[3] = 0;
      v13[4] = v9;
    }

    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 791;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    IPC::Encoder::encodeHeader(v18);
    v27 = v18;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *v22);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, v23);
    IPC::Encoder::operator<<<BOOL &>(v18, v24);
    v26[0] = v15;
    v26[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v27, v26, 0, 0);
    v19 = v26[0];
    v26[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v12);
      result = bmalloc::api::tzoneFree(v20, v21);
      if (!v8)
      {
        return result;
      }
    }

    else if (!v8)
    {
      return result;
    }

    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = v8;
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v22) = 24;
    v24[0] = 1;
    v10 = *a5;
    *a5 = 0;
    (*(*v10 + 16))(v10, &v22);
    result = (*(*v10 + 8))(v10);
    if (v24[0] != 255)
    {
      if (v24[0])
      {
        result = v23;
        v23 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v12);
        }
      }

      else
      {
        result = v22;
        v22 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::getDirectoryHandle(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4, uint64_t *a5)
{
  v25 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v22 = &v25;
    v23 = a3;
    v24[0] = a4;
    atomic_fetch_add((a1 + 8), 1u);
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      v9 = *a5;
      *a5 = 0;
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    else
    {
      v9 = *a5;
      *a5 = 0;
    }

    v13 = WTF::fastMalloc(0x28);
    v15 = v13;
    *v13 = &unk_1F1131068;
    v13[1] = a1;
    v13[2] = a1;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      v13[3] = v8;
      v13[4] = v9;
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v14);
      }
    }

    else
    {
      v13[3] = 0;
      v13[4] = v9;
    }

    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 789;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    IPC::Encoder::encodeHeader(v18);
    v27 = v18;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *v22);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, v23);
    IPC::Encoder::operator<<<BOOL &>(v18, v24);
    v26[0] = v15;
    v26[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v27, v26, 0, 0);
    v19 = v26[0];
    v26[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v12);
      result = bmalloc::api::tzoneFree(v20, v21);
      if (!v8)
      {
        return result;
      }
    }

    else if (!v8)
    {
      return result;
    }

    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = v8;
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v22) = 24;
    v24[0] = 1;
    v10 = *a5;
    *a5 = 0;
    (*(*v10 + 16))(v10, &v22);
    result = (*(*v10 + 8))(v10);
    if (v24[0] != 255)
    {
      if (v24[0])
      {
        result = v23;
        v23 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v12);
        }
      }

      else
      {
        result = v22;
        v22 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::removeEntry(uint64_t a1, uint64_t a2, WTF::StringImpl *a3, char a4, uint64_t *a5)
{
  v24 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v21 = &v24;
    v22 = a3;
    v23[0] = a4;
    v8 = *a5;
    *a5 = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1131090;
    v9[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v10 = v9;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 805;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = 0;
      IPC::Encoder::encodeHeader(v13);
      v26 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v24);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a3);
      IPC::Encoder::operator<<<BOOL &>(v13, v23);
      v25[0] = v10;
      v25[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v6, &v26, v25, 0, 0);
      v15 = v25[0];
      v25[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      result = v26;
      v26 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v14);
        return bmalloc::api::tzoneFree(v17, v18);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v21) = 24;
    v23[0] = 1;
    v19 = *a5;
    *a5 = 0;
    (*(*v19 + 16))(v19, &v21);
    result = (*(*v19 + 8))(v19);
    if (v23[0] == 1)
    {
      result = v22;
      v22 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v20);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::resolve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v8 = *a4;
    *a4 = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F11310B8;
    v9[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v10 = v9;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 811;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = 0;
      IPC::Encoder::encodeHeader(v13);
      v24 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a3);
      v21 = v10;
      v22 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v5, &v24, &v21, 0, 0);
      v15 = v21;
      v21 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      result = v24;
      v24 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v14);
        return bmalloc::api::tzoneFree(v19, v20);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v21) = 24;
    v23 = 1;
    v17 = *a4;
    *a4 = 0;
    (*(*v17 + 16))(v17, &v21);
    result = (*(*v17 + 8))(v17);
    if (v23 != 255)
    {
      if (v23)
      {
        result = v22;
        v22 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v18);
        }
      }

      else
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v18);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::getFile(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = *a3;
    *a3 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F11310E0;
    v7[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 790;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = 0;
      IPC::Encoder::encodeHeader(v11);
      v22 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
      v19 = v8;
      v20 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v4, &v22, &v19, 0, 0);
      v13 = v19;
      v19 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      result = v22;
      v22 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v12);
        return bmalloc::api::tzoneFree(v17, v18);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v19) = 24;
    v21 = 1;
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, &v19);
    result = (*(*v15 + 8))(v15);
    if (v21 == 255)
    {
      return result;
    }

    if (v21)
    {
      result = v20;
      v20 = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = v19;
      v19 = 0;
      if (!result)
      {
        return result;
      }
    }

    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v16);
    }
  }

  return result;
}

void WebKit::WebFileSystemStorageConnection::createSyncAccessHandle(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = *a3;
    *a3 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1131108;
    v7[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 770;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = 0;
      IPC::Encoder::encodeHeader(v11);
      v23 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
      v20 = v8;
      v21 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v4, &v23, &v20, 0, 0);
      v13 = v20;
      v20 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = v23;
      v23 = 0;
      if (v14)
      {
        IPC::Encoder::~Encoder(v14, v12);
        bmalloc::api::tzoneFree(v18, v19);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v20) = 24;
    v22 = 1;
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, &v20);
    (*(*v15 + 8))(v15);
    if (v22 != 255)
    {
      if (v22)
      {
        v17 = v21;
        v21 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v16);
        }
      }

      else
      {
        WTF::FileSystemImpl::FileHandle::~FileHandle(&v21);
      }
    }
  }
}

uint64_t WebKit::WebFileSystemStorageConnection::closeSyncAccessHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = *a4;
    *a4 = 0;
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F1131130;
    v8[1] = v7;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v9 = v8;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v12 = IPC::Encoder::operator new(0x238, v11);
      *v12 = 764;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      IPC::Encoder::encodeHeader(v12);
      v21 = v12;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a3);
      v20[0] = v9;
      v20[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v4, &v21, v20, 0, 0);
      v14 = v20[0];
      v20[0] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      result = v21;
      v21 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v13);
        return bmalloc::api::tzoneFree(v18, v19);
      }
    }
  }

  else
  {
    v16 = *a4;
    *a4 = 0;
    (*(*v16 + 16))(v16);
    v17 = *(*v16 + 8);

    return v17(v16);
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::getHandleNames(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = *a3;
    *a3 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1131158;
    v7[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 793;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = 0;
      IPC::Encoder::encodeHeader(v11);
      v22 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
      v19 = v8;
      v20 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v4, &v22, &v19, 0, 0);
      v13 = v19;
      v19 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      result = v22;
      v22 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v12);
        return bmalloc::api::tzoneFree(v17, v18);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v19) = 24;
    v21 = 1;
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, &v19);
    result = (*(*v15 + 8))(v15);
    if (v21 != 255)
    {
      if (v21)
      {
        result = v20;
        v20 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v16);
        }
      }

      else
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v16);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::getHandle(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    atomic_fetch_add((a1 + 8), 1u);
    v9 = *a4;
    *a4 = 0;
    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F1131180;
    v10[1] = a1;
    v10[2] = a1;
    v10[3] = v9;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v11 = v10;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v14 = IPC::Encoder::operator new(0x238, v13);
      *v14 = 792;
      *(v14 + 68) = 0;
      *(v14 + 70) = 0;
      *(v14 + 69) = 0;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = 0;
      IPC::Encoder::encodeHeader(v14);
      v25 = v14;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
      v22 = v11;
      v23 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v5, &v25, &v22, 0, 0);
      v16 = v22;
      v22 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = v25;
      v25 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v15);
        return bmalloc::api::tzoneFree(v20, v21);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v22) = 24;
    v24 = 1;
    v18 = *a4;
    *a4 = 0;
    (*(*v18 + 16))(v18, &v22);
    result = (*(*v18 + 8))(v18);
    if (v24 != 255)
    {
      if (v24)
      {
        result = v23;
        v23 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v19);
        }
      }

      else
      {
        result = v22;
        v22 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::move(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v10 = *a5;
    *a5 = 0;
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F11311A8;
    v11[1] = v10;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v12 = v11;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 798;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      IPC::Encoder::encodeHeader(v15);
      v26 = v15;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, a3);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a4);
      v23 = v12;
      v24 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v6, &v26, &v23, 0, 0);
      v17 = v23;
      v23 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      result = v26;
      v26 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v16);
        return bmalloc::api::tzoneFree(v19, v20);
      }
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v23) = 24;
    v25 = 1;
    v21 = *a5;
    *a5 = 0;
    (*(*v21 + 16))(v21, &v23);
    result = (*(*v21 + 8))(v21);
    if (v25 == 1)
    {
      result = v24;
      v24 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v22);
        }
      }
    }
  }

  return result;
}

_DWORD *WebKit::WebFileSystemStorageConnection::registerSyncAccessHandle(_DWORD *result, uint64_t a2, __int128 *a3)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E384F2CLL);
  }

  v5 = result;
  v6 = *(result + 3);
  if (!v6)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result + 3);
    v6 = *(v5 + 3);
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 48 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    while (v13 != a2)
    {
      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 48 * v11);
      v13 = *v12;
      ++v15;
      if (!*v12)
      {
        if (v14)
        {
          *v14 = 0;
          v14[3] = 0;
          v14[4] = 0;
          v14[2] = 0;
          --*(*(v5 + 3) - 16);
          v12 = v14;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *v12 = a2;
    v16 = *a3;
    v12[4] = *(a3 + 2);
    *(v12 + 1) = v16;
    v17 = *(v5 + 3);
    if (v17)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v19 = (*(v17 - 16) + v18);
    v20 = *(v17 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        return result;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      return result;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v5 + 3);
  }

  return result;
}

uint64_t *WebKit::WebFileSystemStorageConnection::unregisterSyncAccessHandle(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  result = (a1 + 24);
  v3 = v4;
  if (v4)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E38505CLL);
    }

    v5 = *(v3 - 8);
    v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = (v3 + 48 * v9);
    v11 = *v10;
    if (*v10 != a2)
    {
      v12 = 1;
      while (v11)
      {
        v9 = (v9 + v12) & v5;
        v10 = (v3 + 48 * v9);
        v11 = *v10;
        ++v12;
        if (*v10 == a2)
        {
          goto LABEL_10;
        }
      }

      v10 = (v3 + 48 * *(v3 - 4));
    }

LABEL_10:
    v13 = *(v3 - 4);
    if ((v3 + 48 * v13) != v10)
    {
      *v10 = -1;
      v14 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
      *(v3 - 16) = v14;
      if (6 * v14.i32[1] < v13 && v13 >= 9)
      {
        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v13 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::createWritable(uint64_t a1, __int128 *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    while (1)
    {
      v10 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v11 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
    v26[0] = a4;
    atomic_fetch_add((a1 + 8), 1u);
    v31 = *a2;
    *&v32 = *(a2 + 2);
    v12 = *a5;
    *a5 = 0;
    v13 = WTF::fastMalloc(0x50);
    *v13 = &unk_1F11311F8;
    *(v13 + 16) = a1;
    *(v13 + 32) = v31;
    *(v13 + 48) = v32;
    *(v13 + 64) = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v14 = v13;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = IPC::Encoder::operator new(0x238, v16);
      *v17 = 771;
      *(v17 + 68) = 0;
      *(v17 + 70) = 0;
      *(v17 + 69) = 0;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0;
      *(v17 + 1) = 0;
      IPC::Encoder::encodeHeader(v17);
      v29 = v17;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, v27);
      IPC::Encoder::operator<<<BOOL &>(v17, v26);
      v28[0] = v14;
      v28[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v6, &v29, v28, 0, 0);
      v19 = v28[0];
      v28[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v20 = v29;
      v29 = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v18);
        bmalloc::api::tzoneFree(v22, v23);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v30[0] = 24;
    BYTE8(v31) = 1;
    v24 = *a5;
    *a5 = 0;
    (*(*v24 + 16))(v24, v30);
    (*(*v24 + 8))(v24);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v30, v25);
  }

  return result;
}

uint64_t *WebKit::WebFileSystemStorageConnection::invalidateWritable(uint64_t a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 32), a2);
  if (*v4)
  {
    if ((*v4 + 48 * *(*v4 - 4)) == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = result[4];
  v9 = result[5];
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v4, result);
  if (v7 | v6)
  {
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = v8;
    v10[3] = v9;
    return WebKit::WebFileSystemStorageConnection::errorWritable(a1, v10, a2);
  }

  return result;
}

WTF::StringImpl *WebKit::WebFileSystemStorageConnection::closeWritable(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    while (1)
    {
      v11 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v12 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
    v14 = *(a1 + 32);
    v13 = (a1 + 32);
    v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v14, a3);
    if (*v13)
    {
      v16 = *v13 + 48 * *(*v13 - 4);
      if (v16 == v15)
      {
LABEL_13:
        v17 = *a5;
        *a5 = 0;
        v18 = WTF::fastMalloc(0x10);
        *v18 = &unk_1F1131220;
        v18[1] = v17;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1 || (v19 = v18, IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal(), v22 = IPC::Encoder::operator new(0x238, v21), *v22 = 765, *(v22 + 68) = 0, *(v22 + 70) = 0, *(v22 + 69) = 0, *(v22 + 2) = 0, *(v22 + 3) = 0, *(v22 + 1) = 0, IPC::Encoder::encodeHeader(v22), v36 = v22, IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a2), IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a3), v23 = IPC::Encoder::grow(v22, 1uLL, 1), !v24))
        {
          __break(0xC471u);
          JUMPOUT(0x19E3856A0);
        }

        *v23 = a4;
        v33 = v19;
        v34 = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v6, &v36, &v33, 0, 0);
        v26 = v33;
        v33 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }

        v27 = v36;
        v36 = 0;
        if (v27)
        {
          IPC::Encoder::~Encoder(v27, v25);
          bmalloc::api::tzoneFree(v29, v30);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = 0;
    }

    if (v16 != v15)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v13, v15);
    }

    goto LABEL_13;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  LOBYTE(v33) = 24;
  v35 = 1;
  v31 = *a5;
  *a5 = 0;
  (*(*v31 + 16))(v31, &v33);
  result = (*(*v31 + 8))(v31);
  if (v35 == 1)
  {
    result = v34;
    v34 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v32);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::executeCommandForWritable(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, size_t a10, char a11, uint64_t *a12)
{
  v41 = a3;
  v42 = a2;
  v40[0] = a5;
  v40[1] = a6;
  v39[0] = a7;
  v39[1] = a8;
  v37 = a9;
  v38 = a10;
  v12 = *(a1 + 40);
  if (v12)
  {
    while (1)
    {
      v14 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v15 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_6:
    v30 = &v42;
    v31 = &v41;
    v32 = a4;
    v33 = v40;
    v34 = v39;
    v35 = &v37;
    v36[0] = a11;
    v16 = *a12;
    *a12 = 0;
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F1131248;
    v17[1] = v16;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v18 = v17;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v21 = IPC::Encoder::operator new(0x238, v20);
      *v21 = 784;
      *(v21 + 68) = 0;
      *(v21 + 70) = 0;
      *(v21 + 69) = 0;
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 1) = 0;
      IPC::Encoder::encodeHeader(v21);
      v44 = v21;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v21, v42);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v21, v41);
      LOBYTE(v43[0]) = a4;
      IPC::Encoder::operator<<<unsigned char>(v21, v43);
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v21, v40);
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v21, v39);
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v21, v37, v38);
      IPC::Encoder::operator<<<BOOL &>(v21, v36);
      v43[0] = v18;
      v43[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v12, &v44, v43, 0, 0);
      v23 = v43[0];
      v43[0] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      v24 = v44;
      v44 = 0;
      if (v24)
      {
        IPC::Encoder::~Encoder(v24, v22);
        bmalloc::api::tzoneFree(v26, v27);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v30) = 24;
    v32 = 1;
    v28 = *a12;
    *a12 = 0;
    (*(*v28 + 16))(v28, &v30);
    result = (*(*v28 + 8))(v28);
    if (v32 == 1)
    {
      result = v31;
      v31 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v29);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebFileSystemStorageConnection::requestNewCapacityForSyncAccessHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    while (1)
    {
      v10 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v11 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
    v12 = *a5;
    *a5 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F1131270;
    v13[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v14 = v13;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = IPC::Encoder::operator new(0x238, v16);
      *v17 = 809;
      *(v17 + 68) = 0;
      *(v17 + 70) = 0;
      *(v17 + 69) = 0;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0;
      *(v17 + 1) = 0;
      IPC::Encoder::encodeHeader(v17);
      v27 = v17;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a4);
      v25 = v14;
      v26 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v6, &v27, &v25, 0, 0);
      v19 = v25;
      v25 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v20 = v27;
      v27 = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v18);
        bmalloc::api::tzoneFree(v22, v23);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
    }
  }

  else
  {
    LOBYTE(v25) = 0;
    LOBYTE(v26) = 0;
    v24 = *a5;
    *a5 = 0;
    (*(*v24 + 16))(v24, &v25);
    return (*(*v24 + 8))(v24);
  }

  return result;
}

void WebKit::WebFrameLoaderClient::~WebFrameLoaderClient(WebKit::WebFrameLoaderClient *this)
{
  *this = &unk_1F1130E70;
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(this + 16);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }
}

void WebKit::WebFrameLoaderClient::navigationActionData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, int a11, __int16 a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v150 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v12;
  v28 = v27;
  v263 = *MEMORY[0x1E69E9840];
  v29 = WebKit::WebFrame::page(*(v12 + 8));
  v151 = v26;
  if (v29)
  {
    v30 = v29;
    CFRetain(*(v29 + 8));
    isEmpty = WebCore::ResourceRequestBase::isEmpty(v23);
    if (isEmpty)
    {
      v99 = WebCore::logClient(isEmpty);
      v100 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v99);
      if (v100)
      {
        v101 = v100;
        v102 = *(v26 + 8);
        v103 = *(v102 + 11);
        if (WebKit::WebFrame::page(v102))
        {
          v104 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
        }

        else
        {
          v104 = 0;
        }

        WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_EMPTY_REQUEST(v101, v103, v104);
        goto LABEL_167;
      }

      v120 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v121 = *(v26 + 8);
        v122 = *(v121 + 11);
        if (WebKit::WebFrame::page(v121))
        {
          v123 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
        }

        else
        {
          v123 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v122;
        *&buf[12] = 2048;
        *&buf[14] = v123;
        v127 = "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: returning std::nullopt because request is empty";
        goto LABEL_209;
      }
    }

    else if (*(v25 + 224))
    {
      if (*(v25 + 144))
      {
        v147 = v21;
        {
          v33 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v37 = &dword_1EB01E000;
          v134 = WebKit::WebProcess::operator new(0x370, v32);
          v33 = WebKit::WebProcess::WebProcess(v134);
          WebKit::WebProcess::singleton(void)::process = v33;
          v36 = &qword_1ED643000;
          if ((*(v25 + 144) & 1) == 0)
          {
            goto LABEL_219;
          }
        }

        v34 = WebKit::WebProcess::webFrame(v33, *(v25 + 136), 1);
        v37 = v34;
        v148 = v17;
        v149 = v15;
        if (v34)
        {
          CFRetain(*(v34 + 8));
          if ((*(v25 + 144) & 1) == 0)
          {
            goto LABEL_219;
          }

          v38 = *(v25 + 136);
          WebKit::WebFrame::parentFrame(v37, buf);
          if (*buf)
          {
            v142 = *(*buf + 88);
            CFRelease(*(*buf + 8));
            v15 = 1;
          }

          else
          {
            v15 = 0;
            v142 = 0;
          }
        }

        else
        {
          if ((*(v25 + 144) & 1) == 0)
          {
            goto LABEL_219;
          }

          v15 = 0;
          v142 = 0;
          v38 = *(v25 + 136);
        }

        v143 = v19;
        v39 = *(*(v26 + 8) + 40);
        v145 = v28;
        if (v39)
        {
          v19 = *(v39 + 8);
          if (!v19)
          {
LABEL_158:
            v28 = 0;
            v144 = 0x100000001;
            goto LABEL_16;
          }

          if ((*(v19 + 136) & 1) == 0)
          {
            ++*(v19 + 16);
            v28 = *(v19 + 224);
            if (v28)
            {
              v144 = 0;
              *(v28 + 28) += 2;
            }

            else
            {
              v144 = 1;
            }

LABEL_16:
            v153 = *(v30 + 269);
            *(v30 + 269) = 0;
            std::unique_ptr<WebKit::FrameInfoData>::operator=[abi:sn200100](v30 + 269);
            v146 = v30;
            if (*(v25 + 872))
            {
              {
                v93 = WebKit::WebProcess::singleton(void)::process;
              }

              else
              {
                v141 = WebKit::WebProcess::operator new(0x370, v40);
                v93 = WebKit::WebProcess::WebProcess(v141);
                WebKit::WebProcess::singleton(void)::process = v93;
              }

              v94 = WebKit::WebProcess::webFrame(v93, v38, 1);
              if (v94)
              {
                v95 = v94;
                CFRetain(*(v94 + 8));
                LOBYTE(v30) = WebKit::WebFrame::isMainFrame(v95);
                CFRelease(v95[1]);
              }

              else
              {
                LOBYTE(v30) = 0;
              }

              v26 = v151;
            }

            else
            {
              LOBYTE(v30) = 1;
            }

            if (v153)
            {
              v47 = WebKit::FrameInfoData::FrameInfoData(&v234, v153);
LABEL_35:
              v152 = v23;
              if (*(v25 + 160) != 1)
              {
                goto LABEL_36;
              }

              v111 = WebKit::WebProcess::singleton(v47, v35);
              if ((*(v25 + 160) & 1) == 0)
              {
                goto LABEL_219;
              }

              v112 = WebKit::WebProcess::webPage(v111, *(v25 + 152));
              if (v112)
              {
                v113 = v112;
                CFRetain(*(v112 + 8));
                v114 = *(v113 + 1832);
                v23 = v114 & 0xFFFFFFFFFFFFFF00;
                CFRelease(*(v113 + 8));
                v142 = v114;
                LOBYTE(v30) = 1;
              }

              else
              {
LABEL_36:
                LOBYTE(v30) = 0;
                v142 = 0;
                v23 = 0;
              }

              LOBYTE(v228) = 0;
              v233 = 0;
              v48 = *(*(v26 + 8) + 40);
              v15 = &qword_1ED643000;
              if (v48)
              {
                v49 = *(v48 + 8);
                if (v49)
                {
                  ++*(v49 + 4);
                  WebCore::Frame::ownerPermissionsPolicy(buf, v49);
                  std::__optional_storage_base<WebCore::OwnerPermissionsPolicyData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OwnerPermissionsPolicyData,false>>(&v228, buf);
                  if (v159 == 1)
                  {
                    if (*&v158[16])
                    {
                      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(*&v158[16], v35);
                    }

                    if (*&v158[8])
                    {
                      WTF::fastFree((*&v158[8] - 16), v35);
                    }

                    if (!v158[0])
                    {
                      v50 = *&buf[8];
                      *&buf[8] = 0;
                      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v50, v35);
                      }

                      v51 = *buf;
                      *buf = 0;
                      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v51, v35);
                      }
                    }
                  }

                  if (*(v49 + 4) == 1)
                  {
                    (*(*v49 + 8))(v49);
                  }

                  else
                  {
                    --*(v49 + 4);
                  }
                }
              }

              buf[0] = *(v25 + 868);
              if (*(v25 + 445) & 1) != 0 && (*(v25 + 440))
              {
                if (*(v25 + 442))
                {
                  v52 = *(v25 + 441) & 1 | 2;
                }

                else
                {
                  v52 = *(v25 + 441) & 1;
                }

                if (*(v25 + 443))
                {
                  v52 |= 4u;
                }

                if (*(v25 + 444))
                {
                  v52 |= 8u;
                }
              }

              else
              {
                v52 = 0;
              }

              buf[1] = v52;
              v53 = *(v25 + 476);
              if (v53 == 1)
              {
                if (*(v25 + 474) == 1 && *(v25 + 448) == 1)
                {
                  v115 = WebKit::kit(*(v25 + 472));
                  v116 = *(v25 + 476);
                  buf[2] = v115;
                  if ((v116 & 1) == 0)
                  {
                    LOBYTE(v53) = 0;
                    goto LABEL_53;
                  }

LABEL_185:
                  v36 = &dword_1EB01E000;
                  if (*(v25 + 474) == 1 && *(v25 + 448) == 1)
                  {
                    LOBYTE(v53) = *(v25 + 473);
                  }

                  else
                  {
                    LOBYTE(v53) = 0;
                  }

                  goto LABEL_54;
                }

                v53 = 1;
              }

              buf[2] = -2;
              if (!v53)
              {
LABEL_53:
                v36 = &dword_1EB01E000;
LABEL_54:
                buf[3] = v53;
                {
                  goto LABEL_220;
                }

                v54 = v36[141];
                while ((*(v25 + 224) & 1) == 0)
                {
LABEL_219:
                  __break(1u);
LABEL_220:
                  v135 = v36;
                  v136 = WebKit::WebProcess::operator new(0x370, v35);
                  v54 = WebKit::WebProcess::WebProcess(v136);
                  v135[141] = v54;
                  *(v15 + 2024) = 1;
                }

                v55 = *(v25 + 152);
                v56 = *(v25 + 160);
                v57 = *(v25 + 480);
                if (v57)
                {
                  ++*(v57 + 8);
                }

                v154 = v57;
                WebKit::WebProcess::userGestureTokenIdentifier(v54, v55, v56, &v154, &buf[8]);
                v59 = *(v25 + 480);
                if (v59)
                {
                  *(v59 + 8) += 2;
                  v119 = *(v59 + 96);
                  *&v158[8] = *(v59 + 80);
                  v159 = v119;
                }

                else
                {
                  v158[8] = 0;
                  LOBYTE(v159) = 0;
                }

                canHandleRequest = WebKit::WebPage::canHandleRequest(v152, v58);
                v161 = *(v25 + 871);
                v60 = *(v25 + 488);
                if (v60)
                {
                  atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
                }

                v162 = v60;
                if (*(v25 + 476) == 1)
                {
                  v61 = *(v25 + 464);
                }

                else
                {
                  v61 = 0;
                }

                v163 = v61;
                WebCore::ResourceResponse::ResourceResponse(v164, v147);
                v164[264] = *(v25 + 876);
                v164[265] = *(v25 + 873);
                v165 = *(v25 + 874);
                v166 = a9;
                v167 = a10;
                v168 = *(v25 + 877);
                v169 = 0;
                v62 = *(v25 + 40);
                LOBYTE(v170) = 0;
                v172 = -1;
                if (*(v62 + 32))
                {
                  if (*(v62 + 32) == 255)
                  {
LABEL_72:
                    v65 = *(v25 + 48);
                    LOBYTE(v173) = 0;
                    v175 = -1;
                    if (*(v65 + 32))
                    {
                      if (*(v65 + 32) == 255)
                      {
LABEL_79:
                        v176 = *(v25 + 496);
                        v177 = *(v25 + 512);
                        v178 = *(v25 + 520);
                        v179 = *(v25 + 536);
                        v180 = *(v25 + 879);
                        v68 = *v143;
                        if (*v143)
                        {
                          atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
                        }

                        v181 = v68;
                        v182 = a12;
                        std::optional<WebCore::OwnerPermissionsPolicyData>::optional[abi:sn200100](v183, &v228);
                        v184[0] = 0;
                        v185 = 0;
                        if (*(v25 + 856) == 1)
                        {
                          WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v184, (v25 + 544));
                          v185 = 1;
                        }

                        if (v37)
                        {
                          LOWORD(v186) = WebKit::WebFrame::advancedPrivacyProtections(v37);
                          v117 = WebKit::WebFrame::originatorAdvancedPrivacyProtections(v37);
                          HIWORD(v186) = v117;
                          v187 = BYTE2(v117);
                        }

                        else
                        {
                          v186 = 0;
                          v187 = 1;
                        }

                        v69 = v150[136];
                        if (v69 == 1)
                        {
                          v155 = 0;
                          WebKit::WebHitTestResultData::WebHitTestResultData(v156, v150, &v155, 0);
                          WebKit::WebHitTestResultData::WebHitTestResultData(v188, v156);
                          v70 = 1;
                        }

                        else
                        {
                          v70 = 0;
                          v188[0] = 0;
                        }

                        v188[848] = v70;
                        v189 = v234;
                        v71 = v235;
                        v235 = 0;
                        v190 = v71;
                        v191 = v236;
                        v192 = v237;
                        LODWORD(v236) = v236 & 0xFFFFFFFE;
                        v72 = v238;
                        v238 = 0;
                        v193 = v72;
                        v194 = v239;
                        v195 = v240;
                        LODWORD(v239) = v239 & 0xFFFFFFFE;
                        v196 = v241;
                        v73 = v242;
                        v242 = 0u;
                        v197 = v73;
                        *&v73 = v243;
                        v243 = 0;
                        v198 = v73;
                        v74 = v244;
                        v244 = 0;
                        v199 = v74;
                        *&v73 = v245;
                        v245 = 0;
                        v200 = v73;
                        v75 = v246;
                        v246 = 0;
                        v201 = v75;
                        *&v73 = v247;
                        v247 = 0;
                        v202 = v73;
                        v204 = v249;
                        v203 = v248;
                        v76 = v250;
                        v250 = 0u;
                        v205 = v76;
                        v206 = v251;
                        v208 = v253;
                        v207 = v252;
                        v77 = v254;
                        v251 = 0;
                        v254 = 0;
                        v209 = v77;
                        LOBYTE(v210) = 0;
                        v212 = -1;
                        if (v257)
                        {
                          v79 = v151;
                          v80 = v153;
                          if (v257 == 255)
                          {
                            goto LABEL_90;
                          }

                          v210 = *v255;
                        }

                        else
                        {
                          v78 = *v255;
                          v255[1] = 0;
                          v255[0] = 0;
                          v210 = v78;
                          v211 = v256;
                          v79 = v151;
                          v80 = v153;
                        }

                        v212 = v257;
LABEL_90:
                        v213 = v258;
                        v214 = v259;
                        v215 = *v260;
                        v216 = *&v260[16];
                        v217 = *&v260[32];
                        v81 = cf;
                        v258 = 0;
                        cf = 0;
                        v218 = v81;
                        v219 = v262[0];
                        v220 = v262[1];
                        v221 = v262[2];
                        v222 = v23 | v142;
                        v223 = v30;
                        WebKit::WebFrame::info(*(v79 + 8), 0, v224);
                        v224[44] = v148;
                        v225 = v149;
                        WebCore::ResourceRequest::ResourceRequest(&v226, (v25 + 240));
                        WebCore::ResourceRequest::ResourceRequest(v227, v152);
                        if (*(WebCore::ResourceRequestBase::url(v152) + 8))
                        {
                          v82 = 0;
                          v30 = v146;
                          v83 = v144;
                          v84 = BYTE4(v144);
                        }

                        else
                        {
                          v82 = *WebCore::ResourceRequestBase::url(v152);
                          v30 = v146;
                          v83 = v144;
                          if (v82)
                          {
                            atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
                          }

                          v84 = BYTE4(v144);
                        }

                        v227[25] = v82;
                        *(WebKit::NavigationActionData::NavigationActionData(v145, buf) + 2912) = 1;
                        WebKit::NavigationActionData::~NavigationActionData(buf, v85);
                        if (v69)
                        {
                          WebKit::WebHitTestResultData::~WebHitTestResultData(v156, v86);
                        }

                        if (v59)
                        {
                          WTF::RefCounted<WebCore::UserGestureToken>::deref((v59 + 8));
                          WTF::RefCounted<WebCore::UserGestureToken>::deref((v59 + 8));
                        }

                        if (v154)
                        {
                          WTF::RefCounted<WebCore::UserGestureToken>::deref((v154 + 8));
                        }

                        if (v233 == 1)
                        {
                          if (v232)
                          {
                            WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v232, v86);
                          }

                          if (v231)
                          {
                            WTF::fastFree((v231 - 16), v86);
                          }

                          if (!v230)
                          {
                            v87 = v229;
                            v229 = 0;
                            if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v87, v86);
                            }

                            v88 = v228;
                            v228 = 0;
                            if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v88, v86);
                            }
                          }
                        }

                        v89 = cf;
                        cf = 0;
                        if (v89)
                        {
                          CFRelease(v89);
                        }

                        v90 = v258;
                        v258 = 0;
                        if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v90, v86);
                        }

                        if (!v257)
                        {
                          v91 = v255[1];
                          v255[1] = 0;
                          if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v91, v86);
                          }

                          v92 = v255[0];
                          v255[0] = 0;
                          if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v92, v86);
                          }
                        }

                        v257 = -1;
                        WebCore::ResourceRequest::~ResourceRequest(&v235);
                        if (v80)
                        {
                          WebKit::FrameInfoData::~FrameInfoData(v80);
                          WTF::fastFree(v97, v98);
                        }

                        if ((v83 & 1) == 0)
                        {
                          if (*(v28 + 28) == 2)
                          {
                            WebCore::Node::removedLastRef(v28);
                          }

                          else
                          {
                            *(v28 + 28) -= 2;
                          }
                        }

                        if ((v84 & 1) == 0)
                        {
                          if (*(v19 + 16) == 1)
                          {
                            (*(*v19 + 8))(v19);
                          }

                          else
                          {
                            --*(v19 + 16);
                          }
                        }

                        if (v37)
                        {
                          CFRelease(*(v37 + 1));
                        }

                        goto LABEL_124;
                      }

                      v173 = *(v65 + 8);
                    }

                    else
                    {
                      v66 = *(v65 + 8);
                      if (v66)
                      {
                        atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
                      }

                      *&v173 = v66;
                      v67 = *(v65 + 16);
                      if (v67)
                      {
                        atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
                      }

                      *(&v173 + 1) = v67;
                      v174 = *(v65 + 24);
                    }

                    v175 = *(v65 + 32);
                    goto LABEL_79;
                  }

                  v170 = *(v62 + 8);
                }

                else
                {
                  v63 = *(v62 + 8);
                  if (v63)
                  {
                    atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
                  }

                  *&v170 = v63;
                  v64 = *(v62 + 16);
                  if (v64)
                  {
                    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
                  }

                  *(&v170 + 1) = v64;
                  v171 = *(v62 + 24);
                }

                v172 = *(v62 + 32);
                goto LABEL_72;
              }

              goto LABEL_185;
            }

            v234 = v30;
            v30 = &v234;
            v41 = *v25;
            if (*v25)
            {
              atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
            }

            *buf = v41;
            *&buf[8] = *(v25 + 8);
            *v158 = *(v25 + 24);
            WebCore::ResourceRequestBase::ResourceRequestBase(&v235, buf, 0);
            v254 = 0;
            v42 = *(v25 + 40);
            LOBYTE(v255[0]) = 0;
            v257 = -1;
            if (*(v42 + 32))
            {
              if (*(v42 + 32) == 255)
              {
                goto LABEL_28;
              }

              *v255 = *(v42 + 8);
            }

            else
            {
              v43 = *(v42 + 8);
              if (v43)
              {
                atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
              }

              v255[0] = v43;
              v44 = *(v42 + 16);
              if (v44)
              {
                atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
              }

              v255[1] = v44;
              v256 = *(v42 + 24);
            }

            v257 = *(v42 + 32);
LABEL_28:
            v45 = 0;
            v258 = 0;
            *&v259 = v38;
            if (v15)
            {
              v45 = v142;
            }

            *(&v259 + 1) = v45;
            if (v28)
            {
              v118 = *(v28 + 448);
              *&v260[9] = *(v28 + 449);
              *&v260[24] = *(v28 + 464);
              v260[8] = v118;
            }

            else
            {
              memset(&v260[8], 0, 24);
            }

            if (v37)
            {
              WebKit::WebFrame::certificateInfo(v37, &cf);
              LODWORD(v262[0]) = getpid();
              isFocused = WebKit::WebFrame::isFocused(v37);
            }

            else
            {
              cf = 0;
              v96 = getpid();
              isFocused = 0;
              LODWORD(v262[0]) = v96;
            }

            WORD2(v262[0]) = isFocused;
            BYTE8(v262[0]) = 0;
            memset(v262 + 12, 0, 24);
            v47 = *buf;
            *buf = 0;
            if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v47 = WTF::StringImpl::destroy(v47, v35);
            }

            goto LABEL_35;
          }
        }

        v19 = 0;
        goto LABEL_158;
      }

      v105 = WebCore::logClient(isEmpty);
      v106 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v105);
      if (v106)
      {
        v107 = v106;
        v108 = *(v26 + 8);
        v109 = *(v108 + 11);
        if (WebKit::WebFrame::page(v108))
        {
          v110 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
        }

        else
        {
          v110 = 0;
        }

        WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_FRAME(v107, v109, v110);
        goto LABEL_167;
      }

      v120 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v124 = *(v26 + 8);
        v125 = *(v124 + 11);
        if (WebKit::WebFrame::page(v124))
        {
          v126 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
        }

        else
        {
          v126 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v125;
        *&buf[12] = 2048;
        *&buf[14] = v126;
        v127 = "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: returning std::nullopt because frame does not exist";
LABEL_209:
        _os_log_error_impl(&dword_19D52D000, v120, OS_LOG_TYPE_ERROR, v127, buf, 0x16u);
      }
    }

LABEL_167:
    *v28 = 0;
    *(v28 + 2912) = 0;
LABEL_124:
    CFRelease(*(v30 + 1));
    return;
  }

  v128 = WebCore::logClient(0);
  v129 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v128);
  if (v129)
  {
    v130 = v129;
    v131 = *(v26 + 8);
    v132 = *(v131 + 11);
    if (WebKit::WebFrame::page(v131))
    {
      v133 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
    }

    else
    {
      v133 = 0;
    }

    WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_WEBPAGE(v130, v132, v133);
  }

  else
  {
    v137 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
    {
      v138 = *(v26 + 8);
      v139 = *(v138 + 11);
      if (WebKit::WebFrame::page(v138))
      {
        v140 = *(WebKit::WebFrame::page(*(v26 + 8)) + 48);
      }

      else
      {
        v140 = 0;
      }

      *buf = 134218240;
      *&buf[4] = v139;
      *&buf[12] = 2048;
      *&buf[14] = v140;
      _os_log_error_impl(&dword_19D52D000, v137, OS_LOG_TYPE_ERROR, "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::navigationActionData: returning std::nullopt because there's no web page", buf, 0x16u);
    }
  }

  *v28 = 0;
  *(v28 + 2912) = 0;
}

void WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_WEBPAGE(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v7 = *&this[2]._os_unfair_lock_opaque;
  v8 = *&this[6]._os_unfair_lock_opaque;
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
  if (v52 == 1)
  {
    v25 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E386FE0);
    }

    v26 = v50;
    *v50 = 3198;
    v27 = v26 + 1;
    if (v25 - 2 >= (-v27 & 7 | 8uLL))
    {
      v28 = -v27 & 7;
      *(v27 + v28) = v8;
      if (v28 != 7)
      {
        v28 = 6;
      }

      v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      v30 = *(v7 + 80);
      v32 = v28 + 10;
      if (v29 + 16 >= v31)
      {
        v29 = 0;
      }

      v33 = v32 + v29;
      if (v31 <= v33)
      {
        v33 = 0;
      }

      *(v7 + 88) = v33;
      if (*(v30 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v34 = atomic_exchange((*(v30 + 16) + 128), v33);
      v35 = *(v7 + 124);
      if (v34 == 0x80000000 || v35 != 0)
      {
        v37 = v35 + 1;
        *(v7 + 124) = v37;
        if (v37 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
      if (v52 != 1)
      {
        goto LABEL_20;
      }

      v13 = v51;
      if (v51 <= 1)
      {
        __break(0xC471u);
        goto LABEL_54;
      }

      v14 = v50;
      *v50 = 293;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = a2;
        v18 = v15 + v16;
        v19 = -v18 & 7 | 8;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 7)) = a3;
          v20 = v13 - v17 + v19;
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v22 = *(v7 + 72);
          if (v21 + 16 >= v22)
          {
            v21 = 0;
          }

          v23 = v21 + v20;
          if (v22 <= v23)
          {
            v23 = 0;
          }

          *(v7 + 88) = v23;
          v24 = *(v7 + 80);
          if (*(v24 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_53;
        }
      }

      v49 = v8;
      if (v52)
      {
        if (v51 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v50 = 3197;
          v38 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v7 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          if (v39 <= v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          *(v7 + 88) = v41;
          v42 = *(v7 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v7 + 124) = 0;
            v43 = *(v7 + 8);
            v44 = IPC::Encoder::operator new(0x238, v12);
            *v44 = 293;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
            IPC::Connection::sendMessageImpl(v43, &v53, 1, 0);
            v46 = v53;
            v53 = 0;
            if (v46)
            {
              IPC::Encoder::~Encoder(v46, v45);
              bmalloc::api::tzoneFree(v47, v48);
            }

            goto LABEL_20;
          }
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      JUMPOUT(0x19E386FB8);
    }
  }

LABEL_20:
  os_unfair_lock_unlock(this + 4);
}

void WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_EMPTY_REQUEST(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v7 = *&this[2]._os_unfair_lock_opaque;
  v8 = *&this[6]._os_unfair_lock_opaque;
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
  if (v52 == 1)
  {
    v25 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E3873B8);
    }

    v26 = v50;
    *v50 = 3198;
    v27 = v26 + 1;
    if (v25 - 2 >= (-v27 & 7 | 8uLL))
    {
      v28 = -v27 & 7;
      *(v27 + v28) = v8;
      if (v28 != 7)
      {
        v28 = 6;
      }

      v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      v30 = *(v7 + 80);
      v32 = v28 + 10;
      if (v29 + 16 >= v31)
      {
        v29 = 0;
      }

      v33 = v32 + v29;
      if (v31 <= v33)
      {
        v33 = 0;
      }

      *(v7 + 88) = v33;
      if (*(v30 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v34 = atomic_exchange((*(v30 + 16) + 128), v33);
      v35 = *(v7 + 124);
      if (v34 == 0x80000000 || v35 != 0)
      {
        v37 = v35 + 1;
        *(v7 + 124) = v37;
        if (v37 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
      if (v52 != 1)
      {
        goto LABEL_20;
      }

      v13 = v51;
      if (v51 <= 1)
      {
        __break(0xC471u);
        goto LABEL_54;
      }

      v14 = v50;
      *v50 = 291;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = a2;
        v18 = v15 + v16;
        v19 = -v18 & 7 | 8;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 7)) = a3;
          v20 = v13 - v17 + v19;
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v22 = *(v7 + 72);
          if (v21 + 16 >= v22)
          {
            v21 = 0;
          }

          v23 = v21 + v20;
          if (v22 <= v23)
          {
            v23 = 0;
          }

          *(v7 + 88) = v23;
          v24 = *(v7 + 80);
          if (*(v24 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_53;
        }
      }

      v49 = v8;
      if (v52)
      {
        if (v51 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v50 = 3197;
          v38 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v7 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          if (v39 <= v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          *(v7 + 88) = v41;
          v42 = *(v7 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v7 + 124) = 0;
            v43 = *(v7 + 8);
            v44 = IPC::Encoder::operator new(0x238, v12);
            *v44 = 291;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
            IPC::Connection::sendMessageImpl(v43, &v53, 1, 0);
            v46 = v53;
            v53 = 0;
            if (v46)
            {
              IPC::Encoder::~Encoder(v46, v45);
              bmalloc::api::tzoneFree(v47, v48);
            }

            goto LABEL_20;
          }
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      JUMPOUT(0x19E387390);
    }
  }

LABEL_20:
  os_unfair_lock_unlock(this + 4);
}

void WebKit::LogClient::WEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_FRAME(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 4);
  v7 = *&this[2]._os_unfair_lock_opaque;
  v8 = *&this[6]._os_unfair_lock_opaque;
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
  if (v52 == 1)
  {
    v25 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E387790);
    }

    v26 = v50;
    *v50 = 3198;
    v27 = v26 + 1;
    if (v25 - 2 >= (-v27 & 7 | 8uLL))
    {
      v28 = -v27 & 7;
      *(v27 + v28) = v8;
      if (v28 != 7)
      {
        v28 = 6;
      }

      v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      v30 = *(v7 + 80);
      v32 = v28 + 10;
      if (v29 + 16 >= v31)
      {
        v29 = 0;
      }

      v33 = v32 + v29;
      if (v31 <= v33)
      {
        v33 = 0;
      }

      *(v7 + 88) = v33;
      if (*(v30 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v34 = atomic_exchange((*(v30 + 16) + 128), v33);
      v35 = *(v7 + 124);
      if (v34 == 0x80000000 || v35 != 0)
      {
        v37 = v35 + 1;
        *(v7 + 124) = v37;
        if (v37 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
      if (v52 != 1)
      {
        goto LABEL_20;
      }

      v13 = v51;
      if (v51 <= 1)
      {
        __break(0xC471u);
        goto LABEL_54;
      }

      v14 = v50;
      *v50 = 292;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = a2;
        v18 = v15 + v16;
        v19 = -v18 & 7 | 8;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 7)) = a3;
          v20 = v13 - v17 + v19;
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v22 = *(v7 + 72);
          if (v21 + 16 >= v22)
          {
            v21 = 0;
          }

          v23 = v21 + v20;
          if (v22 <= v23)
          {
            v23 = 0;
          }

          *(v7 + 88) = v23;
          v24 = *(v7 + 80);
          if (*(v24 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_53;
        }
      }

      v49 = v8;
      if (v52)
      {
        if (v51 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v50 = 3197;
          v38 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v7 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          if (v39 <= v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          *(v7 + 88) = v41;
          v42 = *(v7 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v7 + 124) = 0;
            v43 = *(v7 + 8);
            v44 = IPC::Encoder::operator new(0x238, v12);
            *v44 = 292;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
            IPC::Connection::sendMessageImpl(v43, &v53, 1, 0);
            v46 = v53;
            v53 = 0;
            if (v46)
            {
              IPC::Encoder::~Encoder(v46, v45);
              bmalloc::api::tzoneFree(v47, v48);
            }

            goto LABEL_20;
          }
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      JUMPOUT(0x19E387768);
    }
  }

LABEL_20:
  os_unfair_lock_unlock(this + 4);
}

void WebKit::WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, int a12, __int16 a13, int a14, unsigned int a15, uint64_t *a16)
{
  v16 = a2;
  v128 = *MEMORY[0x1E69E9840];
  WebKit::WebFrameLoaderClient::navigationActionData(a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, v85, a13);
  if ((v127 & 1) == 0)
  {
    v49 = *a16;
    *a16 = 0;
    (*(*v49 + 16))(v49, 2);
    (*(*v49 + 8))(v49);
    goto LABEL_14;
  }

  v18 = a15;
  v19 = WebKit::WebFrame::page(*(a1 + 8));
  v20 = v19;
  if (v19)
  {
    CFRetain(*(v19 + 8));
  }

  v21 = WebKit::WebFrame::setUpPolicyListener(*(a1 + 8), a16, 1);
  v22 = v21;
  if (a15)
  {
    if (v127)
    {
      v23 = v20 + 32;
      v24 = *(a1 + 8);
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v24 + 24), v24 + 16);
      v25 = *(v24 + 24);
      atomic_fetch_add(v25, 1u);
      if (WebKit::WebFrame::page(*(a1 + 8)))
      {
        v26 = *(WebKit::WebFrame::page(*(a1 + 8)) + 48);
      }

      else
      {
        v26 = 0;
      }

      v27 = (*(*v23 + 56))(v20 + 32);
      v29 = IPC::Encoder::operator new(0x238, v28);
      *v29 = 2171;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      *(v29 + 1) = v27;
      *(v29 + 68) = 0;
      *(v29 + 70) = 0;
      *(v29 + 69) = 0;
      IPC::Encoder::encodeHeader(v29);
      *v113 = v29;
      IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v29, v126);
      v30 = WTF::fastMalloc(0x20);
      *v30 = &unk_1F11312C0;
      v30[1] = v25;
      v30[2] = v22;
      v30[3] = v26;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        *v86 = v30;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        (*(*v23 + 40))(v20 + 32, v113, v86, 0);
        v32 = *v86;
        *v86 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        v33 = *v113;
        *v113 = 0;
        if (v33)
        {
          IPC::Encoder::~Encoder(v33, v31);
          bmalloc::api::tzoneFree(v45, v46);
        }

        goto LABEL_13;
      }

LABEL_89:
      __break(0xC471u);
      JUMPOUT(0x19E388040);
    }

    goto LABEL_64;
  }

  v21 = WTF::linkedOnOrAfterSDKWithBehavior();
  v35 = *(v16 + 480);
  if ((!v35 || *(v35 + 60) || *(v35 + 12) != 1) && (*(v16 + 882) & 1) == 0 && v21 == 1)
  {
    if (v127)
    {
      v36 = (*(*(v20 + 32) + 56))(v20 + 32);
      v38 = IPC::Encoder::operator new(0x238, v37);
      *v38 = 2171;
      *(v38 + 2) = 0;
      *(v38 + 3) = 0;
      *(v38 + 1) = v36;
      *(v38 + 68) = 0;
      *(v38 + 70) = 0;
      *(v38 + 69) = 0;
      IPC::Encoder::encodeHeader(v38);
      *v113 = v38;
      IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v38, v126);
      v39 = WTF::fastMalloc(0x10);
      *v39 = &unk_1F1131298;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        *v86 = v39;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        (*(*(v20 + 32) + 40))(v20 + 32, v113, v86, 0);
        v41 = *v86;
        *v86 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        v42 = *v113;
        *v113 = 0;
        if (v42)
        {
          IPC::Encoder::~Encoder(v42, v40);
          bmalloc::api::tzoneFree(v47, v48);
        }

        v43 = *(a1 + 8);
        *v86 = 0;
        v86[2] = 0;
        LOBYTE(IdentifierInternal) = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91[0] = 0;
        v92 = 0;
        LOBYTE(v93) = 0;
        v94 = 0;
        v95 = 0;
        v97 = 0;
        v98 = 0;
        WebKit::WebFrame::didReceivePolicyDecision(v43, v22, v86);
        if (v97 == 1)
        {
          v83 = v96;
          v96 = 0;
          if (v83)
          {
            if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v83, v44);
            }
          }
        }

        if (v94 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v93);
        }

        if (v92 == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v91, v44);
        }

        goto LABEL_13;
      }

      goto LABEL_89;
    }

    goto LABEL_64;
  }

  if ((v127 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *v113 = v126;
  v50 = IPC::MessageSender::sendSync<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>(v86, v20 + 32, v113);
  if (v99)
  {
    v51 = WebCore::logClient(v50);
    v52 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v51);
    if (!v52)
    {
      v74 = qword_1ED6416F0;
      if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v75 = *(a1 + 8);
      v76 = *(v75 + 11);
      v21 = WebKit::WebFrame::page(v75);
      if (v21)
      {
        v21 = WebKit::WebFrame::page(*(a1 + 8));
        v77 = *(v21 + 6);
      }

      else
      {
        v77 = 0;
      }

      v84 = v99;
      if (v99)
      {
        if (v99 != 1)
        {
          goto LABEL_88;
        }

        v84 = v86[0];
      }

      *v113 = 134218496;
      *&v113[4] = v76;
      v114 = 2048;
      v115 = v77;
      v116 = 1024;
      LODWORD(v117) = v84;
      _os_log_error_impl(&dword_19D52D000, v74, OS_LOG_TYPE_ERROR, "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: ignoring because of failing to send sync IPC, error = %hhu", v113, 0x1Cu);
      goto LABEL_44;
    }

    v16 = v52;
    v53 = *(a1 + 8);
    v18 = *(v53 + 11);
    v21 = WebKit::WebFrame::page(v53);
    if (v21)
    {
      v21 = WebKit::WebFrame::page(*(a1 + 8));
      v54 = *(v21 + 6);
LABEL_40:
      v55 = v99;
      if (!v99)
      {
LABEL_43:
        WebKit::LogClient::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_SYNC_IPC_FAILED(v16, v18, v54, v55);
LABEL_44:
        v56 = *(a1 + 8);
        *v113 = 0;
        v113[2] = 2;
        v113[8] = 0;
        BYTE2(v115) = 0;
        LOBYTE(v117) = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        WebKit::WebFrame::didReceivePolicyDecision(v56, v22, v113);
        WebKit::PolicyDecision::~PolicyDecision(v113, v57);
        goto LABEL_45;
      }

      if (v99 == 1)
      {
        v55 = v86[0];
        goto LABEL_43;
      }

LABEL_88:
      mpark::throw_bad_variant_access(v21);
    }

LABEL_65:
    v54 = 0;
    goto LABEL_40;
  }

  v59 = IPC::ConnectionSendSyncResult<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>::takeReply(v113, v86);
  v60 = WebCore::logClient(v59);
  v61 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v60);
  if (v61)
  {
    v62 = v61;
    v63 = *(a1 + 8);
    v64 = *(v63 + 11);
    if (WebKit::WebFrame::page(v63))
    {
      v65 = *(WebKit::WebFrame::page(*(a1 + 8)) + 48);
    }

    else
    {
      v65 = 0;
    }

    v66 = "Download";
    v67 = "Use";
    if (v113[2] == 2)
    {
      v67 = "Ignore";
    }

    if (v113[2] != 1)
    {
      v66 = v67;
    }

    if (v113[2] == 3)
    {
      v68 = "LoadWillContinueInAnotherProcess";
    }

    else
    {
      v68 = v66;
    }

    WTF::CString::CString(buf, v68);
    WebKit::LogClient::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_SYNC_IPC(v62, v64, v65, buf);
    v70 = *buf;
    *buf = 0;
    if (v70)
    {
      if (*v70 == 1)
      {
        WTF::fastFree(v70, v69);
      }

      else
      {
        --*v70;
      }
    }
  }

  else
  {
    v78 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v79 = *(a1 + 8);
      v80 = *(v79 + 11);
      if (WebKit::WebFrame::page(v79))
      {
        v81 = *(WebKit::WebFrame::page(*(a1 + 8)) + 48);
      }

      else
      {
        v81 = 0;
      }

      switch(v113[2])
      {
        case 3:
          v82 = "LoadWillContinueInAnotherProcess";
          break;
        case 1:
          v82 = "Download";
          break;
        case 2:
          v82 = "Ignore";
          break;
        default:
          v82 = "Use";
          break;
      }

      *buf = 134218498;
      *&buf[4] = v80;
      v101 = 2048;
      v102 = v81;
      v103 = 2082;
      v104 = v82;
      _os_log_impl(&dword_19D52D000, v78, OS_LOG_TYPE_DEFAULT, "[webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: Got policyAction %{public}s from sync IPC", buf, 0x20u);
    }
  }

  v71 = *(a1 + 8);
  *buf = *v113;
  buf[2] = v113[2];
  buf[8] = 0;
  BYTE2(v102) = 0;
  v104 = v117;
  v105 = v118;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  WebKit::WebFrame::didReceivePolicyDecision(v71, v22, buf);
  WebKit::PolicyDecision::~PolicyDecision(buf, v72);
  WebKit::PolicyDecision::~PolicyDecision(v113, v73);
LABEL_45:
  IPC::ConnectionSendSyncResult<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>::~ConnectionSendSyncResult(v86, v58);
  if (v20)
  {
LABEL_13:
    CFRelease(*(v20 + 8));
  }

LABEL_14:
  if (v127 == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v126, v34);
  }
}

atomic_ullong *IPC::MessageSender::sendSync<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>(char *a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a2 + 56))(a2);
  result = (*(*a2 + 48))(a2);
  if (!result)
  {
    *a1 = 3;
    a1[224] = 1;
    return result;
  }

  v8 = result;
  while (1)
  {
    v9 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v10 = *result;
    atomic_compare_exchange_strong_explicit(result, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*result);
LABEL_7:
  IPC::Connection::createSyncMessageEncoder(0x102E, v6, v52);
  IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v52[0], *a3);
  v11 = IPC::Connection::sendSyncMessage(v8, v52[1], v52, 0, &v50, INFINITY);
  if (!v51)
  {
    v13 = v50;
    v50 = 0;
    if (*(v13 + 25) == 3194)
    {
      v14 = 11;
    }

    else
    {
      LOBYTE(v39[0]) = 0;
      v49 = 0;
      IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(v13, v53);
      v16 = v64;
      if ((v64 & 1) == 0)
      {
        v15 = *v13;
        v33 = *(v13 + 1);
        *v13 = 0;
        *(v13 + 1) = 0;
        v34 = *(v13 + 3);
        if (v34)
        {
          if (v33)
          {
            (*(*v34 + 16))(v34, v15);
            v16 = v64;
          }
        }
      }

      if (v49 == v16)
      {
        if (v49)
        {
          v39[0] = *v53;
          v39[1] = v54;
          v40 = v55;
          std::__optional_storage_base<WebKit::WebsitePoliciesData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::WebsitePoliciesData,false>>(v41, &v56);
          std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v43, &v58);
          if (v47 == v62)
          {
            if (v47)
            {
              v45 = v60;
              v17 = v61;
              v61 = 0;
              v18 = v46;
              v46 = v17;
              if (v18)
              {
                if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, v15);
                }
              }
            }
          }

          else if (v47)
          {
            v19 = v46;
            v46 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v15);
            }

            v47 = 0;
          }

          else
          {
            v45 = v60;
            v20 = v61;
            v61 = 0;
            v46 = v20;
            v47 = 1;
          }

          v48 = v63;
        }
      }

      else if (v49)
      {
        if (v47 == 1)
        {
          v38 = v46;
          v46 = 0;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v15);
            }
          }
        }

        if (v44 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v43);
        }

        if (v42 == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v41, v15);
        }

        v49 = 0;
      }

      else
      {
        std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(v39, v53);
        v49 = 1;
      }

      if (v64 == 1)
      {
        if (v62 == 1)
        {
          v35 = v61;
          v61 = 0;
          if (v35)
          {
            if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v15);
            }
          }
        }

        if (v59 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v58);
        }

        if (v57[112] == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v56, v15);
        }
      }

      if (v49 == 1)
      {
        v53[0] = v13;
        std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(&v53[1], v39);
        v21 = v53[0];
        v53[0] = 0;
        *a1 = v21;
        std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>((a1 + 8), &v53[1]);
        a1[224] = 0;
        if (v63 == 1)
        {
          v36 = v62;
          v62 = 0;
          if (v36)
          {
            if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v12);
            }
          }
        }

        if (v60 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v59);
        }

        if (v58 == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v57, v12);
        }

        v22 = v53[0];
        v53[0] = 0;
        if (v22)
        {
          IPC::Decoder::~Decoder(v22);
          bmalloc::api::tzoneFree(v31, v32);
        }

        if (v49)
        {
          if (v47 == 1)
          {
            v37 = v46;
            v46 = 0;
            if (v37)
            {
              if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v12);
              }
            }
          }

          if (v44 == 1)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v43);
          }

          if (v42 == 1)
          {
            WebKit::WebsitePoliciesData::~WebsitePoliciesData(v41, v12);
          }
        }

        goto LABEL_57;
      }

      v14 = 14;
    }

    *a1 = v14;
    a1[224] = 1;
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v23, v24);
LABEL_57:
    if (!v51)
    {
      v25 = v50;
      v50 = 0;
      if (v25)
      {
        IPC::Decoder::~Decoder(v25);
        bmalloc::api::tzoneFree(v29, v30);
      }
    }

    goto LABEL_60;
  }

  if (v51 != 1)
  {
    mpark::throw_bad_variant_access(v11);
  }

  *a1 = v50;
  a1[224] = 1;
LABEL_60:
  v26 = v52[0];
  v52[0] = 0;
  if (v26)
  {
    IPC::Encoder::~Encoder(v26, v12);
    bmalloc::api::tzoneFree(v27, v28);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
}

void WebKit::LogClient::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_SYNC_IPC_FAILED(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, char a4)
{
  os_unfair_lock_lock(this + 4);
  v9 = *&this[2]._os_unfair_lock_opaque;
  v53 = a2;
  v54 = a3;
  v55[0] = a4;
  v10 = *&this[6]._os_unfair_lock_opaque;
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v56, v12);
  if (v58 == 1)
  {
    v28 = v57;
    if (v57 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E38897CLL);
    }

    v29 = v56;
    *v56 = 3198;
    v30 = v29 + 1;
    if (v28 - 2 >= (-v30 & 7 | 8uLL))
    {
      v31 = -v30 & 7;
      *(v30 + v31) = v10;
      v32 = 6;
      if (v31 > 6)
      {
        v32 = v31;
      }

      v33 = v32 + 10;
      v34 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v35 = *(v9 + 72);
      if (v34 + 16 >= v35)
      {
        v34 = 0;
      }

      v36 = v33 + v34;
      if (v35 <= v36)
      {
        v36 = 0;
      }

      *(v9 + 88) = v36;
      v37 = *(v9 + 80);
      if (*(v37 + 8) <= 0xFFuLL)
      {
        goto LABEL_54;
      }

      v38 = atomic_exchange((*(v37 + 16) + 128), v36);
      v39 = *(v9 + 124);
      if (v38 == 0x80000000 || v39 != 0)
      {
        v41 = v39 + 1;
        *(v9 + 124) = v41;
        if (v41 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v56, v12);
      if (v58 != 1)
      {
        goto LABEL_21;
      }

      v15 = v57;
      if (v57 <= 1)
      {
        __break(0xC471u);
        goto LABEL_55;
      }

      v16 = v56;
      *v56 = 290;
      v17 = v16 + 1;
      v18 = -v17 & 7 | 8;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 7)) = v53;
        v20 = v17 + v18;
        v21 = -v20 & 7 | 8;
        if (v19 >= v21)
        {
          v22 = -v20 & 7;
          *(v20 + v22) = a3;
          if (v19 != v21)
          {
            *(v20 + v21) = v55[0];
            v23 = v15 - v19 + v22 + 9;
            if (v23 <= 0x10)
            {
              v23 = 16;
            }

            v24 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v25 = *(v9 + 72);
            if (v24 + 16 >= v25)
            {
              v24 = 0;
            }

            v26 = v24 + v23;
            if (v25 <= v26)
            {
              v26 = 0;
            }

            *(v9 + 88) = v26;
            v27 = *(v9 + 80);
            if (*(v27 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

              goto LABEL_21;
            }

            goto LABEL_54;
          }
        }
      }

      if (v58)
      {
        if (v57 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v56 = 3197;
          v42 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v43 = *(v9 + 72);
          if (v42 + 16 >= v43)
          {
            v42 = 0;
          }

          v44 = v42 + 16;
          if (v43 <= v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = v44;
          }

          *(v9 + 88) = v45;
          v46 = *(v9 + 80);
          if (*(v46 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v46 + 16) + 128), v45);
            *(v9 + 124) = 0;
            v47 = *(v9 + 8);
            v48 = IPC::Encoder::operator new(0x238, v14);
            *v48 = 290;
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 1) = v10;
            *(v48 + 68) = 0;
            *(v48 + 70) = 0;
            *(v48 + 69) = 0;
            IPC::Encoder::encodeHeader(v48);
            v59 = v48;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v53);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v54);
            IPC::Encoder::operator<<<BOOL>(v48, v55);
            IPC::Connection::sendMessageImpl(v47, &v59, 1, 0);
            v50 = v59;
            v59 = 0;
            if (v50)
            {
              IPC::Encoder::~Encoder(v50, v49);
              bmalloc::api::tzoneFree(v51, v52);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      JUMPOUT(0x19E38895CLL);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(this + 4);
}

uint64_t IPC::ConnectionSendSyncResult<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>::takeReply(mpark *a1, uint64_t a2)
{
  if (*(a2 + 224))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = (a2 + 8);

  return std::tuple<WebKit::PolicyDecision>::tuple[abi:sn200100]<WebKit::PolicyDecision,0>(a1, v3);
}

void WebKit::LogClient::WEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_SYNC_IPC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  os_unfair_lock_lock((a1 + 16));
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v63, v12);
    if (v65 != 1)
    {
      goto LABEL_38;
    }

    v47 = v64;
    if (v64 <= 1)
    {
      goto LABEL_64;
    }

    v48 = v63;
    *v63 = 3198;
    v49 = v48 + 2;
    if (v47 - 2 < (-v49 & 7 | 8uLL))
    {
      goto LABEL_38;
    }

    v50 = -v49 & 7;
    *&v49[v50] = v10;
    if (v50 != 7)
    {
      v50 = 6;
    }

    v51 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v9 + 72);
    v52 = *(v9 + 80);
    v54 = v50 + 10;
    if (v51 + 16 >= v53)
    {
      v51 = 0;
    }

    v55 = v54 + v51;
    if (v53 <= v55)
    {
      v55 = 0;
    }

    *(v9 + 88) = v55;
    if (*(v52 + 8) <= 0xFFuLL)
    {
      goto LABEL_63;
    }

    v56 = atomic_exchange((*(v52 + 16) + 128), v55);
    v57 = *(v9 + 124);
    if (v56 == 0x80000000 || v57 != 0)
    {
      v59 = v57 + 1;
      *(v9 + 124) = v59;
      if (v59 >= *(v9 + 120))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }
    }

    *(v9 + 64) = v10;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v60, v12);
  if (v62 != 1)
  {
    goto LABEL_38;
  }

  v14 = v60;
  v15 = v61;
  v65 = v61;
  if (v61 <= 1)
  {
LABEL_64:
    __break(0xC471u);
    JUMPOUT(0x19E388DC8);
  }

  *v60 = 289;
  v16 = v14 + 1;
  v17 = v15 - 2;
  v18 = -v16 & 7 | 8;
  v19 = v17 >= v18;
  v20 = v17 - v18;
  if (v19 && (*(v16 + (-v16 & 7)) = a2, v21 = v16 + v18, v22 = -v21 & 7 | 8, v19 = v20 >= v22, v23 = v20 - v22, v19))
  {
    *(v21 + (-v21 & 7)) = a3;
    v63 = (v21 + v22);
    v64 = v23;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v24 = *a4;
  if (*a4)
  {
    v25 = (v24 + 16);
    v26 = *(v24 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v63, v25, v26);
  if (v63)
  {
    v28 = v65 - v64;
    if (v65 - v64 <= 0x10)
    {
      v28 = 16;
    }

    v29 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v9 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v29 + v28;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v9 + 88) = v31;
    v32 = *(v9 + 80);
    if (*(v32 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(v9 + 124))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }

      goto LABEL_38;
    }

    goto LABEL_63;
  }

  if ((v62 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v61 <= 1)
  {
    __break(0xC471u);
    goto LABEL_63;
  }

  *v60 = 3197;
  v33 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v9 + 72);
  if (v33 + 16 >= v34)
  {
    v33 = 0;
  }

  v35 = v33 + 16;
  if (v34 <= v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  *(v9 + 88) = v36;
  v37 = *(v9 + 80);
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_63;
  }

  atomic_exchange((*(v37 + 16) + 128), v36);
  *(v9 + 124) = 0;
  v38 = *(v9 + 8);
  v39 = IPC::Encoder::operator new(0x238, v27);
  *v39 = 289;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = v10;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v63 = v39;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, a3);
  v40 = *a4;
  if (*a4)
  {
    v41 = (v40 + 16);
    v42 = *(v40 + 8);
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v39, v41, v42);
  IPC::Connection::sendMessageImpl(v38, &v63, 1, 0);
  v44 = v63;
  v63 = 0;
  if (v44)
  {
    IPC::Encoder::~Encoder(v44, v43);
    bmalloc::api::tzoneFree(v45, v46);
  }

LABEL_38:
  os_unfair_lock_unlock((a1 + 16));
}

void WebKit::WebFrameLoaderClient::updateSandboxFlags(uint64_t a1, __int16 a2)
{
  v4 = WebKit::WebFrame::page(*(a1 + 8));
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(*(a1 + 8) + 88);
    v7 = (*(*(v5 + 32) + 56))(v5 + 32);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 2407;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v14 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v9, a2);
    (*(*(v5 + 32) + 32))(v5 + 32, &v14, 0);
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v12, v13);
    }

    CFRelease(*(v5 + 8));
  }
}

void WebKit::WebFrameLoaderClient::updateOpener(WebKit::WebFrame **this, const WebCore::Frame *a2)
{
  v4 = WebKit::WebFrame::page(this[1]);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    v6 = *(this[1] + 11);
    v7 = *(a2 + 4);
    v8 = (*(*(v5 + 32) + 56))(v5 + 32);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 2403;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v15 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v6);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v7);
    (*(*(v5 + 32) + 32))(v5 + 32, &v15, 0);
    v12 = v15;
    v15 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v13, v14);
    }

    CFRelease(*(v5 + 8));
  }
}

void WebKit::WebGeolocationClient::~WebGeolocationClient(WebKit::WebGeolocationClient *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebGeolocationClient::~WebGeolocationClient(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebGeolocationClient::geolocationDestroyed(WebKit::WebGeolocationClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = CFRetain(*(v2 - 8));
      v5 = WebKit::WebProcess::singleton(v3, v4);
      v6 = WebKit::WebProcess::supplement<WebKit::WebGeolocationManager>(v5);
      WebKit::WebGeolocationManager::unregisterWebPage(v6, (v2 - 16));
      v7 = *(v2 - 8);

      CFRelease(v7);
    }
  }
}

uint64_t WebKit::WebProcess::supplement<WebKit::WebGeolocationManager>(uint64_t *a1)
{
  v4[0] = WebKit::WebGeolocationManager::supplementName(a1);
  v4[1] = v2;
  result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(a1 + 39, v4);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void WebKit::WebGeolocationClient::startUpdating(WebKit::WebGeolocationClient *this, const WTF::String *a2, int a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      {
        v8 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v11 = WebKit::WebProcess::operator new(0x370, v7);
        v8 = WebKit::WebProcess::WebProcess(v11);
        WebKit::WebProcess::singleton(void)::process = v8;
      }

      v9 = WebKit::WebProcess::supplement<WebKit::WebGeolocationManager>(v8);
      WebKit::WebGeolocationManager::registerWebPage(v9, (v4 - 16), a2, a3);
      v10 = *(v4 - 8);

      CFRelease(v10);
    }
  }
}

void WebKit::WebGeolocationClient::stopUpdating(WebKit::WebGeolocationClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      {
        v4 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v7 = WebKit::WebProcess::operator new(0x370, v3);
        v4 = WebKit::WebProcess::WebProcess(v7);
        WebKit::WebProcess::singleton(void)::process = v4;
      }

      v5 = WebKit::WebProcess::supplement<WebKit::WebGeolocationManager>(v4);
      WebKit::WebGeolocationManager::unregisterWebPage(v5, (v2 - 16));
      v6 = *(v2 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebGeolocationClient::setEnableHighAccuracy(WebKit::WebGeolocationClient *this, int a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v9 = WebKit::WebProcess::operator new(0x370, v5);
        v6 = WebKit::WebProcess::WebProcess(v9);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v7 = WebKit::WebProcess::supplement<WebKit::WebGeolocationManager>(v6);
      WebKit::WebGeolocationManager::setEnableHighAccuracyForPage(v7, (v3 - 16), a2);
      v8 = *(v3 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebGeolocationClient::requestPermission(WebKit::WebGeolocationClient *this, WebCore::Geolocation *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::GeolocationPermissionRequestManager::startRequestForGeolocation(*(v3 + 592), a2);
    }
  }
}

void WebKit::WebGeolocationClient::revokeAuthorizationToken(WebKit::WebGeolocationClient *this, const WTF::String *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WebKit::GeolocationPermissionRequestManager::revokeAuthorizationToken(*(v3 + 592), a2);
    }
  }
}

uint64_t *WebKit::WebGeolocationClient::cancelPermissionRequest(uint64_t *this, WebCore::Geolocation *a2)
{
  v2 = this[2];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      return WebKit::GeolocationPermissionRequestManager::cancelRequestForGeolocation(*(v3 + 592), a2);
    }
  }

  return this;
}

void WebKit::WebDragClient::~WebDragClient(WebKit::WebDragClient *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11312E8;
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

{
  v3 = *(this + 1);
  *this = &unk_1F11312E8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebKit::WebEditorClient::~WebEditorClient(WebKit::WebEditorClient *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

void non-virtual thunk toWebKit::WebEditorClient::~WebEditorClient(WebKit::WebEditorClient *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this - 2, a2);
}

{
  WebKit::WebEditorClient::operator delete((this - 24), a2);
}

void WebKit::WebFileSystemStorageConnection::~WebFileSystemStorageConnection(WebKit::WebFileSystemStorageConnection *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  *this = &unk_1F1130F08;
  v6 = *(this + 2);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  *this = &unk_1F1130F08;
  v6 = *(this + 2);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  WTF::fastFree(this, a2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F1130FC8;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainRunLoop();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(**(v1 + 24) + 24))(*(v1 + 24));
    }

    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }

    return WTF::fastFree(v1, v2);
  }

  return result;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::WebPageProxy::DecidePolicyForNavigationActionSync>::~ConnectionSendSyncResult(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 224))
  {
    if (*(a1 + 208) == 1)
    {
      v4 = *(a1 + 200);
      *(a1 + 200) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(a1 + 184) == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 176));
    }

    if (*(a1 + 168) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((a1 + 48), a2);
    }

    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1, 0);
  }

  *(a1 + 224) = -1;
  return a1;
}

_DWORD *WTF::RefCounted<WebKit::WebDataListSuggestionPicker>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebDataListSuggestionPicker::~WebDataListSuggestionPicker((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebDateTimeChooser>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebDateTimeChooser::~WebDateTimeChooser((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

double WebKit::WebEditorClient::operator delete(WebKit::WebEditorClient *a1, void *a2)
{
  WebKit::WebEditorClient::~WebEditorClient(a1, a2);
  if (*(v2 + 16))
  {
    *(v2 + 32) = 0;
    result = 0.0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebGeolocationClient>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebGeolocationClient::~WebGeolocationClient((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t Messages::WebPageProxy::LogDiagnosticMessageWithResultFromWebProcess::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = *(a1 + 20);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2282;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

WebKit::WebUndoStep *WTF::RefCounted<WebKit::WebUndoStep>::deref(WebKit::WebUndoStep *result)
{
  if (*result == 1)
  {
    WebKit::WebUndoStep::~WebUndoStep(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebPageProxy::CanUndoRedo>(char *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  IPC::Connection::createSyncMessageEncoder(0x1029, a4, v22);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v22[0], *a3);
  v7 = IPC::Connection::sendSyncMessage(a2, v22[1], v22, 0, &v20, INFINITY);
  if (v21)
  {
    if (v21 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    *a1 = v20;
    a1[16] = 1;
  }

  else
  {
    v9 = v20;
    v20 = 0;
    if (*(v9 + 25) == 3194)
    {
      v10 = 11;
    }

    else
    {
      v13 = IPC::Decoder::decode<std::tuple<BOOL>>(v9);
      if (v13 >= 0x100u)
      {
        *a1 = v9;
        a1[8] = v13;
        a1[16] = 0;
        goto LABEL_9;
      }

      v10 = 14;
    }

    *a1 = v10;
    a1[16] = 1;
    IPC::Decoder::~Decoder(v9);
    bmalloc::api::tzoneFree(v11, v12);
  }

LABEL_9:
  if (!v21)
  {
    v14 = v20;
    v20 = 0;
    if (v14)
    {
      IPC::Decoder::~Decoder(v14);
      bmalloc::api::tzoneFree(v18, v19);
    }
  }

  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebPageProxy::ExecuteUndoRedo>(_BYTE *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  IPC::Connection::createSyncMessageEncoder(0x1032, a4, v20);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v20[0], *a3);
  v7 = IPC::Connection::sendSyncMessage(a2, v20[1], v20, 0, &v18, INFINITY);
  if (v19)
  {
    if (v19 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    *a1 = v18;
    a1[16] = 1;
  }

  else
  {
    v9 = v18;
    v18 = 0;
    if (*(v9 + 25) == 3194)
    {
      *a1 = 11;
      a1[16] = 1;
      IPC::Decoder::~Decoder(v9);
      bmalloc::api::tzoneFree(v10, v11);
      if (!v19)
      {
        v12 = v18;
        v18 = 0;
        if (v12)
        {
          IPC::Decoder::~Decoder(v12);
          bmalloc::api::tzoneFree(v13, v14);
        }
      }
    }

    else
    {
      *a1 = v9;
      a1[16] = 0;
    }
  }

  result = v20[0];
  v20[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebFileSystemStorageConnection::errorWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::ScriptExecutionContext &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1130FF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFileSystemStorageConnection::errorWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::ScriptExecutionContext &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1130FF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebFileSystemStorageConnection::errorWritable(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,WebCore::ScriptExecutionContext &>::call(uint64_t a1, WebCore::WorkerGlobalScope *a2)
{
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    ++*(a2 + 80);
    result = WebCore::WorkerGlobalScope::fileSystemStorageConnection(a2);
    if (result)
    {
      v4 = result;
      v5 = (result + 8);
      atomic_fetch_add((result + 8), 1u);
      result = WebCore::FileSystemStorageConnection::errorFileSystemWritable();
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5);
        result = (*(*v4 + 8))(v4);
      }
    }

    if (*(a2 + 80) == 1)
    {
      v6 = *(*a2 + 40);

      return v6(a2);
    }

    else
    {
      --*(a2 + 80);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::IsSameEntry,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131018;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::IsSameEntry,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131018;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::IsSameEntry,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (v4 & 0x100) != 0))
  {
    v8[0] = v4;
    v8[16] = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v6 + 16))(v6, v8);
    (*(*v6 + 8))(v6);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v8, v7);
  }

  else
  {

    return IPC::Connection::cancelReply<Messages::NetworkStorageManager::IsSameEntry,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>>((a1 + 8));
  }
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkStorageManager::IsSameEntry,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>>(uint64_t *a1)
{
  v4[0] = 0;
  v4[16] = 0;
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v4, v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFileHandle,WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1131040;
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

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFileHandle,WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1131040;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFileHandle,WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(&v8, a3), v10 == 1))
  {
    v4 = v8;
    v5 = v9;
    v6 = (a1 + 8);
  }

  else
  {
    v6 = (a1 + 8);
    v4 = 10;
    v5 = 1;
  }

  return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(v6, v4, v5);
}

unint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = a2[1];
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
    a2[1] = 0;
    v16 = a2[3];
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_26:
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v6)
    {
      (*(*v17 + 16))(v17, v5);
    }

    goto LABEL_8;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_26;
  }

  if (v7)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = 0;
      v11 = result & 0xFFFFFFFFFFFFFF00;
LABEL_16:
      *a1 = result | v11;
      *(a1 + 8) = v10;
      *(a1 + 16) = 1;
      return result;
    }
  }

  else
  {
    LOWORD(result) = IPC::Decoder::decode<WebKit::FileSystemStorageError>(a2);
    if ((result & 0x100) != 0)
    {
      v11 = 0;
      result = result;
      v10 = 1;
      goto LABEL_16;
    }
  }

LABEL_8:
  v12 = *a2;
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v13)
    {
      (*(*result + 16))(result, v12);
      v13 = a2[1];
      result = a2[3];
    }
  }

  else
  {
    v13 = 0;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getFileHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(mpark *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    WebKit::convertToException(a2, v14);
    v5 = v15;
    v15 = 0;
    LOBYTE(v16) = v14[0];
    v17 = v5;
    v18 = 1;
    v6 = *(a1 + 3);
    *(a1 + 3) = 0;
    (*(*v6 + 16))(v6, &v16);
    (*(*v6 + 8))(v6);
    if (v18 != 255)
    {
      if (v18)
      {
        v13 = v17;
        v17 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v7);
        }
      }

      else
      {
        v8 = v16;
        v16 = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(v8);
        }
      }
    }

    v18 = -1;
    result = v15;
    v15 = 0;
    if (result)
    {
LABEL_15:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = WTF::fastMalloc(0x20);
    *v10 = 1;
    *(v10 + 4) = 0;
    *(v10 + 8) = a2;
    *(v10 + 16) = 0;
    atomic_fetch_add((v9 + 8), 1u);
    *(v10 + 24) = v9;
    v16 = v10;
    v18 = 0;
    v11 = *(a1 + 3);
    *(a1 + 3) = 0;
    (*(*v11 + 16))(v11, &v16);
    result = (*(*v11 + 8))(v11);
    if (v18 == 255)
    {
      return result;
    }

    if (v18)
    {
      result = v17;
      v17 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::FileSystemStorageError>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::FileSystemStorageError,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::FileSystemStorageError,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 >= 0xB)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t WebKit::convertToException@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        v3 = 8;
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    switch(result)
    {
      case 7:
LABEL_19:
        result = WTF::StringImpl::createWithoutCopyingNonEmpty();
        v4 = 33;
        goto LABEL_21;
      case 8:
        result = WTF::StringImpl::createWithoutCopyingNonEmpty();
        v4 = 13;
        goto LABEL_21;
      case 9:
        result = WTF::StringImpl::createWithoutCopyingNonEmpty();
        v4 = 18;
LABEL_21:
        *a2 = v4;
        return result;
    }

LABEL_22:
    v3 = 24;
    goto LABEL_23;
  }

  if (result <= 1)
  {
    if (!result)
    {
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = 8;
      goto LABEL_21;
    }

    if (result == 1)
    {
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = 6;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (result == 2)
  {
    v3 = 5;
    goto LABEL_23;
  }

  if (result == 3)
  {
    goto LABEL_19;
  }

  v3 = 10;
LABEL_23:
  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetDirectoryHandle,WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1131068;
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

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetDirectoryHandle,WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1131068;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetDirectoryHandle,WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(&v8, a3), v10 == 1))
  {
    v4 = v8;
    v5 = v9;
    v6 = (a1 + 8);
  }

  else
  {
    v6 = (a1 + 8);
    v4 = 10;
    v5 = 1;
  }

  return std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(v6, v4, v5);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getDirectoryHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Ref<WebCore::FileSystemHandleCloseScope,WTF::RawPtrTraits<WebCore::FileSystemHandleCloseScope>,WTF::DefaultRefDerefTraits<WebCore::FileSystemHandleCloseScope>>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>>>(mpark *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    WebKit::convertToException(a2, v14);
    v5 = v15;
    v15 = 0;
    LOBYTE(v16) = v14[0];
    v17 = v5;
    v18 = 1;
    v6 = *(a1 + 3);
    *(a1 + 3) = 0;
    (*(*v6 + 16))(v6, &v16);
    (*(*v6 + 8))(v6);
    if (v18 != 255)
    {
      if (v18)
      {
        v13 = v17;
        v17 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v7);
        }
      }

      else
      {
        v8 = v16;
        v16 = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(v8);
        }
      }
    }

    v18 = -1;
    result = v15;
    v15 = 0;
    if (result)
    {
LABEL_15:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = WTF::fastMalloc(0x20);
    *v10 = 1;
    *(v10 + 4) = 0;
    *(v10 + 8) = a2;
    *(v10 + 16) = 1;
    atomic_fetch_add((v9 + 8), 1u);
    *(v10 + 24) = v9;
    v16 = v10;
    v18 = 0;
    v11 = *(a1 + 3);
    *(a1 + 3) = 0;
    (*(*v11 + 16))(v11, &v16);
    result = (*(*v11 + 8))(v11);
    if (v18 == 255)
    {
      return result;
    }

    if (v18)
    {
      result = v17;
      v17 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::FileSystemHandleCloseScope,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RemoveEntry,WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1131090;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RemoveEntry,WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1131090;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::RemoveEntry,WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::removeEntry(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<std::optional<WebKit::FileSystemStorageError>>>(a3), v4 >= 0x10000))
  {
    if ((v4 & 0x100) != 0)
    {
      WebKit::convertToException(v4, v10);
      v8 = v10[0];
      v13 = v11;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    LOBYTE(v12) = v8;
    LOBYTE(v14) = v9;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, &v12);
  result = (*(*v5 + 8))(v5);
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
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

uint64_t IPC::Decoder::decode<std::tuple<std::optional<WebKit::FileSystemStorageError>>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v16 = a1[3];
    if (v16)
    {
      if (v2)
      {
        (*(*v16 + 16))(v16);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_18:
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17)
    {
      if (v2)
      {
        (*(*v17 + 16))(v17);
        v4 = *a1;
        v2 = a1[1];
LABEL_21:
        *a1 = 0;
        a1[1] = 0;
        v18 = a1[3];
        if (v18 && v2)
        {
          (*(*v18 + 16))(v18, v4);
        }

        v5 = 0;
        v7 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_21;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_21;
  }

  if (!v5)
  {
    v7 = 0;
    v8 = 0x10000;
    goto LABEL_8;
  }

  v6 = IPC::Decoder::decode<WebKit::FileSystemStorageError>(a1);
  v7 = (v6 & ((v6 << 7) >> 15));
  v5 = 256;
  if ((v6 & 0x100) != 0)
  {
    v8 = (v6 & 0x100) << 8;
    goto LABEL_8;
  }

LABEL_23:
  v19 = *a1;
  v20 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v21 = a1[3];
  if (v21)
  {
    v22 = v5;
    v23 = v7;
    if (v20)
    {
      (*(*v21 + 16))(v21, v19);
    }

    v8 = 0;
    v5 = v22;
    v7 = v23;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = v8 & 0x10000;
  if ((v8 & 0x10000) != 0)
  {
    v10 = v7 | v5;
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      v15 = v8 & 0x10000;
      if (v13)
      {
        (*(*v14 + 16))(v14, v12);
      }

      v10 = 0;
      v9 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 | v9;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11310B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11310B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::call(uint64_t a1, int a2, IPC::Decoder *this)
{
  if (this && *this)
  {
    IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(v8, this);
    v4 = (a1 + 8);
    if (v9 == 1)
    {
      result = std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(v4, v8);
      if ((v9 & 1) != 0 && !v8[16])
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v4);
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v7);
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::NetworkStorageManager::Resolve,WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(uint64_t *a1)
{
  v6[0] = 10;
  v7 = 1;
  mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v5, v6);
  if (!v7)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v2);
  }

  result = std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(a1, v5);
  if (!v5[16])
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 2);
  v5 = *this;
  v6 = *(this + 1);
  if (v6 <= &v4[-v5])
  {
    *this = 0;
    *(this + 1) = 0;
    v22 = *(this + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *this;
        v6 = *(this + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_29:
    *this = 0;
    *(this + 1) = 0;
    v23 = *(this + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23, v5);
        v5 = *this;
        v6 = *(this + 1);
        goto LABEL_32;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_32:
    *this = 0;
    *(this + 1) = 0;
    v24 = *(this + 3);
    if (v24 && v6)
    {
      (*(*v24 + 16))(v24, v5);
    }

    goto LABEL_8;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_29;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_32;
  }

  if (v7)
  {
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(this, &v28);
    if ((v30 & 1) == 0)
    {
      v19 = *this;
      v20 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v21 = *(this + 3);
      if (!v21)
      {
        goto LABEL_8;
      }

      if (!v20)
      {
        goto LABEL_8;
      }

      (*(*v21 + 16))(v21, v19);
      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v25[0] = v28;
    v9 = v29;
    v28 = 0;
    v29 = 0;
    v25[1] = v9;
    v26 = 0;
    v27 = 1;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v8);
LABEL_16:
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a1, v25);
    v18 = v27;
    a1[24] = 1;
    if ((v18 & 1) == 0)
    {
      return result;
    }

    if (v26)
    {
      return result;
    }

    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
    if (a1[24])
    {
      return result;
    }

    goto LABEL_10;
  }

  v10 = IPC::Decoder::decode<WebKit::FileSystemStorageError>(this);
  if ((v10 & 0x100) != 0)
  {
    LOBYTE(v25[0]) = v10;
    v26 = 1;
    v27 = 1;
    goto LABEL_16;
  }

LABEL_8:
  v11 = *this;
  v12 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  v13 = *(this + 3);
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
  }

  *a1 = 0;
  a1[24] = 0;
LABEL_10:
  v14 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result && v14)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::resolve(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>>>(uint64_t *a1, uint64_t a2)
{
  v3 = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(&v11, a2);
  if (v13)
  {
    if (v13 != 1)
    {
      mpark::throw_bad_variant_access(v3);
    }

    WebKit::convertToException(v11, v14);
    v4 = v15;
    v15 = 0;
    LOBYTE(v16) = v14[0];
    v17 = v4;
    v18 = 1;
    v5 = *a1;
    *a1 = 0;
    (*(*v5 + 16))(v5, &v16);
    (*(*v5 + 8))(v5);
    if (v18 != 255)
    {
      if (v18)
      {
        v10 = v17;
        v17 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }
      }

      else
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v6);
      }
    }

    v18 = -1;
    result = v15;
    v15 = 0;
    if (result)
    {
LABEL_13:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  else
  {
    v16 = v11;
    v7 = v12;
    v11 = 0;
    v12 = 0;
    v17 = v7;
    v18 = 0;
    v8 = *a1;
    *a1 = 0;
    (*(*v8 + 16))(v8, &v16);
    result = (*(*v8 + 8))(v8);
    if (v18 == 255)
    {
      goto LABEL_16;
    }

    if (!v18)
    {
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v6);
      goto LABEL_16;
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  if (!v13)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFile,WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11310E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFile,WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11310E0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkStorageManager::GetFile,WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0>(WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
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
        v19 = *(a3 + 3);
        if (v19)
        {
          if (v6)
          {
            (*(*v19 + 16))(v19);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_33;
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
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v25);
              if ((v26 & 1) == 0)
              {
                v16 = *a3;
                v17 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v18 = *(a3 + 3);
                if (!v18)
                {
                  goto LABEL_10;
                }

                if (!v17)
                {
                  goto LABEL_10;
                }

                (*(*v18 + 16))(v18, v16);
                if ((v26 & 1) == 0)
                {
                  goto LABEL_10;
                }
              }

              v22 = v25;
              v23 = 0;
            }

            else
            {
              v9 = IPC::Decoder::decode<WebKit::FileSystemStorageError>(a3);
              if ((v9 & 0x100) == 0)
              {
                goto LABEL_10;
              }

              LOBYTE(v22) = v9;
              v23 = 1;
            }

            v24 = 1;
            result = std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>>>((a1 + 8), &v22);
            if ((v24 & 1) == 0)
            {
              return result;
            }

            goto LABEL_17;
          }

          goto LABEL_36;
        }
      }

LABEL_33:
      *a3 = 0;
      *(a3 + 1) = 0;
      v20 = *(a3 + 3);
      if (v20)
      {
        if (v6)
        {
          (*(*v20 + 16))(v20, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_36;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_36:
      *a3 = 0;
      *(a3 + 1) = 0;
      v21 = *(a3 + 3);
      if (v21 && v6)
      {
        (*(*v21 + 16))(v21, v5);
      }

LABEL_10:
      v10 = *a3;
      v11 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v12 = *(a3 + 3);
      if (v12)
      {
        if (v11)
        {
          (*(*v12 + 16))(v12, v10);
          v13 = *a3;
          v11 = *(a3 + 1);
          v12 = *(a3 + 3);
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = 0;
LABEL_13:
      *a3 = 0;
      *(a3 + 1) = 0;
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v13);
      }
    }
  }

  LOBYTE(v22) = 10;
  v23 = 1;
  result = std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>>>((a1 + 8), &v22);
LABEL_17:
  if (!v23)
  {
    result = v22;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  return result;
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebFileSystemStorageConnection::getFile(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::String> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>>>(mpark *a1, unsigned __int8 *a2)
{
  if (a2[8])
  {
    if (a2[8] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    WebKit::convertToException(*a2, v10);
    v3 = v11;
    v11 = 0;
    LOBYTE(v12) = v10[0];
    v13 = v3;
    v14 = 1;
    v4 = *a1;
    *a1 = 0;
    (*(*v4 + 16))(v4, &v12);
    (*(*v4 + 8))(v4);
    if (v14 != 255)
    {
      if (v14)
      {
        v6 = v13;
        v13 = 0;
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v6 = v12;
        v12 = 0;
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }

LABEL_16:
    v14 = -1;
    result = v11;
    v11 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_17;
  }

  v7 = *a2;
  *a2 = 0;
  v12 = v7;
  v14 = 0;
  v8 = *a1;
  *a1 = 0;
  (*(*v8 + 16))(v8, &v12);
  result = (*(*v8 + 8))(v8);
  if (v14 == 255)
  {
    return result;
  }

  if (v14)
  {
    result = v13;
    v13 = 0;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = v12;
    v12 = 0;
    if (!result)
    {
      return result;
    }
  }

LABEL_17:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v5);
  }

  return result;
}