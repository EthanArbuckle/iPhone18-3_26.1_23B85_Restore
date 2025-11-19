uint64_t WebKit::WebResourceLoadStatisticsStore::setLastSeen(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  WebCore::RegistrableDomain::isolatedCopy(v18);
  v18[1] = *&a2;
  v7 = *a4;
  *a4 = 0;
  v19 = v7;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F1105490;
  *(v8 + 8) = *v18;
  v9 = v19;
  v18[0] = 0;
  v19 = 0;
  *(v8 + 24) = v9;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v10 = v8;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F11044F0;
    v13[1] = a1;
    v13[2] = v10;
    v20 = v13;
    WTF::SuspendableWorkQueue::dispatch();
    v15 = v20;
    v20 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v18[0];
    v18[0] = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, int a11, uint64_t *a12)
{
  WebCore::RegistrableDomain::isolatedCopy(&v35);
  WebCore::RegistrableDomain::isolatedCopy(&v36);
  WebCore::RegistrableDomain::isolatedCopy(&v37);
  *&v38 = a2;
  BYTE8(v38) = a7;
  *&v39 = a3;
  BYTE8(v39) = a8;
  BYTE9(v39) = a9;
  BYTE10(v39) = a10;
  HIDWORD(v39) = a11;
  v19 = *a12;
  *a12 = 0;
  v40 = v19;
  v20 = WTF::fastMalloc(0x48);
  v21 = v35;
  *v20 = &unk_1F11054B8;
  *(v20 + 8) = v21;
  v22 = v36;
  v35 = 0;
  v36 = 0;
  *(v20 + 16) = v22;
  *(v20 + 24) = v37;
  v23 = v39;
  *(v20 + 32) = v38;
  *(v20 + 48) = v23;
  v24 = v40;
  v37 = 0;
  v40 = 0;
  *(v20 + 64) = v24;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v25 = v20;
    while (1)
    {
      v26 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v27 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v27 == v26)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v28 = WTF::fastMalloc(0x18);
    *v28 = &unk_1F11044F0;
    v28[1] = a1;
    v28[2] = v25;
    v41 = v28;
    WTF::SuspendableWorkQueue::dispatch();
    v30 = v41;
    v41 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v40;
    v40 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v37;
    v37 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }

    v33 = v36;
    v36 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v29);
    }

    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v29);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(v20);
  v6 = *a4;
  *a4 = 0;
  v20[1] = v6;
  v7 = WTF::fastMalloc(0x20);
  v8 = v19;
  *v7 = &unk_1F11054E0;
  *(v7 + 8) = v8;
  v9 = *v20;
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  *(v7 + 16) = v9;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v10 = v7;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F11044F0;
    v13[1] = a1;
    v13[2] = v10;
    v21 = v13;
    WTF::SuspendableWorkQueue::dispatch();
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v20[1];
    v20[1] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v20[0];
    v20[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    result = v19;
    v19 = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  WebCore::RegistrableDomain::isolatedCopy(v15);
  v5 = *a3;
  *a3 = 0;
  v15[1] = v5;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105530;
  *(v6 + 8) = *v15;
  v15[0] = 0;
  v15[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v16 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v15[1];
    v15[1] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  WebCore::RegistrableDomain::isolatedCopy(v15);
  v5 = *a3;
  *a3 = 0;
  v15[1] = v5;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105558;
  *(v6 + 8) = *v15;
  v15[0] = 0;
  v15[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v16 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v15[1];
    v15[1] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v15 = v4;
  WebCore::RegistrableDomain::isolatedCopy(&v16);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1105580;
  v5[1] = v15;
  v6 = v16;
  v16 = 0;
  v5[2] = v6;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v5;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v17 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F11055A8;
  v4[1] = v3;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v5 = v4;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v7 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F11044F0;
    v8[1] = a1;
    v8[2] = v5;
    v10 = v8;
    WTF::SuspendableWorkQueue::dispatch();
    result = v10;
    if (v10)
    {
      return (*(*v10 + 8))(v10);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, 0);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v17);
    v8 = *a3;
    *a3 = 0;
    v17[1] = v8;
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F1105620;
    *(v9 + 8) = *v17;
    v17[0] = 0;
    v17[1] = 0;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v10 = v9;
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
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F11044F0;
      v13[1] = a1;
      v13[2] = v10;
      v18 = v13;
      WTF::SuspendableWorkQueue::dispatch();
      v15 = v18;
      v18 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v16 = v17[1];
      v17[1] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = v17[0];
      v17[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  WebCore::RegistrableDomain::isolatedCopy(v15);
  v5 = *a3;
  *a3 = 0;
  v15[1] = v5;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105670;
  *(v6 + 8) = *v15;
  v15[0] = 0;
  v15[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v16 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v15[1];
    v15[1] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(v20);
  v6 = *a4;
  *a4 = 0;
  v20[1] = v6;
  v7 = WTF::fastMalloc(0x20);
  v8 = v19;
  *v7 = &unk_1F11056C0;
  *(v7 + 8) = v8;
  v9 = *v20;
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  *(v7 + 16) = v9;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v10 = v7;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F11044F0;
    v13[1] = a1;
    v13[2] = v10;
    v21 = v13;
    WTF::SuspendableWorkQueue::dispatch();
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v20[1];
    v20[1] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v20[0];
    v20[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    result = v19;
    v19 = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(v20);
  v6 = *a4;
  *a4 = 0;
  v20[1] = v6;
  v7 = WTF::fastMalloc(0x20);
  v8 = v19;
  *v7 = &unk_1F1105710;
  *(v7 + 8) = v8;
  v9 = *v20;
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  *(v7 + 16) = v9;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v10 = v7;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F11044F0;
    v13[1] = a1;
    v13[2] = v10;
    v21 = v13;
    WTF::SuspendableWorkQueue::dispatch();
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v20[1];
    v20[1] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v20[0];
    v20[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    result = v19;
    v19 = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(v20);
  v6 = *a4;
  *a4 = 0;
  v20[1] = v6;
  v7 = WTF::fastMalloc(0x20);
  v8 = v19;
  *v7 = &unk_1F1105760;
  *(v7 + 8) = v8;
  v9 = *v20;
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  *(v7 + 16) = v9;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v10 = v7;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F11044F0;
    v13[1] = a1;
    v13[2] = v10;
    v21 = v13;
    WTF::SuspendableWorkQueue::dispatch();
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v20[1];
    v20[1] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v20[0];
    v20[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    result = v19;
    v19 = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  WebCore::RegistrableDomain::isolatedCopy(v15);
  v5 = *a3;
  *a3 = 0;
  v15[1] = v5;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F11057B0;
  *(v6 + 8) = *v15;
  v15[0] = 0;
  v15[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v16 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v15[1];
    v15[1] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setGrandfathered(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  v20 = a3;
  v7 = *a4;
  *a4 = 0;
  v21 = v7;
  v8 = WTF::fastMalloc(0x20);
  v9 = v19;
  *v8 = &unk_1F11057D8;
  *(v8 + 8) = v9;
  *(v8 + 16) = v20;
  v10 = v21;
  v19 = 0;
  v21 = 0;
  *(v8 + 24) = v10;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v11 = v8;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F11044F0;
    v14[1] = a1;
    v14[2] = v11;
    v22 = v14;
    WTF::SuspendableWorkQueue::dispatch();
    v16 = v22;
    v22 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v21;
    v21 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
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

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isGrandfathered(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v15 = v4;
  WebCore::RegistrableDomain::isolatedCopy(&v16);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1105800;
  v5[1] = v15;
  v6 = v16;
  v16 = 0;
  v5[2] = v6;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v5;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v17 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1105850;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1105878;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11058A0;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11058C8;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11058F0;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  v18 = v5;
  WebCore::RegistrableDomain::isolatedCopy(&v19);
  WebCore::RegistrableDomain::isolatedCopy(&v20);
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1105918;
  v6[1] = v18;
  v7 = v19;
  v19 = 0;
  v6[2] = v7;
  v8 = v20;
  v20 = 0;
  v6[3] = v8;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v9 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F11044F0;
    v12[1] = a1;
    v12[2] = v9;
    v21 = v12;
    WTF::SuspendableWorkQueue::dispatch();
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }
    }

    return 0;
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1105940;
  v4[1] = v3;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v5 = v4;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v7 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F11044F0;
    v8[1] = a1;
    v8[2] = v5;
    v10 = v8;
    WTF::SuspendableWorkQueue::dispatch();
    result = v10;
    if (v10)
    {
      return (*(*v10 + 8))(v10);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(uint64_t a1, char a2, WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {

    return WebKit::WebResourceLoadStatisticsStore::clearInMemoryEphemeral(a1, a3);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F1105990;
    *(v7 + 8) = a2;
    *(v7 + 16) = v6;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
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
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F11044F0;
      v11[1] = a1;
      v11[2] = v8;
      v12 = v11;
      WTF::SuspendableWorkQueue::dispatch();
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::clearInMemoryEphemeral(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 96) = 0;
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(v6 + 32);
      v15 = *(v6 + 24);
      v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v15);
      if (v8)
      {
        v9 = v8;
        ++*(v8 + 2);
        WebCore::NetworkStorageSession::removeAllStorageAccess(v8);
        v10 = *(v9 + 2);
        if (!v10)
        {
          goto LABEL_13;
        }

        *(v9 + 2) = v10 - 1;
      }

      v11 = *(v6 + 16);
      if (v11)
      {
        *(v6 + 16) = v11 - 1;
        goto LABEL_10;
      }

LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DD05FD4);
    }
  }

LABEL_10:
  v12 = *a2;
  *a2 = 0;
  (*(*v12 + 16))(v12);
  v13 = *(*v12 + 8);

  return v13(v12);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105A30;
  *(v6 + 8) = a2;
  *(v6 + 16) = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105A80;
  *(v6 + 8) = a3;
  *(v6 + 16) = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105AA8;
  *(v6 + 8) = a3;
  *(v6 + 16) = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105AD0;
  *(v6 + 8) = a3;
  *(v6 + 16) = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setCacheMaxAgeCap(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      v4 = *(v3 + 32);
      v12 = *(v3 + 24);
      v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v12);
      if (v5)
      {
        v6 = v5;
        ++*(v5 + 8);
        WebCore::NetworkStorageSession::setCacheMaxAgeCapForPrevalentResources();
        v7 = *(v6 + 8);
        if (!v7)
        {
          goto LABEL_11;
        }

        *(v6 + 8) = v7 - 1;
      }

      v8 = *(v3 + 16);
      if (v8)
      {
        *(v3 + 16) = v8 - 1;
        goto LABEL_8;
      }

LABEL_11:
      __break(0xC471u);
      JUMPOUT(0x19DD065F4);
    }
  }

LABEL_8:
  v9 = *a2;
  *a2 = 0;
  (*(*v9 + 16))(v9);
  v10 = *(*v9 + 8);

  return v10(v9);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    goto LABEL_168;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    goto LABEL_168;
  }

  v124 = a3;
  ++*(v4 + 16);
  v126 = v4;
  v6 = *(v4 + 32);
  *&v133 = *(v4 + 24);
  v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), &v133);
  if (v7)
  {
    v10 = v7;
    ++*(v7 + 8);
    WebCore::NetworkStorageSession::setPrevalentDomainsToBlockAndDeleteCookiesFor();
    WebCore::NetworkStorageSession::setPrevalentDomainsToBlockButKeepCookiesFor();
    WebCore::NetworkStorageSession::setDomainsWithUserInteractionAsFirstParty();
    v11 = *(v10 + 8);
    if (!v11)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD071B4);
    }

    *(v10 + 8) = v11 - 1;
  }

  v129 = 0;
  v12 = *(a2 + 44);
  if (v12)
  {
    v13 = *(a2 + 32);
    v14 = &v13[v12];
    do
    {
      if (byte_1ED6425D1)
      {
        if (qword_1ED6425D8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v132 = 0;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v135, &v130);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v132, &v130, v21, &v133);
        v23 = v130;
        v130 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
        }

        v24 = v135;
        v135 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v135, &v130);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v132, &v130, v25, &v133);
        v26 = v130;
        v130 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v8);
        }

        v27 = v135;
        v135 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v8);
        }

        qword_1ED6425D8 = v132;
        byte_1ED6425D1 = 1;
        if (v132)
        {
LABEL_10:
          if (WTF::equal(*v13, 0, v9))
          {
            __break(0xC471u);
            JUMPOUT(0x19DD070D4);
          }

          if (*v13 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD070F4);
          }

          v15 = qword_1ED6425D8;
          if (qword_1ED6425D8)
          {
            v16 = *(qword_1ED6425D8 - 8);
            v17 = WTF::ASCIICaseInsensitiveHash::hash(*v13, v8) & v16;
            v18 = (v15 + 8 * v17);
            if ((WTF::equal(*v18, 0, v19) & 1) == 0)
            {
              v20 = 1;
              while (*v18 == -1 || (WTF::equalIgnoringASCIICase(*v18, *v13, v9) & 1) == 0)
              {
                v17 = (v17 + v20) & v16;
                v18 = (v15 + 8 * v17);
                ++v20;
                if (WTF::equal(*v18, 0, v9))
                {
                  goto LABEL_20;
                }
              }

              WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v129, v13, v9, &v133);
            }
          }
        }
      }

