uint64_t IPC::handleMessageAsync<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)const>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::CharacterRange>>(v13, a2);
  if (v13[16] == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F6120;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::proofreadingSessionSuggestionTextRectsInRootViewCoordinates(a3, v13, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,BOOL,WTF::UUID const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::CharacterRange>(a2, &v22);
  if (v23 != 1)
  {
LABEL_26:
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }

    return result;
  }

  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 <= &v7[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16);
        v6 = *(a2 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_19;
  }

  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_25:
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v6)
    {
      (*(*v18 + 16))(v18, v8);
    }

    goto LABEL_26;
  }

  v9 = *v7;
  if (v9 >= 2)
  {
    goto LABEL_25;
  }

  IPC::ArgumentCoder<WTF::UUID,void>::decode(a2, &v28);
  if ((v29 & 1) == 0)
  {
LABEL_24:
    v8 = *a2;
    v6 = *(a2 + 1);
    goto LABEL_25;
  }

  if ((v23 & 1) == 0)
  {
    __break(1u);
  }

  v24 = v22;
  v25 = v9;
  v26 = v28;
  v27 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v11)
  {
    v12 = result;
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
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_13:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F6148;
    v15[1] = v12;
    v15[2] = a1;
    *&v28 = v15;
    WebKit::WebPage::updateTextVisibilityForActiveWritingToolsSession(a3, &v24, v9 & 1, &v26, &v28);
    result = v28;
    *&v28 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::CharacterRange>>(v13, a2);
  if (v13[16] == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F6170;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::textPreviewDataForActiveWritingToolsSession(a3, v13, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::SetSelectionForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::CharacterRange>>(v13, a2);
  if (v13[16] == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F6198;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::setSelectionForActiveWritingToolsSession(a3, v13, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::CharacterRange>>(v13, a2);
  if (v13[16] == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F61C0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::decorateTextReplacementsForActiveWritingToolsSession(a3, v13, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::CreateTextIndicatorForTextAnimationID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WTF::UUID>>(a2, v13);
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

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F61E8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      if ((v14 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebPage::createTextIndicatorForTextAnimationID(a3, v13, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::UUID const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::UUID,void>::decode(a2, &v25);
  if ((v26 & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v8 = *v4;
  if (v6 <= &v7[-*v4])
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v20 = *(v4 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v6 = *(v4 + 1);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    *(v4 + 2) = v7 + 1;
    if (v7)
    {
      v9 = *v7;
      if (v9 < 2)
      {
        v22 = v25;
        v23 = v9;
        v24 = 1;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v4 = result;
        while (1)
        {
          v12 = *a1;
          if ((*a1 & 1) == 0)
          {
            break;
          }

          v13 = *a1;
          atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v13 == v12)
          {
            goto LABEL_11;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
        v14 = WTF::fastMalloc(0x18);
        *v14 = &unk_1F10F6210;
        v14[1] = v4;
        v14[2] = a1;
        *&v25 = v14;
        if (v24)
        {
          WebKit::WebPage::updateUnderlyingTextVisibilityForTextAnimationID(a3, &v22, v9 & 1, &v25);
          result = v25;
          *&v25 = 0;
          if (result)
          {
            return (*(*result + 8))(result);
          }

          return result;
        }

        __break(1u);
LABEL_16:
        v8 = *v4;
        v15 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v16 = *(v4 + 3);
        if (v16)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  v21 = *(v4 + 3);
  if (v21)
  {
    if (v6)
    {
      (*(*v21 + 16))(v21);
      v8 = *v4;
      v6 = *(v4 + 1);
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
LABEL_31:
  *v4 = 0;
  *(v4 + 1) = 0;
  v16 = *(v4 + 3);
  if (v16 && v6)
  {
LABEL_33:
    (*(*v16 + 16))(v16, v8);
  }

LABEL_21:
  v18 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  result = *(v4 + 3);
  if (result && v18)
  {
    v19 = *(*result + 16);

    return v19();
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::CreateTextIndicatorForElementWithID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *result = &unk_1F10F6238;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::createTextIndicatorForElementWithID(a3, &v14, &v13);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::TakeSnapshotForTargetedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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
      v20 = *(*result + 16);

      return v20();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a2, &v24);
  if ((v26 & 1) == 0)
  {
    v15 = *a2;
    v16 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v16)
    {
      (*(*v17 + 16))(v17, v15);
    }

    goto LABEL_12;
  }

  v22 = v24;
  v23 = v25;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v10)
  {
    v11 = result;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F6260;
    v14[1] = v11;
    v14[2] = a1;
    v21 = v14;
    v24 = v22;
    v25 = v23;
    WebKit::WebPage::takeSnapshotForTargetedElement(a3, v8, &v24, &v21);
    result = v21;
    v21 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::WebPage::ResetVisibilityAdjustmentsForTargetedElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a2;
  v7 = a2[1];
  if (v7 < v5 - v6 || v7 - (v5 - v6) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v43 = a2[3];
    if (v43)
    {
      if (v7)
      {
        (*(*v43 + 16))(v43);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_60;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_60:
    *a2 = 0;
    a2[1] = 0;
    v44 = a2[3];
    if (v44 && v7)
    {
      (*(*v44 + 16))(v44, v6);
    }

LABEL_43:
    v41 = *a2;
    v42 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v42)
      {
        (*(*result + 16))(result, v41);
        v25 = *a2;
        v42 = a2[1];
        result = a2[3];
        goto LABEL_46;
      }
    }

    else
    {
      v42 = 0;
    }

    v25 = 0;
LABEL_46:
    LOBYTE(v47[0]) = 0;
    LOBYTE(v48) = 0;
    *a2 = 0;
    a2[1] = 0;
    if (result && v42)
    {
      result = (*(*result + 16))(result, v25);
    }

    goto LABEL_47;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_60;
  }

  v10 = *v5;
  v45 = 0;
  v46 = 0;
  if (v10 < 0x5555)
  {
    if (!v10)
    {
      LODWORD(v22) = 0;
      v21 = 0;
      v23 = 0;
      goto LABEL_18;
    }

    v11 = WTF::fastMalloc((48 * v10));
    v12 = 0;
    LODWORD(v46) = 48 * v10 / 0x30u;
    v45 = v11;
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>(v47, a2);
      if (v50 != 1)
      {
        goto LABEL_42;
      }

      if (v12 == v46)
      {
        v14 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v12 + 1, v47);
        v12 = HIDWORD(v46);
        v11 = v45;
        v15 = (v45 + 48 * HIDWORD(v46));
        v17 = v14[1];
        v16 = v14[2];
        *v15 = *v14;
        v15[1] = v17;
        v15[2] = v16;
      }

      else
      {
        v18 = (v11 + 48 * v12);
        v19 = *v47;
        v20 = v49;
        v18[1] = v48;
        v18[2] = v20;
        *v18 = v19;
      }

      HIDWORD(v46) = ++v12;
      if (!--v10)
      {
        v21 = v46;
        LODWORD(v22) = v12;
        goto LABEL_16;
      }
    }
  }

  v11 = 0;
  LODWORD(v22) = 0;
  do
  {
    result = IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>(v47, a2);
    if (v50 != 1)
    {
      if (!v11)
      {
        goto LABEL_43;
      }

LABEL_42:
      v45 = 0;
      LODWORD(v46) = 0;
      WTF::fastFree(v11, v13);
      goto LABEL_43;
    }

    if (v22 == v46)
    {
      result = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v22 + 1, v47);
      LODWORD(v22) = HIDWORD(v46);
      v11 = v45;
      v29 = (v45 + 48 * HIDWORD(v46));
      v31 = *(result + 1);
      v30 = *(result + 2);
      *v29 = *result;
      v29[1] = v31;
      v29[2] = v30;
    }

    else
    {
      v32 = (v11 + 48 * v22);
      v33 = *v47;
      v34 = v49;
      v32[1] = v48;
      v32[2] = v34;
      *v32 = v33;
    }

    v22 = (v22 + 1);
    HIDWORD(v46) = v22;
    --v10;
  }

  while (v10);
  v21 = v46;
  if (v46 <= v22)
  {
LABEL_16:
    v23 = v11;
    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_55;
  }

  if (v22 >= 0x5555556)
  {
    __break(0xC471u);
LABEL_66:
    __break(1u);
    return result;
  }

  v35 = v22;
  v36 = (48 * v22);
  v23 = WTF::fastMalloc(v36);
  v21 = v36 / 0x30;
  LODWORD(v46) = v36 / 0x30;
  v45 = v23;
  if (v23 == v11)
  {
LABEL_55:
    v45 = 0;
    LODWORD(v46) = 0;
LABEL_56:
    WTF::fastFree(v11, v13);
    v23 = v45;
    v21 = v46;
    LODWORD(v22) = HIDWORD(v46);
    goto LABEL_18;
  }

  v37 = 0;
  do
  {
    v38 = (v37 + v23);
    v39 = *(v37 + v11);
    v40 = *(v37 + v11 + 32);
    v38[1] = *(v37 + v11 + 16);
    v38[2] = v40;
    *v38 = v39;
    v37 = (v37 + 48);
  }

  while (v36 != v37);
  LODWORD(v22) = v35;
  if (v11)
  {
    goto LABEL_56;
  }

LABEL_18:
  v47[0] = v23;
  v47[1] = __PAIR64__(v22, v21);
  LOBYTE(v48) = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_47;
  }

  v26 = result;
  while (1)
  {
    v27 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v28 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v28 == v27)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_24:
  result = WTF::fastMalloc(0x18);
  *result = &unk_1F10F6288;
  *(result + 1) = v26;
  *(result + 2) = a1;
  v45 = result;
  if ((v48 & 1) == 0)
  {
    goto LABEL_66;
  }

  WebKit::WebPage::resetVisibilityAdjustmentsForTargetedElements(a3, v47, &v45);
  result = v45;
  v45 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_47:
  if (v48 == 1)
  {
    result = v47[0];
    if (v47[0])
    {
      v47[0] = 0;
      LODWORD(v47[1]) = 0;
      return WTF::fastFree(result, v25);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebPage::AdjustVisibilityForTargetedElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *a2;
  v9 = a2[1];
  if (v9 < v7 - v8 || v9 - (v7 - v8) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v36 = a2[3];
    if (v36)
    {
      if (v9)
      {
        (*(*v36 + 16))(v36);
        v8 = *a2;
        v9 = a2[1];
        goto LABEL_64;
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
LABEL_64:
    *a2 = 0;
    a2[1] = 0;
    v37 = a2[3];
    if (v37 && v9)
    {
      (*(*v37 + 16))(v37, v8);
    }

LABEL_53:
    v32 = *a2;
    v33 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v34 = a2[3];
    if (v34 && v33)
    {
      (*(*v34 + 16))(v34, v32);
    }

    LOBYTE(v42) = 0;
    LOBYTE(v43) = 0;
    v21 = *a2;
    v35 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (!result)
    {
      goto LABEL_30;
    }

    if (!v35)
    {
      goto LABEL_30;
    }

    result = (*(*result + 16))(result, v21);
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  a2[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_64;
  }

  v11 = *v7;
  v41[0] = 0;
  v41[1] = 0;
  if (v11 >= 0x4000)
  {
    while (1)
    {
      result = IPC::Decoder::decode<WebCore::TargetedElementAdjustment>(&v42, a2);
      v25 = v48;
      if (v48 == 1)
      {
        v26 = HIDWORD(v41[1]);
        if (HIDWORD(v41[1]) == LODWORD(v41[1]))
        {
          result = WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TargetedElementAdjustment>(v41, &v42);
        }

        else
        {
          v27 = v41[0] + 64 * HIDWORD(v41[1]);
          a4 = v44;
          v28 = v42;
          *(v27 + 1) = v43;
          *(v27 + 2) = a4;
          *v27 = v28;
          *(v27 + 6) = 0;
          *(v27 + 7) = 0;
          v29 = v45;
          v45 = 0;
          *(v27 + 6) = v29;
          LODWORD(v29) = v46;
          v46 = 0;
          *(v27 + 14) = v29;
          LODWORD(v29) = v47;
          v47 = 0;
          *(v27 + 15) = v29;
          HIDWORD(v41[1]) = v26 + 1;
        }
      }

      if (v48 == 1)
      {
        result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v8);
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (!--v11)
      {
        v18 = v41[1];
        v17 = HIDWORD(v41[1]);
        v11 = v41[0];
        if (LODWORD(v41[1]) <= HIDWORD(v41[1]))
        {
          goto LABEL_20;
        }

        v30 = v41[0];
        if (HIDWORD(v41[1]))
        {
          if (HIDWORD(v41[1]) >> 26)
          {
            __break(0xC471u);
            goto LABEL_70;
          }

          v30 = WTF::fastMalloc((HIDWORD(v41[1]) << 6));
          if (v30 != v11)
          {
            v38 = v30;
            WTF::VectorMover<false,WebCore::TargetedElementAdjustment>::move(v11, (v11 + (v17 << 6)), v30);
            v30 = v38;
          }

          v18 = v17;
        }

        if (v11)
        {
          if (v30 == v11)
          {
            v18 = 0;
            v31 = 0;
          }

          else
          {
            v31 = v30;
          }

          WTF::fastFree(v11, v8);
          v11 = v31;
        }

        else
        {
          v11 = v30;
        }

        goto LABEL_20;
      }
    }
  }

  if (v11)
  {
    LODWORD(v41[1]) = v11;
    v41[0] = WTF::fastMalloc((v11 << 6));
    while (1)
    {
      IPC::Decoder::decode<WebCore::TargetedElementAdjustment>(&v42, a2);
      v12 = v48;
      if (v48 == 1)
      {
        v13 = HIDWORD(v41[1]);
        if (HIDWORD(v41[1]) == LODWORD(v41[1]))
        {
          WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TargetedElementAdjustment>(v41, &v42);
        }

        else
        {
          v14 = v41[0] + 64 * HIDWORD(v41[1]);
          a4 = v44;
          v15 = v42;
          *(v14 + 1) = v43;
          *(v14 + 2) = a4;
          *v14 = v15;
          *(v14 + 6) = 0;
          *(v14 + 7) = 0;
          v16 = v45;
          v45 = 0;
          *(v14 + 6) = v16;
          LODWORD(v16) = v46;
          v46 = 0;
          *(v14 + 14) = v16;
          LODWORD(v16) = v47;
          v47 = 0;
          *(v14 + 15) = v16;
          HIDWORD(v41[1]) = v13 + 1;
        }
      }

      if (v48 == 1)
      {
        WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v8);
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        v11 = v41[0];
        v18 = v41[1];
        LODWORD(v17) = HIDWORD(v41[1]);
        goto LABEL_20;
      }
    }

LABEL_52:
    WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v8);
    goto LABEL_53;
  }

  LODWORD(v17) = 0;
  v18 = 0;
LABEL_20:
  a4.n128_u64[0] = 0;
  *v41 = a4;
  v40 = 1;
  WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v8);
  v39[0] = 0;
  v39[1] = 0;
  *&v42 = v11;
  *(&v42 + 1) = __PAIR64__(v17, v18);
  LOBYTE(v43) = 1;
  WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v19);
LABEL_21:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v21)
  {
    v22 = result;
    while (1)
    {
      v23 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v24 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_27;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_27:
    result = WTF::fastMalloc(0x18);
    *result = &unk_1F10F62B0;
    result[1] = v22;
    result[2] = a1;
    v39[0] = result;
    if ((v43 & 1) == 0)
    {
LABEL_70:
      __break(1u);
      return result;
    }

    WebKit::WebPage::adjustVisibilityForTargetedElements(a3, &v42, v39);
    result = v39[0];
    v39[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_30:
  if (v43 == 1)
  {
    return WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v21);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::NumberOfVisibilityAdjustmentRects,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F62D8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::numberOfVisibilityAdjustmentRects(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ContentsToRootViewRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WTF::CompletionHandler<void ()(WebCore::FloatRect)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = *(*result + 16);

      return v23();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a2, &v24);
  if ((v27 & 1) == 0)
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }

    goto LABEL_12;
  }

  v9 = v24;
  v10 = v25;
  v11 = v26;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v13)
  {
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F6300;
    v17[1] = v14;
    v17[2] = a1;
    v24 = v17;
    WebKit::WebPage::contentsToRootViewRect(*&v9, *(&v9 + 1), v10, v11, a3, v8, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ContentsToRootViewPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,WTF::CompletionHandler<void ()(WebCore::FloatPoint)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = *(*result + 16);

      return v23();
    }

    return result;
  }

  v8 = v6;
  v9 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  if ((v10 & 1) == 0)
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }

    goto LABEL_12;
  }

  v11 = v9;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v13)
  {
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F6328;
    v17[1] = v14;
    v17[2] = a1;
    v24 = v17;
    WebKit::WebPage::contentsToRootViewPoint(*&v11, *(&v11 + 1), a3, v8, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WebCore::TextIndicator *IPC::handleMessageAsync<Messages::WebPage::RemoteDictionaryPopupInfoToRootView,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::DictionaryPopupInfo,WTF::CompletionHandler<void ()(WebCore::DictionaryPopupInfo)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_17:
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
      v26 = *(*result + 16);

      return v26();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::decode(a2, &v28);
  if ((v31 & 1) == 0)
  {
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23 && v22)
    {
      (*(*v23 + 16))(v23, v21);
    }

    goto LABEL_17;
  }

  v10 = v28;
  v9 = v29;
  v11 = v30;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v13)
  {
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F6350;
    *(v17 + 1) = v14;
    *(v17 + 2) = a1;
    v27 = v17;
    v28 = v10;
    v29 = v9;
    v30 = v11;
    WebKit::WebPage::remoteDictionaryPopupInfoToRootView(a3, v8, &v28, &v27);
    v19 = v30;
    v30 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v29;
    v29 = 0;
    if (v20)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(v20);
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v11, v13);
    }

    if (v9)
    {

      return WTF::RefCounted<WebCore::TextIndicator>::deref(v9);
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebPage::LoadAndDecodeImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ResourceRequest &&,std::optional<WebCore::FloatSize>,unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::FloatSize>::Ref<WebCore::ShareableBitmap,std::optional<WebCore::FloatSize>::RawPtrTraits<std::optional<WebCore::FloatSize>::Ref>,std::optional<WebCore::FloatSize>::DefaultRefDerefTraits<std::optional<WebCore::FloatSize>::Ref>>,WebCore::ResourceError> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *this, uint64_t a3)
{
  v4 = this;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(this, &v66);
  if ((v86 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_2:
  v6 = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(v4);
  if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v4 + 1);
  v10 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v4;
  v12 = v10 - *v4;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (!v13 || v14 <= 7)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v40 = *(v4 + 3);
    if (v40)
    {
      if (v9)
      {
        (*(*v40 + 16))(v40, v11);
        v11 = *v4;
        v9 = *(v4 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_43:
    *v4 = 0;
    *(v4 + 1) = 0;
    v41 = *(v4 + 3);
    if (v41 && v9)
    {
      (*(*v41 + 16))(v41, v11);
    }

LABEL_3:
    v8 = 0;
    LOBYTE(v42) = 0;
    goto LABEL_12;
  }

  *(v4 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_43;
  }

  if (v86)
  {
    v16 = *v10;
    v17 = v66;
    v18 = v69;
    v66 = 0;
    v42 = v17;
    v43 = v67;
    v44 = v68;
    LODWORD(v67) = v67 & 0xFFFFFFFE;
    v69 = 0;
    v45 = v18;
    v46 = v70;
    v47 = v71;
    LODWORD(v70) = v70 & 0xFFFFFFFE;
    v19 = v74;
    v48 = v72;
    v20 = v73;
    v73 = 0u;
    v49 = v20;
    v74 = 0;
    v50 = v19;
    v21 = v75;
    v75 = 0;
    v51 = v21;
    v22 = v76;
    v76 = 0;
    v52 = v22;
    v23 = v77;
    v77 = 0;
    v53 = v23;
    v24 = v78;
    v78 = 0;
    v54 = v24;
    v56 = v80;
    v55 = v79;
    v25 = v81;
    v81 = 0u;
    v57 = v25;
    v60 = v84;
    v58 = v82;
    v59 = v83;
    v26 = v85;
    v82 = 0;
    v85 = 0;
    v61 = v26;
    v62 = v6;
    v63 = v7;
    v8 = 1;
    v64 = v16;
LABEL_12:
    v65 = v8;
    if (v86)
    {
      WebCore::ResourceRequest::~ResourceRequest(&v66);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  while (1)
  {
    __break(1u);
LABEL_28:
    v33 = *v4;
    v34 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v35 = *(v4 + 3);
    if (v35)
    {
      v36 = v34 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      (*(*v35 + 16))(v35, v33);
      if (v86)
      {
        goto LABEL_2;
      }
    }

    LOBYTE(v42) = 0;
    v65 = 0;
LABEL_34:
    v37 = *v4;
    v38 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v39 = *(v4 + 3);
    if (!v39)
    {
      break;
    }

    if (!v38)
    {
      break;
    }

    (*(*v39 + 16))(v39, v37);
    if ((v65 & 1) == 0)
    {
      break;
    }

LABEL_15:
    v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v4 = v27;
    while (1)
    {
      v29 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v30 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
    v31 = WTF::fastMalloc(0x18);
    *v31 = &unk_1F10F6378;
    v31[1] = v4;
    v31[2] = a1;
    v66 = v31;
    if (v65)
    {
      WebKit::WebPage::loadAndDecodeImage(a3, &v42, v62, v63, v64, &v66);
      v32 = v66;
      v66 = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      break;
    }
  }

  if (v65 == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(&v42);
  }
}

WTF *IPC::handleMessageAsync<Messages::WebPage::GetInformationFromImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v9 = v7;
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
    *v11 = &unk_1F10F63A0;
    *(v11 + 1) = v9;
    *(v11 + 2) = a1;
    v13 = v11;
    WebKit::WebPage::getInformationFromImageData(a3, &v14, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_9:
      result = v14;
      if (v14)
      {
        v14 = 0;
        v15 = 0;
        return WTF::fastFree(result, v8);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::CreateBitmapsFromImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::CompletionHandler>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler>>,0ul,WTF::Vector,16ul,WTF::CrashOnOverflow> &&)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v14, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v12, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F63C8;
        v10[1] = v8;
        v10[2] = a1;
        v13 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::WebPage::createBitmapsFromImageData(a3, v14);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  return std::optional<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~optional(v14, v6);
}

void IPC::handleMessageAsync<Messages::WebPage::DecodeImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,std::optional<WebCore::FloatSize>>>(v15, a2);
  if (v17 == 1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = v6;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v9)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F63F0;
    v10[1] = v8;
    v10[2] = a1;
    v14 = v10;
    v19[1] = 0;
    v20 = a3;
    v19[0] = WebKit::WebPage::decodeImageData;
    v18[0] = &v20;
    v18[1] = v19;
    v18[2] = &v14;
    IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&),WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize>,WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &>(WebKit::WebPage *,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&) WebKit::WebPage::*,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize> &&,std::optional<WebCore::FloatSize><WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::FloatSize>(v18, v15, v15[1], v16);
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    if (v17)
    {
LABEL_9:
      v12 = v15[0];
      v15[0] = 0;
      if (v12)
      {
        if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12 + 2);
          (*(*v12 + 8))(v12);
        }
      }
    }
  }
}

void IPC::handleMessage<Messages::WebPage::FrameNameWasChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v5, a1);
  if (v7 == 1)
  {
    WebKit::WebPage::frameNameWasChangedInAnotherProcess(a2, v5, &v6);
    if (v7)
    {
      v4 = v6;
      v6 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::StartPlayingPredominantVideo,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F6418;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::startPlayingPredominantVideo(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::SimulateClickOverFirstMatchingTextInViewportWithUserInteraction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *result = &unk_1F10F6440;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::simulateClickOverFirstMatchingTextInViewportWithUserInteraction(a3, &v14, &v13);
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

void IPC::handleMessage<Messages::WebPage::UpdateOpener,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {

    WebKit::WebPage::updateOpener(a2, v6, v7);
  }

  else
  {
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebPage::SetPresentingApplicationAuditTokenAndBundleIdentifier,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::CoreIPCAuditToken &&,WTF::String &&)>(IPC::Decoder *a1, _DWORD *a2)
{
  IPC::ArgumentCoder<WebKit::CoreIPCAuditToken,void>::decode(a1, &v16);
  if ((v17 & 1) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      (*(*v8 + 16))(v8, v6);
    }

    goto LABEL_12;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v18);
  if ((v19 & 1) == 0)
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (!v14 || !v13 || ((*(*v14 + 16))(v14, v12), (v19 & 1) == 0))
    {
LABEL_12:
      v10 = *a1;
      v11 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result && v11)
      {
        return (*(*result + 16))(result, v10);
      }

      return result;
    }
  }

  v15 = v18;
  WebKit::WebPage::setPresentingApplicationAuditTokenAndBundleIdentifier(a2);
  result = v15;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v15, v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPage::didReceiveSyncMessage(CFTypeRef *a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  CFRetain(a1[1]);
  v8 = *(a3 + 25);
  if (v8 <= 0x1055)
  {
    if (*(a3 + 25) <= 0x1052u)
    {
      if (v8 != 4177)
      {
        if (v8 != 4178)
        {
          goto LABEL_73;
        }

        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(buf, a3);
        if (v97 == 1)
        {
          v18 = *a4;
          *a4 = 0;
          while (1)
          {
            v19 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v20 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v20 == v19)
            {
              goto LABEL_94;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_94:
          v59 = WTF::fastMalloc(0x18);
          *v59 = &unk_1F10F64B8;
          *(v59 + 1) = v18;
          *(v59 + 2) = a2;
          v91 = v59;
          WebKit::WebPage::computePagesForPrintingiOS(a1, *buf, &buf[8], &v91);
          v58 = v91;
          v91 = 0;
          if (v58)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_129;
      }

      IPC::ArgumentCoder<std::tuple<int,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v96 & 1) == 0)
      {
        v82 = *a3;
        v83 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v84 = *(a3 + 3);
        if (!v84)
        {
          goto LABEL_129;
        }

        if (!v83)
        {
          goto LABEL_129;
        }

        (*(*v84 + 16))(v84, v82);
        if ((v96 & 1) == 0)
        {
          goto LABEL_129;
        }
      }

      v21 = *a4;
      *a4 = 0;
      while (1)
      {
        v22 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v23 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_77;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_77:
      v51 = WTF::fastMalloc(0x18);
      *v51 = &unk_1F10F64E0;
      *(v51 + 1) = v21;
      *(v51 + 2) = a2;
      v93 = v51;
      if (v96)
      {
        v91 = *&buf[16];
        v53 = v95;
        *&buf[16] = 0;
        v95 = 0;
        v92 = v53;
        WebKit::WebPage::bindRemoteAccessibilityFrames(a1, *buf, *&buf[8], &v91, &v93);
        v55 = v91;
        if (v91)
        {
          v91 = 0;
          LODWORD(v92) = 0;
          WTF::fastFree(v55, v54);
        }

        v56 = v93;
        v93 = 0;
        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        if (v96)
        {
          v57 = *&buf[16];
          if (*&buf[16])
          {
            *&buf[16] = 0;
            LODWORD(v95) = 0;
            WTF::fastFree(v57, v54);
          }
        }

        goto LABEL_129;
      }

      goto LABEL_144;
    }

    switch(v8)
    {
      case 0x1053u:
        v33 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
        if ((v34 & 1) == 0)
        {
          v52 = 1;
          goto LABEL_130;
        }

        v35 = v33;
        v36 = *a4;
        *a4 = 0;
        while (1)
        {
          v37 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v38 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v38 == v37)
          {
            goto LABEL_104;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_104:
        v64 = WTF::fastMalloc(0x18);
        *v64 = &unk_1F10F65F8;
        v64[1] = v36;
        v64[2] = a2;
        *buf = v64;
        WebKit::WebPage::frameTextForTesting(a1, v35, buf);
        break;
      case 0x1054u:
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          v76 = *a3;
          v77 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v78 = *(a3 + 3);
          if (!v78)
          {
            goto LABEL_129;
          }

          if (!v77)
          {
            goto LABEL_129;
          }

          (*(*v78 + 16))(v78, v76);
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_129;
          }
        }

        v24 = *a4;
        *a4 = 0;
        while (1)
        {
          v25 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v26 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v26 == v25)
          {
            goto LABEL_115;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_115:
        v51 = WTF::fastMalloc(0x18);
        *v51 = &unk_1F10F6530;
        *(v51 + 1) = v24;
        *(v51 + 2) = a2;
        v93 = v51;
        if (buf[8])
        {
          v69 = *buf;
          *buf = 0;
          v91 = v69;
          WebKit::WebPage::getDataSelectionForPasteboard(a1, &v91, &v93);
          v70 = v91;
          v91 = 0;
          if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v70, v61);
          }

          v71 = v93;
          v93 = 0;
          if (!v71)
          {
LABEL_125:
            if ((buf[8] & 1) == 0)
            {
              goto LABEL_129;
            }

LABEL_126:
            v68 = *buf;
            *buf = 0;
            if (!v68)
            {
              goto LABEL_129;
            }

            goto LABEL_127;
          }

LABEL_124:
          (*(*v71 + 8))(v71);
          goto LABEL_125;
        }

LABEL_144:
        __break(1u);
LABEL_145:
        if (v50)
        {
          (*(*v51 + 16))(v51, v49);
        }

LABEL_75:
        v52 = 0;
LABEL_130:
        CFRelease(a1[1]);
        return v52;
      case 0x1055u:
        v12 = *a4;
        *a4 = 0;
        while (1)
        {
          v13 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v14 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v14 == v13)
          {
            goto LABEL_59;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_59:
        v39 = WTF::fastMalloc(0x18);
        *v39 = &unk_1F10F6508;
        v39[1] = v12;
        v39[2] = a2;
        *buf = v39;
        WebKit::WebPage::getStringSelectionForPasteboard(a1, buf);
        break;
      default:
        goto LABEL_73;
    }

    v58 = *buf;
    *buf = 0;
    if (!v58)
    {
      goto LABEL_129;
    }

    goto LABEL_95;
  }

  if (*(a3 + 25) > 0x1058u)
  {
    if (v8 != 4185)
    {
      if (v8 != 4186)
      {
        if (v8 != 4187)
        {
          goto LABEL_73;
        }

        v15 = *a4;
        *a4 = 0;
        while (1)
        {
          v16 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v17 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v17 == v16)
          {
            goto LABEL_71;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_71:
        v46 = WTF::fastMalloc(0x18);
        *v46 = &unk_1F10F6468;
        v46[1] = v15;
        v46[2] = a2;
        *buf = v46;
        WebKit::WebPage::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(a1, buf);
        v47 = *buf;
        *buf = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }

        goto LABEL_129;
      }

      IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,BOOL>>(buf, a3);
      if (v95 != 1)
      {
        goto LABEL_129;
      }

      v30 = *a4;
      *a4 = 0;
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
          goto LABEL_97;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_97:
      v60 = WTF::fastMalloc(0x18);
      *v60 = &unk_1F10F6490;
      *(v60 + 1) = v30;
      *(v60 + 2) = a2;
      v91 = v60;
      WebKit::WebPage::syncApplyAutocorrection(a1, buf, &buf[8], buf[16], &v91);
      v62 = v91;
      v91 = 0;
      if (v62)
      {
        (*(*v62 + 8))(v62);
      }

      if ((v95 & 1) == 0)
      {
        goto LABEL_129;
      }

      v63 = *&buf[8];
      *&buf[8] = 0;
      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v61);
      }

      goto LABEL_126;
    }

    IPC::Decoder::decode<std::tuple<WebKit::WebMouseEvent>>(buf, a3);
    if (v101 != 1)
    {
      goto LABEL_129;
    }

    v43 = *a4;
    *a4 = 0;
    while (1)
    {
      v44 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v45 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v45, v44 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v45 == v44)
      {
        goto LABEL_108;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_108:
    v51 = WTF::fastMalloc(0x18);
    *v51 = &unk_1F10F6580;
    *(v51 + 1) = v43;
    *(v51 + 2) = a2;
    v91 = v51;
    if (v101)
    {
      WebKit::WebPage::shouldDelayWindowOrderingEvent(a1, buf, &v91);
      v66 = v91;
      v91 = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

      if ((v101 & 1) == 0)
      {
        goto LABEL_129;
      }

      *buf = &unk_1F10E8378;
      WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100, v65);
      WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v67);
      v68 = v98;
      v98 = 0;
      if (!v68)
      {
        goto LABEL_129;
      }

LABEL_127:
      if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v61);
      }

      goto LABEL_129;
    }

    goto LABEL_144;
  }

  if (v8 == 4182)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::LayerTreeAsTextOptions>>,void>::decode<IPC::Decoder>(a3, buf);
    if (v95 & 1) != 0 || (v88 = *a3, v89 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v90 = *(a3 + 3)) != 0) && v89 && ((*(*v90 + 16))(v90, v88), (v95))
    {
      v40 = *a4;
      *a4 = 0;
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
          goto LABEL_89;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_89:
      v51 = WTF::fastMalloc(0x18);
      *v51 = &unk_1F10F65D0;
      *(v51 + 1) = v40;
      *(v51 + 2) = a2;
      v91 = v51;
      if (v95)
      {
        WebKit::WebPage::layerTreeAsTextForTesting(a1, *buf, *&buf[8], *&buf[16], &v91);
LABEL_91:
        v58 = v91;
        v91 = 0;
        if (!v58)
        {
          goto LABEL_129;
        }

LABEL_95:
        (*(*v58 + 8))(v58);
        goto LABEL_129;
      }

      goto LABEL_144;
    }

    goto LABEL_129;
  }

  if (v8 != 4183)
  {
    if (v8 == 4184)
    {
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::OptionSet<WebCore::RenderAsTextFlag>>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v95 & 1) == 0)
      {
        v85 = *a3;
        v86 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v87 = *(a3 + 3);
        if (!v87)
        {
          goto LABEL_129;
        }

        if (!v86)
        {
          goto LABEL_129;
        }

        (*(*v87 + 16))(v87, v85);
        if ((v95 & 1) == 0)
        {
          goto LABEL_129;
        }
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
          goto LABEL_86;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_86:
      v51 = WTF::fastMalloc(0x18);
      *v51 = &unk_1F10F65A8;
      *(v51 + 1) = v9;
      *(v51 + 2) = a2;
      v91 = v51;
      if (v95)
      {
        WebKit::WebPage::renderTreeAsTextForTesting(a1, *buf, *&buf[8], *&buf[16], &v91);
        goto LABEL_91;
      }

      goto LABEL_144;
    }

LABEL_73:
    v48 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v73 = 4223;
      }

      else
      {
        v73 = v8;
      }

      v74 = (&IPC::Detail::messageDescriptions)[3 * v73];
      v75 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v74;
      *&buf[12] = 2048;
      *&buf[14] = v75;
      _os_log_error_impl(&dword_19D52D000, v48, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
    }

    v49 = *a3;
    v50 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v51 = *(a3 + 3);
    if (!v51)
    {
      goto LABEL_75;
    }

    goto LABEL_145;
  }

  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
  if (buf[8] & 1) != 0 || (v79 = *a3, v80 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v81 = *(a3 + 3)) != 0) && v80 && ((*(*v81 + 16))(v81, v79), (buf[8]))
  {
    v27 = *a4;
    *a4 = 0;
    while (1)
    {
      v28 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v29 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v29 == v28)
      {
        goto LABEL_122;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_122:
    v51 = WTF::fastMalloc(0x18);
    *v51 = &unk_1F10F6558;
    *(v51 + 1) = v27;
    *(v51 + 2) = a2;
    v91 = v51;
    if (buf[8])
    {
      WebKit::WebPage::readSelectionFromPasteboard(a1, buf, &v91);
      v71 = v91;
      v91 = 0;
      if (!v71)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }

    goto LABEL_144;
  }

LABEL_129:
  v52 = 1;
  if (a1)
  {
    goto LABEL_130;
  }

  return v52;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebInspector4ShowENS2_10ConnectionEN6WebKit12WebInspectorES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4B18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebInspector4ShowENS2_10ConnectionEN6WebKit12WebInspectorES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4B18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebInspector4ShowENS2_10ConnectionEN6WebKit12WebInspectorES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3699;
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

void IPC::Decoder::decode<std::tuple<IPC::ConnectionHandle>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<IPC::ConnectionHandle,void>::decode(a2, v12);
  if (v13 & 1) != 0 || ((v5 = *a2, v6 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v7 = *(a2 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v13)))
  {
    WTF::MachSendRight::MachSendRight();
    v4 = v13;
    a1[4] = 1;
    if ((v4 & 1) == 0)
    {
      return;
    }

    WTF::MachSendRight::~MachSendRight(v12);
    if (a1[4])
    {
      return;
    }
  }

  else
  {
    *a1 = 0;
    a1[4] = 0;
  }

  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *(a2 + 3);
  if (v10 && v9)
  {
    v11 = *(*v10 + 16);

    v11();
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy4LoadENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4B40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy4LoadENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4B40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy4LoadENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3697;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy19PickColorFromScreenENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore5ColorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4B68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy19PickColorFromScreenENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore5ColorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4B68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebInspectorUIProxy19PickColorFromScreenENS2_10ConnectionEN6WebKit19WebInspectorUIProxyES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore5ColorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3698;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::encode<IPC::Encoder,std::optional<WebCore::Color> const&>(v5, a2);
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

void IPC::Decoder::decode<WebKit::WebKeyboardEvent>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebKit::WebKeyboardEvent,void>::decode(a2, a1);
  if ((*(a1 + 112) & 1) == 0)
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

__n128 std::optional<WebKit::WebKeyboardEvent>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(a1 + 8) = 0;
    *a1 = &unk_1F10E83B8;
    v2 = *(a2 + 12);
    v3 = *(a2 + 28);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 28) = v3;
    *(a1 + 12) = v2;
    *a1 = &unk_1F110E540;
    v4 = *(a2 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(a1 + 48) = v4;
    v5 = *(a2 + 56);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a1 + 56) = v5;
    v6 = *(a2 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(a1 + 64) = v6;
    v7 = *(a2 + 72);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(a1 + 72) = v7;
    v8 = *(a2 + 80);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *(a1 + 80) = v8;
    result = *(a2 + 88);
    *(a1 + 88) = result;
    *(a1 + 112) = 1;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15SetInitialFocusENS2_10ConnectionEN6WebKit7WebPageES9_FvbbRKNSt3__18optionalINS8_16WebKeyboardEventEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4B90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15SetInitialFocusENS2_10ConnectionEN6WebKit7WebPageES9_FvbbRKNSt3__18optionalINS8_16WebKeyboardEventEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4B90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15SetInitialFocusENS2_10ConnectionEN6WebKit7WebPageES9_FvbbRKNSt3__18optionalINS8_16WebKeyboardEventEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3876;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16SetActivityStateENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore13ActivityStateEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4BB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16SetActivityStateENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore13ActivityStateEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4BB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16SetActivityStateENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore13ActivityStateEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3875;
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

unsigned int *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::Color>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::decode<IPC::Decoder>(a1, &v10);
  if ((v12 & 1) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    v8 = !result || v7 == 0;
    if (v8 || (result = (*(*result + 16))(result, v6), (v12 & 1) == 0))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (v11 != 1)
  {
    goto LABEL_3;
  }

  *a2 = 0;
  v9 = v10;
  if (&v10 != a2)
  {
    *a2 = v10;
    *(a2 + 8) = 1;
LABEL_3:
    *(a2 + 16) = 1;
    return result;
  }

  *(a2 + 8) = 1;
  *(a2 + 16) = 1;
  if ((v9 & 0x8000000000000) != 0)
  {
    result = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[40] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[40] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<JSC::MessageSource>(a2);
  v7 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource>(a1, a2, a3, &v7);
  }

  *a1 = 0;
  a1[40] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, char *a4)
{
  result = IPC::Decoder::decode<JSC::MessageLevel>(a2);
  v9 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel>(a1, a2, a3, a4, &v9);
  }

  *a1 = 0;
  a1[40] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, char *a4, char *a5)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v12);
  if (v13 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String>(a1, a2, a3, a4, a5, &v12);
    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
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

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, char *a4, char *a5, uint64_t *a6)
{
  result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v16);
  if ((v17 & 1) == 0)
  {
    v15 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  if (*(a3 + 8) & 1) != 0 && (a4[1] & 1) != 0 && (a5[1] & 1) != 0 && (a6[1])
  {
    v12 = *a4;
    v13 = *a5;
    *a1 = *a3;
    *(a1 + 8) = v12;
    *(a1 + 9) = v13;
    v14 = *a6;
    *a6 = 0;
    *(a1 + 16) = v14;
    v15 = 1;
    *(a1 + 24) = v16;
LABEL_7:
    *(a1 + 40) = v15;
    return result;
  }

  __break(1u);
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30ExecuteEditCommandWithCallbackENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4BE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30ExecuteEditCommandWithCallbackENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4BE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30ExecuteEditCommandWithCallbackENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3784;
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

unsigned int *IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color),std::tuple<WebCore::Color>>(WebKit::WebPage *,void ()(WebCore::Color) WebKit::WebPage::*,std::tuple<WebCore::Color> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WebCore::Color>(uint64_t a1, uint64_t (*a2)(void *, void *), uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  v11[1] = v4;
  v11[2] = v5;
  v11[0] = 0;
  if (v11 != a4)
  {
    v8 = *a4;
    *a4 = 0;
    v11[0] = v8;
  }

  result = v6(v7, v11);
  if ((v11[0] & 0x8000000000000) != 0)
  {
    result = (v11[0] & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v11[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v10);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a2);
    if ((v7 & 0x100) != 0)
    {
      v8 = v7;
      result = IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode(a2, &v16);
      if (v17)
      {
        *a1 = v6;
        *(a1 + 8) = v8;
        *(a1 + 16) = v16;
        *(a1 + 32) = 1;
        return result;
      }

      v10 = *a2;
      v11 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v10);
      }
    }
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PotentialTapAtPositionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalIN7WebCore24RemoteUserInputEventDataEEEEENSC_INS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INS8_17TapIdentifierTypeESK_yEENSD_10FloatPointEbEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4C08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PotentialTapAtPositionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalIN7WebCore24RemoteUserInputEventDataEEEEENSC_INS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INS8_17TapIdentifierTypeESK_yEENSD_10FloatPointEbEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4C08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PotentialTapAtPositionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalIN7WebCore24RemoteUserInputEventDataEEEEENSC_INS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INS8_17TapIdentifierTypeESK_yEENSD_10FloatPointEbEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSF_EE4callES14_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3840;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CommitPotentialTapENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEESJ_NS_9OptionSetINS8_16WebEventModifierEEENSE_16ProcessQualifiedINS8_25MonotonicObjectIdentifierINS8_17TransactionIDTypeEEEEEjEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4C30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CommitPotentialTapENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEESJ_NS_9OptionSetINS8_16WebEventModifierEEENSE_16ProcessQualifiedINS8_25MonotonicObjectIdentifierINS8_17TransactionIDTypeEEEEEjEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4C30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CommitPotentialTapENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEESJ_NS_9OptionSetINS8_16WebEventModifierEEENSE_16ProcessQualifiedINS8_25MonotonicObjectIdentifierINS8_17TransactionIDTypeEEEEEjEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSJ_EE4callES17_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3755;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v5, a2);
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

uint64_t IPC::Decoder::decode<WebKit::GestureType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::GestureType,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebKit::GestureType,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  if (v4 >= 8)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t IPC::Decoder::decode<WebKit::GestureRecognizerState>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::GestureRecognizerState,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebKit::GestureRecognizerState,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  if (v4 >= 6)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17SelectWithGestureENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_11GestureTypeENS8_22GestureRecognizerStateEbONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4C58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17SelectWithGestureENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_11GestureTypeENS8_22GestureRecognizerStateEbONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4C58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17SelectWithGestureENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_11GestureTypeENS8_22GestureRecognizerStateEbONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EE4callESD_SE_SF_SJ_(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3873;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v16 = v11;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v11, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a4);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a5);
  IPC::Connection::sendMessageImpl(v9, &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateSelectionWithTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_14SelectionTouchEbONS_17CompletionHandlerIFvSD_SE_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4C80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateSelectionWithTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_14SelectionTouchEbONS_17CompletionHandlerIFvSD_SE_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4C80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateSelectionWithTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENS8_14SelectionTouchEbONS_17CompletionHandlerIFvSD_SE_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SI_EE4callESD_SE_SI_(uint64_t a1, void *a2, char a3, char a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3899;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v9, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a4);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20SelectWithTwoTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointESD_NS8_11GestureTypeENS8_22GestureRecognizerStateEONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4CA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20SelectWithTwoTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointESD_NS8_11GestureTypeENS8_22GestureRecognizerStateEONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4CA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20SelectWithTwoTouchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointESD_NS8_11GestureTypeENS8_22GestureRecognizerStateEONS_17CompletionHandlerIFvSD_SE_SF_NS_9OptionSetINS8_14SelectionFlagsEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SE_SF_SJ_EE4callESD_SE_SF_SJ_(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3874;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v16 = v11;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v11, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a4);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v11, a5);
  IPC::Connection::sendMessageImpl(v9, &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ExtendSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4CD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ExtendSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4CD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ExtendSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3786;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29ExtendSelectionForReplacementENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4CF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29ExtendSelectionForReplacementENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4CF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29ExtendSelectionForReplacementENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3785;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21MoveSelectionByOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FviONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4D20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21MoveSelectionByOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FviONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4D20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21MoveSelectionByOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FviONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3830;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32SelectTextWithGranularityAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4D48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32SelectTextWithGranularityAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4D48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32SelectTextWithGranularityAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3872;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37SelectPositionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityENSA_18SelectionDirectionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4D70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37SelectPositionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityENSA_18SelectionDirectionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4D70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37SelectPositionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityENSA_18SelectionDirectionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3870;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36MoveSelectionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityENSA_18SelectionDirectionEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4D98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36MoveSelectionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityENSA_18SelectionDirectionEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4D98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36MoveSelectionAtBoundaryWithDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityENSA_18SelectionDirectionEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3829;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21SelectPositionAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4DC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21SelectPositionAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4DC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21SelectPositionAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3871;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25BeginSelectionInDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore18SelectionDirectionEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4DE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25BeginSelectionInDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore18SelectionDirectionEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4DE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25BeginSelectionInDirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore18SelectionDirectionEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3752;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30UpdateSelectionWithExtentPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbNS8_22RespectSelectionAnchorEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4E10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30UpdateSelectionWithExtentPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbNS8_22RespectSelectionAnchorEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4E10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30UpdateSelectionWithExtentPointENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEbNS8_22RespectSelectionAnchorEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3898;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41UpdateSelectionWithExtentPointAndBoundaryENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbNS8_21TextInteractionSourceEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4E38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41UpdateSelectionWithExtentPointAndBoundaryENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbNS8_21TextInteractionSourceEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4E38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41UpdateSelectionWithExtentPointAndBoundaryENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointENSA_15TextGranularityEbNS8_21TextInteractionSourceEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3897;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RequestRVItemInCurrentSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4E60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RequestRVItemInCurrentSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4E60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35RequestRVItemInCurrentSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3861;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::RevealItem,void>::encode(v5, a2);
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

unint64_t IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48PrepareSelectionForContextMenuWithLocationInViewENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore8IntPointEONS_17CompletionHandlerIFvbRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4E88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48PrepareSelectionForContextMenuWithLocationInViewENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore8IntPointEONS_17CompletionHandlerIFvbRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4E88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48PrepareSelectionForContextMenuWithLocationInViewENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore8IntPointEONS_17CompletionHandlerIFvbRKNS8_10RevealItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSF_EE4callEbSF_(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3841;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WebKit::RevealItem,void>::encode(v7, a3);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestAutocorrectionDataENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNS8_21WebAutocorrectionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4EB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestAutocorrectionDataENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNS8_21WebAutocorrectionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4EB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestAutocorrectionDataENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNS8_21WebAutocorrectionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3853;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::WebAutocorrectionData,void>::encode(v5, a2);
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,BOOL>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v24);
    if ((v25 & 1) == 0)
    {
      v7 = *a2;
      v18 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v18 || (result = (*(*result + 16))(result, v7), (v25 & 1) == 0))
      {
        v11 = 0;
        *a1 = 0;
        *(a1 + 24) = 0;
        goto LABEL_8;
      }
    }

    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      break;
    }

    *(a2 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_30;
    }

    v8 = *v6;
    if (v8 >= 2)
    {
      goto LABEL_33;
    }

    if (v23)
    {
      v9 = v22;
      v22 = 0;
      v10 = v24;
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v8;
      v11 = 1;
      *(a1 + 24) = 1;
      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      (*(*v16 + 16))(v16, v14);
      if (v23)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_14;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v19 = *(a2 + 3);
  if (v19)
  {
    if (v5)
    {
      (*(*v19 + 16))(v19);
      v5 = *(a2 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_30:
  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (!v20)
  {
    v5 = 0;
LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (!v5)
  {
    goto LABEL_32;
  }

  (*(*v20 + 16))(v20);
  v7 = *a2;
  v5 = *(a2 + 1);
LABEL_33:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v5)
  {
    result = (*(*result + 16))(result, v7);
  }

  *a1 = 0;
  v21 = v25;
  *(a1 + 24) = 0;
  if (v21)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  v11 = 0;
LABEL_8:
  if ((v23 & 1) != 0 && (result = v22, v22 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

LABEL_14:
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19ApplyAutocorrectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_bONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4ED8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19ApplyAutocorrectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_bONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4ED8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19ApplyAutocorrectionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringESC_bONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3751;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33RequestEvasionRectsAboveSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4F00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33RequestEvasionRectsAboveSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4F00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33RequestEvasionRectsAboveSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3856;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PerformActionOnElementENS2_10ConnectionEN6WebKit7WebPageES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4F28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PerformActionOnElementENS2_10ConnectionEN6WebKit7WebPageES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4F28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22PerformActionOnElementENS2_10ConnectionEN6WebKit7WebPageES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3835;
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

WTF *IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_31:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v39 = 0;
  v40 = 0;
  if (v11 >= 0x3333)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ElementContext>(a1, &v41);
      if (v46 != 1)
      {
        break;
      }

      v25 = HIDWORD(v40);
      if (HIDWORD(v40) == v40)
      {
        v26 = WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v39, HIDWORD(v40) + 1, &v41);
        v25 = HIDWORD(v40);
        v27 = (v39 + 80 * HIDWORD(v40));
        *v27 = *v26;
        v28 = v26[4];
        v30 = v26[1];
        v29 = v26[2];
        v27[3] = v26[3];
        v27[4] = v28;
        v27[1] = v30;
        v27[2] = v29;
      }

      else
      {
        v31 = (v39 + 80 * HIDWORD(v40));
        v32 = v45;
        v34 = v42;
        v33 = v43;
        v31[3] = v44;
        v31[4] = v32;
        v31[1] = v34;
        v31[2] = v33;
        *v31 = v41;
      }

      HIDWORD(v40) = v25 + 1;
      if (!--v11)
      {
        WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v39, (v25 + 1));
        v35 = v39;
        v39 = 0;
        *a2 = v35;
        v36 = v40;
        HIDWORD(v40) = 0;
        *(a2 + 8) = v36;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v23 = 0;
      v24 = 0;
      v14 = 0;
LABEL_17:
      v39 = 0;
      *a2 = v14;
      HIDWORD(v40) = 0;
      *(a2 + 8) = v24;
      *(a2 + 12) = v23;
LABEL_18:
      *(a2 + 16) = 1;
      goto LABEL_26;
    }

    LODWORD(v40) = 80 * v11 / 0x50u;
    v39 = WTF::fastMalloc((80 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::ElementContext>(a1, &v41);
      if (v46 != 1)
      {
        break;
      }

      v12 = HIDWORD(v40);
      if (HIDWORD(v40) == v40)
      {
        v13 = WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v39, HIDWORD(v40) + 1, &v41);
        v12 = HIDWORD(v40);
        v14 = v39;
        v15 = (v39 + 80 * HIDWORD(v40));
        *v15 = *v13;
        v16 = v13[4];
        v18 = v13[1];
        v17 = v13[2];
        v15[3] = v13[3];
        v15[4] = v16;
        v15[1] = v18;
        v15[2] = v17;
      }

      else
      {
        v14 = v39;
        v19 = (v39 + 80 * HIDWORD(v40));
        v20 = v45;
        v22 = v42;
        v21 = v43;
        v19[3] = v44;
        v19[4] = v20;
        v19[1] = v22;
        v19[2] = v21;
        *v19 = v41;
      }

      v23 = v12 + 1;
      HIDWORD(v40) = v23;
      if (!--v11)
      {
        v24 = v40;
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_26:
  result = v39;
  if (v39)
  {
    v39 = 0;
    LODWORD(v40) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23FocusNextFocusedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4F50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23FocusNextFocusedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4F50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23FocusNextFocusedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3793;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetSelectionContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringESD_SD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_SD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4F78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetSelectionContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringESD_SD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_SD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4F78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetSelectionContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringESD_SD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_SD_EE4callESD_SD_SD_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3814;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a4);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41GetRectsForGranularityWithSelectionOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEiONS_17CompletionHandlerIFvRKNS_6VectorINSA_17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4FA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41GetRectsForGranularityWithSelectionOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEiONS_17CompletionHandlerIFvRKNS_6VectorINSA_17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4FA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage41GetRectsForGranularityWithSelectionOffsetENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore15TextGranularityEiONS_17CompletionHandlerIFvRKNS_6VectorINSA_17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3808;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33GetRectsAtSelectionOffsetWithTextENS2_10ConnectionEN6WebKit7WebPageES9_FviRKNS_6StringEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4FC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33GetRectsAtSelectionOffsetWithTextENS2_10ConnectionEN6WebKit7WebPageES9_FviRKNS_6StringEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4FC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33GetRectsAtSelectionOffsetWithTextENS2_10ConnectionEN6WebKit7WebPageES9_FviRKNS_6StringEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore17SelectionGeometryELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3807;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32RequestFocusedElementInformationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS8_25FocusedElementInformationEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4FF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32RequestFocusedElementInformationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS8_25FocusedElementInformationEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4FF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32RequestFocusedElementInformationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS8_25FocusedElementInformationEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3857;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[784])
  {
    v12 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v12);
    if ((a2[784] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WebKit::HardwareKeyboardState>>(v10);
    }

    IPC::ArgumentCoder<WebKit::FocusedElementInformation,void>::encode(v5, a2);
  }

  else
  {
    v13 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v13);
  }

  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::HardwareKeyboardState>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WebKit::HardwareKeyboardState>(a1);
  v3 = v2 & 0x1000000;
  if ((v2 & 0x1000000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v4 = v2 & 0xFFFFFF;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24UpdateSelectionWithDeltaENS2_10ConnectionEN6WebKit7WebPageES9_FvxxONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5018;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24UpdateSelectionWithDeltaENS2_10ConnectionEN6WebKit7WebPageES9_FvxxONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5018;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24UpdateSelectionWithDeltaENS2_10ConnectionEN6WebKit7WebPageES9_FvxxONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3896;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29RequestDocumentEditingContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS8_29DocumentEditingContextRequestEONS_17CompletionHandlerIFvONS8_22DocumentEditingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5040;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29RequestDocumentEditingContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS8_29DocumentEditingContextRequestEONS_17CompletionHandlerIFvONS8_22DocumentEditingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5040;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29RequestDocumentEditingContextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS8_29DocumentEditingContextRequestEONS_17CompletionHandlerIFvONS8_22DocumentEditingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3854;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::DocumentEditingContext,void>::encode(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::SyntheticEditingCommandType>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v7 = a1[3];
    if (v7)
    {
      if (v2)
      {
        (*(*v7 + 16))(v7);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v5 = *v3;
      if (v5 < 5)
      {
        v6 = 256;
        return v5 | v6;
      }

      goto LABEL_10;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v8 = a1[3];
  if (v8)
  {
    if (v2)
    {
      (*(*v8 + 16))(v8);
      v4 = *a1;
      v2 = a1[1];
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = 0;
LABEL_10:
  *a1 = 0;
  a1[1] = 0;
  v9 = a1[3];
  if (!v9 || !v2)
  {
    goto LABEL_11;
  }

  (*(*v9 + 16))(v9, v4);
  v6 = 0;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  v5 = 0;
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
LABEL_11:
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23TextInputContextsInRectENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore9FloatRectEONS_17CompletionHandlerIFvRKNS_6VectorINSA_14ElementContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5068;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23TextInputContextsInRectENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore9FloatRectEONS_17CompletionHandlerIFvRKNS_6VectorINSA_14ElementContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5068;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23TextInputContextsInRectENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore9FloatRectEONS_17CompletionHandlerIFvRKNS_6VectorINSA_14ElementContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3890;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 80 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(a1, v6);
      v6 += 80;
      v7 -= 80;
    }

    while (v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34FocusTextInputContextAndPlaceCaretENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextERKNSA_8IntPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5090;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34FocusTextInputContextAndPlaceCaretENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextERKNSA_8IntPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5090;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34FocusTextInputContextAndPlaceCaretENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextERKNSA_8IntPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3794;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ClearServiceWorkerEntitlementOverrideENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F50B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ClearServiceWorkerEntitlementOverrideENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F50B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ClearServiceWorkerEntitlementOverrideENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3754;
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ElementContext>>(uint64_t a1, IPC::Decoder *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WebCore::ElementContext>(a2, v10);
  v5 = v11;
  if (v11 == 1)
  {
    v6 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v6;
    *(a1 + 64) = v10[4];
    v7 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v7;
    *(a1 + 80) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 80) = 0;
    v8 = *a2;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        return (*(*result + 16))(result, v8);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18RequestImageBitmapENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEERKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F50E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18RequestImageBitmapENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEERKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F50E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18RequestImageBitmapENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEERKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SM_EE4callESJ_SM_(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3859;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v7, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,WebCore::IntPoint>>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = v3 - *a1;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (!v5 || v6 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      if (v2)
      {
        (*(*v12 + 16))(v12);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_12;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v2)
    {
      (*(*v13 + 16))(v13);
    }

    goto LABEL_13;
  }

  v8 = *v3;
  v9 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  if (v10)
  {
    LODWORD(v18) = v8;
    *(&v18 + 4) = v9;
    BYTE12(v18) = 1;
    v11 = v18;
    if ((*(&v18 + 1) & 0x100000000) != 0)
    {
      return v11;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
LABEL_14:
  v14 = *a1;
  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }

  return v11;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ScrollDirection,WebCore::ScrollGranularity>>(uint64_t *a1)
{
  v3 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  if ((v3 & 0x100) != 0)
  {
    v9 = v3;
    v10 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
    v1 = v10;
    v4 = v9 & (v10 << 23 >> 31);
    if ((v10 & 0x100) != 0)
    {
      v8 = 1;
      return v4 | (v1 << 8) | (v8 << 16);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v5 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v7 = a1[3];
  if (v7 && v6)
  {
    (*(*v7 + 16))(v7, v5);
  }

  v8 = 0;
  return v4 | (v1 << 8) | (v8 << 16);
}

void IPC::Decoder::decode<WebKit::GoToBackForwardItemParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::GoToBackForwardItemParameters,void>::decode(a2, a1);
  if ((*(a1 + 200) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t std::__tuple_leaf<0ul,WebKit::GoToBackForwardItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::GoToBackForwardItemParameters,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  std::optional<WebKit::WebsitePoliciesData>::optional[abi:sn200100](a1 + 24, (a2 + 24));
  v5 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v5;
  v6 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 176) = v6;
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

uint64_t std::optional<WebKit::WebsitePoliciesData>::optional[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *a1 = 0;
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
    v5 = a2[5];
    a2[5] = 0;
    *(a1 + 40) = v5;
    v6 = a2[6];
    a2[6] = 0;
    *(a1 + 48) = v6;
    v7 = a2[7];
    a2[7] = 0;
    *(a1 + 56) = v7;
    v8 = a2[8];
    a2[8] = 0;
    *(a1 + 64) = v8;
    LOBYTE(v8) = *(a2 + 74);
    *(a1 + 72) = *(a2 + 36);
    *(a1 + 74) = v8;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = 0;
    v9 = a2[11];
    a2[11] = 0;
    *(a1 + 88) = v9;
    v10 = *(a2 + 6);
    *(a1 + 109) = *(a2 + 109);
    *(a1 + 96) = v10;
    *(a1 + 120) = 1;
  }

  return a1;
}

void IPC::Decoder::decode<std::tuple<WebKit::LoadParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::LoadParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[960] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::LoadParameters>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::LoadParameters>(a2, v5);
  if (v6 == 1)
  {
    WebKit::LoadParameters::LoadParameters(a1, v5);
    v4 = v6;
    a1[960] = 1;
    if (v4)
    {
      WebKit::LoadParameters::~LoadParameters(v5, v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[960] = 0;
  }
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::LoadParameters>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::LoadParameters,void>::decode(a1, a2);
  if ((a2[960] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12GetFrameTreeENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS8_17FrameTreeNodeDataEEEEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5108;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12GetFrameTreeENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS8_17FrameTreeNodeDataEEEEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5108;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12GetFrameTreeENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINSt3__18optionalINS8_17FrameTreeNodeDataEEEEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSE_EE4callESU_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3800;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  if (a2[368])
  {
    v13 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if ((a2[368] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return std::optional<WebKit::FrameTreeNodeData>::~optional(v10, v11);
    }

    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v5, a2);
    IPC::VectorArgumentCoder<false,WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, (a2 + 352));
  }

  else
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v14);
  }

  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t std::optional<WebKit::FrameTreeNodeData>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 368) == 1)
  {
    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 352, a2);
    v4 = *(a1 + 304);
    *(a1 + 304) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    if (!*(a1 + 232))
    {
      v6 = *(a1 + 216);
      *(a1 + 216) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }

      v7 = *(a1 + 208);
      *(a1 + 208) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v3);
      }
    }

    *(a1 + 232) = -1;
    WebCore::ResourceRequest::~ResourceRequest((a1 + 8));
  }

  return a1;
}

uint64_t WTF::Awaitable<std::optional<WebKit::FrameTreeNodeData>>::Promise<std::optional<WebKit::FrameTreeNodeData>>::result(WTF *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[368] = 0;
  *a1 = 0;
  *(a1 + 368) = 0;
  if (*(a2 + 384) == 1)
  {
    std::__optional_storage_base<WebKit::FrameTreeNodeData,false>::__construct[abi:sn200100]<WebKit::FrameTreeNodeData>(a1, a2 + 16);
  }

  std::__optional_storage_base<WebKit::FrameTreeNodeData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameTreeNodeData,false>>(a2 + 16, v5);
  return std::optional<WebKit::FrameTreeNodeData>::~optional(v5, v3);
}

WTF *std::__optional_storage_base<WebKit::FrameTreeNodeData,false>::__construct[abi:sn200100]<WebKit::FrameTreeNodeData>(WTF *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *result = *a2;
    WTF::URL::URL(result + 8, (a2 + 8));
    WTF::URL::URL(v3 + 48, (a2 + 48));
    *(v3 + 88) = *(a2 + 88);
    v4 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(v3 + 96) = v4;
    *(v3 + 112) = 0;
    *(v3 + 104) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 104, (a2 + 104));
    *(v3 + 128) = 0;
    *(v3 + 120) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 120, (a2 + 120));
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    v3 += 136;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3, (a2 + 136));
    v5 = *(a2 + 152);
    *(v3 + 20) = *(a2 + 156);
    *(v3 + 16) = v5;
    v6 = *(a2 + 160);
    *(a2 + 160) = 0;
    *(v3 + 24) = v6;
    v7 = *(a2 + 168);
    *(a2 + 168) = 0;
    *(v3 + 32) = v7;
    v8 = *(a2 + 176);
    *(a2 + 176) = 0;
    *(v3 + 40) = v8;
    v9 = *(a2 + 184);
    *(v3 + 56) = *(a2 + 192);
    *(v3 + 48) = v9;
    v10 = *(a2 + 200);
    *(a2 + 200) = 0;
    *(v3 + 64) = v10;
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v3 + 72));
    v11 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(v3 + 104) = v11;
    v12 = *(a2 + 248);
    v13 = *(a2 + 264);
    v14 = *(a2 + 280);
    *(v3 + 160) = *(a2 + 296);
    *(v3 + 128) = v13;
    *(v3 + 144) = v14;
    *(v3 + 112) = v12;
    v15 = *(a2 + 304);
    *(a2 + 304) = 0;
    *(v3 + 168) = v15;
    v16 = *(a2 + 312);
    v17 = *(a2 + 328);
    *(v3 + 208) = *(a2 + 344);
    *(v3 + 176) = v16;
    *(v3 + 192) = v17;
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v3 + 216, (a2 + 352));
    *(v3 + 232) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::__optional_storage_base<WebKit::FrameTreeNodeData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameTreeNodeData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 368) == *(a2 + 368))
  {
    if (*(a1 + 368))
    {
      WebKit::FrameInfoData::operator=(a1, a2);
      v5 = *(a1 + 364);
      if (v5)
      {
        v6 = 368 * v5;
        v7 = *(a1 + 352) + 352;
        do
        {
          WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v4);
          v9 = *(v7 - 48);
          *(v7 - 48) = 0;
          if (v9)
          {
            CFRelease(v9);
          }

          v10 = *(v7 - 112);
          *(v7 - 112) = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v8);
          }

          if (!*(v7 - 120))
          {
            v11 = *(v7 - 136);
            *(v7 - 136) = 0;
            if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v8);
            }

            v12 = *(v7 - 144);
            *(v7 - 144) = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v8);
            }
          }

          *(v7 - 120) = -1;
          WebCore::ResourceRequest::~ResourceRequest((v7 - 344));
          v7 += 368;
          v6 -= 368;
        }

        while (v6);
      }

      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 352, (a2 + 352));
    }
  }

  else if (*(a1 + 368))
  {
    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 352, a2);
    v14 = *(a1 + 304);
    *(a1 + 304) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    if (!*(a1 + 232))
    {
      v16 = *(a1 + 216);
      *(a1 + 216) = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }

      v17 = *(a1 + 208);
      *(a1 + 208) = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v13);
      }
    }

    *(a1 + 232) = -1;
    WebCore::ResourceRequest::~ResourceRequest((a1 + 8));
    *(a1 + 368) = 0;
  }

  else
  {

    std::__optional_storage_base<WebKit::FrameTreeNodeData,false>::__construct[abi:sn200100]<WebKit::FrameTreeNodeData>(a1, a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::ProcessSyncData>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ProcessSyncData,void>::decode(a1, v15);
  if ((v18 & 1) == 0)
  {
    v11 = *a1;
    v12 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    v14 = !v13 || v12 == 0;
    if (v14 || ((*(*v13 + 16))(v13, v11), (v18 & 1) == 0))
    {
      *a2 = 0;
      a2[56] = 0;
      return;
    }
  }

  *a2 = v15[0];
  a2[8] = 0;
  v5 = a2 + 8;
  a2[48] = -1;
  v6 = v17;
  if (v17 > 4u)
  {
    if (v17 > 7u)
    {
      if (v17 == 8)
      {
        goto LABEL_13;
      }

      if (v17 != 9)
      {
LABEL_15:
        a2[56] = 1;
        goto LABEL_16;
      }
    }

    else if (v17 != 5)
    {
      if (v17 == 6)
      {
        *v5 = v16;
LABEL_14:
        a2[48] = v6;
        goto LABEL_15;
      }

LABEL_13:
      *v5 = v16;
      goto LABEL_14;
    }

    v8 = v16;
    v16 = 0;
    *v5 = v8;
    goto LABEL_14;
  }

  if (v17 < 4u)
  {
    goto LABEL_13;
  }

  WTF::URL::URL(v5, &v16);
  v6 = v17;
  v7 = v18;
  a2[48] = v17;
  a2[56] = 1;
  if ((v7 & 1) == 0)
  {
    return;
  }

LABEL_16:
  if (v6 > 5)
  {
    if ((v6 - 6) < 3 || v6 != 9)
    {
      return;
    }
  }

  else
  {
    if (v6 < 4)
    {
      return;
    }

    if (v6 == 4)
    {
      v9 = v16;
      v16 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v4);
        }
      }

      return;
    }
  }

  v10 = v16;
  v16 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v4);
  }
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::DocumentSyncData,WTF::RawPtrTraits<WebCore::DocumentSyncData>,WTF::DefaultRefDerefTraits<WebCore::DocumentSyncData>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::DocumentSyncData,void>::decode(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t WTF::RefCounted<WebCore::DocumentSyncData>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 48);
    *(v2 + 6) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v3, a2);
    }

    v4 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetPDFFirstPageSizeENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_9FloatSizeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5130;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetPDFFirstPageSizeENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_9FloatSizeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5130;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetPDFFirstPageSizeENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_9FloatSizeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2, float a3, float a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3805;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

