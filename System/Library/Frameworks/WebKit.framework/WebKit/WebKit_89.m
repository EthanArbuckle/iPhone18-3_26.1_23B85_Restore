uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy41MinimumUpcomingPresentationTimeForTrackIDEN6WebKit23RemoteSourceBufferProxyES8_FvyONS_17CompletionHandlerIFvNS_9MediaTimeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2D20;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy41MinimumUpcomingPresentationTimeForTrackIDEN6WebKit23RemoteSourceBufferProxyES8_FvyONS_17CompletionHandlerIFvNS_9MediaTimeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EE4callESA_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = a1 + 8;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(*(a1 + 8), v5);
  return IPC::Connection::sendMessageImpl(*(v3 + 8), v3, 0, 0);
}

_DWORD *WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::RemoteWebInspectorUI::~RemoteWebInspectorUI((result - 4), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q1>)
{
  IPC::VectorArgumentCoder<false,WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v10, a3);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder,WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v10, a2);
    if (v11)
    {
      return WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
    }
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder,WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (v5 > &v6[-*a1])
  {
    a1[2] = (v6 + 1);
    if (!v6)
    {
      v13 = a1;
      goto LABEL_11;
    }

    v8 = *v6;
    if (v8 >= 2)
    {
      v13 = a1;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, a2);
      *(a3 + 16) = v8;
      v10 = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
  v13 = a1;
  v11 = a1[3];
  if (v11)
  {
    if (v5)
    {
      (*(*v11 + 16))(v11);
      v7 = *v13;
      v5 = v13[1];
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_11:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (!v12)
  {
    v5 = 0;
LABEL_13:
    v7 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  (*(*v12 + 16))(v12, v7);
  v7 = *v13;
  v5 = v13[1];
LABEL_15:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result && v5)
  {
    result = (*(*result + 16))(result, v7);
  }

  v10 = 0;
  *a3 = 0;
LABEL_6:
  *(a3 + 24) = v10;
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_49;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_49:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v12 = *v6;
  v39 = 0uLL;
  if (v12 >= 0x8000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorFrontendClientSaveData>(a1, &v34);
      if (v38 != 1)
      {
LABEL_45:
        *(a2 + 16) = 0;
        *a2 = 0;
        return WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v7);
      }

      if (v39.n128_u32[3] != v39.n128_u32[2])
      {
        break;
      }

      WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorFrontendClientSaveData>(&v39, &v34);
      if (v38)
      {
        goto LABEL_34;
      }

LABEL_43:
      if (!--v12)
      {
        WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v39, v39.n128_u32[3]);
        *a2 = v39.n128_u64[0];
        v31 = v39.n128_u64[1];
        v39 = 0uLL;
        *(a2 + 8) = v31;
        goto LABEL_28;
      }
    }

    v23 = v39.n128_u32[3] + 1;
    v24 = v39.n128_u64[0] + 32 * v39.n128_u32[3];
    v25 = v34;
    v34 = 0;
    *v24 = v25;
    v26 = v35;
    v35 = 0;
    *(v24 + 8) = v26;
    v27 = v36;
    v36 = 0;
    *(v24 + 16) = v27;
    *(v24 + 24) = v37;
    v39.n128_u32[3] = v23;
LABEL_34:
    v28 = v36;
    v36 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v7);
    }

    v29 = v35;
    v35 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v7);
    }

    v30 = v34;
    v34 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v7);
    }

    goto LABEL_43;
  }

  if (v12)
  {
    v39.n128_u32[2] = v12;
    v39.n128_u64[0] = WTF::fastMalloc((32 * v12));
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorFrontendClientSaveData>(a1, &v34);
      if (v38 != 1)
      {
        goto LABEL_45;
      }

      if (v39.n128_u32[3] != v39.n128_u32[2])
      {
        break;
      }

      WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorFrontendClientSaveData>(&v39, &v34);
      if (v38)
      {
        goto LABEL_15;
      }

LABEL_24:
      if (!--v12)
      {
        v22 = v39.n128_u64[1];
        v21 = v39.n128_u64[0];
        goto LABEL_27;
      }
    }

    v13 = v39.n128_u32[3] + 1;
    v14 = v39.n128_u64[0] + 32 * v39.n128_u32[3];
    v15 = v34;
    v34 = 0;
    *v14 = v15;
    v16 = v35;
    v35 = 0;
    *(v14 + 8) = v16;
    v17 = v36;
    v36 = 0;
    *(v14 + 16) = v17;
    *(v14 + 24) = v37;
    v39.n128_u32[3] = v13;
LABEL_15:
    v18 = v36;
    v36 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v7);
    }

    v19 = v35;
    v35 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v7);
    }

    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v7);
    }

    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
LABEL_27:
  a3.n128_u64[0] = 0;
  v39 = a3;
  *a2 = v21;
  *(a2 + 8) = v22;
LABEL_28:
  *(a2 + 16) = 1;
  return WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v7);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::InspectorFrontendClientSaveData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::InspectorFrontendClientSaveData,void>::decode(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
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

uint64_t WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorFrontendClientSaveData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = *a1 + 32 * v4;
  v7 = *v3;
  *v3 = 0;
  *v6 = v7;
  v8 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v6 + 8) = v8;
  v9 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v6 + 16) = v9;
  *(v6 + 24) = *(v3 + 24);
  *(a1 + 12) = v5;
  return 1;
}

unint64_t WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA2AE08);
    }

    v4 = *a1;
    v5 = (*a1 + 32 * *(a1 + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::InspectorFrontendClientSaveData>::move(v4, v5, v6);
    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::InspectorFrontendClientSaveData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      *(a3 + 8) = v7;
      v8 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v8;
      *(a3 + 24) = *(v5 + 24);
      v9 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 32;
      v5 = (v5 + 32);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct((*result + 32 * a2), (*result + 32 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA2AFB4);
      }

      result = WTF::fastMalloc((32 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::InspectorFrontendClientSaveData>::move(v5, (v5 + 32 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      v3[2] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[1];
      v3[1] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::InspectorFrontendClientSaveData>::destruct(*a1, (*a1 + 32 * v3));
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::InspectorFrontendClientAppearance>>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::NotificationDirection>(a1);
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

void IPC::ArgumentCoder<std::tuple<WebCore::CertificateInfo>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(a1, &v9);
  if (v10)
  {
    *a2 = v9;
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }

    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v4;
}

void IPC::Decoder::decode<std::tuple<WebKit::SecItemRequestData>>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::decode(a2, v8);
  if (v10)
  {
    *a1 = v8[0];
    *(a1 + 8) = v9;
    *(a1 + 24) = 1;
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = a2[3];
    if (v6)
    {
      if (v5)
      {
        (*(*v6 + 16))(v6, v4);
        v5 = a2[1];
        v6 = a2[3];
      }
    }

    else
    {
      v5 = 0;
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    *a2 = 0;
    a2[1] = 0;
    if (v6 && v5)
    {
      v7 = *(*v6 + 16);

      v7();
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16SecItemShimProxy14SecItemRequestENS2_10ConnectionEN6WebKit16SecItemShimProxyES9_FvRS7_RKNS8_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS8_19SecItemResponseDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2D48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16SecItemShimProxy14SecItemRequestENS2_10ConnectionEN6WebKit16SecItemShimProxyES9_FvRS7_RKNS8_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS8_19SecItemResponseDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2D48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16SecItemShimProxy14SecItemRequestENS2_10ConnectionEN6WebKit16SecItemShimProxyES9_FvRS7_RKNS8_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS8_19SecItemResponseDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3542;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebKit::SecItemResponseData>,void>::encode<IPC::Encoder,std::optional<WebKit::SecItemResponseData>>(v5, a2);
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

void IPC::ArgumentCoder<std::optional<WebKit::SecItemResponseData>,void>::encode<IPC::Encoder,std::optional<WebKit::SecItemResponseData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if (*(a2 + 32))
    {
      IPC::ArgumentCoder<WebKit::SecItemResponseData,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages16SecItemShimProxy18SecItemRequestSyncEN6WebKit16SecItemShimProxyES8_FvRNS2_10ConnectionERKNS7_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS7_19SecItemResponseDataEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED1Ev(v4);
    }
  }

  else
  {
    v6 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages16SecItemShimProxy18SecItemRequestSyncEN6WebKit16SecItemShimProxyES8_FvRNS2_10ConnectionERKNS7_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS7_19SecItemResponseDataEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2D70;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages16SecItemShimProxy18SecItemRequestSyncEN6WebKit16SecItemShimProxyES8_FvRNS2_10ConnectionERKNS7_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS7_19SecItemResponseDataEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2D70;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages16SecItemShimProxy18SecItemRequestSyncEN6WebKit16SecItemShimProxyES8_FvRNS2_10ConnectionERKNS7_18SecItemRequestDataEONS_17CompletionHandlerIFvONSt3__18optionalINS7_19SecItemResponseDataEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WebKit::SecItemResponseData>,void>::encode<IPC::Encoder,std::optional<WebKit::SecItemResponseData>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

WTF::StringImpl *WebKit::WebIOSEventFactory::createWebKeyboardEvent@<X0>(WebKit::WebIOSEventFactory *this@<X0>, WebEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if ([(WebKit::WebIOSEventFactory *)this type]== 5)
  {
    v6 = 8;
  }

  else
  {
    v6 = 7;
  }

  v39 = v6;
  v51 = 0;
  if (([(WebKit::WebIOSEventFactory *)this keyboardFlags]& 0x20) != 0)
  {
    v11 = MEMORY[0x1E696EBA8];
    v8 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      v51 = v8;
      v9 = *v11;
      if (*v11)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v9 = 0;
      v51 = 0;
    }

    v10 = 0;
    v50 = v9;
  }

  else
  {
    MEMORY[0x19EB02040](&v40, [(WebKit::WebIOSEventFactory *)this characters]);
    v8 = v40;
    v51 = v40;
    MEMORY[0x19EB02040](&v40, [(WebKit::WebIOSEventFactory *)this charactersIgnoringModifiers]);
    v9 = v40;
    v50 = v40;
    v10 = [(WebKit::WebIOSEventFactory *)this isKeyRepeating];
  }

  WebCore::keyForKeyEvent(&v49, this, v7);
  WebCore::codeForKeyEvent(&v48, this, v12);
  WebCore::keyIdentifierForKeyEvent(&v47, this, v13);
  v15 = WebCore::windowsKeyCodeForKeyEvent(this, v14);
  v16 = [(WebKit::WebIOSEventFactory *)this keyCode];
  v17 = [(WebKit::WebIOSEventFactory *)this modifierFlags];
  v18 = v17;
  v19 = (v17 & 0x220000) != 0;
  if ((v17 & 0x220000) != 0)
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  if ((v17 & 0x900000) != 0)
  {
    v19 = v20;
  }

  if ((v17 & 0x480000) != 0)
  {
    v19 |= 4u;
  }

  if ((v17 & 0x1010000) != 0)
  {
    v21 = v19 | 8;
  }

  else
  {
    v21 = v19;
  }

  [(WebKit::WebIOSEventFactory *)this timestamp];
  v23 = v22;
  if (v15 == 13)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v9 = v40;
    v51 = v40;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v24);
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    else if (!v9)
    {
LABEL_26:
      v25 = v50;
      v50 = v9;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }

      goto LABEL_29;
    }

    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    goto LABEL_26;
  }

LABEL_29:
  v26 = v51;
  if (MEMORY[0x19EB01EF0](v51, "\x7F", 1))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51 = v40;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }
    }
  }

  if (MEMORY[0x19EB01EF0](v9, "\x7F", 1))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v50 = v40;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v28);
      }
    }
  }

  if (v15 == 9)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v30 = v40;
    v31 = v51;
    v51 = v40;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
      if (!v30)
      {
        goto LABEL_42;
      }
    }

    else if (!v30)
    {
LABEL_42:
      v32 = v50;
      v50 = v30;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v29);
      }

      goto LABEL_45;
    }

    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    goto LABEL_42;
  }

LABEL_45:
  v41 = 0;
  v40 = &unk_1F10E83B8;
  v42 = v39;
  v43 = v21 | (v18 >> 14) & 0x10;
  v44 = v23;
  WTF::UUID::UUID(v52);
  v45 = v52[0];
  v46 = v52[1];
  WebKit::WebKeyboardEvent::WebKeyboardEvent(a3, &v40, &v51, &v50, &v49, &v48, &v47, v15, v16, 0, v3, v10, 0, 0);
  v34 = v47;
  v47 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v33);
  }

  v35 = v48;
  v48 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v33);
  }

  v36 = v49;
  v49 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v33);
  }

  v37 = v50;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v33);
  }

  result = v51;
  if (v51)
  {
    if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v33);
    }
  }

  return result;
}