LABEL_20:
      ++v13;
    }

    while (v13 != v14);
  }

  v29 = (a1 + 13);
  v28 = a1[13];
  if (v28)
  {
    LODWORD(v28) = *(v28 - 12);
  }

  v30 = v129;
  if (v129)
  {
    v30 = *(v129 - 3);
  }

  if (v28 != v30)
  {
    goto LABEL_57;
  }

  v31 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(&v129, v8, v9);
  v34 = v31;
  *&v133 = v31;
  *(&v133 + 1) = v32;
  if (v129)
  {
    v35 = &v129[*(v129 - 1)];
  }

  else
  {
    v35 = 0;
  }

  if (v35 != v31)
  {
    while (*v29)
    {
      if (WTF::equal(*v34, 0, v33))
      {
        __break(0xC471u);
        JUMPOUT(0x19DD07114);
      }

      if (*v34 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD07134);
      }

      v37 = *v29;
      if (!*v29)
      {
        break;
      }

      v38 = *(v37 - 2);
      v39 = WTF::ASCIICaseInsensitiveHash::hash(*v34, v36) & v38;
      v40 = &v37[v39];
      if (WTF::equal(*v40, 0, v41))
      {
        break;
      }

      v43 = 1;
      while (*v40 == -1 || (WTF::equalIgnoringASCIICase(*v40, *v34, v42) & 1) == 0)
      {
        v39 = (v39 + v43) & v38;
        v40 = &v37[v39];
        ++v43;
        if (WTF::equal(*v40, 0, v42))
        {
          goto LABEL_57;
        }
      }

      *&v133 = v133 + 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v133, v44, v42);
      v34 = v133;
      if (v133 == v35)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::operator=(v29, &v129);
    v45 = *(*(v126 + 32) + 40);
    if (v45)
    {
      while (1)
      {
        v46 = *v45;
        if ((*v45 & 1) == 0)
        {
          break;
        }

        v47 = *v45;
        atomic_compare_exchange_strong_explicit(v45, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v47 == v46)
        {
          goto LABEL_62;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v45);
LABEL_62:
      *&v133 = &v129;
      IPC::Connection::send<Messages::NetworkProcessProxy::SetDomainsWithUserInteraction>(v45, &v133);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v45);
    }

    else
    {
      *&v133 = &v129;
      IPC::Connection::send<Messages::NetworkProcessProxy::SetDomainsWithUserInteraction>(0, &v133);
    }
  }

LABEL_63:
  v132 = 0;
  v48 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a2 + 48), v32, v33);
  v51 = v48;
  v52 = 0;
  *&v133 = v48;
  *(&v133 + 1) = v49;
  v53 = *(a2 + 48);
  if (v53)
  {
    v52 = v53 + 24 * *(v53 - 4);
  }

  if (v52 == v48)
  {
    goto LABEL_102;
  }

  v127 = v52;
  do
  {
    v54 = *(v51 + 20);
    if (!v54)
    {
      goto LABEL_101;
    }

    v55 = *(v51 + 8);
    v56 = &v55[v54];
    do
    {
      if (!WebCore::NetworkStorageSession::loginDomainMatchesRequestingDomain())
      {
        goto LABEL_93;
      }

      v130 = 0;
      v131 = 0;
      v135 = &v130;
      if (WTF::equal(*v51, 0, v50))
      {
        goto LABEL_182;
      }

      if (*v51 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD070B4);
      }

      v58 = v132;
      if (v132 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v132, 0), (v58 = v132) != 0))
      {
        v59 = *(v58 - 2);
      }

      else
      {
        v59 = 0;
      }

      v60 = WTF::ASCIICaseInsensitiveHash::hash(*v51, v57) & v59;
      v61 = &v58[3 * v60];
      if ((WTF::equal(*v61, 0, v62) & 1) == 0)
      {
        v64 = 0;
        v65 = 1;
        do
        {
          if (*v61 == -1)
          {
            v64 = v61;
          }

          else if (WTF::equalIgnoringASCIICase(*v61, *v51, v63))
          {
            goto LABEL_90;
          }

          v60 = (v60 + v65) & v59;
          v61 = &v58[3 * v60];
          ++v65;
        }

        while (!WTF::equal(*v61, 0, v63));
        if (v64)
        {
          *v64 = 0;
          v64[1] = 0;
          v64[2] = 0;
          --*(v132 - 4);
          v61 = v64;
        }
      }

      WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain const&,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WebCore::RegistrableDomain const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(v61, v51, &v135);
      v67 = v132;
      if (v132)
      {
        v68 = *(v132 - 3) + 1;
      }

      else
      {
        v68 = 1;
      }

      *(v132 - 3) = v68;
      v69 = (*(v67 - 4) + v68);
      v70 = *(v67 - 1);
      if (v70 > 0x400)
      {
        if (v70 > 2 * v69)
        {
          goto LABEL_90;
        }

LABEL_89:
        v61 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v132, v61);
        goto LABEL_90;
      }

      if (3 * v70 <= 4 * v69)
      {
        goto LABEL_89;
      }

LABEL_90:
      v71 = *(v61 + 20);
      if (v71 == *(v61 + 16))
      {
        WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(v61 + 8, v55);
      }

      else
      {
        v72 = *(v61 + 8);
        v73 = *v55;
        if (*v55)
        {
          atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
        }

        v74 = *(v61 + 20);
        *(v72 + 8 * v71) = v73;
        *(v61 + 20) = v74 + 1;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v66);
LABEL_93:
      ++v55;
    }

    while (v55 != v56);
    v51 = v133;
    v52 = v127;
LABEL_101:
    *&v133 = v51 + 24;
    WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v133, v49, v50);
    v51 = v133;
  }

  while (v133 != v52);
LABEL_102:
  v75 = a1;
  v76 = a1[14];
  if (v76)
  {
    v77 = *(v76 - 12);
  }

  else
  {
    v77 = 0;
  }

  v78 = v126;
  if (v132)
  {
    v79 = *(v132 - 3);
  }

  else
  {
    v79 = 0;
  }

  if (v77 == v79)
  {
    if (v76)
    {
      v80 = v76 + 24 * *(v76 - 4);
      if (v132)
      {
        goto LABEL_113;
      }

LABEL_111:
      v81 = 0;
    }

    else
    {
      v80 = 0;
      if (!v132)
      {
        goto LABEL_111;
      }

LABEL_113:
      v81 = &v132[3 * *(v132 - 1)];
    }

    v82 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1 + 14, v49, v50);
    *&v133 = v82;
    *(&v133 + 1) = v83;
    if (v80 != v82)
    {
      v85 = v82;
      while (v132)
      {
        if (WTF::equal(*v85, 0, v84))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD07154);
        }

        if (*v85 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD07174);
        }

        v86 = v132;
        if (!v132)
        {
          break;
        }

        v87 = *(v132 - 2);
        v88 = WTF::ASCIICaseInsensitiveHash::hash(*v85, v83) & v87;
        v89 = &v86[3 * v88];
        if (WTF::equal(*v89, 0, v90))
        {
LABEL_125:
          if (!v132)
          {
            break;
          }

          v89 = &v132[3 * *(v132 - 1)];
        }

        else
        {
          v91 = 1;
          while (*v89 == -1 || (WTF::equalIgnoringASCIICase(*v89, *v85, v84) & 1) == 0)
          {
            v88 = (v88 + v91) & v87;
            v89 = &v86[3 * v88];
            ++v91;
            if (WTF::equal(*v89, 0, v84))
            {
              goto LABEL_125;
            }
          }
        }

LABEL_128:
        if (v81 == v89)
        {
          goto LABEL_139;
        }

        v92 = v133;
        v93 = *(v133 + 20);
        if (v93 != *(v89 + 5))
        {
          goto LABEL_139;
        }

        if (v93)
        {
          v94 = *(v133 + 8);
          v95 = v89[1];
          if (!WTF::equal(*v94, *v95, v84))
          {
            goto LABEL_139;
          }

          v96 = 0;
          v97 = v95 + 1;
          v98 = v94 + 1;
          do
          {
            if (v93 - 1 == v96)
            {
              goto LABEL_136;
            }

            v99 = WTF::equal(v98[v96], v97[v96], v84);
            ++v96;
          }

          while ((v99 & 1) != 0);
          if (v96 < v93)
          {
LABEL_139:
            v75 = a1;
            v78 = v126;
            goto LABEL_140;
          }

LABEL_136:
          v92 = v133;
        }

        *&v133 = v92 + 24;
        WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v133, v83, v84);
        v85 = v133;
        if (v133 == v80)
        {
          goto LABEL_138;
        }
      }

      v89 = 0;
      goto LABEL_128;
    }

LABEL_138:
    v100 = v126;
  }

  else
  {
LABEL_140:
    v101 = *(v78 + 32);
    *&v133 = *(v78 + 24);
    v102 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v101 + 248), &v133);
    if (v102)
    {
      v103 = v102;
      ++*(v102 + 8);
      WebCore::NetworkStorageSession::setDomainsWithCrossPageStorageAccess();
      v104 = *(v103 + 8);
      if (!v104)
      {
LABEL_182:
        __break(0xC471u);
        JUMPOUT(0x19DD07094);
      }

      *(v103 + 8) = v104 - 1;
    }

    v105 = *(*(v78 + 32) + 40);
    if (v105)
    {
      while (1)
      {
        v106 = *v105;
        if ((*v105 & 1) == 0)
        {
          break;
        }

        v107 = *v105;
        atomic_compare_exchange_strong_explicit(v105, &v107, v106 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v107 == v106)
        {
          goto LABEL_148;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v105);
    }

LABEL_148:
    *&v133 = v75;
    while (1)
    {
      v108 = *v75;
      if ((*v75 & 1) == 0)
      {
        break;
      }

      v109 = *v75;
      atomic_compare_exchange_strong_explicit(v75, &v109, v108 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v109 == v108)
      {
        goto LABEL_151;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v75);
LABEL_151:
    *(&v133 + 1) = v75;
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v134, &v132);
    v110 = v134;
    v128 = v133;
    *(&v133 + 1) = 0;
    v134 = 0;
    v111 = WTF::fastMalloc(0x20);
    *v111 = &unk_1F1105AF8;
    *(v111 + 8) = v128;
    *(v111 + 24) = v110;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD071D4);
    }

    v112 = v111;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v115 = IPC::Encoder::operator new(0x238, v114);
    *v115 = 561;
    *(v115 + 68) = 0;
    *(v115 + 70) = 0;
    *(v115 + 69) = 0;
    *(v115 + 2) = 0;
    *(v115 + 3) = 0;
    *(v115 + 1) = 0;
    IPC::Encoder::encodeHeader(v115);
    v135 = v115;
    IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v115, &v132);
    v130 = v112;
    v131 = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v105, &v135, &v130, 0, 0);
    v116 = v130;
    v130 = 0;
    if (v116)
    {
      (*(*v116 + 8))(v116);
    }

    v117 = v135;
    v135 = 0;
    if (v117)
    {
      IPC::Encoder::~Encoder(v117, v83);
      bmalloc::api::tzoneFree(v122, v123);
    }

    v100 = v126;
    if (v134)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v134, v83);
    }

    v118 = *(&v133 + 1);
    *(&v133 + 1) = 0;
    if (v118)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v118);
    }

    if (v105)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v105);
    }
  }

  if (v132)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v132, v83);
  }

  if (v129)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v129, v83);
  }

  v119 = *(v100 + 16);
  if (!v119)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD07194);
  }

  *(v100 + 16) = v119 - 1;
  a3 = v124;