atomic_uint *IPC::ArgumentCoder<std::tuple<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::FrameState,void>::decode(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, &v6);
  if (v7)
  {
    *a2 = v6;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a1);
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvNS8_34ContentAsStringIncludesChildFramesEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5158;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvNS8_34ContentAsStringIncludesChildFramesEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5158;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvNS8_34ContentAsStringIncludesChildFramesEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3799;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29GetContentsAsAttributedStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore16AttributedStringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5180;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29GetContentsAsAttributedStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore16AttributedStringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5180;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29GetContentsAsAttributedStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore16AttributedStringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3798;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26GetMainResourceDataOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F51A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26GetMainResourceDataOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F51A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26GetMainResourceDataOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3803;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

void IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(IPC::Encoder *a1, IPC::SharedBufferReference *a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
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

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder,unsigned long long>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetResourceDataFromFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F51D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetResourceDataFromFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F51D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetResourceDataFromFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3810;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35GetRenderTreeExternalRepresentationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F51F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35GetRenderTreeExternalRepresentationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F51F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35GetRenderTreeExternalRepresentationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3809;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30GetSelectionOrContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5220;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30GetSelectionOrContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5220;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30GetSelectionOrContentsAsStringENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3815;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28GetSelectionAsWebArchiveDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5248;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28GetSelectionAsWebArchiveDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5248;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28GetSelectionAsWebArchiveDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3813;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17GetSourceForFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5270;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17GetSourceForFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5270;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17GetSourceForFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3816;
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

IPC::Decoder *IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetWebArchiveOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSB_INS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5298;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetWebArchiveOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSB_INS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5298;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetWebArchiveOfFrameENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSB_INS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3819;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::MarkupExclusionRule>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::MarkupExclusionRule,void>::decode(a2, a1);
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

uint64_t WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MarkupExclusionRule>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 24 * *(a1 + 12));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v4[2] = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 1), (v3 + 8));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA90E24);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::MarkupExclusionRule>::move(v3, v4, v6);
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

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::MarkupExclusionRule>::move(WTF::StringImpl *result, WTF::StringImpl *a2, void *a3)
{
  if (result != a2)
  {
    v4 = (result + 8);
    do
    {
      v5 = *(v4 - 1);
      *(v4 - 1) = 0;
      *a3 = v5;
      a3[1] = 0;
      v6 = a3 + 1;
      a3[2] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a3 + 1), v4);
      WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v7);
      result = *(v4 - 1);
      *(v4 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v9 = (v4 + 4);
      v4 += 6;
      a3 = v6 + 2;
    }

    while (v9 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::MarkupExclusionRule>::destruct(WTF::StringImpl *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 1), a2);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::MarkupExclusionRule>::destruct(*a1, (*a1 + 24 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32GetWebArchiveOfFrameWithFileNameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6VectorINSB_19MarkupExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F52C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32GetWebArchiveOfFrameWithFileNameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6VectorINSB_19MarkupExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F52C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32GetWebArchiveOfFrameWithFileNameENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6VectorINSB_19MarkupExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3820;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14GetWebArchivesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_7HashMapINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_3RefINSD_16LegacyWebArchiveENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENS_11DefaultHashISH_EENS_10HashTraitsISH_EENSR_ISO_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F52E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14GetWebArchivesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_7HashMapINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_3RefINSD_16LegacyWebArchiveENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENS_11DefaultHashISH_EENS_10HashTraitsISH_EENSR_ISO_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F52E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14GetWebArchivesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_7HashMapINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_3RefINSD_16LegacyWebArchiveENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENS_11DefaultHashISH_EENS_10HashTraitsISH_EENSR_ISO_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EE4callESY_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3821;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v18 = v5;
  if (*a2)
  {
    v6 = *(*a2 - 12);
  }

  else
  {
    v6 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, v6);
  v7 = *a2;
  if (!*a2)
  {
    v9 = 0;
    v8 = 0;
LABEL_14:
    v11 = v9;
    v9 = &v7[2 * v8];
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_18;
  }

  v8 = *(v7 - 1);
  v9 = &v7[2 * v8];
  if (!*(v7 - 3))
  {
    goto LABEL_14;
  }

  if (!v8)
  {
    v12 = 0;
    v11 = v7;
    goto LABEL_17;
  }

  v10 = 16 * v8;
  v11 = v7;
  while ((*v11 + 1) <= 1)
  {
    v11 += 2;
    v10 -= 16;
    if (!v10)
    {
      v11 = v9;
      break;
    }
  }

  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_12:
  v12 = *(v7 - 1);
LABEL_17:
  v13 = &v7[2 * v12];
LABEL_18:
  while (v11 != v13)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *v11);
    IPC::ArgumentCoder<WebCore::LegacyWebArchive,void>::encode(v5, v11[1]);
    do
    {
      v11 += 2;
    }

    while (v11 != v9 && (*v11 + 1) <= 1);
  }

  IPC::Connection::sendMessageImpl(v3, &v18, 0, 0);
  result = v18;
  v18 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[144] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&),WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v5[0] = WebKit::WebPage::runJavaScriptInFrameInScriptWorld;
  v5[1] = 0;
  v4[0] = &v6;
  v4[1] = v5;
  v4[2] = a3;
  return IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&),WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>>(WebKit::WebPage *,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&) WebKit::WebPage::*,WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL> &&,WebKit::ContentWorldData const&<std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>(v4, a2, *(a2 + 96), *(a2 + 104), a2 + 112, *(a2 + 136));
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::RunJavaScriptParameters>(v6, a2);
  if (v7)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters>(a1, a2, v6);
  }

  else
  {
    *a1 = 0;
    a1[144] = 0;
  }

  return std::optional<WebKit::RunJavaScriptParameters>::~optional(v6, v4);
}

