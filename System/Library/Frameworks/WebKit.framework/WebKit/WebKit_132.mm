WTF::StringImpl *WebKit::domainsToString(WTF::StringImpl **a1, uint64_t *a2, unsigned int a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      if (v15)
      {
        v6 = ", ";
      }

      else
      {
        v6 = "";
      }

      if (v15)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      v12[0] = v6;
      v12[1] = v7;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String>(&v13, v12, a2++);
      v5 -= 8;
    }

    while (v5);
    v9 = v13;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v13);
  WTF::StringBuilder::reifyString(&v13);
  v9 = v13;
  if (v13)
  {
LABEL_12:
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *a1 = v9;
  v10 = v14;
  v14 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldExemptFromWebsiteDataDeletion(WebKit::ResourceLoadStatisticsStore *this, WTF **a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (!*(*a2 + 1))
  {
    return 0;
  }

  if (MEMORY[0x19EB01EF0]())
  {
    return 0;
  }

  WebKit::ResourceLoadStatisticsStore::domainsExemptFromWebsiteDataDeletion(&v16, this);
  if (!v16)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, v5) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCF56BCLL);
  }

  v7 = v16;
  if (!v16)
  {
    return 0;
  }

  v8 = *(v16 - 2);
  v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v6) & v8;
  v10 = &v7[v9];
  if (WTF::equal(*v10, 0, v11))
  {
LABEL_14:
    v4 = 0;
  }

  else
  {
    v14 = 1;
    while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, v13) & 1) == 0)
    {
      v9 = (v9 + v14) & v8;
      v10 = &v7[v9];
      ++v14;
      if (WTF::equal(*v10, 0, v13))
      {
        goto LABEL_14;
      }
    }

    v4 = 1;
  }

  if (v16)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v12);
  }

  return v4;
}

uint64_t WebKit::ResourceLoadStatisticsStore::domainsExemptFromWebsiteDataDeletion(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2)
{
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this, (a2 + 304));
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a2 + 312), v4, v5);
  v8 = v6;
  v31 = v6;
  v32 = v9;
  v10 = *(a2 + 312);
  if (v10)
  {
    v11 = (v10 + 8 * *(v10 - 4));
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v6)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, v8, v7, v30);
      ++v31;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v31, v12, v13);
      v8 = v31;
    }

    while (v31 != v11);
  }

  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v29, this);
  v16 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a2 + 320), v14, v15);
  v19 = v16;
  v31 = v16;
  v32 = v17;
  v20 = *(a2 + 320);
  if (v20)
  {
    v21 = (v20 + 8 * *(v20 - 4));
  }

  else
  {
    v21 = 0;
  }

  if (v21 != v16)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v29, v19, v18, v30);
      ++v31;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v31, v22, v23);
      v19 = v31;
    }

    while (v31 != v21);
  }

  v24 = v29;
  v29 = 0;
  v25 = *this;
  *this = v24;
  if (v25)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v17);
    if (v29)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v28);
    }
  }

  result = *(a2 + 296);
  if (result && *(result + 4))
  {
    result = MEMORY[0x19EB01EF0]();
    if ((result & 1) == 0)
    {
      return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, (a2 + 296), v27, v30);
    }
  }

  return result;
}

uint64_t *WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(WebKit::ResourceLoadStatisticsStore *this)
{
  v119[4] = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_74 & 1) == 0)
  {
    v102[0] = "ObservedDomains";
    v102[1] = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v99 = v107[0];
    v100 = 0;
    v101 = 0;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v107, v102, &v99);
    v98[0] = "TopLevelDomains";
    v98[1] = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v95 = v103;
    v96 = 0;
    v97 = 0;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v108, v98, &v95);
    v94[0] = "StorageAccessUnderTopFrameDomains";
    v94[1] = 34;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v2 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS StorageAccessUnderTopFrameDomains_domainID_topLevelDomainID on StorageAccessUnderTopFrameDomains(domainID, topLevelDomainID)", &v91);
    v3 = v91;
    v91 = 0;
    v92[0] = v2;
    v92[1] = v3;
    v93 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v109, v94, v92);
    v90[0] = "TopFrameUniqueRedirectsTo";
    v90[1] = 26;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsTo_sourceDomainID_toDomainID on TopFrameUniqueRedirectsTo(sourceDomainID, toDomainID)", &v87);
    v5 = v87;
    v87 = 0;
    v88[0] = v4;
    v88[1] = v5;
    v89 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v110, v90, v88);
    v86[0] = "TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement";
    v86[1] = 56;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement_sourceDomainID_toDomainID on TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement(sourceDomainID, toDomainID)", &v83);
    v7 = v83;
    v83 = 0;
    v84[0] = v6;
    v84[1] = v7;
    v85 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v111, v86, v84);
    v82[0] = "TopFrameUniqueRedirectsFrom";
    v82[1] = 28;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsFrom_targetDomainID_fromDomainID on TopFrameUniqueRedirectsFrom(targetDomainID, fromDomainID)", &v79);
    v9 = v79;
    v79 = 0;
    v80[0] = v8;
    v80[1] = v9;
    v81 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v112, v82, v80);
    v78[0] = "TopFrameLinkDecorationsFrom";
    v78[1] = 28;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v10 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameLinkDecorationsFrom_toDomainID_fromDomainID on TopFrameLinkDecorationsFrom(toDomainID, fromDomainID)", &v75);
    v11 = v75;
    v75 = 0;
    v76[0] = v10;
    v76[1] = v11;
    v77 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v113, v78, v76);
    v74[0] = "TopFrameLoadedThirdPartyScripts";
    v74[1] = 32;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v12 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameLoadedThirdPartyScripts_topFrameDomainID_subresourceDomainID on TopFrameLoadedThirdPartyScripts(topFrameDomainID, subresourceDomainID)", &v71);
    v13 = v71;
    v71 = 0;
    v72[0] = v12;
    v72[1] = v13;
    v73 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v114, v74, v72);
    v70[0] = "SubframeUnderTopFrameDomains";
    v70[1] = 29;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v14 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubframeUnderTopFrameDomains_subFrameDomainID_topFrameDomainID on SubframeUnderTopFrameDomains(subFrameDomainID, topFrameDomainID)", &v67);
    v15 = v67;
    v67 = 0;
    v68[0] = v14;
    v68[1] = v15;
    v69 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v115, v70, v68);
    v66[0] = "SubresourceUnderTopFrameDomains";
    v66[1] = 32;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUnderTopFrameDomains_subresourceDomainID_topFrameDomainID on SubresourceUnderTopFrameDomains(subresourceDomainID, topFrameDomainID)", &v63);
    v17 = v63;
    v63 = 0;
    v64[0] = v16;
    v64[1] = v17;
    v65 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v116, v66, v64);
    v62[0] = "SubresourceUniqueRedirectsTo";
    v62[1] = 29;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUniqueRedirectsTo_subresourceDomainID_toDomainID on SubresourceUniqueRedirectsTo(subresourceDomainID, toDomainID)", &v59);
    v19 = v59;
    v59 = 0;
    v60[0] = v18;
    v60[1] = v19;
    v61 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v117, v62, v60);
    v58[0] = "SubresourceUniqueRedirectsFrom";
    v58[1] = 31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v20 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUniqueRedirectsFrom_subresourceDomainID_fromDomainID on SubresourceUniqueRedirectsFrom(subresourceDomainID, fromDomainID)", &v55);
    v21 = v55;
    v55 = 0;
    v56[0] = v20;
    v56[1] = v21;
    v57 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v118, v58, v56);
    v54[0] = "OperatingDates";
    v54[1] = 15;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS OperatingDates_year_month_monthDay on OperatingDates(year, month, monthDay)", &v51);
    v23 = v51;
    v51 = 0;
    v52[0] = v22;
    v52[1] = v23;
    v53 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v119, v54, v52);
    WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v103, v107, 13);
    v25 = v103;
    v103 = 0;
    qword_1ED6425F0 = v25;
    v26 = v104;
    v104 = 0;
    qword_1ED6425F8 = v26;
    LODWORD(v25) = v105;
    v105 = 0;
    dword_1ED642600 = v25;
    byte_1ED642604 = v106;
    v27 = 48;
    v106 = 0;
    do
    {
      WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(&v107[v27], v24);
      v27 -= 4;
    }

    while (v27 != -4);
    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v52, v24);
    v29 = v51;
    v51 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v56, v28);
    v31 = v55;
    v55 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v30);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v60, v30);
    v33 = v59;
    v59 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v64, v32);
    v35 = v63;
    v63 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v68, v34);
    v37 = v67;
    v67 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v36);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v72, v36);
    v39 = v71;
    v71 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v38);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v76, v38);
    v41 = v75;
    v75 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v40);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v80, v40);
    v43 = v79;
    v79 = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v42);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v84, v42);
    v45 = v83;
    v83 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v44);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v88, v44);
    v47 = v87;
    v87 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v46);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v92, v46);
    v49 = v91;
    v91 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v48);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(&v95, v48);
    std::pair<WTF::String,std::optional<WTF::String>>::~pair(&v99, v50);
    _MergedGlobals_74 = 1;
  }

  return &qword_1ED6425F0;
}

uint64_t WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
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

  return a1;
}

uint64_t std::pair<WTF::String,std::optional<WTF::String>>::~pair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(WebKit::ResourceLoadStatisticsStore *this, WebKit::ResourceLoadStatisticsStore *a2)
{
  v20 = 0;
  v21 = 0;
  WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(a2);
  if (HIDWORD(qword_1ED6425F8))
  {
    if (qword_1ED6425F8)
    {
      v6 = 32 * qword_1ED6425F8;
      v7 = qword_1ED6425F0;
      while (!*v7)
      {
        v7 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v7 = qword_1ED6425F0;
    }

    v8 = qword_1ED6425F0 + 32 * qword_1ED6425F8;
    if (v7 != v8)
    {
LABEL_9:
      v9 = *v7;
      if (*v7)
      {
        v10 = *(v9 + 16);
        v9 = *(v9 + 4);
        v11 = ((v10 >> 2) & 1) << 32;
      }

      else
      {
        v11 = 0x100000000;
      }

      v2 = v9 | v2 & 0xFFFFFF0000000000 | v11;
      if (!WebKit::ResourceLoadStatisticsStore::tableExists(a2))
      {
        v12 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v19 = v12;
        v13 = HIDWORD(v21);
        if (HIDWORD(v21) == v21)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String>(&v20, &v19);
        }

        else
        {
          v19 = 0;
          *(v20 + 8 * HIDWORD(v21)) = v12;
          HIDWORD(v21) = v13 + 1;
        }

        v14 = v19;
        v19 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v5);
        }
      }

      while (1)
      {
        v7 += 4;
        if (v7 == v8)
        {
          break;
        }

        if (*v7)
        {
          if (v7 != v8)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v15 = HIDWORD(v21);
      if (HIDWORD(v21))
      {
        *this = v20;
        v18 = v21;
        v20 = 0;
        v21 = 0;
        *(this + 2) = v18;
        *(this + 3) = v15;
        v16 = 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v16 = 0;
  *this = 0;
LABEL_25:
  *(this + 16) = v16;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
}

BOOL WebKit::ResourceLoadStatisticsStore::tableExists(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 632), "tableExists", &v12);
  if (!v12)
  {
    v4 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v2 = 0;
      goto LABEL_4;
    }

    v5 = *(a1 + 664);
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    v14 = a1;
    v15 = 2048;
    v16 = v5;
    v17 = 1024;
    v18 = Error;
    v19 = 2081;
    v20 = ErrorMsg;
    v8 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::tableExists: failed to prepare statement";
LABEL_10:
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, v8, buf, 0x26u);
    goto LABEL_8;
  }

  if (WebCore::SQLiteStatement::bindText())
  {
    v4 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v9 = *(a1 + 664);
    v10 = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v11 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    v14 = a1;
    v15 = 2048;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 2081;
    v20 = v11;
    v8 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::tableExists: failed to bind parameter";
    goto LABEL_10;
  }

  v2 = WebCore::SQLiteStatement::step(v12) == 100;
LABEL_4:
  MEMORY[0x19EB0CD50](&v12);
  return v2;
}

void WebKit::ResourceLoadStatisticsStore::deleteTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WTF::makeString<WTF::ASCIILiteral,WTF::StringView>("DROP TABLE ", 12, a2, a3, buf);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v5 = *buf;
  *buf = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  if (v11 || WebCore::SQLiteStatement::step(v10) != 101)
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = Error;
      v17 = 2081;
      v18 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::deleteTable: failed to step statement", buf, 0x26u);
    }
  }

  if (!v11)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v10);
  }
}

BOOL WebKit::ResourceLoadStatisticsStore::missingUniqueIndices(WebKit::ResourceLoadStatisticsStore *this)
{
  v21 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (v12)
  {
    v5 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v6 = *(this + 83);
    *buf = 134218755;
    v14 = this;
    v15 = 2048;
    v16 = v6;
    v17 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v19 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v7 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::missingUniqueIndices: failed to prepare statement";
    goto LABEL_13;
  }

  v2 = WebCore::SQLiteStatement::step(v11);
  if (v2 == 100)
  {
    if (v12)
    {
      mpark::throw_bad_variant_access(v2);
    }

    v3 = WebCore::SQLiteStatement::columnInt(v11) < 13;
    goto LABEL_5;
  }

  v5 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v8 = *(this + 83);
    v9 = WebCore::SQLiteDatabase::lastError((this + 16));
    v10 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    v14 = this;
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    Error = v9;
    v19 = 2081;
    ErrorMsg = v10;
    v7 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::missingUniqueIndices: failed to step statement";
LABEL_13:
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x26u);
  }

  v3 = 0;
LABEL_5:
  if (!v12)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v11);
  }

  return v3;
}

BOOL WebKit::ResourceLoadStatisticsStore::missingReferenceToObservedDomains(WebKit::ResourceLoadStatisticsStore *this)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::DatabaseUtilities::currentTableAndIndexQueries(this, v9);
  v2 = v9[0];
  v9[0] = 0;
  std::pair<WTF::String,std::optional<WTF::String>>::~pair(v9, v3);
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  if (!v2)
  {
    return 0;
  }

  v6 = WTF::StringImpl::find() != -1;
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v5);
  }

  return v6;
}

uint64_t WebKit::ResourceLoadStatisticsStore::needsUpdatedSchema(WebKit::ResourceLoadStatisticsStore *this)
{
  if (WebKit::ResourceLoadStatisticsStore::missingReferenceToObservedDomains(this) || WebKit::ResourceLoadStatisticsStore::missingUniqueIndices(this))
  {
    return 1;
  }

  WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(this);
  return 0;
}

uint64_t WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (WebKit::ResourceLoadStatisticsStore::tableExists(this) || (result = WebKit::ResourceLoadStatisticsStore::tableExists(this), result))
  {
    v25 = 0;
    v26 = 0;
    WebCore::SQLiteDatabase::prepareStatement();
    v3 = v24;
    if (v24)
    {
      v4 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
      }

      v8 = *(this + 83);
      *buf = 134218755;
      *&buf[4] = this;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v32 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary: failed to prepare unattributedScopedStatement", buf, 0x26u);
    }

    else
    {
      while (1)
      {
        v6 = WebCore::SQLiteStatement::step(v23);
        if (v6 != 100)
        {
          break;
        }

        if (!v24)
        {
          WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v23, this, 0, buf);
          if (HIDWORD(v26) == v26)
          {
            WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(&v25, buf);
          }

          else
          {
            WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v25 + 312 * HIDWORD(v26), buf);
            ++HIDWORD(v26);
          }

          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v7);
          if (!v24)
          {
            continue;
          }
        }

LABEL_12:
        mpark::throw_bad_variant_access(v6);
      }
    }

    if (!v24)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v23);
    }

    if (v3)
    {
      return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
    }

    v21 = 0;
    v22 = 0;
    WebCore::SQLiteDatabase::prepareStatement();
    v9 = v24;
    if (v24)
    {
      v10 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v11);
        return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
      }

      v13 = *(this + 83);
      v14 = WebCore::SQLiteDatabase::lastError((this + 16));
      v15 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218755;
      *&buf[4] = this;
      v28 = 2048;
      v29 = v13;
      v30 = 1024;
      Error = v14;
      v32 = 2081;
      ErrorMsg = v15;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary: failed to prepare attributedScopedStatement", buf, 0x26u);
    }

    else
    {
      while (1)
      {
        v6 = WebCore::SQLiteStatement::step(v23);
        if (v6 != 100)
        {
          break;
        }

        if (!v24)
        {
          WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v23, this, 1, buf);
          if (HIDWORD(v22) == v22)
          {
            WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(&v21, buf);
          }

          else
          {
            WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v21 + 312 * HIDWORD(v22), buf);
            ++HIDWORD(v22);
          }

          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v12);
          if (!v24)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    if (!v24)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v23);
    }

    if (v9)
    {
      goto LABEL_19;
    }

    if (!(HIDWORD(v26) | HIDWORD(v22)))
    {
LABEL_38:
      WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, buf);
      WebKit::ResourceLoadStatisticsStore::deleteTable(this, "UnattributedPrivateClickMeasurement", 0x100000023);
      WebKit::ResourceLoadStatisticsStore::deleteTable(this, "AttributedPrivateClickMeasurement", 0x100000021);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(buf);
      goto LABEL_19;
    }

    WTF::RunLoop::mainSingleton(v6);
    v16 = *(this + 14);
    if (v16)
    {
      while (1)
      {
        v17 = *v16;
        if ((*v16 & 1) == 0)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_35;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_35:
      *buf = v16;
      WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v25, &buf[8]);
      WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v21, &Error);
      WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>(v23, buf);
      WTF::RunLoop::dispatch();
      v20 = v23[0];
      v23[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0::~$_0(buf, v19);
      goto LABEL_38;
    }

    result = 114;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x30);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1104888;
  v4[1] = v5;
  v4[3] = 0;
  v4[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 2), a2 + 2);
  v4[5] = 0;
  v4[4] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 4), a2 + 6);
  *a1 = v4;
  return a1;
}