LABEL_168:
  v120 = *a3;
  *a3 = 0;
  (*(*v120 + 16))(v120);
  return (*(*v120 + 8))(v120);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::SetDomainsWithUserInteraction>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 562;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v4, *a2);
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

uint64_t WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105B20;
  v6[1] = a2;
  v6[2] = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105B48;
  v6[1] = a2;
  v6[2] = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    v3 = *a2;
    *a2 = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      ++*(v8 + 16);
      v9 = *(v8 + 32);
      v27 = *(v8 + 24);
      v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 248), &v27);
      if (v10)
      {
        v11 = v10;
        ++*(v10 + 2);
        WebCore::NetworkStorageSession::resetAppBoundDomains(v10);
        v12 = *(v11 + 2);
        if (!v12)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD077C4);
        }

        *(v11 + 2) = v12 - 1;
      }

      v13 = *(v8 + 16);
      if (!v13)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD07784);
      }

      *(v8 + 16) = v13 - 1;
      v14 = *(a1 + 16);
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          ++*(v15 + 16);
          v16 = *(v15 + 32);
          v27 = *(v15 + 24);
          v17 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v16 + 248), &v27);
          if (v17)
          {
            v18 = v17;
            ++*(v17 + 2);
            WebCore::NetworkStorageSession::resetManagedDomains(v17);
            v19 = *(v18 + 2);
            if (!v19)
            {
LABEL_30:
              __break(0xC471u);
              JUMPOUT(0x19DD07764);
            }

            *(v18 + 2) = v19 - 1;
          }

          v20 = *(v15 + 16);
          if (!v20)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD077A4);
          }

          *(v15 + 16) = v20 - 1;
        }
      }
    }
  }

  v21 = *a2;
  *a2 = 0;
  v22 = WTF::fastMalloc(0x10);
  *v22 = &unk_1F1105B70;
  v22[1] = v21;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_30;
  }

  v23 = v22;
  while (1)
  {
    v24 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v25 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_22;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_22:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F11044F0;
  v26[1] = a1;
  v26[2] = v23;
  v27 = v26;
  WTF::SuspendableWorkQueue::dispatch();
  result = v27;
  v27 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::LogTestingEvent>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 543;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
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

unsigned int *WebKit::WebResourceLoadStatisticsStore::invalidateAndCancel(WebKit::WebResourceLoadStatisticsStore *this, void *a2)
{
  result = *(this + 2);
  *(this + 2) = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105B98;
  v6[1] = v4;
  v6[2] = v5;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11044F0;
    v10[1] = a1;
    v10[2] = v7;
    v12 = v10;
    WTF::SuspendableWorkQueue::dispatch();
    result = v12;
    if (v12)
    {
      return (*(*v12 + 8))(v12);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::registrableDomains(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    v12[0] = 0;
    v12[1] = 0;
    v2 = *a2;
    *a2 = 0;
    (*(*v2 + 16))(v2, v12);
    (*(*v2 + 8))(v2);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v3);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1105BC0;
    v7[1] = v6;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
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
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F11044F0;
      v11[1] = a1;
      v11[2] = v8;
      v12[0] = v11;
      WTF::SuspendableWorkQueue::dispatch();
      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
    v2 = *a2;
    *a2 = 0;
    (*(*v2 + 16))(v2, &v12);
    result = (*(*v2 + 8))(v2);
    if (v13 == 1)
    {
      result = v12;
      if (v12)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v4);
      }
    }
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1105C10;
    v7[1] = v6;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
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
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F11044F0;
      *(v11 + 8) = a1;
      *(v11 + 16) = v8;
      v12 = v11;
      WTF::SuspendableWorkQueue::dispatch();
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

uint64_t WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    v12 = 0;
    v2 = *a2;
    *a2 = 0;
    (*(*v2 + 16))(v2, &v12);
    (*(*v2 + 8))(v2);
    result = v12;
    if (v12)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v3);
    }
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1105C60;
    v7[1] = v6;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
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
      *v11 = &unk_1F11044F0;
      *(v11 + 8) = a1;
      *(v11 + 16) = v8;
      v12 = v11;
      WTF::SuspendableWorkQueue::dispatch();
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

uint64_t WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithWebsiteData(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0)
  {
    ++*(v3 + 16);
    result = WebKit::NetworkSession::registrableDomainsWithWebsiteData(v3, a2, a3);
    v5 = *(v3 + 16);
    if (v5)
    {
      *(v3 + 16) = v5 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v8 = 0;
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, &v8);
    (*(*v6 + 8))(v6);
    result = v8;
    if (v8)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v7);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1105CB0;
  v4[1] = v3;
  v6 = v4;
  WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::suspend()
{
  WebKit::sharedStatisticsQueue(&v4);
  v0 = WTF::fastMalloc(0x10);
  *v0 = &unk_1F10EB420;
  v0[1] = WebKit::ResourceLoadStatisticsStore::interruptAllDatabases;
  v3 = v0;
  WTF::SuspendableWorkQueue::suspend();
  result = v3;
  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  v2 = v4;
  v4 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 32));
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::resume(WebKit::WebResourceLoadStatisticsStore *this)
{
  WebKit::sharedStatisticsQueue(&v3);
  result = WTF::SuspendableWorkQueue::resume(v3);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v2 + 4);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, uint64_t *a7)
{
  WebCore::RegistrableDomain::isolatedCopy(&v25);
  *v26 = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v13 = *a7;
  *a7 = 0;
  v27 = v13;
  v14 = WTF::fastMalloc(0x20);
  v15 = v25;
  *v14 = &unk_1F1105D28;
  *(v14 + 8) = v15;
  *(v14 + 16) = *v26;
  *(v14 + 19) = *&v26[3];
  v16 = v27;
  v25 = 0;
  v27 = 0;
  *(v14 + 24) = v16;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v17 = v14;
    while (1)
    {
      v18 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v19 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v20 = WTF::fastMalloc(0x18);
    *v20 = &unk_1F11044F0;
    v20[1] = a1;
    v20[2] = v17;
    v28 = v20;
    WTF::SuspendableWorkQueue::dispatch();
    v22 = v28;
    v28 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v27;
    v27 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::recordFrameLoadForStorageAccess(uint64_t *a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  WTF::WallTime::now(a1);
  v10 = v9;
  v11 = *a4;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  if (a3)
  {
    if (a3 == -1)
    {
LABEL_42:
      __break(0xC471u);
      JUMPOUT(0x19DD083B4);
    }
  }

  else if (WTF::equal(v11, 0, v8))
  {
    goto LABEL_42;
  }

  v12 = a1[17];
  v27 = a2;
  if (v12 || (WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::expand(a1 + 17, 0), (v12 = a1[17]) != 0))
  {
    v13 = *(v12 - 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>::hash(a3, v11);
  v16 = 0;
  for (i = 1; ; ++i)
  {
    v18 = v14 & v13;
    v19 = v12 + 40 * (v14 & v13);
    v20 = *v19;
    if (*v19)
    {
      goto LABEL_14;
    }

    if (WTF::equal(*(v19 + 8), 0, v15))
    {
      break;
    }

    v20 = *v19;
LABEL_14:
    if (v20 == -1)
    {
      v16 = v12 + 40 * v18;
    }

    else if (v20 == a3)
    {
      result = WTF::equalIgnoringASCIICase(*(v19 + 8), v11, v15);
      if (result)
      {
        goto LABEL_32;
      }
    }

    v14 = i + v18;
  }

  if (v16)
  {
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = xmmword_19E703B20;
    --*(a1[17] - 16);
    v19 = v16;
  }

  *v19 = a3;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  result = *(v19 + 8);
  *(v19 + 8) = v11;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v21);
  }

  *(v19 + 16) = v27;
  *(v19 + 24) = 0x7FF8000000000000;
  *(v19 + 32) = v10;
  v23 = a1[17];
  if (v23)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v25 = (*(v23 - 16) + v24);
  v26 = *(v23 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_31:
      result = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::expand(a1 + 17, v19);
      v19 = result;
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_31;
  }

LABEL_32:
  *(v19 + 32) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v11, v21);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(uint64_t result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v4 = (result + 136);
  v3 = *(result + 136);
  if (!v3)
  {
    return result;
  }

  v5 = *(v3 - 4);
  if (!v5)
  {
LABEL_19:
    v12 = 6 * *(v3 - 12);
    v13 = *(v3 - 4);
    if (v12 < v13 && v13 >= 9)
    {

      return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::shrinkToBestSize(v4);
    }

    return result;
  }

  v7 = 0;
  v8 = v3 + 40 * v5 - 40;
  do
  {
    v9 = *v8;
    if (!*v8)
    {
      result = WTF::equal(*(v8 + 8), 0, a3);
      if (result)
      {
        goto LABEL_13;
      }

      v9 = *v8;
    }

    if (v9 != -1 && v9 == a2)
    {
      result = *(v8 + 8);
      *(v8 + 8) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      *v8 = -1;
      ++v7;
    }

LABEL_13:
    v8 -= 40;
    --v5;
  }

  while (v5);
  v3 = *v4;
  if (v7)
  {
    v11 = *(v3 - 12) - v7;
    *(v3 - 16) += v7;
    *(v3 - 12) = v11;
    goto LABEL_19;
  }

  if (v3)
  {
    goto LABEL_19;
  }

  return result;
}

void WebKit::WebCookieManager::~WebCookieManager(WebKit::WebCookieManager *this, void *a2)
{
  *this = &unk_1F1104380;
  *(this + 1) = &unk_1F11043C8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
}

{
  WebKit::WebCookieManager::~WebCookieManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::WebCookieManager::~WebCookieManager(WebKit::WebCookieManager *this, void *a2)
{
  WebKit::WebCookieManager::~WebCookieManager((this - 8), a2);
}

{
  WebKit::WebCookieManager::~WebCookieManager((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebCookieManager::ref(uint64_t this)
{
  v1 = *(*(this + 24) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebCookieManager::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebCookieManager::deref(WebKit::WebCookieManager *this)
{
  result = *(*(this + 3) + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 144), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 144));
      return (*(*result + 24))();
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_uint **WebKit::WebCookieManager::getHostnamesWithCookies(uint64_t a1, atomic_uint *a2, uint64_t *a3)
{
  v13 = 0;
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_15;
  }

  atomic_fetch_add((v3 + 144), 1u);
  v12[0] = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), v12);
  v6 = v5;
  if (v5)
  {
    ++*(v5 + 8);
  }

  if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) != 1)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  atomic_store(1u, (v3 + 144));
  (*(*v3 + 24))(v3);
  if (v6)
  {
LABEL_6:
    WebCore::NetworkStorageSession::getHostnamesWithCookies();
    v7 = *(v6 + 8);
    if (v7)
    {
      *(v6 + 8) = v7 - 1;
      goto LABEL_8;
    }

    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19DD08A5CLL);
  }

LABEL_8:
  v12[0] = 0;
  v12[1] = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(v12, &v13);
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8, v12);
  (*(*v8 + 8))(v8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v9);
  result = v13;
  if (v13)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v10);
  }

  return result;
}

uint64_t WebKit::WebCookieManager::deleteCookiesForHostnames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v4 + 144), 1u);
  v12 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v12);
  v7 = v6;
  if (v6)
  {
    ++*(v6 + 8);
  }

  if (atomic_fetch_add((v4 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 144));
    (*(*v4 + 24))(v4);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    result = WebCore::NetworkStorageSession::deleteCookiesForHostnames();
    v9 = *(v7 + 8);
    if (v9)
    {
      *(v7 + 8) = v9 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD08BFCLL);
  }

  v10 = *a4;
  *a4 = 0;
  (*(*v10 + 16))(v10);
  v11 = *(*v10 + 8);

  return v11(v10);
}

uint64_t WebKit::WebCookieManager::deleteAllCookies(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v3 + 144), 1u);
  v11 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v11);
  v6 = v5;
  if (v5)
  {
    ++*(v5 + 8);
  }

  if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 144));
    (*(*v3 + 24))(v3);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
LABEL_6:
    result = WebCore::NetworkStorageSession::deleteAllCookies();
    v8 = *(v6 + 8);
    if (v8)
    {
      *(v6 + 8) = v8 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD08D88);
  }

  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9);
  v10 = *(*v9 + 8);

  return v10(v9);
}