void IPC::Decoder::decode<WebKit::RunJavaScriptParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::RunJavaScriptParameters,void>::decode(a2, a1);
  if ((a1[96] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters>(_BYTE *a1, IPC::Decoder *a2, uint64_t *a3)
{
  result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v7);
  if (v8)
  {
    return IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, a3, &v7);
  }

  *a1 = 0;
  a1[144] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(_BYTE *a1, IPC::Decoder *a2, uint64_t *a3, _OWORD *a4)
{
  result = IPC::Decoder::decode<WebKit::ContentWorldData>(a2, &v10);
  if (v12 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData>(a1, a2, a3, a4, &v10);
    if (v12)
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
  }

  else
  {
    *a1 = 0;
    a1[144] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData>(_BYTE *a1, IPC::Decoder *a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  v10 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>(a1, a3, a4, a5, &v10);
  }

  *a1 = 0;
  a1[144] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>,void>::decode<IPC::Decoder,WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>(uint64_t a1, uint64_t *a2, _OWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (a2[12] & 1) != 0 && (a3[1] & 1) != 0 && (*(a4 + 24) & 1) != 0 && (a5[1])
  {
    return _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit23RunJavaScriptParametersENS_8optionalIN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS5_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS2_16ContentWorldDataEbEEELb0EECI2NS_24__optional_destruct_baseISE_Lb0EEEIJS3_SC_SD_bEEENS_10in_place_tEDpOT_(a1, a2, a3, a4, a5);
  }

  __break(1u);
  return a1;
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit23RunJavaScriptParametersENS_8optionalIN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS5_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS2_16ContentWorldDataEbEEELb0EECI2NS_24__optional_destruct_baseISE_Lb0EEEIJS3_SC_SD_bEEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2, _OWORD *a3, uint64_t a4, _BYTE *a5)
{
  v10 = *a2;
  *a2 = 0;
  *a1 = v10;
  *(a1 + 8) = *(a2 + 8);
  WTF::URL::URL(a1 + 16, a2 + 2);
  v11 = *(a2 + 56);
  *(a1 + 64) = 0;
  v12 = (a1 + 64);
  *(a1 + 56) = v11;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *v12 = 0;
    *(a1 + 72) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v12, a2 + 16);
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = *(a2 + 44);
  *(a1 + 96) = *a3;
  *(a1 + 112) = *a4;
  v13 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a1 + 120) = v13;
  *(a1 + 128) = *(a4 + 16);
  *(a1 + 136) = *a5;
  *(a1 + 144) = 1;
  return a1;
}

uint64_t std::optional<WebKit::RunJavaScriptParameters>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 80) == 1)
    {
      WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 64, a2);
    }

    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33RunJavaScriptInFrameInScriptWorldENS2_10ConnectionEN6WebKit7WebPageES9_FvONS8_23RunJavaScriptParametersENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNS8_16ContentWorldDataEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS8_26JavaScriptEvaluationResultENSD_INSF_16ExceptionDetailsEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5310;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33RunJavaScriptInFrameInScriptWorldENS2_10ConnectionEN6WebKit7WebPageES9_FvONS8_23RunJavaScriptParametersENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNS8_16ContentWorldDataEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS8_26JavaScriptEvaluationResultENSD_INSF_16ExceptionDetailsEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5310;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPage::RunJavaScriptInFrameInScriptWorld,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::optional<WebCore::ExceptionDetails>>>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3869;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::optional<WebCore::ExceptionDetails>>,void>::encode<IPC::Encoder>(v6, a3);
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