atomic_ullong **WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0::~$_0(atomic_ullong **a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), v3);
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::addMissingTablesIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v30 = *MEMORY[0x1E69E9840];
  result = WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(&v20, this);
  if (v22 == 1)
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v19);
    if (v21)
    {
      v4 = v20;
      v5 = 8 * v21;
      do
      {
        WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(this);
        WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(buf, v4, v6);
        v7 = *buf;
        *buf = 0;
        std::pair<WTF::String,std::optional<WTF::String>>::~pair(buf, v8);
        if (v7)
        {
          v9 = v7[1];
          v10 = ((v7[4] >> 2) & 1) << 32;
        }

        else
        {
          v9 = 0;
          v10 = 0x100000000;
        }

        v1 = v9 | v1 & 0xFFFFFF0000000000 | v10;
        if ((WebCore::SQLiteDatabase::executeCommandSlow() & 1) == 0)
        {
          v12 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v13 = *(this + 83);
            Error = WebCore::SQLiteDatabase::lastError((this + 16));
            ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
            *buf = 134218755;
            *&buf[4] = this;
            v24 = 2048;
            v25 = v13;
            v26 = 1024;
            v27 = Error;
            v28 = 2081;
            v29 = ErrorMsg;
            _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::addMissingTablesIfNecessary: failed to execute statement", buf, 0x26u);
          }
        }

        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v11);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    if (!WebKit::ResourceLoadStatisticsStore::createUniqueIndices(this))
    {
      v16 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v18 = *(this + 83);
        *buf = 134218240;
        *&buf[4] = this;
        v24 = 2048;
        v25 = v18;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::addMissingTablesIfNecessary: failed to create unique indices", buf, 0x16u);
      }
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v19);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v17);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::createUniqueIndices(WebKit::ResourceLoadStatisticsStore *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && (WebCore::SQLiteDatabase::executeCommand() & 1) != 0)
  {
    return 1;
  }

  v3 = qword_1ED641148;
  result = os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4 = *(this + 83);
    v5 = 134218755;
    v6 = this;
    v7 = 2048;
    v8 = v4;
    v9 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v11 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createUniqueIndices: failed to execute statement", &v5, 0x26u);
    return 0;
  }

  return result;
}

uint64_t WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,12ul>(uint64_t result, uint64_t a2)
{
  if (*(result + 12) != 12)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  v4 = (a2 + 8);
  while (v3 < *(v2 + 12))
  {
    if (*v4)
    {
      v5 = *v4 - 1;
    }

    else
    {
      v5 = 0;
    }

    result = MEMORY[0x19EB01EF0](*(*v2 + 8 * v3), *(v4 - 1), v5);
    if (result)
    {
      v6 = v3 == 11;
    }

    else
    {
      v6 = 1;
    }

    ++v3;
    v4 += 2;
    if (v6)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,13ul>(uint64_t result, uint64_t a2)
{
  if (*(result + 12) != 13)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  v4 = (a2 + 8);
  while (v3 < *(v2 + 12))
  {
    if (*v4)
    {
      v5 = *v4 - 1;
    }

    else
    {
      v5 = 0;
    }

    result = MEMORY[0x19EB01EF0](*(*v2 + 8 * v3), *(v4 - 1), v5);
    if (result)
    {
      v6 = v3 == 12;
    }

    else
    {
      v6 = 1;
    }

    ++v3;
    v4 += 2;
    if (v6)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

void *WebKit::ResourceLoadStatisticsStore::interruptAllDatabases(WebKit::ResourceLoadStatisticsStore *this)
{
  if ((byte_1ED6425D2 & 1) == 0)
  {
    *&dword_1ED6425E8 = 0;
    qword_1ED6425E0 = 0;
    byte_1ED6425D2 = 1;
  }

  v16 = &qword_1ED6425E0;
  v17 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&qword_1ED6425E0);
  v18 = v1;
  v2 = qword_1ED6425E0;
  if (qword_1ED6425E0)
  {
    v3 = *(qword_1ED6425E0 - 4);
    v4 = qword_1ED6425E0 + 8 * v3;
    v19 = v4;
    v20 = v4;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v4 = 0;
    v3 = 0;
  }

  v11 = &qword_1ED6425E0;
  v12 = v4;
  v13 = v4;
  v14 = v4;
  v15 = v2 + 8 * v3;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v11);
  v6 = v17;
  v7 = v12;
  while (v6 != v7)
  {
    v8 = *(*v6 + 8);
    v9 = (v8 + 104);
    ++*(v8 + 104);
    if (*(v8 + 24))
    {
      WebCore::SQLiteDatabase::interrupt();
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v9);
    v10 = v6 + 1;
    v17 = v6 + 1;
    if (v6 + 1 != v18)
    {
      do
      {
        if ((*v10 + 1) > 1)
        {
          break;
        }

        ++v10;
      }

      while (v10 != v18);
      v17 = v10;
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v6 = v17;
    ++*(v16 + 2);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::createSchema(WebKit::ResourceLoadStatisticsStore *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v17 = *(this + 83);
      v18 = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v17;
      v22 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v24 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createObservedDomain";
      goto LABEL_44;
    }

    return 0;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v4 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v4;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopLevelDomains";
LABEL_44:
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, v5, &v18, 0x26u);
    return 0;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v6 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v6;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createStorageAccessUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v7 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v7;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsTo";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v8 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v9;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v10 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v10;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameLinkDecorationsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameLoadedThirdPartyScripts";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v12 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v12;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubframeUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v13;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v14 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v14;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUniqueRedirectsTo";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v15 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v15;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUniqueRedirectsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v16 = *(this + 83);
      v18 = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v16;
      v22 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v24 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createOperatingDates";
      goto LABEL_44;
    }

    return 0;
  }

  return WebKit::ResourceLoadStatisticsStore::createUniqueIndices(this);
}

void WebKit::ResourceLoadStatisticsStore::destroyStatements(WebKit::ResourceLoadStatisticsStore *this)
{
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    WebCore::SQLiteStatement::operator delete(v2);
  }

  v3 = *(this + 42);
  *(this + 42) = 0;
  if (v3)
  {
    WebCore::SQLiteStatement::operator delete(v3);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    WebCore::SQLiteStatement::operator delete(v4);
  }

  v5 = *(this + 46);
  *(this + 46) = 0;
  if (v5)
  {
    WebCore::SQLiteStatement::operator delete(v5);
  }

  v6 = *(this + 47);
  *(this + 47) = 0;
  if (v6)
  {
    WebCore::SQLiteStatement::operator delete(v6);
  }

  v7 = *(this + 48);
  *(this + 48) = 0;
  if (v7)
  {
    WebCore::SQLiteStatement::operator delete(v7);
  }

  v8 = *(this + 50);
  *(this + 50) = 0;
  if (v8)
  {
    WebCore::SQLiteStatement::operator delete(v8);
  }

  v9 = *(this + 51);
  *(this + 51) = 0;
  if (v9)
  {
    WebCore::SQLiteStatement::operator delete(v9);
  }

  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    WebCore::SQLiteStatement::operator delete(v10);
  }

  v11 = *(this + 52);
  *(this + 52) = 0;
  if (v11)
  {
    WebCore::SQLiteStatement::operator delete(v11);
  }

  v12 = *(this + 53);
  *(this + 53) = 0;
  if (v12)
  {
    WebCore::SQLiteStatement::operator delete(v12);
  }

  v13 = *(this + 54);
  *(this + 54) = 0;
  if (v13)
  {
    WebCore::SQLiteStatement::operator delete(v13);
  }

  v14 = *(this + 59);
  *(this + 59) = 0;
  if (v14)
  {
    WebCore::SQLiteStatement::operator delete(v14);
  }

  v15 = *(this + 55);
  *(this + 55) = 0;
  if (v15)
  {
    WebCore::SQLiteStatement::operator delete(v15);
  }

  v16 = *(this + 56);
  *(this + 56) = 0;
  if (v16)
  {
    WebCore::SQLiteStatement::operator delete(v16);
  }

  v17 = *(this + 57);
  *(this + 57) = 0;
  if (v17)
  {
    WebCore::SQLiteStatement::operator delete(v17);
  }

  v18 = *(this + 58);
  *(this + 58) = 0;
  if (v18)
  {
    WebCore::SQLiteStatement::operator delete(v18);
  }

  v19 = *(this + 60);
  *(this + 60) = 0;
  if (v19)
  {
    WebCore::SQLiteStatement::operator delete(v19);
  }

  v20 = *(this + 62);
  *(this + 62) = 0;
  if (v20)
  {
    WebCore::SQLiteStatement::operator delete(v20);
  }

  v21 = *(this + 44);
  *(this + 44) = 0;
  if (v21)
  {
    WebCore::SQLiteStatement::operator delete(v21);
  }

  v22 = *(this + 45);
  *(this + 45) = 0;
  if (v22)
  {
    WebCore::SQLiteStatement::operator delete(v22);
  }

  v23 = *(this + 63);
  *(this + 63) = 0;
  if (v23)
  {
    WebCore::SQLiteStatement::operator delete(v23);
  }

  v24 = *(this + 64);
  *(this + 64) = 0;
  if (v24)
  {
    WebCore::SQLiteStatement::operator delete(v24);
  }

  v25 = *(this + 65);
  *(this + 65) = 0;
  if (v25)
  {
    WebCore::SQLiteStatement::operator delete(v25);
  }

  v26 = *(this + 66);
  *(this + 66) = 0;
  if (v26)
  {
    WebCore::SQLiteStatement::operator delete(v26);
  }

  v27 = *(this + 67);
  *(this + 67) = 0;
  if (v27)
  {
    WebCore::SQLiteStatement::operator delete(v27);
  }

  v28 = *(this + 68);
  *(this + 68) = 0;
  if (v28)
  {
    WebCore::SQLiteStatement::operator delete(v28);
  }

  v29 = *(this + 69);
  *(this + 69) = 0;
  if (v29)
  {
    WebCore::SQLiteStatement::operator delete(v29);
  }

  v30 = *(this + 70);
  *(this + 70) = 0;
  if (v30)
  {
    WebCore::SQLiteStatement::operator delete(v30);
  }

  v31 = *(this + 71);
  *(this + 71) = 0;
  if (v31)
  {
    WebCore::SQLiteStatement::operator delete(v31);
  }

  v32 = *(this + 72);
  *(this + 72) = 0;
  if (v32)
  {
    WebCore::SQLiteStatement::operator delete(v32);
  }

  v33 = *(this + 73);
  *(this + 73) = 0;
  if (v33)
  {
    WebCore::SQLiteStatement::operator delete(v33);
  }

  v34 = *(this + 74);
  *(this + 74) = 0;
  if (v34)
  {
    WebCore::SQLiteStatement::operator delete(v34);
  }

  v35 = *(this + 75);
  *(this + 75) = 0;
  if (v35)
  {
    WebCore::SQLiteStatement::operator delete(v35);
  }

  v36 = *(this + 76);
  *(this + 76) = 0;
  if (v36)
  {
    WebCore::SQLiteStatement::operator delete(v36);
  }

  v37 = *(this + 77);
  *(this + 77) = 0;
  if (v37)
  {
    WebCore::SQLiteStatement::operator delete(v37);
  }

  v38 = *(this + 78);
  *(this + 78) = 0;
  if (v38)
  {
    WebCore::SQLiteStatement::operator delete(v38);
  }

  v39 = *(this + 79);
  *(this + 79) = 0;
  if (v39)
  {
    WebCore::SQLiteStatement::operator delete(v39);
  }

  v40 = *(this + 61);
  *(this + 61) = 0;
  if (v40)
  {

    WebCore::SQLiteStatement::operator delete(v40);
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::insertObservedDomain(WebCore::SQLiteStatement **this, const WebCore::ResourceLoadStatistics *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!(WebKit::ResourceLoadStatisticsStore::domainID(this, a2) >> 32))
  {
    WebKit::DatabaseUtilities::scopedStatement(this, this + 42, "insertObservedDomain", &v17);
    if (!v17 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::bindDouble(v17, *(a2 + 1)) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindDouble(v17, *(a2 + 3)) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17))
    {
      goto LABEL_20;
    }

    v4 = v17;
    if ((*(a2 + 80) & 1) == 0)
    {
      WebCore::SQLiteStatement::bindDouble(v17, 0.0);
    }

    if (WebCore::SQLiteStatement::bindInt(v4))
    {
LABEL_20:
      v8 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v10 = this[83];
      Error = WebCore::SQLiteDatabase::lastError((this + 2));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 1024;
      v23 = Error;
      v24 = 2081;
      v25 = ErrorMsg;
      v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertObservedDomain: failed to bind parameters";
    }

    else
    {
      if (WebCore::SQLiteStatement::step(v17) == 101)
      {
        v6 = 1;
        goto LABEL_22;
      }

      v8 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v6 = 0;
LABEL_22:
        MEMORY[0x19EB0CD50](&v17);
        return v6;
      }

      v14 = this[83];
      v15 = WebCore::SQLiteDatabase::lastError((this + 2));
      v16 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      v24 = 2081;
      v25 = v16;
      v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertObservedDomain: failed to step statement";
    }

    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, v13, buf, 0x26u);
    goto LABEL_21;
  }

  v5 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v7 = this[83];
    *buf = 134218240;
    v19 = this;
    v20 = 2048;
    v21 = v7;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::insertObservedDomain: failed to find domain", buf, 0x16u);
  }

  return 0;
}

uint64_t WebKit::ResourceLoadStatisticsStore::domainID(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(this, this + 43, "domainID", &v16);
  if (!v16 || WebCore::SQLiteStatement::bindText())
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v13 = this[83];
    Error = WebCore::SQLiteDatabase::lastError((this + 2));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v18 = this;
    v19 = 2048;
    v20 = v13;
    v21 = 1024;
    v22 = Error;
    v23 = 2081;
    v24 = ErrorMsg;
    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainID: failed to bind parameter";
LABEL_11:
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    goto LABEL_4;
  }

  if (WebCore::SQLiteStatement::step(v16) == 100)
  {
    v8 = WebCore::SQLiteStatement::columnInt(v16);
    v6 = v8 & 0xFFFFFF00;
    v4 = v8;
    v5 = 0x100000000;
    goto LABEL_5;
  }

  v3 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v9 = this[83];
    v10 = WebCore::SQLiteDatabase::lastError((this + 2));
    v11 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v18 = this;
    v19 = 2048;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 2081;
    v24 = v11;
    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainID: failed to step statement";
    goto LABEL_11;
  }

LABEL_4:
  v4 = 0;
  v5 = 0;
  v6 = 0;
LABEL_5:
  MEMORY[0x19EB0CD50](&v16);
  return v5 | v6 | v4;
}

BOOL WebKit::ResourceLoadStatisticsStore::relationshipExists(uint64_t a1, WebCore::SQLiteStatement **a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100000000) == 0)
  {
    return 0;
  }

  if (*a2 && !WebCore::SQLiteStatement::bindInt(*a2) && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(*a2) == 100)
  {
    return WebCore::SQLiteStatement::columnInt(*a2) != 0;
  }

  v6 = qword_1ED641148;
  result = os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7 = *(a1 + 664);
    v8 = 134218755;
    v9 = a1;
    v10 = 2048;
    v11 = v7;
    v12 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v14 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::relationshipExists: failed to step statement", &v8, 0x26u);
    return 0;
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(uint64_t a1, const WebCore::RegistrableDomain *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 344), "ensureResourceStatisticsForRegistrableDomain", v19);
  if (!*v19 || WebCore::SQLiteStatement::bindText())
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134219011;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      v25 = 1024;
      *v26 = Error;
      *&v26[4] = 2081;
      *&v26[6] = ErrorMsg;
      v27 = 2082;
      *&v28 = a3;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain: reason %{public}s, failed to bind parameter", buf, 0x30u);
    }

    v7 = 0;
    goto LABEL_6;
  }

  if (WebCore::SQLiteStatement::step(*v19) == 100)
  {
    v7 = WebCore::SQLiteStatement::columnInt(*v19);
LABEL_6:
    MEMORY[0x19EB0CD50](v19);
    v8 = 0;
    return v8 | (v7 << 32);
  }

  MEMORY[0x19EB0CD50](v19);
  v10 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *buf = v10;
  *&buf[8] = 0;
  buf[16] = 0;
  *v26 = 0xBFF0000000000000;
  v26[8] = 0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v35 = 0;
  if ((WebKit::ResourceLoadStatisticsStore::insertObservedDomain(a1, buf) & 1) == 0)
  {
    v13 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 664);
      *v19 = 134218498;
      *&v19[4] = a1;
      v20 = 2048;
      v21 = v17;
      v22 = 2082;
      v23 = a3;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain: reason %{public}s, failed to insert observed domain", v19, 0x20u);
    }

    v8 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  v11 = WebKit::ResourceLoadStatisticsStore::domainID(a1, a2);
  if (HIDWORD(v11))
  {
    v7 = v11;
    v8 = 1;
LABEL_18:
    WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(buf, v12);
    return v8 | (v7 << 32);
  }

  v18 = std::__throw_bad_optional_access[abi:sn200100]();
  return WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v18);
}

void WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  memset(buf, 0, 20);
  buf[20] = 1;
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a3, a2, a3);
  v7 = v6;
  v70[0] = v6;
  v70[1] = v8;
  if (*a3)
  {
    v9 = *a3 + 8 * *(*a3 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v6)
  {
    do
    {
      WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, v7, "ensureAndMakeDomainList");
      if (v10)
      {
        v12 = *&buf[16];
        v13 = *v7;
        if (v13)
        {
          v14 = *(v13 + 4);
        }

        else
        {
          v14 = 0;
        }

        v15 = 2 * (*&buf[16] != 0);
        v16 = v14 + 2;
        if (v14 >= 0xFFFFFFFE)
        {
          v16 = -1;
        }

        v17 = __CFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          v18 = -1;
        }

        v17 = __CFADD__(*&buf[16], v18);
        v19 = *&buf[16] + v18;
        if (v17)
        {
          v20 = 0xFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        v21 = *&buf[8];
        if ((*&buf[8] || (v21 = *buf) != 0) && (*(v21 + 16) & 4) == 0 || v13 && (*(v13 + 16) & 4) == 0)
        {
          v22 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(buf);
          if (v22)
          {
            if (v12)
            {
              v23 = 2 * v15;
              v24 = ", ";
              v25 = v22;
              do
              {
                v26 = *v24++;
                *v25 = v26;
                v25 = (v25 + 2);
                v23 -= 2;
              }

              while (v23);
            }

            if (v10 <= v15)
            {
              goto LABEL_105;
            }

            v27 = (v22 + 2 * v15);
            *v27 = 34;
            v28 = (v27 + 1);
            v29 = v10 + ~v15;
            v72 = v13;
            v22 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v72, v28);
            v30 = v72;
            if (v72)
            {
              v30 = *(v72 + 4);
              if (v29 < v30)
              {
                goto LABEL_105;
              }
            }

            if (v29 == v30)
            {
              goto LABEL_105;
            }

            *&v28[2 * v30] = 34;
          }
        }

        else
        {
          v22 = MEMORY[0x19EB01170](buf, v20);
          if (v22)
          {
            if (v12)
            {
              *v22 = 8236;
            }

            if (v10 <= v15)
            {
              goto LABEL_105;
            }

            v31 = v22 + v15;
            *v31 = 34;
            WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v31 + 1, v10 + ~v15, v13, 34);
          }
        }
      }

      v70[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v70, v10, v11);
      v7 = v70[0];
    }

    while (v70[0] != v9);
    v33 = *buf;
    if (*buf)
    {
      goto LABEL_42;
    }
  }

  WTF::StringBuilder::shrinkToFit(buf);
  WTF::StringBuilder::reifyString(buf);
  v33 = *buf;
  if (*buf)
  {
LABEL_42:
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v34 = *&buf[8];
  *&buf[8] = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v32);
  }

  v35 = *buf;
  *buf = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v32);
    if (v5)
    {
LABEL_49:
      v36 = *(v5 + 4);
      if (v33)
      {
        goto LABEL_50;
      }

LABEL_85:
      v37 = 0;
      goto LABEL_51;
    }
  }

  else if (v5)
  {
    goto LABEL_49;
  }

  v36 = 0;
  if (!v33)
  {
    goto LABEL_85;
  }

