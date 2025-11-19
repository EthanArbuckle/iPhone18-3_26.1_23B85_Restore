BOOL std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (a2 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v6(v8);
  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = (a3 + (v12 >> 1));
  if (v12)
  {
    v11 = *(*v13 + v11);
  }

  return v9 < v11(v13);
}

WTF::StringImpl *std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a4, a2, a1);
  result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a4, a3, a2);
  if (v8)
  {
    if (result)
    {
      v10 = a1;
    }

    else
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1, a2);
      result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a4, a3, a2);
      if (!result)
      {
        return result;
      }

      v10 = a2;
    }

    v11 = a3;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a2, a3);
    result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a4, a2, a1);
    if (!result)
    {
      return result;
    }

    v10 = a1;
    v11 = a2;
  }

  return std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(v10, v11);
}

WTF::StringImpl *std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a2, a3, a6);
  if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a4, a3))
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a3, a4);
    if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a3, a2))
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a2, a3);
      if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a2, a1))
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1, a2);
      }
    }
  }

  result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a5, a4);
  if (result)
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a4, a5);
    result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a4, a3);
    if (result)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a3, a4);
      result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a3, a2);
      if (result)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a2, a3);
        result = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a6, a2, a1);
        if (result)
        {

          return std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 5);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a2 - 160, a3);
        return 1;
      case 4:
        v37 = a2 - 160;
        std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a1 + 320, a3);
        if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v37, a1 + 320))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1 + 320, v37);
        if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 320, a1 + 160))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(a1 + 160, a1 + 320);
        if (!std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a1 + 160, a1))
        {
          return 1;
        }

        v9 = a1 + 160;
        v8 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a1 + 320, a1 + 480, a2 - 160, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 160;
      if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, a2 - 160, a1))
      {
        v8 = a1;
        v9 = v7;
LABEL_6:
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(v8, v9);
      }

      return 1;
    }
  }

  v10 = a1 + 320;
  std::__sort3[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const> &,WebKit::CacheStorageRecordInformation*,0>(a1, a1 + 160, a1 + 320, a3);
  v11 = a1 + 480;
  if (a1 + 480 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v11, v10))
    {
      v14 = *v11;
      v15 = *(v11 + 16);
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *v39 = v14;
      *v40 = v15;
      v16 = *(v11 + 48);
      v41 = *(v11 + 32);
      v42 = v16;
      v43 = *(v11 + 64);
      v44 = *(v11 + 72);
      v45 = *(v11 + 88);
      WTF::URL::URL(v46, (v11 + 104));
      v47 = *(v11 + 144);
      v17 = *(v11 + 152);
      *(v11 + 152) = 0;
      v48 = v17;
      v18 = v12;
      while (1)
      {
        v19 = v18;
        v20 = a1 + v18;
        WebKit::NetworkCache::Key::operator=(a1 + v18 + 480, (a1 + v18 + 320));
        v21 = *(v20 + 408);
        *(v20 + 552) = *(v20 + 392);
        *(v20 + 568) = v21;
        WTF::URL::operator=(v20 + 584, v20 + 424);
        *(v20 + 624) = *(v20 + 464);
        v23 = *(v20 + 472);
        *(v20 + 472) = 0;
        v24 = *(v20 + 632);
        *(v20 + 632) = v23;
        if (v24)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v22);
        }

        if (v19 == -320)
        {
          break;
        }

        v25 = std::_ProjectedPred<std::ranges::less,double (WebKit::CacheStorageRecordInformation::*)(void)const>::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation&,WebKit::CacheStorageRecordInformation&>(a3, v39, a1 + v19 + 160);
        v18 = v19 - 160;
        if (!v25)
        {
          v26 = a1 + v18 + 480;
          goto LABEL_22;
        }
      }

      v26 = a1;
LABEL_22:
      WebKit::NetworkCache::Key::operator=(v26, v39);
      v27 = (a1 + v19 + 392);
      v28 = v45;
      *v27 = v44;
      v27[1] = v28;
      WTF::URL::operator=(a1 + v19 + 424, v46);
      *(v26 + 144) = v47;
      v30 = v48;
      v48 = 0;
      v31 = *(v26 + 152);
      *(v26 + 152) = v30;
      if (v31)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v29);
      }

      if (v48)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v48, v29);
      }

      v32 = v46[0];
      v46[0] = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v29);
      }

      v33 = v40[1];
      v40[1] = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v29);
      }

      v34 = v40[0];
      v40[0] = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v29);
      }

      v35 = v39[1];
      v39[1] = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v29);
      }

      v36 = v39[0];
      v39[0] = 0;
      if (v36)
      {
        if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v29);
        }
      }

      if (++v13 == 8)
      {
        return v11 + 160 == a2;
      }
    }

    v10 = v11;
    v12 += 160;
    v11 += 160;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

WTF::StringImpl *std::ranges::__swap::__fn::operator()[abi:sn200100]<WebKit::CacheStorageRecordInformation>(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 16);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *v20 = v4;
  *v21 = v5;
  v6 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v6;
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 88);
  WTF::URL::URL(v27, (a1 + 104));
  v28 = *(a1 + 144);
  v7 = *(a1 + 152);
  *(a1 + 152) = 0;
  v29 = v7;
  WebKit::NetworkCache::Key::operator=(a1, a2);
  v8 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v8;
  WTF::URL::operator=(a1 + 104, a2 + 104);
  *(a1 + 144) = *(a2 + 144);
  v10 = *(a2 + 152);
  *(a2 + 152) = 0;
  v11 = *(a1 + 152);
  *(a1 + 152) = v10;
  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v9);
  }

  WebKit::NetworkCache::Key::operator=(a2, v20);
  *(a2 + 72) = v25;
  *(a2 + 88) = v26;
  WTF::URL::operator=(a2 + 104, v27);
  *(a2 + 144) = v28;
  v13 = v29;
  v29 = 0;
  v14 = *(a2 + 152);
  *(a2 + 152) = v13;
  if (v14)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v12);
    if (v29)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v12);
    }
  }

  v15 = v27[0];
  v27[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v21[1];
  v21[1] = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  v17 = v21[0];
  v21[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v12);
  }

  v18 = v20[1];
  v20[1] = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v12);
  }

  result = v20[0];
  v20[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    do
    {
      v13 = v5 + 24 * v10;
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = *(v14 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = (v16 + 24 * (v19 & v17));
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21);
          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v21 + 1), v9);
          v23 = *v21;
          *v21 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = *v13;
          *v13 = 0;
          v21[1] = 0;
          v21[2] = 0;
          *v21 = v24;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v21 + 1), (v13 + 8));
          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v25);
          v26 = *v13;
          *v13 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          if (v13 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v9);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

WTF *WTF::GenericHashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = *a1;
    v6 = 160 * v4;
    do
    {
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v5, a2);
      v5 = (v7 + 160);
      v6 -= 160;
    }

    while (v6);
  }

  return WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
}

void WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 160 * *(a1 + 12);
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v6;
  v7 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v7;
  v8 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v8;
  v9 = *(v3 + 64);
  v10 = *(v3 + 48);
  *(v4 + 32) = *(v3 + 32);
  *(v4 + 48) = v10;
  *(v4 + 64) = v9;
  v11 = *(v3 + 72);
  *(v4 + 88) = *(v3 + 88);
  *(v4 + 72) = v11;
  WTF::URL::URL(v4 + 104, (v3 + 104));
  *(v4 + 144) = *(v3 + 144);
  *(v4 + 152) = 0;
  v12 = *(v3 + 152);
  *(v3 + 152) = 0;
  *(v4 + 152) = v12;
  ++*(a1 + 12);
}

unint64_t WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 160 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x199999A)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDD21E8);
    }

    v3 = *a1;
    v4 = (*a1 + 160 * *(a1 + 12));
    v5 = 160 * a2;
    v6 = WTF::fastMalloc((160 * a2));
    *(a1 + 8) = v5 / 0xA0;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 104;
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v5 - 104) = v6;
      v7 = v4[1];
      v4[1] = 0;
      *(v5 - 96) = v7;
      v8 = v4[2];
      v4[2] = 0;
      *(v5 - 88) = v8;
      v9 = v4[3];
      v4[3] = 0;
      *(v5 - 80) = v9;
      v10 = *(v4 + 2);
      v11 = *(v4 + 3);
      *(v5 - 40) = v4[8];
      *(v5 - 56) = v11;
      *(v5 - 72) = v10;
      v12 = *(v4 + 11);
      *(v5 - 32) = *(v4 + 9);
      *(v5 - 16) = v12;
      WTF::URL::URL(v5, v4 + 13);
      *(v5 + 40) = *(v4 + 144);
      *(v5 + 48) = 0;
      v13 = v4[19];
      v4[19] = 0;
      *(v5 + 48) = v13;
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v4, v14);
      v4 += 20;
      v5 += 160;
    }

    while (v4 != a2);
  }
}

uint64_t WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 160 * v3;
    do
    {
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v4, a2);
      v4 = (v6 + 160);
      v5 -= 160;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDD23F4);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      continue;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 24 * *(*a1 - 4);
}

uint64_t *WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = WebKit::NetworkCache::Key::Key((*a1 + 160 * *(a1 + 12)), v3);
  v5 = *(v3 + 72);
  *(v4 + 88) = *(v3 + 88);
  *(v4 + 72) = v5;
  v6 = *(v3 + 104);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(v4 + 13) = v6;
  v7 = *(v3 + 128);
  *(v4 + 7) = *(v3 + 112);
  *(v4 + 8) = v7;
  *(v4 + 144) = *(v3 + 144);
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v4 + 19, (v3 + 152));
  ++*(a1 + 12);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::retrieveRecords(WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::Error> &&)> &&)::$_1,void,std::experimental::fundamentals_v3::expected<std::optional<WebKit::CacheStorageRecord>,0ul,WebCore::DOMCacheEngine::CrossThreadRecord,16ul,WTF::CrashOnOverflow> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A2E0;
  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[29];
  a1[29] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  v5 = a1[28];
  a1[28] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[27];
  a1[27] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::retrieveRecords(WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::Error> &&)> &&)::$_1,void,std::experimental::fundamentals_v3::expected<std::optional<WebKit::CacheStorageRecord>,0ul,WebCore::DOMCacheEngine::CrossThreadRecord,16ul,WTF::CrashOnOverflow> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A2E0;
  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[29];
  a1[29] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  v5 = a1[28];
  a1[28] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[27];
  a1[27] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 1));

  return WTF::fastFree(a1, v7);
}

void WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::retrieveRecords(WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::Error> &&)> &&)::$_1,void,std::experimental::fundamentals_v3::expected<std::optional<WebKit::CacheStorageRecord>,0ul,WebCore::DOMCacheEngine::CrossThreadRecord,16ul,WTF::CrashOnOverflow> &&>::call(uint64_t a1, uint64_t *a2)
{
  v74 = 0;
  v75 = 0;
  LODWORD(v3) = *(a2 + 3);
  if (!v3)
  {
    v6 = 0;
LABEL_52:
    v45[0] = 0;
    *&v67 = &v43;
    *(&v67 + 1) = v45;
    v38 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,false>(v6, &v6[38 * v3], &v67, v39, 1);
    *&v67 = v74;
    v40 = v75;
    v74 = 0;
    v75 = 0;
    *(&v67 + 1) = v40;
    v68 = 0;
    v41 = *(a1 + 248);
    *(a1 + 248) = 0;
    (*(*v41 + 16))(v41, &v67);
    (*(*v41 + 8))(v41);
    if (!v68)
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v33);
    }

LABEL_57:
    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v33);
    return;
  }

  if (v3 >= 0x6BCA1B)
  {
    goto LABEL_59;
  }

  v5 = 608 * v3;
  v6 = WTF::fastMalloc((608 * v3));
  LODWORD(v75) = (226050911 * (v5 >> 5)) >> 32;
  v74 = v6;
  v3 = *(a2 + 3);
  if (!v3)
  {
    goto LABEL_52;
  }

  v7 = 0;
  v8 = *a2;
  v9 = 768 * v3;
  v42 = 768 * v3;
  while (1)
  {
    v10 = v8 + v7;
    if (*(v8 + v7 + 752) == 1)
    {
      break;
    }

LABEL_38:
    v7 += 768;
    if (v9 == v7)
    {
      v6 = v74;
      LODWORD(v3) = HIDWORD(v75);
      goto LABEL_52;
    }
  }

  v11 = *(v10 + 80);
  v12 = *(v10 + 160);
  v13 = *(v10 + 368);
  *(v63 + 3) = *(v10 + 371);
  v63[0] = v13;
  v14 = *(v10 + 376);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    v15 = *(v10 + 752);
    v64 = v14;
    v16 = *(v8 + v7 + 400);
    v65 = *(v8 + v7 + 384);
    v66 = v16;
    if ((v15 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v64 = 0;
    v17 = *(v8 + v7 + 400);
    v65 = *(v8 + v7 + 384);
    v66 = v17;
  }

  v18 = *(v8 + v7 + 424);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  *cf = 0u;
  memset(v50, 0, sizeof(v50));
  v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  v46 = 0u;
  WTF::URL::invalidate(v45);
  *(&v47 + 1) = 0;
  *(&v48 + 1) = 0;
  cf[1] = 0;
  *&v50[0] = 0;
  WebCore::HTTPHeaderMap::HTTPHeaderMap((v50 + 8));
  BYTE8(v51) = 0;
  BYTE8(v59) = 0;
  *(&v60 + 1) = 0;
  BYTE8(v61) = 0;
  LOBYTE(v62) = 0;
  v43 = 0;
  v44 = 0;
  WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v67, v11, 0, v12, v10 + 168, v63, (v8 + v7 + 416), v18, v45, &v43, 0);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v43);
  WebCore::ResourceResponseData::~ResourceResponseData(v45, v19);
  v21 = v64;
  v64 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  if (*(a1 + 243) != 1)
  {
LABEL_18:
    if (v72[257] == 4)
    {
      WebCore::ResourceRequestBase::url(v69);
      v22 = WebCore::HTTPHeaderMap::get();
      WebCore::EmptyOriginAccessPatterns::singleton(v22);
      WebCore::validateCrossOriginResourcePolicy();
      v24 = LOBYTE(v50[0]);
      if (LOBYTE(v50[0]) == 1)
      {
        v34 = cf[0];
        cf[0] = 0;
        if (v34)
        {
          CFRelease(v34);
        }

        v35 = v48;
        *&v48 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v23);
        }

        v36 = v45[1];
        v45[1] = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v23);
        }

        v37 = v45[0];
        v45[0] = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v23);
        }
      }

      v25 = v43;
      v43 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
        if (v24)
        {
          goto LABEL_23;
        }
      }

      else if (v24)
      {
LABEL_23:
        LOBYTE(v45[0]) = 6;
        LOBYTE(v46) = 1;
        v26 = *(a1 + 248);
        *(a1 + 248) = 0;
        (*(*v26 + 16))(v26, v45);
        (*(*v26 + 8))(v26);
        if (!v46)
        {
          WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v27);
        }

        v28 = 0;
LABEL_31:
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v73);
        WebCore::ResourceResponseData::~ResourceResponseData(v72, v29);
        v31 = v71;
        v71 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v30);
        }

        v32 = v70;
        v70 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v30);
        }

        WebCore::ResourceRequest::~ResourceRequest(v69);
        v9 = v42;
        if (!v28)
        {
          goto LABEL_57;
        }

        goto LABEL_38;
      }
    }

    if (HIDWORD(v75) == v75)
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::DOMCacheEngine::CrossThreadRecord>(&v74, &v67);
    }

    else
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v74[38 * HIDWORD(v75)], &v67);
      ++HIDWORD(v75);
    }

    v28 = 1;
    goto LABEL_31;
  }

  if (*(v10 + 752))
  {
    WebCore::ResourceResponseData::operator=(v72, v8 + v7 + 432);
    if (*(v10 + 752))
    {
      mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::operator=(v73, (v8 + v7 + 736));
      if (*(v10 + 752))
      {
        v73[2] = *(v8 + v7 + 728);
        goto LABEL_18;
      }
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(0xC471u);
}

uint64_t mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 == 255 && v5 == 255)
  {
    return a1;
  }

  if (v5 == 255)
  {
    if (*(a1 + 8) > 1u)
    {
      if (v4 == 2)
      {
        v9 = *a1;
        *a1 = 0;
        if (v9)
        {
          if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v9 + 2);
            (*(*v9 + 8))(v9);
          }
        }
      }
    }

    else if (*(a1 + 8))
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v6);
      }
    }

    v10 = -1;
    goto LABEL_19;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      if (*(a1 + 8) > 1u)
      {
        if (v4 == 2)
        {
          v16 = *a1;
          *a1 = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16 + 2);
              (*(*v16 + 8))(v16);
            }
          }
        }
      }

      else
      {
        if (!*(a1 + 8))
        {
          *a1 = 0;
          return a1;
        }

        v19 = *a1;
        *a1 = 0;
        if (v19)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v19);
        }
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      return a1;
    }

    if (*(a1 + 8) > 1u)
    {
      if (v4 == 2)
      {
        v13 = *a1;
        *a1 = 0;
        if (v13)
        {
          if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13 + 2);
            (*(*v13 + 8))(v13);
          }
        }
      }
    }

    else if (*(a1 + 8))
    {
      v7 = *a2;
      *a2 = 0;
      v8 = *a1;
      *a1 = v7;
      if (v8)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v8);
      }

      return a1;
    }

    v14 = *a2;
    *a2 = 0;
    *a1 = v14;
    v10 = 1;