uint64_t WebKit::WebCookieManager::deleteCookie(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v4 + 144), 1u);
  v12 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v12);
  v7 = v6;
  if (v6)
  {
    ++*(v6 + 8);
  }

  if (atomic_fetch_add((v4 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 144));
    (*(*v4 + 24))(v4);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    result = WebCore::NetworkStorageSession::deleteCookie();
    v9 = *(v7 + 8);
    if (v9)
    {
      *(v7 + 8) = v9 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD08F28);
  }

  v10 = *a4;
  *a4 = 0;
  (*(*v10 + 16))(v10);
  v11 = *(*v10 + 8);

  return v11(v10);
}

uint64_t WebKit::WebCookieManager::deleteAllCookiesModifiedSince(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v3 + 144), 1u);
  v11 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v11);
  v6 = v5;
  if (v5)
  {
    ++*(v5 + 8);
  }

  if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 144));
    (*(*v3 + 24))(v3);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
LABEL_6:
    result = WebCore::NetworkStorageSession::deleteAllCookiesModifiedSince();
    v8 = *(v6 + 8);
    if (v8)
    {
      *(v6 + 8) = v8 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD090C8);
  }

  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9);
  v10 = *(*v9 + 8);

  return v10(v9);
}

uint64_t WebKit::WebCookieManager::getAllCookies(uint64_t a1, WTF *a2, uint64_t *a3)
{
  v19 = 0;
  v20 = 0;
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  atomic_fetch_add((v3 + 144), 1u);
  v17 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v17);
  v6 = v5;
  if (v5)
  {
    ++*(v5 + 8);
  }

  if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 144));
    (*(*v3 + 24))(v3);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    WebCore::NetworkStorageSession::getAllCookies(&v17, v6);
    v8 = v19;
    if (HIDWORD(v20))
    {
      v9 = 144 * HIDWORD(v20);
      v10 = v19;
      do
      {
        WebCore::Cookie::~Cookie(v10, v7);
        v10 = (v11 + 144);
        v9 -= 144;
      }

      while (v9);
    }

    if (v8)
    {
      WTF::fastFree(v8, v7);
    }

    v19 = v17;
    v12 = v18;
    v17 = 0;
    v18 = 0;
    v20 = v12;
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v7);
    v13 = *(v6 + 2);
    if (v13)
    {
      *(v6 + 2) = v13 - 1;
      goto LABEL_13;
    }

    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19DD09298);
  }

LABEL_13:
  v14 = *a3;
  *a3 = 0;
  (*(*v14 + 16))(v14, &v19);
  (*(*v14 + 8))(v14);
  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v15);
}

uint64_t WebKit::WebCookieManager::getCookies(uint64_t a1, WTF *a2, const WTF::URL *a3, uint64_t *a4)
{
  v21 = 0;
  v22 = 0;
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  atomic_fetch_add((v4 + 144), 1u);
  v19 = a2;
  v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v19);
  v8 = v7;
  if (v7)
  {
    ++*(v7 + 8);
  }

  if (atomic_fetch_add((v4 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 144));
    (*(*v4 + 24))(v4);
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v7)
  {
LABEL_6:
    WebCore::NetworkStorageSession::getCookies(&v19, v8, a3);
    v10 = v21;
    if (HIDWORD(v22))
    {
      v11 = 144 * HIDWORD(v22);
      v12 = v21;
      do
      {
        WebCore::Cookie::~Cookie(v12, v9);
        v12 = (v13 + 144);
        v11 -= 144;
      }

      while (v11);
    }

    if (v10)
    {
      WTF::fastFree(v10, v9);
    }

    v21 = v19;
    v14 = v20;
    v19 = 0;
    v20 = 0;
    v22 = v14;
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v9);
    v15 = *(v8 + 2);
    if (v15)
    {
      *(v8 + 2) = v15 - 1;
      goto LABEL_13;
    }

    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19DD09478);
  }

LABEL_13:
  v16 = *a4;
  *a4 = 0;
  (*(*v16 + 16))(v16, &v21);
  (*(*v16 + 8))(v16);
  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v17);
}

uint64_t WebKit::WebCookieManager::setCookie(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 24) + 8);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_17;
  }

  atomic_fetch_add((v5 + 144), 1u);
  *v20 = a2;
  v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 248), v20);
  v12 = v11;
  if (v11)
  {
    ++*(v11 + 8);
  }

  if (atomic_fetch_add((v5 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v5 + 144));
    (*(*v5 + 24))(v5);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
LABEL_6:
    v13 = *(a3 + 3);
    if (v13)
    {
      v14 = *a3;
      v15 = 144 * v13;
      do
      {
        WebCore::NetworkStorageSession::setCookie();
        v14 += 144;
        v15 -= 144;
      }

      while (v15);
    }

    WebCore::NetworkStorageSession::setCookiesVersion(v12);
    v16 = *(v12 + 2);
    if (v16)
    {
      *(v12 + 2) = v16 - 1;
      goto LABEL_14;
    }

    __break(0xC471u);
LABEL_17:
    JUMPOUT(0x19DD096C4);
  }

  v17 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    *v20 = 134218496;
    *&v20[4] = a1;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a2;
    _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - WebCookieManager::setCookie failed to set cookies and version (%llu) for session %llu", v20, 0x20u);
  }

LABEL_14:
  v18 = *a5;
  *a5 = 0;
  (*(*v18 + 16))(v18);
  return (*(*v18 + 8))(v18);
}

uint64_t WebKit::WebCookieManager::setCookies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *(*(a1 + 24) + 8);
  if (!v6)
  {
    __break(0xC471u);
    goto LABEL_15;
  }

  atomic_fetch_add((v6 + 144), 1u);
  v14 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), &v14);
  v9 = v8;
  if (v8)
  {
    ++*(v8 + 8);
  }

  if (atomic_fetch_add((v6 + 144), 0xFFFFFFFF) != 1)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  atomic_store(1u, (v6 + 144));
  (*(*v6 + 24))(v6);
  if (v9)
  {
LABEL_6:
    WebCore::NetworkStorageSession::setCookies();
    v10 = *(v9 + 8);
    if (v10)
    {
      *(v9 + 8) = v10 - 1;
      goto LABEL_8;
    }

    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19DD09864);
  }

LABEL_8:
  v11 = *a6;
  *a6 = 0;
  (*(*v11 + 16))(v11);
  v12 = *(*v11 + 8);

  return v12(v11);
}

_DWORD *WebKit::WebCookieManager::startObservingCookieChanges(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 8);
  if (!v2)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v2 + 144), 1u);
  v10 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v2 + 248), &v10);
  v6 = result;
  if (result)
  {
    ++result[2];
  }

  if (atomic_fetch_add((v2 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 144));
    result = (*(*v2 + 24))(v2);
  }

  if (v6)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1 + 8);
    v7 = *(a1 + 16);
    atomic_fetch_add(v7, 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F1105D50;
    v8[1] = v7;
    v8[2] = a2;
    v10 = v8;
    WebCore::startObservingCookieChanges();
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v9 = v6[2];
    if (v9)
    {
      v6[2] = v9 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD099FCLL);
  }

  return result;
}

uint64_t WebKit::WebCookieManager::stopObservingCookieChanges(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 8);
  if (!v2)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  atomic_fetch_add((v2 + 144), 1u);
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v2 + 248), &v7);
  v5 = result;
  if (result)
  {
    ++*(result + 8);
  }

  if (atomic_fetch_add((v2 + 144), 0xFFFFFFFF) != 1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  atomic_store(1u, (v2 + 144));
  result = (*(*v2 + 24))(v2);
  if (v5)
  {
LABEL_6:
    result = WebCore::stopObservingCookieChanges(v5, v4);
    v6 = *(v5 + 2);
    if (v6)
    {
      *(v5 + 2) = v6 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19DD09B0CLL);
  }

  return result;
}

uint64_t WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13) = 67109376;
    HIDWORD(v13) = a3;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebCookieManager::setHTTPCookieAcceptPolicy set policy %d for session %llu", &v13, 0x12u);
  }

  v9 = *(*(a1 + 24) + 8);
  if (v9)
  {
    atomic_fetch_add((v9 + 144), 1u);
    v10 = *a4;
    *a4 = 0;
    v11 = WTF::fastMalloc(0x20);
    *v11 = &unk_1F1105D78;
    *(v11 + 8) = a3;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v13 = v11;
    WebKit::WebCookieManager::platformSetHTTPCookieAcceptPolicy(a1, a2, a3, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebCookieManager::getHTTPCookieAcceptPolicy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 24) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add((v3 + 144), 1u);
  v13 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v13);
  v6 = v5;
  if (v5)
  {
    ++*(v5 + 8);
  }

  if (atomic_fetch_add((v3 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 144));
    (*(*v3 + 24))(v3);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
LABEL_6:
    v7 = WebCore::NetworkStorageSession::cookieAcceptPolicy(v6);
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, v7);
    result = (*(*v8 + 8))(v8);
    v10 = *(v6 + 2);
    if (v10)
    {
      *(v6 + 2) = v10 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DD09E74);
  }

  v11 = *a3;
  *a3 = 0;
  (*(*v11 + 16))(v11, 1);
  v12 = *(*v11 + 8);

  return v12(v11);
}

uint64_t WebKit::LegacyCustomProtocolManager::ref(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::LegacyCustomProtocolManager::ref(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::LegacyCustomProtocolManager::deref(WebKit::LegacyCustomProtocolManager *this)
{
  result = *(this + 3);
  if (result)
  {
    if (atomic_fetch_add((result + 144), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 144));
      return (*(*result + 24))();
    }
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::LegacyCustomProtocolManager::initialize(WebKit::LegacyCustomProtocolManager *this, const WebKit::NetworkProcessCreationParameters *a2)
{
  result = WTF::isIntegralOrPointerType(this);
  v5 = *(a2 + 13);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = 8 * v5;
    do
    {
      result = WebKit::LegacyCustomProtocolManager::registerScheme(this, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t WebKit::LegacyCustomProtocolManager::addCustomProtocol(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = (a1 + 40);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 40), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 40);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RetainPtr<WKCustomProtocol>>((a1 + 32), &IdentifierInternal, a2, &v8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  return IdentifierInternal;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RetainPtr<WKCustomProtocol>>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD0A228);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v23 = 0;
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_25;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*a1 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *a3;
  *a3 = 0;
  v20 = v15[1];
  v15[1] = v19;
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *a1;
  if (*a1)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v25 = (*(v21 - 16) + v22);
  v26 = *(v21 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_21:
      v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
      v21 = *a1;
      if (*a1)
      {
        v26 = *(v21 - 4);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_21;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
}

void WebKit::LegacyCustomProtocolManager::removeCustomProtocol(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v9 = a2;
  v4 = (a1 + 40);
  atomic_compare_exchange_strong_explicit((a1 + 40), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](a1 + 40);
  }

  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), &v9);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
    if (v7 == v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = 0;
  }

  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 32), v5);
  }

LABEL_10:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }
}

uint64_t WebKit::LegacyCustomProtocolManager::startLoading(uint64_t a1, uint64_t a2, WebCore::ResourceRequest *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v7 = *(v3 + 24);
    v6 = v3 + 24;
    v8 = (*(v7 + 56))(v6);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 114;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v15 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v10, a3);
    (*(*v6 + 32))(v6, &v15, 0);
    result = v15;
    v15 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::LegacyCustomProtocolManager::stopLoading(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = IPC::Encoder::operator new(0x238, a2);
    *v4 = 115;
    *(v4 + 68) = 0;
    *(v4 + 70) = 0;
    *(v4 + 69) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    IPC::Encoder::encodeHeader(v4);
    v9 = v4;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, a2);
    (*(*(v2 + 24) + 32))(v2 + 24, &v9, 0);
    result = v9;
    v9 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v5);
      return bmalloc::api::tzoneFree(v7, v8);
    }
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::Download::operator new(WebKit::Download *this, void *a2)
{
  if (this == 456 && WebKit::Download::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::Download::s_heapRef, a2);
  }

  else
  {
    return WebKit::Download::operatorNewSlow(this);
  }
}