LABEL_50:
  v37 = *(v33 + 4);
  if (v37 < 0)
  {
    goto LABEL_107;
  }

LABEL_51:
  v38 = __OFADD__(v37, 3);
  v39 = v37 + 3;
  v40 = v38;
  if (v36 < 0)
  {
    goto LABEL_107;
  }

  if (v40)
  {
    goto LABEL_107;
  }

  v41 = (v36 + v39);
  if (__OFADD__(v36, v39))
  {
    goto LABEL_107;
  }

  if (v5 && (*(v5 + 16) & 4) == 0 || v33 && (*(v33 + 16) & 4) == 0)
  {
    if (v41 <= 0x7FFFFFEF)
    {
      WTF::tryFastCompactMalloc((2 * v41 + 20));
      v42 = *buf;
      if (*buf)
      {
        v43 = *buf + 20;
        **buf = 2;
        *(v42 + 4) = v41;
        *(v42 + 8) = v42 + 20;
        *(v42 + 16) = 0;
        v70[0] = v5;
        v22 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v70, (v42 + 20));
        v44 = v70[0];
        if (!v70[0] || (v44 = *(v70[0] + 4), v44 <= v41))
        {
          v45 = v41 - v44;
          v46 = (v43 + 2 * v44);
          *buf = v33;
          v22 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(buf, v46);
          v47 = *buf;
          if (!*buf || (v47 = *(*buf + 4), v45 >= v47))
          {
            v48 = &v46[2 * v47];
            *v48 = 2687008;
            *(v48 + 2) = 59;
            goto LABEL_75;
          }
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }
    }

LABEL_107:
    __break(0xC471u);
    return;
  }

  if ((v41 & 0x80000000) != 0)
  {
    goto LABEL_107;
  }

  WTF::tryFastCompactMalloc((v41 + 20));
  v42 = *buf;
  if (!*buf)
  {
    goto LABEL_107;
  }

  v49 = *buf + 20;
  **buf = 2;
  *(v42 + 4) = v41;
  *(v42 + 8) = v42 + 20;
  *(v42 + 16) = 4;
  v70[0] = v5;
  v22 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v70, (v42 + 20));
  v50 = v70[0];
  if (v70[0])
  {
    v50 = *(v70[0] + 4);
    if (v50 > v41)
    {
      goto LABEL_105;
    }
  }

  v51 = v41 - v50;
  v52 = v49 + v50;
  *buf = v33;
  v22 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(buf, (v49 + v50));
  v53 = *buf;
  if (*buf)
  {
    v53 = *(*buf + 4);
    if (v51 < v53)
    {
      goto LABEL_105;
    }
  }

  v54 = v52 + v53;
  *(v54 + 2) = 59;
  *v54 = 10528;
LABEL_75:
  WebCore::SQLiteDatabase::prepareStatementSlow();
  if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v55);
    if (!v33)
    {
      goto LABEL_80;
    }
  }

  else if (!v33)
  {
    goto LABEL_80;
  }

  if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
LABEL_80:
    if (v5)
    {
      goto LABEL_81;
    }

    goto LABEL_87;
  }

  WTF::StringImpl::destroy(v33, v55);
  if (v5)
  {
LABEL_81:
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v55);
    }
  }

LABEL_87:
  if (v71 || WebCore::SQLiteStatement::bindInt(v70))
  {
    v56 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v66 = *(a1 + 664);
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v66;
    v74 = 1024;
    v75 = Error;
    v76 = 2081;
    v77 = ErrorMsg;
    v62 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to bind first parameter";
    goto LABEL_104;
  }

  v22 = *a2;
  if (!*a2)
  {
    goto LABEL_99;
  }

  v22 = WTF::StringImpl::find();
  if (v22 == -1)
  {
    goto LABEL_99;
  }

  if (v71)
  {
    goto LABEL_106;
  }

  v57 = *(a1 + 656);
  WTF::WallTime::now(v22);
  v22 = WebCore::SQLiteStatement::bindDouble(v70, v57 + v58);
  if (!v22)
  {
LABEL_99:
    if (!v71)
    {
      if (WebCore::SQLiteStatement::step(v70) == 101)
      {
        goto LABEL_90;
      }

      v56 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      v63 = *(a1 + 664);
      v64 = WebCore::SQLiteDatabase::lastError((a1 + 16));
      v65 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v63;
      v74 = 1024;
      v75 = v64;
      v76 = 2081;
      v77 = v65;
      v62 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to step statement";
      goto LABEL_104;
    }

LABEL_106:
    mpark::throw_bad_variant_access(v22);
  }

  v56 = qword_1ED641148;
  if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_90;
  }

  v59 = *(a1 + 664);
  v60 = WebCore::SQLiteDatabase::lastError((a1 + 16));
  v61 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
  *buf = 134218755;
  *&buf[4] = a1;
  *&buf[12] = 2048;
  *&buf[14] = v59;
  v74 = 1024;
  v75 = v60;
  v76 = 2081;
  v77 = v61;
  v62 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to bind second parameter";
LABEL_104:
  _os_log_error_impl(&dword_19D52D000, v56, OS_LOG_TYPE_ERROR, v62, buf, 0x26u);
LABEL_90:
  if (!v71)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v70);
  }
}

_BYTE *WebKit::ResourceLoadStatisticsStore::insertDomainRelationships(WebKit::ResourceLoadStatisticsStore *this, const WebCore::ResourceLoadStatistics *a2)
{
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v26);
  if (WebKit::ResourceLoadStatisticsStore::domainID(this, a2) >> 32)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 5);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 6);
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 7);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v10 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 8);
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v12 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 12);
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v14 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 13);
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v15);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 14);
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v17);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 15);
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v19);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v20 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 9);
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v21);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = v27;
    v25 = v27;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v25, a2 + 11);
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v23);
    }
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v26);
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateLastSeen(uint64_t a1, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 400), "updateLastSeen", &v9);
  if (!v9 || WebCore::SQLiteStatement::bindDouble(v9, a2) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v9) != 101)
  {
    v4 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      v11 = a1;
      v12 = 2048;
      v13 = v6;
      v14 = 1024;
      v15 = Error;
      v16 = 2081;
      v17 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateLastSeen: failed to step statement", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v9);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setUserInteraction(uint64_t a1, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 392), "setUserInteraction", &v9);
  if (!v9 || WebCore::SQLiteStatement::bindInt(v9) || WebCore::SQLiteStatement::bindDouble(v9, a2) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v9) != 101)
  {
    v4 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      v11 = a1;
      v12 = 2048;
      v13 = v6;
      v14 = 1024;
      v15 = Error;
      v16 = 2081;
      v17 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setUserInteraction: failed to step statement", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v9);
}

_BYTE *WebKit::ResourceLoadStatisticsStore::setGrandfathered(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v11);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setGrandfathered");
  if (v4)
  {
    WebKit::DatabaseUtilities::scopedStatement(this, this + 58, "setGrandfathered", &v10);
    if (!v10 || WebCore::SQLiteStatement::bindInt(v10) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v10) != 101)
    {
      v5 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v7 = this[83];
        Error = WebCore::SQLiteDatabase::lastError((this + 2));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
        *buf = 134218755;
        v13 = this;
        v14 = 2048;
        v15 = v7;
        v16 = 1024;
        v17 = Error;
        v18 = 2081;
        v19 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setGrandfathered: failed to step statement", buf, 0x26u);
      }
    }

    MEMORY[0x19EB0CD50](&v10);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v11);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, const WebCore::RegistrableDomain *a2)
{
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v6);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setPrevalentResource");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2, 2);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v6);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::setVeryPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, const WebCore::RegistrableDomain *a2)
{
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v6);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setVeryPrevalentResource");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2, 4);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v6);
  }

  return result;
}

_BYTE *WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(uint64_t a1, const WebCore::RegistrableDomain *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, v11);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, a2, "setIsScheduledForAllScriptWrittenStorageRemoval");
  if (v4)
  {
    WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 480), "setIsScheduledForAllScriptWrittenStorageRemoval", &v10);
    if (!v10 || WebCore::SQLiteStatement::bindInt(v10) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v10) != 101)
    {
      v5 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v13 = a1;
        v14 = 2048;
        v15 = v7;
        v16 = 1024;
        v17 = Error;
        v18 = 2081;
        v19 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval: failed to step statement", buf, 0x26u);
      }
    }

    MEMORY[0x19EB0CD50](&v10);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v11);
}

_BYTE *WebKit::ResourceLoadStatisticsStore::mergeStatistic(WebCore::SQLiteStatement **this, const WebCore::ResourceLoadStatistics *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v31);
  WebKit::DatabaseUtilities::scopedStatement(this, this + 66, "mergeStatistic", &v30);
  if (v30 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(v30) == 100)
  {
    v4 = v30;
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
    {
      v6 = this[83];
      *buf = 134217984;
      v36 = v6;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "ResourceLoadStatisticsStore::merge: sessionID=%llu", buf, 0xCu);
    }

    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v33);
    WebCore::SQLiteStatement::columnText(v4);
    WebCore::SQLiteStatement::columnDouble(v4);
    v8 = v7;
    WebCore::SQLiteStatement::columnDouble(v4);
    v10 = v9;
    v11 = WebCore::SQLiteStatement::columnInt(v4);
    v12 = WebCore::SQLiteStatement::columnInt(v4);
    v13 = WebCore::SQLiteStatement::columnInt(v4);
    v14 = WebCore::SQLiteStatement::columnInt(v4);
    v16 = WebCore::SQLiteStatement::columnInt(v4);
    v17 = *(a2 + 1);
    if (v8 < v17)
    {
      WebKit::ResourceLoadStatisticsStore::updateLastSeen(this, v17);
    }

    v18 = *(a2 + 3);
    if (*(a2 + 16))
    {
      if (v10 >= v18)
      {
        v18 = v10;
      }

      v19 = this;
    }

    else
    {
      if (v18 != 0.0)
      {
        goto LABEL_18;
      }

      v18 = 0.0;
      v19 = this;
    }

    WebKit::ResourceLoadStatisticsStore::setUserInteraction(v19, v18);
LABEL_18:
    if (*(a2 + 32) == 1 && !v11)
    {
      WebKit::ResourceLoadStatisticsStore::setGrandfathered(this, a2);
    }

    if (*(a2 + 128) == 1 && !v12)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2);
    }

    if (*(a2 + 129) == 1 && !v13)
    {
      WebKit::ResourceLoadStatisticsStore::setVeryPrevalentResource(this, a2);
    }

    if (*(a2 + 33) > v14)
    {
      WebKit::DatabaseUtilities::scopedStatement(this, this + 51, "updateDataRecordsRemoved", &v34);
      if (!v34 || WebCore::SQLiteStatement::bindInt(v34) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v34) != 101)
      {
        v22 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v27 = this[83];
          Error = WebCore::SQLiteDatabase::lastError((this + 2));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
          *buf = 134218755;
          v36 = this;
          v37 = 2048;
          v38 = v27;
          v39 = 1024;
          v40 = Error;
          v41 = 2081;
          v42 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateDataRecordsRemoved: failed to step statement", buf, 0x26u);
        }
      }

      MEMORY[0x19EB0CD50](&v34);
    }

    if (*(a2 + 80) == 1 && !v16)
    {
      WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(this, a2);
    }

    v23 = v32;
    v32 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v15);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v33);
    goto LABEL_14;
  }

  v20 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v24 = this[83];
    v25 = WebCore::SQLiteDatabase::lastError((this + 2));
    v26 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v36 = this;
    v37 = 2048;
    v38 = v24;
    v39 = 1024;
    v40 = v25;
    v41 = 2081;
    v42 = v26;
    _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::mergeStatistic: failed to step statement", buf, 0x26u);
  }

LABEL_14:
  MEMORY[0x19EB0CD50](&v30);
  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v31);
}

uint64_t WebKit::ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2, const WebCore::RegistrableDomain *a3, const WebCore::RegistrableDomain *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 552), "getThirdPartyDataForSpecificFirstPartyDomains", &v44);
  if (!v44 || WebCore::SQLiteStatement::bindInt(v44) || WebCore::SQLiteStatement::bindInt(v44) || WebCore::SQLiteStatement::bindInt(v44))
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a2 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
      *buf = 134218755;
      *&buf[4] = a2;
      v47 = 2048;
      v48 = v9;
      v49 = 1024;
      v50 = Error;
      v51 = 2081;
      v52 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains: failed to bind parameters", buf, 0x26u);
    }

    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    while (WebCore::SQLiteStatement::step(v44) == 100)
    {
      WebCore::SQLiteStatement::columnInt(*(a2 + 552));
      WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(a2, buf);
      WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(buf, &v43);
      v13 = *buf;
      *buf = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
      }

      v40 = v14;
      WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 560), "hasStorageAccess", buf);
      v15 = WebKit::ResourceLoadStatisticsStore::domainID(a2, a4);
      v16 = WebKit::ResourceLoadStatisticsStore::relationshipExists(a2, buf, v15);
      MEMORY[0x19EB0CD50](buf);
      v41 = v16;
      v17 = WebKit::ResourceLoadStatisticsStore::domainID(a2, a4);
      v18 = WebKit::ResourceLoadStatisticsStore::domainID(a2, &v43);
      v21 = -1.0;
      if (HIDWORD(v17) && HIDWORD(v18))
      {
        WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 568), "getMostRecentlyUpdatedTimestamp", &v45);
        if (!v45 || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45))
        {
          v22 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v36 = *(a2 + 664);
            v37 = WebCore::SQLiteDatabase::lastError((a2 + 16));
            v38 = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
            *buf = 134218755;
            *&buf[4] = a2;
            v47 = 2048;
            v48 = v36;
            v49 = 1024;
            v50 = v37;
            v51 = 2081;
            v52 = v38;
            _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getMostRecentlyUpdatedTimestamp: failed to step statement", buf, 0x26u);
          }
        }

        else if (WebCore::SQLiteStatement::step(v45) == 100)
        {
          WebCore::SQLiteStatement::columnDouble(v45);
          v21 = v39;
        }

        MEMORY[0x19EB0CD50](&v45);
      }

      v42 = v21;
      if (*(this + 3))
      {
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = *this;
          if (WTF::equal(*(*this + v23), v40, v20))
          {
            if (*(v25 + v23 + 8) == v41)
            {
              break;
            }
          }

          ++v24;
          v26 = *(this + 3);
          v23 += 24;
          if (v24 >= v26)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v26 = 0;
LABEL_36:
        if (v26 == *(this + 2))
        {
          v27 = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this, v26 + 1, &v40);
          v28 = *(this + 3);
          v29 = *this;
          v30 = *v27;
          if (*v27)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
          }

          v31 = v29 + 24 * v28;
          *v31 = v30;
        }

        else
        {
          v32 = *this;
          v33 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
          }

          v31 = v32 + 24 * v26;
          *v31 = v33;
          v27 = &v40;
        }

        *(v31 + 8) = *(v27 + 8);
        ++*(this + 3);
      }

      v34 = v40;
      v40 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v19);
      }

      v35 = v43;
      v43 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v19);
      }
    }
  }

  return MEMORY[0x19EB0CD50](&v44);
}

uint64_t WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID@<X0>(WebCore::SQLiteStatement **this@<X0>, atomic_uint **a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a2 = v4;
  WebKit::DatabaseUtilities::scopedStatement(this, this + 68, "getDomainStringFromDomainID", &v14);
  if (v14 && !WebCore::SQLiteStatement::bindInt(v14))
  {
    if (WebCore::SQLiteStatement::step(v14) == 100)
    {
      WebCore::SQLiteStatement::columnText(this[68]);
      v8 = *buf;
      *buf = 0;
      *a2 = v8;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v7);
          v10 = *buf;
          *buf = 0;
          if (v10)
          {
            if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, v9);
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v11 = this[83];
      Error = WebCore::SQLiteDatabase::lastError((this + 2));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      *&buf[4] = this;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = Error;
      v20 = 2081;
      v21 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getDomainStringFromDomainID: failed to bind parameter", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v14);
}

void WebKit::ResourceLoadStatisticsStore::aggregatedThirdPartyData(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (v19 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::bindText())
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a2 + 664);
      *buf = 134218755;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 1024;
      Error = WebCore::SQLiteDatabase::lastError((a2 + 16));
      v22 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::aggregatedThirdPartyData: failed to bind parameters", buf, 0x26u);
    }
  }

  else
  {
    while (1)
    {
      v4 = WebCore::SQLiteStatement::step(v18);
      if (v4 != 100)
      {
        break;
      }

      if (v19)
      {
        goto LABEL_8;
      }

      v4 = WebCore::SQLiteStatement::columnInt(v18);
      if (v4)
      {
        if (v19)
        {
LABEL_8:
          mpark::throw_bad_variant_access(v4);
        }

        v6 = WebCore::SQLiteStatement::columnInt(v18);
        WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(a2, buf);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(buf, &v17);
        v8 = *buf;
        *buf = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        v9 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        *buf = v9;
        WebKit::ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains(&buf[8], a2, v6, &v17);
        v11 = *(this + 3);
        if (v11 == *(this + 2))
        {
          WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(this, buf);
        }

        else
        {
          v12 = *this + 24 * v11;
          v13 = *buf;
          *buf = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          *v12 = v13;
          v14 = *&buf[8];
          *&buf[8] = 0;
          *(v12 + 8) = v14;
          LODWORD(v14) = *&buf[16];
          *&buf[16] = 0;
          *(v12 + 16) = v14;
          LODWORD(v14) = *&buf[20];
          *&buf[20] = 0;
          *(v12 + 20) = v14;
          ++*(this + 3);
        }

        WebKit::ITPThirdPartyData::~ITPThirdPartyData(buf, v10);
        v4 = v17;
        v17 = 0;
        if (v4)
        {
          if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v4 = WTF::StringImpl::destroy(v4, v15);
          }
        }
      }

      if (v19)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v19)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v18);
  }
}