char *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::optional<WebCore::ExceptionDetails>>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 128))
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 128) == 1)
    {
      return IPC::ArgumentCoder<std::optional<WebCore::ExceptionDetails>,void>::encode<IPC::Encoder,std::optional<WebCore::ExceptionDetails>>(a1, a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (*(a2 + 128))
  {
    goto LABEL_7;
  }

  return IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::encode(a1, a2);
}

void *IPC::ArgumentCoder<std::optional<WebCore::ExceptionDetails>,void>::encode<IPC::Encoder,std::optional<WebCore::ExceptionDetails>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v11);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebCore::ExceptionDetails,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&),WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>>(WebKit::WebPage *,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&) WebKit::WebPage::*,WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL> &&,WebKit::ContentWorldData const&<std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>(v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v12 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v12);
  }
}

uint64_t IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&),WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>>(WebKit::WebPage *,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&) WebKit::WebPage::*,WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL> &&,WebKit::ContentWorldData const&<std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = (**a1 + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  return v7(v9, a2, a3, a4, a5, a6 & 1, *(a1 + 16));
}

uint64_t std::optional<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 144) == 1)
  {
    v3 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    if (*(a1 + 80) == 1)
    {
      WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 64, a2);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetAccessibilityTreeDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5338;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetAccessibilityTreeDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5338;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24GetAccessibilityTreeDataENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalINS2_21SharedBufferReferenceEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3795;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<IPC::SharedBufferReference>,void>::encode<IPC::Encoder,std::optional<IPC::SharedBufferReference> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32UpdateRenderingWithForcedRepaintENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5360;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32UpdateRenderingWithForcedRepaintENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5360;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32UpdateRenderingWithForcedRepaintENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3895;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21DetectDataInAllFramesENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore16DataDetectorTypeEEEONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5388;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21DetectDataInAllFramesENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore16DataDetectorTypeEEEONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5388;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21DetectDataInAllFramesENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore16DataDetectorTypeEEEONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, NSArray **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3770;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::encodeObjectDirectly<NSArray>(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23RemoveDataDetectedLinksENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F53B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23RemoveDataDetectedLinksENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F53B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23RemoveDataDetectedLinksENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS8_19DataDetectionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, NSArray **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3845;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::encodeObjectDirectly<NSArray>(v5, *a2);
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

WTF *IPC::Decoder::decode<std::tuple<WebKit::WebPreferencesStore,std::optional<unsigned long long>>>(uint64_t a1, IPC::Decoder *this, double a3, __n128 a4)
{
  IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode(this, v20, a3, a4);
  if (v26)
  {
    while (1)
    {
      v6 = IPC::Decoder::decode<std::optional<unsigned long long>>(this, &v27);
      v9 = v28;
      if (v28 != 1)
      {
        break;
      }

      if (v26)
      {
        *&v8 = 0;
        v10 = v20[0];
        v11 = v20[1];
        *v20 = v8;
        *a1 = v10;
        *(a1 + 8) = v11;
        LODWORD(v10) = v21;
        v21 = 0;
        *(a1 + 16) = v10;
        LOBYTE(v10) = v22;
        v22 = 0;
        *(a1 + 20) = v10;
        v12 = v23[0];
        v13 = v23[1];
        *v23 = v8;
        *(a1 + 24) = v12;
        *(a1 + 32) = v13;
        LODWORD(v12) = v24;
        v24 = 0;
        *(a1 + 40) = v12;
        LOBYTE(v12) = v25;
        v25 = 0;
        *(a1 + 44) = v12;
        *(a1 + 48) = v27;
        *(a1 + 64) = 1;
        goto LABEL_8;
      }

      __break(1u);
LABEL_25:
      (*(*v6 + 16))(v6, v7);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    *a1 = 0;
    v14 = v26;
    *(a1 + 64) = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v23[0])
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v23[0], LODWORD(v23[1]));
    }

LABEL_8:
    result = v20[0];
    if (v20[0])
    {
      result = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v20[0], LODWORD(v20[1]));
      if (v9)
      {
        return result;
      }
    }

    else if (v9)
    {
      return result;
    }
  }

  else
  {
    v7 = *this;
    v16 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    v6 = *(this + 3);
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
      goto LABEL_25;
    }