void sub_19DA2B9D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a22)
  {
    if (atomic_fetch_add_explicit(a22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a22, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

double WebKit::WebIOSEventFactory::createWebWheelEvent@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  [a1 locationInView:a2];
  v29.x = v8;
  v29.y = v9;
  WebCore::FloatPoint::FloatPoint(v33, &v29);
  v10 = roundf(*v33);
  v11 = 0x80000000;
  if (v10 > -2147500000.0)
  {
    v11 = v10;
  }

  if (v10 < 2147500000.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x7FFFFFFFLL;
  }

  v13 = roundf(*(v33 + 1));
  if (v13 >= 2147500000.0)
  {
    v14 = 0x7FFFFFFF00000000;
  }

  else if (v13 <= -2147500000.0)
  {
    v14 = 0x8000000000000000;
  }

  else
  {
    v14 = v13 << 32;
  }

  [a1 translationInView:a2];
  v16 = v15;
  v18 = v17;
  [a1 timestamp];
  v29.x = v19;
  WTF::MonotonicTime::approximateWallTime(&v29);
  v21 = v20;
  LODWORD(v29.y) = 0;
  *&v29.x = &unk_1F10E83B8;
  WORD2(v29.y) = 6;
  v30 = v20;
  WTF::UUID::UUID(v33);
  v31 = v33[0];
  v32 = v33[1];
  v22 = [a1 phase];
  v23 = 0;
  if (v22 <= 3)
  {
    v23 = dword_19E703480[v22];
  }

  v24 = v18;
  v25 = *((&v29 | 0xC) + 0x10);
  *(a4 + 12) = *(&v29 | 0xC);
  v26 = v16;
  v27 = v14 | v12;
  if ((a3 & 0x100000000) != 0)
  {
    v23 = a3;
  }

  *(a4 + 8) = 0;
  *(a4 + 28) = v25;
  *(a4 + 44) = *((&v29 | 0xC) + 0x20);
  *a4 = &unk_1F10E8398;
  *(a4 + 48) = v27;
  *(a4 + 56) = v27;
  *(a4 + 64) = v26;
  *(a4 + 68) = v24;
  *(a4 + 72) = v26 * 0.025;
  *(a4 + 76) = v24 * 0.025;
  *(a4 + 80) = 1;
  *(a4 + 84) = v23;
  *(a4 + 88) = 0;
  *(a4 + 92) = 0;
  *(a4 + 94) = 1;
  *(a4 + 96) = v21;
  *(a4 + 104) = 0;
  *&result = 0x100000000;
  *(a4 + 112) = 0x100000000;
  *(a4 + 120) = v26;
  *(a4 + 124) = v24;
  return result;
}

uint64_t WebKit::isAsyncTextInputFeatureFlagEnabled(void)::$_0::operator()(PAL *a1)
{
  IsSmallScreen = PAL::deviceClassIsSmallScreen(a1);
  if (IsSmallScreen)
  {
    if (_os_feature_enabled_impl())
    {
      result = 1;
LABEL_4:
      _MergedGlobals_63 = result;
      return result;
    }

LABEL_7:
    result = _os_feature_enabled_impl();
    goto LABEL_4;
  }

  result = PAL::deviceHasIPadCapability(IsSmallScreen);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

_DWORD *WebKit::ServiceWorkerFetchTask::didReceiveMessage(WebKit::ServiceWorkerFetchTask *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  ++*(this + 2);
  v6 = *(a3 + 25);
  if (v6 <= 0x6BB)
  {
    if (*(a3 + 25) > 0x6B9u)
    {
      if (v6 == 1722)
      {
        WebKit::ServiceWorkerFetchTask::didNotHandle(this);
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      if (v6 != 1723)
      {
        goto LABEL_63;
      }

      IPC::ArgumentCoder<std::tuple<IPC::SharedBufferReference>,void>::decode<IPC::Decoder>(a3, buf);
      if (v57 & 1) != 0 || (v32 = *a3, v33 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v34 = *(a3 + 3)) != 0) && v33 && ((*(*v34 + 16))(v34, v32), (v57))
      {
        WebKit::ServiceWorkerFetchTask::didReceiveData(this, buf);
        if (v57)
        {
          v10 = *&buf[16];
          *&buf[16] = 0;
          if (v10)
          {
            WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v10);
          }

          v11 = *&buf[8];
          *&buf[8] = 0;
          if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11 + 2);
            (*(*v11 + 8))(v11);
          }
        }
      }

      return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
    }

    if (v6 == 1720)
    {
      IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a3, buf);
      if (v60 != 1)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      WebKit::ServiceWorkerFetchTask::didFail(this, buf);
      if ((v60 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      v13 = v59;
      v59 = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v58;
      v58 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v7);
      }

      v15 = *&buf[8];
      *&buf[8] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v7);
      }

      v9 = *buf;
      *buf = 0;
      if (!v9)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }
    }

    else
    {
      if (v6 != 1721)
      {
        goto LABEL_63;
      }

      IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v63 & 1) == 0)
      {
        v41 = *a3;
        v42 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v43 = *(a3 + 3);
        if (!v43)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        if (!v42)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        (*(*v43 + 16))(v43, v41);
        if ((v63 & 1) == 0)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }
      }

      WebKit::ServiceWorkerFetchTask::didFinish(this, buf);
      if ((v63 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      v8 = v62;
      v62 = 0;
      if (v8)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v8, v7);
      }

      v9 = v61;
      v61 = 0;
      if (!v9)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }
    }

    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
  }

  if (*(a3 + 25) > 0x6BDu)
  {
    if (v6 != 1726)
    {
      if (v6 == 1727)
      {
        WebKit::ServiceWorkerFetchTask::usePreload(this);
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      if (v6 == 1728)
      {
        WebKit::ServiceWorkerFetchTask::workerClosed(this);
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      goto LABEL_63;
    }

    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v53);
    if ((v55 & 1) == 0)
    {
      v44 = *a3;
      v45 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v46 = *(a3 + 3);
      if (!v46 || !v45 || ((*(*v46 + 16))(v46, v44), (v55 & 1) == 0))
      {
        buf[0] = 0;
        v66 = 0;
        goto LABEL_90;
      }
    }

    v16 = *(a3 + 1);
    v17 = *(a3 + 2);
    v18 = *a3;
    if (v16 <= &v17[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v50 = *(a3 + 3);
      if (v50)
      {
        if (v16)
        {
          (*(*v50 + 16))(v50);
          v16 = *(a3 + 1);
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v17 + 1;
      if (v17)
      {
        v19 = *v17;
        if (v19 < 2)
        {
          std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(buf, v53);
          v65 = v19;
          v20 = 1;
          goto LABEL_49;
        }

LABEL_102:
        *a3 = 0;
        *(a3 + 1) = 0;
        v52 = *(a3 + 3);
        if (v52 && v16)
        {
          (*(*v52 + 16))(v52, v18);
        }

        v20 = 0;
        buf[0] = 0;
LABEL_49:
        v66 = v20;
        if (v55)
        {
          v21 = cf;
          cf = 0;
          if (v21)
          {
            CFRelease(v21);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(v53, v18);
          v20 = v66;
        }

        if (v20)
        {
LABEL_54:
          WebKit::ServiceWorkerFetchTask::didReceiveResponse(this, buf, v65);
          if ((v66 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
          }

LABEL_55:
          v22 = v64;
          v64 = 0;
          if (v22)
          {
            CFRelease(v22);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v12);
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

LABEL_90:
        v47 = *a3;
        v48 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v49 = *(a3 + 3);
        if (!v49)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        if (!v48)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        (*(*v49 + 16))(v49, v47);
        if ((v66 & 1) == 0)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        goto LABEL_54;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v51 = *(a3 + 3);
    if (v51)
    {
      if (v16)
      {
        (*(*v51 + 16))(v51);
        v18 = *a3;
        v16 = *(a3 + 1);
        goto LABEL_102;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
    goto LABEL_102;
  }

  if (v6 != 1724)
  {
    if (v6 == 1725)
    {
      IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v65 & 1) == 0)
      {
        v35 = *a3;
        v36 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v37 = *(a3 + 3);
        if (!v37)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        if (!v36)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }

        (*(*v37 + 16))(v37, v35);
        if ((v65 & 1) == 0)
        {
          return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
        }
      }

      WebKit::ServiceWorkerFetchTask::didReceiveRedirectResponse(this, buf);
      if ((v65 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
      }

      goto LABEL_55;
    }

LABEL_63:
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v29 = 4223;
      }

      else
      {
        v29 = v6;
      }

      v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
      v31 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v25 = *a3;
    v26 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v27 = *(a3 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
  }

  IPC::ArgumentCoder<std::tuple<IPC::FormDataReference>,void>::decode<IPC::Decoder>(a3, buf);
  if (buf[8] & 1) != 0 || (v38 = *a3, v39 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v40 = *(a3 + 3)) != 0) && v39 && ((*(*v40 + 16))(v40, v38), (buf[8]))
  {
    WTF::isIntegralOrPointerType(this);
    if (buf[8])
    {
      v23 = *buf;
      *buf = 0;
      if (v23)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v23);
      }
    }
  }

  return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
}

void WebKit::SmartMagnificationController::didReceiveMessage(WebKit::SmartMagnificationController *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v5 = *(a3 + 25);
  if (v5 == 1730)
  {
    IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
    if (v26)
    {
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, buf);
      if (v40[1])
      {
        WebKit::SmartMagnificationController::scrollToRect(this);
        goto LABEL_17;
      }
    }

    goto LABEL_33;
  }

  if (v5 != 1729)
  {
    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v29 = 4223;
      }

      else
      {
        v29 = v5;
      }

      v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
      v31 = *(a3 + 7);
      *buf = 136315394;
      v39 = v30;
      LOWORD(v40[0]) = 2048;
      *(v40 + 2) = v31;
      _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v6 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_33;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, v36);
  if ((v37 & 1) == 0)
  {
    goto LABEL_33;
  }

  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, buf);
  if ((v40[1] & 1) == 0)
  {
    goto LABEL_33;
  }

  v9 = *(a3 + 1);
  v10 = *(a3 + 2);
  v11 = *a3;
  if (v9 <= &v10[-*a3])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v32 = *(a3 + 3);
    if (v32)
    {
      if (v9)
      {
        (*(*v32 + 16))(v32);
        v9 = *(a3 + 1);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    *(a3 + 2) = v10 + 1;
    if (v10)
    {
      v12 = *v10;
      if (v12 < 2)
      {
        v13 = IPC::Decoder::decode<unsigned long long>(a3);
        if (v14)
        {
          v15 = *&v13;
          v16 = IPC::Decoder::decode<unsigned long long>(a3);
          if (v23)
          {
            LODWORD(v18) = HIDWORD(v8);
            LODWORD(v17) = v8;
            LODWORD(v19) = v36[0];
            LODWORD(v20) = v36[1];
            LODWORD(v21) = *buf;
            LODWORD(v22) = v40[0];
            HIDWORD(v35) = v40[0];
            *(&v35 + 4) = v39;
            LODWORD(v35) = *buf;
            WebKit::SmartMagnificationController::didCollectGeometryForSmartMagnificationGesture(this, v12 & 1, v17, v18, v19, v20, *&v36[2], *&v36[3], v21, v22, *&v35, *(&v35 + 1), v15, *&v16);
            goto LABEL_17;
          }
        }

        goto LABEL_16;
      }

      goto LABEL_34;
    }
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  v33 = *(a3 + 3);
  if (v33)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    (*(*v33 + 16))(v33);
LABEL_33:
    v11 = *a3;
    v9 = *(a3 + 1);
    goto LABEL_34;
  }

  v9 = 0;
LABEL_30:
  v11 = 0;
LABEL_34:
  *a3 = 0;
  *(a3 + 1) = 0;
  v34 = *(a3 + 3);
  if (v34 && v9)
  {
    (*(*v34 + 16))(v34, v11);
  }

LABEL_16:
  v24 = *a3;
  v25 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v28 = *(a3 + 3);
  if (v28 && v25)
  {
    (*(*v28 + 16))(v28, v24);
  }

LABEL_17:
  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this, v24, v25);
  }

  else
  {
    --*(this + 4);
  }
}

uint64_t WebKit::SourceBufferPrivateRemote::MessageReceiver::didReceiveMessage(WebKit::SourceBufferPrivateRemote::MessageReceiver *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  (**this)(this);
  v7 = *(a3 + 25);
  if (v7 > 0x6C6)
  {
    if (*(a3 + 25) <= 0x6C8u)
    {
      if (v7 == 1735)
      {
        v24 = IPC::Decoder::decode<std::tuple<long long>>(a3);
        if (v8)
        {
          WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidReceiveRenderingError(this, v24);
        }

        return (*(*this + 8))(this, v8, v9);
      }

      if (v7 == 1736)
      {
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v8)
          {
            a3 = v16;
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
                goto LABEL_69;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_69:
            v34 = WTF::fastMalloc(0x18);
            *v34 = &unk_1F10F2DE8;
            v34[1] = a3;
            v34[2] = a2;
            *&v43 = v34;
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_77;
            }

            WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDurationChanged(this, buf, &v43);
            v35 = v43;
            *&v43 = 0;
            if (v35)
            {
              (*(*v35 + 8))(v35);
            }
          }
        }

        return (*(*this + 8))(this, v8, v9);
      }
    }

    else
    {
      switch(v7)
      {
        case 0x6C9u:
          IPC::ArgumentCoder<WebCore::SourceBufferEvictionData,void>::decode(a3, buf);
          if (v47[0])
          {
            goto LABEL_43;
          }

          v8 = *a3;
          v9 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v42 = *(a3 + 3);
          if (!v42 || !v9)
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            return (*(*this + 8))(this, v8, v9);
          }

          (*(*v42 + 16))(v42, v8);
          if (v47[0])
          {
LABEL_43:
            v43 = *buf;
            v44 = *&buf[16];
            v45 = 1;
            WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateEvictionDataChanged(this, &v43);
            return (*(*this + 8))(this, v8, v9);
          }

          v8 = *a3;
          v9 = *(a3 + 1);
          v26 = *(a3 + 3);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (!v26)
          {
            return (*(*this + 8))(this, v8, v9);
          }

          goto LABEL_50;
        case 0x6CAu:
          IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
          if (buf[16] == 1)
          {
            WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateHighestPresentationTimestampChanged(this, buf);
          }

          return (*(*this + 8))(this, v8, v9);
        case 0x6CBu:
          IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
          if (buf[16] == 1)
          {
            WebKit::SourceBufferPrivateRemote::MessageReceiver::takeOwnershipOfMemory(this);
            if (buf[16])
            {
              WTF::MachSendRight::~MachSendRight(buf);
            }
          }

          return (*(*this + 8))(this, v8, v9);
      }
    }

LABEL_48:
    v25 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v37 = 4223;
      }

      else
      {
        v37 = v7;
      }

      v38 = (&IPC::Detail::messageDescriptions)[3 * v37];
      v39 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = v39;
      _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v26 = *(a3 + 3);
    if (!v26)
    {
      return (*(*this + 8))(this, v8, v9);
    }

LABEL_50:
    if (v9)
    {
      (*(*v26 + 16))(v26, v8);
    }

    return (*(*this + 8))(this, v8, v9);
  }

  if (*(a3 + 25) > 0x6C4u)
  {
    if (v7 == 1733)
    {
      WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidDropSample(this);
      return (*(*this + 8))(this, v8, v9);
    }

    if (v7 != 1734)
    {
      goto LABEL_48;
    }

    IPC::Decoder::decode<std::tuple<WebKit::InitializationSegmentInfo>>(buf, a3);
    if (v49 != 1)
    {
      return (*(*this + 8))(this, v8, v9);
    }

    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v8)
    {
      a3 = v13;
      while (1)
      {
        v14 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v15 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_62;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_62:
      v30 = WTF::fastMalloc(0x18);
      *v30 = &unk_1F10F2D98;
      v30[1] = a3;
      v30[2] = a2;
      *&v43 = v30;
      if ((v49 & 1) == 0)
      {
        goto LABEL_77;
      }

      WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidReceiveInitializationSegment(this, buf, &v43);
      goto LABEL_64;
    }

LABEL_67:
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v8);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v32);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[16], v33);
    return (*(*this + 8))(this, v8, v9);
  }

  if (v7 == 1731)
  {
    IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, buf, v6);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_35;
  }

  if (v7 != 1732)
  {
    goto LABEL_48;
  }

  IPC::Decoder::decode<std::tuple<WebKit::InitializationSegmentInfo>>(buf, a3);
  if (v49 != 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_67;
  }

  a3 = v10;
  while (1)
  {
    v11 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v12 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_59;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_59:
  v29 = WTF::fastMalloc(0x18);
  *v29 = &unk_1F10F2E10;
  v29[1] = a3;
  v29[2] = a2;
  *&v43 = v29;
  if (v49)
  {
    WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidAttach(this, buf, &v43);
LABEL_64:
    v31 = v43;
    *&v43 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    if ((v49 & 1) == 0)
    {
      return (*(*this + 8))(this, v8, v9);
    }

    goto LABEL_67;
  }

  do
  {
LABEL_77:
    __break(1u);
LABEL_78:
    v40 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v41 = *(a3 + 3);
    if (!v41)
    {
      v9 = 0;
LABEL_80:
      v8 = 0;
      goto LABEL_81;
    }

    if (!v9)
    {
      goto LABEL_80;
    }

    (*(*v41 + 16))(v41, v40);
    if (buf[16])
    {
LABEL_35:
      *&v43 = *buf;
      v20 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      *(&v43 + 1) = v20;
      LOBYTE(v44) = 1;
      WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v19);
      goto LABEL_36;
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    v41 = *(a3 + 3);
LABEL_81:
    LOBYTE(v43) = 0;
    LOBYTE(v44) = 0;
    *a3 = 0;
    *(a3 + 1) = 0;
    if (!v41)
    {
      goto LABEL_56;
    }

    if (!v9)
    {
      goto LABEL_56;
    }

    (*(*v41 + 16))(v41, v8);
    if ((v44 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_36:
    v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v8 & 1) == 0)
    {
      goto LABEL_56;
    }

    a3 = v21;
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
        goto LABEL_53;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_53:
    v27 = WTF::fastMalloc(0x18);
    *v27 = &unk_1F10F2DC0;
    v27[1] = a3;
    v27[2] = a2;
    *buf = v27;
  }

  while ((v44 & 1) == 0);
  WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateBufferedChanged(this, &v43, buf);
  v28 = *buf;
  *buf = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

LABEL_56:
  if (v44 == 1)
  {
    WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v8);
  }

  return (*(*this + 8))(this, v8, v9);
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::didReceiveMessage(WebKit::SpeechRecognitionRealtimeMediaSourceManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(*(this + 3) + 8))
  {
    __break(0xC471u);
    goto LABEL_54;
  }

  v5 = *(a3 + 25);
  if (v5 <= 0x6CD)
  {
    if (v5 != 1740)
    {
      if (v5 == 1741)
      {
        result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v7)
        {
          result = WebKit::SpeechRecognitionRealtimeMediaSourceManager::deleteSource(this, result);
        }

        goto LABEL_43;
      }

      goto LABEL_11;
    }

    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v13)
    {
      v14 = v12;
      IPC::ArgumentCoder<WebCore::CaptureDevice,void>::decode(a3, &v31);
      if (v35 & 1) != 0 || (v28 = *a3, v29 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v30 = *(a3 + 3)) != 0) && v29 && ((*(*v30 + 16))(v30, v28), (v35))
      {
        v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        v17 = v16;
        if (v16)
        {
          if (v35)
          {
            *buf = v14;
            *&buf[8] = v31;
            buf[16] = v32;
            *v37 = *v33;
            v38 = v34;
            v39 = v15;
            v40 = 1;
            v31 = 0;
            v33[0] = 0;
            v33[1] = 0;
LABEL_26:
            v20 = v33[0];
            v33[0] = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v16);
            }

            v21 = v31;
            v31 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v16);
            }

            if ((v17 & 1) == 0)
            {
              goto LABEL_12;
            }

            result = WebKit::SpeechRecognitionRealtimeMediaSourceManager::createSource(this, *buf);
            if (v40)
            {
              v23 = v37[1];
              v37[1] = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v22);
              }

              v24 = v37[0];
              v37[0] = 0;
              if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v24, v22);
              }

              result = *&buf[8];
              *&buf[8] = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v22);
              }
            }

            goto LABEL_43;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        buf[0] = 0;
        v40 = 0;
        if (v35)
        {
          v19 = v33[1];
          v33[1] = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v16);
          }

          goto LABEL_26;
        }
      }
    }

LABEL_12:
    v10 = *a3;
    v11 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v11)
    {
      result = (*(*result + 16))(result, v10);
    }

    goto LABEL_43;
  }

  if (v5 == 1742)
  {
    result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v18)
    {
      result = WebKit::SpeechRecognitionRealtimeMediaSourceManager::start(this, result);
    }
  }

  else
  {
    if (v5 != 1743)
    {
LABEL_11:
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v25 = 4223;
        }

        else
        {
          v25 = v5;
        }

        v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
        v27 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_12;
    }

    result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v8)
    {
      result = WebKit::SpeechRecognitionRealtimeMediaSourceManager::stop(this, result);
    }
  }