LABEL_19:
    *(a1 + 8) = v10;
    return a1;
  }

  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      v12 = *a1;
      *a1 = 0;
      if (v12)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v12);
      }
    }

    goto LABEL_34;
  }

  if (v4 == 255)
  {
LABEL_34:
    v15 = *a2;
    *a2 = 0;
    *a1 = v15;
    v10 = 2;
    goto LABEL_19;
  }

  v17 = *a2;
  *a2 = 0;
  v18 = *a1;
  *a1 = v17;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }

  return a1;
}

void std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,false>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v126 = a2 - 38;
  v123 = a2 - 114;
  v124 = a2 - 76;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0x86BCA1AF286BCA1BLL * ((a2 - v9) >> 5);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        if (*(v126 + **(a3 + 8)) < *(v9 + **(a3 + 8)))
        {
LABEL_136:
          v96 = v9;
LABEL_137:
          v100 = v126;
LABEL_138:

          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v96, v100);
        }

        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,0>(v9, v9 + 38, v9 + 76, v126, a3);
      return;
    }

    if (v11 == 5)
    {
      v91 = v9 + 38;
      v97 = v9 + 76;
      std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,0>(v9, v9 + 38, v9 + 76, v9 + 114, a3);
      if (*(v126 + **(a3 + 8)) >= *(v9 + **(a3 + 8) + 1824))
      {
        return;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v9 + 114, v126);
      if (*(v9 + **(a3 + 8) + 1824) >= *(v97 + **(a3 + 8)))
      {
        return;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v9 + 76, v9 + 114);
      if (*(v97 + **(a3 + 8)) >= *(v91 + **(a3 + 8)))
      {
        return;
      }

      v98 = v9 + 38;
      v99 = v9 + 76;
LABEL_169:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v98, v99);
      if (*(v91 + **(a3 + 8)) < *(v9 + **(a3 + 8)))
      {
        v96 = v9;
        v100 = v91;
        goto LABEL_138;
      }

      return;
    }

LABEL_9:
    if (v10 <= 14591)
    {
      if (a5)
      {
        if (v9 != a2)
        {
          v101 = v9 + 38;
          if (v9 + 38 != a2)
          {
            v102 = 0;
            v103 = v9;
            do
            {
              v104 = **(a3 + 8);
              v105 = *(v103 + v104);
              v103 = v101;
              if (*(v101 + v104) < v105)
              {
                WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v127, v101);
                v106 = v102;
                while (1)
                {
                  WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v9 + v106 + 608, (v9 + v106));
                  if (!v106)
                  {
                    break;
                  }

                  v106 -= 608;
                  if (*&v128[**(a3 + 8) - 8] >= *(v9 + **(a3 + 8) + v106))
                  {
                    v107 = v9 + v106 + 608;
                    goto LABEL_154;
                  }
                }

                v107 = v9;
LABEL_154:
                WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v107, &v127);
                mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v132);
                WebCore::ResourceResponseData::~ResourceResponseData(v131, v108);
                v110 = v130;
                v130 = 0;
                if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v110, v109);
                }

                v111 = v129;
                v129 = 0;
                if (v111 && atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v111, v109);
                }

                WebCore::ResourceRequest::~ResourceRequest(v128);
              }

              v101 = v103 + 38;
              v102 += 608;
            }

            while (v103 + 38 != a2);
          }
        }

        return;
      }

      if (v9 == a2)
      {
        return;
      }

      v112 = v9 + 38;
      if (v9 + 38 == a2)
      {
        return;
      }

      v113 = 0;
      v114 = -608;
      v115 = 608;
      while (1)
      {
        v116 = a1 + v113;
        v113 = v115;
        if (*(v112 + **(a3 + 8)) < *&v116[**(a3 + 8)])
        {
          break;
        }

LABEL_185:
        v115 = v113 + 608;
        v112 = (a1 + v113 + 608);
        v9 += 38;
        v114 -= 608;
        if (v112 == a2)
        {
          return;
        }
      }

      WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v127, v112);
      v117 = v114;
      v118 = v9;
      while (1)
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::operator=((v118 + 38), v118);
        if (!v117)
        {
          break;
        }

        v118 -= 38;
        v117 += 608;
        if (*&v128[**(a3 + 8) - 8] >= *(v118 + **(a3 + 8)))
        {
          WebCore::DOMCacheEngine::CrossThreadRecord::operator=((v118 + 38), &v127);
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v132);
          WebCore::ResourceResponseData::~ResourceResponseData(v131, v119);
          v121 = v130;
          v130 = 0;
          if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v121, v120);
          }

          v122 = v129;
          v129 = 0;
          if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v122, v120);
          }

          WebCore::ResourceRequest::~ResourceRequest(v128);
          goto LABEL_185;
        }
      }

LABEL_187:
      __break(1u);
      return;
    }

    if (!a4)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,WebCore::DOMCacheEngine::CrossThreadRecord*>(v9, a2, a2, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = &v9[38 * (v11 >> 1)];
    v14 = **(a3 + 8);
    v15 = *(v126 + v14);
    if (v10 > 0x13000)
    {
      v16 = *(v13 + v14);
      if (v16 >= *(a1 + v14))
      {
        if (v15 < v16)
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v13, v126);
          if (*(v13 + **(a3 + 8)) < *(a1 + **(a3 + 8)))
          {
            v17 = a1;
            v18 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = a1;
        if (v15 < v16)
        {
          goto LABEL_16;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v13);
        if (*(v126 + **(a3 + 8)) < *(v13 + **(a3 + 8)))
        {
          v17 = v13;
LABEL_16:
          v18 = a2 - 38;
LABEL_25:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v17, v18);
        }
      }

      v22 = &a1[38 * v12 - 38];
      v23 = **(a3 + 8);
      v24 = *(v22 + v23);
      v25 = *(a1 + v23 + 608);
      v26 = *(v124 + v23);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(&a1[38 * v12 - 38], v124);
          if (*(v22 + **(a3 + 8)) < *(a1 + **(a3 + 8) + 608))
          {
            v27 = a1 + 38;
            v28 = &a1[38 * v12 - 38];
            goto LABEL_37;
          }
        }
      }

      else
      {
        v27 = a1 + 38;
        if (v26 < v24)
        {
          goto LABEL_30;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v27, &a1[38 * v12 - 38]);
        if (*(v124 + **(a3 + 8)) < *(v22 + **(a3 + 8)))
        {
          v27 = &a1[38 * v12 - 38];
LABEL_30:
          v28 = a2 - 76;
LABEL_37:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v27, v28);
        }
      }

      v29 = &a1[38 * v12 + 38];
      v30 = **(a3 + 8);
      v31 = *(v29 + v30);
      v32 = *(a1 + v30 + 1216);
      v33 = *(v123 + v30);
      if (v31 >= v32)
      {
        if (v33 < v31)
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(&a1[38 * v12 + 38], v123);
          if (*(v29 + **(a3 + 8)) < *(a1 + **(a3 + 8) + 1216))
          {
            v34 = a1 + 76;
            v35 = &a1[38 * v12 + 38];
            goto LABEL_46;
          }
        }
      }

      else
      {
        v34 = a1 + 76;
        if (v33 < v31)
        {
          goto LABEL_42;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v34, &a1[38 * v12 + 38]);
        if (*(v123 + **(a3 + 8)) < *(v29 + **(a3 + 8)))
        {
          v34 = &a1[38 * v12 + 38];
LABEL_42:
          v35 = a2 - 114;
LABEL_46:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v34, v35);
        }
      }

      v36 = **(a3 + 8);
      v37 = *(v13 + v36);
      v38 = *(v22 + v36);
      v39 = *(v29 + v36);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v13, &a1[38 * v12 + 38]);
          if (*(v13 + **(a3 + 8)) < *(v22 + **(a3 + 8)))
          {
            v40 = &a1[38 * v12 - 38];
            v41 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v40 = &a1[38 * v12 - 38];
        if (v39 < v37)
        {
          goto LABEL_51;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v40, v13);
        if (*(v29 + **(a3 + 8)) < *(v13 + **(a3 + 8)))
        {
          v40 = v13;
LABEL_51:
          v41 = &a1[38 * v12 + 38];
LABEL_55:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v40, v41);
        }
      }

      v20 = a1;
      v21 = v13;
      goto LABEL_57;
    }

    v19 = *(a1 + v14);
    if (v19 >= *(v13 + v14))
    {
      if (v15 < v19)
      {
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v126);
        if (*(a1 + **(a3 + 8)) < *(v13 + **(a3 + 8)))
        {
          v20 = v13;
          v21 = a1;
          goto LABEL_57;
        }
      }
    }

    else
    {
      v20 = v13;
      if (v15 < v19)
      {
        goto LABEL_21;
      }

      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v13, a1);
      if (*(v126 + **(a3 + 8)) < *(a1 + **(a3 + 8)))
      {
        v20 = a1;
LABEL_21:
        v21 = a2 - 38;
LABEL_57:
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v20, v21);
      }
    }

    --a4;
    if ((a5 & 1) != 0 || *(a1 + **(a3 + 8) - 608) < *(a1 + **(a3 + 8)))
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v127, a1);
      v42 = 0;
      v43 = *(a3 + 8);
      do
      {
        if (&a1[v42 + 38] == a2)
        {
          goto LABEL_187;
        }

        v44 = *v43;
        v45 = *(&a1[v42 + 38] + *v43);
        v46 = *&v128[*v43 - 8];
        v42 += 38;
      }

      while (v45 < v46);
      v47 = &a1[v42];
      if (v42 != 38)
      {
        v48 = v44 - 608;
        v49 = a2;
        while (v49 != a1)
        {
          v50 = v49 - 38;
          v51 = *(v49 + v48);
          v49 -= 38;
          if (v51 < v46)
          {
            goto LABEL_73;
          }
        }

        goto LABEL_187;
      }

      v52 = v44 - 608;
      v53 = a2;
      while (v47 < v53)
      {
        v50 = v53 - 38;
        v54 = *(v53 + v52);
        v53 -= 38;
        if (v54 < v46)
        {
          goto LABEL_73;
        }
      }

      v50 = v53;
LABEL_73:
      if (v47 < v50)
      {
        v55 = v47;
        v56 = v50;
LABEL_75:
        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v55, v56);
        v57 = *(a3 + 8);
        v58 = v55 + 38;
        while (v58 != a2)
        {
          v59 = *(v58 + *v57);
          v60 = *&v128[*v57 - 8];
          v58 += 38;
          if (v59 >= v60)
          {
            v55 = v58 - 38;
            v61 = *v57 - 608;
            v62 = v56;
            while (v62 != a1)
            {
              v56 = v62 - 38;
              v63 = *(v62 + v61);
              v62 -= 38;
              if (v63 < v60)
              {
                if (v55 < v56)
                {
                  goto LABEL_75;
                }

                v64 = v58 - 76;
                goto LABEL_84;
              }
            }

            goto LABEL_187;
          }
        }

        goto LABEL_187;
      }

      v64 = v47 - 38;
LABEL_84:
      if (v64 != a1)
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::operator=(a1, v64);
      }

      WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v64, &v127);
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v132);
      WebCore::ResourceResponseData::~ResourceResponseData(v131, v65);
      v67 = v130;
      v130 = 0;
      if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v66);
      }

      v68 = v129;
      v129 = 0;
      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v66);
      }

      WebCore::ResourceRequest::~ResourceRequest(v128);
      if (v47 < v50)
      {
LABEL_95:
        std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,false>(a1, v64, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v64 + 38;
        continue;
      }

      v69 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(a1, v64, a3);
      v9 = v64 + 38;
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(v64 + 38, a2, a3))
      {
        if (v69)
        {
          continue;
        }

        goto LABEL_95;
      }

      a2 = v64;
      if (v69)
      {
        return;
      }

      goto LABEL_1;
    }

    WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v127, a1);
    v70 = **(a3 + 8);
    v71 = *&v128[v70 - 8];
    if (v71 < *(v126 + v70))
    {
      v72 = a1;
      while (1)
      {
        v9 = v72 + 38;
        if (v72 + 38 == a2)
        {
          goto LABEL_187;
        }

        v73 = *(v72 + v70 + 608);
        v72 += 38;
        if (v71 < v73)
        {
          goto LABEL_104;
        }
      }
    }

    v74 = a1 + 38;
    do
    {
      v9 = v74;
      if (v74 >= a2)
      {
        break;
      }

      v75 = *(v74 + v70);
      v74 += 38;
    }

    while (v71 >= v75);
LABEL_104:
    v76 = a2;
    if (v9 < a2)
    {
      v77 = v70 - 608;
      v78 = a2;
      while (v78 != a1)
      {
        v76 = v78 - 38;
        v79 = *(v78 + v77);
        v78 -= 38;
        if (v71 >= v79)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_187;
    }

LABEL_115:
    if (v9 < v76)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v9, v76);
      v80 = *(a3 + 8);
      v81 = v9 + 38;
      while (v81 != a2)
      {
        v82 = *&v128[*v80 - 8];
        v83 = *(v81 + *v80);
        v81 += 38;
        if (v82 < v83)
        {
          v9 = v81 - 38;
          v84 = *v80 - 608;
          v85 = v76;
          while (v85 != a1)
          {
            v76 = v85 - 38;
            v86 = *(v85 + v84);
            v85 -= 38;
            if (v82 >= v86)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_187;
        }
      }

      goto LABEL_187;
    }

    if (v9 - 38 != a1)
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::operator=(a1, v9 - 38);
    }

    WebCore::DOMCacheEngine::CrossThreadRecord::operator=((v9 - 38), &v127);
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v132);
    WebCore::ResourceResponseData::~ResourceResponseData(v131, v87);
    v89 = v130;
    v130 = 0;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v88);
    }

    v90 = v129;
    v129 = 0;
    if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v90, v88);
    }

    WebCore::ResourceRequest::~ResourceRequest(v128);
    a5 = 0;
  }

  v91 = v9 + 38;
  v92 = **(a3 + 8);
  v93 = *(v9 + v92 + 608);
  v94 = *(v9 + v92);
  v95 = *(v126 + v92);
  if (v93 >= v94)
  {
    if (v95 >= v93)
    {
      return;
    }

    v98 = v9 + 38;
    v99 = v126;
    goto LABEL_169;
  }

  if (v95 < v93)
  {
    goto LABEL_136;
  }

  std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v9, v9 + 38);
  if (*(v126 + **(a3 + 8)) < *(v91 + **(a3 + 8)))
  {
    v96 = v9 + 38;
    goto LABEL_137;
  }
}

void std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v9 = a1;
  v10 = **(a5 + 8);
  v11 = *(a2 + v10);
  v12 = *(a1 + v10);
  v13 = *(a3 + v10);
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a2, a3);
      if (*(a2 + **(a5 + 8)) < *(v9 + **(a5 + 8)))
      {
        a1 = v9;
        v14 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v13 < v11)
    {
LABEL_5:
      v14 = a3;
LABEL_9:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v14);
      goto LABEL_10;
    }

    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, a2);
    if (*(a3 + **(a5 + 8)) < *(a2 + **(a5 + 8)))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + **(a5 + 8)) < *(a3 + **(a5 + 8)))
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a3, a4);
    if (*(a3 + **(a5 + 8)) < *(a2 + **(a5 + 8)))
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a2, a3);
      if (*(a2 + **(a5 + 8)) < *(v9 + **(a5 + 8)))
      {

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v9, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 5);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = a1 + 38;
        v14 = **(a3 + 8);
        v15 = *(a1 + v14 + 608);
        v16 = a2 - 38;
        v17 = *(a1 + v14);
        v18 = *(a2 + v14 - 608);
        if (v15 < v17)
        {
          if (v18 >= v15)
          {
            std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, a1 + 38);
            if (*(v16 + **(a3 + 8)) >= *(v8 + **(a3 + 8)))
            {
              return 1;
            }

            a1 = v5 + 38;
          }

          v7 = v16;
LABEL_28:
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v7);
          return 1;
        }

        if (v18 >= v15)
        {
          return 1;
        }

        v12 = a1 + 38;
        v13 = a2 - 38;
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,0>(a1, a1 + 38, a1 + 76, a2 - 38, a3);
        return 1;
      case 5:
        v8 = a1 + 38;
        v9 = a1 + 76;
        v10 = a1 + 114;
        v11 = a2 - 38;
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,0>(a1, a1 + 38, a1 + 76, a1 + 114, a3);
        if (*(v11 + **(a3 + 8)) >= *(v10 + **(a3 + 8)))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v5 + 114, v11);
        if (*(v10 + **(a3 + 8)) >= *(v9 + **(a3 + 8)))
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v5 + 76, v5 + 114);
        if (*(v9 + **(a3 + 8)) >= *(v8 + **(a3 + 8)))
        {
          return 1;
        }

        v12 = v5 + 38;
        v13 = v5 + 76;
        break;
      default:
        goto LABEL_18;
    }

    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v12, v13);
    if (*(v8 + **(a3 + 8)) >= *(v5 + **(a3 + 8)))
    {
      return 1;
    }

    a1 = v5;
    v7 = v8;
    goto LABEL_28;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 38;
    if (*(a2 + **(a3 + 8) - 608) < *(a1 + **(a3 + 8)))
    {
      goto LABEL_28;
    }

    return 1;
  }

LABEL_18:
  v19 = a1 + 38;
  v20 = **(a3 + 8);
  v21 = *(a1 + v20 + 608);
  v22 = a1 + 76;
  v23 = *(a1 + v20);
  v24 = *(a1 + v20 + 1216);
  if (v21 < v23)
  {
    if (v24 >= v21)
    {
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, a1 + 38);
      if (*(v22 + **(a3 + 8)) >= *(v19 + **(a3 + 8)))
      {
        goto LABEL_33;
      }

      a1 = v5 + 38;
    }

    v25 = v5 + 76;
    goto LABEL_32;
  }

  if (v24 < v21)
  {
    std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1 + 38, a1 + 76);
    if (*(v19 + **(a3 + 8)) < *(v5 + **(a3 + 8)))
    {
      a1 = v5;
      v25 = v5 + 38;
LABEL_32:
      std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v25);
    }
  }