uint64_t WebKit::Download::Download(uint64_t a1, WebKit::DownloadManager *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F11044A0;
  *(a1 + 8) = 0;
  ++*a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  v5 = *(a2 + 1);
  if (v5)
  {
    (**v5)(*(a2 + 1));
    *(a1 + 40) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    while (1)
    {
      v10 = *(a4 + 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(a4 + 8);
      atomic_compare_exchange_strong_explicit((a4 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a4 + 8));
LABEL_7:
    *(a1 + 72) = a4;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 105) = 0u;
    *(a1 + 160) = *(a5 + 24);
    *(a1 + 168) = 0;
    WebKit::DownloadMonitor::DownloadMonitor((a1 + 176), a1);
    *(a1 + 440) = *(a5 + 720);
    *(a1 + 448) = 0;
    WebKit::DownloadManager::didCreateDownload(a2);
    return a1;
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::Download::Download(uint64_t a1, WebKit::DownloadManager *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F11044A0;
  *(a1 + 8) = 0;
  ++*a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  v5 = *(a2 + 1);
  if (v5)
  {
    (**v5)(*(a2 + 1));
    *(a1 + 40) = v5;
    v10 = 0uLL;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = a4;
    if (a4)
    {
      CFRetain(a4);
      v10 = 0uLL;
    }

    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 88) = v10;
    *(a1 + 104) = v10;
    *(a1 + 120) = 0;
    *(a1 + 160) = *(a5 + 24);
    *(a1 + 168) = 0;
    WebKit::DownloadMonitor::DownloadMonitor((a1 + 176), a1);
    *(a1 + 440) = *(a5 + 720);
    *(a1 + 448) = 0;
    WebKit::DownloadManager::didCreateDownload(a2);
    return a1;
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

void WebKit::Download::~Download(WebKit::Download *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
  }

  [*(this + 11) cancel];
  v3 = *(this + 3);
  if (v3)
  {
    ++*v3;
    WebKit::DownloadManager::didDestroyDownload(v3);
    if (!*v3)
    {
      goto LABEL_52;
    }

    --*v3;
  }

  v4 = *(this + 56);
  *(this + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 47) = &unk_1F10EB388;
  v5 = *(this + 53);
  *(this + 53) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WebCore::TimerBase::~TimerBase((this + 376));
  v7 = *(this + 52);
  v8 = *(this + 23);
  v9 = *(this + 24);
  v10 = v9 - v8;
  if (v9 >= v8)
  {
    v11 = v7 >= v8;
    v12 = v7 - v8;
    if (!v11 || v10 != -1 && v12 < v10)
    {
      goto LABEL_49;
    }
  }

  else if (v9 > v7 || v7 < v8)
  {
LABEL_49:
    __break(1u);
    goto LABEL_52;
  }

  v13 = *(this + 25);
  if ((this + 216) != v13 && v13)
  {
    *(this + 25) = 0;
    *(this + 52) = 0;
    WTF::fastFree(v13, v6);
  }

  v14 = *(this + 22);
  *(this + 22) = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v6);
  }

  v15 = *(this + 14);
  *(this + 14) = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 13);
  *(this + 13) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 12);
  *(this + 12) = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 11);
  *(this + 11) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 10);
  *(this + 10) = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 9);
  *(this + 9) = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v20 + 8));
  }

  v21 = *(this + 8);
  *(this + 8) = 0;
  if (v21)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v21);
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v6);
  v23 = *(this + 5);
  *(this + 5) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 3);
  if (v24)
  {
    if (*v24)
    {
      --*v24;
      goto LABEL_41;
    }

LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x19DD0AA38);
  }

LABEL_41:
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD0AA58);
  }

  v25 = *(this + 1);
  if (v25)
  {
    *(v25 + 8) = 0;
    v26 = *(this + 1);
    *(this + 1) = 0;
    if (v26)
    {
      if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v26);
        WTF::fastFree(v26, v22);
      }
    }
  }
}

{
  WebKit::Download::~Download(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::Download::cancel(uint64_t a1, uint64_t *a2, char a3)
{
  if (WTF::isMainRunLoop(a1))
  {
    *(a1 + 169) = a3;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v6 = *(a1 + 8);
    atomic_fetch_add(v6, 1u);
    v7 = *a2;
    *a2 = 0;
    v14 = v6;
    v15 = v7;
    v8 = *(a1 + 72);
    if (v8)
    {
      (*(*v8 + 16))(v8);
      WebKit::Download::cancel(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&,WebKit::Download::IgnoreDidFailCallback)::$_0::operator()(&v14);
      v10 = v15;
      v15 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    else
    {
      v11 = WTF::fastMalloc(0x18);
      v13 = v11;
      v14 = 0;
      *v11 = &unk_1F1105DA0;
      v11[1] = v6;
      v11[2] = v7;
      WebKit::Download::platformCancelNetworkLoad(a1, &v13);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v15 = 0;
    }

    result = v14;
    v14 = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);

      return WTF::fastFree(result, v9);
    }
  }

  else
  {
    result = 99;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::Download::cancel(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&,WebKit::Download::IgnoreDidFailCallback)::$_0::operator()(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  a1[1] = 0;
  (*(*v2 + 16))(v2);
  result = (*(*v2 + 8))(v2);
  if (*a1)
  {
    v4 = *(*a1 + 8);
    if (v4)
    {
      ++*(v4 + 16);
      if (*(v4 + 169) == 1)
      {
        v5 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(v4 + 32);
          v10 = 134218240;
          v11 = v4;
          v12 = 2048;
          v13 = v6;
          _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - Download::didCancel: (id = %llu)", &v10, 0x16u);
        }

        v7 = *(v4 + 64);
        *(v4 + 64) = 0;
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

        v9 = *(v4 + 24);
        if (v9)
        {
          ++*v9;
          WebKit::DownloadManager::downloadFinished(v9, v4);
          if (!*v9)
          {
            result = 290;
            __break(0xC471u);
            return result;
          }

          --*v9;
        }
      }

      return WTF::RefCounted<WebKit::Download>::deref((v4 + 16));
    }
  }

  return result;
}

uint64_t WebKit::Download::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *this, uint64_t *a3)
{
  v6 = WebCore::AuthenticationChallengeBase::protectionSpace(this);
  if (!WebCore::ProtectionSpaceBase::isPasswordBased(v6) || (v7 = WebCore::AuthenticationChallengeBase::proposedCredential(this), (WebCore::Credential::isEmpty(v7) & 1) != 0) || WebCore::AuthenticationChallengeBase::previousFailureCount(this))
  {
    WebKit::DownloadManager::Client::protectedDownloadsAuthenticationManager(*(a1 + 40), &v13);
    v8 = v13;
    result = WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v13, a1, this, a3);
    if (v8)
    {

      return WebKit::AuthenticationManager::deref(v8);
    }
  }

  else
  {
    v10 = WebCore::AuthenticationChallengeBase::proposedCredential(this);
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, 0, v10);
    v12 = *(*v11 + 8);

    return v12(v11);
  }

  return result;
}

IPC::Encoder *WebKit::Download::didCreateDestination(WebKit::Download *this, const WTF::String *a2)
{
  v4 = (*(*this + 56))(this);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 9;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
  (*(*this + 32))(this, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::Download::didReceiveData(WebKit::Download *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(this + 168) & 1) == 0)
  {
    v8 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 4);
      *v18 = 134218496;
      *&v18[4] = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - Download::didReceiveData: Started receiving data (id = %llu, expected length = %llu)", v18, 0x20u);
    }

    *(this + 168) = 1;
  }

  v10 = *(*(this + 22) + 8);
  if (v10)
  {
    ++*(v10 + 16);
    WebKit::DownloadMonitor::downloadReceivedBytes(this + 176, a2);
    WebKit::DownloadMonitor::deref((this + 176));
    WebKit::Download::updateProgress(this, a3, a4);
    v11 = (*(*this + 56))(this);
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 13;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = v11;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    IPC::Encoder::encodeHeader(v13);
    *v18 = v13;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a4);
    (*(*this + 32))(this, v18, 0);
    result = *v18;
    *v18 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v14);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::Download::didFinish(WebKit::Download *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 4);
    *v7 = 134218240;
    *&v7[4] = this;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - Download::didFinish: (id = %llu)", v7, 0x16u);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v4 = *(this + 1);
  atomic_fetch_add(v4, 1u);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1105DC8;
  v5[1] = v4;
  *v7 = v5;
  WebKit::Download::platformDidFinish(this, v7);
  result = *v7;
  *v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::Download::didFail(uint64_t result, uint64_t a2, char *a3, WTF *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(result + 169) & 1) == 0)
  {
    v7 = result;
    v8 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 4);
      v10 = *(a2 + 60);
      v11 = v10 == 4;
      v12 = v10 == 3;
      MEMORY[0x19EB12BA0](a2);
      v13 = *(a2 + 56);
      *buf = 134219008;
      *&buf[4] = v7;
      *v28 = 2048;
      *&v28[2] = v9;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - Download::didFail: (id = %llu, isTimeout = %d, isCancellation = %d, errCode = %d)", buf, 0x28u);
    }

    WebKit::Download::updateResumeDataWithPlaceholderURL(*(v7 + 12), a3, a4, buf);
    v14 = *buf;
    v15 = *v28;
    v16 = (*(*v7 + 56))(v7);
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 10;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v16;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v26 = v18;
    IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v18, a2);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v18, v14, v15);
    (*(*v7 + 32))(v7, &v26, 0);
    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v19);
      bmalloc::api::tzoneFree(v24, v25);
    }

    v21 = *(v7 + 8);
    *(v7 + 8) = 0;
    if (v21)
    {
      v22 = *(v21 + 2) - 1;
      *(v21 + 2) = v22;
      if (!v22)
      {
        *(*(v21 + 1) + 8) = 0;
        sandbox_extension_release();
      }

      WTF::RefCounted<WebKit::SandboxExtension>::deref(v21);
    }

    v23 = *(v7 + 3);
    if (v23)
    {
      ++*v23;
      WebKit::DownloadManager::downloadFinished(v23, v7);
      if (!*v23)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      --*v23;
    }

    result = *buf;
    if (*buf)
    {
      memset(buf, 0, sizeof(buf));
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

uint64_t WebKit::Download::messageSenderConnection(WebKit::Download *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  ++*v1;
  result = WebKit::DownloadManager::downloadProxyConnection(v1);
  if (*v1)
  {
    --*v1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void WebKit::LegacyCustomProtocolManager::~LegacyCustomProtocolManager(WebKit::LegacyCustomProtocolManager *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104410;
  *(this + 1) = &unk_1F1104458;
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = (v5 + 16);
  if (atomic_load(v6))
  {
    atomic_fetch_add(v6, 0xFFFFFFFF);
LABEL_8:
    *(this + 1) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
    return;
  }

  __break(0xC471u);
}

{
  *this = &unk_1F1104410;
  *(this + 1) = &unk_1F1104458;
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    v6 = (v5 + 16);
    if (!atomic_load(v6))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);

  bmalloc::api::tzoneFree(this, v8);
}

void non-virtual thunk toWebKit::LegacyCustomProtocolManager::~LegacyCustomProtocolManager(WebKit::LegacyCustomProtocolManager *this, WTF::StringImpl *a2)
{
  *(this - 1) = &unk_1F1104410;
  *this = &unk_1F1104458;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    v6 = (v5 + 16);
    if (!atomic_load(v6))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  *this = &unk_1F10EA5E0;

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = (this - 8);
  *(this - 1) = &unk_1F1104410;
  *this = &unk_1F1104458;
  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    v7 = (v6 + 16);
    if (!atomic_load(v7))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v7, 0xFFFFFFFF);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  bmalloc::api::tzoneFree(v3, v9);
}

WTF::StringImpl **std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 55);
    *(v2 + 55) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v2 + 54);
    *(v2 + 54) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase((v2 + 8), a2);

    return WTF::fastFree(v2, v6);
  }

  return result;
}

void *WebCore::RegistrableDomain::RegistrableDomain(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 && *(v3 + 4))
  {
    *a2 = 0;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v5;
  }

  *a1 = v3;
  return a1;
}

WTF *WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor::isolatedCopy(void *a1, _DWORD *a2)
{
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1, a2);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1 + 2, a2 + 4);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1 + 4, a2 + 8);

  return WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1 + 6, a2 + 12);
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(void *a1, _DWORD *a2)
{
  v4 = a2[3];
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      WebCore::RegistrableDomain::isolatedCopy(&v12);
      v8 = v12;
      v12 = 0;
      v9 = *v5;
      *v5 = v8;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      v10 = v12;
      v12 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  *a1 = 0;
  a1[1] = 0;
  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
}

void WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor::~RegistrableDomainsToDeleteOrRestrictWebsiteDataFor(WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, v3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v4);

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, v5);
}

uint64_t WebKit::RegistrableDomainsToBlockCookiesFor::isolatedCopy(void *a1, uint64_t a2)
{
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1, a2);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1 + 2, (a2 + 16));
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a1 + 4, (a2 + 32));

  return WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(a1 + 6, (a2 + 48), v4);
}