LABEL_43:
  if (!*(*(this + 3) + 8))
  {
LABEL_55:
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::didReceiveMessage(WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(*(this + 3) + 8);
  if (!v5)
  {
    v17 = "T *WTF::WeakRef<const WebKit::WebProcessProxy>::ptr() const [T = const WebKit::WebProcessProxy, WeakPtrImpl = WTF::DefaultWeakPtrImpl]";
    v16 = 92;
    __break(0xC471u);
    goto LABEL_66;
  }

  v4 = a3;
  if ((*(v5 + 1104) & 0x8000000000000000) != 0)
  {
    v3 = this;
    atomic_fetch_add((v5 + 16), 1u);
    v10 = *(a3 + 25);
    if (v10 <= 0x6D1)
    {
      if (v10 != 1744)
      {
        if (v10 == 1745)
        {
          v11 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v12)
          {
            WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::remoteCaptureFailed(v3, v11);
          }

          return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
        }

        goto LABEL_25;
      }

      v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v23 & 1) == 0)
      {
        goto LABEL_60;
      }

      v24 = v22;
      IPC::Decoder::decode<WTF::MediaTime>(v4, v50);
      if (LOBYTE(v50[2]) != 1)
      {
        goto LABEL_60;
      }

      v17 = *(v4 + 1);
      v25 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v26 = v25 - *v4;
      v27 = v17 >= v26;
      v28 = &v17[-v26];
      if (v27 && v28 > 7)
      {
        *(v4 + 2) = v25 + 1;
        if (v25)
        {
          v29 = *v25;
          *&buf[8] = *v50;
          *buf = v24;
          *&buf[24] = v29;
          LOBYTE(v54) = 1;
          WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::remoteAudioSamplesAvailable(v3, v24);
          return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v43 = *(v4 + 3);
        if (v43)
        {
          if (v17)
          {
            (*(*v43 + 16))(v43);
            v17 = *(v4 + 1);
          }
        }

        else
        {
          v17 = 0;
        }
      }

      *v4 = 0;
      *(v4 + 1) = 0;
      v16 = *(v4 + 3);
      if (!v16)
      {
LABEL_60:
        v44 = *v4;
        v45 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v46 = *(v4 + 3);
        if (v46 && v45)
        {
          (*(*v46 + 16))(v46, v44);
        }

        return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
      }

LABEL_67:
      if (v17)
      {
        (*(*v16 + 16))(v16);
      }

      goto LABEL_60;
    }

    if (v10 == 1746)
    {
      v30 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v31)
      {
        WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::remoteSourceStopped(v3, v30);
      }

      return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
    }

    if (v10 != 1747)
    {
LABEL_25:
      v18 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(v4 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_60;
    }

    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v14 & 1) == 0)
    {
      buf[0] = 0;
      v60 = 0;
LABEL_43:
      v34 = *v4;
      v35 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v36 = *(v4 + 3);
      if (!v36)
      {
        return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
      }

      if (!v35)
      {
        return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
      }

      (*(*v36 + 16))(v36, v34);
      if ((v60 & 1) == 0)
      {
        return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
      }

LABEL_23:
      WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::setStorage(v3, *buf, &buf[8], &v54);
      if (v60)
      {
        WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v54);
        WTF::MachSendRight::~MachSendRight(&buf[8]);
      }

      return WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager::deref(v3);
    }

    v15 = v13;
    IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::decode(v4, v47);
    if ((v49 & 1) == 0)
    {
      v37 = *v4;
      v38 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v39 = *(v4 + 3);
      if (!v39 || !v38 || ((*(*v39 + 16))(v39, v37), (v49 & 1) == 0))
      {
        buf[0] = 0;
        v60 = 0;
        goto LABEL_22;
      }
    }

    IPC::ArgumentCoder<WebCore::CAAudioStreamDescription,void>::decode(v4, v50);
    if ((v52 & 1) == 0)
    {
      v40 = *v4;
      v41 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v42 = *(v4 + 3);
      if (!v42 || !v41 || (v16 = (*(*v42 + 16))(v42, v40), (v52 & 1) == 0))
      {
        buf[0] = 0;
        v60 = 0;
LABEL_20:
        if (v49)
        {
          WTF::MachSendRight::~MachSendRight(v47);
        }

LABEL_22:
        if (v60)
        {
          goto LABEL_23;
        }

        goto LABEL_43;
      }
    }

    if (v49)
    {
      *buf = v15;
      WTF::MachSendRight::MachSendRight();
      *&buf[16] = v48;
      v54 = MEMORY[0x1E69E2E98] + 16;
      v56 = *&v50[3];
      v57 = *&v50[5];
      v58 = *&v50[7];
      v59 = v51;
      v55 = *&v50[1];
      v60 = 1;
      if (v52)
      {
        WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v50);
      }

      goto LABEL_20;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v32 = *(v4 + 25);
    if (v32 >= 0x107F)
    {
      v32 = 4223;
    }

    v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver SpeechRecognitionRemoteRealtimeMediaSourceManager", buf, 0xCu);
  }

  v7 = *v4;
  v8 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  result = *(v4 + 3);
  if (result)
  {
    if (v8)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

WebCore::SpeechRecognizer *WebKit::SpeechRecognitionServer::didReceiveMessage(WebKit::SpeechRecognitionServer *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v161 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if ((*(v5 + 1104) & 0x8000000000000000) != 0)
      {
        ++*(this + 6);
        v11 = *(a3 + 25);
        if (v11 <= 0x6D5)
        {
          if (v11 == 1748)
          {
            result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
            if (v12)
            {
              result = WebKit::SpeechRecognitionServer::abort(this, result);
            }

            goto LABEL_107;
          }

          if (v11 == 1749)
          {
            result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
            if (v12)
            {
              result = WebKit::SpeechRecognitionServer::invalidate(this, result);
            }

            goto LABEL_107;
          }

LABEL_45:
          v44 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v11 >= 0x107F)
            {
              v45 = 4223;
            }

            else
            {
              v45 = v11;
            }

            v46 = (&IPC::Detail::messageDescriptions)[3 * v45];
            v47 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v46;
            *&buf[12] = 2048;
            *&buf[14] = v47;
            _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }

          v12 = *a3;
          v13 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (result && v13)
          {
            result = (*(*result + 16))(result, v12);
          }

          goto LABEL_107;
        }

        if (v11 == 1751)
        {
          result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v12)
          {
            result = WebKit::SpeechRecognitionServer::stop(this, result);
          }

          goto LABEL_107;
        }

        if (v11 != 1750)
        {
          goto LABEL_45;
        }

        v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v15 & 1) == 0)
        {
          buf[0] = 0;
          v119 = 0;
LABEL_111:
          v12 = *a3;
          v13 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (!result || !v13 || (result = (*(*result + 16))(result, v12), (v119 & 1) == 0))
          {
LABEL_107:
            if (*(this + 6) == 1)
            {
              return (*(*this + 24))(this, v12, v13);
            }

            --*(this + 6);
            return result;
          }

LABEL_89:
          result = WebKit::SpeechRecognitionServer::start(this, *buf, &buf[8], buf[16], buf[17], v78, v79, v85, &v86);
          if (v119)
          {
            WebKit::FrameInfoData::~FrameInfoData(&v86);
            if (!v84)
            {
              v57 = v82[1];
              v82[1] = 0;
              if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v12);
              }

              v58 = v82[0];
              v82[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v12);
              }
            }

            v84 = -1;
            if (!v81)
            {
              v59 = v79[1];
              v79[1] = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v12);
              }

              v60 = v79[0];
              v79[0] = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v12);
              }
            }

            v81 = -1;
            result = *&buf[8];
            *&buf[8] = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v12);
            }
          }

          goto LABEL_107;
        }

        v16 = v14;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v75);
        if ((v76 & 1) == 0)
        {
          v61 = *a3;
          v62 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v63 = *(a3 + 3);
          if (!v63 || !v62 || ((*(*v63 + 16))(v63, v61), (v76 & 1) == 0))
          {
            buf[0] = 0;
            v119 = 0;
            goto LABEL_88;
          }
        }

        v17 = *(a3 + 1);
        v18 = *(a3 + 2);
        v19 = *a3;
        if (v17 <= &v18[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v68 = *(a3 + 3);
          if (v68)
          {
            if (v17)
            {
              (*(*v68 + 16))(v68);
              v17 = *(a3 + 1);
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v20 = (v18 + 1);
          *(a3 + 2) = v18 + 1;
          if (v18)
          {
            v21 = *v18;
            if (v21 >= 2)
            {
              goto LABEL_139;
            }

            if (v17 <= v20 - v19)
            {
              v70 = 0;
              v71 = 0;
              *a3 = 0;
              *(a3 + 1) = 0;
              v72 = *(a3 + 3);
              if (v72)
              {
                (*(*v72 + 16))(v72);
                v71 = *a3;
                v70 = *(a3 + 1);
              }
            }

            else
            {
              *(a3 + 2) = v18 + 2;
              if (v18 != -1)
              {
                v22 = *v20;
                if (v22 < 2)
                {
                  v23 = v20 & 0xFFFFFFFFFFFFFFF8;
                  v24 = v23 + 8 - v19;
                  v25 = v17 >= v24;
                  v26 = v17 - v24;
                  if (v25 && v26 > 7)
                  {
                    *(a3 + 2) = v23 + 16;
                    if (v23 != -8)
                    {
                      v27 = *(v23 + 8);
                      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v120);
                      if ((v126 & 1) == 0)
                      {
                        v19 = *a3;
                        v48 = *(a3 + 1);
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v49 = *(a3 + 3);
                        if (!v49 || !v48 || ((*(*v49 + 16))(v49, v19), (v126 & 1) == 0))
                        {
LABEL_66:
                          buf[0] = 0;
                          v119 = 0;
LABEL_84:
                          if (v76)
                          {
                            v56 = v75;
                            v75 = 0;
                            if (v56)
                            {
                              if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v56, v19);
                              }
                            }
                          }

LABEL_88:
                          if (v119)
                          {
                            goto LABEL_89;
                          }

                          goto LABEL_111;
                        }
                      }

                      v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                      if ((v19 & 1) == 0 || (v29 = v28, IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a3, &v127), (v160 & 1) == 0) && ((v19 = *a3, v50 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v51 = *(a3 + 3)) == 0) || !v50 || ((*(*v51 + 16))(v51, v19), (v160 & 1) == 0)))
                      {
                        buf[0] = 0;
                        v119 = 0;
LABEL_69:
                        if (v126)
                        {
                          if (!v125)
                          {
                            v52 = v123[1];
                            v123[1] = 0;
                            if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v52, v19);
                            }

                            v53 = v123[0];
                            v123[0] = 0;
                            if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v53, v19);
                            }
                          }

                          v125 = -1;
                          if (!v122)
                          {
                            v54 = v120[1];
                            v120[1] = 0;
                            if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v54, v19);
                            }

                            v55 = v120[0];
                            v120[0] = 0;
                            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v55, v19);
                            }
                          }
                        }

                        goto LABEL_84;
                      }

                      if ((v76 & 1) == 0 || (v126 & 1) == 0)
                      {
                        __break(1u);
                      }

                      v30 = v75;
                      v75 = 0;
                      *buf = v16;
                      *&buf[8] = v30;
                      buf[16] = v21;
                      buf[17] = v22;
                      v78 = v27;
                      LOBYTE(v79[0]) = 0;
                      v81 = -1;
                      if (v122)
                      {
                        if (v122 == 255)
                        {
LABEL_34:
                          LOBYTE(v82[0]) = 0;
                          v84 = -1;
                          if (v125)
                          {
                            if (v125 == 255)
                            {
LABEL_37:
                              v85 = v29;
                              v86 = v127;
                              v33 = v128;
                              v128 = 0;
                              v87 = v33;
                              v88 = v129;
                              v89 = v130;
                              LODWORD(v129) = v129 & 0xFFFFFFFE;
                              v34 = v131;
                              v131 = 0;
                              v90 = v34;
                              v91 = v132;
                              v92 = v133;
                              LODWORD(v132) = v132 & 0xFFFFFFFE;
                              v93 = v134;
                              v35 = v135;
                              v135 = 0u;
                              v94 = v35;
                              *&v35 = v136;
                              v136 = 0;
                              v95 = v35;
                              v36 = v137;
                              v137 = 0;
                              v96 = v36;
                              *&v35 = v138;
                              v138 = 0;
                              v97 = v35;
                              v37 = v139;
                              v139 = 0;
                              v98 = v37;
                              *&v35 = v140;
                              v140 = 0;
                              v99 = v35;
                              v101 = v142;
                              v100 = v141;
                              v38 = v143;
                              v143 = 0u;
                              v102 = v38;
                              v105 = v146;
                              v103 = v144;
                              v104 = v145;
                              v39 = v147;
                              v144 = 0;
                              v147 = 0;
                              v106 = v39;
                              LOBYTE(v107) = 0;
                              v109 = -1;
                              if (v150)
                              {
                                if (v150 == 255)
                                {
LABEL_40:
                                  v111 = v152;
                                  v112 = v153;
                                  v113 = v154;
                                  v110 = v151;
                                  v41 = v156;
                                  v151 = 0;
                                  v156 = 0;
                                  v114 = v155;
                                  v115 = v41;
                                  v116 = v157;
                                  v117 = v158;
                                  v118 = v159;
                                  v119 = 1;
                                  if (v160)
                                  {
                                    WebKit::FrameInfoData::~FrameInfoData(&v127);
                                  }

                                  goto LABEL_69;
                                }

                                v107 = v148;
                              }

                              else
                              {
                                v40 = v148;
                                v148 = 0uLL;
                                v107 = v40;
                                v108 = v149;
                              }

                              v109 = v150;
                              goto LABEL_40;
                            }

                            *v82 = *v123;
                          }

                          else
                          {
                            v32 = *v123;
                            v123[1] = 0;
                            v123[0] = 0;
                            *v82 = v32;
                            v83 = v124;
                          }

                          v84 = v125;
                          goto LABEL_37;
                        }

                        *v79 = *v120;
                      }

                      else
                      {
                        v31 = *v120;
                        v120[1] = 0;
                        v120[0] = 0;
                        *v79 = v31;
                        v80 = v121;
                      }

                      v81 = v122;
                      goto LABEL_34;
                    }

                    v64 = v17;
                    v65 = v19;
                  }

                  else
                  {
                    v64 = 0;
                    v65 = 0;
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v66 = *(a3 + 3);
                    if (v66)
                    {
                      (*(*v66 + 16))(v66);
                      v65 = *a3;
                      v64 = *(a3 + 1);
                    }
                  }

                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v67 = *(a3 + 3);
                  if (v67 && v64)
                  {
                    (*(*v67 + 16))(v67, v65, v64);
                  }

                  goto LABEL_66;
                }

LABEL_139:
                *a3 = 0;
                *(a3 + 1) = 0;
                v74 = *(a3 + 3);
                if (v74 && v17)
                {
                  (*(*v74 + 16))(v74, v19);
                }

                goto LABEL_66;
              }

              v70 = v17;
              v71 = v19;
            }

            *a3 = 0;
            *(a3 + 1) = 0;
            v73 = *(a3 + 3);
            if (v73 && v70)
            {
              (*(*v73 + 16))(v73, v71, v70);
              goto LABEL_149;
            }

            goto LABEL_137;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v69 = *(a3 + 3);
        if (v69)
        {
          if (v17)
          {
            (*(*v69 + 16))(v69);
LABEL_149:
            v19 = *a3;
            v17 = *(a3 + 1);
            goto LABEL_139;
          }

LABEL_138:
          v19 = 0;
          goto LABEL_139;
        }

LABEL_137:
        v17 = 0;
        goto LABEL_138;
      }
    }
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v42 = *(a3 + 25);
    if (v42 >= 0x107F)
    {
      v42 = 4223;
    }

    v43 = (&IPC::Detail::messageDescriptions)[3 * v42];
    *buf = 136315138;
    *&buf[4] = v43;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver SpeechRecognitionServer", buf, 0xCu);
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