LABEL_33:
  v26 = v5 + 114;
  if (v5 + 114 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (*(v26 + **(a3 + 8)) < *(v22 + **(a3 + 8)))
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v38, v26);
      v29 = v27;
      while (1)
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v5 + v29 + 1824, (v5 + v29 + 1216));
        if (v29 == -1216)
        {
          break;
        }

        v30 = **(a3 + 8);
        v31 = v5 + v29 + v30;
        v29 -= 608;
        if (*(&v38 + v30) >= *(v31 + 76))
        {
          v32 = v5 + v29 + 1824;
          goto LABEL_41;
        }
      }

      v32 = v5;
LABEL_41:
      WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v32, &v38);
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v43);
      WebCore::ResourceResponseData::~ResourceResponseData(&v42, v33);
      v35 = v41;
      v41 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v34);
      }

      v36 = v40;
      v40 = 0;
      if (v36)
      {
        if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v34);
        }
      }

      ++v28;
      WebCore::ResourceRequest::~ResourceRequest(&v39);
      if (v28 == 8)
      {
        return v26 + 38 == a2;
      }
    }

    v22 = v26;
    v27 += 608;
    v26 += 38;
    if (v26 == a2)
    {
      return 1;
    }
  }
}

void std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(__int128 *a1, __int128 *a2)
{
  WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v8, a1);
  WebCore::DOMCacheEngine::CrossThreadRecord::operator=(a1, a2);
  WebCore::DOMCacheEngine::CrossThreadRecord::operator=(a2, &v8);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v13);
  WebCore::ResourceResponseData::~ResourceResponseData(&v12, v4);
  v6 = v11;
  v11 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  WebCore::ResourceRequest::~ResourceRequest(&v9);
}

uint64_t WebCore::DOMCacheEngine::CrossThreadRecord::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  WebCore::ResourceRequestBase::RequestData::operator=(a1 + 24, a2 + 24);
  v6 = *(a2 + 22);
  *(a2 + 22) = 0;
  v7 = *(a1 + 176);
  *(a1 + 176) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(a2 + 23);
  *(a2 + 23) = 0;
  v9 = *(a1 + 184);
  *(a1 + 184) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = *(a1 + 192);
  *(a1 + 192) = v10;
  if (v11)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v11);
  }

  v12 = *(a2 + 25);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v12;
  v13 = *(a2 + 27);
  *(a2 + 27) = 0;
  v14 = *(a1 + 216);
  *(a1 + 216) = v13;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a2 + 56);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 224) = v15;
  v16 = *(a2 + 29);
  *(a2 + 29) = 0;
  v17 = *(a1 + 232);
  *(a1 + 232) = v16;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  v18 = a2[16];
  *(a1 + 240) = a2[15];
  *(a1 + 256) = v18;
  v19 = *(a2 + 34);
  *(a2 + 34) = 0;
  v20 = *(a1 + 272);
  *(a1 + 272) = v19;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v5);
  }

  *(a1 + 280) = *(a2 + 280);
  WebCore::ResourceResponseData::operator=(a1 + 288, (a2 + 18));
  mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::operator=(a1 + 584, a2 + 73);
  *(a1 + 600) = *(a2 + 75);
  return a1;
}

void std::__partial_sort_impl[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*,WebCore::DOMCacheEngine::CrossThreadRecord*>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 609)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[38 * v10];
      do
      {
        std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(a1, a4, v9, v12);
        v12 -= 38;
        --v11;
      }

      while (v11);
    }

    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*(v13 + **(a4 + 8)) < *(a1 + **(a4 + 8)))
        {
          std::ranges::__swap::__fn::operator()[abi:sn200100]<WebCore::DOMCacheEngine::CrossThreadRecord>(v13, a1);
          std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(a1, a4, v9, a1);
        }

        v13 += 38;
      }

      while (v13 != a3);
    }

    if (v8 >= 609)
    {
      v14 = 0x86BCA1AF286BCA1BLL * (v8 >> 5);
      while (v14 > 0)
      {
        if (v14 != 1)
        {
          WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v35, a1);
          v15 = 0;
          v16 = a1;
          do
          {
            v17 = v16 + 608 * v15;
            v18 = (v17 + 608);
            v19 = (2 * v15) | 1;
            v20 = 2 * v15 + 2;
            if (v20 < v14)
            {
              v21 = (v17 + 1216);
              if (*(v18 + **(a4 + 8)) < *(v21 + **(a4 + 8)))
              {
                v18 = v21;
                v19 = v20;
              }
            }

            WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v16, v18);
            v16 = v18;
            v15 = v19;
          }

          while (v19 <= ((v14 - 2) >> 1));
          v6 -= 38;
          if (v18 == v6)
          {
            WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v18, &v35);
          }

          else
          {
            WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v18, v6);
            WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v6, &v35);
            v22 = v18 - a1 + 608;
            if (v22 >= 609)
            {
              v23 = (-2 - 0x79435E50D79435E5 * (v22 >> 5)) >> 1;
              v24 = &a1[38 * v23];
              if (*(v24 + **(a4 + 8)) < *(v18 + **(a4 + 8)))
              {
                WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v41, v18);
                do
                {
                  v25 = v24;
                  WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v18, v24);
                  if (!v23)
                  {
                    break;
                  }

                  v23 = (v23 - 1) >> 1;
                  v24 = &a1[38 * v23];
                  v18 = v25;
                }

                while (*(v24 + **(a4 + 8)) < *(&v41 + **(a4 + 8)));
                WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v25, &v41);
                mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v46);
                WebCore::ResourceResponseData::~ResourceResponseData(&v45, v26);
                v28 = v44;
                v44 = 0;
                if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v28, v27);
                }

                v29 = v43;
                v43 = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v27);
                }

                WebCore::ResourceRequest::~ResourceRequest(&v42);
              }
            }
          }

          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v40);
          WebCore::ResourceResponseData::~ResourceResponseData(&v39, v30);
          v32 = v38;
          v38 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v31);
          }

          v33 = v37;
          v37 = 0;
          if (v33)
          {
            if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v31);
            }
          }

          WebCore::ResourceRequest::~ResourceRequest(&v36);
          if (v14-- > 2)
          {
            continue;
          }
        }

        return;
      }

      __break(1u);
    }
  }
}

void std::__sift_down[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned long long WebCore::DOMCacheEngine::CrossThreadRecord::*> &,WebCore::DOMCacheEngine::CrossThreadRecord*>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v27[15] = v4;
    v27[16] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0x86BCA1AF286BCA1BLL * ((a4 - a1) >> 5)))
    {
      v12 = (0xD79435E50D79436 * ((a4 - a1) >> 5)) | 1;
      v13 = (a1 + 608 * v12);
      if (0xD79435E50D79436 * ((a4 - a1) >> 5) + 2 >= a3)
      {
        v14 = **(a2 + 8);
      }

      else
      {
        v14 = **(a2 + 8);
        if (*(v13 + v14) < *(v13 + v14 + 608))
        {
          v13 += 38;
          v12 = 0xD79435E50D79436 * ((a4 - a1) >> 5) + 2;
        }
      }

      if (*(v13 + v14) >= *(a4 + v14))
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v22, a4);
        do
        {
          v15 = v13;
          WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v7, v13);
          if (v9 < v12)
          {
            break;
          }

          v16 = (2 * v12) | 1;
          v13 = (a1 + 608 * v16);
          v17 = **(a2 + 8);
          if (2 * v12 + 2 < a3 && *(v13 + v17) < *(v13 + v17 + 608))
          {
            v13 += 38;
            v16 = 2 * v12 + 2;
          }

          v7 = v15;
          v12 = v16;
        }

        while (*(v13 + v17) >= *(&v22 + v17));
        WebCore::DOMCacheEngine::CrossThreadRecord::operator=(v15, &v22);
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v27);
        WebCore::ResourceResponseData::~ResourceResponseData(&v26, v18);
        v20 = v25;
        v25 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        v21 = v24;
        v24 = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v19);
          }
        }

        WebCore::ResourceRequest::~ResourceRequest(&v23);
      }
    }
  }
}

void WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::moveOverlapping(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    if (a2 != a1)
    {
      v5 = 0;
      v6 = a3 + a2 - a1;
      do
      {
        v7 = v6 + v5 * 8;
        v9 = &a2[v5 - 20];
        v8 = *v9;
        *v9 = 0;
        *(v7 - 160) = v8;
        v10 = a2[v5 - 19];
        *(v9 + 1) = 0;
        *(v7 - 152) = v10;
        v11 = a2[v5 - 18];
        *(v9 + 2) = 0;
        *(v7 - 144) = v11;
        v12 = a2[v5 - 17];
        *(v9 + 3) = 0;
        *(v7 - 136) = v12;
        v13 = *&a2[v5 - 16];
        v14 = *&a2[v5 - 14];
        *(v7 - 96) = a2[v5 - 12];
        *(v7 - 128) = v13;
        *(v7 - 112) = v14;
        v15 = *&a2[v5 - 11];
        *(v7 - 72) = *&a2[v5 - 9];
        *(v7 - 88) = v15;
        WTF::URL::URL(v6 + v5 * 8 - 56, &a2[v5 - 7]);
        *(v7 - 16) = a2[v5 - 2];
        *(v7 - 8) = 0;
        v16 = a2[v5 - 1];
        a2[v5 - 1] = 0;
        *(v7 - 8) = v16;
        WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v9, v17);
        v5 -= 20;
      }

      while (&a2[v5] != a1);
    }
  }

  else
  {

    WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::move(a1, a2, a3);
  }
}

_DWORD *WTF::RefCounted<WebKit::CacheStorageManager>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::CacheStorageManager::~CacheStorageManager((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::removeRecords(WebCore::ResourceRequest &&,WebCore::CacheQueryOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A308;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::removeRecords(WebCore::ResourceRequest &&,WebCore::CacheQueryOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A308;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::removeRecords(WebCore::ResourceRequest &&,WebCore::CacheQueryOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::call(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = *(a1 + 8);
    v2 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = v2;
    v8 = 0;
  }

  else
  {
    LOBYTE(v6) = 2;
    v8 = 1;
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v3 + 16))(v3, &v6);
  result = (*(*v3 + 8))(v3);
  if (!v8)
  {
    result = v6;
    if (v6)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 752 * v3;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v4 + 736);
      WebCore::ResourceResponseData::~ResourceResponseData((v4 + 432), v6);
      v8 = *(v4 + 52);
      *(v4 + 52) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = *(v4 + 47);
      *(v4 + 47) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      WebCore::ResourceRequest::~ResourceRequest((v4 + 168));
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v4, v10);
      v4 = (v4 + 752);
      v5 -= 752;
    }

    while (v5);
  }

  v11 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v11, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecords(WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A330;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecords(WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A330;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

WTF *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecords(WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void,BOOL>::call(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = (v4 + 8);
      ++*(v4 + 8);
      if (*(a1 + 40))
      {
        if (a2)
        {
          v39 = 0;
          v40 = 0;
          v6 = *(a1 + 28);
          if (v6)
          {
            v7 = 752 * v6;
            v8 = (*(a1 + 16) + 168);
            do
            {
              ExistingRecord = WebKit::CacheStorageCache::findExistingRecord(v4, v8, 0, 0);
              if (ExistingRecord)
              {
                v10 = ExistingRecord;
                *(v8 - 11) = *(ExistingRecord + 10);
                v11 = HIDWORD(v40);
                if (HIDWORD(v40) == v40)
                {
                  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>(&v39, ExistingRecord);
                }

                else
                {
                  v12 = WebKit::NetworkCache::Key::Key((v39 + 160 * HIDWORD(v40)), ExistingRecord);
                  v13 = *(v10 + 72);
                  *(v12 + 88) = *(v10 + 88);
                  *(v12 + 72) = v13;
                  v14 = *(v10 + 13);
                  if (v14)
                  {
                    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
                  }

                  *(v12 + 13) = v14;
                  v15 = *(v10 + 8);
                  *(v12 + 7) = *(v10 + 7);
                  *(v12 + 8) = v15;
                  *(v12 + 144) = *(v10 + 144);
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v12 + 19, v10 + 19);
                  HIDWORD(v40) = v11 + 1;
                }
              }

              v8 = (v8 + 752);
              v7 -= 752;
            }

            while (v7);
          }

          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v4, v4);
          v16 = *v4;
          atomic_fetch_add(*v4, 1u);
          v17 = *(a1 + 16);
          *(a1 + 16) = 0;
          v18 = *(a1 + 32);
          *(a1 + 32) = 0;
          v19 = *(v4 + 88);
          v20 = *(a1 + 24);
          *(a1 + 24) = 0;
          v21 = WTF::fastMalloc(0x28);
          *v21 = &unk_1F110A358;
          v21[1] = v16;
          *buf = 0;
          v36 = 0;
          v21[2] = v17;
          v37 = 0;
          v21[3] = v20;
          v21[4] = v18;
          v34 = v21;
          (*(*v19 + 24))(v19, &v39, &v34);
          v23 = v34;
          v34 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          v38 = 0;
          WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v22);
          v25 = *buf;
          *buf = 0;
          if (v25)
          {
            if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v25);
              WTF::fastFree(v25, v24);
            }
          }

          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v24);
          return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v5, v26);
        }

        v31 = 3;
      }

      else
      {
        v30 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_19D52D000, v30, OS_LOG_TYPE_ERROR, "CacheStorageCache::putRecords failed because the amount of space requested is invalid", buf, 2u);
        }

        v31 = 4;
      }

      buf[0] = v31;
      LOBYTE(v37) = 1;
      v32 = *(a1 + 32);
      *(a1 + 32) = 0;
      (*(*v32 + 16))(v32, buf);
      (*(*v32 + 8))(v32);
      if (!v37)
      {
        v33 = *buf;
        if (*buf)
        {
          *buf = 0;
          LODWORD(v36) = 0;
          WTF::fastFree(v33, v26);
        }
      }

      return WTF::RefCounted<WebKit::CacheStorageCache>::deref(v5, v26);
    }
  }

  buf[0] = 4;
  LOBYTE(v37) = 1;
  v27 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v27 + 16))(v27, buf);
  result = (*(*v27 + 8))(v27);
  if (!v37)
  {
    result = *buf;
    if (*buf)
    {
      *buf = 0;
      LODWORD(v36) = 0;
      return WTF::fastFree(result, v29);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsAfterQuotaCheck(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_0,void,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A358;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsAfterQuotaCheck(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_0,void,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A358;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsAfterQuotaCheck(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_0,void,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t *a2)
{
  v105 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v106 = v2;
  v3 = *(a1 + 8);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    LOBYTE(v107) = 4;
    v109 = 1;
    v79 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(*v79 + 16))(v79, &v107);
    (*(*v79 + 8))(v79);
    if (!v109)
    {
      v81 = v107;
      if (v107)
      {
        v107 = 0;
        LODWORD(v108) = 0;
        WTF::fastFree(v81, v80);
      }
    }

    return WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v105, v80);
  }

  ++*(v4 + 8);
  v5 = *(a1 + 16);
  v111 = 0;
  v112 = 0;
  v96 = a1 + 16;
  v97 = (v4 + 8);
  v6 = *(a1 + 28);
  v7 = 0;
  if (!v6)
  {
    v99 = 0;
    v69 = 0;
    v67 = v5;
    v72 = v5;
    goto LABEL_100;
  }

  v99 = 0;
  v8 = v5 + 752 * v6;
  v101 = v4;
  do
  {
    v9 = *(v5 + 80);
    if (v9)
    {
      if (HIDWORD(v106))
      {
        v10 = 0;
        v11 = 0;
        v12 = v105;
        while (*(v105 + v10 + 752) != 1 || *(v105 + v10 + 80) != v9)
        {
          ++v11;
          v10 += 768;
          if (768 * HIDWORD(v106) == v10)
          {
            goto LABEL_11;
          }
        }

        if (v11 >= HIDWORD(v106))
        {
          __break(0xC471u);
LABEL_120:
          __break(1u);
LABEL_121:
          JUMPOUT(0x19DDD5934);
        }

        v98 = v98 & 0xFFFFFFFFFFFFFF00 | 1;
        ExistingRecord = WebKit::CacheStorageCache::findExistingRecord(v4, (v5 + 168), v9, 1);
        if (ExistingRecord)
        {
          v32 = ExistingRecord;
          v33 = v105 + v10;
          WebKit::NetworkCache::Key::operator=(v5, ExistingRecord);
          *(v5 + 72) = *(v32 + 72);
          WTF::String::operator=((v5 + 104), (v32 + 104));
          v34 = *(v32 + 128);
          *(v5 + 112) = *(v32 + 112);
          *(v5 + 128) = v34;
          if (*(v12 + v10 + 752))
          {
            v35 = v12 + v10;
            *(v5 + 160) = *(v12 + v10 + 160);
            WebCore::ResourceRequestBase::RequestData::operator=(v5 + 168, v12 + v10 + 168);
            v37 = *(v12 + v10 + 320);
            *(v12 + v10 + 320) = 0;
            v38 = *(v5 + 320);
            *(v5 + 320) = v37;
            if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v36);
            }

            v39 = *(v35 + 328);
            *(v35 + 328) = 0;
            v40 = *(v5 + 328);
            *(v5 + 328) = v39;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v36);
            }

            v41 = v12 + v10;
            v42 = *(v12 + v10 + 336);
            *(v12 + v10 + 336) = 0;
            v43 = *(v5 + 336);
            *(v5 + 336) = v42;
            if (v43)
            {
              WTF::RefCounted<WebCore::FormData>::deref(v43);
            }

            v44 = *(v41 + 344);
            *(v5 + 352) = *(v41 + 352);
            *(v5 + 344) = v44;
            v45 = *(v41 + 360);
            *(v41 + 360) = 0;
            v46 = *(v5 + 360);
            *(v5 + 360) = v45;
            if (v46)
            {
              CFRelease(v46);
            }

            if (*(v33 + 752))
            {
              v47 = v12 + v10;
              v48 = *(v12 + v10 + 368);
              *(v5 + 371) = *(v12 + v10 + 371);
              *(v5 + 368) = v48;
              v49 = *(v12 + v10 + 376);
              *(v12 + v10 + 376) = 0;
              v50 = *(v5 + 376);
              *(v5 + 376) = v49;
              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, v36);
              }

              v51 = *(v47 + 400);
              *(v5 + 384) = *(v47 + 384);
              *(v5 + 400) = v51;
              if (*(v33 + 752))
              {
                v52 = *(v12 + v10 + 416);
                *(v12 + v10 + 416) = 0;
                v53 = *(v5 + 416);
                *(v5 + 416) = v52;
                if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v53, v36);
                }

                WebKit::CacheStorageRecordInformation::updateVaryHeaders(v5, (v5 + 168), (v5 + 432));
                v54 = *(v5 + 96);
                v99 += *(v32 + 96);
                *(v32 + 96) = v54;
                goto LABEL_68;
              }
            }
          }

          goto LABEL_120;
        }
      }