WTF::StringImpl *WebKit::buildList<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::StringImpl **a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v35[0] = v5;
  v35[1] = v6;
  if (*a2)
  {
    v7 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v5)
  {
    do
    {
      v8 = v38;
      v9 = *v5;
      if (*v5)
      {
        v10 = *(v9 + 4);
      }

      else
      {
        v10 = 0;
      }

      v11 = 2 * (v38 != 0);
      v12 = v10 + 2;
      if (v10 >= 0xFFFFFFFE)
      {
        v12 = -1;
      }

      v13 = __CFADD__(v11, v12);
      v14 = v11 + v12;
      if (v13)
      {
        v14 = -1;
      }

      v13 = __CFADD__(v38, v14);
      v15 = v38 + v14;
      if (v13)
      {
        v16 = 0xFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v37;
      if ((v37 || (v17 = v36) != 0) && (*(v17 + 16) & 4) == 0 || v9 && (*(v9 + 16) & 4) == 0)
      {
        result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v36);
        if (result)
        {
          if (v8)
          {
            v21 = 2 * v11;
            v22 = ", ";
            v23 = result;
            do
            {
              v24 = *v22++;
              *v23 = v24;
              v23 = (v23 + 2);
              v21 -= 2;
            }

            while (v21);
          }

          if (v19 <= v11)
          {
            goto LABEL_50;
          }

          v25 = (result + 2 * v11);
          *v25 = 34;
          v26 = (v25 + 1);
          v27 = v19 + ~v11;
          v40 = v9;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v40, v26);
          v28 = v40;
          if (v40)
          {
            v28 = *(v40 + 4);
            if (v27 < v28)
            {
              goto LABEL_50;
            }
          }

          if (v27 == v28)
          {
            goto LABEL_50;
          }

          *&v26[2 * v28] = 34;
        }
      }

      else
      {
        result = MEMORY[0x19EB01170](&v36, v16);
        if (result)
        {
          if (v8)
          {
            *result = 8236;
          }

          if (v19 <= v11 || (*(result + v11) = 34, v29 = result + v11 + 1, v30 = v19 + ~v11, v40 = v9, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v40, v29), (v31 = v40) != 0) && (v31 = *(v40 + 4), v30 < v31) || v30 == v31)
          {
LABEL_50:
            __break(1u);
            return result;
          }

          v29[v31] = 34;
        }
      }

      v35[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v35, v19, v20);
      v5 = v35[0];
    }

    while (v35[0] != v7);
    v33 = v36;
    if (v36)
    {
      goto LABEL_42;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v36);
  WTF::StringBuilder::reifyString(&v36);
  v33 = v36;
  if (v36)
  {
LABEL_42:
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  *a1 = v33;
  v34 = v37;
  v37 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v32);
  }

  result = v36;
  v36 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v32);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  NonPrevalentDomainsThatRedirectedToThisDomain = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (a4 < 0x32)
  {
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    WebCore::SQLiteDatabase::prepareStatement();
    if (v28 || (v9 = WebCore::SQLiteStatement::bindInt(v27), v9))
    {
      v10 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v33 = a1;
        v34 = 2048;
        v35 = v19;
        v36 = 1024;
        v37 = Error;
        v38 = 2081;
        v39 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: failed to bind parameter for findSubresources", buf, 0x26u);
      }

      NonPrevalentDomainsThatRedirectedToThisDomain = 0;
    }

    else
    {
      if (v28)
      {
LABEL_20:
        mpark::throw_bad_variant_access(v9);
      }

      NonPrevalentDomainsThatRedirectedToThisDomain = (NonPrevalentDomainsThatRedirectedToThisDomain + 1);
      while (1)
      {
        v9 = WebCore::SQLiteStatement::step(v27);
        if (v9 != 100)
        {
          break;
        }

        if (!v28)
        {
          v12 = WebCore::SQLiteStatement::columnInt(v27);
          *buf = v12;
          v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, v12, buf);
          if (v9)
          {
            *buf = v12;
            v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v29, v12, buf);
          }

          if (!v28)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      WebCore::SQLiteDatabase::prepareStatement();
      if (v26 || (v9 = WebCore::SQLiteStatement::bindInt(v25), v9))
      {
        v13 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 664);
          v23 = WebCore::SQLiteDatabase::lastError((a1 + 16));
          v24 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
          *buf = 134218755;
          v33 = a1;
          v34 = 2048;
          v35 = v22;
          v36 = 1024;
          v37 = v23;
          v38 = 2081;
          v39 = v24;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: failed to bind parameter for findTopFrames", buf, 0x26u);
        }

        NonPrevalentDomainsThatRedirectedToThisDomain = 0;
      }

      else
      {
        while (1)
        {
          if (v26)
          {
            goto LABEL_20;
          }

          v9 = WebCore::SQLiteStatement::step(v25);
          if (v9 != 100)
          {
            break;
          }

          if (v26)
          {
            goto LABEL_20;
          }

          v14 = WebCore::SQLiteStatement::columnInt(v25);
          *buf = v14;
          v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, v14, buf);
          if (v9)
          {
            *buf = v14;
            v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v29, v14, buf);
          }
        }

        v15 = v29;
        if (v31)
        {
          v16 = v29 == &v30;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          do
          {
            NonPrevalentDomainsThatRedirectedToThisDomain = WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(a1, *(v15 + 7), a3, NonPrevalentDomainsThatRedirectedToThisDomain);
            v17 = v15[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v15[2];
                v16 = *v18 == v15;
                v15 = v18;
              }

              while (!v16);
            }

            v15 = v18;
          }

          while (v18 != &v30);
        }
      }

      if (!v26)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v25);
      }
    }

    if (!v28)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v27);
    }

    std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(v30);
  }

  else
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 664);
      *buf = 134218496;
      v33 = a1;
      v34 = 2048;
      v35 = v7;
      v36 = 1024;
      v37 = 50;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: hit %u recursive calls in redirect backtrace", buf, 0x1Cu);
    }
  }

  return NonPrevalentDomainsThatRedirectedToThisDomain;
}

WTF::StringImpl *WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>(WTF::StringImpl *result, uint64_t *a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFB258);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFB278);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 40 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = 0;
        v23 = v9 + 40 * *(v9 - 4);
        goto LABEL_24;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 40 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (v16)
    {
      *v16 = 0;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
      --*(*a2 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = *a4;
  *a4 = 0;
  v25 = *(a4 + 1);
  v26 = *(a4 + 6);
  result = *(v14 + 1);
  *(v14 + 1) = v18;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(v14 + 1) = v25;
  *(v14 + 8) = v26;
  v19 = *a2;
  if (*a2)
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
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_20:
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, v14);
      v14 = result;
      v19 = *a2;
      if (*a2)
      {
        LODWORD(v22) = *(v19 - 4);
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_20;
  }

  v23 = v19 + 40 * v22;
  v24 = 1;
LABEL_24:
  *v8 = v14;
  *(v8 + 1) = v23;
  *(v8 + 16) = v24;
  return result;
}

WTF::StringImpl **WebKit::buildList<WTF::SizedIteratorRange<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>,unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>>(atomic_uint **a1, void *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = 1;
  v3 = a2[1];
  v4 = a2[3];
  if (v3 != v4)
  {
    v8 = a2[2];
    do
    {
      if (v13)
      {
        v9 = ", ";
      }

      else
      {
        v9 = "";
      }

      if (v13)
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      v11 = *v3;
      v3 += 10;
      WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(v12, v9, v10, v11);
      while (v3 != v8 && *v3 + 1 <= 1)
      {
        v3 += 10;
      }
    }

    while (v3 != v4);
  }

  v6 = *WTF::StringBuilder::toString(v12);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = v6;
  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v12, v5);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setPrevalentResource(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v30);
    v7 = WebKit::ResourceLoadStatisticsStore::domainID(this, a2);
    if (HIDWORD(v7))
    {
      v10 = v7;
      WebKit::DatabaseUtilities::scopedStatement(this, this + 52, "setPrevalentResource", &v29);
      if (!v29 || WebCore::SQLiteStatement::bindInt(v29) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v29) != 101)
      {
        v15 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v16 = this[83];
          Error = WebCore::SQLiteDatabase::lastError((this + 2));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
          *buf = 134218755;
          *&buf[4] = this;
          v35 = 2048;
          v36 = v16;
          v37 = 1024;
          v38 = Error;
          v39 = 2081;
          v40 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setPrevalentResource: failed at to step scopedUpdatePrevalentResourceStatement", buf, 0x26u);
        }
      }

      else
      {
        WebKit::DatabaseUtilities::scopedStatement(this, this + 54, "setPrevalentResource updateVeryPrevalentResource", &v28);
        if (a3 == 4 && (!v28 || WebCore::SQLiteStatement::bindInt(v28) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v28) != 101))
        {
          v19 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v20 = this[83];
            v21 = WebCore::SQLiteDatabase::lastError((this + 2));
            v22 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
            *buf = 134218755;
            *&buf[4] = this;
            v35 = 2048;
            v36 = v20;
            v37 = 1024;
            v38 = v21;
            v39 = 2081;
            v40 = v22;
            _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setPrevalentResource: failed at to step scopedUpdateVeryPrevalentResourceStatement", buf, 0x26u);
          }
        }

        else
        {
          v27[0] = 0;
          v27[1] = 0;
          v26 = v27;
          WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(this, v10, &v26, 0);
          WebKit::buildList<std::set<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>>(&v31, &v26);
          WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET isPrevalent = 1 WHERE domainID IN (", 63, &v31, 41, buf);
          WebCore::SQLiteDatabase::prepareStatementSlow();
          v12 = *buf;
          *buf = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v11);
          }

          v13 = v31;
          v31 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v11);
          }

          if (v33 || WebCore::SQLiteStatement::step(v32) != 101)
          {
            v14 = qword_1ED641148;
            if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
            {
              v23 = this[83];
              v24 = WebCore::SQLiteDatabase::lastError((this + 2));
              v25 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
              *buf = 134218755;
              *&buf[4] = this;
              v35 = 2048;
              v36 = v23;
              v37 = 1024;
              v38 = v24;
              v39 = 2081;
              v40 = v25;
              _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setDomainsAsPrevalent: failed to step statement", buf, 0x26u);
            }
          }

          if (!v33)
          {
            WebCore::SQLiteStatement::~SQLiteStatement(v32);
          }

          std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(v27[0]);
        }

        MEMORY[0x19EB0CD50](&v28);
      }

      MEMORY[0x19EB0CD50](&v29);
    }

    else
    {
      v8 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v9 = this[83];
        *buf = 134218240;
        *&buf[4] = this;
        v35 = 2048;
        v36 = v9;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::setPrevalentResource: failed to find domain", buf, 0x16u);
      }
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v30);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::cookieAccess(uint64_t a1, uint64_t a2, const WebCore::RegistrableDomain *a3, unsigned __int8 a4)
{
  v25 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v16 && !WebCore::SQLiteStatement::bindText())
  {
    v10 = WebCore::SQLiteStatement::step(v15);
    if (v10 == 100)
    {
      if (v16 || (v10 = WebCore::SQLiteStatement::columnInt(v15), v16))
      {
        mpark::throw_bad_variant_access(v10);
      }

      v11 = v10 != 0;
      v12 = WebCore::SQLiteStatement::columnInt(v15) != 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(a1 + 720);
    if (!*(a1 + 720) || v13 == 3)
    {
      goto LABEL_18;
    }

    if (v13 == 4)
    {
      if (v11 | ((WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(a1, a3) & 1) == 0))
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
LABEL_18:
      if ((a4 | v12))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_6;
    }

    v8 = 1;
    goto LABEL_6;
  }

  v7 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 664);
    *buf = 134218755;
    v18 = a1;
    v19 = 2048;
    v20 = v14;
    v21 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v23 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::cookieAccess: failed to bind parameter", buf, 0x26u);
  }

  v8 = 0;
LABEL_6:
  if (!v16)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v15);
  }

  return v8;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(uint64_t a1, WTF **a2, const WTF::StringImpl **a3, uint64_t a4, char a5, uint64_t a6, int a7, char a8, uint64_t *a9)
{
  v15 = WTF::equal(*a2, *a3, a3);
  if (v15)
  {
    v16 = *a9;
    *a9 = 0;
    (*(*v16 + 16))(v16, 1);
    v17 = *(*v16 + 8);

    return v17(v16);
  }

  else
  {
    if (a7)
    {
      v19 = WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, &v35);
      v20 = *(a1 + 656);
      WTF::WallTime::now(v19);
      WebKit::ResourceLoadStatisticsStore::setUserInteraction(a1, v20 + v21);
      v15 = WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(&v35);
    }

    WTF::RunLoop::mainSingleton(v15);
    WebCore::RegistrableDomain::isolatedCopy(&v35);
    WebCore::RegistrableDomain::isolatedCopy(&v36);
    *&v37 = a4;
    BYTE8(v37) = a5;
    v38 = a6;
    v22 = *(a1 + 112);
    if (v22)
    {
      while (1)
      {
        v23 = *v22;
        if ((*v22 & 1) == 0)
        {
          break;
        }

        v24 = *v22;
        atomic_compare_exchange_strong_explicit(v22, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v24 == v23)
        {
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v22);
LABEL_10:
      v39 = v22;
      v40 = a8;
      v25 = *a9;
      *a9 = 0;
      v41 = v25;
      v26 = WTF::fastMalloc(0x48);
      *v26 = &unk_1F1104A68;
      *(v26 + 8) = v35;
      v27 = v36;
      v35 = 0;
      v36 = 0;
      *(v26 + 16) = v27;
      v28 = v37;
      *(v26 + 40) = v38;
      *(v26 + 24) = v28;
      *(v26 + 48) = v39;
      *(v26 + 56) = v40;
      v29 = v41;
      v39 = 0;
      v41 = 0;
      *(v26 + 64) = v29;
      v42 = v26;
      WTF::RunLoop::dispatch();
      v31 = v42;
      v42 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      v32 = v41;
      v41 = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v33 = v39;
      v39 = 0;
      if (v33)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v33);
      }

      v34 = v36;
      v36 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v30);
      }

      result = v35;
      v35 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v30);
      }
    }

    else
    {
      result = 114;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v6 + 32));
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  return a1;
}

WebKit::DatabaseUtilities *WebKit::ResourceLoadStatisticsStore::grandfatherDataForDomains(WebKit::DatabaseUtilities *result, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a2 && *(*a2 - 12))
  {
    v3 = result;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(result, v23);
    v6 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v4, v5);
    v8 = v6;
    *buf = v6;
    *&buf[8] = v9;
    if (*a2)
    {
      v10 = *a2 + 8 * *(*a2 - 4);
    }

    else
    {
      v10 = 0;
    }

    if (v10 != v6)
    {
      do
      {
        WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v8, "grandfatherDataForDomains");
        *buf += 8;
        WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(buf, v11, v12);
        v8 = *buf;
      }

      while (*buf != v10);
    }

    WebKit::buildList<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v20, a2, v7);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET grandfathered = 1 WHERE registrableDomain IN (", 74, &v20, 41, buf);
    WebCore::SQLiteDatabase::prepareStatementSlow();
    v14 = *buf;
    *buf = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    if (v22 || WebCore::SQLiteStatement::step(v21) != 101)
    {
      v16 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 664);
        Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
        *buf = 134218755;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        v25 = 1024;
        v26 = Error;
        v27 = 2081;
        v28 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::grandfatherDataForDomains: failed to step statement", buf, 0x26u);
      }
    }

    if (!v22)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v21);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v23);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::isPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, const WebCore::RegistrableDomain **a2)
{
  if (*(this + 233) & 1) == 0 && (*(this + 723) & 1) == 0 && (MEMORY[0x19EB01EF0](*a2, "localhost", 9))
  {
    return 0;
  }

  WebKit::DatabaseUtilities::scopedStatement(this, this + 53, "isPrevalentResource", &v6);
  v4 = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(this, &v6, *a2) != 0;
  MEMORY[0x19EB0CD50](&v6);
  return v4;
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(uint64_t a1, const WebCore::RegistrableDomain *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, v13);
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 456), "hasHadUserInteraction", &v12);
  if (!v12 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v12) != 100)
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = Error;
      v19 = 2081;
      v20 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::hasHadUserInteraction: failed to step statement", buf, 0x26u);
    }

    goto LABEL_10;
  }

  if (!WebCore::SQLiteStatement::columnInt(v12))
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = 1;
  WebCore::SQLiteStatement::columnDouble(v12);
  if (WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(a1, 0, v5))
  {
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1104AE0;
    *buf = v6;
    WebKit::ResourceLoadStatisticsStore::clearUserInteraction(a1, a2, buf);
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    goto LABEL_10;
  }

LABEL_11:
  MEMORY[0x19EB0CD50](&v12);
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v13);
  return v4;
}

_BYTE *WebKit::ResourceLoadStatisticsStore::clearUserInteraction(void *a1, const WebCore::RegistrableDomain *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, v17);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, a2, "clearUserInteraction");
  if (v6)
  {
    WebKit::ResourceLoadStatisticsStore::setUserInteraction(a1, 0.0);
    WebCore::SQLiteDatabase::prepareStatement();
    if (v16)
    {
      goto LABEL_8;
    }

    v7 = WebCore::SQLiteStatement::bindInt(v15);
    if (v7)
    {
      goto LABEL_8;
    }

    if (v16)
    {
      mpark::throw_bad_variant_access(v7);
    }

    if (WebCore::SQLiteStatement::step(v15) != 101)
    {
LABEL_8:
      v9 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[83];
        Error = WebCore::SQLiteDatabase::lastError((a1 + 2));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 2));
        *buf = 134218755;
        v19 = a1;
        v20 = 2048;
        v21 = v12;
        v22 = 1024;
        v23 = Error;
        v24 = 2081;
        v25 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearUserInteraction: failed to step statement", buf, 0x26u);
      }

      v10 = *a3;
      *a3 = 0;
      (*(*v10 + 16))(v10);
      (*(*v10 + 8))(v10);
    }

    else
    {
      WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(a1, a3);
    }

    if (!v16)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v15);
    }
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    (*(*v8 + 8))(v8);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v17);
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(uint64_t a1, int a2, double a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = *(a1 + 656);
      WTF::WallTime::now(a1);
      return v8 + v9 > a3 + 3600.0;
    }

    return 1;
  }

  if (a2)
  {
    if (*(a1 + 704) != 1)
    {
      goto LABEL_10;
    }

    v15 = WebKit::OperatingDate::fromWallTime(a1, a3);
    v16 = v11;
    v6 = WebKit::OperatingDate::secondsSinceEpoch(&v15);
    v7 = (a1 + 692);
  }

  else
  {
    if (*(a1 + 688) != 1)
    {
      goto LABEL_10;
    }

    v15 = WebKit::OperatingDate::fromWallTime(a1, a3);
    v16 = v5;
    v6 = WebKit::OperatingDate::secondsSinceEpoch(&v15);
    v7 = (a1 + 676);
  }

  if (v6 < WebKit::OperatingDate::secondsSinceEpoch(v7))
  {
    return 1;
  }

LABEL_10:
  if (*(a1 + 168) != 1)
  {
    return 0;
  }

  v12 = *(a1 + 656);
  WTF::WallTime::now(a1);
  if (*(a1 + 168))
  {
    return v12 + v13 > a3 + *(a1 + 160);
  }

  v14 = std::__throw_bad_optional_access[abi:sn200100]();
  return WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(v14);
}