_DWORD *WebKit::StorageAreaMap::didReceiveMessage(WebKit::StorageAreaMap *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = (this + 16);
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 != 1752)
  {
    if (v6 != 1753)
    {
      v18 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v6;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v71 = 2048;
        *v72 = v21;
        _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_82;
    }

    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    v9 = *a3;
    if (v7 <= &v8[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v52 = *(a3 + 3);
      if (v52)
      {
        if (v7)
        {
          (*(*v52 + 16))(v52);
          v7 = *(a3 + 1);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v8 + 1;
      if (v8)
      {
        v10 = *v8;
        if (v10 < 2)
        {
          if (!v10)
          {
            v15 = 0;
            v13 = 0;
            v14 = 0;
LABEL_17:
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v62);
            if ((v63 & 1) == 0)
            {
              goto LABEL_56;
            }

            while (1)
            {
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v64);
              if ((v65 & 1) == 0)
              {
                v24 = *a3;
                v43 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v44 = *(a3 + 3);
                if (!v44 || !v43 || ((*(*v44 + 16))(v44, v24), (v65 & 1) == 0))
                {
                  v31 = 0;
                  buf[0] = 0;
                  v76 = 0;
                  goto LABEL_37;
                }
              }

              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v66);
              if ((v67 & 1) == 0)
              {
                v24 = *a3;
                v45 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v46 = *(a3 + 3);
                if (!v46 || !v45 || ((*(*v46 + 16))(v46, v24), (v67 & 1) == 0))
                {
                  v31 = 0;
                  buf[0] = 0;
                  v76 = 0;
                  goto LABEL_33;
                }
              }

              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v68);
              if ((v69 & 1) == 0)
              {
                v24 = *a3;
                v47 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v48 = *(a3 + 3);
                if (!v48 || !v47 || ((*(*v48 + 16))(v48, v24), (v69 & 1) == 0))
                {
                  v31 = 0;
                  buf[0] = 0;
                  v76 = 0;
                  goto LABEL_29;
                }
              }

              v22 = *(a3 + 1);
              v23 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
              v24 = *a3;
              v25 = v23 - *a3;
              v26 = v22 >= v25;
              v27 = v22 - v25;
              if (!v26 || v27 <= 7)
              {
                break;
              }

              *(a3 + 2) = v23 + 1;
              if (!v23)
              {
                goto LABEL_69;
              }

              if (v63 & 1) != 0 && (v65 & 1) != 0 && (v67)
              {
                v6 = *v23;
                *buf = v14 | v13;
                buf[8] = v15;
                v28 = v62;
                v62 = 0;
                v29 = v64;
                v64 = 0;
                *&v72[2] = v28;
                v73 = v29;
                v30 = v66;
                v66 = 0;
                v74 = v30;
                v75[0] = v68;
                v75[1] = v6;
                v31 = 1;
                v76 = 1;
                goto LABEL_29;
              }

              __break(1u);
LABEL_56:
              v40 = *a3;
              v41 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v42 = *(a3 + 3);
              if (v42)
              {
                if (v41)
                {
                  (*(*v42 + 16))(v42, v40);
                  if (v63)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_82;
            }

            *a3 = 0;
            *(a3 + 1) = 0;
            v49 = *(a3 + 3);
            if (v49)
            {
              if (v22)
              {
                (*(*v49 + 16))(v49);
                v24 = *a3;
                v22 = *(a3 + 1);
LABEL_69:
                *a3 = 0;
                *(a3 + 1) = 0;
                v50 = *(a3 + 3);
                if (v50 && v22)
                {
                  (*(*v50 + 16))(v50);
                }

                buf[0] = 0;
                v76 = 0;
                if (v69)
                {
                  v51 = v68;
                  v68 = 0;
                  if (v51)
                  {
                    if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v51, v24);
                    }
                  }
                }

                v31 = 0;
LABEL_29:
                if (v67)
                {
                  v32 = v66;
                  v66 = 0;
                  if (v32)
                  {
                    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v24);
                    }
                  }
                }

LABEL_33:
                if (v65)
                {
                  v33 = v64;
                  v64 = 0;
                  if (v33)
                  {
                    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v33, v24);
                    }
                  }
                }

LABEL_37:
                if (v63)
                {
                  v34 = v62;
                  v62 = 0;
                  if (v34)
                  {
                    if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v34, v24);
                    }
                  }
                }

                if (v31)
                {
                  WebKit::StorageAreaMap::dispatchStorageEvent(this, buf, &v72[2], &v73, &v74, v75, v6);
                  if (v76)
                  {
                    v36 = v75[0];
                    v75[0] = 0;
                    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v36, v35);
                    }

                    v37 = v74;
                    v74 = 0;
                    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v37, v35);
                    }

                    v38 = v73;
                    v73 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v35);
                    }

                    v39 = *&v72[2];
                    *&v72[2] = 0;
                    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v39, v35);
                    }
                  }

                  return WTF::RefCounted<WebKit::StorageAreaMap>::deref(v5);
                }

                goto LABEL_82;
              }
            }

            else
            {
              v22 = 0;
            }

            v24 = 0;
            goto LABEL_69;
          }

          v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v12)
          {
            v13 = v11 & 0xFFFFFFFFFFFFFF00;
            v14 = v11;
            v15 = 1;
            goto LABEL_17;
          }

          goto LABEL_81;
        }

        goto LABEL_80;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v53 = *(a3 + 3);
    if (v53)
    {
      if (v7)
      {
        (*(*v53 + 16))(v53);
        v9 = *a3;
        v7 = *(a3 + 1);
        goto LABEL_80;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_80:
    *a3 = 0;
    *(a3 + 1) = 0;
    v54 = *(a3 + 3);
    if (v54 && v7)
    {
      (*(*v54 + 16))(v54, v9);
    }

LABEL_81:
    v55 = *a3;
    v56 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v57 = *(a3 + 3);
    if (v57 && v56)
    {
      (*(*v57 + 16))(v57, v55);
    }

LABEL_82:
    v58 = *a3;
    v59 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v60 = *(a3 + 3);
    if (v60 && v59)
    {
      (*(*v60 + 16))(v60, v58);
    }

    return WTF::RefCounted<WebKit::StorageAreaMap>::deref(v5);
  }

  v16 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
  if (v17)
  {
    WebKit::StorageAreaMap::clearCache(this, v16);
  }

  return WTF::RefCounted<WebKit::StorageAreaMap>::deref(v5);
}

void WebKit::SourceBufferPrivateRemote::MessageReceiver::~MessageReceiver(WebKit::SourceBufferPrivateRemote::MessageReceiver *this, void *a2)
{
  *this = &unk_1F10F2E38;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }
}

{
  *this = &unk_1F10F2E38;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  WTF::fastFree(this, a2);
}

_DWORD *WebKit::SpeechRecognitionServer::deref(_DWORD *this)
{
  if (this[6] == 1)
  {
    return (*(*this + 24))();
  }

  --this[6];
  return this;
}

void WebKit::SpeechRecognitionServer::~SpeechRecognitionServer(WebKit::SpeechRecognitionServer *this)
{
  WebKit::SpeechRecognitionServer::~SpeechRecognitionServer(this);

  bmalloc::api::tzoneFree(v1, v2);
}

{
  *this = &unk_1F10F2E80;
  *(this + 2) = &unk_1F10F2ED8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<WebCore::SpeechRecognizer>::reset[abi:sn200100](this + 8, 0);
  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(v6 - 4);
    if (v7)
    {
      v8 = (v6 + 8);
      do
      {
        if (*(v8 - 1) != -1)
        {
          std::unique_ptr<WebCore::SpeechRecognitionRequest>::reset[abi:sn200100](v8, 0);
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    WTF::fastFree((v6 - 16), v4);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v4);
  }

  if (*(this + 6) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void non-virtual thunk toWebKit::SpeechRecognitionServer::~SpeechRecognitionServer(WebKit::SpeechRecognitionServer *this)
{
  WebKit::SpeechRecognitionServer::~SpeechRecognitionServer((this - 16));
}

{
  WebKit::SpeechRecognitionServer::~SpeechRecognitionServer((this - 16));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t *std::unique_ptr<WebCore::SpeechRecognizer>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v4)
    {
      std::default_delete<WebCore::SpeechRecognitionCaptureSource>::operator()[abi:sn200100](v2 + 24, v4);
    }

    std::unique_ptr<WebCore::SpeechRecognitionRequest>::reset[abi:sn200100]((v2 + 16), 0);
    v6 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v5);

    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void std::default_delete<WebCore::SpeechRecognitionCaptureSource>::operator()[abi:sn200100](int a1, bmalloc::api *this)
{
  if (this)
  {
    v3 = *this;
    *this = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    bmalloc::api::tzoneFree(this, this);
  }
}

WTF::StringImpl **std::unique_ptr<WebCore::SpeechRecognitionRequest>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (!*(v2 + 96))
    {
      v3 = *(v2 + 10);
      *(v2 + 10) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *(v2 + 9);
      *(v2 + 9) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    *(v2 + 96) = -1;
    if (!*(v2 + 64))
    {
      v5 = *(v2 + 6);
      *(v2 + 6) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    *(v2 + 64) = -1;
    v7 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, a2);

    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::ServiceWorkerFetchTask::~ServiceWorkerFetchTask((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, v11);
  if (v13 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v13)))
  {
    std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(a2, v11);
    v5 = v13;
    a2[264] = 1;
    if (v5)
    {
      v6 = cf;
      cf = 0;
      if (v6)
      {
        CFRelease(v6);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v11, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[264] = 0;
  }
}

uint64_t std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a2 + 40) = 0;
  v6[5] = v4;
  v6[6] = v5;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6[7] = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  v6[8] = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  v6[9] = v9;
  v6[11] = 0;
  v6[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v6 + 10), (a2 + 80));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  v10 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v10;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v19 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(a1 + 120) = v19;
    *(a1 + 128) = 1;
  }

  v11 = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 136) = v11;
  v12 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 144) = v12;
  v13 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v13;
  v14 = *(a2 + 184);
  v15 = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 216) = v16;
  *(a1 + 200) = v15;
  *(a1 + 184) = v14;
  v17 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v17;
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::decode(a1, v11);
  if (v17 & 1) != 0 || (result = IPC::Decoder::markInvalid(a1), (v17))
  {
    v5 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v11[4];
    v6 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v6;
    v7 = v13;
    *(a2 + 80) = v12;
    *(a2 + 88) = v7;
    v8 = v14;
    v9 = v16;
    *(a2 + 112) = v15;
    *(a2 + 120) = v9;
    v10 = 1;
    *(a2 + 96) = v8;
  }

  else
  {
    v10 = 0;
    *a2 = 0;
  }

  *(a2 + 128) = v10;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::InitializationSegmentInfo>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::InitializationSegmentInfo,void>::decode(a2, &v18);
  if (v23 & 1) != 0 || ((v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v23)))
  {
    *a1 = v18;
    v5 = v19;
    v19 = 0;
    *(a1 + 16) = v5;
    v6 = *(&v20 + 1);
    *(a1 + 24) = v20;
    *(a1 + 32) = v6;
    v7 = v21;
    v20 = 0u;
    v21 = 0u;
    *(a1 + 40) = v7;
    v8 = v22;
    v22 = 0;
    *(a1 + 56) = v8;
    *(a1 + 64) = 1;
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21 + 8, v4);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20 + 8, v9);
    return WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v16)
    {
      v17 = *(*result + 16);

      return v17();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver50SourceBufferPrivateDidReceiveInitializationSegmentENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2D98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver50SourceBufferPrivateDidReceiveInitializationSegmentENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2D98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver50SourceBufferPrivateDidReceiveInitializationSegmentENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3545;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v5)
      {
        (*(*v27 + 16))(v27);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_40;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v32 = 0uLL;
    if (v12 >= 0x10000)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::PlatformTimeRanges>(a1, &v28);
        v21 = v31;
        if (v31 == 1)
        {
          if (v32.n128_u32[3] == v32.n128_u32[2])
          {
            WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTimeRanges>(&v32, &v28);
          }

          else
          {
            v22 = v32.n128_u64[0] + 16 * v32.n128_u32[3];
            *v22 = 0;
            *(v22 + 8) = 0;
            v23 = v28;
            v28 = 0;
            *v22 = v23;
            *(v22 + 8) = v29;
            LODWORD(v23) = v30;
            v30 = 0;
            *(v22 + 12) = v23;
            ++v32.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v31 == 1)
        {
          v24 = v28;
          if (v28)
          {
            v28 = 0;
            v29 = 0;
            WTF::fastFree(v24, v7);
          }
        }

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v32, v32.n128_u32[3]);
          *a2 = v32.n128_u64[0];
          v25 = v32.n128_u64[1];
          v32 = 0uLL;
          *(a2 + 1) = v25;
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v19 = 0;
        v20 = 0;
LABEL_22:
        a3.n128_u64[0] = 0;
        v32 = a3;
        *a2 = v19;
        *(a2 + 1) = v20;
LABEL_23:
        a2[16] = 1;
        return WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v7);
      }

      v32.n128_u32[2] = v12;
      v32.n128_u64[0] = WTF::fastMalloc((16 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::PlatformTimeRanges>(a1, &v28);
        v15 = v31;
        if (v31 == 1)
        {
          if (v32.n128_u32[3] == v32.n128_u32[2])
          {
            WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTimeRanges>(&v32, &v28);
          }

          else
          {
            v16 = v32.n128_u64[0] + 16 * v32.n128_u32[3];
            *v16 = 0;
            *(v16 + 8) = 0;
            v17 = v28;
            v28 = 0;
            *v16 = v17;
            *(v16 + 8) = v29;
            LODWORD(v17) = v30;
            v30 = 0;
            *(v16 + 12) = v17;
            ++v32.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v31 == 1)
        {
          v18 = v28;
          if (v28)
          {
            v28 = 0;
            v29 = 0;
            WTF::fastFree(v18, v7);
          }
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v20 = v32.n128_u64[1];
          v19 = v32.n128_u64[0];
          goto LABEL_22;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v7);
  }

LABEL_40:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTimeRanges>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA2F818);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::PlatformTimeRanges>::move(v4, v5, v6);
    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

WTF *WTF::VectorMover<false,WebCore::PlatformTimeRanges>::move(WTF *result, WTF *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      result = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        result = WTF::fastFree(result, v6);
      }

      a3 += 2;
      v5 = (v5 + 16);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      result = WTF::fastMalloc((16 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebCore::PlatformTimeRanges>::move(v4, (v4 + 16 * v5), result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, unint64_t a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = *result + 16 * a2;
      v6 = 16 * v2 - 16 * a2;
      do
      {
        result = *v5;
        if (*v5)
        {
          *v5 = 0;
          *(v5 + 8) = 0;
          result = WTF::fastFree(result, a2);
        }

        v5 += 16;
        v6 -= 16;
      }

      while (v6);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 16 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        WTF::fastFree(v6, a2);
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateBufferedChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2DC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateBufferedChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2DC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateBufferedChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3543;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateDurationChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2DE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateDurationChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2DE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver34SourceBufferPrivateDurationChangedENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3546;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver28SourceBufferPrivateDidAttachENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2E10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver28SourceBufferPrivateDidAttachENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2E10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages40SourceBufferPrivateRemoteMessageReceiver28SourceBufferPrivateDidAttachENS2_10ConnectionEN6WebKit25SourceBufferPrivateRemote15MessageReceiverESA_FvONS8_25InitializationSegmentInfoEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3544;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v5, a2);
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

_DWORD *WTF::RefCounted<WebKit::StorageAreaMap>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::StorageAreaMap::~StorageAreaMap((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebMemorySampler::processName(uint64_t a1@<X8>)
{
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (v3 || (v3 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")]) != 0)
  {
    v6 = v3;
    v5 = v3;
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  MEMORY[0x19EB02040](a1);
  if (v7)
  {
  }
}

void sub_19DA2FEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebMemorySampler::sampleWebKit@<X0>(WebKit::WebMemorySampler *this@<X0>, uint64_t a2@<X8>)
{
  v102 = 0;
  v103 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v3 = WTF::fastMallocStatistics(&v99, this);
  v97 = v100;
  v98 = v100 - v101;
  v102 = v100;
  v103 = v100 - v101;
  v4 = MEMORY[0x1E69E25C0];
  if (!*MEMORY[0x1E69E25C0])
  {
    WebCore::commonVMSlow(v3);
  }

  MEMORY[0x19EB002D0](v96);
  v5 = *v4;
  if (!*v4)
  {
    v5 = WebCore::commonVMSlow(0);
  }

  v95 = JSC::Heap::size((v5 + 192));
  v6 = *v4;
  if (!*v4)
  {
    v6 = WebCore::commonVMSlow(0);
  }

  v94 = JSC::Heap::capacity((v6 + 192));
  v103 += v95;
  v102 += v94;
  v92 = JSC::globalMemoryStatistics(v94);
  v93 = v7;
  v103 += v92 + v7;
  v102 += v92 + v7;
  *task_info_outCnt = 0;
  stats.blocks_in_use = 0;
  memset(&stats.size_in_use, 0, 24);
  v86 = *&stats.blocks_in_use;
  v87 = 0u;
  v88 = *&stats.blocks_in_use;
  v89 = 0u;
  v91 = 0u;
  v90 = *&stats.blocks_in_use;
  malloc_get_all_zones();
  v84 = *(&v88 + 1);
  v85 = *(&v86 + 1);
  v82 = 0;
  v83 = *(&v90 + 1);
  v80 = 0;
  v81 = 0;
  v103 += *(&v88 + 1) + *(&v86 + 1) + *(&v90 + 1);
  task_info_outCnt[0] = 10;
  v8 = task_info(*MEMORY[0x1E69E9A60], 0x12u, &stats, task_info_outCnt);
  v9 = *(&stats.size_in_use + 4);
  v79 = *(&stats.size_in_use + 4);
  WTF::WallTime::now(v8);
  v11 = v10;
  *&stats.blocks_in_use = "Timestamp";
  stats.size_in_use = 10;
  v12 = *(a2 + 12);
  if (v12 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v13 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v13 + 8 * v12) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v14 = *(a2 + 28);
  if (v14 == *(a2 + 24))
  {
    if (v14 + (v14 >> 1) <= v14 + 1)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = v14 + (v14 >> 1);
    }

    if (v15 <= 0x10)
    {
      v16 = 16;
    }

    else
    {
      v16 = v15;
    }

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a2 + 16, v16);
    v14 = *(a2 + 28);
    v17 = (*(a2 + 16) + 8 * v14);
  }

  else
  {
    v17 = (*(a2 + 16) + 8 * v14);
  }

  *v17 = v11;
  *(a2 + 28) = v14 + 1;
  *&stats.blocks_in_use = "Total Bytes of Memory In Use";
  stats.size_in_use = 29;
  v18 = *(a2 + 12);
  if (v18 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v19 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v19 + 8 * v18) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v20 = *(a2 + 28);
  if (v20 == *(a2 + 24))
  {
    v21 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v20 + 1, &v103);
    v20 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v20) = *v21;
  }

  else
  {
    *(*(a2 + 16) + 8 * v20) = v103;
  }

  *(a2 + 28) = v20 + 1;
  *&stats.blocks_in_use = "Fast Malloc Zone Bytes";
  stats.size_in_use = 23;
  v22 = *(a2 + 12);
  if (v22 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v23 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v23 + 8 * v22) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v24 = *(a2 + 28);
  if (v24 == *(a2 + 24))
  {
    v25 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v24 + 1, &v98);
    v24 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v24) = *v25;
  }

  else
  {
    *(*(a2 + 16) + 8 * v24) = v98;
  }

  *(a2 + 28) = v24 + 1;
  *&stats.blocks_in_use = "Default Malloc Zone Bytes";
  stats.size_in_use = 26;
  v26 = *(a2 + 12);
  if (v26 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v27 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v27 + 8 * v26) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v28 = *(a2 + 28);
  if (v28 == *(a2 + 24))
  {
    v29 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v28 + 1, &v85);
    v28 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v28) = *v29;
  }

  else
  {
    *(*(a2 + 16) + 8 * v28) = v85;
  }

  *(a2 + 28) = v28 + 1;
  *&stats.blocks_in_use = "Dispatch Continuation Malloc Zone Bytes";
  stats.size_in_use = 40;
  v30 = *(a2 + 12);
  if (v30 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v31 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v31 + 8 * v30) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v32 = *(a2 + 28);
  if (v32 == *(a2 + 24))
  {
    v33 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v32 + 1, &v84);
    v32 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v32) = *v33;
  }

  else
  {
    *(*(a2 + 16) + 8 * v32) = v84;
  }

  *(a2 + 28) = v32 + 1;
  *&stats.blocks_in_use = "Purgeable Malloc Zone Bytes";
  stats.size_in_use = 28;
  v34 = *(a2 + 12);
  if (v34 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v35 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v35 + 8 * v34) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v36 = *(a2 + 28);
  if (v36 == *(a2 + 24))
  {
    v37 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v36 + 1, &v83);
    v36 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v36) = *v37;
  }

  else
  {
    *(*(a2 + 16) + 8 * v36) = v83;
  }

  *(a2 + 28) = v36 + 1;
  *&stats.blocks_in_use = "JavaScript Heap Bytes";
  stats.size_in_use = 22;
  v38 = *(a2 + 12);
  if (v38 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v39 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v39 + 8 * v38) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v40 = *(a2 + 28);
  if (v40 == *(a2 + 24))
  {
    v41 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v40 + 1, &v95);
    v40 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v40) = *v41;
  }

  else
  {
    *(*(a2 + 16) + 8 * v40) = v95;
  }

  *(a2 + 28) = v40 + 1;
  *&stats.blocks_in_use = "Total Bytes of Committed Memory";
  stats.size_in_use = 32;
  v42 = *(a2 + 12);
  if (v42 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v43 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v43 + 8 * v42) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v44 = *(a2 + 28);
  if (v44 == *(a2 + 24))
  {
    v45 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v44 + 1, &v102);
    v44 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v44) = *v45;
  }

  else
  {
    *(*(a2 + 16) + 8 * v44) = v102;
  }

  *(a2 + 28) = v44 + 1;
  *&stats.blocks_in_use = "Fast Malloc Zone Bytes";
  stats.size_in_use = 23;
  v46 = *(a2 + 12);
  if (v46 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v47 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v47 + 8 * v46) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v48 = *(a2 + 28);
  if (v48 == *(a2 + 24))
  {
    v49 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v48 + 1, &v97);
    v48 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v48) = *v49;
  }

  else
  {
    *(*(a2 + 16) + 8 * v48) = v97;
  }

  *(a2 + 28) = v48 + 1;
  *&stats.blocks_in_use = "Default Malloc Zone Bytes";
  stats.size_in_use = 26;
  v50 = *(a2 + 12);
  if (v50 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v51 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v51 + 8 * v50) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v52 = *(a2 + 28);
  if (v52 == *(a2 + 24))
  {
    v53 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v52 + 1, &v82);
    v52 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v52) = *v53;
  }

  else
  {
    *(*(a2 + 16) + 8 * v52) = v82;
  }

  *(a2 + 28) = v52 + 1;
  *&stats.blocks_in_use = "Dispatch Continuation Malloc Zone Bytes";
  stats.size_in_use = 40;
  v54 = *(a2 + 12);
  if (v54 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v55 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v55 + 8 * v54) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v56 = *(a2 + 28);
  if (v56 == *(a2 + 24))
  {
    v57 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v56 + 1, &v81);
    v56 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v56) = *v57;
  }

  else
  {
    *(*(a2 + 16) + 8 * v56) = v81;
  }

  *(a2 + 28) = v56 + 1;
  *&stats.blocks_in_use = "Purgeable Malloc Zone Bytes";
  stats.size_in_use = 28;
  v58 = *(a2 + 12);
  if (v58 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v59 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v59 + 8 * v58) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v60 = *(a2 + 28);
  if (v60 == *(a2 + 24))
  {
    v61 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v60 + 1, &v80);
    v60 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v60) = *v61;
  }

  else
  {
    *(*(a2 + 16) + 8 * v60) = v80;
  }

  *(a2 + 28) = v60 + 1;
  *&stats.blocks_in_use = "JavaScript Heap Bytes";
  stats.size_in_use = 22;
  v62 = *(a2 + 12);
  if (v62 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v63 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v63 + 8 * v62) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v64 = *(a2 + 28);
  if (v64 == *(a2 + 24))
  {
    v65 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v64 + 1, &v94);
    v64 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v64) = *v65;
  }

  else
  {
    *(*(a2 + 16) + 8 * v64) = v94;
  }

  *(a2 + 28) = v64 + 1;
  *&stats.blocks_in_use = "JavaScript Stack Bytes";
  stats.size_in_use = 23;
  v66 = *(a2 + 12);
  if (v66 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v67 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v67 + 8 * v66) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v68 = *(a2 + 28);
  if (v68 == *(a2 + 24))
  {
    v69 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v68 + 1, &v92);
    v68 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v68) = *v69;
  }

  else
  {
    *(*(a2 + 16) + 8 * v68) = v92;
  }

  *(a2 + 28) = v68 + 1;
  *&stats.blocks_in_use = "JavaScript JIT Bytes";
  stats.size_in_use = 21;
  v70 = *(a2 + 12);
  if (v70 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v71 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v71 + 8 * v70) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v72 = &v93;
  v73 = *(a2 + 28);
  if (v73 == *(a2 + 24))
  {
    v72 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v73 + 1, &v93);
    v73 = *(a2 + 28);
  }

  *(*(a2 + 16) + 8 * v73) = *v72;
  *(a2 + 28) = v73 + 1;
  *&stats.blocks_in_use = "Resident Size";
  stats.size_in_use = 14;
  v74 = *(a2 + 12);
  if (v74 == *(a2 + 8))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(a2, &stats);
  }

  else
  {
    v75 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(v75 + 8 * v74) = *task_info_outCnt;
    ++*(a2 + 12);
  }

  v76 = *(a2 + 28);
  if (v76 == *(a2 + 24))
  {
    v77 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 16, v76 + 1, &v79);
    v76 = *(a2 + 28);
    *(*(a2 + 16) + 8 * v76) = *v77;
  }

  else
  {
    *(*(a2 + 16) + 8 * v76) = v9;
  }

  *(a2 + 28) = v76 + 1;
  return MEMORY[0x19EB002E0](v96);
}