LABEL_11:
      *(v5 + 80) = 0;
      goto LABEL_72;
    }

    *(v5 + 80) = atomic_fetch_add(&WebKit::nextRecordIdentifier(void)::currentRecordIdentifier, 1uLL) + 1;
    v13 = *(v5 + 96);
    WebKit::CacheStorageCache::computeKeyURL(&v110, (v5 + 104));
    v16 = v110;
    if (v110 == -1)
    {
      __break(0xC471u);
      goto LABEL_121;
    }

    if (!v110)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDD5954);
    }

    v17 = v8;
    v18 = *(v4 + 80);
    if (v18 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v4 + 80), 0), (v18 = *(v4 + 80)) != 0))
    {
      v19 = *(v18 - 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v16 + 4);
    v102 = v13;
    v103 = v7;
    if (v20 < 0x100)
    {
      v21 = WTF::StringImpl::hashSlowCase(v16);
    }

    else
    {
      v21 = v20 >> 8;
    }

    v22 = 0;
    for (i = 1; ; ++i)
    {
      v24 = v21 & v19;
      v25 = (v18 + 24 * (v21 & v19));
      v26 = *v25;
      if (*v25 == -1)
      {
        v22 = (v18 + 24 * v24);
        goto LABEL_25;
      }

      if (!v26)
      {
        break;
      }

      if (WTF::equal(v26, v16, v15))
      {
        goto LABEL_59;
      }

LABEL_25:
      v21 = i + v24;
    }

    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      v22[2] = 0;
      --*(*(v101 + 80) - 16);
      v25 = v22;
    }

    v110 = 0;
    v27 = *v25;
    *v25 = v16;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v14);
    }

    v107 = 0;
    v108 = 0;
    WTF::GenericHashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((v25 + 1), &v107);
    WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v28);
    v29 = *(v101 + 80);
    if (v29)
    {
      v30 = *(v29 - 12) + 1;
    }

    else
    {
      v30 = 1;
    }

    *(v29 - 12) = v30;
    v55 = (*(v29 - 16) + v30);
    v56 = *(v29 - 4);
    if (v56 > 0x400)
    {
      if (v56 <= 2 * v55)
      {
LABEL_58:
        v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v101 + 80), v25);
      }
    }

    else if (3 * v56 <= 4 * v55)
    {
      goto LABEL_58;
    }

LABEL_59:
    v57 = *(v25 + 5);
    if (v57 == *(v25 + 4))
    {
      WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>((v25 + 1), v5);
      v54 = v102;
      v7 = v103;
      v8 = v17;
    }

    else
    {
      v59 = WebKit::NetworkCache::Key::Key((v25[1] + 160 * v57), v5);
      v60 = *(v5 + 72);
      *(v59 + 88) = *(v5 + 88);
      *(v59 + 72) = v60;
      v61 = *(v5 + 104);
      v54 = v102;
      v7 = v103;
      v8 = v17;
      if (v61)
      {
        atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
      }

      *(v59 + 13) = v61;
      v62 = *(v5 + 128);
      *(v59 + 7) = *(v5 + 112);
      *(v59 + 8) = v62;
      *(v59 + 144) = *(v5 + 144);
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v59 + 19, (v5 + 152));
      ++*(v25 + 5);
    }

    v63 = v110;
    if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v58);
    }

    v4 = v101;
LABEL_68:
    v64 = *(v5 + 80);
    v107 = v64;
    v65 = HIDWORD(v112);
    if (HIDWORD(v112) == v112)
    {
      v66 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v111, HIDWORD(v112) + 1, &v107);
      v65 = HIDWORD(v112);
      *(v111 + HIDWORD(v112)) = *v66;
    }

    else
    {
      *(v111 + HIDWORD(v112)) = v64;
    }

    v7 += v54;
    HIDWORD(v112) = v65 + 1;
LABEL_72:
    v5 += 752;
  }

  while (v5 != v8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 28);
  v67 = (v5 + 752 * v6);
  if (v6)
  {
    v104 = v7;
    v68 = 0;
    v69 = 0;
    v70 = v5 + 752 * v6;
    v71 = v70;
    do
    {
      if (*(v5 + v68 + 80))
      {
        v72 = v70;
      }

      else
      {
        v72 = v5 + v68;
        if (v70 != *(a1 + 16) + 752 * *(a1 + 28))
        {
          if ((v5 + v68) == v71)
          {
            v72 = v70;
          }

          else
          {
            WTF::VectorMover<false,WebKit::CacheStorageRecord>::moveOverlapping(v71, (v5 + v68), v70);
            v72 = v70 + v5 + v68 - v71;
          }
        }

        v73 = v5 + v68;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v5 + v68 + 736);
        WebCore::ResourceResponseData::~ResourceResponseData((v5 + v68 + 432), v74);
        v76 = *(v5 + v68 + 416);
        *(v5 + v68 + 416) = 0;
        if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v75);
        }

        v77 = *(v73 + 376);
        *(v73 + 376) = 0;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v75);
        }

        v71 = (v73 + 752);
        WebCore::ResourceRequest::~ResourceRequest((v5 + v68 + 168));
        WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation((v5 + v68), v78);
        ++v69;
        v70 = v72;
      }

      v68 += 752;
    }

    while (v5 + v68 < v67);
    v5 = *(a1 + 16);
    v6 = *(a1 + 28);
    v67 = v71;
    v7 = v104;
  }

  else
  {
    v69 = 0;
    v72 = *(a1 + 16);
  }

LABEL_100:
  v82 = (v5 + 752 * v6);
  if (v67 != v82)
  {
    WTF::VectorMover<false,WebKit::CacheStorageRecord>::moveOverlapping(v67, v82, v72);
    v6 = *(a1 + 28);
  }

  *(a1 + 28) = v6 - v69;
  v83 = *(v4 + 32);
  if (v83)
  {
    v84 = *(v83 + 8);
    if (v84)
    {
      v85 = (v84 + 8);
      ++*(v84 + 8);
      if (v7 > v99)
      {
        if ((*(v84 + 32) & 1) == 0)
        {
          goto LABEL_110;
        }

LABEL_109:
        v86 = (*(v84 + 24) + v7 - v99);
        *(v84 + 24) = v86;
        *(v84 + 32) = 1;
        WebKit::writeSizeFile(*(v84 + 56), v86);
        goto LABEL_110;
      }

      if (v7 < v99 && *(v84 + 32) == 1)
      {
        goto LABEL_109;
      }

LABEL_110:
      WTF::RefCounted<WebKit::CacheStorageManager>::deref(v85, v82);
    }
  }

  v87 = *(v4 + 88);
  v88 = v111;
  v89 = *(a1 + 32);
  *(a1 + 32) = 0;
  v90 = v112;
  v111 = 0;
  v112 = 0;
  v91 = WTF::fastMalloc(0x20);
  *v91 = &unk_1F110A380;
  *(v91 + 1) = v88;
  *(v91 + 2) = v90;
  *(v91 + 3) = v89;
  v107 = v91;
  (*(*v87 + 40))(v87, v96, &v107);
  v93 = v107;
  v107 = 0;
  if (v93)
  {
    (*(*v93 + 8))(v93);
  }

  v94 = v111;
  if (v111)
  {
    v111 = 0;
    LODWORD(v112) = 0;
    WTF::fastFree(v94, v92);
  }

  WTF::RefCounted<WebKit::CacheStorageCache>::deref(v97, v92);
  return WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v105, v80);
}

void WTF::VectorMover<false,WebKit::CacheStorageRecord>::moveOverlapping(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (a1 <= a3)
  {
    if (a2 != a1)
    {
      v11 = 0;
      v12 = a2 - a1 + a3 - 752;
      do
      {
        v13 = &a2[v11];
        WebKit::CacheStorageRecord::CacheStorageRecord(v12 + v11 * 8, &a2[v11 - 94]);
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&a2[v11 - 2]);
        WebCore::ResourceResponseData::~ResourceResponseData(&a2[v11 - 40], v14);
        v16 = a2[v11 - 42];
        a2[v11 - 42] = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }

        v17 = *(v13 - 47);
        *(v13 - 47) = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v15);
        }

        WebCore::ResourceRequest::~ResourceRequest(&a2[v11 - 73]);
        WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(&a2[v11 - 94], v18);
        v11 -= 94;
      }

      while (&a2[v11] != v5);
    }
  }

  else if (a1 != a2)
  {
    do
    {
      WebKit::CacheStorageRecord::CacheStorageRecord(v3, v5);
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor((v5 + 92));
      WebCore::ResourceResponseData::~ResourceResponseData((v5 + 54), v6);
      v8 = v5[52];
      v5[52] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = v5[47];
      v5[47] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest((v5 + 21));
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation(v5, v10);
      v3 += 752;
      v5 += 94;
    }

    while (v5 != a2);
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsInStore(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_3,void,BOOL>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A380;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsInStore(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_3,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A380;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::CacheStorageCache::putRecordsInStore(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)::$_3,void,BOOL>::call(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = *(a1 + 8);
    v2 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = v2;
    v8 = 0;
  }

  else
  {
    LOBYTE(v6) = 2;
    v8 = 1;
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v3 + 16))(v3, &v6);
  result = (*(*v3 + 8))(v3);
  if (!v8)
  {
    result = v6;
    if (v6)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A3D0;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110A3D0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1, const WTF::String *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v85 = 0;
  v86 = 0;
  WTF::FileSystemImpl::listDirectory(&v83, (a1 + 24), a2);
  if (v84)
  {
    v8 = v83;
    v68 = v7;
    v69 = &v83[v84];
    do
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = *(v9 + 16);
        v9 = *(v9 + 4);
        v11 = ((v10 >> 2) & 1) << 32;
      }

      else
      {
        v11 = 0x100000000;
      }

      v12 = *v8;
      if (*v8)
      {
        v13 = *(v12 + 16);
        v12 = *(v12 + 4);
        v14 = ((v13 >> 2) & 1) << 32;
      }

      else
      {
        v14 = 0x100000000;
      }

      v5 = v9 | v5 & 0xFFFFFF0000000000 | v11;
      v71 = v12 | v71 & 0xFFFFFF0000000000 | v14;
      WTF::FileSystemImpl::pathByAppendingComponent();
      v15 = v82;
      if (v82)
      {
        v15 = *(v82 + 1);
        v16 = ((*(v82 + 4) >> 2) & 1) << 32;
      }

      else
      {
        v16 = 0x100000000;
      }

      v17 = *(v7 + 16);
      if (v17)
      {
        v18 = *(v17 + 16);
        v17 = *(v17 + 4);
        v19 = ((v18 >> 2) & 1) << 32;
      }

      else
      {
        v19 = 0x100000000;
      }

      v72 = v15 | v72 & 0xFFFFFF0000000000 | v16;
      v73 = v17 | v73 & 0xFFFFFF0000000000 | v19;
      WTF::FileSystemImpl::pathByAppendingComponent();
      WTF::FileSystemImpl::listDirectory(&v79, &v81, v20);
      if (v80)
      {
        v70 = v5;
        v22 = v79;
        v3 = v3 & 0xFFFFFF0000000000 | 0x100000005;
        v23 = 8 * v80;
        do
        {
          if (!*v22 || (WTF::StringImpl::endsWith() & 1) == 0)
          {
            v24 = v81;
            if (v81)
            {
              v24 = *(v81 + 1);
              v25 = ((*(v81 + 4) >> 2) & 1) << 32;
            }

            else
            {
              v25 = 0x100000000;
            }

            v26 = *v22;
            if (*v22)
            {
              v27 = *(v26 + 16);
              v26 = *(v26 + 4);
              v28 = ((v27 >> 2) & 1) << 32;
            }

            else
            {
              v28 = 0x100000000;
            }

            v4 = v24 | v4 & 0xFFFFFF0000000000 | v25;
            v2 = v26 | v2 & 0xFFFFFF0000000000 | v28;
            WTF::FileSystemImpl::pathByAppendingComponent();
            WTF::FileSystemImpl::mapFile();
            if (v76 == 1)
            {
              WebKit::readRecordInfoFromFileData(&v87, (a1 + 40), v74, v75);
              if (v99 == 1)
              {
                v29 = HIDWORD(v86);
                if (HIDWORD(v86) == v86)
                {
                  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation>(&v85, &v87);
                }

                else
                {
                  v30 = v85 + 160 * HIDWORD(v86);
                  v31 = v87;
                  v87 = 0;
                  *v30 = v31;
                  v32 = v88;
                  v88 = 0;
                  *(v30 + 8) = v32;
                  v33 = v89;
                  v89 = 0;
                  *(v30 + 16) = v33;
                  v34 = v90;
                  v90 = 0;
                  *(v30 + 24) = v34;
                  v35 = v91;
                  v36 = v92;
                  *(v30 + 64) = v93;
                  *(v30 + 32) = v35;
                  *(v30 + 48) = v36;
                  v37 = v94;
                  *(v30 + 88) = v95;
                  *(v30 + 72) = v37;
                  WTF::URL::URL(v30 + 104, v96);
                  *(v30 + 144) = v97;
                  *(v30 + 152) = 0;
                  v38 = v98;
                  v98 = 0;
                  *(v30 + 152) = v38;
                  HIDWORD(v86) = v29 + 1;
                }
              }

              if (v99 == 1)
              {
                WebKit::StoredRecordInformation::~StoredRecordInformation(&v87, v21);
              }

              if (v76)
              {
                WTF::FileSystemImpl::MappedFileData::~MappedFileData(&v74);
              }
            }

            v39 = v78;
            v78 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v21);
            }
          }

          ++v22;
          v23 -= 8;
        }

        while (v23);
        v7 = v68;
        v5 = v70;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v21);
      v41 = v81;
      v81 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v40);
      }

      v42 = v82;
      v82 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v40);
      }

      ++v8;
    }

    while (v8 != v69);
    v43 = v85;
    v44 = HIDWORD(v86);
    v45 = *(v7 + 40);
    v46 = *(a1 + 16);
    *(a1 + 16) = 0;
    v74 = v46;
    if (v44)
    {
      v47 = v43 + 160 * v44;
      do
      {
        WebKit::CacheStorageRecordInformation::isolatedCopy(&v87, v43);
        WebKit::NetworkCache::Key::operator=(v43, &v87);
        v48 = v95;
        *(v43 + 72) = v94;
        *(v43 + 88) = v48;
        v49 = v43 + 104;
        WTF::URL::operator=(v43 + 104, v96);
        *(v43 + 144) = v97;
        v51 = v98;
        v98 = 0;
        v52 = *(v43 + 152);
        *(v43 + 152) = v51;
        if (v52)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v52, v50);
          if (v98)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v98, v50);
          }
        }

        v53 = v96[0];
        v96[0] = 0;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v50);
        }

        v54 = v90;
        v90 = 0;
        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v50);
        }

        v55 = v89;
        v89 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v50);
        }

        v56 = v88;
        v88 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v50);
        }

        v57 = v87;
        v87 = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v50);
        }

        v43 += 160;
      }

      while (v49 + 56 != v47);
      v43 = v85;
      v58 = HIDWORD(v86);
      v46 = v74;
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v43 = 0;
    v45 = *(v7 + 40);
    v46 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  v59 = v86;
  v85 = 0;
  v86 = 0;
  v75 = v43;
  v76 = 0;
  v60 = *(a1 + 48);
  *(a1 + 48) = 0;
  v77 = v60;
  v61 = WTF::fastMalloc(0x28);
  *v61 = &unk_1F110A3F8;
  *(v61 + 8) = v46;
  v74 = 0;
  v75 = 0;
  *(v61 + 16) = v43;
  v76 = 0;
  *(v61 + 24) = v59;
  *(v61 + 28) = v58;
  *(v61 + 32) = v60;
  v79 = v61;
  (*(*v45 + 48))(v45, &v79);
  v63 = v79;
  v79 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v77 = 0;
  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v62);
  v65 = v74;
  v74 = 0;
  if (v65 && atomic_fetch_add(v65 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v65 + 2);
    (*(*v65 + 8))(v65);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v64);
  return WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v66);
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A3F8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A3F8;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readAllRecordInfosInternal(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 0;
    v6 = 768 * v3;
    do
    {
      v7 = v4 + v5;
      if (*(v4 + v5 + 752) == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor((v7 + 736));
        WebCore::ResourceResponseData::~ResourceResponseData((v7 + 432), v8);
        v10 = *(v7 + 52);
        *(v7 + 52) = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        v11 = *(v4 + v5 + 376);
        *(v4 + v5 + 376) = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v9);
        }

        WebCore::ResourceRequest::~ResourceRequest((v4 + v5 + 168));
        WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation((v4 + v5), v12);
      }

      v5 += 768;
    }

    while (v6 != v5);
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

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A420;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110A420;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v5 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = a1;
  v241 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v155 = 0;
  v156 = 0;
  v3 = *(a1 + 44);
  if (!v3)
  {
    v140 = 0;
    v62 = 0;
    v64 = *(v2 + 40);
    v65 = *(a1 + 16);
    *(a1 + 16) = 0;
LABEL_265:
    v141 = v1;
    goto LABEL_266;
  }

  v4 = 0;
  v5 = *(a1 + 32);
  v6 = 160 * v3;
  do
  {
    WebKit::recordFilePathWithDirectory(&v158, *(v1 + 24), (v5 + v4));
    WTF::FileSystemImpl::mapFile();
    if ((v202 & 1) == 0)
    {
      v151 = 0uLL;
LABEL_8:
      v10 = 0;
      v157 = 0uLL;
      goto LABEL_14;
    }

    v7 = *buf;
    memset(buf, 0, sizeof(buf));
    v151 = v7;
    WTF::FileSystemImpl::MappedFileData::~MappedFileData(buf);
    if (!*(&v151 + 1))
    {
      goto LABEL_8;
    }

    WebKit::CacheStorageDiskStore::recordBlobFilePath(&v168, v158);
    WTF::FileSystemImpl::mapFile();
    if (v202)
    {
      v9 = *buf;
      memset(buf, 0, sizeof(buf));
      v157 = v9;
      WTF::FileSystemImpl::MappedFileData::~MappedFileData(buf);
    }

    else
    {
      v157 = 0uLL;
    }

    v11 = v168;
    v168 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v10 = *(&v151 + 1);
LABEL_14:
    v12 = v151;
    WebKit::readRecordInfoFromFileData(buf, (v2 + 32), v151, v10);
    if (v240 != 1)
    {
      LOBYTE(v168) = 0;
      v183 = 0;
      goto LABEL_96;
    }

    LOBYTE(v184) = 0;
    LOBYTE(v186) = 0;
    if (v216 == 1)
    {
      v14 = v215;
      v15 = v211 + v217;
      if ((v215 + v211 + v217) != v10)
      {
        goto LABEL_64;
      }

      if (v10 < v15)
      {
        goto LABEL_272;
      }

      if (v215 == -1)
      {
        v14 = (v10 - v15);
      }

      else if (v10 - v15 < v215)
      {
        goto LABEL_272;
      }

      v159 = v15 + v12;
      v160 = v14;
      WebKit::computeSHA1(&v190, v15 + v12, v14, *(v2 + 32));
      v16 = v212 == v190 && v213 == v191;
      if (!v16 || v214 != v192)
      {
LABEL_64:
        LOBYTE(v168) = 0;
        v183 = 0;
        goto LABEL_94;
      }

      WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul> &>(&v190);
      v184 = v190;
      LOBYTE(v185) = 2;
      LOBYTE(v186) = 1;
      goto LABEL_60;
    }

    if (!v157)
    {
      goto LABEL_64;
    }

    WebCore::FragmentedSharedBuffer::create();
    v18 = WTF::fastMalloc(0x40);
    MEMORY[0x19EB04740](v18, &v190);
    v19 = v190;
    v190 = 0;
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      (*(*v19 + 8))(v19);
    }

    if ((v240 & 1) == 0)
    {
LABEL_272:
      __break(1u);
    }

    v20 = WebCore::SharedBuffer::span(v18);
    WebKit::computeSHA1(&v190, v20, v21, *(v2 + 32));
    v23 = v212 == v190 && v213 == v191 && v214 == v192;
    v24 = !v23;
    if (!v23)
    {
      LOBYTE(v168) = 0;
      v183 = 0;
      goto LABEL_54;
    }

    if (v186 != 1)
    {
      atomic_fetch_add(v18 + 2, 1u);
      v184 = v18;
      LOBYTE(v185) = 2;
      LOBYTE(v186) = 1;
      goto LABEL_54;
    }

    if (v185 <= 1u)
    {
      if (v185)
      {
        v25 = v184;
        v184 = 0;
        if (v25)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v25);
        }
      }