void *WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(uint64_t a1, uint64_t *a2)
{
  v178 = *MEMORY[0x1E69E9840];
  if (*(a1 + 726) != 1)
  {
    WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 536), "dumpResourceLoadStatistics", &v166);
    if (v166)
    {
      v164 = 0;
      v165 = 0;
      while (WebCore::SQLiteStatement::step(v166) == 100)
      {
        WebCore::SQLiteStatement::columnText(v166);
        LODWORD(v12) = HIDWORD(v165);
        if (HIDWORD(v165) == v165)
        {
          v15 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v164, HIDWORD(v165) + 1, buf);
          v12 = HIDWORD(v165);
          v16 = v164;
          v17 = *v15;
          *v15 = 0;
          *(v16 + 8 * v12) = v17;
        }

        else
        {
          v13 = *buf;
          *buf = 0;
          v164[HIDWORD(v165)] = v13;
        }

        HIDWORD(v165) = v12 + 1;
        v14 = *buf;
        *buf = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v11);
        }
      }

      v151 = a2;
      *buf = WTF::codePointCompareLessThan;
      v18 = 126 - 2 * __clz(HIDWORD(v165));
      if (HIDWORD(v165))
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,false>(v164, &v164[HIDWORD(v165)], buf, v19, 1);
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v163 = 1;
      WTF::StringBuilder::append();
      if (HIDWORD(v165))
      {
        v20 = v164;
        v21 = &v164[HIDWORD(v165)];
        v22 = "SELECT * FROM ObservedDomains WHERE registrableDomain = ?";
        v23 = &unk_1ED641000;
        v24 = "Registrable domain: ";
        v25 = "hadUserInteraction";
        do
        {
          WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 528), "resourceToString", &v154);
          if (v154 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(v154) == 100)
          {
            *buf = v24;
            *&buf[8] = 21;
            LOBYTE(v170) = 10;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(&v160, buf, v20, &v170);
            v26 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v160, v25, 19, v26);
            WTF::StringBuilder::append(&v160, 0xAu);
            WTF::StringBuilder::append();
            v27 = WebCore::SQLiteStatement::columnDouble(*(a1 + 528));
            WTF::WallTime::now(v27);
            WTF::StringBuilder::append();
            WTF::StringBuilder::append(&v160, 0xAu);
            v28 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v160, "grandfathered", 14, v28);
            WTF::StringBuilder::append(&v160, 0xAu);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "StorageAccessUnderTopFrameDomains", 34, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "TopFrameUniqueRedirectsTo", 26, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "TopFrameUniqueRedirectsFrom", 28, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "TopFrameLinkDecorationsFrom", 28, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "TopFrameLoadedThirdPartyScripts", 32, v20);
            WebCore::SQLiteStatement::columnInt(*(a1 + 528));
            *buf = "    DataRemovalFrequency: ";
            *&buf[8] = 27;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            LOBYTE(v168) = 10;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(&v160, buf, &v170, &v168);
            v30 = v170;
            v170 = 0;
            if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, v29);
            }

            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "SubframeUnderTopFrameDomains", 29, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "SubresourceUnderTopFrameDomains", 32, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "SubresourceUniqueRedirectsTo", 29, v20);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v160, "SubresourceUniqueRedirectsFrom", 31, v20);
            v31 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v160, "isPrevalentResource", 20, v31);
            WTF::StringBuilder::append(&v160, 0xAu);
            v32 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v160, "isVeryPrevalentResource", 24, v32);
            WTF::StringBuilder::append(&v160, 0xAu);
            v33 = WebCore::SQLiteStatement::columnInt(*(a1 + 528));
            v34 = v33;
            if ((v33 & 0x80000000) != 0)
            {
              v47 = -v33;
              v35 = 1;
              do
              {
                ++v35;
                v48 = v47 >= 0xA;
                v47 /= 0xAu;
              }

              while (v48);
            }

            else
            {
              v35 = 0;
              v36 = v33;
              do
              {
                ++v35;
                v37 = v36 > 9;
                v36 /= 0xAu;
              }

              while (v37);
            }

            v48 = __CFADD__(v35, 24);
            v49 = v35 + 24;
            if (v48)
            {
              v49 = -1;
            }

            if (__CFADD__(v162, v49))
            {
              v50 = 0xFFFFFFFFLL;
            }

            else
            {
              v50 = (v162 + v49);
            }

            v51 = v161;
            if ((v161 || (v51 = v160) != 0) && (*(v51 + 16) & 4) == 0)
            {
              v52 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v160);
              if (v52)
              {
                v54 = v53;
                v55 = 0;
                v56 = "    dataRecordsRemoved: ";
                do
                {
                  v57 = *v56++;
                  *(v52 + v55) = v57;
                  v55 += 2;
                }

                while (v55 != 48);
                if (v53 <= 0x17)
                {
                  goto LABEL_212;
                }

                v58 = (v52 + 48);
                v59 = v54 - 24;
                if ((v34 & 0x80000000) != 0)
                {
                  v69 = 0;
                  v70 = -v34;
                  v71 = -1;
                  do
                  {
                    if (v69 == -13)
                    {
                      goto LABEL_212;
                    }

                    v72 = v69;
                    v73 = v71;
                    buf[v69-- + 12] = (v70 % 0xA) | 0x30;
                    --v71;
                    v37 = v70 > 9;
                    v70 /= 0xAu;
                  }

                  while (v37);
                  if ((v69 + 12) < 0xD)
                  {
                    buf[v69 + 12] = 45;
                    while (v59)
                    {
                      *v58++ = buf[v73 + 12];
                      ++v73;
                      ++v72;
                      --v59;
                      if (v72 == 2)
                      {
                        goto LABEL_75;
                      }
                    }
                  }

                  goto LABEL_212;
                }

                WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v34, v58, v59);
              }
            }

            else
            {
              v60 = MEMORY[0x19EB01170](&v160, v50);
              if (v60)
              {
                qmemcpy(v60, "    dataRecordsRemoved: ", 24);
                if (v61 <= 0x17)
                {
                  goto LABEL_212;
                }

                v62 = v61 - 24;
                v63 = v60 + 24;
                if ((v34 & 0x80000000) != 0)
                {
                  v64 = 0;
                  v65 = -v34;
                  v66 = -1;
                  do
                  {
                    if (v64 == -13)
                    {
                      goto LABEL_212;
                    }

                    v67 = v64;
                    v68 = v66;
                    buf[v64-- + 12] = (v65 % 0xA) | 0x30;
                    --v66;
                    v37 = v65 > 9;
                    v65 /= 0xAu;
                  }

                  while (v37);
                  if ((v64 + 12) < 0xD)
                  {
                    buf[v64 + 12] = 45;
                    while (v62)
                    {
                      *v63++ = buf[v68++ + 12];
                      ++v67;
                      --v62;
                      if (v67 == 2)
                      {
                        goto LABEL_75;
                      }
                    }
                  }

LABEL_212:
                  __break(1u);
                }

                WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v34, v63, v62);
              }
            }

LABEL_75:
            WTF::StringBuilder::append(&v160, 0xAu);
          }

          else
          {
            v38 = *(v23 + 41);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = v22;
              v40 = *(a1 + 664);
              v41 = v25;
              v42 = v24;
              v43 = v21;
              v44 = v23;
              Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
              ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
              *buf = 134218755;
              *&buf[4] = a1;
              *&buf[12] = 2048;
              *&buf[14] = v40;
              v22 = v39;
              v174 = 1024;
              v175 = Error;
              v23 = v44;
              v21 = v43;
              v24 = v42;
              v25 = v41;
              v176 = 2081;
              v177 = ErrorMsg;
              _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::resourceToString: failed to step statement", buf, 0x26u);
            }
          }

          MEMORY[0x19EB0CD50](&v154);
          ++v20;
        }

        while (v20 != v21);
      }

      WebKit::ResourceLoadStatisticsStore::aggregatedThirdPartyData(&v158, a1);
      if (v159)
      {
        WTF::StringBuilder::append();
        if (v159)
        {
          v74 = v158;
          v152 = v158 + 24 * v159;
          while (1)
          {
            v75 = *v74;
            if (*v74)
            {
              atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
            }

            v154 = v75;
            v76 = *(v74 + 20);
            v155 = 0;
            v156 = 0;
            v157 = v76;
            if (v76)
            {
              if (v76 >= 0xAAAAAAB)
              {
LABEL_213:
                __break(0xC471u);
                JUMPOUT(0x19DCFD898);
              }

              v77 = 24 * v76;
              v78 = WTF::fastMalloc((24 * v76));
              v156 = v77 / 0x18;
              v155 = v78;
              v79 = *(v74 + 20);
              if (v79)
              {
                v80 = *(v74 + 8);
                v81 = v80 + 24 * v79;
                do
                {
                  v82 = *v80;
                  if (*v80)
                  {
                    atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
                  }

                  *v78 = v82;
                  *(v78 + 8) = *(v80 + 8);
                  v78 += 24;
                  v80 += 24;
                }

                while (v80 != v81);
              }
            }

            v153 = v74;
            memset(buf, 0, 20);
            buf[20] = 1;
            v170 = "Third Party Registrable Domain: ";
            v171 = 33;
            v168 = "\n    {";
            v169 = 7;
            v83 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(buf, &v170, &v154, &v168);
            if (v157)
            {
              break;
            }

LABEL_161:
            WTF::StringBuilder::append(buf, 0x7Du);
            v128 = *buf;
            if (*buf || (WTF::StringBuilder::shrinkToFit(buf), WTF::StringBuilder::reifyString(buf), (v128 = *buf) != 0))
            {
              atomic_fetch_add_explicit(v128, 2u, memory_order_relaxed);
            }

            v129 = *&buf[8];
            *&buf[8] = 0;
            if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v129, v127);
            }

            v130 = *buf;
            *buf = 0;
            if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v130, v127);
            }

            if (v128)
            {
              v131 = *(v128 + 4);
            }

            else
            {
              v131 = 0;
            }

            v48 = __CFADD__(v131, 1);
            v132 = v131 + 1;
            if (v48)
            {
              v132 = -1;
            }

            if (__CFADD__(v162, v132))
            {
              v133 = 0xFFFFFFFFLL;
            }

            else
            {
              v133 = (v162 + v132);
            }

            v134 = v161;
            if ((v161 || (v134 = v160) != 0) && (*(v134 + 16) & 4) == 0 || v128 && (*(v128 + 16) & 4) == 0)
            {
              v135 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v160);
              if (v135)
              {
                v137 = v135;
                v138 = v136;
                *buf = v128;
                WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(buf, v135);
                v139 = *buf;
                if (*buf)
                {
                  v139 = *(*buf + 4);
                  if (v138 < v139)
                  {
                    goto LABEL_212;
                  }
                }

                if (v138 == v139)
                {
                  goto LABEL_212;
                }

                *&v137[2 * v139] = 10;
              }
            }

            else
            {
              v140 = MEMORY[0x19EB01170](&v160, v133);
              if (v140)
              {
                WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v140, v136, v128, 10);
              }
            }

            if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v136);
            }

            WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v155, v136);
            v142 = v154;
            v154 = 0;
            if (v142 && atomic_fetch_add_explicit(v142, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v142, v141);
            }

            v74 = v153 + 24;
            if (v153 + 24 == v152)
            {
              goto LABEL_199;
            }
          }

          v84 = v155;
          v85 = v155 + 24 * v157;
          while (1)
          {
            v86 = *v84;
            if (*v84)
            {
              atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
              v87 = *(v84 + 8);
              v88 = *(v84 + 16);
              v170 = "{ ";
              v171 = 3;
              atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
              if (v87)
              {
                v89 = 49;
              }

              else
              {
                v89 = 48;
              }

              atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
            }

            else
            {
              v90 = *(v84 + 8);
              v88 = *(v84 + 16);
              v170 = "{ ";
              v171 = 3;
              if (v90)
              {
                v89 = 49;
              }

              else
              {
                v89 = 48;
              }
            }

            WTF::WallTime::now(v83);
            if (v92 - v88 >= 86400.0)
            {
              v93 = 48;
            }

            else
            {
              v93 = 49;
            }

            if (v86)
            {
              v94 = *(v86 + 4);
              if (v94 < 0)
              {
                goto LABEL_213;
              }
            }

            else
            {
              v94 = 0;
            }

            if (__OFADD__(v94, 24))
            {
              goto LABEL_213;
            }

            if (__OFADD__(v94 + 24, 22))
            {
              goto LABEL_213;
            }

            if (__OFADD__(v94 + 46, 1))
            {
              goto LABEL_213;
            }

            v95 = v94 + 49;
            if (__OFADD__(v94 + 47, 2))
            {
              goto LABEL_213;
            }

            v96 = __OFADD__(v94, v95);
            v97 = v94 + v95;
            if (v96)
            {
              goto LABEL_213;
            }

            v98 = v97 + 38;
            if (__OFADD__(v97, 38))
            {
              goto LABEL_213;
            }

            if (!v86 || (*(v86 + 16) & 4) != 0)
            {
              break;
            }

            if (v97 != -38)
            {
              if (v98 > 0x7FFFFFEF)
              {
                goto LABEL_213;
              }

              WTF::tryFastCompactMalloc((2 * v98 + 20));
              v99 = v168;
              if (!v168)
              {
                goto LABEL_213;
              }

              *v168 = 2;
              *(v99 + 4) = v98;
              *(v99 + 8) = v99 + 20;
              *(v99 + 16) = 0;
              v100 = "Has been granted storage access under ";
              for (i = 20; i != 96; i += 2)
              {
                v102 = *v100++;
                *(v99 + i) = v102;
              }

              if (v98 <= 0x25)
              {
                goto LABEL_212;
              }

              v103 = v98 - 38;
              v172 = v86;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v172, (v99 + 96));
              if (v172)
              {
                v104 = *(v172 + 4);
                if (v103 < v104)
                {
                  goto LABEL_212;
                }
              }

              else
              {
                v104 = 0;
              }

              v105 = v99 + 96 + 2 * v104;
              *v105 = 2097210;
              v106 = v103 - v104;
              if (v103 - v104 <= 1)
              {
                goto LABEL_212;
              }

              if (v106 == 2)
              {
                goto LABEL_212;
              }

              v107 = 0;
              *(v105 + 4) = v89;
              v108 = "; Has been seen under ";
              do
              {
                v109 = *v108++;
                *(v99 + 2 * v104 + 102 + v107) = v109;
                v107 += 2;
              }

              while (v107 != 44);
              if (v106 - 3 <= 0x15)
              {
                goto LABEL_212;
              }

              v110 = v105 + 50;
              v111 = v106 - 25;
              v168 = v86;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v168, (v105 + 50));
              v112 = v168;
              if (v168)
              {
                v112 = *(v168 + 1);
                if (v111 < v112)
                {
                  goto LABEL_212;
                }
              }

              v113 = 0;
              v114 = " in the last 24 hours: ";
              do
              {
                v115 = *v114++;
                *(v99 + 2 * v104 + 2 * v112 + 146 + v113) = v115;
                v113 += 2;
              }

              while (v113 != 46);
              if (v111 - v112 < 0x18)
              {
                goto LABEL_212;
              }

              *(v110 + 2 * v112 + 46) = v93;
              goto LABEL_142;
            }

            v125 = MEMORY[0x1E696EB88];
            atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
            v167 = v125;
LABEL_145:
            if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v86, v91);
            }

            if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v86, v91);
            }

LABEL_149:
            v168 = " },";
            v169 = 4;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(buf, &v170, &v167, &v168);
            v83 = v167;
            v167 = 0;
            if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v83 = WTF::StringImpl::destroy(v83, v126);
              if (v86)
              {
LABEL_152:
                if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v83 = WTF::StringImpl::destroy(v86, v126);
                }
              }
            }

            else if (v86)
            {
              goto LABEL_152;
            }

            v84 += 24;
            if (v84 == v85)
            {
              goto LABEL_161;
            }
          }

          if (v97 == -38)
          {
            v99 = MEMORY[0x1E696EB88];
            atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
          }

          else
          {
            if ((v98 & 0x80000000) != 0)
            {
              goto LABEL_213;
            }

            WTF::tryFastCompactMalloc((v98 + 20));
            v99 = v168;
            if (!v168)
            {
              goto LABEL_213;
            }

            *v168 = 2;
            *(v99 + 4) = v98;
            *(v99 + 8) = v99 + 20;
            *(v99 + 16) = 4;
            qmemcpy((v99 + 20), "Has been granted storage access under ", 38);
            if (v98 <= 0x25)
            {
              goto LABEL_212;
            }

            v116 = v98 - 38;
            v172 = v86;
            WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v172, (v99 + 58));
            if (v172)
            {
              v117 = *(v172 + 4);
              if (v116 < v117)
              {
                goto LABEL_212;
              }
            }

            else
            {
              v117 = 0;
            }

            v118 = v116 - v117;
            v119 = v99 + 58 + v117;
            *v119 = 8250;
            if (v118 <= 2)
            {
              goto LABEL_212;
            }

            *(v119 + 2) = v89;
            qmemcpy((v119 + 3), "; Has been seen under ", 22);
            if (v118 - 3 <= 0x15)
            {
              goto LABEL_212;
            }

            v120 = v118 - 25;
            v121 = v119 + 25;
            v168 = v86;
            WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v168, (v119 + 25));
            v122 = v168;
            if (v168)
            {
              v122 = *(v168 + 1);
              if (v120 < v122)
              {
                goto LABEL_212;
              }
            }

            v123 = v120 - v122;
            v124 = &v122[v121];
            qmemcpy(v124, " in the last 24 hours: ", 23);
            if (v123 < 0x18)
            {
              goto LABEL_212;
            }

            v124[23] = v93;
          }

LABEL_142:
          v167 = v99;
          if (!v86)
          {
            goto LABEL_149;
          }

          goto LABEL_145;
        }
      }

LABEL_199:
      if (!v160)
      {
        WTF::StringBuilder::shrinkToFit(&v160);
        WTF::StringBuilder::reifyString(&v160);
      }

      v143 = *v151;
      *v151 = 0;
      (*(*v143 + 16))(v143, &v160);
      (*(*v143 + 8))(v143);
      WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v144);
      v146 = v161;
      v161 = 0;
      if (v146 && atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v146, v145);
      }

      v147 = v160;
      v160 = 0;
      if (v147 && atomic_fetch_add_explicit(v147, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v147, v145);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v164, v145);
    }

    else
    {
      *buf = 0;
      v148 = *a2;
      *a2 = 0;
      (*(*v148 + 16))(v148, buf);
      (*(*v148 + 8))(v148);
      v150 = *buf;
      *buf = 0;
      if (v150 && atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v150, v149);
      }
    }

    return MEMORY[0x19EB0CD50](&v166);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 96), a1);
  v4 = *(a1 + 96);
  atomic_fetch_add(v4, 1u);
  v5 = *a2;
  *a2 = 0;
  v6 = *(a1 + 652);
  if (v6 == *(a1 + 648))
  {
    v7 = v6 + (v6 >> 1);
    if (v7 <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 640, v8);
    v6 = *(a1 + 652);
  }

  v9 = *(a1 + 640);
  result = WTF::fastMalloc(0x18);
  *result = &unk_1F1104B08;
  result[1] = v4;
  result[2] = v5;
  *(v9 + 8 * v6) = result;
  ++*(a1 + 652);
  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(WebKit::ResourceLoadStatisticsStore *this, WebCore::SQLiteStatement **a2, const WebCore::RegistrableDomain *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(*a2) == 100)
  {
    v5 = *a2;

    return WebCore::SQLiteStatement::columnInt(v5);
  }

  else
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 83);
      v9 = 134218755;
      v10 = this;
      v11 = 2048;
      v12 = v8;
      v13 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v15 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::predicateValueForDomain: failed to step statement", &v9, 0x26u);
    }

    return 0;
  }
}