void sub_19DA30BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  MEMORY[0x19EB002E0](&a33);
  v36 = *(v33 + 16);
  if (v36)
  {
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    WTF::fastFree(v36, v35);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v35);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  WTF::String::String((*a1 + 8 * *(a1 + 12)), *a2, a2[1]);
  ++*(a1 + 12);
  return 1;
}

WTF::StringImpl *WebKit::UserMediaCaptureManager::didReceiveMessage(WebKit::UserMediaCaptureManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!*(this + 4))
  {
    __break(0xC471u);
    goto LABEL_107;
  }

  v5 = *(a3 + 25);
  if (v5 <= 0x6EA)
  {
    if (v5 == 1768)
    {
      v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v25 & 1) == 0 || (v26 = v24, v27 = IPC::Decoder::decode<WebCore::MediaConstraintType>(a3), (v27 & 0x100) == 0) || (v28 = v27, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v75), (BYTE8(v75[0]) & 1) == 0) && ((v56 = *a3, v57 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v58 = *(a3 + 3)) == 0) || !v57 || ((*(*v58 + 16))(v58, v56), (BYTE8(v75[0]) & 1) == 0)))
      {
LABEL_52:
        v39 = *a3;
        v40 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v40)
        {
          result = (*(*result + 16))(result, v39);
        }

        goto LABEL_87;
      }

      *buf = v26;
      buf[8] = v28;
      *&buf[16] = *&v75[0];
      buf[24] = 1;
      result = WebKit::UserMediaCaptureManager::applyConstraintsFailed(this, v26, v28, &buf[16]);
      if ((buf[24] & 1) == 0)
      {
        goto LABEL_87;
      }

      result = *&buf[16];
      *&buf[16] = 0;
      if (!result)
      {
        goto LABEL_87;
      }

      goto LABEL_85;
    }

    if (v5 != 1769)
    {
      if (v5 == 1770)
      {
        v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v7 & 1) == 0)
        {
          goto LABEL_52;
        }

        v8 = v6;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v66);
        if ((v67 & 1) == 0)
        {
          v53 = *a3;
          v54 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v55 = *(a3 + 3);
          if (!v55)
          {
            goto LABEL_52;
          }

          if (!v54)
          {
            goto LABEL_52;
          }

          (*(*v55 + 16))(v55, v53);
          if ((v67 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        IPC::Decoder::decode<WebCore::RealtimeMediaSourceSettings>(v68, a3);
        if (v74 != 1)
        {
          v19 = 0;
          buf[0] = 0;
          v107 = 0;
          goto LABEL_69;
        }

        IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::decode(a3, v75);
        if ((v86 & 1) == 0)
        {
          v9 = *a3;
          v51 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v52 = *(a3 + 3);
          if (!v52 || !v51 || ((*(*v52 + 16))(v52, v9), (v86 & 1) == 0))
          {
            v19 = 0;
            buf[0] = 0;
            v107 = 0;
LABEL_22:
            if (v74)
            {
              v20 = v71;
              v71 = 0;
              if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v9);
              }

              v21 = v70[1];
              v70[1] = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v9);
              }

              v22 = v70[0];
              v70[0] = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v9);
              }
            }

LABEL_69:
            if (v67)
            {
              v43 = v66;
              v66 = 0;
              if (v43)
              {
                if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v9);
                }
              }
            }

            if ((v19 & 1) == 0)
            {
              goto LABEL_52;
            }

            result = WebKit::UserMediaCaptureManager::sourceConfigurationChanged(this, *buf, &buf[8], &buf[16], v94);
            if (v107)
            {
              WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v94, v44);
              v45 = v91;
              v91 = 0;
              if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v45, v29);
              }

              v46 = *(&v90 + 1);
              *(&v90 + 1) = 0;
              if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v46, v29);
              }

              v47 = v90;
              *&v90 = 0;
              if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v47, v29);
              }

              result = *&buf[8];
              *&buf[8] = 0;
              if (result)
              {
                goto LABEL_85;
              }
            }

            goto LABEL_87;
          }
        }

        if (v67 & 1) != 0 && (v74)
        {
          v10 = v66;
          v66 = 0;
          *buf = v8;
          *&buf[8] = v10;
          *&buf[16] = v68[0];
          v88 = v68[1];
          LOBYTE(v89) = v69;
          v11 = *v70;
          *v70 = 0u;
          v90 = v11;
          v12 = v71;
          v71 = 0;
          v91 = v12;
          *&v93[14] = *&v73[14];
          v92 = v72;
          *v93 = *v73;
          v94[2] = v75[2];
          v94[1] = v75[1];
          v94[0] = v75[0];
          v13 = __n[0];
          v95 = 0u;
          HIDWORD(v95) = __n[0];
          if (__n[0])
          {
            v14 = WTF::fastMalloc(__n[0]);
            DWORD2(v95) = v13;
            *&v95 = v14;
            memcpy(v14, __src, __n[0]);
          }

          v96 = *&__n[1];
          v97 = v78;
          v98 = v79;
          v15 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
          }

          v99 = v15;
          v16 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
          }

          v101 = v82;
          v17 = v84[0];
          v103 = 0;
          v100 = v16;
          v102 = 0;
          v104 = v84[0];
          if (v84[0])
          {
            v18 = WTF::fastMalloc(v84[0]);
            v103 = v17;
            v102 = v18;
            memcpy(v18, v83, v84[0]);
          }

          *&v106[14] = *&v85[14];
          v105 = *&v84[1];
          *v106 = *v85;
          v19 = 1;
          v107 = 1;
          if (v86)
          {
            WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v75, v9);
          }

          goto LABEL_22;
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

LABEL_51:
      v38 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v48 = 4223;
        }

        else
        {
          v48 = v5;
        }

        v49 = (&IPC::Detail::messageDescriptions)[3 * v48];
        v50 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v49;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_52;
    }

    result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RealtimeMediaSourceSettings>>(buf, a3);
    if (v93[16] != 1)
    {
      goto LABEL_87;
    }

    result = WebKit::UserMediaCaptureManager::applyConstraintsSucceeded(this, *buf, &buf[8]);
    goto LABEL_59;
  }

  if (v5 == 1771)
  {
    v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v31 & 1) == 0)
    {
      goto LABEL_52;
    }

    v32 = *(a3 + 1);
    v33 = *(a3 + 2);
    v34 = *a3;
    if (v32 <= &v33[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v59 = *(a3 + 3);
      if (v59)
      {
        if (v32)
        {
          (*(*v59 + 16))(v59);
          v32 = *(a3 + 1);
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v35 = v33 + 1;
      *(a3 + 2) = v33 + 1;
      if (v33)
      {
        v36 = *v33;
        if (v36 >= 2)
        {
LABEL_119:
          *a3 = 0;
          *(a3 + 1) = 0;
          v65 = *(a3 + 3);
          if (v65 && v32)
          {
            (*(*v65 + 16))(v65, v34);
          }

          goto LABEL_52;
        }

        if (v32 <= &v35[-v34])
        {
          v61 = 0;
          v62 = 0;
          *a3 = 0;
          *(a3 + 1) = 0;
          v63 = *(a3 + 3);
          if (v63)
          {
            (*(*v63 + 16))(v63);
            v62 = *a3;
            v61 = *(a3 + 1);
          }
        }

        else
        {
          *(a3 + 2) = v33 + 2;
          if (v33 != -1)
          {
            v37 = *v35;
            if (v37 < 2)
            {
              result = WebKit::UserMediaCaptureManager::sourceMutedChanged(this, v30, v36 & 1, v37 & 1);
              goto LABEL_87;
            }

            goto LABEL_119;
          }

          v61 = v32;
          v62 = v34;
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v64 = *(a3 + 3);
        if (v64 && v61)
        {
          (*(*v64 + 16))(v64, v62, v61);
          goto LABEL_125;
        }

        goto LABEL_117;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v60 = *(a3 + 3);
    if (v60)
    {
      if (v32)
      {
        (*(*v60 + 16))(v60);
LABEL_125:
        v34 = *a3;
        v32 = *(a3 + 1);
        goto LABEL_119;
      }

      goto LABEL_118;
    }

LABEL_117:
    v32 = 0;
LABEL_118:
    v34 = 0;
    goto LABEL_119;
  }

  if (v5 != 1772)
  {
    if (v5 == 1773)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::UserMediaCaptureManager::sourceStopped(this, *buf, buf[8]);
      }

      goto LABEL_87;
    }

    goto LABEL_51;
  }

  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RealtimeMediaSourceSettings>>(buf, a3);
  if (v93[16] != 1)
  {
    goto LABEL_87;
  }

  result = WebKit::UserMediaCaptureManager::sourceSettingsChanged(this, *buf, &buf[8]);
LABEL_59:
  if (v93[16])
  {
    v41 = *(&v90 + 1);
    *(&v90 + 1) = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v29);
    }

    v42 = v90;
    *&v90 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v29);
    }

    result = v89;
    v89 = 0;
    if (result)
    {
LABEL_85:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v29);
      }
    }
  }

LABEL_87:
  if (!*(this + 4))
  {
LABEL_108:
    __break(0xC471u);
    JUMPOUT(0x19DA3145CLL);
  }

  return result;
}