LABEL_53:
      LOBYTE(v185) = -1;
      atomic_fetch_add(v18 + 2, 1u);
      v184 = v18;
      LOBYTE(v185) = 2;
      goto LABEL_54;
    }

    if (v185 == 255)
    {
      goto LABEL_53;
    }

    atomic_fetch_add(v18 + 2, 1u);
    v61 = v184;
    v184 = v18;
    if (v61 && atomic_fetch_add(v61 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v61 + 2);
      (*(*v61 + 8))(v61);
    }

LABEL_54:
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18 + 2);
      (*(*v18 + 8))(v18);
    }

    if (!v24)
    {
      if ((v186 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_60:
      if ((v240 & 1) == 0)
      {
        goto LABEL_272;
      }

      v26 = v221;
      LODWORD(v164) = v230[0];
      *(&v164 + 3) = *(v230 + 3);
      v27 = v231;
      if (v231)
      {
        atomic_fetch_add_explicit(v231, 2u, memory_order_relaxed);
        v165 = v27;
        v166 = v232;
        v167 = v233;
        if ((v240 & 1) == 0)
        {
          goto LABEL_272;
        }
      }

      else
      {
        v165 = 0;
        v166 = v232;
        v167 = v233;
      }

      WebKit::CacheStorageRecord::CacheStorageRecord(&v190, buf, v26, &v222, &v164, &v234, v235, v236, v239, &v184);
      WebKit::CacheStorageRecord::CacheStorageRecord(&v168, &v190);
      v183 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v200);
      WebCore::ResourceResponseData::~ResourceResponseData(&v199, v28);
      v30 = v198;
      v198 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }

      v31 = v197;
      v197 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v29);
      }

      WebCore::ResourceRequest::~ResourceRequest(&v196);
      if (v195)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v195, v13);
      }

      v32 = v194;
      v194 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v13);
      }

      v33 = v193;
      v193 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v13);
      }

      v34 = v192;
      v192 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v13);
      }

      v35 = v191;
      v191 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v13);
      }

      v36 = v190;
      v190 = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v13);
      }

      v165 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v13);
      }

      if ((v186 & 1) == 0)
      {
        goto LABEL_94;
      }

LABEL_93:
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v184);
      goto LABEL_94;
    }

    if (v186)
    {
      goto LABEL_93;
    }

LABEL_94:
    if (v240)
    {
      WebKit::StoredRecordInformation::~StoredRecordInformation(buf, v13);
    }

LABEL_96:
    if ((v183 & 1) == 0)
    {
      v45 = qword_1ED640928;
      if (os_log_type_enabled(qword_1ED640928, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v2;
        _os_log_impl(&dword_19D52D000, v45, OS_LOG_TYPE_DEFAULT, "%p - CacheStorageDiskStore::readRecordsInternal fails to decode record from file", buf, 0xCu);
      }

      goto LABEL_113;
    }

    if (*(v5 + v4 + 72) == v172 && *(v5 + v4 + 96) == v175 && (WTF::equal(*(v5 + v4 + 104), v176, v14) & 1) != 0)
    {
      WebKit::CacheStorageDiskStore::recordFilePath(buf, *(v2 + 24), (v5 + v4));
      if ((v183 & 1) == 0)
      {
        goto LABEL_272;
      }

      WebKit::CacheStorageDiskStore::recordFilePath(&v190, *(v2 + 24), &v168);
      v39 = WTF::equal(*buf, v190, v37);
      v40 = v190;
      v190 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v38);
      }

      v41 = *buf;
      *buf = 0;
      if (!v41 || atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        if (v39)
        {
          goto LABEL_107;
        }

        goto LABEL_113;
      }

      WTF::StringImpl::destroy(v41, v38);
      if ((v39 & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_107:
      if ((v183 & 1) == 0)
      {
        goto LABEL_272;
      }

      v173 = *(v5 + v4 + 80);
      v174 = *(v5 + v4 + 88);
      v42 = HIDWORD(v156);
      if (HIDWORD(v156) == v156)
      {
        v43 = WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v155, HIDWORD(v156) + 1, &v168);
        v42 = HIDWORD(v156);
        v44 = (v155 + 768 * HIDWORD(v156));
        *v44 = 0;
        v44[752] = 0;
        if (*(v43 + 752) != 1)
        {
          goto LABEL_149;
        }

LABEL_148:
        *(WebKit::CacheStorageRecord::CacheStorageRecord(v44, v43) + 752) = 1;
      }

      else
      {
        v44 = (v155 + 768 * HIDWORD(v156));
        *v44 = 0;
        v44[752] = 0;
        if (v183 == 1)
        {
          v43 = &v168;
          goto LABEL_148;
        }
      }

LABEL_149:
      v48 = v42 + 1;
      goto LABEL_116;
    }

LABEL_113:
    v46 = HIDWORD(v156);
    if (HIDWORD(v156) == v156)
    {
      WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::nullopt_t const&>(&v155);
      goto LABEL_117;
    }

    v47 = (v155 + 768 * HIDWORD(v156));
    *v47 = 0;
    v47[752] = 0;
    v48 = v46 + 1;
LABEL_116:
    HIDWORD(v156) = v48;
LABEL_117:
    if (v183 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v182);
      WebCore::ResourceResponseData::~ResourceResponseData(v181, v49);
      v51 = v180;
      v180 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v50);
      }

      v52 = v179;
      v179 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v50);
      }

      WebCore::ResourceRequest::~ResourceRequest(v178);
      if (v177)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v177, v53);
      }

      v54 = v176;
      v176 = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v53);
      }

      v55 = v171;
      v171 = 0;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v53);
      }

      v56 = v170;
      v170 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v53);
      }

      v57 = v169;
      v169 = 0;
      if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v53);
      }

      v58 = v168;
      v168 = 0;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v53);
      }
    }

    WTF::FileSystemImpl::MappedFileData::~MappedFileData(&v157);
    WTF::FileSystemImpl::MappedFileData::~MappedFileData(&v151);
    v60 = v158;
    v158 = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v59);
    }

    v4 += 160;
  }

  while (v6 != v4);
  v62 = v155;
  v63 = HIDWORD(v156);
  v64 = *(v2 + 40);
  v65 = *(v1 + 16);
  *(v1 + 16) = 0;
  *&v151 = v65;
  if (!v63)
  {
    v140 = 0;
    goto LABEL_265;
  }

  v150 = v64;
  v66 = 0;
  v67 = 768 * v63;
  do
  {
    v68 = v62 + v66;
    v69 = *(v62 + v66 + 752);
    if (v69)
    {
      v70 = v1;
      WebKit::CacheStorageRecordInformation::isolatedCopy(&v184, v62 + v66);
      v71 = *(v68 + 160);
      WebCore::ResourceRequestBase::isolatedCopy(&v164, (v68 + 168));
      v72 = *(v68 + 372);
      v73 = *(v68 + 374);
      v74 = *(v68 + 368);
      WTF::String::isolatedCopy();
      v75 = *(v68 + 384);
      v76 = *(v68 + 400);
      v77 = *(v68 + 408);
      LODWORD(v159) = v74;
      WORD2(v159) = v72;
      BYTE6(v159) = v73;
      v161 = v75;
      v162 = v76;
      v163 = v77;
      WTF::String::isolatedCopy();
      LOBYTE(v72) = *(v68 + 424);
      WebCore::ResourceResponseData::isolatedCopy(&v190, (v68 + 432));
      v78 = *(v68 + 728);
      WebCore::DOMCacheEngine::isolatedResponseBody();
      WebKit::CacheStorageRecord::CacheStorageRecord(&v168, &v184, v71, &v164, &v159, &v158, v72, &v190, v78, &v157);
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v157);
      WebCore::ResourceResponseData::~ResourceResponseData(&v190, v79);
      v81 = v158;
      v158 = 0;
      if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v80);
      }

      v82 = v160;
      v160 = 0;
      if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v82, v80);
      }

      WebCore::ResourceRequest::~ResourceRequest(&v164);
      v1 = v70;
      if (v189)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v189, v83);
      }

      v84 = v188;
      v188 = 0;
      if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v83);
      }

      v85 = v187;
      v187 = 0;
      if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v83);
      }

      v86 = v186;
      v186 = 0;
      if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v83);
      }

      v87 = v185;
      v185 = 0;
      if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v87, v83);
      }

      v88 = v184;
      v184 = 0;
      if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v83);
      }

      WebKit::CacheStorageRecord::CacheStorageRecord(buf, &v168);
      v238 = 1;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v182);
      WebCore::ResourceResponseData::~ResourceResponseData(v181, v89);
      v91 = v180;
      v180 = 0;
      if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v91, v90);
      }

      v92 = v179;
      v179 = 0;
      if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v92, v90);
      }

      WebCore::ResourceRequest::~ResourceRequest(v178);
      if (v177)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v177, v93);
      }

      v94 = v176;
      v176 = 0;
      if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v94, v93);
      }

      v95 = v171;
      v171 = 0;
      if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v95, v93);
      }

      v96 = v170;
      v170 = 0;
      if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v96, v93);
      }

      v97 = v169;
      v169 = 0;
      if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v97, v93);
      }

      v98 = v168;
      v168 = 0;
      if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v98, v93);
      }

      v69 = *(v68 + 752);
      v99 = v238;
    }

    else
    {
      v99 = 0;
      buf[0] = 0;
      v238 = 0;
    }

    if (v69 == v99)
    {
      if (v69)
      {
        WebKit::NetworkCache::Key::operator=(v62 + v66, buf);
        v100 = v62 + v66;
        v101 = v205;
        *(v100 + 72) = v204;
        *(v100 + 88) = v101;
        WTF::URL::operator=(v62 + v66 + 104, &v206);
        *(v100 + 144) = v207;
        v103 = v208;
        v208 = 0;
        v104 = *(v62 + v66 + 152);
        *(v100 + 152) = v103;
        if (v104)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v102);
        }

        *(v100 + 160) = v209;
        WebCore::ResourceRequestBase::RequestData::operator=(v100 + 168, v210);
        v106 = v217;
        v217 = 0;
        v107 = *(v100 + 320);
        *(v100 + 320) = v106;
        if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v107, v105);
        }

        v108 = v62 + v66;
        v109 = v218;
        v218 = 0;
        v110 = *(v62 + v66 + 328);
        *(v62 + v66 + 328) = v109;
        if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v110, v105);
        }

        v111 = v219;
        v219 = 0;
        v112 = *(v108 + 336);
        *(v108 + 336) = v111;
        if (v112)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v112);
        }

        v113 = v62 + v66;
        v114 = v220;
        *(v113 + 352) = v221;
        *(v113 + 344) = v114;
        v115 = v222;
        v222 = 0;
        v116 = *(v62 + v66 + 360);
        *(v113 + 360) = v115;
        if (v116)
        {
          CFRelease(v116);
        }

        v117 = *(v223 + 3);
        *(v113 + 368) = v223[0];
        *(v113 + 371) = v117;
        v118 = v224;
        v224 = 0;
        v119 = *(v113 + 376);
        *(v113 + 376) = v118;
        if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v119, v105);
        }

        v120 = v62 + v66;
        v121 = v226;
        *(v120 + 384) = v225;
        *(v120 + 400) = v121;
        v122 = v227;
        v227 = 0;
        v123 = *(v62 + v66 + 416);
        *(v120 + 416) = v122;
        if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v123, v105);
        }

        *(v120 + 424) = v228;
        WebCore::ResourceResponseData::operator=(v120 + 432, v229);
        *(v120 + 728) = v236[13];
        mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::operator=(v120 + 736, v237);
      }
    }

    else if (v69)
    {
      v124 = v62 + v66;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v62 + v66 + 736);
      WebCore::ResourceResponseData::~ResourceResponseData((v62 + v66 + 432), v125);
      v127 = *(v62 + v66 + 416);
      *(v62 + v66 + 416) = 0;
      if (v127 && atomic_fetch_add_explicit(v127, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v127, v126);
      }

      v128 = *(v124 + 376);
      *(v124 + 376) = 0;
      if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v128, v126);
      }

      WebCore::ResourceRequest::~ResourceRequest((v62 + v66 + 168));
      WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation((v62 + v66), v129);
      *(v68 + 752) = 0;
    }

    else
    {
      WebKit::CacheStorageRecord::CacheStorageRecord(v62 + v66, buf);
      *(v68 + 752) = 1;
    }

    if (v238 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v237);
      WebCore::ResourceResponseData::~ResourceResponseData(v229, v130);
      v132 = v227;
      v227 = 0;
      if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v132, v131);
      }

      v133 = v224;
      v224 = 0;
      if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v133, v131);
      }

      WebCore::ResourceRequest::~ResourceRequest(v210);
      if (v208)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v208, v134);
      }

      v135 = v206;
      v206 = 0;
      if (v135 && atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v135, v134);
      }

      v136 = v203;
      v203 = 0;
      if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v136, v134);
      }

      v137 = v202;
      v202 = 0;
      if (v137 && atomic_fetch_add_explicit(v137, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v137, v134);
      }

      v138 = *&buf[8];
      *&buf[8] = 0;
      if (v138 && atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v138, v134);
      }

      v139 = *buf;
      *buf = 0;
      if (v139 && atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v139, v134);
      }
    }

    v66 += 768;
  }

  while (v67 != v66);
  v62 = v155;
  v140 = HIDWORD(v156);
  v65 = v151;
  v141 = v1;
  v64 = v150;