uint64_t WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(uint64_t *a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v17[0] = result;
  v17[1] = v6;
  v7 = *a2;
  if (*a2)
  {
    v8 = v7 + 24 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      WebCore::RegistrableDomain::isolatedCopy(v16);
      v10 = v16[0];
      v16[0] = 0;
      v11 = *v17[0];
      *v17[0] = v10;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = v16[0];
      v16[0] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(v16, (v17[0] + 8));
      WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v17[0] + 8, v16);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v13);
      v17[0] += 24;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v17, v14, v15);
      result = v17[0];
    }

    while (v17[0] != v8);
    v7 = *a2;
  }

  *a2 = 0;
  *a1 = v7;
  return result;
}

uint64_t WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String>(WTF::StringBuilder *a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a2;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a3;
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(a1, v8, &v7);
  }

  return result;
}

uint64_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(WTF::StringBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a1 + 1);
  if ((v6 || (v6 = *a1) != 0) && (*(v6 + 16) & 4) == 0 || v5 && (*(v5 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (result)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = *a3;

      return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v12, v13, v14, v15);
    }
  }

  else
  {
    result = MEMORY[0x19EB01170]();
    if (result)
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      v11 = *a3;

      return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v8, v9, v10, v11);
    }
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint64_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5)
{
  if (a4 < 0x40)
  {
    v5 = result;
  }

  else
  {
    v5 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v6 = 0uLL;
    v7 = result;
    do
    {
      v16.val[0] = *a3;
      v8 = a3[1];
      v17.val[0] = a3[2];
      v9 = a3[3];
      a3 += 4;
      v10 = v9;
      v17.val[1] = 0uLL;
      v18.val[0] = v8;
      v16.val[1] = 0uLL;
      v11 = v7;
      vst2q_s8(v11, v16);
      v11 += 32;
      v18.val[1] = 0uLL;
      vst2q_s8(v11, v18);
      v12 = v7 + 64;
      vst2q_s8(v12, v17);
      v13 = v7 + 96;
      vst2q_s8(v13, *(&v6 - 1));
      v7 += 128;
    }

    while (v7 != v5);
  }

  while (v5 != (result + 2 * a4))
  {
    v14 = a3->u8[0];
    a3 = (a3 + 1);
    *v5 = v14;
    v5 = (v5 + 2);
  }

  if (a2 < a4)
  {
    __break(1u);
  }

  else
  {
    v15 = a5;
    return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v15, result + 2 * a4);
  }

  return result;
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a1;
    v6 = 312 * v4;
    do
    {
      WebCore::PrivateClickMeasurement::isolatedCopy();
      WebCore::PrivateClickMeasurement::operator=(v5, v9);
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v9, v7);
      v5 += 312;
      v6 -= 312;
    }

    while (v6);
  }

  *a2 = 0;
  a2[1] = 0;
  return WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a2, a1);
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

int8x16_t std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,false>(uint64_t a1, WTF::StringImpl *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 8);
  v9 = (a2 - 16);
  v10 = (a2 - 24);
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 3;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)((v11 + 8), v11);
        v50 = (*a3)(v8, (v11 + 8));
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = *(v11 + 8);
          *(v11 + 8) = v51;
          if (!(*a3)(v8, (v11 + 8)))
          {
            return result;
          }

          v51 = *(v11 + 8);
          *(v11 + 8) = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = *(v11 + 8);
        *(v11 + 8) = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)((v11 + 8), v11);
        v55 = (*a3)((v11 + 16), (v11 + 8));
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = *(v11 + 16);
            *(v11 + 16) = v56;
          }

          else
          {
            *v11 = *(v11 + 8);
            *(v11 + 8) = v56;
            if ((*a3)((v11 + 16), (v11 + 8)))
            {
              *(v11 + 8) = vextq_s8(*(v11 + 8), *(v11 + 8), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 8) = vextq_s8(*(v11 + 8), *(v11 + 8), 8uLL);
          if ((*a3)((v11 + 8), v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, (v11 + 16)))
        {
          return result;
        }

        v58 = *(v11 + 16);
        *(v11 + 16) = *v8;
        *v8 = v58;
        if (!(*a3)((v11 + 16), (v11 + 8)))
        {
          return result;
        }

        *(v11 + 8) = vextq_s8(*(v11 + 8), *(v11 + 8), 8uLL);
LABEL_104:
        if ((*a3)((v11 + 8), v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,0>(v11, (v11 + 8), (v11 + 16), (v11 + 24), a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,WTF::String*>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = (v11 + 8 * (v14 >> 1));
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16((v11 + 8 * (v14 >> 1)), v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, (a1 + 8));
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = *(a1 + 8);
        if (v29)
        {
          *(a1 + 8) = *v9;
          goto LABEL_39;
        }

        *(a1 + 8) = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, (a1 + 8)))
        {
          v32 = *(a1 + 8);
          *(a1 + 8) = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, (a1 + 16));
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = *(a1 + 16);
        if (v34)
        {
          *(a1 + 16) = *v10;
          goto LABEL_48;
        }

        *(a1 + 16) = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, (a1 + 16)))
        {
          v37 = *(a1 + 16);
          *(a1 + 16) = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, (v11 + 8 * (v14 >> 1)));
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 8), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:sn200100]<std::_RangeAlgPolicy,WTF::String *,BOOL (*&)(WTF::String const&,WTF::String const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:sn200100]<std::_RangeAlgPolicy,WTF::String *,BOOL (*&)(WTF::String const&,WTF::String const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(a1, v46, a3);
    v11 = (v46 + 1);
    if (std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = (v46 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}

uint64_t std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *std::__insertion_sort[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t (**a3)(WTF::StringImpl **, uint64_t))
{
  if (result == a2)
  {
    return result;
  }

  v20[11] = v3;
  v20[12] = v4;
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2)
  {
    return result;
  }

  v9 = 0;
  v10 = result;
  do
  {
    v11 = v10;
    v10 = v7;
    result = (*a3)(v7, v11);
    if (!result)
    {
      goto LABEL_19;
    }

    v13 = 0;
    v14 = *v10;
    *v10 = 0;
    v20[0] = v14;
    for (i = v9; ; i -= 8)
    {
      v16 = (v6 + i);
      v17 = *(v6 + i);
      *v16 = 0;
      v16[1] = v17;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }

      if (!i)
      {
        goto LABEL_12;
      }

LABEL_9:
      v18 = (v6 + i);
      if (((*a3)(v20, v6 + i - 8) & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = *v16;
    }

    WTF::StringImpl::destroy(v13, v12);
    if (i)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = v6;
LABEL_13:
    v19 = v20[0];
    v20[0] = 0;
    result = *v18;
    *v18 = v19;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(result, v12);
      }

      result = v20[0];
      v20[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v12);
        }
      }
    }

LABEL_19:
    v7 = v10 + 1;
    v9 += 8;
  }

  while (v10 + 1 != a2);
  return result;
}

WTF::StringImpl *std::__insertion_sort_unguarded[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl *result, WTF::StringImpl **a2, uint64_t (**a3)(WTF::StringImpl **, char *))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result - 8;
      v9 = -8;
      v10 = 8;
      do
      {
        v11 = v7;
        v7 = v10;
        result = (*a3)(v5, v4 + v11);
        if (result)
        {
          result = 0;
          v13 = *v5;
          *v5 = 0;
          v18 = v13;
          v14 = v9;
          for (i = v8; ; i -= 8)
          {
            v16 = *(i + 1);
            *(i + 1) = 0;
            *(i + 2) = v16;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v12);
              if (!v14)
              {
LABEL_21:
                __break(1u);
                return result;
              }
            }

            else if (!v14)
            {
              goto LABEL_21;
            }

            if (((*a3)(&v18, i) & 1) == 0)
            {
              break;
            }

            result = *(i + 1);
            v14 += 8;
          }

          v17 = v18;
          v18 = 0;
          result = *(i + 1);
          *(i + 1) = v17;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(result, v12);
            }

            result = v18;
            v18 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v12);
              }
            }
          }
        }

        v10 = v7 + 8;
        v5 = (v4 + v7 + 8);
        v8 += 8;
        v9 -= 8;
      }

      while (v5 != a2);
    }
  }

  return result;
}

uint64_t std::__partition_with_equals_on_left[abi:sn200100]<std::_RangeAlgPolicy,WTF::String *,BOOL (*&)(WTF::String const&,WTF::String const&)>(WTF::StringImpl **a1, WTF::StringImpl **a2, uint64_t (**a3)(WTF::StringImpl **, WTF::StringImpl **))
{
  v6 = *a1;
  *a1 = 0;
  v19 = v6;
  result = (*a3)(&v19, a2 - 1);
  if (result)
  {
    v9 = a1;
    while (1)
    {
      if (++v9 == a2)
      {
        goto LABEL_31;
      }

      result = (*a3)(&v19, v9);
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = a1 + 1;
  do
  {
    v9 = v10;
    if (v10 >= a2)
    {
      break;
    }

    result = (*a3)(&v19, v10);
    v10 = v9 + 1;
  }

  while (!result);
LABEL_9:
  v11 = a2;
  if (v9 < a2)
  {
    v11 = a2;
    while (v11 != a1)
    {
      result = (*a3)(&v19, --v11);
      if ((result & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_31;
  }

LABEL_19:
  if (v9 < v11)
  {
    v12 = *v9;
    *v9 = *v11;
    *v11 = v12;
    while (++v9 != a2)
    {
      result = (*a3)(&v19, v9);
      if (result)
      {
        while (v11 != a1)
        {
          result = (*a3)(&v19, --v11);
          if ((result & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        break;
      }
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    v15 = *a1;
    *a1 = v14;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v8);
      }
    }
  }

  v16 = v19;
  v19 = 0;
  v17 = *v13;
  *v13 = v16;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v8);
  }

  v18 = v19;
  v19 = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v8);
    }
  }

  return v9;
}

uint64_t std::__partition_with_equals_on_right[abi:sn200100]<std::_RangeAlgPolicy,WTF::String *,BOOL (*&)(WTF::String const&,WTF::String const&)>(WTF::StringImpl **a1, WTF::StringImpl **a2, uint64_t (**a3)(uint64_t, WTF::StringImpl **))
{
  v6 = 0;
  v7 = *a1;
  *a1 = 0;
  v21 = v7;
  do
  {
    result = &a1[v6 + 1];
    if (result == a2)
    {
      goto LABEL_33;
    }

    result = (*a3)(result, &v21);
    ++v6;
  }

  while ((result & 1) != 0);
  v10 = &a1[v6];
  if (v6 != 1)
  {
    v11 = a2;
    while (v11 != a1)
    {
      result = (*a3)(--v11, &v21);
      if (result)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_33;
  }

  v11 = a2;
  do
  {
    if (v10 >= v11)
    {
      break;
    }

    result = (*a3)(--v11, &v21);
  }

  while ((result & 1) == 0);
LABEL_12:
  if (v10 < v11)
  {
    v12 = v10;
    v13 = v11;
LABEL_14:
    v14 = *v12;
    *v12 = *v13;
    *v13 = v14;
    while (++v12 != a2)
    {
      result = (*a3)(v12, &v21);
      if ((result & 1) == 0)
      {
        while (v13 != a1)
        {
          result = (*a3)(--v13, &v21);
          if (result)
          {
            if (v12 < v13)
            {
              goto LABEL_14;
            }

            v15 = v12 - 1;
            goto LABEL_22;
          }
        }

        break;
      }
    }

LABEL_33:
    __break(1u);
    return result;
  }

  v15 = v10 - 1;
LABEL_22:
  if (v15 != a1)
  {
    v16 = *v15;
    *v15 = 0;
    v17 = *a1;
    *a1 = v16;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v9);
      }
    }
  }

  v18 = v21;
  v21 = 0;
  v19 = *v15;
  *v15 = v18;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  v20 = v21;
  v21 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v9);
    }
  }

  return v15;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl **a1, WTF::StringImpl **a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = (a2 - 1);
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = (a2 - 1);
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v35 = a1[2];
        a1[2] = *v17;
        *v17 = v35;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 2);
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v26 = 0;
      v27 = *v22;
      *v22 = 0;
      v37 = v27;
      for (i = v23; ; i -= 8)
      {
        v29 = a1 + i;
        v30 = *(a1 + i + 16);
        *(v29 + 16) = 0;
        *(v29 + 24) = v30;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v25);
        }

        if (i == -16)
        {
          v31 = a1;
          goto LABEL_44;
        }

        if (((*a3)(&v37, (a1 + i + 8)) & 1) == 0)
        {
          break;
        }

        v26 = *(v29 + 16);
      }

      v31 = (a1 + i + 16);