void WebKit::UserMediaCaptureManagerProxy::didReceiveMessage(WebKit::UserMediaCaptureManagerProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v3 = a3;
  v131 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 > 0x6E1)
  {
    if (*(a3 + 25) > 0x6E4u)
    {
      if (v6 == 1765)
      {
        v49 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v50)
        {
          v51 = v49;
          v52 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
          if (v53)
          {
            WebKit::UserMediaCaptureManagerProxy::startProducingData(this, v51, v52);
            goto LABEL_71;
          }
        }

        goto LABEL_70;
      }

      if (v6 == 1766)
      {
        v68 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebKit::UserMediaCaptureManagerProxy::stopProducingData(this, v68);
        }

        goto LABEL_71;
      }

      if (v6 != 1767)
      {
        goto LABEL_69;
      }

      v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v33 & 1) == 0 || (v34 = v32, IPC::ArgumentCoder<WebCore::PhotoSettings,void>::decode(v3, v114), (v115 & 1) == 0) && ((v84 = *v3, v85 = *(v3 + 1), *v3 = 0, *(v3 + 1) = 0, (v86 = *(v3 + 3)) == 0) || !v85 || ((*(*v86 + 16))(v86, v84), (v115 & 1) == 0)))
      {
LABEL_70:
        v24 = *v3;
        v25 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v70 = *(v3 + 3);
        if (v70 && v25)
        {
          (*(*v70 + 16))(v70, v24);
        }

        goto LABEL_71;
      }

      *buf = v34;
      *&buf[8] = v114[0];
      v120 = v114[1];
      *v121 = v114[2];
      v121[16] = 1;
      v35 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if (v24)
      {
        v36 = v35;
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
            goto LABEL_80;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_80:
        v74 = WTF::fastMalloc(0x18);
        *v74 = &unk_1F10F2F50;
        v74[1] = v36;
        v74[2] = a2;
        *&v114[0] = v74;
        WebKit::UserMediaCaptureManagerProxy::takePhoto(this, v34, &buf[8], v114);
        v75 = *&v114[0];
        *&v114[0] = 0;
        if (v75)
        {
          (*(*v75 + 8))(v75);
        }
      }

      goto LABEL_71;
    }

    switch(v6)
    {
      case 0x6E2u:
        v47 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebKit::UserMediaCaptureManagerProxy::removeSource(this, v47);
        }

        goto LABEL_71;
      case 0x6E3u:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::UserMediaCaptureManagerProxy::setIsInBackground(this, *buf, buf[8]);
        }

        goto LABEL_71;
      case 0x6E4u:
        v23 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebKit::UserMediaCaptureManagerProxy::setShouldApplyRotation(this, v23);
        }

        goto LABEL_71;
    }

    goto LABEL_69;
  }

  if (*(a3 + 25) <= 0x6DEu)
  {
    if (v6 != 1756)
    {
      if (v6 == 1757)
      {
        v54 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v55)
        {
          v56 = v54;
          v57 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
          if (v58)
          {
            v59 = v57;
            v60 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
            if (v61)
            {
              WebKit::UserMediaCaptureManagerProxy::clone(this, v56, v59, v60);
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v6 == 1758)
      {
        v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v8 & 1) == 0)
        {
          buf[0] = 0;
          v130 = 0;
          goto LABEL_96;
        }

        v9 = v7;
        IPC::ArgumentCoder<WebCore::CaptureDevice,void>::decode(v3, &v107);
        if ((v111 & 1) == 0)
        {
          v81 = *v3;
          v82 = *(v3 + 1);
          *v3 = 0;
          *(v3 + 1) = 0;
          v83 = *(v3 + 3);
          if (!v83 || !v82 || ((*(*v83 + 16))(v83, v81), (v111 & 1) == 0))
          {
            buf[0] = 0;
            v130 = 0;
            while (1)
            {
              if ((v130 & 1) == 0)
              {
LABEL_96:
                v24 = *v3;
                v25 = *(v3 + 1);
                *v3 = 0;
                *(v3 + 1) = 0;
                v80 = *(v3 + 3);
                if (!v80)
                {
                  goto LABEL_148;
                }

                if (!v25)
                {
                  goto LABEL_148;
                }

                (*(*v80 + 16))(v80, v24);
                if ((v130 & 1) == 0)
                {
                  goto LABEL_148;
                }
              }

              v97 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
              if ((v24 & 1) == 0)
              {
                goto LABEL_148;
              }

              v3 = v97;
              while (1)
              {
                v98 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v99 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v99, v98 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v99 == v98)
                {
                  goto LABEL_145;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_145:
              v14 = WTF::fastMalloc(0x18);
              *v14 = &unk_1F10F2F28;
              v14[1] = v3;
              v14[2] = a2;
              *&v114[0] = v14;
              if (v130)
              {
                break;
              }

LABEL_164:
              __break(1u);
LABEL_165:
              if (v11)
              {
                (*(*v14 + 16))(v14, v10);
              }

LABEL_119:
              v22 = 0;
              buf[0] = 0;
LABEL_120:
              v130 = v22;
              if (v118)
              {
                WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v10);
                WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v114, v91);
              }

LABEL_122:
              v92 = v112[1];
              if (v112[1] && atomic_fetch_add_explicit(v112[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v92, v10);
              }

              v93 = v112[0];
              if (v112[0] && atomic_fetch_add_explicit(v112[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v93, v10);
              }

LABEL_128:
              if (v111)
              {
                v94 = v109[1];
                v109[1] = 0;
                if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v94, v10);
                }

                v95 = v109[0];
                v109[0] = 0;
                if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v95, v10);
                }

                v96 = v107;
                v107 = 0;
                if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v96, v10);
                }
              }
            }

            WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(this, *buf, &buf[8], &v121[8], v122, v128, v129, v114);
            v100 = *&v114[0];
            *&v114[0] = 0;
            if (v100)
            {
              (*(*v100 + 8))(v100);
            }

LABEL_148:
            if (v130 == 1)
            {
              WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v126, v24);
              WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v122, v101);
              v102 = *&v121[16];
              *&v121[16] = 0;
              if (v102 && atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v102, v24);
              }

              v103 = *&v121[8];
              *&v121[8] = 0;
              if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v103, v24);
              }

              v104 = *(&v120 + 1);
              *(&v120 + 1) = 0;
              if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v104, v24);
              }

              v105 = v120;
              *&v120 = 0;
              if (v105 && atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v105, v24);
              }

              v106 = *&buf[8];
              *&buf[8] = 0;
              if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v106, v24);
              }
            }

            goto LABEL_71;
          }
        }

        IPC::ArgumentCoder<WebCore::MediaDeviceHashSalts,void>::decode(v3, v112);
        if ((v113 & 1) == 0)
        {
          v10 = *v3;
          v87 = *(v3 + 1);
          *v3 = 0;
          *(v3 + 1) = 0;
          v88 = *(v3 + 3);
          if (v88 && v87)
          {
            (*(*v88 + 16))(v88, v10);
          }

          buf[0] = 0;
          v130 = 0;
          goto LABEL_128;
        }

        IPC::Decoder::decode<WebCore::MediaConstraints>(v3, v114);
        if (v118 != 1)
        {
          buf[0] = 0;
          v130 = 0;
          goto LABEL_122;
        }

        v11 = *(v3 + 1);
        v12 = *(v3 + 2);
        v10 = *v3;
        if (v11 <= &v12[-*v3])
        {
          *v3 = 0;
          *(v3 + 1) = 0;
          v89 = *(v3 + 3);
          if (v89)
          {
            if (v11)
            {
              (*(*v89 + 16))(v89);
              v11 = *(v3 + 1);
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          *(v3 + 2) = v12 + 1;
          if (v12)
          {
            v13 = *v12;
            if (v13 < 2)
            {
              v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
              if (v10)
              {
                if ((v111 & 1) == 0 || (v118 & 1) == 0)
                {
                  goto LABEL_164;
                }

                v15 = v14;
                v16 = v107;
                v107 = 0;
                *buf = v9;
                *&buf[8] = v16;
                buf[16] = v108;
                v17 = *v109;
                *v109 = 0u;
                v120 = v17;
                *v121 = v110;
                v18 = *v112;
                *v112 = 0u;
                *&v121[8] = v18;
                WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v122, v114);
                *&v19 = 0;
                v21 = *(&v116 + 1);
                v20 = v116;
                v116 = v19;
                v126 = __PAIR128__(v21, v20);
                v127 = v117;
                v128 = v13;
                v129 = v15;
                v22 = 1;
                goto LABEL_120;
              }

              goto LABEL_119;
            }

LABEL_118:
            *v3 = 0;
            *(v3 + 1) = 0;
            v14 = *(v3 + 3);
            if (v14)
            {
              goto LABEL_165;
            }

            goto LABEL_119;
          }
        }

        *v3 = 0;
        *(v3 + 1) = 0;
        v90 = *(v3 + 3);
        if (v90)
        {
          if (v11)
          {
            (*(*v90 + 16))(v90);
            v10 = *v3;
            v11 = *(v3 + 1);
            goto LABEL_118;
          }
        }

        else
        {
          v11 = 0;
        }

        v10 = 0;
        goto LABEL_118;
      }

      goto LABEL_69;
    }

    v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v40 & 1) != 0 && (v41 = v39, IPC::Decoder::decode<WebCore::MediaConstraints>(v3, v114), v118 == 1))
    {
      *buf = v41;
      WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(&buf[8], v114);
      *&v43 = 0;
      v44 = v116;
      v116 = v43;
      v123 = v44;
      v124 = v117;
      v125 = 1;
      if (v118 & 1) == 0 || (WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v42), WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v114, v45), (v125))
      {
LABEL_46:
        WebKit::UserMediaCaptureManagerProxy::applyConstraints(this, *buf, &buf[8]);
        if (v125)
        {
          WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v123, v24);
          WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(&buf[8], v46);
        }

        goto LABEL_71;
      }
    }

    else
    {
      buf[0] = 0;
      v125 = 0;
    }

    v24 = *v3;
    v25 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v79 = *(v3 + 3);
    if (!v79)
    {
      goto LABEL_71;
    }

    if (!v25)
    {
      goto LABEL_71;
    }

    (*(*v79 + 16))(v79, v24);
    if ((v125 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_46;
  }

  if (v6 == 1759)
  {
    v48 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v24)
    {
      WebKit::UserMediaCaptureManagerProxy::endProducingData(this, v48);
    }

    goto LABEL_71;
  }

  if (v6 == 1760)
  {
    v62 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v24)
    {
      v63 = v62;
      v64 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if (v24)
      {
        v65 = v64;
        while (1)
        {
          v66 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v67 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v67, v66 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v67 == v66)
          {
            goto LABEL_77;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_77:
        v73 = WTF::fastMalloc(0x18);
        *v73 = &unk_1F10F2F78;
        v73[1] = v65;
        v73[2] = a2;
        *buf = v73;
        WebKit::UserMediaCaptureManagerProxy::getPhotoCapabilities(this, v63, buf);
        v72 = *buf;
        *buf = 0;
        if (v72)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_71;
  }

  if (v6 != 1761)
  {
LABEL_69:
    v69 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v76 = 4223;
      }

      else
      {
        v76 = v6;
      }

      v77 = (&IPC::Detail::messageDescriptions)[3 * v76];
      v78 = *(v3 + 7);
      *buf = 136315394;
      *&buf[4] = v77;
      *&buf[12] = 2048;
      *&buf[14] = v78;
      _os_log_error_impl(&dword_19D52D000, v69, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_70;
  }

  v26 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
  if (v24)
  {
    v27 = v26;
    v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
    if (v24)
    {
      v29 = v28;
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
          goto LABEL_74;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_74:
      v71 = WTF::fastMalloc(0x18);
      *v71 = &unk_1F10F2FA0;
      v71[1] = v29;
      v71[2] = a2;
      *buf = v71;
      WebKit::UserMediaCaptureManagerProxy::getPhotoSettings(this, v27, buf);
      v72 = *buf;
      *buf = 0;
      if (v72)
      {
LABEL_75:
        (*(*v72 + 8))(v72);
      }
    }
  }

LABEL_71:
  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this, v24, v25);
  }

  else
  {
    --*(this + 4);
  }
}

BOOL WebKit::UserMediaCaptureManagerProxy::didReceiveSyncMessage(_DWORD *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  ++a1[4];
  v6 = *(a3 + 50);
  if (v6 == 4130)
  {
    v9 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v10)
    {
      v12 = v9;
      v13 = *a4;
      *a4 = 0;
      while (1)
      {
        v14 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v15 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_12:
      v18 = WTF::fastMalloc(0x18);
      *v18 = &unk_1F10F2FC8;
      v18[1] = v13;
      v18[2] = a2;
      *v24 = v18;
      WebKit::UserMediaCaptureManagerProxy::isPowerEfficient(a1, v12, v24);
      v19 = *v24;
      *v24 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }
  }

  else
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v21 = 4223;
      }

      else
      {
        v21 = v6;
      }

      v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
      v23 = *(a3 + 56);
      *v24 = 136315394;
      *&v24[4] = v22;
      v25 = 2048;
      v26 = v23;
      _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", v24, 0x16u);
    }

    v10 = *a3;
    v11 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v17 = *(a3 + 24);
    if (v17 && v11)
    {
      (*(*v17 + 16))(v17, v10);
    }
  }

  if (a1[4] == 1)
  {
    (*(*a1 + 24))(a1, v10, v11);
  }

  else
  {
    --a1[4];
  }

  return v6 == 4130;
}

void WebKit::VideoPresentationManager::didReceiveMessage(WebKit::VideoPresentationManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x702:
      v6 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::didCleanupFullscreen(this, v6);
      }

      goto LABEL_68;
    case 0x703:
      v35 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v36 & 1) == 0)
      {
        goto LABEL_54;
      }

      v37 = v35;
      v38 = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(a3);
      if ((v39 & 0x100000000) == 0)
      {
        goto LABEL_54;
      }

      WebKit::VideoPresentationManager::didEnterFullscreen(this, v37, v38, v39);
      goto LABEL_68;
    case 0x704:
      v15 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::didExitFullscreen(this, v15);
      }

      goto LABEL_68;
    case 0x705:
      v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_54;
      }

      v22 = v20;
      v23 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_96;
      }

      WebKit::VideoPresentationManager::ensureUpdatedVideoDimensions(this, v22, *&v23, *(&v23 + 1));
      goto LABEL_68;
    case 0x706:
      v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::failedToEnterFullscreen(this, v13);
      }

      goto LABEL_68;
    case 0x707:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::VideoPresentationManager::fullscreenMayReturnToInline(this, *buf, buf[8]);
      }

      goto LABEL_68;
    case 0x708:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::VideoPresentationManager::fullscreenModeChanged(this, *buf, *&buf[8]);
      }

      goto LABEL_68;
    case 0x709:
      v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v26 & 1) == 0)
      {
        goto LABEL_54;
      }

      v27 = *(a3 + 1);
      v28 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = *a3;
      v30 = v28 - *a3;
      v31 = v27 >= v30;
      v32 = v27 - v30;
      if (!v31 || v32 <= 3)
      {
        goto LABEL_91;
      }

      v34 = (v28 + 4);
      *(a3 + 2) = v28 + 4;
      if (!v28)
      {
        goto LABEL_97;
      }

      if (v27 <= &v34[-v29])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v66 = *(a3 + 3);
        if (v66)
        {
          if (v27)
          {
            (*(*v66 + 16))(v66);
            v27 = *(a3 + 1);
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v28 + 5;
        if (v28 != -4)
        {
          if (*v34 >= 2u)
          {
            goto LABEL_97;
          }

          WebKit::VideoPresentationManager::requestFullscreenMode(this, v25);
          goto LABEL_68;
        }
      }

LABEL_91:
      *a3 = 0;
      *(a3 + 1) = 0;
      v67 = *(a3 + 3);
      if (!v67)
      {
        v27 = 0;
        goto LABEL_97;
      }

      if (v27)
      {
        (*(*v67 + 16))(v67);
        goto LABEL_96;
      }

      goto LABEL_97;
    case 0x70A:
      v48 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v7 & 1) == 0)
      {
        goto LABEL_68;
      }

      v49 = v48;
      v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v7 & 1) == 0)
      {
        goto LABEL_68;
      }

      v51 = v50;
      while (1)
      {
        v52 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v53 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          goto LABEL_66;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_66:
      v54 = WTF::fastMalloc(0x18);
      *v54 = &unk_1F10F2FF0;
      v54[1] = v51;
      v54[2] = a2;
      *buf = v54;
      WebKit::VideoPresentationManager::requestRouteSharingPolicyAndContextUID(this, v49);
      v55 = *buf;
      *buf = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      goto LABEL_68;
    case 0x70B:
      v14 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::requestUpdateInlineRect(this, v14);
      }

      goto LABEL_68;
    case 0x70C:
      v46 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::requestVideoContentLayer(this, v46);
      }

      goto LABEL_68;
    case 0x70D:
      v12 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::returnVideoContentLayer(this, v12);
      }

      goto LABEL_68;
    case 0x70E:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::VideoPresentationManager::setRequiresTextTrackRepresentation(this, *buf);
      }

      goto LABEL_68;
    case 0x70F:
      v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v42 & 1) == 0)
      {
        goto LABEL_54;
      }

      v43 = v41;
      IPC::ArgumentCoder<WebCore::IntRect,void>::decode(a3, &v71);
      if ((v72 & 1) == 0)
      {
        goto LABEL_96;
      }

      *buf = v43;
      *&buf[8] = v71;
      LOBYTE(v74) = 1;
      WebKit::VideoPresentationManager::setTextTrackRepresentationBounds(this, v43, &buf[8]);
      goto LABEL_68;
    case 0x710:
      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v10 & 1) == 0)
      {
        goto LABEL_54;
      }

      v11 = v9;
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, buf);
      if (buf[16])
      {
        WebKit::VideoPresentationManager::setVideoFullscreenFrame(this, v11, *buf, *&buf[4], *&buf[8], *&buf[12]);
      }

      else
      {
LABEL_96:
        v27 = *(a3 + 1);
LABEL_97:
        *a3 = 0;
        *(a3 + 1) = 0;
        v68 = *(a3 + 3);
        if (v68 && v27)
        {
          (*(*v68 + 16))(v68);
        }

LABEL_54:
        v7 = *a3;
        v8 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v45 = *(a3 + 3);
        if (v45 && v8)
        {
          (*(*v45 + 16))(v45, v7);
        }
      }

      goto LABEL_68;
    case 0x711:
      v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_76;
      }

      v18 = v16;
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v69);
      if ((v70 & 1) == 0)
      {
        v63 = *a3;
        v64 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v65 = *(a3 + 3);
        if (v65 && v64)
        {
          (*(*v65 + 16))(v65, v63);
        }

        goto LABEL_76;
      }

      IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::decode(a3, &v71);
      if ((v72 & 1) == 0)
      {
        v59 = *a3;
        v60 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v61 = *(a3 + 3);
        if (!v61 || !v60 || ((*(*v61 + 16))(v61, v59), (v72 & 1) == 0))
        {
LABEL_76:
          buf[0] = 0;
          v76 = 0;
          goto LABEL_77;
        }
      }

      *buf = v18;
      *&buf[8] = v69;
      WTF::MachSendRight::MachSendRight();
      v75 = *(&v71 + 1);
      v76 = 1;
      if ((v72 & 1) == 0)
      {
        goto LABEL_23;
      }

      *(&v71 + 1) = 0;
      WTF::MachSendRight::~MachSendRight(&v71);
      if (v76)
      {
        goto LABEL_23;
      }