LABEL_266:
  v142 = v156;
  v155 = 0;
  v156 = 0;
  v143 = *(v141 + 48);
  *(v141 + 48) = 0;
  *(&v151 + 1) = v62;
  v153 = v143;
  v144 = WTF::fastMalloc(0x28);
  *v144 = &unk_1F110A448;
  *(v144 + 8) = v65;
  v151 = 0uLL;
  *(v144 + 16) = v62;
  v152 = 0;
  *(v144 + 24) = v142;
  *(v144 + 28) = v140;
  *(v144 + 32) = v143;
  v154 = v144;
  (*(*v64 + 48))(v64, &v154);
  v146 = v154;
  v154 = 0;
  if (v146)
  {
    (*(*v146 + 8))(v146);
  }

  v153 = 0;
  WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v151 + 8, v145);
  v148 = v151;
  *&v151 = 0;
  if (v148 && atomic_fetch_add(v148 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v148 + 2);
    (*(*v148 + 8))(v148);
  }

  return WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v155, v147);
}

void WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::nullopt_t const&>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  if (v3 + (v3 >> 1) <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3 + (v3 >> 1);
  }

  if (v4 <= v2 + 1)
  {
    v5 = v2 + 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v6);
  v7 = (*a1 + 768 * *(a1 + 12));
  *v7 = 0;
  v7[752] = 0;
  ++*(a1 + 12);
}

void WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x555556)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *a1;
      v4 = *(a1 + 12);
      v5 = 768 * a2;
      v6 = WTF::fastMalloc((768 * a2));
      *(a1 + 8) = v5 / 0x300;
      *a1 = v6;
      if (v4)
      {
        v8 = v6;
        v9 = 0;
        v10 = 768 * v4;
        do
        {
          v11 = (v8 + v9);
          *v11 = 0;
          v11[752] = 0;
          if (*(v3 + v9 + 752) == 1)
          {
            *(WebKit::CacheStorageRecord::CacheStorageRecord(v11, (v3 + v9)) + 752) = 1;
            if (*(v3 + v9 + 752))
            {
              v12 = v3 + v9;
              mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v3 + v9 + 736);
              WebCore::ResourceResponseData::~ResourceResponseData((v3 + v9 + 432), v13);
              v15 = *(v3 + v9 + 416);
              *(v3 + v9 + 416) = 0;
              if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v15, v14);
              }

              v16 = *(v12 + 47);
              *(v12 + 47) = 0;
              if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v14);
              }

              WebCore::ResourceRequest::~ResourceRequest((v3 + v9 + 168));
              WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation((v3 + v9), v17);
            }
          }

          v9 += 768;
        }

        while (v10 != v9);
      }

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
  }
}

unint64_t WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 768 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A448;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A448;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::readRecordsInternal(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<std::optional<WebKit::CacheStorageRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A470;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A470;
  v3 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 36);
  if (v3)
  {
    v4 = *(a1 + 24);
    v5 = 8 * v3;
    v6 = 1;
    do
    {
      v7 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v21 = v7;
      WebKit::CacheStorageDiskStore::recordBlobFilePath(&v20, v7);
      WTF::FileSystemImpl::deleteFile(&v20, v8);
      v10 = v20;
      v20 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      WTF::FileSystemImpl::deleteFile(&v21, v9);
      v13 = WTF::FileSystemImpl::fileExists(&v21, v11);
      v14 = v21;
      v21 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v6 &= v13 ^ 1;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v6 = 1;
  }

  v15 = *(v2 + 40);
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  v17 = *(a1 + 40);
  *(a1 + 40) = 0;
  v18 = WTF::fastMalloc(0x20);
  *v18 = &unk_1F110A498;
  *(v18 + 8) = v16;
  *(v18 + 16) = v6;
  *(v18 + 24) = v17;
  v21 = v18;
  (*(*v15 + 48))(v15, &v21);
  result = v21;
  v21 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110A498;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A498;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::deleteRecords(WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorMover<false,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A4C0;
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 7), a2);
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), v4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), v5);
  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A4C0;
  v3 = *(a1 + 9);
  *(a1 + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, a2);
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, v5);
  v7 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(a1, v6);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1, const WTF::String *a2)
{
  v25 = *(a1 + 8);
  if (*(a1 + 36))
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = *(*(a1 + 24) + 8 * v4);
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v27 = v6;
      if (v4 >= *(a1 + 52))
      {
        goto LABEL_36;
      }

      v7 = *(a1 + 40);
      v8 = v7 + v3;
      if (*(v7 + v3 + 12))
      {
        v9 = WTF::fastMalloc(*(v7 + v3 + 12));
        memcpy(v9, *v8, *(v8 + 12));
      }

      else
      {
        v9 = 0;
      }

      if (v4 >= *(a1 + 68))
      {
LABEL_36:
        __break(0xC471u);
        JUMPOUT(0x19DDD8AE8);
      }

      v10 = *(a1 + 56);
      v11 = v10 + v3;
      v12 = *(v10 + v3 + 12);
      if (v12)
      {
        v13 = WTF::fastMalloc(*(v10 + v3 + 12));
        memcpy(v13, *v11, *(v11 + 12));
      }

      else
      {
        v13 = 0;
      }

      WTF::FileSystemImpl::parentPath(&v26, &v27, a2);
      WTF::FileSystemImpl::makeAllDirectories(&v26, v14);
      v16 = v26;
      v26 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      else if (!v12)
      {
        goto LABEL_17;
      }

      WebKit::CacheStorageDiskStore::recordBlobFilePath(&v26, v27);
      WTF::FileSystemImpl::overwriteEntireFile();
      v17 = a2;
      v18 = v26;
      v26 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
        if (v17)
        {
LABEL_17:
          WTF::FileSystemImpl::overwriteEntireFile();
          v5 &= a2;
          if (v13)
          {
            goto LABEL_28;
          }

          goto LABEL_18;
        }
      }

      else if (a2)
      {
        goto LABEL_17;
      }

      v5 = 0;
      if (v13)
      {
LABEL_28:
        WTF::fastFree(v13, a2);
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }

LABEL_18:
      if (!v9)
      {
        goto LABEL_19;
      }

LABEL_29:
      WTF::fastFree(v9, a2);
LABEL_19:
      v19 = v27;
      v27 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }

      ++v4;
      v3 += 16;
      if (v4 >= *(a1 + 36))
      {
        goto LABEL_33;
      }
    }
  }

  v5 = 1;
LABEL_33:
  v20 = *(v25 + 40);
  v21 = *(a1 + 16);
  *(a1 + 16) = 0;
  v22 = *(a1 + 72);
  *(a1 + 72) = 0;
  v23 = WTF::fastMalloc(0x20);
  *v23 = &unk_1F110A4E8;
  *(v23 + 8) = v21;
  *(v23 + 16) = v5 & 1;
  *(v23 + 24) = v22;
  v27 = v23;
  (*(*v20 + 48))(v20, &v27);
  result = v27;
  v27 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110A4E8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A4E8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageDiskStore::writeRecords(WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDD8F18);
  }

  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
LABEL_18:
      mpark::throw_bad_variant_access(v6);
    }
  }

  else if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDD8F38);
  }

  v7 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v8;
  v10 = v7 + (v9 << 6);
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if ((v6 & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!*(v10 + 24))
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_15:
      v9 = (v9 + v12) & v8;
      v10 = v7 + (v9 << 6);
      v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
      ++v12;
      if (v6)
      {
        if (v11)
        {
          v11[2] = 0u;
          v11[3] = 0u;
          *v11 = 0u;
          v11[1] = 0u;
          --*(*a1 - 16);
          v10 = v11;
        }

        goto LABEL_21;
      }
    }

    if (*(v10 + 24) != 1)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (WebCore::operator==())
    {
      result = WebCore::operator==();
      if (result)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 4);
        }

        else
        {
          v21 = 0;
        }

        v19 = 0;
        v18 = v20 + (v21 << 6);
        goto LABEL_28;
      }
    }

    goto LABEL_15;
  }

LABEL_21:
  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ClientOrigin>,WTF::DefaultHash<WebCore::ClientOrigin>>::translate<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>>> WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::ClientOrigin const&)::{lambda(void)#1}>(v10, a2, &v22);
  v14 = *a1;
  if (*a1)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 <= 2 * v16)
    {
LABEL_25:
      result = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a1, v10);
      v10 = result;
      v14 = *a1;
      if (*a1)
      {
        v17 = *(v14 - 4);
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else if (3 * v17 <= 4 * v16)
  {
    goto LABEL_25;
  }

  v18 = v14 + (v17 << 6);
  v19 = 1;
LABEL_28:
  *a3 = v10;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ClientOrigin>,WTF::DefaultHash<WebCore::ClientOrigin>>::translate<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>>> WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::ClientOrigin const&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  LOBYTE(v11[0]) = 0;
  v12 = -1;
  LODWORD(v5) = *(*a3 + 24);
  if (!*(*a3 + 24))
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v11[0] = v6;
    v5 = *(v4 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v11[1] = v5;
    LOBYTE(v5) = *(v4 + 24);
    goto LABEL_7;
  }

  if (v5 != 255)
  {
    *v11 = *v4;
LABEL_7:
    v12 = v5;
  }

  LOBYTE(v13) = 0;
  v14 = -1;
  LODWORD(v7) = *(v4 + 56);
  if (!*(v4 + 56))
  {
    v8 = *(v4 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *&v13 = v8;
    v7 = *(v4 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(&v13 + 1) = v7;
    LOBYTE(v7) = *(v4 + 56);
    goto LABEL_14;
  }

  if (v7 != 255)
  {
    v13 = *(v4 + 32);
LABEL_14:
    v14 = v7;
  }

  WebCore::SecurityOriginData::operator=(a1);
  result = WebCore::SecurityOriginData::operator=(a1 + 32);
  if (!v14)
  {
    if (*(&v13 + 1) && atomic_fetch_add_explicit(*(&v13 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(*(&v13 + 1), v10);
    }

    result = v13;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v13, v10);
    }
  }

  if (!v12)
  {
    if (v11[1] && atomic_fetch_add_explicit(v11[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11[1], v10);
    }

    result = v11[0];
    if (v11[0])
    {
      if (atomic_fetch_add_explicit(v11[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v11[0], v10);
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc(((a2 << 6) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), a2 << 6);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v14 = v6;
    v7 = v7;
    while (!*(v14 + 24))
    {
      if (*v14 != -1)
      {
        goto LABEL_9;
      }

LABEL_41:
      v14 += 64;
      if (!--v7)
      {
        goto LABEL_46;
      }
    }

    if (*(v14 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

LABEL_9:
    v9 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    if (v9)
    {
      if (!*(v14 + 56))
      {
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v10);
        }

        v9 = *(v14 + 32);
        *(v14 + 32) = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = WTF::StringImpl::destroy(v9, v10);
        }
      }

      *(v14 + 56) = -1;
      if (!*(v14 + 24))
      {
        v16 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v10);
        }

        v9 = *v14;
        *v14 = 0;
        if (v9)
        {
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v9 = WTF::StringImpl::destroy(v9, v10);
          }
        }
      }

      *(v14 + 24) = -1;
    }

    else
    {
      v9 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::reinsert(a1, v14);
      v17 = v9;
      if (!*(v14 + 56))
      {
        v18 = *(v14 + 40);
        *(v14 + 40) = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v10);
        }

        v9 = *(v14 + 32);
        *(v14 + 32) = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = WTF::StringImpl::destroy(v9, v10);
        }
      }

      *(v14 + 56) = -1;
      if (!*(v14 + 24))
      {
        v19 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v10);
        }

        v9 = *v14;
        *v14 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = WTF::StringImpl::destroy(v9, v10);
        }
      }

      *(v14 + 24) = -1;
      if (v14 == a3)
      {
        v13 = v17;
      }
    }

    goto LABEL_41;
  }

  result = 0;
  if (v6)
  {
LABEL_46:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t a2)
{
  v2 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookupForReinsert(a1, a2);
  v4 = v2;
  if (!*(v2 + 56))
  {
    v5 = *(v2 + 40);
    *(v4 + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = *(v4 + 32);
    *(v4 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  *(v4 + 56) = -1;
  if (!*(v4 + 24))
  {
    v7 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v8 = *v4;
    *v4 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }
  }

  *(v4 + 24) = -1;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v4);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 32));
  return v4;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, uint64_t a2)
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

  v4 = WTF::computeHash<WebCore::ClientOrigin>(a2);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    v7 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    v4 = ++v5 + v6;
  }

  while (!v7);
  return v2 + (v6 << 6);
}

uint64_t WTF::ThreadSafeRefCounted<WebKit::CacheStorageRegistry,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    if (v5)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    return bmalloc::api::tzoneFree(v4, a2);
  }

  return this;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            WTF::fastFree(v5, a2);
          }
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::CacheStorageCache,WTF::RawPtrTraits<WebKit::CacheStorageCache>,WTF::DefaultRefDerefTraits<WebKit::CacheStorageCache>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = v5;
    while (1)
    {
      v11 = v4 + 24 * v9;
      if (*(v11 + 8) != -1)
      {
        if (*v11 != 0)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v15 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v4 + 24 * v9));
          v16 = 0;
          do
          {
            v17 = v12 + 24 * (v15 & v13);
            v15 = ++v16 + (v15 & v13);
          }

          while (*v17 != 0);
          v18 = *(v17 + 16);
          *(v17 + 16) = 0;
          if (v18)
          {
            WTF::RefCounted<WebKit::CacheStorageCache>::deref((v18 + 8), v8);
          }

          *v17 = *v11;
          v19 = *(v11 + 16);
          *(v11 + 16) = 0;
          *(v17 + 16) = v19;
          v14 = *(v11 + 16);
          *(v11 + 16) = 0;
          if (!v14)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::RefCounted<WebKit::CacheStorageCache>::deref((v14 + 8), v8);
          goto LABEL_19;
        }

        v14 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v10)
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

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::allCaches(unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A510;
  WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::allCaches(unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110A510;
  WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::allCaches(unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)::$_1,void>::call(void *a1, __n128 a2)
{
  a2.n128_u64[0] = 0;
  v2 = a1[4];
  v8 = a2;
  v4 = a1[1];
  v3 = a1[2];
  v9 = v2;
  v10[0] = v3;
  v5 = a1[3];
  a1[3] = 0;
  v10[1] = v5;
  v10[2] = v2;
  v11 = 0;
  a1[1] = 0;
  a1[2] = 0;
  (*(*v4 + 16))(v4, v10);
  (*(*v4 + 8))(v4);
  if (!v11)
  {
    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
  }

  v11 = -1;
  return WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v6);
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::allCaches(unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)::$_2,void,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110A538;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::allCaches(unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)::$_2,void,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A538;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::initializeCacheSize(WebKit::CacheStorageCache &)::$_0,void,unsigned long long>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110A560;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::initializeCacheSize(WebKit::CacheStorageCache &)::$_0,void,unsigned long long>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A560;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::CacheStorageManager::initializeCacheSize(WebKit::CacheStorageCache &)::$_0,void,unsigned long long>::call(void *result, const WTF::String *a2)
{
  v2 = result[1];
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
  v4 = (v3 + 48);
  v5 = *(v3 + 48);
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = result;
  if (*(result + 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  if (result[3] == -1)
  {
    __break(0xC471u);
LABEL_45:
    __break(1u);
LABEL_46:
    JUMPOUT(0x19DDD9D78);
  }

  v7 = a2;
  v8 = *(v5 - 8);
  v9 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(result + 2);
  v10 = v6[2];
  v11 = v6[3];
  v12 = v9 & v8;
  v13 = (v5 + 16 * (v9 & v8));
  v14 = *v13;
  v15 = v13[1];
  if (*v13 == v10 && v15 == v11)
  {
LABEL_17:
    v19 = *v4;
    if (!*v4)
    {
      v20 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 1;
    while (v14 | v15)
    {
      v12 = (v12 + v17) & v8;
      v13 = (v5 + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      ++v17;
      if (*v13 == v10 && v15 == v11)
      {
        goto LABEL_17;
      }
    }

    v19 = *v4;
    if (!*v4)
    {
      goto LABEL_39;
    }

    v13 = (v19 + 16 * *(v19 - 4));
  }

  v20 = (v19 + 16 * *(v19 - 4));
  if (v20 == v13)
  {
    goto LABEL_39;
  }

LABEL_22:
  if (v20 != v13)
  {
    *v13 = -1;
    v13[1] = -1;
    v19 = *v4;
    v21 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v19 - 16) = v21;
    v22 = *(v19 - 4);
    if (6 * v21.i32[1] >= v22 || v22 <= 8)
    {
      a2 = (v7 + *(v3 + 40));
      *(v3 + 40) = a2;
      goto LABEL_30;
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash((v3 + 48), v22 >> 1, 0);
    v19 = *v4;
  }

  a2 = (v7 + *(v3 + 40));
  *(v3 + 40) = a2;
  if (!v19)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (!*(v19 - 12))
  {
LABEL_31:
    *(v3 + 40) = 0;
    *(v3 + 24) = a2;
    *(v3 + 32) = 1;
    WebKit::writeSizeFile(*(v3 + 56), a2);
    for (i = *(v3 + 136); i != *(v3 + 144); i = *(v3 + 136))
    {
      v25 = *(v3 + 160);
      if (i >= v25)
      {
        goto LABEL_45;
      }

      v26 = *(v3 + 152) + 16 * i;
      v28 = *(v26 + 8);
      *(v26 + 8) = 0;
      if (i == v25 - 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = i + 1;
      }

      *(v3 + 136) = v27;
      (*(**(v3 + 80) + 16))(*(v3 + 80));
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }
  }

LABEL_39:

  return WTF::RefCounted<WebKit::CacheStorageManager>::deref((v3 + 8), a2);
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
      v13 = v6 + 16 * v11;
      if (*(v13 + 8) != -1 && *v13 != 0)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v6 + 16 * v11));
        v17 = 0;
        do
        {
          v18 = (v14 + 16 * (v16 & v15));
          v16 = ++v17 + (v16 & v15);
        }

        while (*v18 != 0);
        *v18 = *v13;
        if (v13 == a3)
        {
          v12 = v18;
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

uint64_t WTF::VectorMover<false,std::pair<unsigned long long,WTF::CompletionHandler<void ()(BOOL)>>>::move(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a3 = v6;
      a3[1] = v7;
      result = v5[1];
      v5[1] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*a3 == 0 || a3[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDA130);
  }

  v6 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a3);
  v9 = result & v7;
  v10 = (v6 + 16 * (result & v7));
  v12 = *v10;
  v11 = v10[1];
  v13 = *a3;
  if (*v10 != 0)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (__PAIR128__(v11, v12) == v13)
      {
        v20 = *a2;
        if (*a2)
        {
          v21 = *(v20 - 4);
        }

        else
        {
          v21 = 0;
        }

        v23 = 0;
        v22 = v20 + 16 * v21;
        goto LABEL_28;
      }

      if (v11 == -1)
      {
        v14 = v10;
      }

      v9 = (v9 + v15) & v7;
      v10 = (v6 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      ++v15;
    }

    while (*v10 != 0);
    if (v14)
    {
      *v14 = 0;
      v14[1] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v10 = v14;
    }
  }

  *v10 = v13;
  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 <= 2 * v18)
    {
LABEL_19:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, v10);
      v10 = result;
      v16 = *a2;
      if (*a2)
      {
        v19 = *(v16 - 4);
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else if (3 * v19 <= 4 * v18)
  {
    goto LABEL_19;
  }

  v22 = v16 + 16 * v19;
  v23 = 1;
LABEL_28:
  *a1 = v10;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc(((32 * a2) | 0x10));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7;
    do
    {
      v14 = v6 + 32 * v11;
      if (*(v14 + 8) != -1)
      {
        if (*v14 == 0)
        {
          v17 = *(v14 + 16);
          if (v17)
          {
            *(v14 + 16) = 0;
            *(v14 + 24) = 0;
            WTF::fastFree(v17, v10);
          }
        }

        else
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

          v18 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v6 + 32 * v11));
          v20 = 0;
          do
          {
            v21 = v18 & v16;
            v22 = v15 + 32 * v21;
            v18 = ++v20 + v21;
          }

          while (*v22 != 0);
          v23 = *(v22 + 16);
          if (v23)
          {
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            WTF::fastFree(v23, v19);
          }

          *v22 = *v14;
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v22 + 16, (v14 + 16));
          v24 = *(v14 + 16);
          if (v24)
          {
            *(v14 + 16) = 0;
            *(v14 + 24) = 0;
            WTF::fastFree(v24, v10);
          }

          if (v14 == a3)
          {
            v12 = v22;
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
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

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDA3FCLL);
  }

  v5 = *(v2 - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v2 + 32 * v8);
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v2 + 32 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 32 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDA5BCLL);
  }

  v6 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v6;
    v4 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v19 = 0;
        v20 = v7 + 8 * *(v7 - 4);
        goto LABEL_23;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*v6 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  *v13 = v4;
  v17 = *v6;
  if (*v6)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v21 = (*(v17 - 16) + v18);
  v22 = *(v17 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6, v13);
      v13 = result;
      v17 = *v6;
      if (*v6)
      {
        v22 = *(v17 - 4);
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_19;
  }

  v20 = v17 + 8 * v22;
  v19 = 1;