LABEL_44:
      v32 = v37;
      v37 = 0;
      v33 = *v31;
      *v31 = v32;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v25);
      }

      v34 = v37;
      v37 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v25);
      }

      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

WTF::StringImpl **std::__partial_sort_impl[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,WTF::String*>(WTF::StringImpl *a1, char *a2, WTF::StringImpl **a3, uint64_t (**a4)(WTF::StringImpl **, WTF::StringImpl **))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = (a2 - 8);
      do
      {
        v15 = *a1;
        *a1 = 0;
        v16 = std::__floyd_sift_down[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(a1, a4, v8);
        v18 = v16;
        if (v14 == v16)
        {
          v22 = *v16;
          *v18 = v15;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v17);
          }
        }

        else
        {
          v19 = *v14;
          *v14 = 0;
          v20 = *v16;
          *v18 = v19;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v17);
          }

          v21 = *v14;
          *v14 = v15;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v17);
          }

          std::__sift_up[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(a1, (v18 + 1), a4, ((v18 + 1) - a1) >> 3);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

WTF::StringImpl *std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl *result, uint64_t (**a2)(WTF::StringImpl **, WTF::StringImpl **), uint64_t a3, WTF::StringImpl **a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v25[11] = v4;
    v25[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * v12 + 8);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v17 = *v7;
        *v7 = 0;
        v25[0] = v17;
        do
        {
          v18 = v14;
          v19 = *v14;
          *v14 = 0;
          v20 = *v7;
          *v7 = v19;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v16);
          }

          if (v9 < v13)
          {
            break;
          }

          v21 = (2 * v13) | 1;
          v14 = (v8 + 8 * v21);
          v22 = 2 * v13 + 2;
          if (v22 < a3 && (*a2)(v8 + v21, v14 + 1))
          {
            ++v14;
            v21 = v22;
          }

          v7 = v18;
          v13 = v21;
        }

        while (!(*a2)(v14, v25));
        v23 = v25[0];
        v25[0] = 0;
        v24 = *v18;
        *v18 = v23;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v16);
        }

        result = v25[0];
        v25[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v16);
          }
        }
      }
    }
  }

  return result;
}

WTF::StringImpl **std::__floyd_sift_down[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl **a1, WTF::StringImpl *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    v9 = &a1[v6];
    a1 = v9 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v9 + 2;
      if ((*a2)(v9 + 1, v9 + 2))
      {
        a1 = v12;
        v6 = v11;
      }
    }

    v13 = *a1;
    *a1 = 0;
    v14 = *v8;
    *v8 = v13;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }
  }

  while (v6 <= v7);
  return a1;
}

WTF::StringImpl *std::__sift_up[abi:sn200100]<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*>(WTF::StringImpl *result, uint64_t a2, uint64_t (**a3)(WTF::StringImpl **, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v18[9] = v4;
  v18[10] = v5;
  v8 = result;
  v9 = v6 >> 1;
  v10 = (result + 8 * (v6 >> 1));
  v11 = (a2 - 8);
  result = (*a3)(v10, a2 - 8);
  if (!result)
  {
    return result;
  }

  v13 = *v11;
  *v11 = 0;
  v18[0] = v13;
  do
  {
    v14 = v10;
    v15 = *v10;
    *v10 = 0;
    v16 = *v11;
    *v11 = v15;
    if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      if (!v9)
      {
        break;
      }

      goto LABEL_7;
    }

    WTF::StringImpl::destroy(v16, v12);
    if (!v9)
    {
      break;
    }

LABEL_7:
    v9 = (v9 - 1) >> 1;
    v10 = (v8 + 8 * v9);
    v11 = v14;
  }

  while (((*a3)(v10, v18) & 1) != 0);
  v17 = v18[0];
  v18[0] = 0;
  result = *v14;
  *v14 = v17;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(result, v12);
    }

    result = v18[0];
    v18[0] = 0;
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

void WebKit::RegistrableDomainsToBlockCookiesFor::~RegistrableDomainsToBlockCookiesFor(WebKit::RegistrableDomainsToBlockCookiesFor *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v4);

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, v5);
}

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 12);
    if (v4)
    {
      v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 12));
      v7 = WTF::fastZeroedMalloc((24 * v6 + 16));
      *a1 = (v7 + 4);
      v7[2] = v6 - 1;
      v7[3] = v6;
      *v7 = 0;
      v7[1] = v4;
      v10 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v8, v9);
      v12 = v10;
      v25[0] = v10;
      v25[1] = v11;
      v13 = *a2 ? *a2 + 24 * *(*a2 - 4) : 0;
      if (v13 != v10)
      {
        do
        {
          v24 = v12;
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = WTF::ASCIICaseInsensitiveHash::hash(*v12, v11);
          v18 = 0;
          do
          {
            v19 = v16 & v15;
            v20 = WTF::equal(*(v14 + 24 * (v16 & v15)), 0, v17);
            v16 = ++v18 + v19;
          }

          while (!v20);
          WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::RegistrableDomain,WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc> const&)::{lambda(void)#1}>((v14 + 24 * v19), v12, &v24);
          v25[0] += 24;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v25, v21, v22);
          v12 = v25[0];
        }

        while (v25[0] != v13);
      }
    }
  }

  return a1;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::RegistrableDomain,WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc> const&)::{lambda(void)#1}>(WTF::StringImpl **a1, uint64_t a2, atomic_uint ***a3)
{
  v4 = *a3;
  v5 = **a3;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v10 = v5;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, (v4 + 1));
  v7 = *a1;
  *a1 = v10;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 1), v11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v8);
  return 0;
}

uint64_t *WTF::Ref<WTF::SuspendableWorkQueue,WTF::RawPtrTraits<WTF::SuspendableWorkQueue>,WTF::DefaultRefDerefTraits<WTF::SuspendableWorkQueue>>::copyRef@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  while (1)
  {
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 32);
    atomic_compare_exchange_strong_explicit((v3 + 32), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_4;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 32));
LABEL_4:
  *a2 = v3;
  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        if (*(v4 + 56) == 1)
        {
          v5 = *(v4 + 24);
          *(v4 + 24) = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }

          v6 = *(v4 + 16);
          *(v4 + 16) = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }
        }

        v7 = *v4;
        *v4 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::postTask(WTF::Function<void ()(WebKit::WebResourceLoadStatisticsStore&)> &&)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11044F0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::postTask(WTF::Function<void ()(WebKit::WebResourceLoadStatisticsStore&)> &&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11044F0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF *std::__optional_storage_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OrganizationStorageAccessPromptQuirk,false>>(WTF *result, WTF::StringImpl *a2)
{
  v3 = result;
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *result;
      *v3 = v4;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a2 + 1);
      *(a2 + 1) = 0;
      v7 = *(v3 + 1);
      *(v3 + 1) = v6;
      if (v7)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v7, a2);
      }

      v8 = *(v3 + 7);
      if (v8)
      {
        WTF::VectorDestructor<true,WTF::URL>::destruct(*(v3 + 2), (*(v3 + 2) + 40 * v8));
      }

      return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3 + 16, a2 + 4);
    }
  }

  else if (*(result + 32))
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 16, a2);
    v10 = *(v3 + 1);
    if (v10)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v10, v9);
    }

    result = *v3;
    *v3 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }

    *(v3 + 32) = 0;
  }

  else
  {
    v11 = *a2;
    *a2 = 0;
    *result = v11;
    *(result + 1) = 0;
    v12 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(result + 1) = v12;
    *(result + 2) = 0;
    *(result + 3) = 0;
    v13 = result + 16;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result + 16, a2 + 4);
    v13[16] = 1;
  }

  return result;
}

uint64_t WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1, a2, a3);
  v15[0] = result;
  v15[1] = v7;
  if (*a1)
  {
    v8 = *a1 + 8 * *(*a1 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != result)
  {
    do
    {
      WebCore::RegistrableDomain::isolatedCopy(&v13);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a4, &v13, v9, v14);
      v12 = v13;
      v13 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }

      v15[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v15, v10, v11);
      result = v15[0];
    }

    while (v15[0] != v8);
  }

  return result;
}

WTF::StringImpl ***WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::operator=(WTF::StringImpl ***a1, uint64_t *a2)
{
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v6, a2);
  v4 = *a1;
  *a1 = v6;
  v6 = v4;
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,unsigned int &>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(*a1 + 4 * (*(a1 + 12))++) = *result;
  return result;
}

WTF::StringImpl **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, WTF::StringImpl **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD0E3B4);
  }

  v9 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v9 = *a1;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a3;
    *a3 = 0;
    v27 = 0;
    std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v15 + 1, v19);
    result = std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](&v27, 0);
    v21 = *a1;
    if (*a1)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v25 = (*(v21 - 16) + v22);
    v26 = *(v21 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_21:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v21 = *a1;
        if (*a1)
        {
          v26 = *(v21 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_21;
    }

    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v26;
    *(a4 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a1 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = v9 + 16 * *(v9 - 4);
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = 0;
  v24 = *a3;
  *a3 = 0;

  return std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v15 + 1, v24);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = v15 + 16 * v22;
          std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100]((v24 + 8), 0);
          *v24 = *v13;
          v25 = v13[1];
          v13[1] = 0;
          *(v24 + 8) = v25;
          std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v13 + 1, 0);
          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v13 + 1, 0);
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

void *WebKit::AuthenticationManager::Challenge::Challenge(void *a1, uint64_t a2, char a3, WebCore::AuthenticationChallengeBase *a4, uint64_t *a5)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase((a1 + 1), a4);
  v9 = *(a4 + 53);
  a1[54] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *(a4 + 54);
  a1[55] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *a5;
  *a5 = 0;
  a1[56] = v11;
  return a1;
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v9 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v9);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v5, v6, v7, v8);
    }
  }

  else
  {
    v10 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v10);
  }
}

WTF::StringBuilder *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *result, int8x16_t **a2, unint64_t *a3, int8x16_t **a4)
{
  v5 = a3;
  v7 = *a3;
  while (((v8 = *(result + 1)) != 0 || (v8 = *result) != 0) && (*(v8 + 16) & 4) == 0 || v7 && (*(v7 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(result);
    if (!result)
    {
      return result;
    }

    v11 = *a2;
    v10 = a2[1];
    v7 = v5->i64[0];
    v5 = *a4;
    v12 = a4[1];
    if (v10 < 0x40)
    {
      v13 = result;
    }

    else
    {
      v13 = result + 2 * (v10 & 0x7FFFFFFFFFFFFFC0);
      v14 = 0uLL;
      v15 = result;
      do
      {
        v42.val[0] = *v11;
        v16 = v11[1];
        v44.val[0] = v11[2];
        v17 = v11[3];
        v11 += 4;
        v18 = v17;
        v44.val[1] = 0uLL;
        v46.val[0] = v16;
        v42.val[1] = 0uLL;
        v19 = v15;
        vst2q_s8(v19, v42);
        v19 += 32;
        v46.val[1] = 0uLL;
        vst2q_s8(v19, v46);
        v20 = v15 + 64;
        vst2q_s8(v20, v44);
        v21 = v15 + 96;
        vst2q_s8(v21, *(&v14 - 1));
        v15 += 128;
      }

      while (v15 != v13);
    }

    while (v13 != result + 2 * v10)
    {
      v29 = v11->u8[0];
      v11 = (v11 + 1);
      *v13 = v29;
      v13 += 2;
    }

    if (v9 >= v10)
    {
      a4 = (v9 - v10);
      a2 = (result + 2 * v10);
      v41 = v7;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v41, a2);
      v7 = v41;
      if (!v41 || (v7 = *(v41 + 4), a4 >= v7))
      {
        v30 = a2 + 2 * v7;
        v31 = &v30[2 * v12];
        if (v12 >= 0x40)
        {
          v32 = &v30[2 * (v12 & 0x7FFFFFFFFFFFFFC0)];
          v33 = 0uLL;
          do
          {
            v43.val[0] = *v5;
            v34 = v5[1];
            v45.val[0] = v5[2];
            v35 = v5[3];
            v5 += 4;
            v36 = v35;
            v45.val[1] = 0uLL;
            v47.val[0] = v34;
            v43.val[1] = 0uLL;
            v37 = v30;
            vst2q_s8(v37, v43);
            v37 += 32;
            v47.val[1] = 0uLL;
            vst2q_s8(v37, v47);
            v38 = v30 + 64;
            vst2q_s8(v38, v45);
            v39 = v30 + 96;
            vst2q_s8(v39, *(&v33 - 1));
            v30 += 128;
          }

          while (v30 != v32);
          v30 = v32;
        }

        while (v30 != v31)
        {
          v40 = v5->u8[0];
          v5 = (v5 + 1);
          *v30 = v40;
          v30 += 2;
        }

        return result;
      }
    }

LABEL_35:
    __break(1u);
  }

  result = MEMORY[0x19EB01170]();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v24 = v22;
  v25 = a2[1];
  v26 = v5->i64[0];
  v5 = *a4;
  a4 = a4[1];
  if (v25)
  {
    v27 = *a2;
    if (v25 == 1)
    {
      v7 = v27->u8[0];
      *result = v7;
    }

    else
    {
      result = memcpy(result, v27, a2[1]);
    }
  }

  if (v24 < v25)
  {
    goto LABEL_35;
  }

  v28 = v24 - v25;
  a2 = (v23 + v25);
  v41 = v26;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v41, a2);
  v7 = v41;
  if (v41)
  {
    v7 = *(v41 + 4);
    if (v28 < v7)
    {
      goto LABEL_35;
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      *(a2 + v7) = v5->i8[0];
    }

    else
    {
      return memcpy(a2 + v7, v5, a4);
    }
  }

  return result;
}