LABEL_77:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v62 = *(a3 + 3);
      if (!v62)
      {
        goto LABEL_68;
      }

      if (!v8)
      {
        goto LABEL_68;
      }

      (*(*v62 + 16))(v62, v7);
      if ((v76 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_23:
      WebKit::VideoPresentationManager::setVideoLayerFrameFenced(this, *buf, &v74, *&buf[8], *&buf[12], *&buf[16], *&buf[20]);
      if (v76)
      {
        v19 = v75;
        v75 = 0;
        if (v19)
        {
          WTF::fastFree(v19, v7);
        }

        WTF::MachSendRight::~MachSendRight(&v74);
      }

LABEL_68:
      if (*(this + 4) == 1)
      {
        (*(*this + 24))(this, v7, v8);
      }

      else
      {
        --*(this + 4);
      }

      return;
    case 0x712:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::VideoPresentationManager::setVideoLayerGravityEnum(this, *buf, *&buf[8]);
      }

      goto LABEL_68;
    case 0x713:
      v40 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        WebKit::VideoPresentationManager::willExitFullscreen(this, v40);
      }

      goto LABEL_68;
    default:
      v44 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v56 = 4223;
        }

        else
        {
          v56 = v5;
        }

        v57 = (&IPC::Detail::messageDescriptions)[3 * v56];
        v58 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v57;
        *&buf[12] = 2048;
        *&buf[14] = v58;
        _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_54;
  }
}

void WebKit::VideoPresentationManagerProxy::didReceiveMessage(WebKit::VideoPresentationManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v123 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(a2, a2, buf);
  v6 = *(*buf + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*buf + 16));
  if ((v6 & 0x18) != 0)
  {
    ++*(this + 4);
    v7 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x6EE:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_145;
        }

        v8 = IPC::Decoder::decode<WebCore::FocusDirection>(a3);
        if ((v8 & 0x100) == 0)
        {
          goto LABEL_145;
        }

        v9 = v8;
        v10 = IPC::Decoder::decode<WebCore::NotificationDirection>(a3);
        if ((v10 & 0x100) == 0)
        {
          goto LABEL_145;
        }

        v11 = v10;
        v12 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_145;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        WebKit::VideoPresentationManagerProxy::audioSessionCategoryChanged(this, *buf, *&buf[8], v9, v11, v12);
        goto LABEL_146;
      case 0x6EF:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::VideoPresentationManagerProxy::cleanupFullscreen(this, *buf, *&buf[8]);
        }

        goto LABEL_146;
      case 0x6F0:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::clearVideoFullscreenMode(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_146;
      case 0x6F1:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_145;
        }

        IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, v100);
        if ((v100[16] & 1) == 0)
        {
          goto LABEL_188;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        v48 = *buf;
        v49 = *v100;
        v50 = *&v100[8];
        v51 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v13 & 1) == 0)
        {
          goto LABEL_146;
        }

        v52 = v51;
        while (1)
        {
          v53 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v54 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v54 == v53)
          {
            goto LABEL_129;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_129:
        v70 = WTF::fastMalloc(0x18);
        *v70 = &unk_1F10F3018;
        v70[1] = v52;
        v70[2] = a2;
        *buf = v70;
        WebKit::VideoPresentationManagerProxy::exitFullscreen(this, v48, *(&v48 + 1), buf, *&v49, *(&v49 + 1), *&v50, *(&v50 + 1));
        v71 = *buf;
        *buf = 0;
        if (v71)
        {
          (*(*v71 + 8))(v71);
        }

        goto LABEL_146;
      case 0x6F2:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::exitFullscreenWithoutAnimationToMode(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_146;
      case 0x6F3:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::VideoPresentationManagerProxy::hasBeenInteractedWith(this, *buf, *&buf[8]);
        }

        goto LABEL_146;
      case 0x6F4:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::VideoPresentationManagerProxy::preparedToExitFullscreen(this, *buf, *&buf[8]);
        }

        goto LABEL_146;
      case 0x6F5:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_145;
        }

        v45 = *(a3 + 1);
        v55 = *(a3 + 2);
        if (v45 <= &v55[-*a3])
        {
          goto LABEL_169;
        }

        *(a3 + 2) = v55 + 1;
        if (!v55)
        {
          goto LABEL_171;
        }

        v56 = *v55;
        if (v56 >= 2)
        {
          goto LABEL_189;
        }

        IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, v100);
        if ((v100[16] & 1) == 0)
        {
          goto LABEL_188;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        WebKit::VideoPresentationManagerProxy::preparedToReturnToInline(this, *buf, *&buf[8], v56 & 1, *v100, *&v100[4], *&v100[8], *&v100[12]);
        goto LABEL_146;
      case 0x6F6:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::setDocumentVisibility(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_146;
      case 0x6F7:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::setHasVideo(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_146;
      case 0x6F8:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::setHasVideoContentLayer(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_146;
      case 0x6F9:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v100);
        if ((v100[16] & 1) == 0)
        {
          goto LABEL_145;
        }

        IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v98);
        if ((v99 & 1) == 0)
        {
          goto LABEL_188;
        }

        v45 = *(a3 + 1);
        v46 = *(a3 + 2);
        if (v45 <= &v46[-*a3])
        {
LABEL_169:
          *a3 = 0;
          *(a3 + 1) = 0;
          v90 = *(a3 + 3);
          if (v90)
          {
            if (v45)
            {
              (*(*v90 + 16))(v90);
              v45 = *(a3 + 1);
            }
          }

          else
          {
            v45 = 0;
          }

          goto LABEL_171;
        }

        *(a3 + 2) = v46 + 1;
        if (!v46)
        {
          goto LABEL_171;
        }

        v47 = *v46;
        if (v47 >= 2)
        {
          goto LABEL_189;
        }

        if ((v100[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        *buf = *v100;
        *&buf[16] = v98;
        buf[32] = v47;
        LOBYTE(v113) = 1;
        WebKit::VideoPresentationManagerProxy::setInlineRect(this, *v100, *&v100[8], &buf[16], v47 & 1);
        goto LABEL_146;
      case 0x6FA:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::setIsChildOfElementFullscreen(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_146;
      case 0x6FB:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v100);
        if ((v100[16] & 1) == 0)
        {
          goto LABEL_145;
        }

        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          v80 = *a3;
          v81 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v82 = *(a3 + 3);
          if (!v82)
          {
            goto LABEL_145;
          }

          if (!v81)
          {
            goto LABEL_145;
          }

          (*(*v82 + 16))(v82, v80);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        if ((v100[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        WebKit::VideoPresentationManagerProxy::setPlayerIdentifier(this, *v100, *&v100[8], *buf, *&buf[8]);
        goto LABEL_146;
      case 0x6FC:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v100);
        if (v100[16] != 1)
        {
          goto LABEL_145;
        }

        v43 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
        if ((v44 & 1) == 0)
        {
          goto LABEL_188;
        }

        if ((v100[16] & 1) == 0)
        {
          goto LABEL_131;
        }

        *buf = *v100;
        *&buf[16] = v43;
        buf[24] = 1;
        WebKit::VideoPresentationManagerProxy::setVideoDimensions(this, *v100, *&v100[8], &buf[16]);
        goto LABEL_146;
      case 0x6FD:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::setVideoFullscreenMode(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_146;
      case 0x6FE:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v98);
        if ((v99 & 1) == 0 || (IPC::ArgumentCoder<WebCore::HostingContext,void>::decode(a3, v100), (cf & 1) == 0) && ((v76 = *a3, v77 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v78 = *(a3 + 3)) == 0) || !v77 || ((*(*v78 + 16))(v78, v76), (cf & 1) == 0)))
        {
          buf[0] = 0;
          BYTE4(v121) = 0;
          goto LABEL_140;
        }

        IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v96);
        if ((v97 & 1) == 0)
        {
          goto LABEL_181;
        }

        v19 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
        if ((v20 & 1) == 0)
        {
          goto LABEL_181;
        }

        v21 = v19;
        v22 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
        if ((v23 & 1) == 0)
        {
          goto LABEL_181;
        }

        v24 = *(a3 + 1);
        v25 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v26 = *a3;
        v27 = v25 - *a3;
        v28 = v24 >= v27;
        v29 = v24 - v27;
        if (!v28 || v29 <= 3)
        {
          goto LABEL_176;
        }

        *(a3 + 2) = v25 + 1;
        if (!v25)
        {
          goto LABEL_182;
        }

        v30 = *v25;
        v31 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v24 < v31 - v26 || v24 - (v31 - v26) <= 3)
        {
          goto LABEL_176;
        }

        v32 = (v31 + 4);
        *(a3 + 2) = v31 + 4;
        if (!v31)
        {
          goto LABEL_182;
        }

        if (v24 <= v32 - v26)
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v92 = *(a3 + 3);
          if (v92)
          {
            if (v24)
            {
              (*(*v92 + 16))(v92);
              v24 = *(a3 + 1);
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v33 = *v31;
          *(a3 + 2) = v31 + 5;
          if (v31 != -4)
          {
            v34 = *v32;
            if (v34 < 2)
            {
              if (v24 > v31 + 5 - v26)
              {
                *(a3 + 2) = v31 + 6;
                v35 = *(v31 + 5);
                if (v35 >= 2)
                {
LABEL_165:
                  v84 = v24;
                  v85 = v26;
LABEL_166:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v89 = *(a3 + 3);
                  if (v89 && v84)
                  {
                    (*(*v89 + 16))(v89, v85, v84);
                  }

LABEL_183:
                  v39 = 0;
                  buf[0] = 0;
                  goto LABEL_35;
                }

                if (v24 > v31 + 6 - v26)
                {
                  *(a3 + 2) = v31 + 7;
                  v36 = *(v31 + 6);
                  if (v36 < 2)
                  {
                    if ((v99 & 1) == 0 || (cf & 1) == 0)
                    {
                      goto LABEL_131;
                    }

                    v37 = v22;
                    *buf = v98;
                    *&buf[16] = *v100;
                    WTF::MachSendRight::MachSendRight();
                    v38 = *&v100[16];
                    *&v100[16] = 0;
                    *&buf[32] = v38;
                    v113 = v96;
                    v114 = v21;
                    v115 = v37;
                    v116 = v30;
                    v117 = v33;
                    v118 = v34;
                    v119 = v35;
                    v39 = 1;
                    v120 = v36;
LABEL_35:
                    BYTE4(v121) = v39;
                    if (cf)
                    {
                      v40 = *&v100[16];
                      *&v100[16] = 0;
                      if (v40)
                      {
                        WTF::fastFree(v40, v26);
                      }

                      WTF::MachSendRight::~MachSendRight(&v100[8]);
                      v39 = BYTE4(v121);
                    }

                    if (v39)
                    {
                      goto LABEL_40;
                    }

LABEL_140:
                    v13 = *a3;
                    v14 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v79 = *(a3 + 3);
                    if (!v79)
                    {
                      goto LABEL_146;
                    }

                    if (!v14)
                    {
                      goto LABEL_146;
                    }

                    (*(*v79 + 16))(v79, v13);
                    if ((v121 & 0x100000000) == 0)
                    {
                      goto LABEL_146;
                    }

LABEL_40:
                    WebKit::VideoPresentationManagerProxy::setupFullscreenWithID(this, *buf, *&buf[8], &buf[16], &v113, &v114, &v115, v117, v118, v119, v120);
                    if ((v121 & 0x100000000) != 0)
                    {
                      v41 = *&buf[32];
                      *&buf[32] = 0;
                      if (v41)
                      {
                        WTF::fastFree(v41, v13);
                      }

                      v42 = &buf[24];
                      goto LABEL_124;
                    }

                    goto LABEL_146;
                  }

                  goto LABEL_165;
                }
              }

              v84 = 0;
              v85 = 0;
              *a3 = 0;
              *(a3 + 1) = 0;
              v86 = *(a3 + 3);
              if (v86)
              {
                (*(*v86 + 16))(v86);
                v84 = 0;
                v26 = *a3;
                v87 = *(a3 + 1);
                v88 = *(a3 + 3);
                *a3 = 0;
                *(a3 + 1) = 0;
                v85 = 0;
                if (v88)
                {
                  if (v87)
                  {
                    (*(*v88 + 16))(v88, v26);
                    v85 = *a3;
                    v84 = *(a3 + 1);
                  }
                }
              }

              goto LABEL_166;
            }

            goto LABEL_182;
          }
        }

LABEL_176:
        *a3 = 0;
        *(a3 + 1) = 0;
        v93 = *(a3 + 3);
        if (v93)
        {
          if (v24)
          {
            (*(*v93 + 16))(v93);
LABEL_181:
            v26 = *a3;
            v24 = *(a3 + 1);
            goto LABEL_182;
          }
        }

        else
        {
          v24 = 0;
        }

        v26 = 0;
LABEL_182:
        *a3 = 0;
        *(a3 + 1) = 0;
        v94 = *(a3 + 3);
        if (v94 && v24)
        {
          (*(*v94 + 16))(v94);
        }

        goto LABEL_183;
      case 0x6FF:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_145;
        }

        v45 = *(a3 + 1);
        v57 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v58 = v57 - *a3;
        v28 = v45 >= v58;
        v59 = v45 - v58;
        if (v28 && v59 > 3)
        {
          *(a3 + 2) = v57 + 1;
          if (v57)
          {
            WebKit::VideoPresentationManagerProxy::textTrackRepresentationSetContentsScale(this, *buf, *&buf[8], *v57);
LABEL_146:
            if (*(this + 4) == 1)
            {
              (*(*this + 24))(this, v13, v14);
            }

            else
            {
              --*(this + 4);
            }

            return;
          }
        }

        else
        {
LABEL_171:
          *a3 = 0;
          *(a3 + 1) = 0;
          v91 = *(a3 + 3);
          if (v91)
          {
            if (v45)
            {
              (*(*v91 + 16))(v91);
LABEL_188:
              v45 = *(a3 + 1);
            }
          }

          else
          {
            v45 = 0;
          }
        }

LABEL_189:
        *a3 = 0;
        *(a3 + 1) = 0;
        v95 = *(a3 + 3);
        if (v95 && v45)
        {
          (*(*v95 + 16))(v95);
        }

        goto LABEL_145;
      case 0x700:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::VideoPresentationManagerProxy::textTrackRepresentationSetHidden(this, *buf, *&buf[8]);
        }

        goto LABEL_146;
      case 0x701:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v98);
        if ((v99 & 1) == 0)
        {
          goto LABEL_133;
        }

        IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::decode(a3, v100);
        if (v111)
        {
          goto LABEL_111;
        }

        while (2)
        {
          v72 = *a3;
          v73 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v74 = *(a3 + 3);
          if (v74 && v73 && ((*(*v74 + 16))(v74, v72), (v111 & 1) != 0))
          {
LABEL_111:
            if ((v99 & 1) == 0)
            {
LABEL_131:
              __break(1u);
              continue;
            }

            *buf = v98;
            WTF::MachSendRight::MachSendRight();
            *&buf[24] = *&v100[8];
            LOBYTE(v113) = 0;
            BYTE8(v113) = 0;
            if (v102 == 1)
            {
              v65 = cf;
              cf = 0;
              *&v113 = v65;
              BYTE8(v113) = 1;
            }

            LODWORD(v114) = v103;
            BYTE4(v114) = v104;
            LOBYTE(v115) = v105 != 0;
            HIDWORD(v115) = v106;
            LOBYTE(v116) = v107 != 0;
            v117 = v108;
            v118 = v109 != 0;
            v121 = v110;
            v122 = 1;
            if ((v111 & 1) == 0)
            {
              goto LABEL_119;
            }

            if (v102)
            {
              v66 = cf;
              cf = 0;
              if (v66)
              {
                CFRelease(v66);
              }
            }

            WTF::MachSendRight::~MachSendRight(v100);
            if (v122)
            {
              goto LABEL_119;
            }
          }

          else
          {
LABEL_133:
            buf[0] = 0;
            v122 = 0;
          }

          break;
        }

        v13 = *a3;
        v14 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v75 = *(a3 + 3);
        if (!v75)
        {
          goto LABEL_146;
        }

        if (!v14)
        {
          goto LABEL_146;
        }

        (*(*v75 + 16))(v75, v13);
        if ((v122 & 1) == 0)
        {
          goto LABEL_146;
        }

LABEL_119:
        WebKit::VideoPresentationManagerProxy::textTrackRepresentationUpdate(this, *buf, *&buf[8]);
        if (v122)
        {
          if (BYTE8(v113) == 1)
          {
            v67 = v113;
            *&v113 = 0;
            if (v67)
            {
              CFRelease(v67);
            }
          }

          v42 = &buf[16];
LABEL_124:
          WTF::MachSendRight::~MachSendRight(v42);
        }

        goto LABEL_146;
      default:
        v61 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v7 >= 0x107F)
          {
            v62 = 4223;
          }

          else
          {
            v62 = v7;
          }

          v63 = (&IPC::Detail::messageDescriptions)[3 * v62];
          v64 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v63;
          *&buf[12] = 2048;
          *&buf[14] = v64;
          _os_log_error_impl(&dword_19D52D000, v61, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

LABEL_145:
        v13 = *a3;
        v14 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v83 = *(a3 + 3);
        if (v83 && v14)
        {
          (*(*v83 + 16))(v83, v13);
        }

        goto LABEL_146;
    }
  }

  v15 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v68 = *(a3 + 25);
    if (v68 >= 0x107F)
    {
      v68 = 4223;
    }

    v69 = (&IPC::Detail::messageDescriptions)[3 * v68];
    *buf = 136315138;
    *&buf[4] = v69;
    _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver VideoPresentationManagerProxy", buf, 0xCu);
  }

  v16 = *a3;
  v17 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v18 = *(a3 + 3);
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v16);
  }
}