LABEL_18:
    *a1 = 0;
    *(a1 + 64) = 0;
  }

LABEL_19:
  v18 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result && v18)
  {
    v19 = *(*result + 16);

    return v19();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage7SuspendENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F53D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage7SuspendENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F53D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage7SuspendENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3887;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage6ResumeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5400;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage6ResumeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5400;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage6ResumeENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3868;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8TryCloseENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5428;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8TryCloseENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5428;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8TryCloseENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3892;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ValidateCommandENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbiEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5450;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ValidateCommandENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5450;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15ValidateCommandENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbiEE4callEbi(uint64_t a1, void *a2, int a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3904;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::WritingDirection>>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v3 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x100;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOBYTE(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37RequestFontAttributesAtSelectionStartENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore14FontAttributesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5478;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37RequestFontAttributesAtSelectionStartENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore14FontAttributesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5478;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37RequestFontAttributesAtSelectionStartENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKN7WebCore14FontAttributesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3858;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::FontAttributes,void>::encode(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>>>(IPC::Decoder *this)
{
  v2 = *(this + 1);
  v3 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = v3 - *this;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (!v5 || v6 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_10:
    IPC::Decoder::markInvalid(this);
    goto LABEL_11;
  }

  *(this + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_10;
  }

  v8 = *v3;
  v9 = IPC::Decoder::decode<std::optional<unsigned int>>(this);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  LODWORD(v13) = v8;
  *(&v13 + 4) = v9;
  BYTE12(v13) = 1;
  v11 = v13;
  if ((*(&v13 + 1) & 0x100000000) == 0)
  {
LABEL_12:
    IPC::Decoder::markInvalid(this);
  }

  return v11;
}

unint64_t IPC::Decoder::decode<std::tuple<double,WebCore::IntPoint>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::IntPoint>(a2), (v8))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::LayoutMilestone>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(a1);
  v3 = v2;
  v4 = v2 & 0x10000;
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v5 = v3;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::PaginationMode>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WebCore::PaginationMode>(a1);
  v3 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x100;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOBYTE(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WebKit::UserData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v12)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::String>(a1, &v11, a2, v4);
    if (v12)
    {
      v6 = v11;
      v11 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WebKit::UserData>,void>::decode<IPC::Decoder,WTF::String>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v13, a4);
  if (v14)
  {
    if (a2[1])
    {
      v7 = *a2;
      *a2 = 0;
      *a3 = v7;
      a2 = v13;
      if (!v13)
      {
        *(a3 + 8) = 0;
        *(a3 + 16) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    CFRetain(a2[1]);
    *(a3 + 8) = a2;
    *(a3 + 16) = 1;
    v12 = a2[1];

    CFRelease(v12);
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      (*(*v10 + 16))(v10, v8);
    }

    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v26);
  if ((v27 & 1) == 0)
  {
    v20 = *a2;
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    v23 = !v22 || v21 == 0;
    if (v23 || (result = (*(*v22 + 16))(v22, v20), (v27 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      goto LABEL_22;
    }
  }

  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 1)
  {
    *(a2 + 2) = v6 + 1;
    if (v6)
    {
      v12 = *v6;
      if (v12 >= 0x1000)
      {
        goto LABEL_38;
      }

      v13 = ((v6 + 5) & 0xFFFFFFFFFFFFFFFCLL);
      if (v5 >= v13 - v7 && v5 - (v13 - v7) > 3)
      {
        *(a2 + 2) = v13 + 4;
        if (v13)
        {
          v15 = *v13;
          v16 = v26;
          v26 = 0;
          *a1 = v16;
          *(a1 + 8) = v12;
          *(a1 + 12) = v15;
          v17 = 1;
          goto LABEL_16;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      if (v5)
      {
        (*(*v24 + 16))(v24);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v25 = *(a2 + 3);
  if (!v25)
  {
    v5 = 0;
LABEL_37:
    v7 = 0;
    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  (*(*v25 + 16))(v25);
  v7 = *a2;
  v5 = *(a2 + 1);
LABEL_38:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v5)
  {
    result = (*(*result + 16))(result, v7);
  }

  v17 = 0;
  *a1 = 0;
LABEL_16:
  *(a1 + 16) = v17;
  if ((v27 & 1) != 0 && (result = v26, v26 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (v17)
    {
      return result;
    }
  }

  else if (v17)
  {
    return result;
  }

LABEL_22:
  v18 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v18)
  {
    v19 = *(*result + 16);

    return v19();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage10FindStringENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEED1Ev(void *a1)
{
  *a1 = &unk_1F10F54A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage10FindStringENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F54A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage10FindStringENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEE4callESP_SV_jib(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v18[0] = a2;
  v18[1] = a3;
  v17 = a7;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3790;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v11;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v19 = v12;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, v18);
  IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a4);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a6);
  IPC::Encoder::operator<<<BOOL>(v12, &v17);
  IPC::Connection::sendMessageImpl(v10, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindStringIncludingImagesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEED1Ev(void *a1)
{
  *a1 = &unk_1F10F54C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindStringIncludingImagesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F54C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindStringIncludingImagesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_6VectorINSK_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjibEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SV_jibEE4callESP_SV_jib(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v18[0] = a2;
  v18[1] = a3;
  v17 = a7;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3788;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v11;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v19 = v12;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, v18);
  IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a4);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a6);
  IPC::Encoder::operator<<<BOOL>(v12, &v17);
  IPC::Connection::sendMessageImpl(v10, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17FindStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNS_6VectorINSH_IN7WebCore7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESK_Lm16ESL_EEiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_iEED1Ev(void *a1)
{
  *a1 = &unk_1F10F54F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17FindStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNS_6VectorINSH_IN7WebCore7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESK_Lm16ESL_EEiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_iEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F54F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17FindStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvNS_6VectorINSH_IN7WebCore7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESK_Lm16ESL_EEiEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_iEE4callESN_i(uint64_t a1, unsigned int *a2, int a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3789;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v15 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2[3]);
  v8 = a2[3];
  if (v8)
  {
    v9 = *a2;
    v10 = 16 * v8;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, v9);
      v9 += 16;
      v10 -= 16;
    }

    while (v10);
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CountStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvjEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5518;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CountStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvjEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5518;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18CountStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvjEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJjEE4callEj(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3762;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, v2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14ReplaceMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEbONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5540;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14ReplaceMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEbONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5540;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14ReplaceMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringEbONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3848;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindRectsForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5568;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindRectsForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5568;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25FindRectsForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorIN7WebCore9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3787;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, v6);
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30FindTextRangesForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorINS8_17WebFoundTextRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5590;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30FindTextRangesForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorINS8_17WebFoundTextRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5590;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30FindTextRangesForStringMatchesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_9OptionSetINS8_11FindOptionsEEEjONS_17CompletionHandlerIFvONS_6VectorINS8_17WebFoundTextRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3791;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 56 * v6;
    do
    {
      IPC::ArgumentCoder<WebKit::WebFoundTextRange,void>::encode(v5, v7);
      v7 += 56;
      v8 -= 56;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebFoundTextRange>@<X0>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebFoundTextRange,void>::decode(a1, a2);
  if ((*(a2 + 56) & 1) == 0)
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebKit::WebFoundTextRange>>(uint64_t a1, WTF::StringImpl *a2)
{
  result = IPC::Decoder::decode<WebKit::WebFoundTextRange>(a2, v9);
  if (v11 == 1)
  {
    v5 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v10;
    *(a1 + 56) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 56) = 0;
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
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestRectForFoundTextRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_17WebFoundTextRangeEONS_17CompletionHandlerIFvN7WebCore9FloatRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F55B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestRectForFoundTextRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_17WebFoundTextRangeEONS_17CompletionHandlerIFvN7WebCore9FloatRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F55B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}