void _ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEES7_NS_17IdentityExtractorENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EESC_NS_10FastMallocEE8removeIfIZNS_11WeakHashSetIN6WebKit27ResourceLoadStatisticsStoreES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(uint64_t a1, void *a2)
{
  v2 = qword_1ED6425E0;
  if (qword_1ED6425E0)
  {
    v3 = *(qword_1ED6425E0 - 4);
    if (v3)
    {
      v7 = 0;
      v8 = (qword_1ED6425E0 + 8 * v3 - 8);
      do
      {
        if (*v8 + 1 >= 2 && !*(*v8 + 1))
        {
          WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v8, a2);
          ++v7;
        }

        --v8;
        --v3;
      }

      while (v3);
      v2 = qword_1ED6425E0;
      if (v7)
      {
        v9 = *(qword_1ED6425E0 - 12) - v7;
        *(qword_1ED6425E0 - 16) += v7;
        *(v2 - 12) = v9;
      }

      else if (!qword_1ED6425E0)
      {
        return;
      }
    }

    v4 = 6 * *(v2 - 12);
    v5 = *(v2 - 4);
    if (v4 < v5 && v5 >= 9)
    {

      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&qword_1ED6425E0);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104518;
  WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104518;
  WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  {
    v3 = WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes;
  }

  else
  {
    v3 = 2672057;
    WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes = 2672057;
  }

  v14 = *(a1 + 80);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v4 = *(a1 + 96);
  while (1)
  {
    v5 = *(v4 + 32);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v4 + 32);
    atomic_compare_exchange_strong_explicit((v4 + 32), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 32));
LABEL_8:
  v7 = WTF::fastMalloc(0x20);
  v8 = v7;
  *v7 = &unk_1F1104540;
  *(v7 + 8) = v14;
  *(v7 + 24) = v4;
  v15 = v7;
  v9 = *(v2 + 16);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    ++*(v10 + 16);
    WebKit::NetworkSession::deleteAndRestrictWebsiteDataForRegistrableDomains(v10, v3, a1 + 16, &v15);
    v11 = *(v10 + 16);
    if (v11)
    {
      *(v10 + 16) = v11 - 1;
      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = 0;
    WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(v7, &v16);
    (*(*v8 + 8))(v8);
    result = v16;
    if (v16)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v13);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104540;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104540;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(uint64_t a1, uint64_t *a2)
{
  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, v10);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0u;
  *&v10[8] = v3;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1104568;
  *(v4 + 8) = *v10;
  memset(v10, 0, sizeof(v10));
  v11 = v4;
  *(v4 + 24) = *&v10[16];
  WTF::SuspendableWorkQueue::dispatch();
  v6 = v11;
  v11 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *&v10[16];
  *&v10[16] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  v8 = *&v10[8];
  *&v10[8] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = *v10;
  if (*v10)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v10, v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104568;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104568;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::call(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      WebKit::buildList<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v30, a1 + 1, a3);
      WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET dataRecordsRemoved = dataRecordsRemoved + 1 WHERE registrableDomain IN (", 100, &v30, 41, buf);
      WebCore::SQLiteDatabase::prepareStatementSlow();
      v7 = *buf;
      *buf = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      v8 = v30;
      v30 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      if (v32 || WebCore::SQLiteStatement::step(v31) != 101)
      {
        v9 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v24 = *(v5 + 664);
          Error = WebCore::SQLiteDatabase::lastError((v5 + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v5 + 16));
          *buf = 134218755;
          *&buf[4] = v5;
          *v34 = 2048;
          *&v34[2] = v24;
          v35 = 1024;
          v36 = Error;
          v37 = 2081;
          v38 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::incrementRecordsDeletedCountForDomains: failed to step statement", buf, 0x26u);
        }
      }

      if (!v32)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v31);
      }

      v10 = a1[3];
      if (v10)
      {
        v11 = *(v10 + 8);
        if (v11)
        {
          *(v11 + 726) = 0;
          v12 = *(v11 + 640);
          *(v11 + 640) = 0;
          *buf = v12;
          v13 = *(v11 + 648);
          v14 = *(v11 + 652);
          *(v11 + 648) = 0;
          *&buf[8] = v13;
          *v34 = v14;
          v15 = a1[2];
          a1[2] = 0;
          (*(*v15 + 16))(v15);
          (*(*v15 + 8))(v15);
          if (v14)
          {
            v17 = 8 * v14;
            do
            {
              v18 = *v12;
              *v12++ = 0;
              (*(*v18 + 16))(v18);
              (*(*v18 + 8))(v18);
              v17 -= 8;
            }

            while (v17);
          }

          v19 = a1[3];
          if (!v19 || (v20 = *(v19 + 8)) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD0F498);
          }

          if ((*(v20 + 724) & 1) == 0)
          {
            return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v16);
          }

          v27 = qword_1ED640B30;
          if (!os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO) || (*v31 = 0, _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Done removing data records.", v31, 2u), (v28 = a1[3]) != 0) && (v20 = *(v28 + 8)) != 0)
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v20, 4, v31);
            v29 = *v31;
            *v31 = 0;
            if (v29)
            {
              if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v29, v16);
              }
            }

            return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v16);
          }
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19DD0F478);
    }
  }

  v22 = a1[2];
  a1[2] = 0;
  (*(*v22 + 16))(v22);
  v23 = *(*v22 + 8);

  return v23(v22);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104590;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11045B8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 32));
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11045B8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 32));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
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

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(uint64_t *a1)
{
  v1 = a1[3];
  {
    v2 = WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes;
  }

  else
  {
    v2 = 2672057;
    WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes = 2672057;
  }

  v4 = *a1;
  v3 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = v4;
  v13 = v3;
  v5 = a1[2];
  while (1)
  {
    v6 = *(v5 + 32);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v11 = *(v5 + 32);
    atomic_compare_exchange_strong_explicit((v5 + 32), &v11, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 32));
LABEL_6:
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F11045E0;
  v7[1] = v4;
  v12 = 0;
  v13 = 0;
  v7[2] = v3;
  v7[3] = v5;
  v14 = 0;
  v15 = v7;
  WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithWebsiteData(*(v1 + 16), v2, &v15);
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::~HashSet(&v12, v8);
}

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::~HashSet(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11045E0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1},void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11045E0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
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

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  v11 = v3;
  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v12);
  v4 = a1[1];
  a1[1] = 0;
  *(&v12 + 1) = v4;
  v5 = WTF::fastMalloc(0x20);
  v6 = v11;
  *v5 = &unk_1F1104608;
  *(v5 + 8) = v6;
  v7 = v12;
  v11 = 0;
  v12 = 0uLL;
  v13 = v5;
  *(v5 + 16) = v7;
  WTF::SuspendableWorkQueue::dispatch();
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1}::~(&v11, v8);
}

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1}::~(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104608;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104608;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
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

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)#1}::operator()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  if (*a1 && (v2 = *(*a1 + 8)) != 0)
  {
    v3 = WebKit::ResourceLoadStatisticsStore::grandfatherDataForDomains(v2, a1 + 1);
    if (!*a1)
    {
      goto LABEL_18;
    }

    v4 = *(*a1 + 8);
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = *(v4 + 656);
    WTF::WallTime::now(v3);
    if (!*a1 || (v7 = *(*a1 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD0FE9CLL);
    }

    *(v7 + 240) = v5 + v6 + *(v7 + 184);
    v8 = a1[2];
    a1[2] = 0;
    (*(*v8 + 16))(v8);
    (*(*v8 + 8))(v8);
    if (!*a1 || (v9 = *(*a1 + 8)) == 0)
    {
LABEL_18:
      __break(0xC471u);
      JUMPOUT(0x19DD0FE7CLL);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::ResourceLoadStatisticsStore::logTestingEvent(v9);
    result = v14;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v14, v10);
      }
    }
  }

  else
  {
    v12 = a1[2];
    a1[2] = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104658;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104658;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(void)::$_0,void>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 104);
      if (*(v2 + 280) == 1 && *(v2 + 272) == *(result + 2))
      {
        v3 = WTF::fastMalloc(0x10);
        *v3 = &unk_1F1104680;
        v4 = v3;
        WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v2, &v4);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }

        WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(v2);
      }

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v2 + 104));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCacheMaxAgeCap(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11046A8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCacheMaxAgeCap(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11046A8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateCacheMaxAgeCap(void)::$_0::operator()(uint64_t a1)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F11046D0;
  v5 = v2;
  WebKit::WebResourceLoadStatisticsStore::setCacheMaxAgeCap(*(a1 + 16), &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateClientSideCookiesAgeCap(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11046F8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateClientSideCookiesAgeCap(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11046F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::ResourceLoadStatisticsStore::updateClientSideCookiesAgeCap(void)::$_0::operator()(_DWORD *result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      v3 = *(v2 + 32);
      v7 = *(v2 + 24);
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v7);
      if (result)
      {
        v4 = result;
        ++result[2];
        result = WebCore::NetworkStorageSession::setAgeCapForClientSideCookies();
        v5 = v4[2];
        if (!v5)
        {
          goto LABEL_9;
        }

        v4[2] = v5 - 1;
      }

      v6 = *(v2 + 16);
      if (v6)
      {
        *(v2 + 16) = v6 - 1;
        return result;
      }

LABEL_9:
      __break(0xC471u);
      JUMPOUT(0x19DD1038CLL);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104720;
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 6), a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), v6);
  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104720;
  v3 = *(a1 + 9);
  *(a1 + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 48, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v6);
  v8 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
  }

  return WTF::fastFree(a1, v7);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1104748;
  v6[1] = v2;
  v6[2] = v5;
  v9 = v6;
  WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(v2, a1 + 16, &v9);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104748;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104748;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1104770;
  v2[1] = v1;
  v4 = v2;
  WTF::SuspendableWorkQueue::dispatch();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104770;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104770;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlockingForDomains(WebKit::RegistrableDomainsToBlockCookiesFor &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::logTestingEvent(WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104798;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11047C0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11047C0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  v6 = WTF::fastMalloc(0x18);
  v7 = &unk_1F11047E8;
  *v6 = &unk_1F11047E8;
  v6[1] = v2;
  v6[2] = v5;
  v8 = v2[2];
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      ++*(v9 + 16);
      v10 = *(v9 + 32);
      v16 = *(v9 + 24);
      v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 248), &v16);
      if (v11)
      {
        v12 = v11;
        ++*(v11 + 2);
        WebCore::NetworkStorageSession::removeAllStorageAccess(v11);
        v13 = *(v12 + 2);
        if (!v13)
        {
          goto LABEL_13;
        }

        *(v12 + 2) = v13 - 1;
      }

      v14 = *(v9 + 16);
      if (v14)
      {
        *(v9 + 16) = v14 - 1;
        v7 = *v6;
        goto LABEL_11;
      }

LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DD10C10);
    }
  }

LABEL_11:
  v7[2](v6);
  return (*(*v6 + 8))(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11047E8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  return a1;
}