_DWORD *WebKit::ViewGestureController::didReceiveMessage(WebKit::ViewGestureController *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = (this + 16);
  ++*(this + 4);
  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a3 + 25);
    if (v10 >= 0x107F)
    {
      v10 = 4223;
    }

    v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
    v12 = *(a3 + 7);
    v13 = 136315394;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v13, 0x16u);
  }

  v6 = *a3;
  v7 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a3 + 3);
  if (v8 && v7)
  {
    (*(*v8 + 16))(v8, v6);
  }

  return WTF::RefCounted<WebKit::ViewGestureController>::deref(v4);
}

void WebKit::ViewGestureGeometryCollector::didReceiveMessage(WebKit::ViewGestureGeometryCollector *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v5 = *(a3 + 25);
  if (v5 == 1812)
  {
    v6 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
    if (v7)
    {
      WebKit::ViewGestureGeometryCollector::collectGeometryForSmartMagnificationGesture(this, *&v6, *(&v6 + 1));
    }
  }

  else
  {
    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v11 = 4223;
      }

      else
      {
        v11 = v5;
      }

      v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
      v13 = *(a3 + 7);
      v14 = 136315394;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v14, 0x16u);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v10 = *(a3 + 3);
    if (v10 && v8)
    {
      (*(*v10 + 16))(v10, v7);
    }
  }

  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this, v7, v8);
  }

  else
  {
    --*(this + 4);
  }
}

WTF *WebKit::ViewUpdateDispatcher::didReceiveMessage(WebKit::ViewUpdateDispatcher *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 2))
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  v5 = *(a3 + 25);
  if (v5 == 1813)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v7)
    {
      v8 = v6;
      IPC::ArgumentCoder<WebKit::VisibleContentRectUpdateInfo,void>::decode(a3, v14);
      if (v16 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v16))
      {
        v25 = v14[8];
        v26 = v14[9];
        v27 = v14[10];
        v21 = v14[4];
        v22 = v14[5];
        v23 = v14[6];
        v24 = v14[7];
        *&buf[8] = v14[0];
        v18 = v14[1];
        v19 = v14[2];
        *buf = v8;
        v28 = v15;
        v20 = v14[3];
        v29 = 1;
        result = WebKit::ViewUpdateDispatcher::visibleContentRectUpdate(this, v8, &buf[8]);
        goto LABEL_6;
      }
    }
  }

  else
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v11 = 4223;
      }

      else
      {
        v11 = v5;
      }

      v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
      v13 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }
  }

  result = IPC::Decoder::markInvalid(a3);
LABEL_6:
  if (!*(this + 2))
  {
    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19DA33F10);
  }

  return result;
}

void WebKit::VisitedLinkStore::didReceiveMessage(CFTypeRef *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v5 = *(a3 + 25);
  if (v5 == 1814)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v7)
    {
      v8 = *(a3 + 1);
      v9 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v10 = v9 - *a3;
      v11 = v8 >= v10;
      v12 = v8 - v10;
      if (v11 && v12 > 3)
      {
        *(a3 + 2) = v9 + 1;
        if (v9)
        {
          WebKit::VisitedLinkStore::addVisitedLinkHashFromPage(this, v6, *v9);
          goto LABEL_12;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v21 = *(a3 + 3);
        if (v21)
        {
          if (v8)
          {
            (*(*v21 + 16))(v21);
            v8 = *(a3 + 1);
          }
        }

        else
        {
          v8 = 0;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v22 = *(a3 + 3);
      if (v22 && v8)
      {
        (*(*v22 + 16))(v22);
      }
    }
  }

  else
  {
    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v18 = 4223;
      }

      else
      {
        v18 = v5;
      }

      v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
      v20 = *(a3 + 7);
      v23 = 136315394;
      v24 = v19;
      v25 = 2048;
      v26 = v20;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v23, 0x16u);
    }
  }

  v15 = *a3;
  v16 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v17 = *(a3 + 3);
  if (v17 && v16)
  {
    (*(*v17 + 16))(v17, v15);
  }

LABEL_12:
  CFRelease(this[1]);
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = a2[1];
    v7 = a2[2];
    v8 = *a2;
    if (v6 <= &v7[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v10 = a2[3];
      if (v10)
      {
        if (v6)
        {
          (*(*v10 + 16))(v10);
          v6 = a2[1];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      a2[2] = (v7 + 1);
      if (v7)
      {
        v9 = *v7;
        if (v9 < 2)
        {
          *a1 = result;
          *(a1 + 8) = v9;
          *(a1 + 16) = 1;
          return result;
        }

        goto LABEL_11;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v8 = *a2;
        v6 = a2[1];
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_11:
    *a2 = 0;
    a2[1] = 0;
    v12 = a2[3];
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v8);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RealtimeMediaSourceSettings>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::RealtimeMediaSourceSettings>(v13, a2), v19 == 1))
  {
    v8 = v13[1];
    *(a1 + 8) = v13[0];
    *(a1 + 24) = v8;
    *(a1 + 48) = v15;
    v9 = *v18;
    *(a1 + 72) = v17;
    *a1 = v6;
    *(a1 + 40) = v14;
    *(a1 + 64) = v16;
    *(a1 + 88) = v9;
    *(a1 + 102) = *&v18[14];
    *(a1 + 112) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 112) = 0;
    v10 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::RealtimeMediaSourceSettings>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::decode(a2, a1);
  if ((*(a1 + 104) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy48CreateMediaSourceForCaptureDeviceWithConstraintsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_13CaptureDeviceEONSB_20MediaDeviceHashSaltsEONSB_16MediaConstraintsEbNSA_INSB_18PageIdentifierTypeESE_yEEONS_17CompletionHandlerIFvRKNSB_18CaptureSourceErrorERKNSB_27RealtimeMediaSourceSettingsERKNSB_31RealtimeMediaSourceCapabilitiesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_SV_SY_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2F28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy48CreateMediaSourceForCaptureDeviceWithConstraintsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_13CaptureDeviceEONSB_20MediaDeviceHashSaltsEONSB_16MediaConstraintsEbNSA_INSB_18PageIdentifierTypeESE_yEEONS_17CompletionHandlerIFvRKNSB_18CaptureSourceErrorERKNSB_27RealtimeMediaSourceSettingsERKNSB_31RealtimeMediaSourceCapabilitiesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_SV_SY_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2F28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy48CreateMediaSourceForCaptureDeviceWithConstraintsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_13CaptureDeviceEONSB_20MediaDeviceHashSaltsEONSB_16MediaConstraintsEbNSA_INSB_18PageIdentifierTypeESE_yEEONS_17CompletionHandlerIFvRKNSB_18CaptureSourceErrorERKNSB_27RealtimeMediaSourceSettingsERKNSB_31RealtimeMediaSourceCapabilitiesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_SV_SY_EE4callESS_SV_SY_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3547;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WebCore::CaptureSourceError,void>::encode(v9, a2);
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::encode(v9, a3);
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::encode(v9, a4);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy9TakePhotoENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13PhotoSettingsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEESS_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2F50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy9TakePhotoENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13PhotoSettingsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEESS_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2F50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy9TakePhotoENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13PhotoSettingsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEESS_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EE4callESV_(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3550;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (*(v2 + 24))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (*(v2 + 24) != 1)
    {
LABEL_9:
      mpark::throw_bad_variant_access(v6);
    }
  }

  else
  {
    v12 = 1;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
    if (*(v2 + 24))
    {
      goto LABEL_9;
    }

    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v5, *v2, *(v2 + 3));
    v2 += 2;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy20GetPhotoCapabilitiesENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_17PhotoCapabilitiesENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2F78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy20GetPhotoCapabilitiesENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_17PhotoCapabilitiesENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2F78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy20GetPhotoCapabilitiesENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_17PhotoCapabilitiesENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3548;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[144])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[144] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[144])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::PhotoCapabilities,void>::encode(v5, a2);
LABEL_6:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy16GetPhotoSettingsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_13PhotoSettingsENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2FA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy16GetPhotoSettingsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_13PhotoSettingsENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2FA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28UserMediaCaptureManagerProxy16GetPhotoSettingsENS2_10ConnectionEN6WebKit28UserMediaCaptureManagerProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_13PhotoSettingsENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3549;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[48])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[48] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[48])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::PhotoSettings,void>::encode(v5, a2);
LABEL_6:
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages28UserMediaCaptureManagerProxy16IsPowerEfficientEN6WebKit28UserMediaCaptureManagerProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2FC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages28UserMediaCaptureManagerProxy16IsPowerEfficientEN6WebKit28UserMediaCaptureManagerProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2FC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages28UserMediaCaptureManagerProxy16IsPowerEfficientEN6WebKit28UserMediaCaptureManagerProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = a2[1];
    v7 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v8 = v7 - *a2;
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (v9 && v10 > 3)
    {
      a2[2] = (v7 + 1);
      if (v7)
      {
        v12 = *v7;
        *a1 = result;
        *(a1 + 8) = v12;
        *(a1 + 16) = 1;
        return result;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v13 = a2[3];
      if (v13)
      {
        if (v6)
        {
          (*(*v13 + 16))(v13);
          v6 = a2[1];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v15 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24VideoPresentationManager38RequestRouteSharingPolicyAndContextUIDENS2_10ConnectionEN6WebKit24VideoPresentationManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_18RouteSharingPolicyENS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2FF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24VideoPresentationManager38RequestRouteSharingPolicyAndContextUIDENS2_10ConnectionEN6WebKit24VideoPresentationManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_18RouteSharingPolicyENS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2FF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24VideoPresentationManager38RequestRouteSharingPolicyAndContextUIDENS2_10ConnectionEN6WebKit24VideoPresentationManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSB_18RouteSharingPolicyENS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SI_EE4callESH_SI_(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3552;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v4);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29VideoPresentationManagerProxy14ExitFullscreenENS2_10ConnectionEN6WebKit29VideoPresentationManagerProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_9FloatRectEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F3018;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29VideoPresentationManagerProxy14ExitFullscreenENS2_10ConnectionEN6WebKit29VideoPresentationManagerProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_9FloatRectEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3018;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29VideoPresentationManagerProxy14ExitFullscreenENS2_10ConnectionEN6WebKit29VideoPresentationManagerProxyES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_31MediaPlayerClientIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_9FloatRectEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3551;
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v17);
  if (v18 == 1)
  {
    v5 = a2[1];
    v6 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = v6 - *a2;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (v8 && v9 > 3)
    {
      a2[2] = (v6 + 1);
      if (v6)
      {
        v11 = *v6;
        *a1 = v17;
        *(a1 + 16) = v11;
        *(a1 + 24) = 1;
        return result;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v12 = a2[3];
      if (v12)
      {
        if (v5)
        {
          (*(*v12 + 16))(v12);
          v5 = a2[1];
        }
      }

      else
      {
        v5 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v13 = a2[3];
    if (v13 && v5)
    {
      (*(*v13 + 16))(v13);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v14 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
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

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::FloatPoint>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatPoint>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
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

void sub_19DA354D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v2 = *(a1 + 32);
    v3 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker: UISceneDidEnterBackground", &v4, 0xCu);
    }

    WebKit::ApplicationStateTracker::applicationDidEnterBackground(v2);
  }
}

void ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_19(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v2 = *(a1 + 32);
    v3 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker: UISceneWillEnterForeground", &v4, 0xCu);
    }

    WebKit::ApplicationStateTracker::applicationWillEnterForeground(v2);
  }
}

void ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v2 = *(a1 + 32);
    v3 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker:willBeginSnapshotSequence()", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained *(v2 + 80)];
    }
  }
}

void ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_23(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v2 = *(a1 + 32);
    v3 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker:didCompleteSnapshotSequence()", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained *(v2 + 88)];
    }
  }
}

void ___ZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewController_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v3 = *(a1 + 32);
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (_UIApplicationIsExtension())
      {
        v5 = "Extension";
      }

      else
      {
        v5 = "ViewService";
      }

      v6 = getpid();
      v7 = *(a1 + 48);
      v8 = 136446722;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s has PID %d, host application PID=%d, didEnterBackground", &v8, 0x18u);
    }

    WebKit::ApplicationStateTracker::applicationDidEnterBackground(v3);
  }
}

uint64_t __copy_helper_block_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__0(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  *(result + 48) = *(a2 + 48);
  return result;
}

unsigned int *__destroy_helper_block_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__0(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void ___ZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewController_block_invoke_37(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *(v1 + 8))
  {
    v3 = *(a1 + 32);
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      if (_UIApplicationIsExtension())
      {
        v5 = "Extension";
      }

      else
      {
        v5 = "ViewService";
      }

      v6 = getpid();
      v7 = *(a1 + 48);
      v8 = 136446722;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s has PID %d, host application PID=%d, willEnterForeground", &v8, 0x18u);
    }

    WebKit::ApplicationStateTracker::applicationWillEnterForeground(v3);
  }
}

uint64_t __copy_helper_block_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__1(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  *(result + 48) = *(a2 + 48);
  return result;
}

unsigned int *__destroy_helper_block_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__1(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebKit::ApplicationStateTracker::applicationDidEnterBackground(WebKit::ApplicationStateTracker *this)
{
  WebKit::ApplicationStateTracker::setIsInBackground(this, 1);
  WebKit::updateApplicationBackgroundState(v2);
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained *(this + 8)];
  }
}

void WebKit::ApplicationStateTracker::applicationWillEnterForeground(WebKit::ApplicationStateTracker *this)
{
  WebKit::ApplicationStateTracker::setIsInBackground(this, 0);
  WebKit::updateApplicationBackgroundState(v2);
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained *(this + 9)];
  }
}

void sub_19DA35EA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA36470(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA3663C(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA366F8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WKContextRegisterSchemeForCustomProtocol(uint64_t a1, void *a2)
{
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v6);
    WTF::String::isolatedCopy();
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      CFRelease(*(v2 + 8));
    }
  }

  else
  {
    v5 = 0;
  }

  WebKit::WebProcessPool::registerGlobalURLSchemeAsHavingCustomProtocolHandlers(&v5, a2);
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

void sub_19DA36FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WKContextUnregisterSchemeForCustomProtocol(uint64_t a1, void *a2)
{
  if (a2)
  {
    WebKit::toProtectedImpl<OpaqueWKString const*,API::String>(a2, &v6);
    WTF::String::isolatedCopy();
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      CFRelease(*(v2 + 8));
    }
  }

  else
  {
    v5 = 0;
  }

  WebKit::WebProcessPool::unregisterGlobalURLSchemeAsHavingCustomProtocolHandlers(&v5, a2);
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

void sub_19DA3704C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WKNotificationCopyDictionaryRepresentation(void *a1)
{
  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 79)
  {
    v2 = WebCore::NotificationData::dictionaryRepresentation((v1 + 32));

    return v2;
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

void sub_19DA37278(_Unwind_Exception *a1)
{
  objc_destroyWeak(v3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v5);
  bmalloc::api::tzoneFree(v1, v6);
  _Unwind_Resume(a1);
}

void sub_19DA37370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA374FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA375AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WKPageCreateObservableState(void *a1)
{
  v2 = [WKObservablePageState alloc];
  v3 = WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1);
  v4 = v3;
  if (v3)
  {
    CFRetain(*(v3 + 8));
  }

  v8 = v4;
  v5 = [(WKObservablePageState *)v2 initWithPage:&v8];
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return v5;
}

void sub_19DA377DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 85)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

BOOL WKPageIsURLKnownHSTSHost(void *a1, void *a2)
{
  v3 = WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1);
  v4 = v3;
  if (v3)
  {
    CFRetain(*(v3 + 8));
  }

  v5 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(v4 + 64) + 16));
  v6 = WebKit::toImpl<OpaqueWKURL const*,API::URL>(a2);
  isURLKnownHSTSHost = WebKit::WebProcessPool::isURLKnownHSTSHost(v5, (v6 + 16));
  CFRelease(*(v4 + 8));
  return isURLKnownHSTSHost;
}

uint64_t WebKit::toImpl<OpaqueWKURL const*,API::URL>(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 23)
  {
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

void *WKPageLoadURLRequestReturningNavigation(void *a1, void *a2)
{
  v3 = [a2 _apiObject];
  if ((*(*v3 + 16))(v3) != 24)
  {
    __break(0xC471u);
    goto LABEL_21;
  }

  WebCore::ResourceRequestBase::RequestData::RequestData(v18, (v3 + 16));
  v4 = *(v3 + 168);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v19 = v4;
  v5 = *(v3 + 176);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v20 = v5;
  v6 = *(v3 + 184);
  if (v6)
  {
    ++*v6;
  }

  v7 = *(v3 + 192);
  v21 = v6;
  v22 = v7;
  v23 = *(v3 + 200);
  v8 = *(v3 + 208);
  v24 = v8;
  if (v8)
  {
    v9 = v8;
  }

  v10 = WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1);
  v25 = 0;
  WebKit::WebPageProxy::loadRequest(v10, v18, 1, 0, &v25, 0, 1, &v17);
  v11 = v17;
  if (v17)
  {
    v12 = *(v17 + 8);
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        CFRelease(*(v11 + 8));
        v14 = v12;
        goto LABEL_16;
      }

      __break(0xC471u);
LABEL_21:
      JUMPOUT(0x19DA37B14);
    }

    CFRelease(0);
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  v15 = v24;
  v24 = 0;
  if (v15)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v18);
  return v12;
}