void *WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x58);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1104B80;
  v4[1] = v5;
  v6 = a2[1];
  a2[1] = 0;
  v4[2] = v6;
  v4[4] = 0;
  v4[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 3), a2 + 4);
  v4[6] = 0;
  v4[5] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 5), a2 + 8);
  v4[8] = 0;
  v4[7] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 7), a2 + 12);
  v4[9] = 0;
  v7 = *(a2 + 4);
  a2[8] = 0;
  a2[9] = 0;
  *(v4 + 9) = v7;
  *a1 = v4;
  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 48, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v6);
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return a1;
}

WTF::StringImpl *WebKit::buildList<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WTF::StringImpl **a1, unsigned int *a2, unsigned int a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      if (v15)
      {
        v6 = ", ";
      }

      else
      {
        v6 = "";
      }

      if (v15)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      v8 = *a2++;
      WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(&v13, v6, v7, v8);
      v5 -= 4;
    }

    while (v5);
    v10 = v13;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v13);
  WTF::StringBuilder::reifyString(&v13);
  v10 = v13;
  if (v13)
  {
LABEL_12:
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *a1 = v10;
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(void *a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) == 1)
  {
    v11[5] = v3;
    v11[6] = v4;
    if (WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(a1, a3, *(a2 + 16)))
    {
      if (!a3)
      {
        v8 = WTF::fastMalloc(0x10);
        *v8 = &unk_1F1104BF8;
        v11[0] = v8;
        WebKit::ResourceLoadStatisticsStore::clearUserInteraction(a1, (a2 + 8), v11);
        if (v11[0])
        {
          (*(*v11[0] + 8))(v11[0]);
        }
      }

      v9 = 0;
    }

    else
    {
      v9 = *(a2 + 32);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldRemoveAllWebsiteDataFor(WebKit::ResourceLoadStatisticsStore *a1, uint64_t a2, int a3)
{
  if (WebKit::ResourceLoadStatisticsStore::isPrevalentResource(a1, (a2 + 8)))
  {
    hasHadUnexpiredRecentUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(a1, a2, 0);
    v7 = hasHadUnexpiredRecentUserInteraction ^ 1;
    if ((hasHadUnexpiredRecentUserInteraction & 1) == 0 && a3)
    {
      v7 = *(a2 + 33) ^ 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldRemoveAllButCookiesFor(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 722);
  v4 = v3 == 1;
  if (*(a2 + 34))
  {
    v4 = 0;
  }

  v5 = (a3 & *(a2 + 33));
  if (v3 == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 >= 2;
  if (v3 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 34) == 1;
  }

  if ((v4 | v5))
  {
    return 0;
  }

  else
  {
    return WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(a1, a2, v9) ^ 1;
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldEnforceSameSiteStrictFor(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 721) != 1 || a3 && (*(a2 + 33) & 1) != 0 || *(a1 + 224) >= *(a2 + 36))
  {
    return 0;
  }

  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1104C20;
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, v15);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, (a2 + 8), "clearTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement");
  if (v6)
  {
    WebCore::SQLiteDatabase::prepareStatement();
    if (v14)
    {
      goto LABEL_10;
    }

    v7 = WebCore::SQLiteStatement::bindInt(v13);
    if (v7)
    {
      goto LABEL_10;
    }

    if (v14)
    {
      mpark::throw_bad_variant_access(v7);
    }

    if (WebCore::SQLiteStatement::step(v13) != 101)
    {
LABEL_10:
      v8 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v17 = a1;
        v18 = 2048;
        v19 = v10;
        v20 = 1024;
        v21 = Error;
        v22 = 2081;
        v23 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement: failed to step statement", buf, 0x26u);
      }
    }

    (*(*v5 + 16))(v5);
    (*(*v5 + 8))(v5);
    if (!v14)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v13);
    }
  }

  else
  {
    (*(*v5 + 16))(v5);
    (*(*v5 + 8))(v5);
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v15);
  return 1;
}

void WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, WebCore::RegistrableDomain *a5)
{
  v7 = a3;
  v75 = *MEMORY[0x1E69E9840];
  if (a4 > 30)
  {
    if (a4 != 34)
    {
      if (a4 == 32)
      {
        if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6854646564616F4CLL || *(a3 + 2) != 0x7974726150647269 || *(a3 + 3) != 0x73747069726353)
        {
          v27 = *a3 == 0x756F736572627553 && *(a3 + 1) == 0x7265646E55656372;
          v28 = v27 && *(a3 + 2) == 0x656D617246706F54;
          if (!v28 || *(a3 + 3) != 0x736E69616D6F44)
          {
            goto LABEL_39;
          }
        }

        v16 = 91;
      }

      else
      {
        if (a4 != 31)
        {
          goto LABEL_39;
        }

        v36 = *a3 == 0x756F736572627553 && *(a3 + 1) == 0x7571696E55656372;
        v37 = v36 && *(a3 + 2) == 0x6365726964655265;
        if (!v37 || *(a3 + 23) != 0x6D6F7246737463)
        {
          goto LABEL_39;
        }

        v16 = 86;
      }

      goto LABEL_40;
    }

    if (!strcmp(a3, "StorageAccessUnderTopFrameDomains"))
    {
LABEL_28:
      v16 = 82;
      goto LABEL_40;
    }

LABEL_39:
    v16 = 1;
    goto LABEL_40;
  }

  if (a4 == 26)
  {
    if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6552657571696E55 || *(a3 + 2) != 0x5473746365726964 || *(a3 + 12) != 111)
    {
      goto LABEL_39;
    }

LABEL_97:
    v16 = 74;
    goto LABEL_40;
  }

  if (a4 != 28)
  {
    if (a4 == 29)
    {
      if (*a3 == 0x656D617266627553 && *(a3 + 1) == 0x706F547265646E55 && *(a3 + 2) == 0x6D6F44656D617246 && *(a3 + 21) == 0x736E69616D6F44)
      {
        v16 = 85;
        goto LABEL_40;
      }

      if (*a3 != 0x756F736572627553 || *(a3 + 1) != 0x7571696E55656372 || *(a3 + 2) != 0x6365726964655265 || *(a3 + 21) != 0x6F547374636572)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6552657571696E55 || *(a3 + 2) != 0x4673746365726964 || *(a3 + 6) != 7171954)
  {
    if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6F6365446B6E694CLL || *(a3 + 2) != 0x46736E6F69746172 || *(a3 + 6) != 7171954)
    {
      goto LABEL_39;
    }

    goto LABEL_97;
  }

  v16 = 78;
LABEL_40:
  if (v16 < 2)
  {
    return;
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (v68)
  {
    goto LABEL_46;
  }

  WebCore::RegistrableDomain::uncheckedCreateFromHost(a5, buf);
  if (!(WebKit::ResourceLoadStatisticsStore::domainID(a1, buf) >> 32))
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_158;
  }

  v21 = WebCore::SQLiteStatement::bindInt(v67);
  v22 = *buf;
  *buf = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v22 = WTF::StringImpl::destroy(v22, v20);
    if (v21)
    {
LABEL_46:
      v23 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        v71 = 1024;
        v72 = Error;
        v73 = 2081;
        v74 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::appendSubStatisticList: failed to bind parameter", buf, 0x26u);
      }

      goto LABEL_48;
    }
  }

  else if (v21)
  {
    goto LABEL_46;
  }

  if (v68)
  {
LABEL_152:
    mpark::throw_bad_variant_access(v22);
  }

  if (WebCore::SQLiteStatement::step(v67) == 100)
  {
    if (a4)
    {
      v42 = a4 - 1;
    }

    else
    {
      v42 = 0;
    }

    if (!(v42 >> 31))
    {
      v43 = *(a2 + 4);
      v44 = __CFADD__(v43, v42 + 6);
      v45 = v43 + v42 + 6;
      if (v44)
      {
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      v47 = a2[1];
      if ((v47 || (v47 = *a2) != 0) && (*(v47 + 16) & 4) == 0)
      {
        v22 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a2);
        if (v22)
        {
          *v22 = 0x20002000200020;
          v22 += 8;
          if (v48 > 3)
          {
            v49 = (v22 + 2 * v42);
            if (v42 >= 0x40)
            {
              v50 = v22 + 2 * (v42 & 0x7FFFFFC0);
              v51 = 0uLL;
              do
              {
                v76.val[0] = *v7;
                v52 = v7[1];
                v77.val[0] = v7[2];
                v53 = v7[3];
                v7 += 4;
                v54 = v53;
                v77.val[1] = 0uLL;
                v78.val[0] = v52;
                v76.val[1] = 0uLL;
                v55 = v22;
                vst2q_s8(v55, v76);
                v55 += 32;
                v78.val[1] = 0uLL;
                vst2q_s8(v55, v78);
                v56 = (v22 + 64);
                vst2q_s8(v56, v77);
                v57 = (v22 + 96);
                vst2q_s8(v57, *(&v51 - 1));
                v22 += 128;
              }

              while (v22 != v50);
              v22 = v50;
            }

            while (v22 != v49)
            {
              v58 = v7->u8[0];
              v7 = (v7 + 1);
              *v22 = v58;
              v22 += 2;
            }

            if (v48 - 4 >= v42)
            {
              *v49 = 655418;
              goto LABEL_144;
            }
          }

LABEL_159:
          __break(1u);
          return;
        }
      }

      else
      {
        v22 = MEMORY[0x19EB01170](a2, v46);
        if (v22)
        {
          *v22 = 538976288;
          if (v59 <= 3)
          {
            goto LABEL_159;
          }

          v60 = v59 - 4;
          v61 = (v22 + 4);
          if (v42)
          {
            if (v42 == 1)
            {
              *v61 = v7->i8[0];
            }

            else
            {
              v22 = memcpy((v22 + 4), v7, v42);
            }
          }

          if (v60 < v42)
          {
            goto LABEL_159;
          }

          *&v61[v42] = 2618;
        }
      }

LABEL_144:
      if (!v68)
      {
        WebCore::SQLiteStatement::columnInt(v67);
        WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(a1, &v66);
        *buf = "        ";
        *&buf[8] = 9;
        v69 = 10;
        v22 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(a2, buf, &v66, &v69);
        if (!v68)
        {
          while (1)
          {
            v22 = WebCore::SQLiteStatement::step(v67);
            if (v22 != 100)
            {
              break;
            }

            if (!v68)
            {
              WebCore::SQLiteStatement::columnInt(v67);
              WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(a1, buf);
              v64 = v66;
              v66 = *buf;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v63);
              }

              *buf = "        ";
              *&buf[8] = 9;
              v69 = 10;
              v22 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(a2, buf, &v66, &v69);
              if (!v68)
              {
                continue;
              }
            }

            goto LABEL_152;
          }

          v65 = v66;
          v66 = 0;
          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v62);
          }

          goto LABEL_48;
        }
      }

      goto LABEL_152;
    }

LABEL_158:
    __break(0xC471u);
    goto LABEL_159;
  }

LABEL_48:
  if (!v68)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v67);
  }
}

uint64_t WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(uint64_t *a1, uint64_t a2, unint64_t *a3, char *a4)
{
  v4 = *(a2 + 8);
  v5 = v4 != 0;
  v6 = (v4 - 1);
  if (!v5)
  {
    v6 = 0;
  }

  v10[0] = *a2;
  v10[1] = v6;
  if (v6 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v9 = *a3;
    v8 = *a4;
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(a1, v10, &v9, &v8);
  }

  return result;
}

uint64_t WebKit::appendBoolean(WTF::StringBuilder *a1, int8x16_t *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_41;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(a1 + 1);
  if ((v8 || (v8 = *a1) != 0) && (*(v8 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    *result = 0x20002000200020;
    result += 8;
    if (v10 > 3)
    {
      v11 = (result + 2 * v5);
      if (v5 >= 0x40)
      {
        v12 = result + 2 * (v5 & 0x7FFFFFC0);
        v13 = 0uLL;
        do
        {
          v31.val[0] = *a2;
          v14 = a2[1];
          v32.val[0] = a2[2];
          v15 = a2[3];
          a2 += 4;
          v16 = v15;
          v32.val[1] = 0uLL;
          v33.val[0] = v14;
          v31.val[1] = 0uLL;
          v17 = result;
          vst2q_s8(v17, v31);
          v17 += 32;
          v33.val[1] = 0uLL;
          vst2q_s8(v17, v33);
          v18 = (result + 64);
          vst2q_s8(v18, v32);
          v19 = (result + 96);
          vst2q_s8(v19, *(&v13 - 1));
          result += 128;
        }

        while (result != v12);
        result = v12;
      }

      v20 = v10 - 4;
      while (result != v11)
      {
        v21 = a2->u8[0];
        a2 = (a2 + 1);
        *result = v21;
        result += 2;
      }

      v25 = v20 >= v5;
      v26 = v20 - v5;
      if (v25)
      {
        *v11 = 2097210;
        if (v26 > 1)
        {
          v27 = v11 + 1;
          v28 = 2 * v7;
          do
          {
            v29 = *v4++;
            *v27++ = v29;
            v28 -= 2;
          }

          while (v28);
          return result;
        }
      }
    }

LABEL_41:
    __break(1u);
    return result;
  }

  result = MEMORY[0x19EB01170]();
  if (!result)
  {
    return result;
  }

  *result = 538976288;
  if (v22 <= 3)
  {
    goto LABEL_41;
  }

  v23 = v22 - 4;
  v24 = (result + 4);
  if (v5)
  {
    if (v5 == 1)
    {
      *v24 = a2->i8[0];
    }

    else
    {
      result = memcpy((result + 4), a2, v5);
    }
  }

  if (v23 < v5)
  {
    goto LABEL_41;
  }

  *&v24[v5] = 8250;
  if (v23 - v5 <= 1)
  {
    goto LABEL_41;
  }

  return memcpy(&v24[v5 + 2], v4, v7);
}

void WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(WebKit::ResourceLoadStatisticsStore *this)
{
  v28 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  WebCore::SQLiteDatabase::prepareStatement();
  WebCore::SQLiteDatabase::prepareStatement();
  if (v22 || (v2 = WebCore::SQLiteStatement::step(v21), v2 != 100))
  {
    v6 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v7 = *(this + 83);
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    v24 = 1024;
    v25 = Error;
    v26 = 2081;
    v27 = ErrorMsg;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step countOperatingDatesStatement";
    goto LABEL_20;
  }

  if (v22)
  {
    goto LABEL_25;
  }

  *(this + 168) = WebCore::SQLiteStatement::columnInt(v21);
  if (!v20)
  {
    v2 = WebCore::SQLiteStatement::step(v19);
    if (v2 == 100)
    {
      if (!v20)
      {
        v2 = WebCore::SQLiteStatement::columnInt(v19);
        if (!v20)
        {
          v3 = v2;
          v2 = WebCore::SQLiteStatement::columnInt(v19);
          if (!v20)
          {
            v4 = v2;
            v5 = WebCore::SQLiteStatement::columnInt(v19);
            *(this + 177) = v3;
            *(this + 178) = v4;
            *(this + 179) = v5;
            if (!v18)
            {
              *buf = this;
              *&buf[8] = v17;
              WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(buf, this + 692, 7);
              WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(buf, this + 676, 30);
              goto LABEL_11;
            }

            v6 = qword_1ED641148;
            if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
            {
              v14 = *(this + 83);
              v15 = WebCore::SQLiteDatabase::lastError((this + 16));
              v16 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
              *buf = 134218755;
              *&buf[4] = this;
              *&buf[12] = 2048;
              *&buf[14] = v14;
              v24 = 1024;
              v25 = v15;
              v26 = 2081;
              v27 = v16;
              v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to prepare getOperatingDateWindowStatement";
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }
      }

LABEL_25:
      mpark::throw_bad_variant_access(v2);
    }
  }

  v6 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v11 = *(this + 83);
    v12 = WebCore::SQLiteDatabase::lastError((this + 16));
    v13 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 2081;
    v27 = v13;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step getMostRecentOperatingDateStatement";
LABEL_20:
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
  }

LABEL_11:
  if (!v18)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v17);
  }

  if (!v20)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v19);
  }

  if (!v22)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v21);
  }
}

void WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(void *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*(*a1 + 672) <= (a3 - 1))
  {
    if (*(a2 + 12) == 1)
    {
      *(a2 + 12) = 0;
    }

    return;
  }

  v6 = a1[1];
  if (*(v6 + 24))
  {
    goto LABEL_20;
  }

  WebCore::SQLiteStatement::reset(v6);
  v6 = a1[1];
  if (*(v6 + 24))
  {
    goto LABEL_20;
  }

  if (WebCore::SQLiteStatement::bindInt(v6))
  {
    goto LABEL_8;
  }

  v6 = a1[1];
  if (*(v6 + 24))
  {
LABEL_20:
    mpark::throw_bad_variant_access(v6);
  }

  if (WebCore::SQLiteStatement::step(v6) == 100)
  {
    v6 = a1[1];
    if (!*(v6 + 24))
    {
      v9 = WebCore::SQLiteStatement::columnInt(v6);
      v6 = a1[1];
      if (!*(v6 + 24))
      {
        v10 = WebCore::SQLiteStatement::columnInt(v6);
        v6 = a1[1];
        if (!*(v6 + 24))
        {
          v11 = WebCore::SQLiteStatement::columnInt(v6);
          v12 = *(a2 + 12);
          *a2 = v9;
          *(a2 + 4) = v10;
          *(a2 + 8) = v11;
          if (v12 == 1)
          {
            v13 = qword_1ED641148;
            if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            *(a2 + 12) = 1;
            v13 = qword_1ED641148;
            if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          v14 = *(v4 + 664);
          v15 = 134218240;
          v16 = v14;
          v17 = 2048;
          v18 = WebKit::OperatingDate::secondsSinceEpoch(a2);
          _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "ResourceLoadStatisticsStore::updateOperatingDatesParameters: sessionID=%llu, memberOperatingDate: %lf", &v15, 0x16u);
          return;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v7 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v8 = *(v4 + 664);
    v15 = 134218755;
    v16 = v4;
    v17 = 2048;
    v18 = v8;
    v19 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((v4 + 16));
    v21 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v4 + 16));
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step getOperatingDateWindowStatement", &v15, 0x26u);
  }
}