LABEL_23:
  *a3 = v13;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DDDA6F4);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 8 * v8);
  if (v9 == v3)
  {
    return v2 + 8 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 8 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 8 * v8;
    }
  }

  return v2 + 8 * *(v2 - 4);
}

uint64_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t *result, _BYTE *a2, unint64_t *a3, char *a4)
{
  v7 = *a3;
  while (((v8 = result[1]) != 0 || (v8 = *result) != 0) && (*(v8 + 16) & 4) == 0 || v7 && (*(v7 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(result);
    if (!result)
    {
      return result;
    }

    if (v9)
    {
      a4 = *a4;
      v10 = *a3;
      *result = *a2;
      v11 = result + 2;
      a2 = (v9 - 1);
      v17 = v10;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v17, result + 2);
      v7 = v17;
      if (!v17 || (v7 = *(v17 + 4), a2 >= v7))
      {
        if (a2 != v7)
        {
          *&v11[2 * v7] = a4;
          return result;
        }
      }
    }

LABEL_19:
    __break(1u);
  }

  result = MEMORY[0x19EB01170]();
  if (!result)
  {
    return result;
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = *a4;
  v14 = *a3;
  *result = *a2;
  v15 = result + 1;
  v16 = v12 - 1;

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v15, v16, v14, v13);
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDDA8ECLL);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

_DWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100]((v21 + 8), 0);
          v22 = *v10;
          v23 = v10[1];
          v10[1] = 0;
          *v21 = v22;
          *(v21 + 8) = v23;
          std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::CacheStorageRecord>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

_DWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,std::unique_ptr<WebKit::CacheStorageRecord>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<std::unique_ptr<WebKit::CacheStorageRecord>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::CacheStorageRecordInformation::updateVaryHeaders(WebCore::ResourceRequest const&,WebCore::ResourceResponseData const&)::$_0,void,WTF::StringView>::call(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v3 = *(a1 + 8);
  if (*(v3 + 144))
  {
    goto LABEL_8;
  }

  v4 = WTF::StringView::trim<BOOL ()(char16_t)>(&v13, WTF::isASCIIWhitespaceWithoutFF<char16_t>);
  if (v4 == "*" || v5 != 1)
  {
    if (v4 != "*" || v5 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v6 = *v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v6 == 42)
  {
LABEL_7:
    *(v3 + 144) = 1;
  }

LABEL_8:
  if (BYTE4(v14) == 1)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  WebCore::ResourceRequestBase::httpHeaderField();
  WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>((v3 + 152), &v12, &v11, v10);
  v8 = v11;
  v11 = 0;
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

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 24 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = v6;
    do
    {
      v15 = v5 + 24 * v12;
      if (*(v15 + 8) != -1)
      {
        if (*v15 == 0)
        {
          v18 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v9);
          }
        }

        else
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v19 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v5 + 24 * v12));
          v20 = 0;
          do
          {
            v21 = v16 + 24 * (v19 & v17);
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21 != 0);
          v22 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v9);
          }

          *v21 = *v15;
          v23 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v21 + 16) = v23;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v9);
          }

          if (v15 == a3)
          {
            v13 = v21;
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

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, atomic_uint **a3@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDAF00);
  }

  v4 = *result;
  if (!*result)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v6 = *(v4 - 8);
  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = result & v6;
  v9 = (v4 + 24 * (result & v6));
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v6;
      v14 = (v4 + 24 * v8);
      v10 = *v14;
      v11 = v14[1];
      ++v13;
      if (v10 == *a2 && v11 == v7)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_17;
  }

LABEL_15:
  v16 = *(v4 + 24 * v8 + 16);
  if (v16)
  {
    atomic_fetch_add(v16, 1u);
  }

LABEL_18:
  *a3 = v16;
  return result;
}

uint64_t WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 80);
    if (v3)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);
    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree(v2, v7);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *(v4 + 1);
        *(v4 + 1) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        WTF::FileSystemImpl::FileHandle::~FileHandle(v4);
      }

      v4 = (v4 + 24);
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::FileSystemStorageManager::~FileSystemStorageManager((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Mapper<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&)::{lambda(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>&&)#1},WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>> const&,void>::map(uint64_t result, uint64_t **a2)
{
  v3 = result;
  v4 = **a2;
  if (v4)
  {
    v5 = *(v4 - 12);
    if (v5)
    {
      if (v5 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * v5));
      *(v3 + 8) = v5;
      *v3 = result;
    }
  }

  v6 = a2[1];
  v7 = a2[3];
  if (v6 != v7)
  {
    v8 = a2[2];
    v9 = *(v3 + 12);
    do
    {
      v10 = *v6;
      v6 += 3;
      *(*v3 + 8 * v9) = v10;
      v9 = *(v3 + 12) + 1;
      *(v3 + 12) = v9;
      while (v6 != v8 && (*v6 + 1) <= 1)
      {
        v6 += 3;
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((24 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    v13 = a2;
    v14 = (v9 + 32);
    do
    {
      *(v14 - 2) = 0;
      *v14 = 0;
      *(v14 - 1) = 0;
      WTF::FileSystemImpl::FileHandle::FileHandle((v14 - 1));
      *v14 = 0;
      v14 += 3;
      --v13;
    }

    while (v13);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = (v6 + 24 * v15);
      v18 = *v17;
      if (*v17 != -1)
      {
        if (v18)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
          v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
          v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
          v25 = v21 & ((v24 >> 31) ^ v24);
          v26 = 1;
          do
          {
            v27 = (v20 + 24 * v25);
            v25 = (v25 + v26++) & v21;
          }

          while (*v27);
          v28 = v27[2];
          v27[2] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          WTF::FileSystemImpl::FileHandle::~FileHandle((v27 + 1));
          *v27 = *v17;
          WTF::FileSystemImpl::FileHandle::FileHandle();
          v30 = v17[2];
          v17[2] = 0;
          v27[2] = v30;
          v31 = v17[2];
          v17[2] = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v29);
          }

          WTF::FileSystemImpl::FileHandle::~FileHandle((v17 + 1));
          if (v17 == a3)
          {
            v16 = v27;
          }
        }

        else
        {
          v19 = v17[2];
          v17[2] = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v10);
            }
          }

          WTF::FileSystemImpl::FileHandle::~FileHandle((v17 + 1));
        }
      }

      ++v15;
    }

    while (v15 != v7);
  }

  else
  {
    v16 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v16;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DDDB4C0);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>>::customDeleteBucket(a2, a2);
  v3 = *a1;
  v4 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5 >> 1, 0);
  }
}

void WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>>::customDeleteBucket(void *a1, WTF::StringImpl *a2)
{
  *a1 = -1;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::FileSystemImpl::FileHandle::~FileHandle((a1 + 1));
}

uint64_t WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)::$_0,void,BOOL>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A5B0;
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A5B0;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v4, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::executeCommandForWritable(WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)::$_0,void,BOOL>::call(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*v4;
      if ((a2 & 1) == 0)
      {
        WebKit::FileSystemStorageHandle::closeWritable(v4, *(a1 + 16), 0);
        v13 = 265;
LABEL_28:
        v17 = *(a1 + 80);
        *(a1 + 80) = 0;
        (*(*v17 + 16))(v17, v13);
        (*(*v17 + 8))(v17);

        return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v4, v18);
      }

      v5 = *(a1 + 24);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v22 = *(a1 + 16);
      v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageHandle::FileHandleWithPath,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::FileSystemStorageHandle::FileHandleWithPath>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v4 + 80), &v22);
      v10 = *(v4 + 80);
      if (v10)
      {
        v10 += 3 * *(v10 - 1);
      }

      if (v10 == v9)
      {
        v13 = 262;
LABEL_27:
        WebKit::FileSystemStorageHandle::closeWritable(v4, *(a1 + 16), 0);
        goto LABEL_28;
      }

      if (v5 == 2)
      {
        if (v8)
        {
          if (!WTF::FileSystemImpl::FileHandle::truncate((v9 + 1)))
          {
LABEL_25:
            v13 = 266;
            goto LABEL_27;
          }

          v15 = WTF::FileSystemImpl::FileHandle::seek();
          if ((v16 & 1) == 0 || v15 > v7)
          {
            WTF::FileSystemImpl::FileHandle::seek();
          }

LABEL_24:
          v13 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        if (v5 != 1)
        {
          if (v5)
          {
            goto LABEL_25;
          }

          if (v6)
          {
            WTF::FileSystemImpl::FileHandle::seek();
            if ((v11 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          WTF::FileSystemImpl::FileHandle::write();
          if ((v12 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v6)
        {
          WTF::FileSystemImpl::FileHandle::seek();
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      v13 = 263;
      goto LABEL_27;
    }
  }

  v20 = *(a1 + 80);
  *(a1 + 80) = 0;
  (*(*v20 + 16))(v20, 266);
  v21 = *(*v20 + 8);

  return v21(v20);
}

void *WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::requestNewCapacityForSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A5D8;
  v3 = a1[4];
  a1[4] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::requestNewCapacityForSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A5D8;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::FileSystemStorageHandle::requestNewCapacityForSyncAccessHandle(WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0,void,BOOL>::call(void *a1, char a2)
{
  v2 = a1[1];
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++*v3;
    if (*(v3 + 72) == 1 && *(v3 + 56) == a1[2])
    {
      if (a2)
      {
        v4 = a1[3];
        *(v3 + 64) = v4;
      }

      else
      {
        v4 = *(v3 + 64);
      }

      v5 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = a1[4];
    a1[4] = 0;
    (*(*v6 + 16))(v6, v4, v5);
    (*(*v6 + 8))(v6);

    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v3, v7);
  }

  else
  {
    v9 = a1[4];
    a1[4] = 0;
    (*(*v9 + 16))(v9, 0, 0);
    v10 = *(*v9 + 8);

    return v10(v9);
  }
}

WebCore::ScrollingTreeScrollingNode *WebKit::ScrollingTreePluginScrollingNodeIOS::create@<X0>(void *a1@<X1>, WebCore::ScrollingTreeScrollingNode **a2@<X8>)
{
  v3 = WebCore::ScrollingTreePluginScrollingNode::operator new(0x158, a1);
  result = WebKit::ScrollingTreePluginScrollingNodeIOS::ScrollingTreePluginScrollingNodeIOS(v3);
  *a2 = v3;
  return result;
}

uint64_t WebCore::ScrollingTreePluginScrollingNode::operator new(WebCore::ScrollingTreePluginScrollingNode *this, void *a2)
{
  if (this == 344 && *MEMORY[0x1E69E2728])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2728], a2);
  }

  else
  {
    return MEMORY[0x1EEE5A018]();
  }
}

WebCore::ScrollingTreeScrollingNode *WebKit::ScrollingTreePluginScrollingNodeIOS::ScrollingTreePluginScrollingNodeIOS(WebCore::ScrollingTreeScrollingNode *a1)
{
  *WebCore::ScrollingTreePluginScrollingNode::ScrollingTreePluginScrollingNode() = &unk_1F110A600;
  v3 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::operator new(0x48, v2);
  WebCore::ScrollingTreeScrollingNodeDelegate::ScrollingTreeScrollingNodeDelegate(v3, a1);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *v3 = &unk_1F110A6D0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0;
  v4 = *(a1 + 12);
  *(a1 + 12) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_19DDDBDA8(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v3, a2);
  MEMORY[0x19EB0D530](v2);
  _Unwind_Resume(a1);
}

void WebKit::ScrollingTreePluginScrollingNodeIOS::~ScrollingTreePluginScrollingNodeIOS(WebKit::ScrollingTreePluginScrollingNodeIOS *this)
{
  v1 = MEMORY[0x19EB0D530](this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(id *this)
{
  result = [this[5] delegate];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::ScrollingTreePluginScrollingNodeIOS::commitStateBeforeChildren(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x2B;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  if ((*(a2 + 41) & 0x10) != 0)
  {
    WebKit::ScrollingTreeScrollingNodeDelegateIOS::resetScrollViewDelegate(*(a1 + 96));
  }

  result = WebCore::ScrollingTreeScrollingNode::commitStateBeforeChildren();
  if (result)
  {
    v9 = *(a2 + 16);
    v3 = v9 > 5;
    v10 = (1 << v9) & 0x2B;
    if (v3 || v10 == 0)
    {
      result = 96;
      __break(0xC471u);
    }

    else
    {
      WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateBeforeChildren(*(a1 + 96), a2);
      return 1;
    }
  }

  return result;
}

void *WebKit::ScrollingTreeScrollingNodeDelegateIOS::resetScrollViewDelegate(id *this)
{
  result = [this[5] delegate];
  if (result)
  {
    return [result setDelegate:0];
  }

  return result;
}

void WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateBeforeChildren(WebKit::ScrollingTreeScrollingNodeDelegateIOS *this, WebCore::LayerRepresentation **a2)
{
  if ((*(a2 + 41) & 0x10) != 0)
  {
    PlatformLayerTyped = WebCore::LayerRepresentation::makePlatformLayerTyped(a2[33], a2);
    v4 = PlatformLayerTyped;
    if (PlatformLayerTyped)
    {
      v5 = PlatformLayerTyped;
    }

    v6 = *(this + 5);
    *(this + 5) = v4;
    if (v6)
    {
    }
  }
}

uint64_t WebKit::ScrollingTreePluginScrollingNodeIOS::commitStateAfterChildren(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a2[16];
  v4 = v3 > 5;
  v5 = (1 << v3) & 0x2B;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateAfterChildren(*(a1 + 96), a2);

  return MEMORY[0x1EEE595B8](a1, a2);
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateAfterChildren(uint64_t this, const WebCore::ScrollingStateScrollingNode *a2)
{
  v3 = this;
  v4 = *(this + 65);
  *(this + 65) = 1;
  if ((*(a2 + 20) & 0x107C) == 0)
  {
    goto LABEL_20;
  }

  this = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(this);
  v5 = this;
  if ((*(a2 + 41) & 0x10) != 0)
  {
    if (!*(v3 + 56))
    {
      v6 = [[WKScrollingNodeScrollViewDelegate alloc] initWithScrollingTreeNodeDelegate:v3];
      v7 = *(v3 + 56);
      *(v3 + 56) = v6;
      if (v7)
      {
      }
    }

    [v5 setScrollsToTop:0];
    [v5 setDelegate:*(v3 + 56)];
    [v5 setBaseScrollViewDelegate:*(v3 + 56)];
    this = objc_opt_respondsToSelector();
    if (this)
    {
      [v5 setTracksImmediatelyWhileDecelerating:0];
      this = [v5 _setAvoidsJumpOnInterruptedBounce:1];
    }
  }

  v8 = *(a2 + 5);
  if ((v8 & 8) != 0)
  {
    WebCore::FloatSize::operator CGSize();
    this = [v5 setContentSize:?];
    v8 = *(a2 + 5);
    LODWORD(v9) = 1;
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = (v8 >> 2) & 1;
  if ((v8 & 0x40) != 0)
  {
LABEL_12:
    this = WebKit::ScrollingTreeScrollingNodeDelegateIOS::updateScrollViewForOverscrollBehavior(v5, *(a2 + 442), *(a2 + 443), 1);
    v8 = *(a2 + 5);
  }

LABEL_13:
  if ((((v8 & 0x20) == 0) & ~v9) == 0)
  {
    if (WebCore::ScrollingTreeScrollingNodeDelegate::scrollOrigin(v3))
    {
      WebCore::ScrollingTreeScrollingNodeDelegate::reachableContentsSize(v3);
      v11 = v10;
      WebCore::ScrollingTreeScrollingNodeDelegate::totalContentsSize(v3);
      v13 = (v11 - v12);
    }

    else
    {
      v13 = 0.0;
    }

    v14 = WebCore::ScrollingTreeScrollingNodeDelegate::scrollOrigin(v3);
    v15 = 0.0;
    if (HIDWORD(v14))
    {
      WebCore::ScrollingTreeScrollingNodeDelegate::reachableContentsSize(v3);
      v17 = v16;
      WebCore::ScrollingTreeScrollingNodeDelegate::totalContentsSize(v3);
      v15 = (v17 - v18);
    }

    this = [v5 setContentInset:{v15, v13, 0.0, 0.0}];
  }

LABEL_20:
  if (*(a2 + 41))
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v46);
    v19 = v46;
    v46 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v19 + 1, v20);
    v21 = WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v19);
    v22 = MEMORY[0x1E69DE3A0];
    if (!*(v21 + 20))
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v46);
      v23 = v46;
      v46 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v23 + 1, v24);
      if (!*(WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v23) + 36))
      {
        v22 = MEMORY[0x1E69DE3A8];
      }
    }

    this = [WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(v3) setDecelerationRate:*v22];
  }

  if ((*(a2 + 40) & 0x40) != 0)
  {
    v25 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(v3);
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v47);
    v26 = v47;
    v47 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v26 + 8), v27);
    [v25 setShowsHorizontalScrollIndicator:*(v26 + 256) != 1];
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v47);
    v28 = v47;
    v47 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v28 + 8), v29);
    [v25 setShowsVerticalScrollIndicator:*(v28 + 257) != 1];
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v47);
    v30 = v47;
    v47 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v30 + 8), v31);
    v32 = *(v30 + 250) != 1 || *(v30 + 251) != 1;
    this = [v25 setScrollEnabled:v32];
  }

  v33 = *(a2 + 5);
  if ((v33 & 0x80) != 0)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v48);
    v34 = v48;
    v48 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v34 + 8), v35);
    WebCore::ScrollingTreeScrollingNode::handleScrollPositionRequest();
    WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v48, v3);
    v36 = v48;
    *(v48 + 374) = 1;
    v48 = 0;
    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v36 + 8), v37);
    v33 = *(a2 + 5);
  }

  if ((v33 & 0x200000) != 0)
  {
    v38 = *(a2 + 533);
    v39 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(v3);
    if (v38 == 2)
    {
      v40 = 0;
    }

    else
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v48);
      v41 = v48;
      v48 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v41 + 8), v42);
      v40 = *(v41 + 256) != 1;
    }

    [v39 setShowsHorizontalScrollIndicator:v40];
    if (v38 == 2)
    {
      v43 = 0;
    }

    else
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v3 + 16), *(v3 + 8), &v48);
      v44 = v48;
      v48 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v44 + 8), v45);
      v43 = *(v44 + 256) != 1;
    }

    this = [v39 setShowsVerticalScrollIndicator:v43];
  }

  *(v3 + 65) = v4;
  return this;
}