uint64_t WebKit::operator<=>(WebKit::OperatingDate *a1, WebKit::OperatingDate *a2)
{
  v3 = WebKit::OperatingDate::secondsSinceEpoch(a1);
  v4 = WebKit::OperatingDate::secondsSinceEpoch(a2);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -127;
  }

  if (v3 > v4)
  {
    v5 = 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(uint64_t a1, char a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    v3 = *a3;
    *a3 = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F1104C48;
    *(v9 + 8) = a2;
    *(v9 + 16) = v8;
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
      v14 = v13;
      WTF::SuspendableWorkQueue::dispatch();
      result = v14;
      if (v14)
      {
        return (*(*v14 + 8))(v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::postTask(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v5 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_4:
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F11044F0;
    v7[1] = a1;
    v7[2] = v6;
    v9 = v7;
    WTF::SuspendableWorkQueue::dispatch();
    result = v9;
    if (v9)
    {
      return (*(*v9 + 8))(v9);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1104C70;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v10 = *(a2 + 8);
  atomic_fetch_add(v10, 1u);
  *(a1 + 16) = v10;
  v11 = WebKit::sharedStatisticsQueue((a1 + 24));
  *(a1 + 32) = 0;
  v12 = WTF::RunLoop::mainSingleton(v11);
  v13 = v12;
  while (1)
  {
    v14 = *(v12 + 8);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v24 = *(v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v24, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v14)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_4:
  v25 = v13;
  Statistics = WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>((a1 + 40), &v25, a1);
  v16 = v25;
  v25 = 0;
  if (v16)
  {
    Statistics = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v16 + 1);
  }

  *(a1 + 88) = a5;
  *(a1 + 136) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v17 = WTF::RunLoop::mainSingleton(Statistics);
  if (WTF::RunLoop::isCurrent(v17))
  {
    if ((a5 & 1) == 0 && *a3 && *(*a3 + 4))
    {
      WTF::String::isolatedCopy();
      LOBYTE(v26) = a4;
      *(&v26 + 1) = *(a2 + 24);
      v18 = WTF::fastMalloc(0x20);
      *v18 = &unk_1F1104CC0;
      v19 = v25;
      v25 = 0;
      *(v18 + 8) = v19;
      *(v18 + 16) = v26;
      v27 = v18;
      WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v27);
      v21 = v27;
      v27 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = v25;
      v25 = 0;
      if (v22)
      {
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      WTF::RunLoop::TimerBase::start();
    }

    return a1;
  }

  else
  {
    result = 128;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::sharedStatisticsQueue@<X0>(void *a1@<X8>)
{
  {
    v3 = a1;
    WTF::SuspendableWorkQueue::create();
    a1 = v3;
    WebKit::sharedStatisticsQueue(void)::queue = v4;
  }

  return WTF::Ref<WTF::SuspendableWorkQueue,WTF::RawPtrTraits<WTF::SuspendableWorkQueue>,WTF::DefaultRefDerefTraits<WTF::SuspendableWorkQueue>>::copyRef(&WebKit::sharedStatisticsQueue(void)::queue, a1);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::performDailyTasks(atomic_ullong *this)
{
  v2 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::performDailyTasks", v9, 2u);
  }

  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F1105300;
  if (*(this + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v4 = v3;
    while (1)
    {
      v5 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v6 = *this;
      atomic_compare_exchange_strong_explicit(this, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_7:
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F11044F0;
    v7[1] = this;
    v7[2] = v4;
    v10 = v7;
    WTF::SuspendableWorkQueue::dispatch();
    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F1104C98;
  v5[1] = a3;
  v5[2] = WebKit::WebResourceLoadStatisticsStore::performDailyTasks;
  v5[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v5;
  return result;
}

void WebKit::WebResourceLoadStatisticsStore::~WebResourceLoadStatisticsStore(WebKit::WebResourceLoadStatisticsStore *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0 || *(this + 4))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFF9FCLL);
  }

  v4 = *(this + 17);
  if (v4)
  {
    WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  v5 = *(this + 15);
  if (v5)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 14);
  if (v6)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 13);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  v8 = *(this + 12);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v3);
  }

  WTF::RunLoop::Timer::~Timer((this + 40));
  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v10 + 104));
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v11 + 32));
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v9);
    }
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = WTF::fastMalloc(0x90);
  result = WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(v10, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

atomic_uint *WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::RunLoop *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1104CE8;
  v4[1] = v3;
  v6 = WTF::fastMalloc(0x10);
  *v6 = 1;
  *(v6 + 8) = v4;
  v7 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  atomic_fetch_add(v6, 1u);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1104D10;
  v8[1] = v6;
  v10 = v8;
  WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(a1, &v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::RunLoop *a1, uint64_t *a2)
{
  v4 = WTF::RunLoop::mainSingleton(a1);
  if (WTF::RunLoop::isCurrent(v4))
  {
    if (*(a1 + 88) == 1)
    {
      v5 = *a2;
      *a2 = 0;
      (*(*v5 + 16))(v5);
      v6 = *(*v5 + 8);

      return v6(v5);
    }

    else
    {
      v8 = *a2;
      *a2 = 0;
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F1104D38;
      v9[1] = v8;
      v10 = v9;
      WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v10);
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    result = 192;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1104D60;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(uint64_t a1, char a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      ++*(v10 + 16);
      v11 = *(v10 + 32);
      v22 = *(v10 + 24);
      v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v22);
      if (v12)
      {
        v13 = v12;
        ++*(v12 + 2);
        WebCore::NetworkStorageSession::setTrackingPreventionDebugLoggingEnabled(v12);
        v14 = *(v13 + 2);
        if (!v14)
        {
LABEL_22:
          __break(0xC471u);
          JUMPOUT(0x19DCFFFB0);
        }

        *(v13 + 2) = v14 - 1;
      }

      v15 = *(v10 + 16);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCFFFD0);
      }

      *(v10 + 16) = v15 - 1;
    }
  }

  v16 = *a3;
  *a3 = 0;
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F1104DD8;
  *(v17 + 8) = a2;
  *(v17 + 16) = v16;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_22;
  }

  v18 = v17;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F11044F0;
  v21[1] = a1;
  v21[2] = v18;
  v22 = v21;
  WTF::SuspendableWorkQueue::dispatch();
  result = v22;
  v22 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4);
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
    *v9 = &unk_1F1104E00;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1104E28;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1104E50;
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

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t *a7)
{
  v11 = *(a1 + 16);
  if (*(a1 + 88) != 1)
  {
    if (v11 && (v22 = *(v11 + 8)) != 0)
    {
      ++*(v22 + 16);
      v23 = *(v22 + 32);
      v46 = *(v22 + 24);
      v24 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v23 + 248), &v46);
      if (v24)
      {
        v25 = v24;
        ++*(v24 + 8);
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
        v27 = *(v25 + 8);
        if (!v27)
        {
          goto LABEL_42;
        }

        v28 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
        *(v25 + 8) = v27 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v22 + 16);
      if (!v29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD0089CLL);
      }

      *(v22 + 16) = v29 - 1;
    }

    else
    {
      v28 = 0;
    }

    WebCore::RegistrableDomain::isolatedCopy(&v46);
    WebCore::RegistrableDomain::isolatedCopy(&v47);
    *v48 = a4;
    v48[8] = a5;
    *&v48[16] = a6;
    v48[24] = v28;
    v30 = *a7;
    *a7 = 0;
    v49 = v30;
    v31 = WTF::fastMalloc(0x40);
    *v31 = &unk_1F1104F18;
    *(v31 + 8) = v46;
    v32 = v47;
    v46 = 0;
    v47 = 0;
    *(v31 + 16) = v32;
    v33 = *&v48[9];
    *(v31 + 24) = *v48;
    *(v31 + 33) = v33;
    v34 = v49;
    v49 = 0;
    *(v31 + 56) = v34;
    if (*(a1 + 88) != 1)
    {
      v35 = v31;
      while (1)
      {
        v36 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v37 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v37 == v36)
        {
          goto LABEL_19;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
      v38 = WTF::fastMalloc(0x18);
      *v38 = &unk_1F11044F0;
      v38[1] = a1;
      v38[2] = v35;
      v50 = v38;
      WTF::SuspendableWorkQueue::dispatch();
      v40 = v50;
      v50 = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      v41 = v49;
      v49 = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      v42 = v47;
      v47 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v39);
      }

      result = v46;
      v46 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v39);
      }

      return result;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x19DD0087CLL);
  }

  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      ++*(v12 + 16);
      v13 = *(v12 + 32);
      v46 = *(v12 + 24);
      v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v13 + 248), &v46);
      if (v14)
      {
        v15 = v14;
        ++*(v14 + 8);
        hasStorageAccess = WebCore::NetworkStorageSession::hasStorageAccess();
        v17 = *a7;
        *a7 = 0;
        (*(*v17 + 16))(v17, hasStorageAccess);
        result = (*(*v17 + 8))(v17);
        v19 = *(v15 + 8);
        if (!v19)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD008DCLL);
        }

        *(v15 + 8) = v19 - 1;
        v20 = *(v12 + 16);
        if (v20)
        {
          *(v12 + 16) = v20 - 1;
          return result;
        }

LABEL_40:
        __break(0xC471u);
        JUMPOUT(0x19DD008BCLL);
      }

      v43 = *(v12 + 16);
      if (!v43)
      {
        goto LABEL_40;
      }

      *(v12 + 16) = v43 - 1;
    }
  }

  v44 = *a7;
  *a7 = 0;
  (*(*v44 + 16))(v44, 0);
  v45 = *(*v44 + 8);

  return v45(v44);
}

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(uint64_t a1, WTF **a2, WTF::StringImpl *a3, WTF::StringImpl *a4, WTF::StringImpl *a5, void *a6, char a7, uint64_t *a8)
{
  if (!WTF::equal(*a2, *a3, a3))
  {
    v80 = a5;
    LOBYTE(v92) = 0;
    v95 = 0;
    v22 = *(a1 + 16);
    if (v22 && (v23 = *(v22 + 8)) != 0)
    {
      ++*(v23 + 16);
      v24 = *(v23 + 32);
      v81[0] = *(v23 + 24);
      v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v24 + 248), v81);
      if (v25)
      {
        v26 = v25;
        ++*(v25 + 8);
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
        WebCore::NetworkStorageSession::storageAccessQuirkForDomainPair();
        std::__optional_storage_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OrganizationStorageAccessPromptQuirk,false>>(&v92, v81);
        if (v83 == 1)
        {
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v82, v27);
          if (v81[1])
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v81[1], v28);
          }

          v29 = v81[0];
          v81[0] = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v28);
          }
        }

        v30 = *(v26 + 8);
        if (!v30)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD010D4);
        }

        *(v26 + 8) = v30 - 1;
      }

      else
      {
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = 0;
      }

      v31 = *(v23 + 16);
      if (!v31)
      {
        goto LABEL_105;
      }

      *(v23 + 16) = v31 - 1;
    }

    else
    {
      canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = 0;
    }

    if (*(a1 + 88) != 1)
    {
      *v88 = a1;
      while (1)
      {
        v48 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v49 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v49 == v48)
        {
          goto LABEL_47;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_47:
      *&v88[8] = a1;
      WebCore::RegistrableDomain::isolatedCopy(&v88[16]);
      WebCore::RegistrableDomain::isolatedCopy(&v88[24]);
      *v89 = a4;
      *&v89[8] = a5;
      *&v89[16] = a6;
      v89[24] = a7;
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v90, &v92);
      v50 = *a8;
      *a8 = 0;
      v91 = v50;
      WebCore::RegistrableDomain::isolatedCopy(v81);
      WebCore::RegistrableDomain::isolatedCopy(&v81[1]);
      v82[0] = a4;
      v82[1] = a5;
      LOBYTE(v83) = a7;
      BYTE1(v83) = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
      v51 = *&v88[16];
      *v84 = *v88;
      memset(&v88[8], 0, 24);
      *&v84[16] = v51;
      v85[0] = *v89;
      *(v85 + 9) = *&v89[9];
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v86, v90);
      v52 = v91;
      v91 = 0;
      v87 = v52;
      v53 = WTF::fastMalloc(0xA0);
      *v53 = &unk_1F1104FE0;
      *(v53 + 8) = v81[0];
      *(v53 + 16) = v81[1];
      v54 = *v82;
      *(v53 + 40) = v83;
      *(v53 + 24) = v54;
      *(v53 + 48) = *v84;
      v55 = *&v84[16];
      *v81 = 0u;
      *&v84[8] = 0u;
      *(v53 + 64) = v55;
      v56 = *&v84[24];
      *&v84[24] = 0;
      *(v53 + 72) = v56;
      v57 = v85[0];
      *(v53 + 89) = *(v85 + 9);
      *(v53 + 80) = v57;
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v53 + 112, v86);
      v58 = v87;
      v87 = 0;
      *(v53 + 152) = v58;
      if (*(a1 + 88) == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD010F4);
      }

      while (1)
      {
        v59 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v60 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v60, v59 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v60 == v59)
        {
          goto LABEL_50;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_50:
      v61 = WTF::fastMalloc(0x18);
      *v61 = &unk_1F11044F0;
      v61[1] = a1;
      v61[2] = v53;
      v101 = v61;
      WTF::SuspendableWorkQueue::dispatch();
      v63 = v101;
      v101 = 0;
      if (v63)
      {
        (*(*v63 + 8))(v63);
      }

      WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v84, v62);
      v65 = v81[1];
      v81[1] = 0;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v64);
      }

      v66 = v81[0];
      v81[0] = 0;
      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v64);
      }

      result = WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v88, v64);
      goto LABEL_74;
    }

    *v88 = a4;
    v101 = a6;
    v32 = *(a1 + 16);
    if (!v32 || (v33 = *(v32 + 8)) == 0)
    {
      v68 = 0;
      v73 = 1;
      goto LABEL_86;
    }

    v78 = *(v32 + 8);
    ++*(v33 + 16);
    if (!*(a1 + 96))
    {
LABEL_32:
      if (canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction)
      {
        goto LABEL_33;
      }

      v73 = 0;
      v68 = v78;
LABEL_86:
      LOWORD(v81[0]) = 0;
      BYTE2(v81[0]) = a7;
      v74 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
      }

      v81[1] = v74;
      v75 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
      }

      v82[0] = v75;
      WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a8, v81);
      v76 = v82[0];
      v82[0] = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v67);
      }

      result = v81[1];
      v81[1] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v67);
      }

      if ((v73 & 1) == 0)
      {
LABEL_72:
        v72 = *(v68 + 16);
        if (!v72)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD01114);
        }

        *(v68 + 16) = v72 - 1;
      }

LABEL_74:
      if (v95 == 1)
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v94, v67);
        if (v93)
        {
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v93, v19);
        }

        result = v92;
        v92 = 0;
        if (result)
        {
          goto LABEL_78;
        }
      }

      return result;
    }

    if (WTF::equal(*a2, 0, v16))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01134);
    }

    if (*a2 != -1)
    {
      v35 = *(a1 + 96);
      if (v35)
      {
        v36 = *(v35 - 8);
        v37 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v34) & v36;
        v38 = (v35 + 8 * v37);
        if ((WTF::equal(*v38, 0, v39) & 1) == 0)
        {
          v77 = 1;
          while (*v38 == -1 || (WTF::equalIgnoringASCIICase(*v38, *a2, v40) & 1) == 0)
          {
            v37 = (v37 + v77) & v36;
            v38 = (v35 + 8 * v37);
            ++v77;
            if (WTF::equal(*v38, 0, v40))
            {
              goto LABEL_32;
            }
          }

LABEL_33:
          while (1)
          {
            v41 = *a1;
            if ((*a1 & 1) == 0)
            {
              break;
            }

            v42 = *a1;
            atomic_compare_exchange_strong_explicit(a1, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v42 == v41)
            {
              goto LABEL_35;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_35:
          v43 = *a2;
          if (*a2)
          {
            atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
          }

          v44 = *a3;
          if (*a3)
          {
            atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
          }

          v45 = *a8;
          *a8 = 0;
          v46 = WTF::fastMalloc(0x48);
          *v46 = &unk_1F11050A8;
          *(v46 + 8) = a1;
          *(v46 + 16) = a1;
          if (v43)
          {
            atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
          }

          *(v46 + 24) = v43;
          if (v44)
          {
            atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
            *(v46 + 32) = v44;
            *(v46 + 40) = a4;
            *(v46 + 48) = v80;
            *(v46 + 56) = a7;
            *(v46 + 64) = v45;
            v100 = v46;
            if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v47);
            }
          }

          else
          {
            *(v46 + 32) = 0;
            *(v46 + 40) = a4;
            *(v46 + 48) = v80;
            *(v46 + 56) = a7;
            *(v46 + 64) = v45;
            v100 = v46;
          }

          v68 = v78;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v47);
          }

          v69 = *(*(v78 + 32) + 40);
          if (v69)
          {
            while (1)
            {
              v70 = *v69;
              if ((*v69 & 1) == 0)
              {
                break;
              }

              v71 = *v69;
              atomic_compare_exchange_strong_explicit(v69, &v71, v70 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v71 == v70)
              {
                goto LABEL_68;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v69);
          }

LABEL_68:
          v81[0] = &v101;
          v81[1] = v88;
          v82[0] = a2;
          v82[1] = a3;
          v83 = &v92;
          IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(v69, v81, &v100);
          if (v69)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v69);
          }

          result = v100;
          if (v100)
          {
            result = (*(*v100 + 8))(v100);
          }

          goto LABEL_72;
        }
      }

      goto LABEL_32;
    }

LABEL_105:
    __break(0xC471u);
    JUMPOUT(0x19DD010B4);
  }

  v96 = 1;
  v97 = a7;
  v17 = *a3;
  *a3 = 0;
  v18 = *a2;
  *a2 = 0;
  v98 = v17;
  v99 = v18;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a8, &v96);
  v20 = v99;
  v99 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  result = v98;
  v98 = 0;
  if (result)
  {
LABEL_78:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *WebCore::RegistrableDomain::isolatedCopy@<X0>(void *a1@<X8>)
{
  WTF::String::isolatedCopy();
  WebCore::RegistrableDomain::RegistrableDomain(a1, &v4);
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

uint64_t WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 96) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v4 = *(a1 + 72);
    if (v4)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }

    v5 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
  }

  return a1;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setLoginStatus(uint64_t a1, WTF **a2, const WTF::StringImpl *a3, WebCore::LoginStatus *this, uint64_t *a5)
{
  if (a3 == 1)
  {
    if (*(this + 40) == 1 && (WebCore::LoginStatus::hasExpired(this) & 1) == 0)
    {
      v37 = *(this + 40);
      LOBYTE(v51[0]) = 0;
      v54 = 0;
      if (v37)
      {
        v38 = *this;
        v39 = *(this + 1);
        *this = 0;
        *(this + 1) = 0;
        *v51 = v38;
        v52 = v39;
        v53 = *(this + 4);
        v54 = 1;
        WebCore::LoginStatus::setTimeToLive();
        LOBYTE(v47[0]) = 0;
        v50 = 0;
        if (v51[0])
        {
          atomic_fetch_add_explicit(v51[0], 2u, memory_order_relaxed);
        }

        v47[0] = v51[0];
        if (v51[1])
        {
          atomic_fetch_add_explicit(v51[1], 2u, memory_order_relaxed);
        }

        v47[1] = v51[1];
        v48 = v52;
        v49 = v53;
        v50 = 1;
LABEL_6:
        if (WTF::equal(*a2, 0, a3) || *a2 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD017A4);
        }

        v10 = *(a1 + 120);
        if (v10 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 120)), (v10 = *(a1 + 120)) != 0))
        {
          v11 = *(v10 - 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v9) & v11;
        v13 = v10 + (v12 << 6);
        if ((WTF::equal(*v13, 0, v14) & 1) == 0)
        {
          v16 = 0;
          v17 = 1;
          do
          {
            if (*v13 == -1)
            {
              v16 = v13;
            }

            else if (WTF::equalIgnoringASCIICase(*v13, *a2, v15))
            {
              *(v13 + 8) = 1;
              std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(v13 + 16, v47);
              goto LABEL_63;
            }

            v12 = (v12 + v17) & v11;
            v13 = v10 + (v12 << 6);
            ++v17;
          }

          while (!WTF::equal(*v13, 0, v15));
          if (v16)
          {
            *v16 = 0;
            *(v16 + 8) = 0;
            *(v16 + 16) = 0;
            *(v16 + 56) = 0;
            --*(*(a1 + 120) - 16);
            v13 = v16;
          }
        }

        WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v13, a2);
        v55 = 1;
        LOBYTE(v56[0]) = 0;
        v59 = 0;
        if (v50 == 1)
        {
          v18 = *v47;
          v47[0] = 0;
          v47[1] = 0;
          *v56 = v18;
          v57 = v48;
          v58 = v49;
          v59 = 1;
        }

        *(v13 + 8) = 1;
        std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(v13 + 16, v56);
        if (v59 == 1)
        {
          v19 = v56[1];
          if (v56[1] && atomic_fetch_add_explicit(v56[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v40);
          }

          v20 = v56[0];
          if (v56[0] && atomic_fetch_add_explicit(v56[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v40);
          }
        }

        v21 = *(a1 + 120);
        if (v21)
        {
          v22 = *(v21 - 12) + 1;
        }

        else
        {
          v22 = 1;
        }

        *(v21 - 12) = v22;
        v35 = (*(v21 - 16) + v22);
        v36 = *(v21 - 4);
        if (v36 > 0x400)
        {
          if (v36 > 2 * v35)
          {
            goto LABEL_63;
          }
        }

        else if (3 * v36 > 4 * v35)
        {
LABEL_63:
          if (v50 == 1)
          {
            v41 = v47[1];
            if (v47[1] && atomic_fetch_add_explicit(v47[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v40);
            }

            v42 = v47[0];
            v47[0] = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v40);
            }
          }

          if (v54 == 1)
          {
            v43 = v51[1];
            v51[1] = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v40);
            }

            v44 = v51[0];
            v51[0] = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v40);
            }
          }

          goto LABEL_77;
        }

        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 120));
        goto LABEL_63;
      }
    }

    else
    {
      LOBYTE(v51[0]) = 0;
      v54 = 0;
    }

    LOBYTE(v47[0]) = 0;
    v50 = 0;
    goto LABEL_6;
  }

  v23 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 120), a2, a3);
  v25 = v23;
  v26 = *(a1 + 120);
  if (v26)
  {
    v27 = (v26 + (*(v26 - 4) << 6));
    if (v27 == v23)
    {
      goto LABEL_77;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_77;
    }

    v27 = 0;
  }

  if (v27 != v23)
  {
    v28 = *v23;
    *v25 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v24);
    }

    *v25 = -1;
    if (*(v25 + 56) == 1)
    {
      v29 = v25[3];
      v25[3] = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v24);
      }

      v30 = v25[2];
      v25[2] = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v24);
      }
    }

    v31 = *(a1 + 120);
    v32 = vadd_s32(*(v31 - 16), 0xFFFFFFFF00000001);
    *(v31 - 16) = v32;
    v33 = *(v31 - 4);
    if (6 * v32.i32[1] < v33 && v33 >= 9)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash((a1 + 120), v33 >> 1);
    }
  }

LABEL_77:
  v45 = *a5;
  *a5 = 0;
  (*(*v45 + 16))(v45);
  return (*(*v45 + 8))(v45);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isLoggedIn(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  v5 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 120), a2, a3);
  v6 = *(a1 + 120);
  if (v6)
  {
    v6 += *(v6 - 4) << 6;
  }

  v7 = v6 != v5 && *(v5 + 8) == 1;
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8, v7);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1104FB8;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_12;
  }

  v7 = v6;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 555;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v18 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *(a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *(a2 + 24));
  v11 = *(a2 + 32);
  if ((*(v11 + 32) & 1) == 0)
  {
    v19 = 0;
    IPC::Encoder::operator<<<BOOL>(v10, &v19);
    goto LABEL_6;
  }

  v19 = 1;
  IPC::Encoder::operator<<<BOOL>(v10, &v19);
  if ((*(v11 + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_12:
    result = 141;
    __break(0xC471u);
    return result;
  }

  IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::encode(v10, v11);
LABEL_6:
  v17[0] = v7;
  v17[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(a1, &v18, v17, 0, 0);
  v13 = v17[0];
  v17[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(result + 16);
  if (*(result + 88) == 1)
  {
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        ++*(v8 + 16);
        v9 = *(v8 + 32);
        v29 = *(v8 + 24);
        result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 248), &v29);
        if (result)
        {
          v10 = result;
          ++*(result + 8);
          result = WebCore::NetworkStorageSession::grantStorageAccess();
          v11 = *(v10 + 8);
          if (!v11)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD01CFCLL);
          }

          *(v10 + 8) = v11 - 1;
        }

        v12 = *(v8 + 16);
        if (!v12)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD01CBCLL);
        }

        *(v8 + 16) = v12 - 1;
      }
    }

    return result;
  }

  v13 = result;
  if (v7 && (v14 = *(v7 + 8)) != 0)
  {
    ++*(v14 + 16);
    v15 = *(v14 + 32);
    v29 = *(v14 + 24);
    v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 248), &v29);
    if (v16)
    {
      v17 = v16;
      ++*(v16 + 8);
      canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
      v19 = *(v17 + 8);
      if (!v19)
      {
LABEL_30:
        __break(0xC471u);
        JUMPOUT(0x19DD01C9CLL);
      }

      v20 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
      *(v17 + 8) = v19 - 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v14 + 16);
    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01CDCLL);
    }

    *(v14 + 16) = v21 - 1;
  }

  else
  {
    v20 = 0;
  }

  v22 = *a2;
  *a2 = 0;
  v23 = *a4;
  *a4 = 0;
  v24 = WTF::fastMalloc(0x28);
  *v24 = &unk_1F11050D0;
  *(v24 + 8) = v22;
  *(v24 + 16) = a3;
  *(v24 + 24) = v23;
  *(v24 + 32) = v20;
  if (*(v13 + 88) == 1)
  {
    goto LABEL_30;
  }

  v25 = v24;
  while (1)
  {
    v26 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v27 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_20:
  v28 = WTF::fastMalloc(0x18);
  *v28 = &unk_1F11044F0;
  v28[1] = v13;
  v28[2] = v25;
  v29 = v28;
  WTF::SuspendableWorkQueue::dispatch();
  result = v29;
  v29 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(uint64_t a1, WTF::StringImpl *a2, atomic_uint *this)
{
  if (this)
  {
    atomic_fetch_add_explicit(this, 2u, memory_order_relaxed);
  }

  v6 = *(a1 + 136);
  if (!v6)
  {
LABEL_28:
    v16 = 1;
    if (!this)
    {
      return v16;
    }

    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01ED4);
    }
  }

  else
  {
    if (WTF::equal(this, 0, this))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01EB4);
    }

    v6 = *(a1 + 136);
    if (!v6)
    {
      goto LABEL_28;
    }
  }

  v7 = *(v6 - 8);
  v8 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>::hash(a2, this);
  for (i = 0; ; v8 = i + v11)
  {
    v11 = v8 & v7;
    v12 = v6 + 40 * (v8 & v7);
    v13 = *v12;
    if (!*v12)
    {
      if (WTF::equal(*(v12 + 8), 0, v9))
      {
        v15 = *(a1 + 136);
        if (!v15)
        {
          goto LABEL_28;
        }

        v12 = v15 + 40 * *(v15 - 4);
        goto LABEL_33;
      }

      v13 = *v12;
    }

    v14 = v13 != -1 && v13 == a2;
    if (v14 && (WTF::equalIgnoringASCIICase(*(v12 + 8), this, v9) & 1) != 0)
    {
      break;
    }

    ++i;
  }

  v15 = *(a1 + 136);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_33:
  v15 += 40 * *(v15 - 4);
LABEL_21:
  if (v15 == v12)
  {
    goto LABEL_28;
  }

  if (*(v12 + 24) < *(v12 + 32))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (this)
  {
LABEL_29:
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(this, a2);
    }
  }

  return v16;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 16);
      v6 = *(v5 + 32);
      v11 = *(v5 + 24);
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), &v11);
      if (result)
      {
        v7 = result;
        ++*(result + 8);
        result = WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v8 = *(v7 + 8);
        if (!v8)
        {
          goto LABEL_12;
        }

        *(v7 + 8) = v8 - 1;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        *(v5 + 16) = v9 - 1;
        goto LABEL_8;
      }

LABEL_12:
      __break(0xC471u);
      JUMPOUT(0x19DD02024);
    }
  }

LABEL_8:
  if ((*(v3 + 88) & 1) == 0)
  {
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F1105198;
    *(v10 + 8) = a2;
    v11 = v10;
    WebKit::WebResourceLoadStatisticsStore::postTask(v3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

_BYTE *WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(_BYTE *result, char a2)
{
  if ((result[88] & 1) == 0)
  {
    v7[3] = v2;
    v7[4] = v3;
    v5 = result;
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F11051C0;
    *(v6 + 8) = a2;
    v7[0] = v6;
    WebKit::WebResourceLoadStatisticsStore::postTask(v5, v7);
    result = v7[0];
    v7[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(uint64_t a1, char a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    v3 = *a3;
    *a3 = 0;
    (*(*v3 + 16))(v3);
    v4 = *(*v3 + 8);

    return v4(v3);
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F11051E8;
    *(v9 + 8) = a2;
    *(v9 + 16) = v8;
    v10 = v9;
    WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v10);
    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::StringImpl **result, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((result[11] & 1) == 0 && *a2 && *(*a2 - 12))
  {
    v11[3] = v3;
    v11[4] = v4;
    v5 = result;
    WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, a2, a3, &v10);
    v6 = WTF::fastMalloc(0x10);
    v7 = v10;
    v10 = 0;
    *v6 = &unk_1F1105238;
    v6[1] = v7;
    v11[0] = v6;
    WebKit::WebResourceLoadStatisticsStore::postTask(v5, v11);
    v9 = v11[0];
    v11[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v10;
    if (v10)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v8);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 + 4) || MEMORY[0x19EB01EF0]())
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    v8 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::setStandaloneApplicationDomain() called with non-empty domain.", &v13, 2u);
    }

    WebCore::RegistrableDomain::isolatedCopy(&v13);
    v9 = *a3;
    *a3 = 0;
    *(&v13 + 1) = v9;
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F1105260;
    *(v10 + 8) = v13;
    v13 = 0uLL;
    v14 = v10;
    WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v14);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    return WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(&v13, v11);
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 - 12))
  {
    v22 = *a3;
    *a3 = 0;
    (*(*v22 + 16))(v22);
    v23 = *(*v22 + 8);

    return v23(v22);
  }

  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, a2, a3, &v24);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(v6 + 32);
      v25 = *(v6 + 24);
      v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v25);
      if (v8)
      {
        v9 = v8;
        ++*(v8 + 8);
        WebCore::NetworkStorageSession::setAppBoundDomains();
        WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_26:
          __break(0xC471u);
          JUMPOUT(0x19DD02770);
        }

        *(v9 + 8) = v10 - 1;
      }

      v11 = *(v6 + 16);
      if (!v11)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD02790);
      }

      *(v6 + 16) = v11 - 1;
    }
  }

  v12 = v24;
  v24 = 0;
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F11052B0;
  v14[1] = v12;
  v14[2] = v13;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_26;
  }

  v15 = v14;
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
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
  v18 = WTF::fastMalloc(0x18);
  *v18 = &unk_1F11044F0;
  v18[1] = a1;
  v18[2] = v15;
  v25 = v18;
  WTF::SuspendableWorkQueue::dispatch();
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  return result;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setManagedDomains(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 - 12))
  {
    v22 = *a3;
    *a3 = 0;
    (*(*v22 + 16))(v22);
    v23 = *(*v22 + 8);

    return v23(v22);
  }

  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, a2, a3, &v24);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(v6 + 32);
      v25 = *(v6 + 24);
      v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v25);
      if (v8)
      {
        v9 = v8;
        ++*(v8 + 8);
        WebCore::NetworkStorageSession::setManagedDomains();
        WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_26:
          __break(0xC471u);
          JUMPOUT(0x19DD02A18);
        }

        *(v9 + 8) = v10 - 1;
      }

      v11 = *(v6 + 16);
      if (!v11)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD02A38);
      }

      *(v6 + 16) = v11 - 1;
    }
  }

  v12 = v24;
  v24 = 0;
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F11052D8;
  v14[1] = v12;
  v14[2] = v13;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_26;
  }

  v15 = v14;
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
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
  v18 = WTF::fastMalloc(0x18);
  *v18 = &unk_1F11044F0;
  v18[1] = a1;
  v18[2] = v15;
  v25 = v18;
  WTF::SuspendableWorkQueue::dispatch();
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  WebCore::RegistrableDomain::isolatedCopy(&v27);
  WebCore::RegistrableDomain::isolatedCopy(&v28);
  WebCore::RegistrableDomain::isolatedCopy(&v29);
  LOBYTE(v30) = a6;
  BYTE1(v30) = a7;
  *(&v30 + 1) = a2;
  v31 = a8;
  v13 = WTF::fastMalloc(0x38);
  v14 = v27;
  *v13 = &unk_1F1105328;
  *(v13 + 8) = v14;
  v15 = v28;
  v27 = 0;
  v28 = 0;
  *(v13 + 16) = v15;
  v16 = v29;
  v29 = 0;
  *(v13 + 24) = v16;
  v17 = v30;
  *(v13 + 48) = v31;
  *(v13 + 32) = v17;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v18 = v13;
    while (1)
    {
      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v20 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F11044F0;
    v21[1] = a1;
    v21[2] = v18;
    v32 = v21;
    WTF::SuspendableWorkQueue::dispatch();
    v23 = v32;
    v32 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v29;
    v29 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    v25 = v28;
    v28 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v22);
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::logUserInteraction(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 96), a2, a3, v16);
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5);
    return (*(*v5 + 8))(v5);
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v16);
    v7 = *a3;
    *a3 = 0;
    v16[1] = v7;
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F1105350;
    *(v8 + 8) = *v16;
    v16[0] = 0;
    v16[1] = 0;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v9 = v8;
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
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F11044F0;
      v12[1] = a1;
      v12[2] = v9;
      v15 = v12;
      WTF::SuspendableWorkQueue::dispatch();
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v14 = v16[1];
      v16[1] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      result = v16[0];
      v16[0] = 0;
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

uint64_t WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  WebCore::RegistrableDomain::isolatedCopy(&v22);
  WebCore::RegistrableDomain::isolatedCopy(&v23);
  v24 = a4;
  v8 = *a5;
  *a5 = 0;
  v25 = v8;
  v9 = WTF::fastMalloc(0x28);
  v10 = v22;
  *v9 = &unk_1F11053A0;
  *(v9 + 8) = v10;
  v11 = v23;
  v22 = 0;
  v23 = 0;
  *(v9 + 16) = v11;
  *(v9 + 24) = v24;
  v12 = v25;
  v25 = 0;
  *(v9 + 32) = v12;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v13 = v9;
    while (1)
    {
      v14 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v15 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F11044F0;
    v16[1] = a1;
    v16[2] = v13;
    v26 = v16;
    WTF::SuspendableWorkQueue::dispatch();
    v18 = v26;
    v26 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v23;
    v23 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    result = v22;
    v22 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {
    v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 96), a2, a3);
    v6 = v5;
    v7 = *(a1 + 96);
    if (v7)
    {
      v8 = (v7 + 8 * *(v7 - 4));
      if (v8 == v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v5)
      {
LABEL_21:
        v19 = *a3;
        *a3 = 0;
        (*(*v19 + 16))(v19, v6);
        v20 = *(*v19 + 8);

        return v20(v19);
      }

      v8 = 0;
    }

    if (v8 != v5)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::remove((a1 + 96), v5);
    }

    goto LABEL_21;
  }

  WebCore::RegistrableDomain::isolatedCopy(v21);
  v9 = *a3;
  *a3 = 0;
  v21[1] = v9;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F11053C8;
  *(v10 + 8) = *v21;
  v21[0] = 0;
  v21[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
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

    v17 = v21[1];
    v21[1] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    result = v21[0];
    v21[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1105418;
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

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_29;
    }

    if (WTF::equal(*a2, 0, a3))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD036F8);
    }

    if (*a2 != -1)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        v8 = *(v7 - 8);
        v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v6) & v8;
        v10 = (v7 + 8 * v9);
        if ((WTF::equal(*v10, 0, v11) & 1) == 0)
        {
          v13 = 1;
          while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, v12) & 1) == 0)
          {
            v9 = (v9 + v13) & v8;
            v10 = (v7 + 8 * v9);
            v14 = WTF::equal(*v10, 0, v12);
            v15 = 0;
            ++v13;
            if (v14)
            {
              goto LABEL_25;
            }
          }

          v15 = 1;
          goto LABEL_25;
        }
      }

LABEL_29:
      v15 = 0;
LABEL_25:
      v26 = *a3;
      *a3 = 0;
      (*(*v26 + 16))(v26, v15);
      v27 = *(*v26 + 8);

      return v27(v26);
    }

    __break(0xC471u);
LABEL_33:
    JUMPOUT(0x19DD036D8);
  }

  WebCore::RegistrableDomain::isolatedCopy(v28);
  v16 = *a3;
  *a3 = 0;
  v28[1] = v16;
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F1105440;
  *(v17 + 8) = *v28;
  v28[0] = 0;
  v28[1] = 0;
  if (*(a1 + 88) == 1)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

  v18 = v17;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F11044F0;
  v21[1] = a1;
  v21[2] = v18;
  v29 = v21;
  WTF::SuspendableWorkQueue::dispatch();
  v23 = v29;
  v29 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = v28[1];
  v28[1] = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  result = v28[0];
  v28[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v22);
  }

  return result;
}