void sub_19DDDC428(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    ReportBlockedObjCException(v4);
    objc_end_catch();
    JUMPOUT(0x19DDDC1DCLL);
  }

  *(v2 + 65) = v3;
  _Unwind_Resume(exc_buf);
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::repositionScrollingLayers(WebKit::ScrollingTreeScrollingNodeDelegateIOS *this)
{
  result = [WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(this) _wk_isScrollAnimating];
  if ((result & 1) == 0)
  {
    v3 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(this);
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(this + 2), *(this + 1), &v8);
    v4 = v8;
    v8 = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((*&v4 + 8), v5);
    v6 = *(*&v4 + 144);
    WebCore::FloatPoint::FloatPoint(&v8, (*&v4 + 152));
    v7 = vadd_f32(v6, v8);
    WebCore::FloatPoint::operator CGPoint();
    return [v3 setContentOffset:*&v7];
  }

  return result;
}

void sub_19DDDC594(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    ReportBlockedObjCException(v2);
    objc_end_catch();
    JUMPOUT(0x19DDDC580);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DDDC75C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = v4 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

_BYTE *WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollViewDidScroll(_BYTE *this, const WebCore::FloatPoint *a2, float a3, float a4)
{
  if ((this[65] & 1) == 0)
  {
    v4 = this;
    v11 = WebCore::ScrollingTreeScrollingNodeDelegate::scrollOrigin(this);
    WebCore::FloatPoint::FloatPoint(v9, &v11);
    v12 = vsub_f32(__PAIR64__(LODWORD(a4), LODWORD(a3)), v9[0]);
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v4 + 2), *(v4 + 1), v9);
    v5 = v9[0];
    v9[0] = 0;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((*&v5 + 8), v6);
    v9[0].i8[0] = 0;
    v10 = 0;
    return WebCore::ScrollingTreeScrollingNode::wasScrolledByDelegatedScrolling();
  }

  return this;
}

void sub_19DDDC9B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((a9 + 8), a2);
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    *(v9 + 32) = v11 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void sub_19DDDCF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 32);
  if (v13)
  {
    *(v12 + 32) = v13 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void sub_19DDDD0B8(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

atomic_uchar **WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollDidEnd(WebKit::ScrollingTreeScrollingNodeDelegateIOS *this)
{
  WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v8, this);
  v2 = v8;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(this + 2), *(this + 1), &v9);
  v3 = v9;
  v9 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v3 + 8), v4);
  result = (*(*v2 + 192))(v2, *(v3 + 56), *(v3 + 64));
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
  }

  return result;
}

void sub_19DDDD180(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((a9 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DDDD254(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DDDD2FC(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DDDD550(_Unwind_Exception *a1)
{
  (*(*v2 + 1720))(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = v4 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DDDD810(_Unwind_Exception *a1)
{
  (*(*v3 + 1720))(v3);
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::fastFree(v2, v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    *(v1 + 32) = v6 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DDDDBBC(_Unwind_Exception *a1)
{
  (*(*v2 + 1720))(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = v4 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DDDDDB8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((a10 + 8), a2);
  }

  v12 = *(v10 + 32);
  if (v12)
  {
    *(v10 + 32) = v12 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void sub_19DDDE008(_Unwind_Exception *a1)
{
  (*(*v2 + 1720))(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = v4 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::ScrollingTreeScrollingNodeDelegateIOS::~ScrollingTreeScrollingNodeDelegateIOS(WebKit::ScrollingTreeScrollingNodeDelegateIOS *this)
{
  v2 = [*(this + 5) delegate];
  v4 = v2;
  if (v2 && [v2 delegate] == *(this + 7))
  {
    [v4 setDelegate:0];
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v3);

  WebCore::ScrollingTreeScrollingNodeDelegate::~ScrollingTreeScrollingNodeDelegate(this);
}

{
  WebKit::ScrollingTreeScrollingNodeDelegateIOS::~ScrollingTreeScrollingNodeDelegateIOS(this);
  if (*(v1 + 32))
  {
    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::updateScrollViewForOverscrollBehavior(void *a1, int a2, int a3, int a4)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = a2 != 2;
  if (isKindOfClass)
  {
    result = [a1 _setBouncesInternal:v9 vertical:a3 != 2];
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    [a1 setBouncesHorizontally:v9];
    result = [a1 setBouncesVertically:a3 != 2];
    if (!a4)
    {
      return result;
    }
  }

  [a1 _wk_setTransfersHorizontalScrollingToParent:a2 == 0];

  return [a1 _wk_setTransfersVerticalScrollingToParent:a3 == 0];
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::startAnimatedScrollToPosition(WebCore::ScrollingTreeScrollingNodeDelegate *a1, float a2, float a3)
{
  v8 = WebCore::ScrollingTreeScrollingNodeDelegate::scrollOrigin(a1);
  WebCore::FloatPoint::FloatPoint(v9, &v8);
  v9[1] = vadd_f32(__PAIR64__(LODWORD(a3), LODWORD(a2)), v9[0]);
  v4 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(a1);
  WebCore::FloatPoint::operator CGPoint();
  [v4 setContentOffset:1 animated:?];
  return 1;
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, atomic_uint **a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = WebKit::AuthenticatorPresenterCoordinator::operator new(0x78, a2);
  result = WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(v12, a1, a2, a3, a4, a5);
  *a6 = v12;
  return result;
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::operator new(WebKit::AuthenticatorPresenterCoordinator *this, void *a2)
{
  if (this == 120 && WebKit::AuthenticatorPresenterCoordinator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::AuthenticatorPresenterCoordinator::s_heapRef, a2);
  }

  else
  {
    return WebKit::AuthenticatorPresenterCoordinator::operatorNewSlow(this);
  }
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, int a5, atomic_uint **a6)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v13 = *(a2 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 64) = 0u;
  *(a1 + 16) = v13;
  *(a1 + 24) = 0u;
  v14 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v15 = [objc_alloc(WebKit::getASCAuthorizationPresentationContextClass[0](v12)) initWithRequestContext:0 appIdentifier:0];
  v16 = *(a1 + 24);
  *(a1 + 24) = v15;
  if (v16)
  {
  }

  v17 = [WebKit::getASCAuthorizationPresentationContextClass[0](v15) instancesRespondToSelector:sel_setServiceName_];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *v14;
  v19 = *a3;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v79, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }
  }

  else
  {
    v79 = &stru_1F1147748;
    v21 = &stru_1F1147748;
  }

  v17 = [v18 setServiceName:v79];
  v22 = v79;
  v79 = 0;
  if (!v22)
  {
LABEL_9:
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_17:
    v28 = [objc_alloc(WebKit::getASCPublicKeyCredentialCreationOptionsClass[0](v17)) init];
    v29 = *a6;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v79, v29);
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v30);
      }
    }

    else
    {
      v79 = &stru_1F1147748;
      v31 = &stru_1F1147748;
    }

    v32 = [v28 setUserName:v79];
    v33 = v79;
    v79 = 0;
    if (v33)
    {
    }

    v34 = *a4;
    if (*a4)
    {
      v35 = *(v34 - 8);
      LODWORD(v36) = v35 & 0x2BF062CF;
      v37 = *(v34 + (v35 & 0x2BF062CF));
      if (v37 == 3)
      {
LABEL_28:
        v39 = *v14;
        v40 = [objc_alloc(WebKit::getASCPlatformPublicKeyCredentialLoginChoiceClass[0](v32)) initRegistrationChoiceWithOptions:v28];
        v32 = [v39 addLoginChoice:v40];
        if (v40)
        {
        }
      }

      else
      {
        v38 = 1;
        while (v37 != 255)
        {
          v36 = (v36 + v38) & v35;
          v37 = *(v34 + v36);
          ++v38;
          if (v37 == 3)
          {
            goto LABEL_28;
          }
        }
      }

      v41 = *a4;
      if (*a4)
      {
        v42 = *(v41 - 8);
        LODWORD(v43) = v42 & 0x4636B9C9;
        v44 = *(v41 + (v42 & 0x4636B9C9));
        if (!*(v41 + (v42 & 0x4636B9C9)))
        {
          goto LABEL_50;
        }

        v45 = 1;
        while (v44 != 255)
        {
          v43 = (v43 + v45) & v42;
          v44 = *(v41 + v43);
          ++v45;
          if (!*(v41 + v43))
          {
            goto LABEL_50;
          }
        }

        LODWORD(v53) = v42 & 0x62BAF5A0;
        v54 = *(v41 + (v42 & 0x62BAF5A0));
        if (v54 == 1)
        {
LABEL_50:
          v56 = *v14;
          v57 = [objc_alloc(WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](v32)) initRegistrationChoiceWithOptions:v28];
          [v56 addLoginChoice:v57];
          if (v57)
          {
          }
        }

        else
        {
          v55 = 1;
          while (v54 != 255)
          {
            v53 = (v53 + v55) & v42;
            v54 = *(v41 + v53);
            ++v55;
            if (v54 == 1)
            {
              goto LABEL_50;
            }
          }
        }
      }
    }

LABEL_52:
    if (v28)
    {
    }

    goto LABEL_54;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v23 = *a4;
  if (!*a4)
  {
    goto LABEL_54;
  }

  v24 = *(v23 - 8);
  LODWORD(v25) = v24 & 0x4636B9C9;
  v26 = *(v23 + (v24 & 0x4636B9C9));
  if (!*(v23 + (v24 & 0x4636B9C9)))
  {
    goto LABEL_40;
  }

  v27 = 1;
  while (v26 != 255)
  {
    v25 = (v25 + v27) & v24;
    v26 = *(v23 + v25);
    ++v27;
    if (!*(v23 + v25))
    {
      goto LABEL_40;
    }
  }

  LODWORD(v46) = v24 & 0x62BAF5A0;
  v47 = *(v23 + (v24 & 0x62BAF5A0));
  if (v47 == 1)
  {
LABEL_40:
    LODWORD(v49) = v24 & 0x2BF062CF;
    v50 = *(v23 + (v24 & 0x2BF062CF));
    if (v50 == 3)
    {
      goto LABEL_54;
    }

    v51 = 1;
    while (v50 != 255)
    {
      v49 = (v49 + v51) & v24;
      v50 = *(v23 + v49);
      ++v51;
      if (v50 == 3)
      {
        goto LABEL_54;
      }
    }

    v52 = *v14;
    v28 = [objc_alloc(WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](v17)) initAssertionPlaceholderChoice];
    [v52 addLoginChoice:v28];
    goto LABEL_52;
  }

  v48 = 1;
  while (v47 != 255)
  {
    v46 = (v46 + v48) & v24;
    v47 = *(v23 + v46);
    ++v48;
    if (v47 == 1)
    {
      goto LABEL_40;
    }
  }

LABEL_54:
  v58 = [[WKASCAuthorizationPresenterDelegate alloc] initWithCoordinator:a1];
  v59 = *(a1 + 40);
  *(a1 + 40) = v58;
  if (v59)
  {
  }

  v60 = [objc_alloc(WebKit::getASCAuthorizationPresenterClass[0](v58)) init];
  v61 = *(a1 + 32);
  *(a1 + 32) = v60;
  if (v61)
  {

    v60 = *(a1 + 32);
  }

  [v60 setDelegate:*(a1 + 40)];
  v62 = *(a1 + 16);
  if (v62)
  {
    atomic_fetch_add(v62, 1u);
  }

  v63 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v63 = MEMORY[0x1E69E9818];
  v63[1] = 50331650;
  v63[2] = WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0>(WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0)::{lambda(void *,objc_object  {objcproto21ASCCredentialProtocol},NSError)#1}::__invoke;
  v63[3] = &WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0>(WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0)::descriptor;
  v63[4] = v62;
  if (!a5 || (v64 = *a4) == 0)
  {
LABEL_71:
    [*(a1 + 32) presentAuthorizationWithContext:*(a1 + 24) completionHandler:v63];
    goto LABEL_77;
  }

  v65 = *(v64 - 8);
  LODWORD(v66) = v65 & 0x2BF062CF;
  v67 = *(v64 + (v65 & 0x2BF062CF));
  if (v67 != 3)
  {
    v68 = 1;
    while (v67 != 255)
    {
      v66 = (v66 + v68) & v65;
      v67 = *(v64 + v66);
      ++v68;
      if (v67 == 3)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_71;
  }

LABEL_66:
  LODWORD(v69) = v65 & 0x4636B9C9;
  v70 = *(v64 + (v65 & 0x4636B9C9));
  if (!*(v64 + (v65 & 0x4636B9C9)))
  {
    goto LABEL_73;
  }

  v71 = 1;
  while (v70 != 255)
  {
    v69 = (v69 + v71) & v65;
    v70 = *(v64 + v69);
    ++v71;
    if (!*(v64 + v69))
    {
      goto LABEL_73;
    }
  }

  LODWORD(v72) = v65 & 0x62BAF5A0;
  v73 = *(v64 + (v65 & 0x62BAF5A0));
  if (v73 != 1)
  {
    v78 = 1;
    do
    {
      v74 = v73 != 255;
      if (v73 == 255)
      {
        break;
      }

      v72 = (v72 + v78) & v65;
      v73 = *(v64 + v72);
      ++v78;
    }

    while (v73 != 1);
  }

  else
  {
LABEL_73:
    v74 = 1;
  }

  *(a1 + 56) = v74;
  v75 = WTF::fastMalloc(0x18);
  *v75 = &unk_1F110A850;
  v75[1] = v63;
  v75[2] = a1;
  v76 = *(a1 + 48);
  *(a1 + 48) = v75;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  _Block_release(0);
  v63 = 0;
LABEL_77:
  _Block_release(v63);
  return a1;
}