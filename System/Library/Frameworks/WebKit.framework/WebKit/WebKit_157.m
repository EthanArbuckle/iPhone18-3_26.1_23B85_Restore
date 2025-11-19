uint64_t *WebKit::Daemon::Decoder::operator>><std::optional<WebCore::PCM::EphemeralNonce>>(uint64_t *result, WTF::StringImpl *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 == v4)
  {
    goto LABEL_2;
  }

  if (v5 < v4)
  {
    __break(1u);
    return result;
  }

  v7 = *(*result + v4);
  result[2] = v4 + 1;
  if (v7)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    WebKit::Daemon::Decoder::operator>><WTF::String>(result, &v11);
    LOBYTE(v4) = v12;
    if ((v12 & 1) == 0)
    {
LABEL_2:
      v6 = 0;
      LOBYTE(v11) = 0;
      goto LABEL_10;
    }

    LOBYTE(v4) = 1;
    v12 = 1;
  }

  else
  {
    LOBYTE(v4) = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
  }

  v6 = 1;
LABEL_10:
  v13 = v6;
  if (*(a2 + 16) != v6)
  {
    if (*(a2 + 16))
    {
      if (*(a2 + 8) == 1)
      {
        v8 = *a2;
        *a2 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, a2);
          }
        }
      }

      *(a2 + 16) = 0;
      if ((v6 & 1) == 0)
      {
        return v3;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      if (v4)
      {
        v9 = v11;
        v11 = 0;
        *a2 = v9;
        *(a2 + 8) = 1;
      }

      *(a2 + 16) = 1;
      if ((v6 & 1) == 0)
      {
        return v3;
      }
    }

    goto LABEL_26;
  }

  if (!*(a2 + 16))
  {
    if (!v6)
    {
      return v3;
    }

LABEL_26:
    if (v12 == 1)
    {
      v10 = v11;
      v11 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, a2);
        }
      }
    }

    return v3;
  }

  std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(a2, &v11);
  if (v13)
  {
    goto LABEL_26;
  }

  return v3;
}

uint64_t *WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::encode(uint64_t a1, char *a2)
{
  __src = *a2;
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
  v6 = a2[1];
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &v6, 1uLL);
  v7 = a2[2];
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &v7, 1uLL);
  IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(a1, (a2 + 24));
  return IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(a1, (a2 + 40));
}

void WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 == v3)
  {
    goto LABEL_22;
  }

  if (v4 < v3)
  {
    goto LABEL_36;
  }

  v5 = *(*a1 + v3);
  a1[2] = v3 + 1;
  if (v4 == v3 + 1)
  {
    goto LABEL_22;
  }

  if (v4 < v3 + 1)
  {
    goto LABEL_36;
  }

  v6 = *(*a1 + v3 + 1);
  a1[2] = v3 + 2;
  if (v4 == v3 + 2)
  {
    goto LABEL_22;
  }

  if (v4 < v3 + 2)
  {
    goto LABEL_36;
  }

  v7 = *(*a1 + v3 + 2);
  a1[2] = v3 + 3;
  LOBYTE(v35) = 0;
  v37 = 0;
  v8 = WebKit::Daemon::Decoder::operator>><std::optional<WebCore::RegistrableDomain>>(a1, &v35);
  if (v37 != 1)
  {
LABEL_22:
    *a2 = 0;
    a2[128] = 0;
  }

  else
  {
    LOBYTE(v32) = 0;
    v34 = 0;
    v9 = WebKit::Daemon::Decoder::operator>><std::optional<WebCore::PCM::EphemeralNonce>>(v8, &v32);
    if (v34 == 1)
    {
      LOBYTE(v29) = 0;
      v31 = 0;
      WebKit::Daemon::Decoder::operator>><std::optional<WebCore::RegistrableDomain>>(v9, &v29);
      if (v31 == 1)
      {
        v18[0] = v5;
        v18[1] = v6;
        v18[2] = v7;
        if ((v37 & 1) == 0)
        {
          goto LABEL_36;
        }

        LOBYTE(v19) = 0;
        v20 = 0;
        if (v36 == 1)
        {
          goto LABEL_37;
        }

        while ((v34 & 1) == 0)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          v16 = v35;
          v35 = 0;
          v19 = v16;
          v20 = 1;
        }

        LOBYTE(v21) = 0;
        v22 = 0;
        if (v33 == 1)
        {
          v11 = v32;
          v32 = 0;
          v21 = v11;
          v22 = 1;
        }

        LOBYTE(v23) = 0;
        v24 = 0;
        if (v30 == 1)
        {
          v17 = v29;
          v29 = 0;
          v23 = v17;
          v24 = 1;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        std::optional<WebCore::PCM::AttributionTriggerData>::optional[abi:sn200100]<WebCore::PCM::AttributionTriggerData,0>(a2, v18);
        WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(v18, v12);
        if ((v31 & 1) != 0 && v30 == 1)
        {
          v13 = v29;
          v29 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v10);
            }
          }
        }
      }

      else
      {
        *a2 = 0;
        a2[128] = 0;
      }

      if ((v34 & 1) != 0 && v33 == 1)
      {
        v14 = v32;
        v32 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v10);
          }
        }
      }
    }

    else
    {
      *a2 = 0;
      a2[128] = 0;
    }

    if ((v37 & 1) != 0 && v36 == 1)
    {
      v15 = v35;
      v35 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v10);
        }
      }
    }
  }
}

uint64_t *WebKit::Daemon::Decoder::operator>><std::optional<WebCore::RegistrableDomain>>(uint64_t *a1, WTF::StringImpl *a2)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 == v5)
  {
    v2 = 0;
    LOBYTE(v12) = 0;
    v14 = 0;
  }

  else
  {
    if (v6 < v5)
    {
      __break(1u);
LABEL_31:
      v11 = v12;
      v12 = 0;
      *a2 = v11;
      *(a2 + 8) = 1;
LABEL_22:
      *(a2 + 16) = 1;
      if ((v2 & 1) == 0)
      {
        return a1;
      }

      goto LABEL_23;
    }

    v7 = *(*a1 + v5);
    a1[2] = v5 + 1;
    if (v7)
    {
      WebKit::Daemon::Coder<WebCore::RegistrableDomain,void>::decode(a1, &v15);
      if (v16)
      {
        v12 = v15;
        v2 = 1;
        v13 = 1;
      }

      else
      {
        v2 = 0;
        LOBYTE(v12) = 0;
      }

      v14 = v2;
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
      LOBYTE(v12) = 0;
      v13 = 0;
      v2 = 1;
      v14 = 1;
    }
  }

  if (*(a2 + 16) == v2)
  {
    if (*(a2 + 16))
    {
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(a2, &v12);
      if ((v14 & 1) == 0)
      {
        return a1;
      }
    }

    else if (!v2)
    {
      return a1;
    }

    goto LABEL_23;
  }

  if (!*(a2 + 16))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (*(a2 + 8) == 1)
  {
    v10 = *a2;
    *a2 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }

  *(a2 + 16) = 0;
  if (v2)
  {
LABEL_23:
    if (v13 == 1)
    {
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }
    }
  }

  return a1;
}

uint64_t std::optional<WebCore::PCM::AttributionTriggerData>::optional[abi:sn200100]<WebCore::PCM::AttributionTriggerData,0>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 2);
  *result = *a2;
  *(result + 2) = v2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v11 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v11;
    *(result + 16) = 1;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 24) = v3;
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v12 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(result + 40) = v12;
    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *(a2 + 56);
    *(a2 + 56) = 0;
    *(result + 56) = v4;
    v5 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(result + 64) = v5;
    v6 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(result + 72) = v6;
    v7 = *(a2 + 80);
    *(a2 + 80) = 0;
    *(result + 80) = v7;
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(result + 96) = v8;
    v9 = *(a2 + 104);
    *(a2 + 104) = 0;
    *(result + 104) = v9;
    v10 = *(a2 + 112);
    *(a2 + 112) = 0;
    *(result + 112) = v10;
    *(result + 120) = 1;
  }

  *(result + 128) = 1;
  return result;
}

WTF::StringImpl *WebKit::Daemon::Coder<WebCore::RegistrableDomain,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  result = WebKit::Daemon::Decoder::operator>><WTF::String>(a1, &v6);
  if (v7 == 1)
  {
    if (v6 && *(v6 + 1))
    {
      *a2 = v6;
      *(a2 + 8) = 1;
    }

    else
    {
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v5 = v7;
      *(a2 + 8) = 1;
      if (v5)
      {
        result = v6;
        v6 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v4);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsClassifier::calculateResourcePrevalence(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = a2 | a5 | a3 | a4;
  if (!v6)
  {
    return 1;
  }

  v7 = fmax(a2, fmax(a3, a4));
  if (v7 <= 1.34078079e154)
  {
    v10 = 1.0;
    if (v7 >= 7.45834073e-155)
    {
      goto LABEL_8;
    }

    v8 = 0x6130000000000000;
  }

  else
  {
    v8 = 0x1EB0000000000000;
  }

  v10 = *&v8;
LABEL_8:
  if (sqrt(v10 * a3 * (v10 * a3) + v10 * a2 * (v10 * a2) + v10 * a4 * (v10 * a4)) / v10 > 30.0)
  {
    return 4;
  }

  v9 = 2;
  if (a6 != 2 && v6 <= 3)
  {
    if ((*(*a1 + 16))(a1))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

BOOL WebKit::ResourceLoadStatisticsClassifierCocoa::classify(WebKit::ResourceLoadStatisticsClassifierCocoa *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (*(this + 9))
  {
    goto LABEL_2;
  }

  if (*(this + 8) != 1)
  {
    goto LABEL_31;
  }

  if (MEMORY[0x1EEE86618])
  {
    *(this + 8) = 0;
    goto LABEL_31;
  }

  WebKit::ResourceLoadStatisticsClassifierCocoa::storagePath(&v28);
  if (v28 && *(v28 + 1) && WebKit::ResourceLoadStatisticsClassifierCocoa::singletonPredictionModel(this))
  {
    v21 = 1;
    *(this + 9) = 1;
  }

  else
  {
    v21 = 0;
    *(this + 8) = 0;
  }

  v22 = v28;
  v28 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  if ((v21 & 1) == 0)
  {
LABEL_31:
    v23 = fmax(a2, fmax(a3, a4));
    if (v23 <= 1.34078079e154)
    {
      v25 = 1.0;
      if (v23 >= 7.45834073e-155)
      {
        return sqrt(v25 * a3 * (v25 * a3) + v25 * a2 * (v25 * a2) + v25 * a4 * (v25 * a4)) / v25 > 3.0;
      }

      v24 = 0x6130000000000000;
    }

    else
    {
      v24 = 0x1EB0000000000000;
    }

    v25 = *&v24;
    return sqrt(v25 * a3 * (v25 * a3) + v25 * a2 * (v25 * a2) + v25 * a4 * (v25 * a4)) / v25 > 3.0;
  }

LABEL_2:
  v28 = 0;
  v29 = 0;
  if (a2)
  {
    LODWORD(v27) = 1;
    *(&v27 + 1) = a2;
    v8 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v28, 1uLL, &v27);
    v9 = HIDWORD(v29);
    v10 = v28;
    *(v28 + HIDWORD(v29)) = *v8;
    v11 = v9 + 1;
    HIDWORD(v29) = v11;
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_9:
    LODWORD(v27) = 2;
    *(&v27 + 1) = a3;
    if (v11 == v29)
    {
      v12 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v28, v11 + 1, &v27);
      v11 = HIDWORD(v29);
      v10 = v28;
      *(v28 + HIDWORD(v29)) = *v12;
    }

    else
    {
      *(v10 + v11) = v27;
    }

    HIDWORD(v29) = ++v11;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = 0;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (a4)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = a4;
    if (v11 == v29)
    {
      v13 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v28, v11 + 1, &v27);
      v14 = HIDWORD(v29);
      *(v28 + HIDWORD(v29)) = *v13;
    }

    else
    {
      *(v10 + v11) = v27;
      v14 = HIDWORD(v29);
    }

    v11 = v14 + 1;
    HIDWORD(v29) = v11;
  }

  LODWORD(v27) = -1;
  *(&v27 + 1) = 0xBFF0000000000000;
  if (v11 == v29)
  {
    v15 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v28, v11 + 1, &v27);
    v16 = v28;
    *(v28 + HIDWORD(v29)) = *v15;
  }

  else
  {
    v16 = v28;
    *(v28 + v11) = v27;
  }

  *&v27 = 0;
  WebKit::ResourceLoadStatisticsClassifierCocoa::singletonPredictionModel(this);
  svm_predict_values();
  v18 = v17 >> 31;
  WTF::fastFree(v16, v19);
  return v18;
}

uint64_t WebKit::ResourceLoadStatisticsClassifierCocoa::singletonPredictionModel(WebKit::ResourceLoadStatisticsClassifierCocoa *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN6WebKit37ResourceLoadStatisticsClassifierCocoa24singletonPredictionModelEv_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = this;
  if (qword_1ED642808 != -1)
  {
    dispatch_once(&qword_1ED642808, block);
  }

  result = qword_1ED642800;
  if (_MergedGlobals_87 != 1 || qword_1ED642800 == 0)
  {
    WebKit::ResourceLoadStatisticsClassifierCocoa::storagePath(&v7);
    WTF::String::utf8();
    WTFLogAlways();
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (*v5 == 1)
      {
        WTF::fastFree(v5, v4);
      }

      else
      {
        --*v5;
      }
    }

    v6 = v7;
    v7 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }

    result = 0;
    *(this + 8) = 0;
  }

  return result;
}

void WebKit::ResourceLoadStatisticsClassifierCocoa::storagePath(WebKit::ResourceLoadStatisticsClassifierCocoa *this)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.WebKit");
  v3 = BundleWithIdentifier;
  if (BundleWithIdentifier)
  {
    CFRetain(BundleWithIdentifier);
  }

  v4 = CFBundleCopyResourcesDirectoryURL(v3);
  v5 = CFURLCreateCopyAppendingPathComponent(0, v4, @"corePrediction_model", 0);
  if (v4)
  {
    CFRelease(v4);
  }

  error = 0;
  v6 = CFURLCreateFilePathURL(0, v5, &error);
  if (v5)
  {
    CFRelease(v5);
  }

  if (error)
  {
    *this = 0;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
    MEMORY[0x19EB02040](this, v7);
    if (v7)
    {
      CFRelease(v7);
    }

LABEL_13:
    CFRelease(v6);
LABEL_14:
    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  *this = 0;
  if (!v3)
  {
    return;
  }

LABEL_15:
  CFRelease(v3);
}

WTF::StringImpl *___ZN6WebKit37ResourceLoadStatisticsClassifierCocoa24singletonPredictionModelEv_block_invoke()
{
  WebKit::ResourceLoadStatisticsClassifierCocoa::storagePath(&v3);
  result = v3;
  if (v3)
  {
    if (!*(v3 + 1))
    {
      v3 = 0;
LABEL_9:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v0);
      }

      return result;
    }

    WTF::String::utf8();
    qword_1ED642800 = svm_load_model();
    _MergedGlobals_87 = 1;
    if (v2)
    {
      if (*v2 == 1)
      {
        WTF::fastFree(v2, v0);
      }

      else
      {
        --*v2;
      }
    }

    result = v3;
    v3 = 0;
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<WebKit::Daemon::Encoder,std::optional<unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((a2[1] & 1) == 0)
  {
    v8 = 0;
    v4 = &v8;
    v5 = 1;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v4, v5);
  }

  __src = 1;
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
  if (a2[1])
  {
    v10 = *a2;
    v4 = &v10;
    a1 = v2;
    v5 = 8;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v4, v5);
  }

  v7 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<std::optional<WebCore::PCM::AttributionTriggerData>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::AttributionTriggerData> const&>(v7);
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::PCM::AttributionTriggerData>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::AttributionTriggerData> const&>(uint64_t a1, char *a2)
{
  if (a2[128])
  {
    __src = 1;
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
    if (a2[128])
    {
      return WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::encode<WebKit::Daemon::Encoder,std::optional<WTF::WallTime> const&>(v5);
    }
  }

  else
  {
    v6 = 0;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &v6, 1uLL);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::encode<WebKit::Daemon::Encoder,std::optional<WTF::WallTime> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((a2[1] & 1) == 0)
  {
    v9 = 0;
    v4 = &v9;
    v5 = 1;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v4, v5);
  }

  __src = 1;
  WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
  if (a2[1])
  {
    v11 = *a2;
    v4 = &v11;
    a1 = v2;
    v5 = 8;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v4, v5);
  }

  v7 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(v7, v8);
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::PCM::EphemeralNonce>,void>::encode<WebKit::Daemon::Encoder,std::optional<WebCore::PCM::EphemeralNonce>>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    __src = 1;
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 1uLL);
    if (*(a2 + 8))
    {
      return WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::Daemon::Decoder::operator>><WebCore::RegistrableDomain>(v5, v6);
    }
  }

  else
  {
    v7 = 0;
    return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &v7, 1uLL);
  }
}

uint64_t *WebKit::Daemon::Decoder::operator>><WebCore::RegistrableDomain>(uint64_t *a1, WTF::StringImpl *a2)
{
  WebKit::Daemon::Coder<WebCore::RegistrableDomain,void>::decode(a1, &v7);
  std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(a2, &v7);
  if (v8 == 1)
  {
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }
  }

  return a1;
}

_BYTE *IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<WebKit::Daemon::Decoder>(_BYTE *result, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  if (v3 == v2)
  {
LABEL_2:
    v4 = 0;
    *result = 0;
LABEL_9:
    result[16] = v4;
    return result;
  }

  if (v3 >= v2)
  {
    v5 = *a2;
    v6 = *(*a2 + v2);
    v7 = v2 + 1;
    a2[2] = v2 + 1;
    if ((v6 & 1) == 0)
    {
      *result = 0;
      result[8] = 0;
      v4 = 1;
      goto LABEL_9;
    }

    if (v3 - v7 < 8)
    {
      goto LABEL_2;
    }

    if (v3 >= v7)
    {
      v8 = *(v5 + v7);
      a2[2] = v2 + 9;
      *result = v8;
      v4 = 1;
      result[8] = 1;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t WebKit::RevealFocusedElementDeferrer::RevealFocusedElementDeferrer(uint64_t a1, void *a2, char a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  objc_initWeak((a1 + 8), a2);
  *(a1 + 16) = a3;
  return a1;
}

uint64_t WebKit::RevealFocusedElementDeferrer::create@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x18);
  result = WebKit::RevealFocusedElementDeferrer::RevealFocusedElementDeferrer(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t WebKit::RevealFocusedElementDeferrer::fulfill(uint64_t result, int a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 & ~a2;
  if ((v2 & (a2 ^ 0xFF)) == 0)
  {
    v3 = result;
    ++*result;
    v4 = (result + 8);
    to = 0;
    objc_moveWeak(&to, (result + 8));
    objc_storeWeak(v4, 0);
    [objc_loadWeak(&to) _zoomToRevealFocusedElement];
    objc_destroyWeak(&to);
    return WTF::RefCounted<WebKit::RevealFocusedElementDeferrer>::deref(v3);
  }

  return result;
}

void sub_19DE49B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&location);
  WTF::RefCounted<WebKit::RevealFocusedElementDeferrer>::deref(v10);
  _Unwind_Resume(a1);
}

void WebKit::SmartMagnificationController::handleSmartMagnificationGesture(uint64_t a1, float a2, float a3)
{
  *v7 = a2;
  *&v7[1] = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v5 = *(v4 + 336);
      atomic_fetch_add((v5 + 16), 1u);
      v6 = v7;
      WebKit::AuxiliaryProcessProxy::send<Messages::ViewGestureGeometryCollector::CollectGeometryForSmartMagnificationGesture>(v5, &v6, *(v4 + 32), 0);
      if (v5)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DE49BB8(_Unwind_Exception *a1)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  CFRelease(*(v3 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::SmartMagnificationController::zoomFactorForTargetRect(uint64_t a1, uint64_t a2, float a3, float a4, float32x2_t a5, float32_t a6, double a7, double a8)
{
  a5.f32[1] = a6;
  v10 = vmul_f32(a5, vdup_n_s32(0x3D4CCCCDu));
  v11 = a3 - v10.f32[0];
  v12 = a4 - v10.f32[1];
  v13 = COERCE_DOUBLE(vadd_f32(v10, vadd_f32(a5, v10)));
  if ((a2 & 1) == 0)
  {
    a4 = v12;
    a3 = v11;
    *&a5 = v13;
  }

  if (a7 >= 0.0)
  {
    v14 = a7;
  }

  else
  {
    v14 = 0.0;
  }

  if (a8 <= 1.6)
  {
    v15 = a8;
  }

  else
  {
    v15 = 1.6;
  }

  [*(a1 + 32) _contentZoomScale];
  v17 = v16;
  result = [*(a1 + 32) _targetContentZoomScaleForRect:&v20 currentScale:a2 fitEntireRect:? minimumScale:? maximumScale:?];
  if (v19 == v17)
  {
    return [*(a1 + 32) _initialScaleFactor];
  }

  return result;
}

void WebKit::SmartMagnificationController::didCollectGeometryForSmartMagnificationGesture(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a7 <= 0.0 || a8 <= 0.0)
  {
    v29 = *(a1 + 32);
    WebCore::FloatPoint::operator CGPoint();
    [v29 _zoomToInitialScaleWithOrigin:?];
  }

  else
  {
    v19 = *(a1 + 24);
    if (v19)
    {
      v20 = *(v19 + 8);
      if (v20)
      {
        CFRetain(*(v20 - 8));
        v22 = 0.0;
        if (a13 >= 0.0)
        {
          v23 = a13;
        }

        else
        {
          v23 = 0.0;
        }

        v24 = 1.6;
        if (a14 <= 1.6)
        {
          v24 = a14;
        }

        v42 = v23;
        v43 = v24;
        v25 = [*(a1 + 32) bounds];
        v27 = *(v20 + 16);
        if (*(v27 + 2784) == 1)
        {
          v22 = *(v27 + 2624);
        }

        if (v26 <= v22)
        {
          v28 = 60.0;
        }

        else if (PAL::currentUserInterfaceIdiomIsSmallScreen(v25))
        {
          v28 = 100.0;
        }

        else
        {
          v28 = 150.0;
        }

        v30 = *(a1 + 32);
        WebCore::FloatRect::operator CGRect();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        WebCore::FloatPoint::operator CGPoint();
        if (([v30 _zoomToRect:a2 withOrigin:v32 fitEntireRect:v34 minimumScale:v36 maximumScale:v38 minimumScrollDistance:{v39, v40, v42, v43, *&v28}] & 1) == 0)
        {
          v41 = *(a1 + 32);
          WebCore::FloatPoint::operator CGPoint();
          [v41 _zoomToInitialScaleWithOrigin:?];
        }

        CFRelease(*(v20 - 8));
      }
    }
  }
}

uint64_t WebKit::SmartMagnificationController::scrollToRect(uint64_t a1)
{
  v1 = *(a1 + 32);
  WebCore::FloatRect::operator CGRect();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WebCore::FloatPoint::operator CGPoint();
  return [v1 _scrollToRect:v3 withOrigin:v5 minimumScrollDistance:{v7, v9, v10, v11, 0.0}];
}

uint64_t WebKit::TextChecker::setContinuousSpellCheckingEnabled(WebKit::TextChecker *this)
{
  v1 = this;
  WebKit::mutableState(this);
  v3 = WebKit::mutableState(void)::state ^ v1;
  if ((WebKit::mutableState(void)::state ^ v1))
  {
    WebKit::mutableState(v2);
    WebKit::mutableState(void)::state = WebKit::mutableState(void)::state & 0xFE | v1;
  }

  return v3 & 1;
}

void WebKit::TextChecker::setGrammarCheckingEnabled(WebKit::TextChecker *this)
{
  v1 = this;
  WebKit::mutableState(this);
  if (v1 != (WebKit::mutableState(void)::state & 2) >> 1)
  {
    WebKit::mutableState(v2);
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    WebKit::mutableState(void)::state = WebKit::mutableState(void)::state & 0xFD | v3;
  }
}

void WebKit::TextChecker::closeSpellDocumentWithTag(WebKit::TextChecker *this)
{
  v3 = this;
  {
    WebKit::spellDocumentTagMap(void)::tagMap = 0;
  }

  ShouldValidate = WTF::HashTable<long long,WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>>,WTF::DefaultHash<long long>,WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,(WTF::ShouldValidateKey)1,long long>(&WebKit::spellDocumentTagMap(void)::tagMap, &v3);
  if (WebKit::spellDocumentTagMap(void)::tagMap)
  {
    v2 = WebKit::spellDocumentTagMap(void)::tagMap + 16 * *(WebKit::spellDocumentTagMap(void)::tagMap - 4);
    if (v2 == ShouldValidate)
    {
      return;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      return;
    }

    v2 = 0;
  }

  if (v2 != ShouldValidate)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(&WebKit::spellDocumentTagMap(void)::tagMap, ShouldValidate);
  }
}

void WebKit::TextChecker::checkTextOfParagraph(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v145[1] = *MEMORY[0x1E69E9840];
  v138[0] = a2;
  v138[1] = a3;
  *a6 = 0;
  *(a6 + 8) = 0;
  if (a5)
  {
    {
      WebKit::spellDocumentTagMap(void)::tagMap = 0;
    }

    if (a1 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE4ABB0);
    }

    if (!a1)
    {
      __break(0xC471u);
LABEL_136:
      JUMPOUT(0x19DE4AB90);
    }

    v9 = WebKit::spellDocumentTagMap(void)::tagMap;
    if (!WebKit::spellDocumentTagMap(void)::tagMap)
    {
      WTF::HashTable<long long,WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>>,WTF::DefaultHash<long long>,WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<long long>,WTF::FastMalloc>::expand(0);
      v9 = WebKit::spellDocumentTagMap(void)::tagMap;
    }

    v10 = *(v9 - 8);
    v11 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    if (*v15)
    {
      v17 = 0;
      v18 = 1;
      while (v16 != a1)
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
            --*(v9 - 16);
            v15 = v17;
          }

          goto LABEL_16;
        }
      }

LABEL_23:
      v26 = v15[1];
      v113 = v26;
      if (v26)
      {
        v27 = v26;
        v26 = v113;
      }

      if (([v26 _doneLoading] & 1) == 0)
      {
LABEL_127:
        if (v114)
        {
        }

        return;
      }

      v28 = [objc_msgSend(MEMORY[0x1E69DCBF0] "sharedInputModeController")];
      if ([objc_msgSend(v28 "multilingualLanguages")])
      {
        v29 = [v28 multilingualLanguages];
      }

      else
      {
        if (![v28 primaryLanguage])
        {
          v30 = MEMORY[0x1E695E0F0];
          goto LABEL_31;
        }

        v145[0] = [v28 languageWithRegion];
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:1];
      }

      v30 = v29;
LABEL_31:
      WTF::StringView::createNSStringWithoutCopying(&v137, v138);
      v31 = [v137 length];
      if (objc_opt_respondsToSelector())
      {
        v32 = 6;
        if ((a5 & 2) == 0)
        {
          v32 = 2;
        }

        v116 = a5;
        if ((a5 & 0x40) != 0)
        {
          v33 = v32 | 0x200;
        }

        else
        {
          v33 = v32;
        }

        v143 = @"InsertionPoint";
        v144 = [MEMORY[0x1E696AD98] numberWithInt:a4];
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v35 = [v114 checkString:v137 range:0 types:v31 languages:v33 options:{v30, v34}];
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v133 objects:v142 count:16];
        if (v36)
        {
          v118 = *v134;
          v115 = v35;
          do
          {
            v37 = 0;
            v119 = v36;
            do
            {
              if (*v134 != v118)
              {
                objc_enumerationMutation(v35);
              }

              v120 = v37;
              v38 = *(*(&v133 + 1) + 8 * v37);
              v39 = [v38 resultType];
              v40 = [v38 range];
              v42 = v40;
              v43 = v41;
              if (v39 == 512)
              {
                if ((v116 & 0x40) == 0)
                {
                  goto LABEL_113;
                }

                v131 = 0uLL;
                v132 = 0;
                v130[0] = 64;
                *&v130[8] = v40;
                *&v130[16] = v41;
                MEMORY[0x19EB02040](v123, [v38 replacementString]);
                v71 = v123[0];
                v123[0] = 0;
                v72 = v132;
                v132 = v71;
                if (v72)
                {
                  if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v72, v70);
                  }

                  v73 = v123[0];
                  v123[0] = 0;
                  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v73, v70);
                  }
                }

                if (objc_opt_respondsToSelector())
                {
                  v74 = [v38 detail];
                  if (v74)
                  {
                    v75 = WTF::fastMalloc(0x28);
                    DWORD2(v131) = 1;
                    *&v131 = v75;
                    v125 = 0;
                    *v123 = 0u;
                    *v124 = 0u;
                    v123[0] = [objc_msgSend(v74 objectForKey:{@"NSGrammarRange", "rangeValue"}];
                    v123[1] = v76;
                    MEMORY[0x19EB02040](&v121, [v74 objectForKey:@"NSGrammarUserDescription"]);
                    v78 = v121;
                    v121 = 0;
                    v79 = v125;
                    v125 = v78;
                    if (v79)
                    {
                      if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v79, v77);
                      }

                      v80 = v121;
                      v121 = 0;
                      if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v80, v77);
                      }
                    }

                    v140 = [v74 objectForKey:@"NSGrammarCorrections"];
                    v81 = [v140 count];
                    v139 = &v140;
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v121, v81, &v139, 0);
                    if (HIDWORD(v124[1]))
                    {
                      WTF::VectorDestructor<true,WTF::String>::destruct(v124[0], (v124[0] + 8 * HIDWORD(v124[1])));
                    }

                    v83 = v124[0];
                    if (v124[0])
                    {
                      v124[0] = 0;
                      LODWORD(v124[1]) = 0;
                      WTF::fastFree(v83, v82);
                    }

                    v124[0] = v121;
                    v84 = v122;
                    v121 = 0;
                    v122 = 0;
                    v124[1] = v84;
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, v82);
                    if (HIDWORD(v131) == DWORD2(v131))
                    {
                      WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GrammarDetail>(&v131, v123);
                    }

                    else
                    {
                      v91 = v131 + 40 * HIDWORD(v131);
                      *v91 = *v123;
                      *(v91 + 16) = 0;
                      *(v91 + 24) = 0;
                      v92 = v124[0];
                      v124[0] = 0;
                      *(v91 + 16) = v92;
                      LODWORD(v92) = v124[1];
                      LODWORD(v124[1]) = 0;
                      *(v91 + 24) = v92;
                      LODWORD(v92) = HIDWORD(v124[1]);
                      HIDWORD(v124[1]) = 0;
                      *(v91 + 28) = v92;
                      v93 = v125;
                      v125 = 0;
                      *(v91 + 32) = v93;
                      ++HIDWORD(v131);
                    }

                    v94 = v125;
                    v125 = 0;
                    if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v94, v85);
                    }

                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v124, v85);
                  }
                }

                v44 = a6;
                v45 = *(a6 + 12);
                if (v45 != *(a6 + 8))
                {
LABEL_108:
                  v95 = *v44 + 48 * v45;
                  v96 = *&v130[16];
                  *v95 = *v130;
                  *(v95 + 24) = 0;
                  *(v95 + 32) = 0;
                  *(v95 + 16) = v96;
                  v97 = v131;
                  *&v131 = 0;
                  *(v95 + 24) = v97;
                  LODWORD(v97) = DWORD2(v131);
                  DWORD2(v131) = 0;
                  *(v95 + 32) = v97;
                  LODWORD(v97) = HIDWORD(v131);
                  HIDWORD(v131) = 0;
                  *(v95 + 36) = v97;
                  v98 = v132;
                  v132 = 0;
                  *(v95 + 40) = v98;
                  ++*(v44 + 12);
LABEL_109:
                  v99 = v132;
                  v132 = 0;
                  if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v99, v41);
                  }

                  WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v131, v41);
                  v35 = v115;
                  goto LABEL_113;
                }

LABEL_46:
                WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(v44, v130);
                goto LABEL_109;
              }

              if (v39 != 4)
              {
                if (v39 != 2)
                {
                  goto LABEL_113;
                }

                v131 = 0uLL;
                v132 = 0;
                v130[0] = 1;
                *&v130[8] = v40;
                *&v130[16] = v41;
                v44 = a6;
                v45 = *(a6 + 12);
                if (v45 != *(a6 + 8))
                {
                  goto LABEL_108;
                }

                goto LABEL_46;
              }

              if ((v116 & 2) != 0)
              {
                v130[0] = 0;
                *&v130[8] = 0u;
                v131 = 0u;
                v132 = 0;
                v46 = [v38 grammarDetails];
                v130[0] = 2;
                *&v130[8] = v42;
                *&v130[16] = v43;
                v47 = [v46 count];
                if (v47)
                {
                  if (v47 >= 0x6666667)
                  {
                    __break(0xC471u);
                    goto LABEL_136;
                  }

                  v48 = 40 * v47;
                  v49 = WTF::fastMalloc((40 * v47));
                  DWORD2(v131) = v48 / 0x28;
                  *&v131 = v49;
                }

                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v51 = [v46 countByEnumeratingWithState:&v126 objects:v141 count:16];
                if (v51)
                {
                  v52 = *v127;
                  do
                  {
                    for (i = 0; i != v51; ++i)
                    {
                      if (*v127 != v52)
                      {
                        objc_enumerationMutation(v46);
                      }

                      v54 = *(*(&v126 + 1) + 8 * i);
                      v125 = 0;
                      *v123 = 0u;
                      *v124 = 0u;
                      v123[0] = [objc_msgSend(v54 objectForKey:{@"NSGrammarRange", "rangeValue"}];
                      v123[1] = v55;
                      MEMORY[0x19EB02040](&v121, [v54 objectForKey:@"NSGrammarUserDescription"]);
                      v57 = v121;
                      v121 = 0;
                      v58 = v125;
                      v125 = v57;
                      if (v58)
                      {
                        if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v58, v56);
                        }

                        v59 = v121;
                        v121 = 0;
                        if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v59, v56);
                        }
                      }

                      v140 = [v54 objectForKey:@"NSGrammarCorrections"];
                      v60 = [v140 count];
                      v139 = &v140;
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v121, v60, &v139, 0);
                      if (HIDWORD(v124[1]))
                      {
                        WTF::VectorDestructor<true,WTF::String>::destruct(v124[0], (v124[0] + 8 * HIDWORD(v124[1])));
                      }

                      v62 = v124[0];
                      if (v124[0])
                      {
                        v124[0] = 0;
                        LODWORD(v124[1]) = 0;
                        WTF::fastFree(v62, v61);
                      }

                      v124[0] = v121;
                      v63 = v122;
                      v121 = 0;
                      v122 = 0;
                      v124[1] = v63;
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, v61);
                      if (HIDWORD(v131) == DWORD2(v131))
                      {
                        WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::GrammarDetail>(&v131, v123);
                      }

                      else
                      {
                        v65 = v131 + 40 * HIDWORD(v131);
                        *v65 = *v123;
                        *(v65 + 16) = 0;
                        *(v65 + 24) = 0;
                        v66 = v124[0];
                        v124[0] = 0;
                        *(v65 + 16) = v66;
                        LODWORD(v66) = v124[1];
                        LODWORD(v124[1]) = 0;
                        *(v65 + 24) = v66;
                        LODWORD(v66) = HIDWORD(v124[1]);
                        HIDWORD(v124[1]) = 0;
                        *(v65 + 28) = v66;
                        v67 = v125;
                        v125 = 0;
                        *(v65 + 32) = v67;
                        ++HIDWORD(v131);
                      }

                      v68 = v125;
                      v125 = 0;
                      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v68, v64);
                      }

                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v124, v64);
                    }

                    v51 = [v46 countByEnumeratingWithState:&v126 objects:v141 count:16];
                  }

                  while (v51);
                }

                v69 = *(a6 + 12);
                if (v69 == *(a6 + 8))
                {
                  WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(a6, v130);
                }

                else
                {
                  v86 = *a6 + 48 * v69;
                  v87 = *&v130[16];
                  *v86 = *v130;
                  *(v86 + 24) = 0;
                  *(v86 + 32) = 0;
                  *(v86 + 16) = v87;
                  v88 = v131;
                  *&v131 = 0;
                  *(v86 + 24) = v88;
                  LODWORD(v88) = DWORD2(v131);
                  DWORD2(v131) = 0;
                  *(v86 + 32) = v88;
                  LODWORD(v88) = HIDWORD(v131);
                  HIDWORD(v131) = 0;
                  *(v86 + 36) = v88;
                  v89 = v132;
                  v132 = 0;
                  *(v86 + 40) = v89;
                  ++*(a6 + 12);
                }

                v35 = v115;
                v90 = v132;
                v132 = 0;
                if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v90, v50);
                }

                WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v131, v50);
              }

LABEL_113:
              v37 = v120 + 1;
            }

            while (v120 + 1 != v119);
            v36 = [v35 countByEnumeratingWithState:&v133 objects:v142 count:16];
          }

          while (v36);
        }
      }

      else
      {
        v100 = 0;
        do
        {
          v101 = [v114 rangeOfMisspelledWordInString:v137 range:0 startingAt:v31 wrap:v100 languages:{0, v30}];
          v103 = v101;
          if (v101 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v104 = v102;
          v131 = 0uLL;
          v132 = 0;
          v130[0] = 1;
          *&v130[8] = v101;
          *&v130[16] = v102;
          v105 = *(a6 + 12);
          if (v105 == *(a6 + 8))
          {
            WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(a6, v130);
          }

          else
          {
            v106 = *a6 + 48 * v105;
            v107 = *&v130[16];
            *v106 = *v130;
            *(v106 + 24) = 0;
            *(v106 + 32) = 0;
            *(v106 + 16) = v107;
            v108 = v131;
            *&v131 = 0;
            *(v106 + 24) = v108;
            LODWORD(v108) = DWORD2(v131);
            DWORD2(v131) = 0;
            *(v106 + 32) = v108;
            LODWORD(v108) = HIDWORD(v131);
            HIDWORD(v131) = 0;
            *(v106 + 36) = v108;
            v109 = v132;
            v132 = 0;
            *(v106 + 40) = v109;
            ++*(a6 + 12);
          }

          v110 = v132;
          v132 = 0;
          if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v110, v102);
          }

          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v131, v102);
          v111 = [v137 length];
          v100 = v104 + v103;
        }

        while (v104 + v103 < v111);
      }

      v112 = v137;
      v137 = 0;
      if (v112)
      {
      }

      goto LABEL_127;
    }

LABEL_16:
    v19 = v15[1];
    *v15 = a1;
    v15[1] = 0;
    if (v19)
    {

      v9 = WebKit::spellDocumentTagMap(void)::tagMap;
    }

    v20 = *(v9 - 16);
    v21 = *(v9 - 12) + 1;
    *(v9 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v9 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
LABEL_21:
        v24 = [objc_alloc(MEMORY[0x1E69DD080]) _initWithAsynchronousLoading:1];
        v25 = v15[1];
        v15[1] = v24;
        if (v25)
        {
        }

        goto LABEL_23;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      goto LABEL_21;
    }

    v15 = WTF::HashTable<long long,WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>>,WTF::DefaultHash<long long>,WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<long long>,WTF::FastMalloc>::expand(v15);
    goto LABEL_21;
  }
}

void sub_19DE4ABD4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  v48 = a9;
  if (a47)
  {

    v48 = a9;
  }

  if (v48)
  {
  }

  WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a13, a2);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_e8_32c98_ZTSKZ85__UIScrollView_WebKitInternal___wk_setContentOffsetAndShowScrollIndicators_animated__E3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void WebKit::createUIAlertController(WebKit *this@<X0>, NSString *a2@<X1>, void *a3@<X8>)
{
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:this];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v8 = [(WebKit *)this length];
  [v10 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, v8}];
  v9 = objc_alloc_init(MEMORY[0x1E69DC650]);
  *a3 = v9;
  [v9 _setAttributedTitle:v10];
  [v9 setTitle:this];
  [v9 setMessage:a2];
  [v9 setPreferredStyle:1];
  if (v10)
  {
  }
}

void sub_19DE4BD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::scrollViewForTouches(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v7 != v4)
      {
        objc_enumerationMutation(a1);
      }

      result = WTF::dynamic_objc_cast<UIScrollView>([*(*(&v6 + 1) + 8 * v5) view]);
      if (result)
      {
        break;
      }

      if (v3 == ++v5)
      {
        result = [a1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v3 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void WebKit::ViewGestureController::beginSwipeGesture(uint64_t a1, void *a2, int a3)
{
  v100 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    return;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return;
  }

  v8 = v5 - 16;
  CFRetain(*(v5 - 8));
  v9 = 1;
  WebKit::ViewGestureController::willBeginGesture(a1, 1);
  WebKit::WebPageProxy::recordAutomaticNavigationSnapshot((v5 - 16));
  v10 = *(a1 + 120);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    CFRetain(*(v11 - 8));
    v9 = 0;
    v12 = v11 - 16;
    v13 = v11 - 16;
  }

  else
  {
    v12 = 0;
    v13 = v5 - 16;
  }

  CFRetain(*(v13 + 8));
  v14 = *(a1 + 128);
  *(a1 + 128) = v13;
  if (v14)
  {
    CFRelease(*(v14 + 8));
    v13 = *(a1 + 128);
  }

  v15 = *(v13 + 712);
  WebKit::ViewGestureController::itemForSwipeDirection(a1, a3, &v96);
  if (!v96)
  {
    v22 = qword_1ED641468;
    if (os_log_type_enabled(qword_1ED641468, OS_LOG_TYPE_ERROR))
    {
      v23 = "back";
      if (a3)
      {
        v23 = "forward";
      }

      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Failed to find %s item when beginning swipe.", buf, 0xCu);
    }

    WebKit::ViewGestureController::didEndGesture(a1);
    goto LABEL_87;
  }

  WebKit::WebPageProxy::navigationGestureDidBegin(*(a1 + 128));
  if (*(a1 + 128) != v8)
  {
    WebKit::WebPageProxy::navigationGestureDidBegin(v5 - 16);
    if (*(a1 + 128) != v8)
    {
      v16 = *(v5 + 696);
      v17 = *(v16 + 16);
      if (v17)
      {
        if (*(v17 + 8) && *(v16 + 48) == 1)
        {
          v18 = *(v16 + 40);
          if (v18 >= *(v16 + 36))
          {
            goto LABEL_110;
          }

          v19 = *(*(v16 + 24) + 8 * v18);
          if (v19)
          {
            v20 = *(v15 + 16);
            if (!v20)
            {
              goto LABEL_30;
            }

            v20 = *(v20 + 8);
            if (!v20)
            {
              goto LABEL_30;
            }

            if (*(v15 + 48) != 1)
            {
              v20 = 0;
              goto LABEL_30;
            }

            v21 = *(v15 + 40);
            if (v21 < *(v15 + 36))
            {
              v20 = *(*(v15 + 24) + 8 * v21);
LABEL_30:
              v24 = *(v19 + 128);
              if (v24)
              {
                ++*(v24 + 8);
              }

              v25 = *(v20 + 128);
              *(v20 + 128) = v24;
              if (v25)
              {
                WTF::RefCounted<WebKit::ViewSnapshot>::deref((v25 + 8));
              }

              goto LABEL_34;
            }

LABEL_110:
            __break(0xC471u);
            JUMPOUT(0x19DE4C87CLL);
          }
        }
      }
    }
  }

LABEL_34:
  *buf = 0u;
  v99 = 0u;
  v85 = v9;
  v86 = v12;
  [*(a1 + 152) frame];
  *buf = v26;
  *&buf[8] = v27;
  *&v99 = v28;
  *(&v99 + 1) = v29;
  v30 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v87 = v30;
  v31 = objc_alloc(MEMORY[0x1E69DD250]);
  v32 = [v31 initWithFrame:{*buf, *&buf[8], v99}];
  v33 = *(a1 + 168);
  *(a1 + 168) = v32;
  if (v33)
  {

    v32 = *(a1 + 168);
  }

  [v32 setUserInteractionEnabled:0];
  [objc_msgSend(*(a1 + 168) "layer")];
  v34 = [MEMORY[0x1E69DC888] whiteColor];
  v36 = v34;
  if (v34)
  {
    v37 = v34;
  }

  v38 = v96[16];
  if (v38)
  {
    v39 = 824;
    if (*(v5 + 816))
    {
      v39 = 828;
    }

    LODWORD(v35) = *(v8 + v39);
    v84.i64[0] = v35;
    WebCore::FloatSize::FloatSize(&v95, &v99);
    v95 = vmul_n_f32(v95, v84.f32[0]);
    WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(v96[6], &v97);
    v40 = v97.i64[0];
    v41 = *(v97.i64[0] + 104);
    v97.i64[0] = 0;
    WTF::RefCounted<WebKit::FrameState>::deref(v40);
    v43 = roundf(WebKit::WebPageProxy::viewScrollPosition((v5 - 16)));
    if (v43 >= 2147500000.0)
    {
      v45 = 0x7FFFFFFF;
    }

    else if (v43 <= -2147500000.0)
    {
      v45 = 0x80000000;
    }

    else
    {
      v45 = v43;
    }

    v46 = roundf(v44);
    if (v46 >= 2147500000.0)
    {
      v47 = 0x7FFFFFFF;
    }

    else if (v46 <= -2147500000.0)
    {
      v47 = 0x80000000;
    }

    else
    {
      v47 = v46;
    }

    v48 = *(v38 + 2);
    if (v48 && v95.f32[0] == *(v48 + 32) && v95.f32[1] == *(v48 + 36) && v84.f32[0] == *(v38 + 8) && ((v41 & 1) != 0 || v45 == *(v38 + 12) && v47 == *(v38 + 13)))
    {
      v84 = *(v38 + 56);
      v76.f32[0] = WebKit::WebPageProxy::computedObscuredInset(*(a1 + 128));
      v77 = 0;
      v76.i32[1] = v78;
      v76.i64[1] = __PAIR64__(v80, v79);
      v97 = vsubq_f32(v84, v76);
      do
      {
        v81 = fabsf(v97.f32[v77]);
      }

      while (v81 < 100.0 && v77++ != 3);
      if (v81 < 100.0)
      {
        [objc_msgSend(*(a1 + 168) "layer")];
      }
    }

    v49 = *(v38 + 5);
    v97.i64[0] = v49;
    if ((v49 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v49 & 0xFFFFFFFFFFFFLL), 1u);
      v49 = v97.i64[0];
    }

    v30 = v87;
    if ((v49 & 0x4000000000000) != 0)
    {
      WebCore::cocoaColor(&v94, &v97, v42);
      v50 = v94;
      v94 = 0;
      if (v36)
      {

        v51 = v94;
        v94 = 0;
        if (v51)
        {
        }
      }

      v49 = v97.i64[0];
      v36 = v50;
    }

    if ((v49 & 0x8000000000000) != 0)
    {
      v83 = (v49 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v49 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v83);
        WTF::fastFree(v83, v42);
      }
    }
  }

  [*(a1 + 168) setBackgroundColor:{v36, v84.i64[0]}];
  v52 = [*(a1 + 168) layer];
  [v52 setContentsGravity:*MEMORY[0x1E6979E08]];
  [objc_msgSend(objc_msgSend(*(a1 + 152) "window")];
  [objc_msgSend(*(a1 + 168) "layer")];
  [v30 setView:*(a1 + 168)];
  v54 = objc_alloc(MEMORY[0x1E69DD250]);
  v55 = [v54 initWithFrame:{*buf, *&buf[8], v99}];
  v56 = *(a1 + 176);
  *(a1 + 176) = v55;
  if (v56)
  {

    v55 = *(a1 + 176);
  }

  [objc_msgSend(v55 "layer")];
  v57 = objc_alloc(MEMORY[0x1E69DD250]);
  v58 = [v57 initWithFrame:{*buf, *&buf[8], v99}];
  v59 = *(a1 + 160);
  *(a1 + 160) = v58;
  if (v59)
  {

    v58 = *(a1 + 160);
  }

  [objc_msgSend(v58 "layer")];
  [*(a1 + 160) setClipsToBounds:1];
  [objc_msgSend(*(a1 + 152) "superview")];
  [*(a1 + 176) addSubview:*(a1 + 160)];
  [*(a1 + 160) addSubview:*(a1 + 152)];
  v60 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v60 setView:*(a1 + 160)];
  v61 = objc_alloc(MEMORY[0x1E69DD5F8]);
  if (a3)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  v63 = [v61 initWithCurrentOperation:v62];
  v64 = objc_alloc_init(MEMORY[0x1E69DD7F8]);
  v65 = *(a1 + 192);
  *(a1 + 192) = v64;
  if (v65)
  {

    v64 = *(a1 + 192);
  }

  [v64 _setFromViewController:v60];
  [*(a1 + 192) _setToViewController:v30];
  [*(a1 + 192) _setContainerView:*(a1 + 176)];
  [*(a1 + 192) _setFromStartFrame:{*buf, *&buf[8], v99}];
  [*(a1 + 192) _setToEndFrame:{*buf, *&buf[8], v99}];
  v66 = MEMORY[0x1E695F058];
  [*(a1 + 192) _setToStartFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [*(a1 + 192) _setFromEndFrame:{*v66, v66[1], v66[2], v66[3]}];
  [*(a1 + 192) _setAnimator:v63];
  [*(a1 + 192) _setInteractor:a2];
  [*(a1 + 192) _setTransitionIsInFlight:1];
  *(a1 + 208) = 0;
  *(a1 + 211) = 0;
  v67 = [*(a1 + 192) _transitionCoordinator];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3321888768;
  v92[2] = ___ZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionE_block_invoke;
  v92[3] = &__block_descriptor_48_e8_40c107_ZTSN3WTF6RefPtrIN6WebKit22WebBackForwardListItemENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8l;
  v92[4] = a1;
  v68 = v96;
  if (v96)
  {
    CFRetain(v96[1]);
  }

  v93 = v68;
  [v67 notifyWhenInteractionChangesUsingBlock:v92];
  v69 = *(v5 + 24);
  v70 = *(a1 + 144);
  v71 = *(a1 + 192);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3321888768;
  v88[2] = ___ZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionE_block_invoke_189;
  v88[3] = &__block_descriptor_56_e8_32c124_ZTSKZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionEE3__1_e47_v20__0___UIViewControllerTransitionContext_8B16l;
  v72 = v96;
  if (v96)
  {
    CFRetain(v96[1]);
    v89 = v69;
    v90 = v70;
    CFRetain(v72[1]);
  }

  else
  {
    v89 = v69;
    v90 = v70;
  }

  v91 = v72;
  [v71 _setCompletionHandler:v88];
  v12 = v86;
  if (v72)
  {
    CFRelease(v72[1]);
  }

  [a2 setAnimationController:v63];
  [a2 startInteractiveTransition:*(a1 + 192)];
  v73 = v91;
  v91 = 0;
  if (v73)
  {
    CFRelease(v73[1]);
  }

  v74 = v93;
  v93 = 0;
  if (v74)
  {
    CFRelease(v74[1]);
  }

  if (v63)
  {
  }

  if (v60)
  {
  }

  if (v36)
  {
  }

  if (v87)
  {
  }

  v9 = v85;
LABEL_87:
  v75 = v96;
  v96 = 0;
  if (v75)
  {
    CFRelease(v75[1]);
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(*(v12 + 8));
  }

  CFRelease(*(v5 - 8));
}

void sub_19DE4C888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v31)
  {
  }

  if (a15)
  {
  }

  if (a31)
  {
    CFRelease(*(a31 + 8));
  }

  if ((a13 & 1) == 0)
  {
    CFRelease(*(a14 + 8));
  }

  CFRelease(*(v32 - 8));
  _Unwind_Resume(a1);
}

void sub_19DE4CB84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionE_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (([a2 isInteractive] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [a2 isCancelled];

    WebKit::ViewGestureController::willEndSwipeGesture(v4, v5, v6);
  }
}

void WebKit::ViewGestureController::willEndSwipeGesture(WebKit::ViewGestureController *this, WebKit::WebBackForwardListItem *a2, int a3)
{
  v3 = a3;
  *(this + 208) = 1;
  WebKit::WebPageProxy::navigationGestureWillEnd(*(this + 16), a3 ^ 1u, a2);
  if ((v3 & 1) == 0)
  {
    *(this + 25) = 0;
    v6 = *(a2 + 16);
    if (v6)
    {
      *(this + 25) = vcvts_n_f32_u64(*(v6 + 24), 1uLL);
    }

    *(this + 210) = 0;
    v7 = *(this + 16);
    v8 = *(a2 + 6);
    v9 = (v8 + 8);
    ++*(v8 + 8);
    WebKit::WebPageProxy::goToBackForwardItem(v7, v8, 3u, &v25);
    WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(v9, v10);
    v11 = *(this + 17);
    *(this + 17) = v25;
    if (v11)
    {
      CFRelease(*(v11 + 8));
    }

    v12 = *(*(this + 16) + 712);
    v13 = *(v12 + 16);
    if (!v13 || !*(v13 + 8) || *(v12 + 48) != 1)
    {
      goto LABEL_15;
    }

    v14 = *(v12 + 40);
    if (v14 >= *(v12 + 36))
    {
      __break(0xC471u);
      return;
    }

    v15 = *(*(v12 + 24) + 8 * v14);
    if (v15 && WebKit::WebBackForwardListItem::itemIsClone(v15, a2))
    {

      WebKit::ViewGestureController::removeSwipeSnapshot(this);
    }

    else
    {
LABEL_15:
      v16 = WTF::fastMalloc(0x10);
      *v16 = &unk_1F110D770;
      v16[1] = this;
      v25 = v16;
      WebKit::ViewGestureController::SnapshotRemovalTracker::start(this + 216, 62, &v25);
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      v18 = *(a2 + 16);
      if (v18)
      {
        v19 = *(v18 + 40);
        if ((v19 & 0x8000000000000) != 0)
        {
          atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 1u);
        }

        v20 = *(this + 14);
        if ((v20 & 0x8000000000000) != 0)
        {
          v24 = (v20 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v17);
          }
        }

        *(this + 14) = v19;
        v21 = *(this + 3);
        if (v21)
        {
          v22 = *(v21 + 8);
          if (v22)
          {
            CFRetain(*(v22 - 8));
            WebKit::WebPageProxy::didChangeBackgroundColor(v22 - 16);
            v23 = *(v22 - 8);

            CFRelease(v23);
          }
        }
      }
    }
  }
}

void *__copy_helper_block_e8_40c107_ZTSN3WTF6RefPtrIN6WebKit22WebBackForwardListItemENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  if (v3)
  {
    result = CFRetain(*(v3 + 8));
  }

  v2[5] = v3;
  return result;
}

void __destroy_helper_block_e8_40c107_ZTSN3WTF6RefPtrIN6WebKit22WebBackForwardListItemENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }
}

void ___ZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionE_block_invoke_189(uint64_t *a1, void *a2, int a3)
{
  v6 = WebKit::ViewGestureController::controllerForGesture(a1[4], a1[5]);
  if (v6)
  {
    v7 = v6;
    v8 = a1[6];
    if ((*(v6 + 208) & 1) == 0)
    {
      WebKit::ViewGestureController::willEndSwipeGesture(v6, v8, a3 ^ 1);
    }

    *(v7 + 211) = 1;
    [a2 _setTransitionIsInFlight:0];
    [a2 _setInteractor:0];
    [a2 _setAnimator:0];
    [objc_msgSend(*(v7 + 22) "superview")];
    [objc_msgSend(*(v7 + 22) "superview")];
    [*(v7 + 20) removeFromSuperview];
    v9 = *(v7 + 20);
    *(v7 + 20) = 0;
    if (v9)
    {
    }

    [*(v7 + 22) removeFromSuperview];
    v10 = *(v7 + 22);
    *(v7 + 22) = 0;
    if (v10)
    {
    }

    v11 = *(v7 + 3);
    if (v11 && (v12 = *(v11 + 8)) != 0)
    {
      v13 = (v12 - 16);
      CFRetain(*(v12 - 8));
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v15 = *(v7 + 16);
    if (a3)
    {
      WebKit::WebPageProxy::navigationGestureDidEnd(*(v7 + 16), 1, v8);
      if (*(v7 + 16) != v13)
      {
        WebKit::WebPageProxy::navigationGestureDidEnd(v13);
      }

      v16 = v13[157];
      if ((v16 && *(v16 + 80) || v13[41]) && *(v7 + 212) != 1)
      {
        v18 = v13[5];
        v19 = *(v7 + 18);
        *&v22 = v7;
        *(&v22 + 1) = v18;
        v23 = v19;
        if (*(v7 + 210) == 1)
        {
          WebKit::ViewGestureController::endSwipeGesture(WebKit::WebBackForwardListItem *,_UIViewControllerTransitionContext *,BOOL)::$_0::operator()(&v22);
        }

        else
        {
          v20 = WTF::fastMalloc(0x20);
          *v20 = &unk_1F110D798;
          *(v20 + 8) = v22;
          *(v20 + 24) = v23;
          v21 = *(v7 + 38);
          *(v7 + 38) = v20;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }
      }

      else
      {
        WebKit::ViewGestureController::removeSwipeSnapshot(v7);
      }
    }

    else
    {
      if (v15)
      {
        CFRetain(*(v15 + 8));
      }

      WebKit::ViewGestureController::removeSwipeSnapshot(v7);
      WebKit::WebPageProxy::navigationGestureDidEnd(v15, 0, v8);
      if (v15 != v13)
      {
        WebKit::WebPageProxy::navigationGestureDidEnd(v13);
      }

      if (v15)
      {
        CFRelease(*(v15 + 8));
      }
    }

    if ((v14 & 1) == 0)
    {
      v17 = v13[1];

      CFRelease(v17);
    }
  }
}

void sub_19DE4D1BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

_OWORD *__copy_helper_block_e8_32c124_ZTSKZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionEE3__1(_OWORD *result, uint64_t a2)
{
  v2 = result;
  result[2] = *(a2 + 32);
  v3 = *(a2 + 48);
  if (v3)
  {
    result = CFRetain(*(v3 + 8));
  }

  *(v2 + 6) = v3;
  return result;
}

void __destroy_helper_block_e8_32c124_ZTSKZN6WebKit21ViewGestureController17beginSwipeGestureEP38_UINavigationInteractiveTransitionBaseNS0_14SwipeDirectionEE3__1(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }
}

void WebKit::ViewGestureController::removeSwipeSnapshot(id *this)
{
  WebKit::ViewGestureController::SnapshotRemovalTracker::reset((this + 27));
  if (*(this + 14) == 1)
  {
    if (*(this + 211))
    {

      WebKit::ViewGestureController::resetState(this);
    }

    else
    {
      *(this + 212) = 1;
    }
  }
}

void WebKit::ViewGestureController::endSwipeGesture(WebKit::WebBackForwardListItem *,_UIViewControllerTransitionContext *,BOOL)::$_0::operator()(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (!v2 || (v3 = v2[1]) == 0)
  {
    v5 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  v5 = v3 - 16;
  CFRetain(*(v3 - 8));
  v6 = *(v3 + 1240);
  if (!v6 || (v7 = *(v6 + 80)) == 0)
  {
    v7 = *(v3 + 312);
    if (!v7)
    {
      v12 = 0;
LABEL_10:
      WebKit::ViewGestureController::removeSwipeSnapshot(v1);
      if (v12)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v8 = a1[1];
  v9 = a1[2];
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F110D748;
  v10[1] = v8;
  v10[2] = v9;
  v13 = v10;
  WebKit::WebPageProxy::callAfterNextPresentationUpdate(v3 - 16, &v13);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  (*(*v7 + 200))(v7);
LABEL_11:
  CFRelease(*(v5 + 8));
}

uint64_t WebKit::ViewGestureController::setRenderTreeSize(uint64_t this, unint64_t a2)
{
  if (*(this + 56) == 1)
  {
    v2 = *(this + 200);
    if (v2)
    {
      v3 = v2 >= a2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return WebKit::ViewGestureController::SnapshotRemovalTracker::stopWaitingForEvent((this + 216), 2, "outstanding event occurred: ", 29, 1);
    }
  }

  return this;
}

void WebKit::ViewGestureController::resetState(id *this)
{
  [this[21] removeFromSuperview];
  v3 = this[21];
  this[21] = 0;
  if (v3)
  {
  }

  this[25] = 0;
  v4 = this[16];
  if (v4)
  {
    WebKit::WebPageProxy::navigationGestureSnapshotWasRemoved(v4);
    v5 = this[16];
    this[16] = 0;
    if (v5)
    {
      CFRelease(v5[1]);
    }
  }

  v6 = this[24];
  this[24] = 0;
  if (v6)
  {
  }

  v7 = this[14];
  if ((v7 & 0x8000000000000) != 0)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, v2);
    }
  }

  this[14] = 0;
  v8 = this[17];
  this[17] = 0;
  if (v8)
  {
    CFRelease(v8[1]);
  }

  WebKit::ViewGestureController::didEndGesture(this);
}

BOOL WebKit::ViewGestureController::beginSimulatedSwipeInDirectionForTesting(uint64_t a1, uint64_t a2)
{
  canSwipeInDirection = WebKit::ViewGestureController::canSwipeInDirection(a1, a2, 0);
  if (canSwipeInDirection)
  {
    v5 = [*(a1 + 184) transitionForDirection:a2];
    WebKit::ViewGestureController::beginSwipeGesture(a1, v5, a2);
    [v5 _stopInteractiveTransition];
  }

  return canSwipeInDirection;
}

void sub_19DE4DF8C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x210]) == 1)
  {
    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&a9, a2);
  }

  _Unwind_Resume(a1);
}

void sub_19DE4E2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF *a16, int a17)
{
  WTF::RefCounted<WebCore::TextIndicator>::deref(v18);

  _Unwind_Resume(a1);
}

void sub_19DE4E73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE4E8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE4E938(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 528) == 1)
  {
    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE4EE1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, void *a40)
{
  if (a38 && atomic_fetch_add_explicit(a38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a38, a2);
  }

  if (a40)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE4F1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, CFTypeRef cf, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a15)
  {
  }

  if (v24)
  {
  }

  if (a22)
  {
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c79_ZTSN3WTF9RetainPtrIU41objcproto30WKActionSheetAssistantDelegate11objc_objectEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  result[5] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_40c79_ZTSN3WTF9RetainPtrIU41objcproto30WKActionSheetAssistantDelegate11objc_objectEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

void *__copy_helper_block_e8_40c46_ZTSN3WTF9RetainPtrI22WKActionSheetAssistantEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  result[5] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_40c46_ZTSN3WTF9RetainPtrI22WKActionSheetAssistantEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

void sub_19DE4F810(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE4FB1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 88);
  *(v21 - 88) = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE50050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE502B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE505AC(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v3, a2);
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE50640(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v3, a2);
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE507A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20)
  {
  }

  if (v20)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE50AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE50EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  objc_destroyWeak((v21 + 32));
  if (v20)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE51180(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v6);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DE513D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if ((v12 & 1) == 0)
  {
  }

  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE51780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17)
{
  if (location)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE51A5C(_Unwind_Exception *exception_object)
{
  if (v3)
  {

    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:

  goto LABEL_5;
}

void sub_19DE51B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DE51D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DE522C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, int a11)
{
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::SmartMagnificationController::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t *WTF::HashTable<long long,WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>>,WTF::DefaultHash<long long>,WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<long long>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  if (WebKit::spellDocumentTagMap(void)::tagMap && (v1 = *(WebKit::spellDocumentTagMap(void)::tagMap - 4)) != 0)
  {
    v2 = v1 << (6 * *(WebKit::spellDocumentTagMap(void)::tagMap - 12) >= (2 * v1));
  }

  else
  {
    v2 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&WebKit::spellDocumentTagMap(void)::tagMap, v2, a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ViewGestureController::endSwipeGesture(WebKit::WebBackForwardListItem *,_UIViewControllerTransitionContext *,BOOL)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = WebKit::ViewGestureController::controllerForGesture(*(a1 + 8), *(a1 + 16));
  if (result && *(result + 56) == 1)
  {
    v2 = (result + 216);

    return WebKit::ViewGestureController::SnapshotRemovalTracker::stopWaitingForEvent(v2, 4, "outstanding event occurred: ", 29, 1);
  }

  return result;
}

uint64_t WebKit::InteractionInformationAtPosition::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  WTF::URL::operator=(a1 + 72, a2 + 72);
  WTF::URL::operator=(a1 + 112, a2 + 112);
  v8 = *(a2 + 152);
  *(a2 + 152) = 0;
  v9 = *(a1 + 152);
  *(a1 + 152) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(a2 + 160);
  *(a2 + 160) = 0;
  v11 = *(a1 + 160);
  *(a1 + 160) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *(a2 + 168);
  *(a2 + 168) = 0;
  v13 = *(a1 + 168);
  *(a1 + 168) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  *(a1 + 176) = *(a2 + 176);
  v14 = *(a2 + 192);
  *(a2 + 192) = 0;
  v15 = *(a1 + 192);
  *(a1 + 192) = v14;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v15, v7);
  }

  v16 = *(a2 + 200);
  *(a2 + 200) = 0;
  v17 = *(a1 + 200);
  *(a1 + 200) = v16;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v7);
  }

  v18 = *(a2 + 208);
  *(a2 + 208) = 0;
  v19 = *(a1 + 208);
  *(a1 + 208) = v18;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v7);
  }

  *(a1 + 216) = *(a2 + 216);
  std::__optional_storage_base<WebCore::Cursor,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Cursor,false>>((a1 + 232), (a2 + 232));
  *(a1 + 272) = *(a2 + 272);
  v21 = *(a2 + 280);
  *(a2 + 280) = 0;
  v22 = *(a1 + 280);
  *(a1 + 280) = v21;
  if (v22)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v22);
  }

  v23 = *(a2 + 288);
  *(a2 + 288) = 0;
  v24 = *(a1 + 288);
  *(a1 + 288) = v23;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  v25 = *(a2 + 296);
  *(a2 + 296) = 0;
  v26 = *(a1 + 296);
  *(a1 + 296) = v25;
  if (v26)
  {
  }

  *(a1 + 304) = *(a2 + 304);
  v27 = *(a2 + 320);
  v28 = *(a2 + 336);
  v29 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v29;
  *(a1 + 320) = v27;
  *(a1 + 336) = v28;
  v30 = *(a2 + 384);
  v31 = *(a2 + 400);
  v32 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v32;
  *(a1 + 384) = v30;
  *(a1 + 400) = v31;
  v33 = *(a2 + 448);
  v34 = *(a2 + 464);
  v35 = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 464) = v34;
  *(a1 + 480) = v35;
  *(a1 + 448) = v33;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 512, (a2 + 512));
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  WTF::String::operator=((a1 + 72), (a2 + 72));
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  WTF::String::operator=((a1 + 112), (a2 + 112));
  v8 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v8;
  WTF::String::operator=((a1 + 152), (a2 + 152));
  WTF::String::operator=((a1 + 160), (a2 + 160));
  WTF::String::operator=((a1 + 168), (a2 + 168));
  *(a1 + 176) = *(a2 + 176);
  v10 = *(a2 + 192);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = *(a1 + 192);
  *(a1 + 192) = v10;
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v11, v9);
  }

  WTF::String::operator=((a1 + 200), (a2 + 200));
  WTF::String::operator=((a1 + 208), (a2 + 208));
  *(a1 + 216) = *(a2 + 216);
  std::__optional_storage_base<WebCore::Cursor,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Cursor,false> const&>((a1 + 232), (a2 + 232));
  *(a1 + 272) = *(a2 + 272);
  v12 = *(a2 + 280);
  if (v12)
  {
    ++*v12;
  }

  v13 = *(a1 + 280);
  *(a1 + 280) = v12;
  if (v13)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v13);
  }

  WTF::String::operator=((a1 + 288), (a2 + 288));
  v14 = *(a2 + 296);
  if (v14)
  {
    v15 = v14;
  }

  v16 = *(a1 + 296);
  *(a1 + 296) = v14;
  if (v16)
  {
  }

  *(a1 + 304) = *(a2 + 304);
  v17 = *(a2 + 320);
  v18 = *(a2 + 336);
  v19 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v19;
  *(a1 + 320) = v17;
  *(a1 + 336) = v18;
  v20 = *(a2 + 384);
  v21 = *(a2 + 400);
  v22 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v22;
  *(a1 + 384) = v20;
  *(a1 + 400) = v21;
  v23 = *(a2 + 448);
  v24 = *(a2 + 464);
  v25 = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 464) = v24;
  *(a1 + 480) = v25;
  *(a1 + 448) = v23;
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 512, a2 + 512);
  return a1;
}

__n128 std::__optional_storage_base<WebCore::Cursor,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Cursor,false>>(__n128 *a1, __n128 *a2)
{
  if (a1[2].n128_u8[0] == a2[2].n128_u8[0])
  {
    if (a1[2].n128_u8[0])
    {
      a1->n128_u8[0] = a2->n128_u8[0];
      v4 = a2->n128_u64[1];
      a2->n128_u64[1] = 0;
      v5 = a1->n128_u64[1];
      a1->n128_u64[1] = v4;
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

      result = a2[1];
      a1[1] = result;
    }
  }

  else if (a1[2].n128_u8[0])
  {

    std::__optional_destruct_base<WebCore::Cursor,false>::reset[abi:sn200100](a1);
  }

  else
  {
    a1->n128_u8[0] = a2->n128_u8[0];
    v7 = a2->n128_u64[1];
    a2->n128_u64[1] = 0;
    a1->n128_u64[1] = v7;
    result = a2[1];
    a1[1] = result;
    a1[2].n128_u8[0] = 1;
  }

  return result;
}

uint64_t std::__optional_destruct_base<WebCore::Cursor,false>::reset[abi:sn200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    result = *(result + 8);
    *(v1 + 8) = 0;
    if (result)
    {
      if (*(result + 16) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 16);
      }
    }

    *(v1 + 32) = 0;
  }

  return result;
}

WebKit::InteractionInformationAtPosition *WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(WebKit::InteractionInformationAtPosition *this, const WebKit::InteractionInformationAtPosition *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 1) = v4;
  v7 = *(a2 + 9);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 9) = v7;
  v8 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v8;
  v9 = *(a2 + 14);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 14) = v9;
  v10 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v10;
  v11 = *(a2 + 19);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 19) = v11;
  v12 = *(a2 + 20);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 20) = v12;
  v13 = *(a2 + 21);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(this + 21) = v13;
  *(this + 11) = *(a2 + 11);
  v14 = *(a2 + 24);
  if (v14)
  {
    atomic_fetch_add(v14, 1u);
  }

  *(this + 24) = v14;
  v15 = *(a2 + 25);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(this + 25) = v15;
  v16 = *(a2 + 26);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(this + 26) = v16;
  *(this + 216) = *(a2 + 216);
  *(this + 232) = 0;
  *(this + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(this + 232) = *(a2 + 232);
    v17 = *(a2 + 30);
    if (v17)
    {
      ++*(v17 + 16);
    }

    *(this + 30) = v17;
    *(this + 248) = *(a2 + 248);
    *(this + 264) = 1;
  }

  *(this + 136) = *(a2 + 136);
  v18 = *(a2 + 35);
  if (v18)
  {
    ++*v18;
  }

  *(this + 35) = v18;
  v19 = *(a2 + 36);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v20 = *(a2 + 37);
  *(this + 36) = v19;
  *(this + 37) = v20;
  if (v20)
  {
    v21 = v20;
  }

  *(this + 19) = *(a2 + 19);
  v22 = *(a2 + 20);
  v23 = *(a2 + 21);
  v24 = *(a2 + 23);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = v24;
  *(this + 20) = v22;
  *(this + 21) = v23;
  v25 = *(a2 + 24);
  v26 = *(a2 + 25);
  v27 = *(a2 + 27);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = v27;
  *(this + 24) = v25;
  *(this + 25) = v26;
  v28 = *(a2 + 28);
  v29 = *(a2 + 29);
  v30 = *(a2 + 30);
  *(this + 496) = *(a2 + 496);
  *(this + 29) = v29;
  *(this + 30) = v30;
  *(this + 28) = v28;
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 512, a2 + 512);
  return this;
}

void sub_19DE53308(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 288);
  *(v2 + 288) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(v2 + 280);
  *(v2 + 280) = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v5);
  }

  if (*(v2 + 264) == 1)
  {
    v6 = *(v2 + 240);
    *(v2 + 240) = 0;
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
  }

  v7 = *(v2 + 208);
  *(v2 + 208) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 200);
  *(v2 + 200) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 192);
  *(v2 + 192) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v9, a2);
  }

  v10 = *(v2 + 168);
  *(v2 + 168) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 160);
  *(v2 + 160) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v2 + 152);
  *(v2 + 152) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::CompactContextMenuPresenter::operator new(WebKit::CompactContextMenuPresenter *this, void *a2)
{
  if (this == 16 && WebKit::CompactContextMenuPresenter::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::CompactContextMenuPresenter::s_heapRef, a2);
  }

  else
  {
    return WebKit::CompactContextMenuPresenter::operatorNewSlow(this);
  }
}

__n128 std::__optional_storage_base<WebCore::Cursor,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Cursor,false> const&>(__n128 *a1, __n128 *a2)
{
  if (a1[2].n128_u8[0] == a2[2].n128_u8[0])
  {
    if (a1[2].n128_u8[0])
    {
      a1->n128_u8[0] = a2->n128_u8[0];
      v4 = a2->n128_u64[1];
      if (v4)
      {
        ++*(v4 + 16);
      }

      v5 = a1->n128_u64[1];
      a1->n128_u64[1] = v4;
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

      result = a2[1];
      a1[1] = result;
    }
  }

  else if (a1[2].n128_u8[0])
  {

    std::__optional_destruct_base<WebCore::Cursor,false>::reset[abi:sn200100](a1);
  }

  else
  {
    a1->n128_u8[0] = a2->n128_u8[0];
    v7 = a2->n128_u64[1];
    if (v7)
    {
      ++*(v7 + 16);
    }

    a1->n128_u64[1] = v7;
    result = a2[1];
    a1[1] = result;
    a1[2].n128_u8[0] = 1;
  }

  return result;
}

uint64_t WTF::RefCounted<WebKit::RevealFocusedElementDeferrer>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    objc_destroyWeak((result + 8));
    if (*v1 == 1)
    {

      return WTF::fastFree(v1, v2);
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::ViewGestureGeometryCollector::CollectGeometryForSmartMagnificationGesture>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1812;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DE5399C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<long long,WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long,WTF::RetainPtr<UITextChecker>>>,WTF::DefaultHash<long long>,WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<UITextChecker>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<UITextChecker>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,(WTF::ShouldValidateKey)1,long long>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DE53AD4);
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

uint64_t WTF::Vector<WebCore::Path,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 << 6;
    do
    {
      v4 = mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v4) + 64;
      v5 -= 64;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

void ___ZZ73__WKActionSheetAssistant__uiMenuElementsForMediaControlContextMenuItems__ENK3__8clERN7WebCore28MediaControlsContextMenuItemE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WTF::CompletionHandler<void ()(unsigned long long)>::operator()(WeakRetained + 77);
  }
}

void __copy_helper_block_e8_32c148_ZTSKZZ73__WKActionSheetAssistant__uiMenuElementsForMediaControlContextMenuItems__ENK3__8clERN7WebCore28MediaControlsContextMenuItemEEUlP8UIActionE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(v3 + 8) = *(a2 + 40);
}

void WebKit::AuxiliaryProcess::~AuxiliaryProcess(WebKit::AuxiliaryProcess *this)
{
  *this = &unk_1F10F18F8;
  *(this + 3) = &unk_1F10F19D8;
  v2 = *(this + 5);
  if (v2)
  {
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    IPC::Connection::invalidate(v2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  *(this + 10) = &unk_1F10E6DC8;
  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 80));
  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  IPC::MessageReceiverMap::~MessageReceiverMap((this + 48), v6);
  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v8);
}

uint64_t PAL::HysteresisActivity::stop(uint64_t this)
{
  if (*(this + 64) == 1)
  {
    *(this + 64) = 0;
    return WTF::RunLoop::TimerBase::start();
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcess::dispatchMessage(WebKit::AuxiliaryProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  if (IPC::MessageReceiverMap::dispatchMessage((this + 48), a2, a3))
  {
    return 1;
  }

  v7 = *(*this + 144);

  return v7(this, a2, a3);
}

unsigned __int8 *WebKit::AuxiliaryProcess::addMessageReceiver(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  return WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((a1 + 56), v6, a4, v5);
}

uint64_t WebKit::AuxiliaryProcess::enableTermination(uint64_t this)
{
  v1 = *(this + 32) - 1;
  *(this + 32) = v1;
  if (!v1)
  {
    v2 = this;
    if ((*(this + 36) & 1) == 0)
    {
      this = (*(*this + 120))(this);
      if (this)
      {
        v3 = *(*v2 + 128);

        return v3(v2);
      }
    }
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcess::mainThreadPing(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WebKit::AuxiliaryProcess::terminate(WebKit::AuxiliaryProcess *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v6 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v6, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v3)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
    IPC::Connection::invalidate(v2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  else
  {
    IPC::Connection::invalidate(0);
  }

  v4 = *(*this + 136);

  return v4(this);
}

uint64_t WebKit::AuxiliaryProcess::shutDown(WebKit::AuxiliaryProcess *this)
{
  v2 = *(this + 36);
  *(this + 36) = 1;
  result = (*(*this + 128))(this);
  *(this + 36) = v2;
  return result;
}

uint64_t *WebKit::AuxiliaryProcess::applyProcessCreationParameters(WTF *a1, atomic_uint **a2)
{
  WTF::logChannels(a1);
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v13 = v3;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  v5 = v13;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v13, v4);
  }

  WebCore::logChannels(v5);
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v12 = v6;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  {
    WebKit::LogChannels::LogChannels(&WebKit::logChannels(void)::logChannels);
  }

  v8 = a2[2];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v11 = v8;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  return WebKit::SecureCoding::applyProcessCreationParameters(a2);
}

void WebKit::BlobDataFileReferenceWithSandboxExtension::~BlobDataFileReferenceWithSandboxExtension(WebKit::BlobDataFileReferenceWithSandboxExtension *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v2);
  }

  MEMORY[0x1EEE57C78](this);
}

{
  WebKit::BlobDataFileReferenceWithSandboxExtension::~BlobDataFileReferenceWithSandboxExtension(this);

  WTF::fastFree(v1, v2);
}

BOOL WebKit::BlobDataFileReferenceWithSandboxExtension::prepareForFileAccess(_BOOL8 this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = v2 + 1;
    if (!v2)
    {
      return WebKit::SandboxExtensionImpl::consume(*(v1 + 8));
    }
  }

  return this;
}

uint64_t WebKit::BlobDataFileReferenceWithSandboxExtension::revokeFileAccess(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if (!v2)
    {
      *(*(v1 + 8) + 8) = 0;
      return sandbox_extension_release();
    }
  }

  return this;
}

uint64_t WebKit::calculateURLCacheDiskCapacity(int a1, unint64_t a2)
{
  v2 = 0x40000000;
  v3 = a2 >> 14;
  v4 = 524288000;
  v5 = a2 >> 13;
  v6 = 262144000;
  v7 = 209715200;
  v8 = 104857600;
  if (a2 > 0x3FF)
  {
    v8 = 157286400;
  }

  if (a2 <= 0x7FF)
  {
    v7 = v8;
  }

  if (a2 <= 0xFFF)
  {
    v6 = v7;
  }

  if (!v5)
  {
    v4 = v6;
  }

  if (!v3)
  {
    v2 = v4;
  }

  v9 = 20971520;
  if (a2 > 0xFFF)
  {
    v9 = 31457280;
  }

  if (v5)
  {
    v10 = 41943040;
  }

  else
  {
    v10 = v9;
  }

  if (v3)
  {
    v11 = 78643200;
  }

  else
  {
    v11 = v10;
  }

  if (a1 != 1)
  {
    v11 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v11;
  }
}

uint64_t WebKit::DebuggableInfoData::empty@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(a1 + 16) = v4;
  result = WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  return result;
}

WebCore::Node *WebKit::EditingRange::toRange@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v9 = *(*(a1 + 224) + 3208);
    ++*(v9 + 7);
    result = WebCore::FrameSelection::rootEditableElementOrDocumentElement(v9);
    if (result)
    {
      v11 = result;
      *(result + 7) += 2;
      v12 = *(v9 + 7);
      if (v12)
      {
        *(v9 + 7) = v12 - 1;
        WebCore::makeRangeSelectingNodeContents(&v20, result, v10);
        WebCore::resolveCharacterRange();
        *a3 = v22;
        *(a3 + 8) = v23;
        *(a3 + 16) = v24;
        *(a3 + 24) = v25;
        *(a3 + 32) = 1;
        v24 = 0;
        v22 = 0;
        v13 = v21;
        v21 = 0;
        if (v13)
        {
          if (*(v13 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v13);
          }

          else
          {
            *(v13 + 7) -= 2;
          }
        }

        result = v20;
        v20 = 0;
        if (result)
        {
          if (*(result + 7) == 2)
          {
            result = WebCore::Node::removedLastRef(result);
          }

          else
          {
            *(result + 7) -= 2;
          }
        }

        if (*(v11 + 7) != 2)
        {
          *(v11 + 7) -= 2;
          return result;
        }

        result = v11;
        return WebCore::Node::removedLastRef(result);
      }
    }

    else
    {
      v14 = *(v9 + 7);
      if (v14)
      {
        *(v9 + 7) = v14 - 1;
LABEL_26:
        *a3 = 0;
        *(a3 + 32) = 0;
        return result;
      }
    }

    __break(0xC471u);
    goto LABEL_57;
  }

  WebCore::VisiblePosition::VisiblePosition();
  WebCore::startOfParagraph();
  WebCore::makeBoundaryPoint();
  v4 = v22;
  v22 = 0;
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

  result = v20;
  v20 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      result = WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  if (v19 != 1)
  {
    goto LABEL_26;
  }

  v6 = **(v18 + 48);
  if (!v6)
  {
    __break(0xC471u);
LABEL_56:
    __break(1u);
LABEL_57:
    JUMPOUT(0x19DE547ACLL);
  }

  v7 = *(v6 + 28) + 4;
  *(v6 + 28) = v7;
  v8 = *(v6 + 32);
  if ((v8 & 1) == 0 && (v8 & 4) != 0)
  {
    WebCore::ContainerNode::countChildNodes(v6);
    v7 = *(v6 + 28);
  }

  v15 = v7 - 2;
  if (v15)
  {
    *(v6 + 28) = v15;
  }

  else
  {
    WebCore::Node::removedLastRef(v6);
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_56;
  }

  WebCore::SimpleRange::SimpleRange();
  WebCore::resolveCharacterRange();
  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = 1;
  v24 = 0;
  v22 = 0;
  v16 = v21;
  v21 = 0;
  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v16);
    }

    else
    {
      *(v16 + 7) -= 2;
    }
  }

  v17 = v20;
  v20 = 0;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
    }

    else
    {
      *(v17 + 7) -= 2;
    }
  }

  result = v6;
  if (*(v6 + 28) == 2)
  {
    result = WebCore::Node::removedLastRef(v6);
  }

  else
  {
    *(v6 + 28) -= 2;
  }

  if (v19)
  {
    result = v18;
    if (v18)
    {
      if (*(v18 + 28) != 2)
      {
        *(v18 + 28) -= 2;
        return result;
      }

      return WebCore::Node::removedLastRef(result);
    }
  }

  return result;
}

uint64_t WebKit::EditingRange::fromRange(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return -1;
  }

  v3 = *(*(a1 + 224) + 3208);
  ++*(v3 + 7);
  result = WebCore::FrameSelection::rootEditableElementOrDocumentElement(v3);
  if (!result)
  {
    v9 = *(v3 + 7);
    if (!v9)
    {
      goto LABEL_24;
    }

    *(v3 + 7) = v9 - 1;
    return -1;
  }

  v5 = result;
  v6 = *(result + 28);
  *(result + 28) = v6 + 2;
  v7 = *(v3 + 7);
  if (!v7)
  {
LABEL_24:
    result = 290;
    __break(0xC471u);
    goto LABEL_25;
  }

  *(v3 + 7) = v7 - 1;
  *(result + 28) = v6 + 4;
  v10 = result;
  if (*(a2 + 32))
  {
    WebCore::SimpleRange::SimpleRange();
    v8 = WebCore::characterCount();
    WebCore::characterCount();
    if (v12)
    {
      if (*(v12 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v12);
      }

      else
      {
        *(v12 + 7) -= 2;
      }
    }

    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }

    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
    }

    else
    {
      *(v10 + 7) -= 2;
    }

    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }

    return v8;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t WebKit::EditorState::clipOwnedRectExtentsToNumericLimits(uint64_t this)
{
  if (*(this + 528) == 1)
  {
    v1 = this;
    *(this + 288) = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((this + 288));
    v1[37] = v2;
    v1[38] = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((v1 + 38));
    v1[39] = v3;
    v1[40] = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((v1 + 40));
    v1[41] = v4;
    v1[46] = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((v1 + 46));
    v1[47] = v5;
    v1[48] = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((v1 + 48));
    v1[49] = v6;
    this = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits((v1 + 34));
    v1[34] = this;
    v1[35] = v7;
  }

  return this;
}

int32x2_t *WebKit::EditorState::move(int32x2_t *this, float a2, float a3)
{
  if (this[66].i8[0] == 1)
  {
    v3 = a3;
    v4 = this;
    if (a2 != 0.0 || a3 != 0.0)
    {
      v5 = vcvt_s32_f32(vrnda_f32(__PAIR64__(LODWORD(a3), LODWORD(a2))));
      this[34] = vadd_s32(this[34], v5);
      this[36] = vadd_s32(this[36], v5);
      this[38] = vadd_s32(this[38], v5);
      this[40] = vadd_s32(this[40], v5);
      this[46] = vadd_s32(this[46], v5);
      this[48] = vadd_s32(this[48], v5);
      v6 = this[43].u32[1];
      v12 = a2;
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = this[42];
      v8 = 84 * v6;
      do
      {
        this = WebCore::SelectionGeometry::move(v7, a2, v3);
        a2 = v12;
        v3 = a3;
        v7 = (v7 + 84);
        v8 -= 84;
      }

      while (v8);
      if ((*(v4 + 528) & 1) == 0)
      {
        __break(1u);
      }

      else
      {
LABEL_9:
        v9 = *(v4 + 364);
        if (v9)
        {
          v10 = *(v4 + 352);
          v11 = 84 * v9;
          do
          {
            WebCore::SelectionGeometry::move(v10, a2, v3);
            a2 = v12;
            v3 = a3;
            v10 = (v10 + 84);
            v11 -= 84;
          }

          while (v11);
        }

        return WebKit::EditorState::clipOwnedRectExtentsToNumericLimits(v4);
      }
    }
  }

  return this;
}

uint64_t WebKit::WebProcessPool::supplement<WebKit::WebGeolocationManagerProxy>(uint64_t a1)
{
  if ("WebGeolocationManagerProxy" == -1)
  {
    result = 372;
    __break(0xC471u);
  }

  else
  {
    v22 = v1;
    v23 = v2;
    v3 = *(a1 + 456);
    if (v3 && (v4 = *(v3 - 8), v19 = -1640531527, v20 = 0, v21 = 0, WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v19, "WebGeolocationManagerProxy", 0x1Au), v5 = WTF::SuperFastHash::hash(&v19) & v4, v6 = v3 + 24 * v5, (v7 = *(v6 + 8)) != 0))
    {
      v8 = 1;
      while (1)
      {
        if (v7 == 27)
        {
          v9 = *v6;
          if (*v6 != -1)
          {
            v10 = *v9;
            v11 = v9[1];
            v12 = v9[2];
            v13 = *(v9 + 19);
            v14 = v10 == *"WebGeolocationManagerProxy" && v11 == *"cationManagerProxy";
            v15 = v14 && v12 == *"nagerProxy";
            if (v15 && v13 == *"erProxy")
            {
              break;
            }
          }
        }

        v5 = (v5 + v8) & v4;
        v6 = v3 + 24 * v5;
        v7 = *(v6 + 8);
        ++v8;
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v17 = *(v6 + 16);
    }

    else
    {
LABEL_18:
      v17 = 0;
    }

    if (v17)
    {
      return v17 - 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE563B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, WTF::StringImpl *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, CFTypeRef cf, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  GeolocationRequestData::~GeolocationRequestData(&a11, a2);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v62);
    }
  }

  _Unwind_Resume(a1);
}

void GeolocationRequestData::~GeolocationRequestData(GeolocationRequestData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 51);
  *(this + 51) = 0;
  if (v3)
  {
  }

  v4 = *(this + 50);
  *(this + 50) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 44);
  *(this + 44) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 36);
  *(this + 36) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 256);
  v7 = *(this + 31);
  *(this + 31) = 0;
  if (v7)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 56));
  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }
}

void sub_19DE56AA0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  GeolocationRequestData::~GeolocationRequestData(va, a2);
  _Unwind_Resume(a1);
}

uint64_t GeolocationRequestData::GeolocationRequestData(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  *(v4 + 48) = *(a2 + 48);
  WebCore::ResourceRequestBase::RequestData::RequestData(v4 + 56, a2 + 56);
  v5 = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 208) = v5;
  v6 = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a1 + 216) = v6;
  v7 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v7;
  v8 = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 232) = v8;
  v9 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v9;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 256));
  v10 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a1 + 288) = v10;
  v11 = *(a2 + 296);
  v12 = *(a2 + 312);
  v13 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v12;
  *(a1 + 328) = v13;
  *(a1 + 296) = v11;
  v14 = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a1 + 352) = v14;
  v15 = *(a2 + 360);
  v16 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 360) = v15;
  *(a1 + 376) = v16;
  v17 = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a1 + 400) = v17;
  v18 = *(a2 + 408);
  *(a2 + 408) = 0;
  *(a1 + 408) = v18;
  return a1;
}

void sub_19DE58858(_Unwind_Exception *a1)
{
  v3 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (v3)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 56));
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  _Unwind_Resume(a1);
}

void WTF::VectorMover<false,GeolocationRequestData>::move(GeolocationRequestData *a1, GeolocationRequestData *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      GeolocationRequestData::GeolocationRequestData(a3, v5);
      GeolocationRequestData::~GeolocationRequestData(v5, v6);
      a3 += 416;
      v5 = (v5 + 416);
    }

    while (v5 != a2);
  }
}

double WebKit::legacyEmptyFrameInfo@<D0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = a2;
  *a2 = 1;
  WTF::URL::URL((a2 + 4), a1);
  WTF::URL::URL(v3 + 48, (a1 + 40));
  *(v3 + 88) = *(a1 + 80);
  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(v3 + 96) = v4;
  *(v3 + 104) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 104, (a1 + 96));
  *(v3 + 120) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v3 + 120, (a1 + 112));
  *(v3 + 136) = 0u;
  v3 += 136;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3, (a1 + 128));
  *(v3 + 16) = *(a1 + 144);
  *(v3 + 20) = *(a1 + 148);
  v5 = *(a1 + 152);
  *(a1 + 152) = 0u;
  *(v3 + 24) = v5;
  v6 = *(a1 + 168);
  v7 = *(a1 + 176);
  *(a1 + 168) = 0;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  *(v3 + 56) = *(a1 + 184);
  v8 = *(a1 + 192);
  *(a1 + 192) = 0;
  *(v3 + 64) = v8;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = WebCore::Process::identifier(IdentifierInternal);
  *(v3 + 72) = IdentifierInternal;
  *(v3 + 80) = v10;
  *(v3 + 96) = 1;
  *(v3 + 104) = 0;
  *(v3 + 112) = WebCore::generateFrameIdentifier(v10);
  *(v3 + 120) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 176) = getpid();
  *(v3 + 180) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  result = 0.0;
  *(v3 + 196) = 0u;
  return result;
}

uint64_t WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
  *(a1 + 40) = 0;
  v5 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v5;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  *(a1 + 80) = 0;
  v6 = a2[10];
  a2[10] = 0;
  *(a1 + 80) = v6;
  *(a1 + 88) = 0;
  v7 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v7;
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = 0;
  v8 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v8;
  *(a1 + 120) = a2[15];
  return a1;
}

void WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(WebKit::JavaScriptEvaluationResult *this, void *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v3,  a2);
  }

  v4 = *(this + 11);
  if (v4)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 10);
  if (v5)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v6);
  v8 = *(this + 5);
  if (v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v7);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 8, v9);
  if (*this)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*this, v10);
  }
}

void sub_19DE59334(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, char a11, uint64_t a12, WTF::StringImpl *a13)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c28_ZTSN3WTF9RetainPtrI5NSURLEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  result[5] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_40c28_ZTSN3WTF9RetainPtrI5NSURLEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

void sub_19DE5A598(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  v38 = a37;
  a37 = 0;
  if (v38)
  {
  }

  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a35, a2);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a33, v39);
  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v40);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, v40);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DE5AA18(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  if (a31 == 1)
  {
    v32 = a29;
    a29 = 0;
    if (v32)
    {
    }

    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a27, a2);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a25, v33);
    if (a23)
    {
      if (atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a23, v34);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5ACDC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  if (a31 == 1)
  {
    v32 = a29;
    a29 = 0;
    if (v32)
    {
    }

    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a27, a2);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a25, v33);
    if (a23)
    {
      if (atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a23, v34);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5AE38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5AF00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5B0AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c89_ZTSKZ76__WKPDFView_web_setContentProviderData_suggestedFilename_completionHandler__E3__2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(v3 - 1) = v2;
  objc_copyWeak(v3, (a2 + 40));
}

void sub_19DE5BC00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5BED4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, WTF::StringImpl *a12)
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

void sub_19DE5C638(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5C824(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5CAF0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF::StringImpl *a30)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&a21, a2);
  _Unwind_Resume(a1);
}

void sub_19DE5CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DE5CF0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5D060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5D254(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  WebCore::ShareDataWithParsedURL::~ShareDataWithParsedURL(&a20, a2);
  _Unwind_Resume(a1);
}

void sub_19DE5D484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::dynamic_objc_cast<WKPDFFoundTextPosition>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE5DA98(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5DB88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5E1E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5E814(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5E8B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5E9D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5EAA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE5F80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(va);
  _Unwind_Resume(a1);
}

void sub_19DE5F8E8(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebCore::RectEdges<WTF::RetainPtr<WKUIScrollEdgeEffect>>::setAt(uint64_t a1, unsigned int a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  v7 = *(a1 + 8 * a2);
  *(a1 + 8 * a2) = a3;
  if (v7)
  {
  }
}

void sub_19DE5FA2C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE5FB0C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE5FBEC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE5FDA0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

Class initASVInlinePreview(void)
{
  if ((byte_1EB01D61A & 1) == 0)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/AssetViewer.framework/AssetViewer", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D628 = v1;
    byte_1EB01D61A = 1;
  }

  result = objc_getClass("ASVInlinePreview");
  qword_1EB01D620 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DE5FF08);
  }

  getASVInlinePreviewClass = ASVInlinePreviewFunction;
  return result;
}

WTF *WebKit::createForFile@<X0>(WebKit *this@<X0>, const WTF::String *a2@<X1>, void *a3@<X8>)
{
  result = WTF::FileSystemImpl::readEntireFile(&v6, this, a2);
  if (v8 == 1)
  {
    result = WebCore::KeyedDecoder::decoder();
    if (v8)
    {
      result = v6;
      if (v6)
      {
        v6 = 0;
        v7 = 0;
        return WTF::fastFree(result, v5);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unsigned int *WebKit::writeToDisk(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**a1 + 88))(&v9);
  if (v9)
  {
    WTF::FileSystemImpl::openFile();
    if (v8 != -1)
    {
      WebCore::SharedBuffer::span(v9);
      v2 = WTF::FileSystemImpl::FileHandle::write();
      v3 = v2;
      v5 = v4;
      v6 = *(v9 + 7);
      if ((v4 & 1) == 0 || v2 != v6)
      {
        v7 = qword_1ED640A40;
        if (os_log_type_enabled(qword_1ED640A40, OS_LOG_TYPE_ERROR))
        {
          if ((v5 & 1) == 0)
          {
            __break(1u);
          }

          *buf = 134218240;
          v11 = v3;
          v12 = 2048;
          v13 = v6;
          _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Disk persistency: We only wrote %llu out of %zu bytes to disk", buf, 0x16u);
        }
      }
    }

    WTF::FileSystemImpl::FileHandle::~FileHandle(&v8);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

const char *WebKit::processTerminationReasonToString()
{
  result = "ExceededMemoryLimit";
  switch("ExceededMemoryLimit")
  {
    case 0u:
      return result;
    case 1u:
      result = "ExceededCPULimit";
      break;
    case 2u:
      result = "RequestedByClient";
      break;
    case 3u:
      result = "IdleExit";
      break;
    case 4u:
      result = "Unresponsive";
      break;
    case 5u:
      result = "Crash";
      break;
    case 6u:
      result = "ExceededProcessCountLimit";
      break;
    case 7u:
      result = "NavigationSwap";
      break;
    case 8u:
      result = "RequestedByNetworkProcess";
      break;
    case 9u:
      result = "RequestedByGPUProcess";
      break;
    case 0xAu:
      result = "RequestedByModelProcess";
      break;
    case 0xBu:
      result = "GPUProcessCrashedTooManyTimes";
      break;
    case 0xCu:
      result = "ModelProcessCrashedTooManyTimes";
      break;
    case 0xDu:
      result = "NonMainFrameWebContentProcessCrash";
      break;
    default:
      result = "";
      break;
  }

  return result;
}

uint64_t WebKit::RTCNetwork::RTCNetwork(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, int a5, int a6, __int16 a7, int a8, char a9, char a10, int a11, _DWORD *a12)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, a3);
  v19 = *(a4 + 16);
  *(a1 + 32) = *a4;
  *(a1 + 48) = v19;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  *(a1 + 64) = a8;
  *(a1 + 68) = a9;
  *(a1 + 69) = a10;
  *(a1 + 72) = a11;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 80, a12);
  return a1;
}

void WebKit::RTCNetwork::value(WebKit::RTCNetwork *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 3);
  if (*this)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4 || ((v6 = *(this + 2), v7 = *(this + 7), !v6) ? (v8 = v7 == 0) : (v8 = 1), !v8))
  {
    __break(1u);
    std::string::__throw_length_error[abi:sn200100]();
  }

  WebKit::WebRTCNetwork::IPAddress::rtcAddress(this + 32, v13);
  MEMORY[0x19EB02AB0](a2, v2, v3, v6, v7, v13, *(this + 13), *(this + 14));
  *(a2 + 286) = *(this + 30);
  *(a2 + 280) = *(this + 16);
  v10 = *(this + 68);
  if (*(a2 + 284) != v10)
  {
    *(a2 + 284) = v10;
  }

  *(a2 + 268) = *(this + 69);
  *(a2 + 264) = *(this + 18);
  memset(__p, 0, sizeof(__p));
  v11 = *(this + 23);
  if (v11)
  {
    v13[4] = __p;
    std::allocator<webrtc::InterfaceAddress>::allocate_at_least[abi:sn200100](v11);
  }

  webrtc::Network::SetIPs();
}

unsigned __int8 *WebKit::WebRTCNetwork::IPAddress::rtcAddress@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[16];
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = this[16];
  }

  if (v3 == 2)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    *a2 = &off_1F10EE1B0;
    *(a2 + 8) = 30;
    *(a2 + 12) = *this;
  }

  else
  {
    if (v3 == 1)
    {
      if (v2 == 1)
      {
        v4 = *this;
        *a2 = &off_1F10EE1B0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 8) = 2;
        *(a2 + 12) = v4;
        return this;
      }

LABEL_13:
      mpark::throw_bad_variant_access(this);
    }

    if (this[16])
    {
      goto LABEL_13;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = &off_1F10EE1B0;
    *(a2 + 24) = 0;
  }

  return this;
}

WTF *WebKit::RTCNetwork::isolatedCopy@<X0>(WebKit::RTCNetwork *this@<X0>, uint64_t a2@<X8>)
{
  v20 = 0;
  v21 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIcLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS5_EUlRT_E_S5_S8_vE3mapERS5_S8_RKSB_(&v20, this);
  v18 = 0;
  v19 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIcLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS5_EUlRT_E_S5_S8_vE3mapERS5_S8_RKSB_(&v18, this + 16);
  v16 = *(this + 2);
  v4 = *(this + 13);
  v17 = *(this + 12);
  v5 = *(this + 14);
  v6 = *(this + 30);
  v7 = *(this + 16);
  v8 = *(this + 34);
  v9 = *(this + 18);
  v14 = 0;
  v15 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN6WebKit13WebRTCNetwork16InterfaceAddressELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS8_EUlRT_E_S8_SB_vE3mapERS8_SB_RKSE_(&v14, this + 10);
  WebKit::RTCNetwork::RTCNetwork(a2, &v20, &v18, &v16, v4, v5, v6, v7, v8, SHIBYTE(v8), v9, &v14);
  v11 = v14;
  if (v14)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    WTF::fastFree(v11, v10);
  }

  v12 = v18;
  if (v18)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v12, v10);
  }

  result = v20;
  if (v20)
  {
    v20 = 0;
    LODWORD(v21) = 0;
    return WTF::fastFree(result, v10);
  }

  return result;
}

uint64_t WebKit::WebRTCNetwork::SocketAddress::rtcAddress@<X0>(WebKit::WebRTCNetwork::SocketAddress *this@<X0>, webrtc::SocketAddress *a2@<X8>)
{
  webrtc::SocketAddress::SocketAddress(a2);
  result = webrtc::SocketAddress::SetPort(a2);
  *(a2 + 15) = *(this + 1);
  if (*(this + 1))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this + 5) == 0;
  }

  if (v5)
  {
    result = webrtc::SocketAddress::SetIP();
    if (*(this + 44) == 1)
    {
      WebKit::WebRTCNetwork::IPAddress::rtcAddress(this + 24, v6);
      return webrtc::SocketAddress::SetResolvedIP(a2, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

WebKit::WebRTCNetwork::SocketAddress *WebKit::WebRTCNetwork::SocketAddress::SocketAddress(WebKit::WebRTCNetwork::SocketAddress *this, const webrtc::SocketAddress *a2)
{
  *this = webrtc::SocketAddress::port(a2);
  *(this + 1) = *(a2 + 15);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(this + 8, v5, v6);
  if (webrtc::SocketAddress::IsUnresolvedIP(a2))
  {
    v7 = 0;
    *(this + 24) = 0;
  }

  else
  {
    v8 = webrtc::SocketAddress::ipaddr(a2);
    WebKit::WebRTCNetwork::IPAddress::IPAddress(&v10, v8);
    *(this + 24) = v10;
    *(this + 10) = v11;
    v7 = 1;
  }

  *(this + 44) = v7;
  return this;
}

uint64_t WebKit::WebRTCNetwork::IPAddress::IPAddress(WebKit::WebRTCNetwork::IPAddress *this, const webrtc::IPAddress *a2)
{
  *(this + 16) = 0;
  v3 = *(a2 + 2);
  switch(v3)
  {
    case 0:
      return this;
    case 2:
      v4 = webrtc::IPAddress::ipv4_address(a2);
      if (*(this + 16) != 1)
      {
        *(this + 16) = 1;
      }

      *this = v4;
      return this;
    case 30:
      v5 = webrtc::IPAddress::ipv6_address(a2);
      v6 = *(this + 16);
      *this = v5;
      *(this + 1) = v7;
      if (v6 != 2)
      {
        *(this + 16) = 2;
      }

      return this;
  }

  result = 138;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebRTCNetwork::IPAddress::IPAddress(uint64_t this, const sockaddr *a2)
{
  *(this + 16) = 0;
  sa_family = a2->sa_family;
  if (a2->sa_family)
  {
    if (sa_family == 2)
    {
      v3 = *&a2->sa_data[2];
      *(this + 16) = 1;
      *this = v3;
    }

    else if (sa_family == 30)
    {
      *this = *&a2->sa_data[6];
      *(this + 16) = 2;
    }

    else
    {
      this = 155;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::RTCPacketOptions::RTCPacketOptions(uint64_t a1, char *a2)
{
  v4 = webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions(a1);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 1);
  webrtc::PacketTimeUpdateParams::PacketTimeUpdateParams(&v18);
  v5 = *(a2 + 2);
  v6 = *(a2 + 2);
  v18 = v5;
  LODWORD(v22) = v6;
  if (v6 >= 1)
  {
    v7 = *(a2 + 4);
    if (v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_25;
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    v5 = v18;
  }

  *(&v22 + 1) = *(a2 + 5);
  *(a1 + 16) = v5;
  if ((a1 + 16) != &v18)
  {
    v8 = *(a1 + 24);
    v9 = __p;
    v10 = v20;
    v11 = v20 - __p;
    if (*(a1 + 40) - v8 < (v20 - __p))
    {
      if (v8)
      {
        *(a1 + 32) = v8;
        operator delete(v8);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_25:
      std::string::__throw_length_error[abi:sn200100]();
    }

    v12 = *(a1 + 32);
    v13 = v12 - v8;
    if (v12 - v8 >= v11)
    {
      if (v20 != __p)
      {
        memmove(v8, __p, v11);
      }

      v16 = &v8[v11];
    }

    else
    {
      if (v12 != v8)
      {
        memmove(*(a1 + 24), __p, v12 - v8);
        v12 = *(a1 + 32);
      }

      v14 = &v9[v13];
      v15 = v10 - &v9[v13];
      if (v15)
      {
        memmove(v12, v14, v15);
      }

      v16 = &v12[v15];
    }

    *(a1 + 32) = v16;
  }

  *(a1 + 48) = v22;
  webrtc::PacketTimeUpdateParams::~PacketTimeUpdateParams(&v18);
  return a1;
}

uint64_t WebKit::RTCPacketOptions::serializableData@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = -1;
  switch(*this)
  {
    case 0xFFFFFFFF:
      break;
    case 8:
      v2 = 8;
      break;
    case 0xA:
      v2 = 10;
      break;
    case 0xC:
      v2 = 12;
      break;
    case 0xE:
      v2 = 14;
      break;
    case 0x10:
      v2 = 16;
      break;
    case 0x12:
      v2 = 18;
      break;
    case 0x14:
      v2 = 20;
      break;
    case 0x16:
      v2 = 22;
      break;
    case 0x18:
      v2 = 24;
      break;
    case 0x1A:
      v2 = 26;
      break;
    case 0x1C:
      v2 = 28;
      break;
    case 0x1E:
      v2 = 30;
      break;
    case 0x20:
      v2 = 32;
      break;
    case 0x22:
      v2 = 34;
      break;
    case 0x24:
      v2 = 36;
      break;
    case 0x26:
      v2 = 38;
      break;
    case 0x28:
      v2 = 40;
      break;
    case 0x2E:
      v2 = 46;
      break;
    case 0x30:
      v2 = 48;
      break;
    default:
      v2 = 0;
      break;
  }

  *a2 = v2;
  v3 = *(this + 8);
  if (v3 == v3)
  {
    v4 = *(this + 16);
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
    v5 = *(this + 48);
    *(a2 + 16) = v5;
    if (v5 < 1)
    {
      v6 = *(this + 24);
      v7 = *(this + 32) - v6;
      *(a2 + 24) = v6;
      *(a2 + 32) = v7;
    }

    else
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
    }

    *(a2 + 40) = *(this + 56);
  }

  else
  {
    this = 1009;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::ScriptTrackingPrivacyFilter::ScriptTrackingPrivacyFilter(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 32) = 0;
  *(a1 + 37) = 0;
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 61) = 0;
  *(a1 + 48) = 0;
  v5 = a1 + 48;
  *(a1 + 80) = 0;
  *(a1 + 85) = 0;
  *(a1 + 72) = 0;
  v6 = a1 + 72;
  *(a1 + 96) = 0;
  v7 = (a1 + 96);
  WebKit::initializeFilterRules(a2, a1, (a1 + 96));
  WebKit::initializeFilterRules(a2 + 16, v4, v7);
  WebKit::initializeFilterRules(a2 + 32, v5, v7);
  WebKit::initializeFilterRules(a2 + 48, v6, v7);
  return a1;
}

uint64_t WebKit::initializeFilterRules(uint64_t result, uint64_t a2, _WORD *a3)
{
  v4 = result;
  v5 = *(result + 12);
  if (v5 >= 2)
  {
    v45 = __clz(v5 - 1);
    if (!v45)
    {
      __break(1u);
      return result;
    }

    v6 = 1 << -v45;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 << (10 * v5 >= 9 * v6);
  v8 = v7 << (v7 * 0.716666667 <= v5);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  result = WTF::fastMalloc((16 * v9));
  v12 = (result + 8);
  v13 = v9;
  do
  {
    *(v12 - 1) = 0;
    *v12 = 0;
    v12 += 8;
    --v13;
  }

  while (v13);
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 12) = 0;
  v14 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  *(a2 + 16) = (v16 >> 31) ^ v16;
  *(a2 + 20) = 0;
  v17 = *(v4 + 12);
  v18 = a3;
  if (v17)
  {
    v19 = *v4;
    v20 = *v4 + 16 * v17;
    v47 = v20;
    do
    {
      if (*v19 && *(*v19 + 4))
      {
        *v18 |= v19[4];
        v22 = *(a2 + 8);
        v21 = *(a2 + 12);
        if (10 * v21 >= (9 * v22) || *(a2 + 20) == 1 && v22 <= 2 * v21)
        {
          if (v22)
          {
            v46 = 2 * v22;
          }

          else
          {
            v46 = 8;
          }

          WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(a2, v46);
          v20 = v47;
          v18 = a3;
          LODWORD(v22) = *(a2 + 8);
        }

        v23 = *(a2 + 16);
        v24 = *(*v19 + 16);
        if (v24 < 0x100)
        {
          v35 = WTF::StringImpl::hashSlowCase(*v19);
          v20 = v47;
          v18 = a3;
          v25 = v35;
        }

        else
        {
          v25 = v24 >> 8;
        }

        v26 = v22 - 1;
        v27 = (v25 ^ v23) & (v22 - 1);
        v28 = *a2 + 16 * v27;
        v29 = *v28;
        if (*v28)
        {
          v31 = 0;
          while (1)
          {
            v32 = *(v29 + 4);
            if (v32 < 0x100)
            {
              v33 = WTF::StringImpl::hashSlowCase(v29);
              v20 = v47;
              v18 = a3;
            }

            else
            {
              v33 = v32 >> 8;
            }

            v34 = (v27 + v22 - ((v33 ^ v23) & v26)) & v26;
            if (v31 > v34)
            {
              break;
            }

            if (v33 == v25)
            {
              result = WTF::equal(*v28, *v19, v11);
              v20 = v47;
              v18 = a3;
              if (result)
              {
                goto LABEL_20;
              }
            }

            v27 = (v27 + 1) & v26;
            ++v31;
            v28 = *a2 + 16 * v27;
            v29 = *v28;
            if (!*v28)
            {
              if (v31 >= 0x80)
              {
                *(a2 + 20) = 1;
              }

              goto LABEL_17;
            }
          }

          if (v31 >= 0x80)
          {
            *(a2 + 20) = 1;
          }

          v36 = *v28;
          v37 = *(v28 + 8);
          *v28 = 0;
          *(v28 + 8) = 0;
          v38 = *v19;
          *v19 = 0;
          v39 = *v28;
          *v28 = v38;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v10);
            v20 = v47;
            v18 = a3;
          }

          *(v28 + 8) = v19[4];
          while (1)
          {
            v27 = (v27 + 1) & v26;
            v40 = *a2 + 16 * v27;
            result = *v40;
            if (!*v40)
            {
              break;
            }

            v41 = *(result + 16);
            if (v41 < 0x100)
            {
              v42 = WTF::StringImpl::hashSlowCase(result);
              v20 = v47;
              v18 = a3;
            }

            else
            {
              v42 = v41 >> 8;
            }

            if (++v34 > ((v27 + v22 - ((v42 ^ v23) & v26)) & v26))
            {
              v43 = *v40;
              v44 = *(v40 + 8);
              *v40 = v36;
              *(v40 + 8) = v37;
              v36 = v43;
              v37 = v44;
              v34 = (v27 + v22 - ((v42 ^ v23) & v26)) & v26;
            }
          }

          *v40 = v36;
          *(v40 + 8) = v37;
        }

        else
        {
LABEL_17:
          v30 = *v19;
          *v19 = 0;
          result = *v28;
          *v28 = v30;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v10);
              v20 = v47;
              v18 = a3;
            }
          }

          *(v28 + 8) = v19[4];
        }

        ++*(a2 + 12);
      }

LABEL_20:
      v19 += 8;
    }

    while (v19 != v20);
  }

  return result;
}

uint64_t WebKit::ScriptTrackingPrivacyFilter::lookup(WebKit::ScriptTrackingPrivacyFilter *this, const WTF::URL *a2, const WebCore::SecurityOrigin *a3)
{
  WebCore::RegistrableDomain::RegistrableDomain(v47, a2);
  v7 = v47[0];
  if (!v47[0])
  {
    v29 = 0;
    v30 = 0;
    return v29 | (v30 << 16);
  }

  atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
  v46 = v7;
  if (*(v7 + 1))
  {
    WTF::URL::host(a2);
    v8 = v6;
    v6 = v6;
    if ((v8 & 0x100000000) != 0)
    {
      if (v6)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_6:
        v9 = v47[1];
LABEL_7:
        v45 = v9;
        if (v9 && *(v9 + 1))
        {
          if ((WebCore::RegistrableDomain::matches(v47, (a3 + 8)) & 1) == 0)
          {
            Optional = WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::getOptional(this, &v45, v10);
            if (Optional >= 0x10000 || (Optional = WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::getOptional(this + 3, &v46, v35), Optional >= 0x10000))
            {
              v30 = Optional;
LABEL_36:
              v29 = 1;
              goto LABEL_19;
            }
          }

          v11 = *(this + 6);
          if (v11)
          {
            v12 = *(this + 14);
            v13 = v12 - 1;
            v14 = *(this + 16);
            v15 = *(v9 + 4);
            if (v15 < 0x100)
            {
              v16 = WTF::StringImpl::hashSlowCase(v9);
              v11 = *(this + 6);
            }

            else
            {
              v16 = v15 >> 8;
            }

            v17 = (v16 ^ v14) & v13;
            v18 = v11 + 16 * v17;
            v19 = *v18;
            if (*v18)
            {
              v36 = -1;
              do
              {
                v37 = *(v19 + 4);
                v38 = v37 < 0x100 ? WTF::StringImpl::hashSlowCase(v19) : v37 >> 8;
                if (++v36 > ((v17 + v12 - ((v38 ^ v14) & v13)) & v13))
                {
                  break;
                }

                if (v38 == v16 && (WTF::equal(*v18, v9, v10) & 1) != 0)
                {
                  v30 = *(v18 + 8);
                  goto LABEL_36;
                }

                v17 = (v17 + 1) & v13;
                v18 = *(this + 6) + 16 * v17;
                v19 = *v18;
              }

              while (*v18);
            }
          }

          v20 = *(this + 9);
          if (v20)
          {
            v21 = *(this + 20);
            v22 = v21 - 1;
            v23 = *(this + 22);
            v24 = *(v7 + 4);
            if (v24 < 0x100)
            {
              v25 = WTF::StringImpl::hashSlowCase(v7);
              v20 = *(this + 9);
            }

            else
            {
              v25 = v24 >> 8;
            }

            v26 = (v25 ^ v23) & v22;
            v27 = v20 + 16 * v26;
            v28 = *v27;
            if (*v27)
            {
              v39 = -1;
              while (1)
              {
                v40 = *(v28 + 4);
                if (v40 < 0x100)
                {
                  v44 = v39;
                  v41 = WTF::StringImpl::hashSlowCase(v28);
                  v39 = v44;
                }

                else
                {
                  v41 = v40 >> 8;
                }

                if (++v39 > ((v26 + v21 - ((v41 ^ v23) & v22)) & v22))
                {
                  break;
                }

                if (v41 == v25)
                {
                  v42 = v39;
                  v43 = WTF::equal(*v27, v7, v10);
                  v39 = v42;
                  if (v43)
                  {
                    v30 = *(v27 + 8);
                    goto LABEL_36;
                  }
                }

                v29 = 0;
                v30 = 0;
                v26 = (v26 + 1) & v22;
                v27 = *(this + 9) + 16 * v26;
                v28 = *v27;
                if (!*v27)
                {
                  goto LABEL_19;
                }
              }
            }
          }
        }

        v29 = 0;
        v30 = 0;
LABEL_19:
        v31 = v45;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v6);
        }

        goto LABEL_20;
      }
    }

    else if (v6)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_7;
  }

  v30 = 0;
  v29 = 0;
LABEL_20:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v32 = v47[0];
  v47[0] = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v6);
  }

  return v29 | (v30 << 16);
}

uint64_t WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::getOptional(uint64_t *a1, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 2);
    v7 = v6 - 1;
    v8 = *(a1 + 4);
    v9 = *(*a2 + 4);
    if (v9 < 0x100)
    {
      v10 = WTF::StringImpl::hashSlowCase(*a2);
      v3 = *a1;
    }

    else
    {
      v10 = v9 >> 8;
    }

    v11 = (v10 ^ v8) & v7;
    v12 = v3 + 16 * v11;
    v13 = *v12;
    if (*v12)
    {
      v17 = -1;
      while (1)
      {
        v18 = *(v13 + 4);
        v19 = v18 < 0x100 ? WTF::StringImpl::hashSlowCase(v13) : v18 >> 8;
        if (++v17 > ((v11 + v6 - ((v19 ^ v8) & v7)) & v7))
        {
          break;
        }

        if (v19 == v10 && (WTF::equal(*v12, *a2, a3) & 1) != 0)
        {
          v14 = *(v12 + 8) & 0xFF00;
          LODWORD(v3) = *(v12 + 8);
          v15 = 0x10000;
          return v14 | v3 | v15;
        }

        LODWORD(v3) = 0;
        v14 = 0;
        v15 = 0;
        v11 = (v11 + 1) & v7;
        v12 = *a1 + 16 * v11;
        v13 = *v12;
        if (!*v12)
        {
          return v14 | v3 | v15;
        }
      }
    }

    LODWORD(v3) = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return v14 | v3 | v15;
}

BOOL WebKit::ScriptTrackingPrivacyFilter::shouldAllowAccess(WebKit::ScriptTrackingPrivacyFilter *a1, const WTF::URL *a2, const WebCore::SecurityOrigin *a3)
{
  if (!*a2)
  {
    return 0;
  }

  if (*(*a2 + 4))
  {
    v6 = WebCore::scriptCategoryAsFlag();
    if ((*(a1 + 48) & v6) != 0)
    {
      return (v6 & (WebKit::ScriptTrackingPrivacyFilter::lookup(a1, a2, a3) >> 16)) != 0;
    }
  }

  return 0;
}

uint64_t WebKit::FrameState::FrameState(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t *a20, uint64_t a21, uint64_t a22, char a23, uint64_t *a24, char a25, uint64_t *a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, int a35, int a36, int a37, _DWORD *a38, _DWORD *a39)
{
  *a1 = 1;
  v45 = *a2;
  *a2 = 0;
  *(a1 + 8) = v45;
  v46 = *a3;
  *a3 = 0;
  *(a1 + 16) = v46;
  v47 = *a4;
  *a4 = 0;
  *(a1 + 24) = v47;
  v48 = *a5;
  *a5 = 0;
  *(a1 + 32) = v48;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 0;
  v49 = (a1 + 56);
  *(a1 + 72) = 0;
  if (*(a8 + 16) == 1)
  {
    *v49 = 0;
    v49[1] = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v49, a8);
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = a16;
  *(a1 + 88) = a17;
  *(a1 + 96) = a18;
  *(a1 + 104) = a19;
  *(a1 + 108) = a9;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a20 + 24) == 1)
  {
    v50 = *a20;
    *a20 = 0;
    *(a1 + 120) = 0;
    *(a1 + 112) = v50;
    *(a1 + 128) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 120, a20 + 2);
    *(a1 + 136) = 1;
  }

  if (*(a21 + 16) == 1)
  {
    *(a1 + 144) = *a21;
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  if (*(a22 + 16) == 1)
  {
    *(a1 + 160) = *a22;
  }

  else
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  v51 = *a24;
  *a24 = 0;
  *(a1 + 184) = v51;
  v52 = *a26;
  *a26 = 0;
  *(a1 + 216) = 0;
  v53 = (a1 + 216);
  *(a1 + 176) = a23;
  *(a1 + 192) = a25;
  *(a1 + 200) = v52;
  *(a1 + 208) = a27;
  *(a1 + 209) = a28;
  *(a1 + 296) = 0;
  if (*(a29 + 80) == 1)
  {
    *v53 = 0;
    *(a1 + 224) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v53, a29);
    v54 = *(a29 + 16);
    *(a1 + 236) = *(a29 + 20);
    *(a1 + 232) = v54;
    *(a1 + 240) = *(a29 + 24);
    v55 = *(a29 + 32);
    *(a29 + 32) = 0;
    *(a1 + 248) = v55;
    v56 = *(a29 + 40);
    *(a29 + 40) = 0;
    *(a1 + 256) = v56;
    *(a1 + 264) = *(a29 + 48);
    v57 = *(a29 + 56);
    *(a29 + 56) = 0;
    *(a1 + 272) = v57;
    v58 = *(a29 + 64);
    *(a29 + 64) = 0;
    *(a1 + 280) = v58;
    *(a1 + 288) = *(a29 + 72);
    *(a1 + 296) = 1;
  }

  *(a1 + 304) = a10;
  *(a1 + 308) = a11;
  *(a1 + 312) = a12;
  *(a1 + 316) = a13;
  *(a1 + 320) = a30;
  *(a1 + 328) = a31;
  *(a1 + 336) = a14;
  *(a1 + 340) = a15;
  *(a1 + 344) = a32;
  *(a1 + 352) = a33;
  *(a1 + 356) = a34;
  *(a1 + 360) = a35;
  *(a1 + 364) = a36;
  *(a1 + 368) = a37;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 376, a38);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 392, a39);
  return a1;
}

uint64_t std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v4 = *(a2 + 12);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    if (v4)
    {
      v5 = WTF::fastMalloc(v4);
      *(a1 + 8) = v4;
      *a1 = v5;
      memcpy(v5, *a2, *(a2 + 12));
    }

    *(a1 + 16) = 1;
  }

  return a1;
}

WTF *WebKit::FrameState::copy@<X0>(WebKit::FrameState *this@<X0>, uint64_t *a2@<X8>)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v3 = WTF::fastMalloc(0x198);
  v4 = *(this + 40);
  LOBYTE(v64) = 0;
  v67 = 0;
  if (*(this + 72) == 1)
  {
    v5 = *(this + 17);
    v64 = 0;
    v65 = 0;
    v66 = v5;
    if (v5)
    {
      v47 = v4;
      v65 = v5;
      v64 = WTF::fastMalloc(v5);
      memcpy(v64, *(this + 7), *(this + 17));
      v4 = v47;
    }

    v67 = 1;
  }

  v6 = *(this + 18);
  if (v6)
  {
    v70[0] = *(this + 145);
    *(v70 + 7) = *(this + 19);
    v50 = v6;
  }

  else
  {
    v50 = 0;
  }

  v7 = *(this + 20);
  if (v7)
  {
    v69[0] = *(this + 161);
    *(v69 + 7) = *(this + 21);
    v49 = v7;
  }

  else
  {
    v49 = 0;
  }

  v8 = *(this + 10);
  v9 = *(this + 11);
  v10 = *(this + 12);
  v11 = *(this + 104);
  v12 = *(this + 27);
  v51 = *(this + 176);
  v54 = *(this + 192);
  v13 = *(this + 25);
  if (v13)
  {
    atomic_fetch_add(v13, 1u);
  }

  v52 = *(this + 209);
  v53 = *(this + 208);
  v59 = *(this + 20);
  v60 = *(this + 19);
  v14 = *(this + 42);
  v57 = *(this + 43);
  v56 = *(this + 352);
  v58 = *(this + 356);
  v62 = 0;
  v63 = 0;
  v15 = *(this + 97);
  v55 = v13;
  if (v15)
  {
    v48 = v4;
    if (v15 >> 29)
    {
      __break(0xC471u);
      goto LABEL_71;
    }

    v43 = WTF::fastMalloc((8 * v15));
    LODWORD(v63) = v15;
    v62 = v43;
    v4 = v48;
    if (*(this + 97))
    {
      v44 = v43;
      v45 = 0;
      do
      {
        v46 = v45;
        WebKit::FrameState::copy(&v68, *(*(this + 47) + 8 * v45));
        v45 = v46 + 1;
        *(v44 + 8 * v46) = v68;
      }

      while (v46 + 1 < *(this + 97));
      HIDWORD(v63) = v46 + 1;
      v4 = v48;
    }
  }

  v16 = *(this + 1);
  *v3 = 1;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(v3 + 8) = v16;
  v17 = *(this + 2);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(v3 + 16) = v17;
  v18 = *(this + 3);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(v3 + 24) = v18;
  v19 = *(this + 4);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *(v3 + 32) = v19;
  *(v3 + 40) = v4;
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](v3 + 56, &v64);
  *(v3 + 80) = v8;
  *(v3 + 88) = v9;
  *(v3 + 96) = v10;
  *(v3 + 104) = v11;
  *(v3 + 108) = v12;
  *(v3 + 112) = 0;
  *(v3 + 136) = 0;
  if (*(this + 136) == 1)
  {
    v20 = *(this + 14);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v21 = *(this + 33);
    *(v3 + 120) = 0;
    *(v3 + 128) = 0;
    *(v3 + 112) = v20;
    *(v3 + 132) = v21;
    if (!v21)
    {
LABEL_42:
      *(v3 + 136) = 1;
      goto LABEL_43;
    }

    if (v21 < 0x4924925)
    {
      v22 = 56 * v21;
      v23 = WTF::fastMalloc((56 * v21));
      *(v3 + 128) = v22 / 0x38;
      *(v3 + 120) = v23;
      v24 = *(this + 33);
      if (v24)
      {
        v25 = v23;
        v26 = *(this + 15);
        v27 = 56 * v24;
        while (1)
        {
          *v25 = 0;
          *(v25 + 48) = -1;
          if (*(v26 + 48) <= 1u)
          {
            break;
          }

          if (*(v26 + 48) == 2)
          {
            v30 = *v26;
            if (*v26)
            {
              atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
            }

            *v25 = v30;
            goto LABEL_40;
          }

LABEL_41:
          v25 += 56;
          v26 += 56;
          v27 -= 56;
          if (!v27)
          {
            goto LABEL_42;
          }
        }

        if (*(v26 + 48))
        {
          v31 = *v26;
          if (*v26)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          *v25 = v31;
          v32 = *(v26 + 8);
          v33 = *(v26 + 24);
          *(v25 + 40) = *(v26 + 40);
          *(v25 + 24) = v33;
          *(v25 + 8) = v32;
        }

        else
        {
          v28 = *(v26 + 12);
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 12) = v28;
          if (v28)
          {
            v29 = WTF::fastMalloc(v28);
            *(v25 + 8) = v28;
            *v25 = v29;
            memcpy(v29, *v26, *(v26 + 12));
          }
        }

LABEL_40:
        *(v25 + 48) = *(v26 + 48);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    __break(0xC471u);
LABEL_71:
    JUMPOUT(0x19DE620E8);
  }

LABEL_43:
  if (v6)
  {
    *(v3 + 144) = v50;
    *(v3 + 145) = v70[0];
    *(v3 + 152) = *(v70 + 7);
    if (v7)
    {
LABEL_45:
      *(v3 + 160) = v49;
      *(v3 + 161) = v69[0];
      *(v3 + 168) = *(v69 + 7);
      goto LABEL_48;
    }
  }

  else
  {
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    if (v7)
    {
      goto LABEL_45;
    }
  }

  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
LABEL_48:
  *(v3 + 176) = v51;
  v34 = *(this + 23);
  if (v34)
  {
    atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
  }

  *(v3 + 216) = 0;
  *(v3 + 184) = v34;
  *(v3 + 192) = v54;
  *(v3 + 200) = v55;
  *(v3 + 208) = v53;
  *(v3 + 209) = v52;
  *(v3 + 296) = 0;
  if (*(this + 296) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3 + 216, this + 27);
    v35 = *(this + 58);
    *(v3 + 236) = *(this + 236);
    *(v3 + 232) = v35;
    *(v3 + 240) = *(this + 120);
    v36 = *(this + 31);
    if (v36)
    {
      atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
    }

    *(v3 + 248) = v36;
    v37 = *(this + 32);
    if (v37)
    {
      atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    }

    *(v3 + 256) = v37;
    *(v3 + 264) = *(this + 132);
    v38 = *(this + 34);
    if (v38)
    {
      atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
    }

    *(v3 + 272) = v38;
    v39 = *(this + 35);
    if (v39)
    {
      atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
    }

    *(v3 + 280) = v39;
    *(v3 + 288) = *(this + 288);
    *(v3 + 296) = 1;
  }

  *(v3 + 304) = v60;
  *(v3 + 320) = v59;
  *(v3 + 336) = v14;
  *(v3 + 344) = v57;
  *(v3 + 352) = v56;
  *(v3 + 356) = v58;
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3 + 376, &v62);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3 + 392, this + 392);
  *a2 = v3;
  result = WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v40);
  if (v67 == 1)
  {
    result = v64;
    if (v64)
    {
      v64 = 0;
      v65 = 0;
      return WTF::fastFree(result, v42);
    }
  }

  return result;
}

unsigned int *WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      WTF::VectorDestructor<true,WTF::AtomString>::destruct((*a1 + 8 * v5), (*a1 + 8 * v4));
      a1[3] = v5;
      LODWORD(v4) = v5;
    }

    else if (v5 > a1[2])
    {
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
      LODWORD(v4) = a1[3];
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v14 = 8 * v4;
      do
      {
        v15 = v6;
        v16 = v7;
        WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(v7, v6);
        v6 = v15 + 1;
        v7 = v16 + 1;
        v14 -= 8;
      }

      while (v14);
      v6 = *a2;
      LODWORD(v4) = a1[3];
      v7 = *a1;
    }

    v8 = *(a2 + 12);
    if (v4 != v8)
    {
      v9 = &v7[v4];
      v10 = &v6[v4];
      v11 = 8 * v8 - 8 * v4;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        *v9++ = v12;
        ++v10;
        v11 -= 8;
      }

      while (v11);
      LODWORD(v4) = *(a2 + 12);
    }

    a1[3] = v4;
  }

  return a1;
}

WebKit::FrameState *WebKit::FrameState::replaceChildFrameState(WebKit::FrameState *result, WebKit::FrameState **a2)
{
  v2 = *(result + 97);
  if (!v2)
  {
    return result;
  }

  v4 = *(result + 47);
  v5 = 8 * v2;
  while (1)
  {
    v6 = *a2;
    v7 = *(*v4 + 48);
    v8 = *(*a2 + 48);
    if (v7 == 1 && v8 != 0)
    {
      break;
    }

    if (v7 == v8)
    {
      goto LABEL_15;
    }

LABEL_11:
    ++*v6;
    v10 = v6;
    WebKit::FrameState::replaceChildFrameState();
    result = v10;
    if (v10)
    {
      result = WTF::RefCounted<WebKit::FrameState>::deref(v10);
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return result;
    }
  }

  if (*(*v4 + 5) != *(v6 + 5))
  {
    goto LABEL_11;
  }

LABEL_15:
  *a2 = 0;
  result = *v4;
  *v4 = v6;
  if (result)
  {

    return WTF::RefCounted<WebKit::FrameState>::deref(result);
  }

  return result;
}

void std::allocator<webrtc::InterfaceAddress>::allocate_at_least[abi:sn200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:sn200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<webrtc::InterfaceAddress>,webrtc::InterfaceAddress*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    while (a3)
    {
      *a3 = &off_1F10EE1B0;
      *(a3 + 8) = *(v5 + 2);
      *(a3 + 12) = *(v5 + 12);
      *a3 = &off_1F110D978;
      *(a3 + 28) = *(v5 + 7);
      v5 += 4;
      a3 += 32;
      v4 += 32;
      if (v5 == a2)
      {
        v6 = result;
        while (result)
        {
          v7 = result + 4;
          (**result)(result);
          v6 += 4;
          result = v7;
          if (v7 == a2)
          {
            return result;
          }
        }

        break;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t std::__split_buffer<webrtc::InterfaceAddress>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIcLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS5_EUlRT_E_S5_S8_vE3mapERS5_S8_RKSB_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v4 = result;
    result = WTF::fastMalloc(*(a2 + 12));
    *(v4 + 8) = v2;
    *v4 = result;
    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = *a2;
      v7 = *(v4 + 12);
      do
      {
        v8 = *v6++;
        *(*v4 + v7) = v8;
        v7 = *(v4 + 12) + 1;
        *(v4 + 12) = v7;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN6WebKit13WebRTCNetwork16InterfaceAddressELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS8_EUlRT_E_S8_SB_vE3mapERS8_SB_RKSE_(uint64_t result, __int128 **a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    if (v2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = result;
      v5 = 24 * v2;
      result = WTF::fastMalloc((24 * v2));
      *(v4 + 8) = v5 / 0x18;
      *v4 = result;
      v6 = *(a2 + 3);
      if (v6)
      {
        v7 = *a2;
        v8 = *(v4 + 12);
        v9 = 24 * v6;
        do
        {
          v10 = *v4 + 24 * v8;
          v11 = *v7;
          *(v10 + 16) = *(v7 + 2);
          *v10 = v11;
          v8 = *(v4 + 12) + 1;
          *(v4 + 12) = v8;
          v7 = (v7 + 24);
          v9 -= 24;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(uint64_t a1, unsigned int a2)
{
  v30 = *(a1 + 8);
  v31 = *a1;
  v4 = WTF::fastMalloc((16 * a2));
  if (a2)
  {
    v5 = a2;
    v6 = (v4 + 8);
    do
    {
      *(v6 - 1) = 0;
      *v6 = 0;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  *a1 = v4;
  *(a1 + 8) = a2;
  result = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
  *(a1 + 16) = result;
  *(a1 + 20) = 0;
  if (v30)
  {
    for (i = 0; i != v30; ++i)
    {
      v10 = (v31 + 16 * i);
      v11 = *v10;
      if (*v10)
      {
        v12 = *(a1 + 8);
        v13 = *(a1 + 16);
        v14 = *(v11 + 4);
        v32 = i;
        if (v14 < 0x100)
        {
          v15 = WTF::StringImpl::hashSlowCase(v11);
        }

        else
        {
          v15 = v14 >> 8;
        }

        v16 = v12 - 1;
        v17 = (v15 ^ v13) & (v12 - 1);
        v18 = *a1 + 16 * v17;
        v19 = *v18;
        if (*v18)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 4);
            if (v21 < 0x100)
            {
              v22 = WTF::StringImpl::hashSlowCase(v19);
            }

            else
            {
              v22 = v21 >> 8;
            }

            v23 = (v17 + v12 - ((v22 ^ v13) & v16)) & v16;
            if (v20 > v23)
            {
              v24 = *v10;
              *v10 = 0;
              v25 = *(v10 + 4);
              v26 = *v18;
              *v18 = 0;
              v27 = *v10;
              *v10 = v26;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v8);
              }

              *(v10 + 4) = *(v18 + 8);
              v28 = *v18;
              *v18 = v24;
              if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v8);
              }

              *(v18 + 8) = v25;
              v20 = v23;
            }

            v17 = (v17 + 1) & v16;
            ++v20;
            v18 = *a1 + 16 * v17;
            v19 = *v18;
          }

          while (*v18);
        }

        WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>(v18, v10);
        v29 = *v10;
        *v10 = 0;
        i = v32;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v8);
        }
      }
    }
  }

  else if (!v31)
  {
    return result;
  }

  return WTF::fastFree(v31, v8);
}

WTF::StringImpl *WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>,WTF::KeyValuePair<WTF::String,WTF::OptionSet<WebCore::ScriptTrackingPrivacyFlag>>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  result = *a1;
  *a1 = v4;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(a1 + 8) = *(a2 + 4);
  return result;
}

void sub_19DE63784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  if (a17 >= 2u && a17 != 255 && a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE63C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6445C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, a2);
  }

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a41, 8);
  if (v43)
  {
    CFRelease(*(v43 + 8));
  }

  if (v42)
  {
  }

  if (v41)
  {
  }

  if (a10)
  {
  }

  if (a11)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void *__copy_helper_block_e8_48c71_ZTSN3WTF9RetainPtrIU39objcproto28UITextSelectionHighlightView6UIViewEE56c31_ZTSN3WTF9RetainPtrI8NSStringEE64c36_ZTSN3WTF9RetainPtrI12NSMutableSetEE(void *result, void *a2)
{
  v3 = result;
  v4 = a2[6];
  result[6] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = a2[7];
  v3[7] = v5;
  if (v5)
  {
    result = v5;
  }

  v6 = a2[8];
  v3[8] = v6;
  if (v6)
  {
    return v6;
  }

  return result;
}

void sub_19DE646F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v3)
  {
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c71_ZTSN3WTF9RetainPtrIU39objcproto28UITextSelectionHighlightView6UIViewEE56c31_ZTSN3WTF9RetainPtrI8NSStringEE64c36_ZTSN3WTF9RetainPtrI12NSMutableSetEE(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
  }
}

void sub_19DE65760(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 88, a2);
  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 72, v14);
  v16 = *(v12 + 56);
  if (v16)
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    WTF::fastFree(v16, v15);
  }

  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

double mapRootViewToViewport(CGPoint a1, WKContentView *a2)
{
  x = a1.x;
  v4 = [(WKContentView *)a2 webView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  [v5 bounds];
  v8 = v7;
  v10 = v9;
  [v5 _computedObscuredInset];
  v12 = v11;
  v14 = v13;
  [v5 _contentZoomScale];
  v16 = v15;
  [v5 currentlyVisibleContentInsetsWithScale:? obscuredInsets:?];
  [v5 convertPoint:a2 toView:{v8 + v14 + v17 * v16, v10 + v12 + v18 * v16}];
  v20 = v19;
  if (v5)
  {
  }

  return x - v20;
}

void sub_19DE65898(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE666B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::HideEditMenuScope::operator new(WebKit::HideEditMenuScope *this, void *a2)
{
  if (WebKit::HideEditMenuScope::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::HideEditMenuScope::s_heapRef, a2);
  }

  else
  {
    return WebKit::HideEditMenuScope::operatorNewSlow(0x10);
  }
}

uint64_t WebKit::HideEditMenuScope::HideEditMenuScope(uint64_t a1, void *a2, int a3)
{
  objc_initWeak(a1, a2);
  *(a1 + 8) = a3;
  [objc_msgSend(a2 "textInteractionAssistant")];
  [a2 setShouldRestoreEditMenuAfterOverflowScrolling:{objc_msgSend(objc_msgSend(a2, "view"), "isPresentingEditMenu")}];
  [objc_msgSend(a2 "asyncTextInteraction")];
  if (a3)
  {
    [objc_msgSend(a2 "textSelectionDisplayInteraction")];
  }

  return a1;
}

void WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::moveOverlapping(id *from, id *a2, id *a3)
{
  v3 = a2;
  if (from <= a3)
  {
    if (a2 != from)
    {
      v5 = (a3 + a2 - from - 8);
      v6 = v5;
      do
      {
        --v3;
        *v6-- = 0;
        objc_moveWeak(v5, v3);
        objc_destroyWeak(v3);
        v5 = v6;
      }

      while (v3 != from);
    }
  }

  else
  {

    WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::move(from, a2, a3);
  }
}

void WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::move(id *from, id *a2, id *to)
{
  if (from != a2)
  {
    v4 = from;
    v5 = to;
    do
    {
      *v5++ = 0;
      objc_moveWeak(to, v4);
      objc_destroyWeak(v4++);
      to = v5;
    }

    while (v4 != a2);
  }
}

uint64_t WebKit::WKTouchEvent::WKTouchEvent(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 56) = v7;
  LODWORD(v7) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 64) = v7;
  LODWORD(v7) = *(a2 + 17);
  *(a2 + 17) = 0;
  *(a1 + 72) = 0;
  *(a1 + 68) = v7;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 88, a2 + 22);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_19DE66ABC(_Unwind_Exception *a1, void *a2)
{
  v7 = *v4;
  if (*v4)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v9 = *v5;
  if (*v5)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v9, v8);
  }

  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 112 * a1[3] <= a3)
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

    WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0x2492493)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 112 * a2;
      result = WTF::fastMalloc((112 * a2));
      v2[2] = (613566757 * (v5 >> 4)) >> 32;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 112 * v4;
        v9 = v3 + 88;
        do
        {
          WebKit::WKTouchEvent::WKTouchEvent(v7, (v9 - 88));
          WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v10);
          WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9 - 16, v11);
          result = *(v9 - 32);
          if (result)
          {
            *(v9 - 32) = 0;
            *(v9 - 24) = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 += 112;
          v9 += 112;
          v8 -= 112;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

WTF *WebKit::SharedStringHashStore::processPendingOperations(WebKit::SharedStringHashStore *this, void *a2)
{
  v2 = this;
  v4 = (this + 56);
  v3 = *(this + 7);
  v5 = *(this + 17);
  if (v5)
  {
    v6 = 0;
    v7 = 8 * v5;
    do
    {
      v8 = *v3;
      v3 += 2;
      if (!v8)
      {
        ++v6;
      }

      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  v9 = *(this + 5);
  v10 = 2 * (*(this + 4) + v6);
  if (v10)
  {
    v12 = __clz(v10 - 1);
    if (!v12)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      v45 = 0;
      LODWORD(v46) = 0;
      WTF::fastFree(this, a2);
LABEL_70:
      result = v47;
      if (v47)
      {
        v47 = 0;
        LODWORD(v48) = 0;
        return WTF::fastFree(result, a2);
      }

      return result;
    }

    v11 = 1 << -v12;
  }

  else
  {
    v11 = 1;
  }

  v13 = WTF::pageSize(this) >> 2;
  if (v13 > v11)
  {
    v11 = v13;
  }

  if (v9 >= v11)
  {
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v30 = v6;
    if (v6)
    {
      if (v6 >> 30)
      {
        __break(0xC471u);
        goto LABEL_78;
      }

      LODWORD(v48) = v6;
      v47 = WTF::fastMalloc((4 * v6));
    }

    v31 = *(v2 + 17);
    v32 = v31 - v6;
    if (v31 != v30)
    {
      if (v32 >> 30)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE6711CLL);
      }

      LODWORD(v46) = v32;
      v45 = WTF::fastMalloc((4 * v32));
      v30 = *(v2 + 17);
      LODWORD(v31) = *(v2 + 17);
    }

    if (!v31)
    {
LABEL_67:
      WTF::Vector<WebKit::SharedStringHashStore::Operation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, 0);
      if (HIDWORD(v48) | HIDWORD(v46))
      {
        (*(**(v2 + 1) + 24))(*(v2 + 1), &v47, &v45);
      }

      this = v45;
      if (!v45)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    v33 = *v4;
    v34 = 8 * v30;
    v35 = (*v4 + 4);
    while (1)
    {
      v36 = *(v35 - 1);
      if (v36 == 1)
      {
        Slot = WebKit::SharedStringHashTableReadOnly::findSlot(v2 + 24, *v35);
        if (!Slot || !*Slot)
        {
          goto LABEL_66;
        }

        *Slot = 0;
        if (HIDWORD(v46) == v46)
        {
          v40 = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, HIDWORD(v46) + 1, v35);
          v42 = v45 + 4 * HIDWORD(v46);
          v43 = -1;
        }

        else
        {
          v42 = v45 + 4 * HIDWORD(v46);
          v43 = -1;
          v40 = v35;
        }

        v44 = &v46 + 4;
      }

      else
      {
        if (v36)
        {
          goto LABEL_66;
        }

        v37 = *v35;
        v38 = WebKit::SharedStringHashTableReadOnly::findSlot(v2 + 24, *v35);
        if (*v38)
        {
          goto LABEL_66;
        }

        *v38 = v37;
        v39 = HIDWORD(v48);
        if (HIDWORD(v48) == v48)
        {
          v40 = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v47, HIDWORD(v48) + 1, v35);
          v39 = HIDWORD(v48);
        }

        else
        {
          v40 = (v33 + 4);
        }

        v42 = v47 + 4 * v39;
        v43 = 1;
        v44 = &v48 + 4;
      }

      *v42 = *v40;
      ++*v44;
      *(v2 + 4) += v43;
LABEL_66:
      v33 += 8;
      v35 += 2;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_67;
      }
    }
  }

  result = WebCore::SharedMemory::allocate((4 * v11));
  if (!v47)
  {
    return result;
  }

  bzero(*(v47 + 2), *(v47 + 1));
  v15 = *(v2 + 3);
  if (v15)
  {
    atomic_fetch_add(v15, 1u);
  }

  v16 = *(v2 + 5);
  v17 = v47;
  v47 = 0;
  v45 = v17;
  WebKit::SharedStringHashTableReadOnly::setSharedMemory(v2 + 24, &v45);
  this = v45;
  if (v45)
  {
    this = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v45);
  }

  *(v2 + 5) = v11;
  if (!v15)
  {
    goto LABEL_29;
  }

  v18 = *(v15 + 8);
  if (v18 != 4 * v16)
  {
    __break(0xC471u);
LABEL_78:
    JUMPOUT(0x19DE67114);
  }

  if ((v18 & 3) != 0)
  {
    goto LABEL_73;
  }

  if (v18)
  {
    v19 = *(v15 + 16);
    do
    {
      v20 = *v19;
      if (*v19)
      {
        v21 = WebKit::SharedStringHashTableReadOnly::findSlot(v2 + 24, *v19);
        if (!*v21)
        {
          *v21 = v20;
        }
      }

      ++v19;
      v18 -= 4;
    }

    while (v18);
  }

LABEL_29:
  v22 = *(v2 + 17);
  if (v22)
  {
    v23 = (*(v2 + 7) + 4);
    for (i = 8 * v22; i; i -= 8)
    {
      v25 = *(v23 - 1);
      if (v25 == 1)
      {
        v29 = WebKit::SharedStringHashTableReadOnly::findSlot(v2 + 24, *v23);
        if (!v29 || !*v29)
        {
          goto LABEL_39;
        }

        *v29 = 0;
        v28 = -1;
      }

      else
      {
        if (v25)
        {
          goto LABEL_39;
        }

        v26 = *v23;
        v27 = WebKit::SharedStringHashTableReadOnly::findSlot(v2 + 24, *v23);
        if (*v27)
        {
          goto LABEL_39;
        }

        *v27 = v26;
        v28 = 1;
      }

      *(v2 + 4) += v28;
LABEL_39:
      v23 += 2;
    }
  }

  WTF::Vector<WebKit::SharedStringHashStore::Operation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, 0);
  (*(**(v2 + 1) + 16))(*(v2 + 1));
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v15);
  }

  result = v47;
  v47 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::SharedStringHashStore>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F110DA38;
  v5[1] = a3;
  v5[2] = WebKit::SharedStringHashStore::processPendingOperations;
  v5[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v5;
  return result;
}

atomic_uint *WebKit::SharedStringHashStore::createSharedMemoryHandle(WebKit::SharedStringHashStore *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    atomic_fetch_add(v1, 1u);
    WebCore::SharedMemory::createHandle();

    return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v1);
  }

  else
  {

    return WebCore::SharedMemory::createHandle();
  }
}

uint64_t WebKit::SharedStringHashStore::scheduleAddition(WebKit::SharedStringHashStore *this, int a2)
{
  LODWORD(v8) = 0;
  HIDWORD(v8) = a2;
  v3 = *(this + 17);
  if (v3 == *(this + 16))
  {
    v4 = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 56, v3 + 1, &v8);
    v3 = *(this + 17);
    v5 = *(this + 7);
    v6 = *v4;
  }

  else
  {
    v5 = *(this + 7);
    v6 = v8;
  }

  *(v5 + 8 * v3) = v6;
  ++*(this + 17);
  result = WTF::RunLoop::TimerBase::isActive((this + 72));
  if ((result & 1) == 0)
  {
    return WTF::RunLoop::TimerBase::start();
  }

  return result;
}

uint64_t WebKit::SharedStringHashStore::scheduleRemoval(WebKit::SharedStringHashStore *this, int a2)
{
  LODWORD(v8) = 1;
  HIDWORD(v8) = a2;
  v3 = *(this + 17);
  if (v3 == *(this + 16))
  {
    v4 = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 56, v3 + 1, &v8);
    v3 = *(this + 17);
    v5 = *(this + 7);
    v6 = *v4;
  }

  else
  {
    v5 = *(this + 7);
    v6 = v8;
  }

  *(v5 + 8 * v3) = v6;
  ++*(this + 17);
  result = WTF::RunLoop::TimerBase::isActive((this + 72));
  if ((result & 1) == 0)
  {
    return WTF::RunLoop::TimerBase::start();
  }

  return result;
}

_DWORD *WebKit::SharedStringHashStore::contains(WebKit::SharedStringHashStore *this, unsigned int a2)
{
  WebKit::SharedStringHashStore::flushPendingChanges(this);
  result = WebKit::SharedStringHashTableReadOnly::findSlot(this + 24, a2);
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

WTF *WebKit::SharedStringHashStore::flushPendingChanges(WebKit::SharedStringHashStore *this)
{
  result = WTF::RunLoop::TimerBase::isActive((this + 72));
  if (result)
  {
    WTF::RunLoop::TimerBase::stop((this + 72));

    return WebKit::SharedStringHashStore::processPendingOperations(this, v3);
  }

  return result;
}

atomic_uint *WebKit::SharedStringHashStore::clear(WebKit::SharedStringHashStore *this)
{
  WTF::RunLoop::TimerBase::stop((this + 72));
  WTF::Vector<WebKit::SharedStringHashStore::Operation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 14, 0);
  *(this + 2) = 0;

  return WebKit::SharedStringHashTable::clear(this + 6);
}

atomic_uint *WebKit::SharedStringHashTable::clear(atomic_uint *this)
{
  if (*this)
  {
    v1 = this;
    bzero(*(*this + 16), *(*this + 8));
    v2 = 0;
    WebKit::SharedStringHashTableReadOnly::setSharedMemory(v1, &v2);
    this = v2;
    if (v2)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
    }
  }

  return this;
}

atomic_uint *WebKit::SharedStringHashTableReadOnly::setSharedMemory(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *a1;
  *a1 = v3;
  if (result)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    v3 = *a1;
  }

  if (!v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    goto LABEL_6;
  }

  v5 = *(v3 + 1);
  if ((v5 & 3) == 0)
  {
    v6 = v5 >> 2;
    *(a1 + 16) = *(v3 + 2);
    *(a1 + 24) = v6;
    LODWORD(v3) = v6 - 1;
LABEL_6:
    *(a1 + 8) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WebKit::SharedStringHashTableReadOnly::findSlot(uint64_t this, unsigned int a2)
{
  if (!*this)
  {
    return 0;
  }

  v2 = *(this + 24);
  v3 = *(this + 8);
  v4 = v3 & a2;
  if (v2 <= (v3 & a2))
  {
LABEL_14:
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = *(this + 16);
    v7 = v4;
    while (1)
    {
      v8 = *(v6 + 4 * v7);
      if (!v8 || v8 == a2)
      {
        return v6 + 4 * v7;
      }

      v10 = (~a2 + (a2 >> 23)) ^ ((~a2 + (a2 >> 23)) << 12);
      v11 = v10 ^ (v10 >> 7) ^ (4 * (v10 ^ (v10 >> 7)));
      v12 = v11 ^ (v11 >> 20) | 1;
      if (!v5)
      {
        v5 = v12;
      }

      v4 = (v5 + v4) & v3;
      v7 = v4;
      if (v2 <= v4)
      {
        goto LABEL_14;
      }
    }
  }

  return this;
}

uint64_t WebKit::SharedStringHashTableReadOnly::SharedStringHashTableReadOnly(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void WebKit::SharedStringHashTableReadOnly::~SharedStringHashTableReadOnly(atomic_uint **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }
}

uint64_t WebKit::shouldTransform(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1) == 1)
  {
    CFRetain(*(a1 + 8));
    v4 = *(a1 + 28);
    if (v4)
    {
      v5 = *(a1 + 16);
      v6 = 8 * v4;
      while (!*v5 || (WebKit::shouldTransform(*v5, a2) & 1) == 0)
      {
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_22;
    }

LABEL_7:
    CFRelease(*(a1 + 8));
  }

  if ((*(*a1 + 16))(a1) == 9)
  {
    CFRetain(*(a1 + 8));
    v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 16));
    v8 = v7;
    v10 = v9;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 + 16 * *(v11 - 4));
    }

    else
    {
      v12 = 0;
    }

    if (v12 != v7)
    {
      while (1)
      {
        v13 = v8[1];
        if (v13)
        {
          CFRetain(*(v13 + 8));
          shouldTransform = WebKit::shouldTransform(v13, a2);
          CFRelease(*(v13 + 8));
          if (shouldTransform)
          {
            break;
          }
        }

        do
        {
          v8 += 2;
        }

        while (v8 != v10 && (*v8 + 1) <= 1);
        if (v8 == v12)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      CFRelease(*(a1 + 8));
      return 1;
    }

LABEL_18:
    CFRelease(*(a1 + 8));
  }

  v15 = *(*a2 + 16);

  return v15(a2, a1);
}

API::Object *WebKit::transformGraph@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, API::Object **a3@<X8>)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = (*(*a1 + 16))(a1);
  if (v6 == 1)
  {
    if (v7 != 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE67BF0);
    }

    v44 = 0;
    v45 = 0;
    v8 = *(a1 + 28);
    if (v8)
    {
      if (v8 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE67BF8);
      }

      v9 = WTF::fastMalloc((8 * v8));
      LODWORD(v45) = v8;
      v44 = v9;
      v10 = *(a1 + 28);
      if (v10)
      {
        v11 = v9;
        v12 = 0;
        do
        {
          v13 = *(*(a1 + 16) + 8 * v12);
          if (v13)
          {
            WebKit::transformGraph(&v47, v13, a2);
            v14 = v47;
            v10 = *(a1 + 28);
          }

          else
          {
            v14 = 0;
          }

          v15 = v12 + 1;
          *(v11 + 8 * v12) = v14;
          v12 = v15;
        }

        while (v15 < v10);
        HIDWORD(v45) = v15;
      }
    }

    API::Array::create(&v44, a3);
    return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v16);
  }

  else
  {
    if (v7 == 9)
    {
      if ((*(*a1 + 16))(a1) != 9)
      {
        __break(0xC471u);
LABEL_64:
        JUMPOUT(0x19DE67BB0);
      }

      v43 = a3;
      v47 = 0;
      v18 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 16));
      v20 = v18;
      v22 = v21;
      v23 = *(a1 + 16);
      if (v23)
      {
        v24 = (v23 + 16 * *(v23 - 4));
      }

      else
      {
        v24 = 0;
      }

      if (v24 == v18)
      {
        goto LABEL_58;
      }

LABEL_22:
      v26 = v20[1];
      if (v26)
      {
        CFRetain(*(v26 + 1));
        WebKit::transformGraph(&v46, v26, a2);
        WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(&v47, v20, &v46, &v44);
        v41 = v46;
        v46 = 0;
        if (v41)
        {
          CFRelease(*(v41 + 8));
        }

        CFRelease(*(v26 + 1));
        goto LABEL_46;
      }

      if (*v20 == -1)
      {
        __break(0xC471u);
        goto LABEL_64;
      }

      if (!*v20)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE67BD0);
      }

      v27 = v47;
      if (v47 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v47, 0), (v27 = v47) != 0))
      {
        v28 = *(v27 - 8);
      }

      else
      {
        v28 = 0;
      }

      v29 = *(*v20 + 4);
      if (v29 < 0x100)
      {
        v30 = WTF::StringImpl::hashSlowCase(*v20);
      }

      else
      {
        v30 = v29 >> 8;
      }

      v31 = 0;
      for (i = 1; ; ++i)
      {
        v33 = v30 & v28;
        v34 = (v27 + 16 * (v30 & v28));
        v35 = *v34;
        if (*v34 == -1)
        {
          v31 = (v27 + 16 * v33);
        }

        else
        {
          if (!v35)
          {
            if (v31)
            {
              *v31 = 0;
              v31[1] = 0;
              --*(v47 - 16);
              v34 = v31;
            }

            WTF::String::operator=(v34, v20);
            v36 = v34[1];
            v34[1] = 0;
            if (v36)
            {
              CFRelease(*(v36 + 8));
            }

            v37 = v47;
            if (v47)
            {
              v38 = *(v47 - 12) + 1;
            }

            else
            {
              v38 = 1;
            }

            *(v47 - 12) = v38;
            v39 = (*(v37 - 16) + v38);
            v40 = *(v37 - 4);
            if (v40 > 0x400)
            {
              if (v40 <= 2 * v39)
              {
LABEL_45:
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v47, v34);
              }
            }

            else if (3 * v40 <= 4 * v39)
            {
              goto LABEL_45;
            }

            do
            {
LABEL_46:
              v20 += 2;
            }

            while (v20 != v22 && *v20 + 1 <= 1);
            if (v20 == v24)
            {
LABEL_58:
              v42 = API::Object::newObject(0x18uLL, 9);
              result = API::Object::Object(v42);
              *result = &unk_1F110EAE0;
              *(result + 2) = v47;
              *v43 = result;
              return result;
            }

            goto LABEL_22;
          }

          if (WTF::equal(v35, *v20, v19))
          {
            goto LABEL_46;
          }
        }

        v30 = i + v33;
      }
    }

    v25 = *(*a2 + 24);

    return v25(a2, a1);
  }
}

uint64_t WebKit::WebBackForwardListFrameItem::WebBackForwardListFrameItem(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 16), a2);
  v8 = *(a2 + 16);
  atomic_fetch_add(v8, 1u);
  *(a1 + 16) = v8;
  if (!*(*a4 + 160))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE67FF8);
  }

  *(a1 + 24) = *(*a4 + 160);
  v9 = *a4;
  *a4 = 0;
  *(a1 + 40) = v9;
  if (a3)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add(v10, 1u);
    }
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = v10;
  *(a1 + 64) = 0;
  *(*(a1 + 40) + 144) = *(a2 + 32);
  {
    WebKit::WebBackForwardListFrameItem::allItems(void)::items = 0;
  }

  v11 = *(a1 + 40);
  v12 = (v11 + 160);
  if (!*(v11 + 160))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68018);
  }

  v14 = *(v11 + 144);
  v13 = (v11 + 144);
  if (!v14)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68038);
  }

  v15 = *v13;
  v52 = *v12;
  v53 = v15;
  if (v52 == 0)
  {
    if (v53 == 0)
    {
      goto LABEL_58;
    }
  }

  else if (*(&v52 + 1) == -1)
  {
LABEL_58:
    __break(0xC471u);
    JUMPOUT(0x19DE67D3CLL);
  }

  v16 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
  if (WebKit::WebBackForwardListFrameItem::allItems(void)::items
    || (WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::expand(),
        (v16 = WebKit::WebBackForwardListFrameItem::allItems(void)::items) != 0))
  {
    v17 = *(v16 - 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v52, *(&v52 + 1));
  v19 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v53);
  v22 = 0;
  v23 = (0xD7862706ELL * (277951225 * v18 + 95187966 * v19)) >> 4;
  for (i = 1; ; ++i)
  {
    v25 = v23 & v17;
    v26 = v16 + 40 * v25;
    v27 = *(v26 + 8);
    if (*v26 == 0)
    {
      v20 = *(v26 + 24);
      if (*(v26 + 16) == 0)
      {
        break;
      }
    }

    if (*v26 == v52 && v27 == *(&v52 + 1) && *(v26 + 16) == v53 && *(v26 + 24) == *(&v53 + 1))
    {
      goto LABEL_41;
    }

    if (v27 == -1)
    {
      v22 = v16 + 40 * v25;
    }

    LODWORD(v23) = i + v25;
  }

  if (v22)
  {
    *(v22 + 32) = 0;
    *v22 = 0u;
    *(v22 + 16) = 0u;
    --*(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 16);
    v26 = v22;
  }

  *v26 = v52;
  *(v26 + 16) = v53;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v30 = *a1;
  atomic_fetch_add(*a1, 1u);
  v31 = *(v26 + 32);
  *(v26 + 32) = v30;
  if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31);
    WTF::fastFree(v31, v20);
  }

  v32 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
  if (WebKit::WebBackForwardListFrameItem::allItems(void)::items)
  {
    v33 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 12) + 1;
  }

  else
  {
    v33 = 1;
  }

  *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 12) = v33;
  v34 = (*(v32 - 16) + v33);
  v35 = *(v32 - 4);
  if (v35 <= 0x400)
  {
    if (3 * v35 > 4 * v34)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v35 <= 2 * v34)
  {
LABEL_40:
    WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::expand();
  }

LABEL_41:
  *&v21 = 0;
  v36 = *(a1 + 40);
  v37 = *(v36 + 376);
  *&v52 = v37;
  v38 = *(v36 + 388);
  DWORD2(v52) = *(v36 + 384);
  HIDWORD(v52) = v38;
  v51 = v21;
  *(v36 + 376) = 0;
  *(v36 + 384) = 0;
  if (v38)
  {
    v39 = 8 * v38;
    do
    {
      v40 = WTF::fastMalloc(0x48);
      v41 = WebKit::WebBackForwardListFrameItem::WebBackForwardListFrameItem(v40, a2, a1, v37);
      v50 = v41;
      v42 = *(a1 + 68);
      if (v42 == *(a1 + 64))
      {
        v43 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 56, v42 + 1, &v50);
        v42 = *(a1 + 68);
        v44 = *(a1 + 56);
        v45 = *v43;
        *v43 = 0;
        *(v44 + 8 * v42) = v45;
      }

      else
      {
        v46 = *(a1 + 56);
        v50 = 0;
        *(v46 + 8 * v42) = v41;
      }

      *(a1 + 68) = v42 + 1;
      v47 = v50;
      v50 = 0;
      if (v47)
      {
        WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v47 + 8), v20);
      }

      v37 += 8;
      v39 -= 8;
    }

    while (v39);
  }

  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v20);
  WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v48);
  return a1;
}

void WebKit::WebBackForwardListFrameItem::~WebBackForwardListFrameItem(WebKit::WebBackForwardListFrameItem *this, void *a2)
{
  {
    WebKit::WebBackForwardListFrameItem::allItems(void)::items = 0;
  }

  v3 = *(this + 5);
  v4 = (v3 + 160);
  if (!*(v3 + 160))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68374);
  }

  v6 = *(v3 + 144);
  v5 = (v3 + 144);
  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68394);
  }

  v29 = *v4;
  v30 = *v5;
  v7 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
  if (WebKit::WebBackForwardListFrameItem::allItems(void)::items)
  {
    if (v29 == 0)
    {
      if (v30 == 0)
      {
        goto LABEL_63;
      }
    }

    else if (*(&v29 + 1) == -1)
    {
LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x19DE680ECLL);
    }

    v8 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 8);
    v9 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v29, *(&v29 + 1));
    v10 = v8 & ((0xD7862706ELL * (277951225 * v9 + 95187966 * WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v30))) >> 4);
    for (i = 1; ; ++i)
    {
      v12 = (v7 + 40 * v10);
      if (*v12 == v29 && v12[1] == *(&v29 + 1))
      {
        a2 = v12[3];
        if (v12[2] == v30 && a2 == *(&v30 + 1))
        {
          break;
        }
      }

      if (*v12 == 0 && *(v12 + 1) == 0)
      {
        v15 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
        if (!WebKit::WebBackForwardListFrameItem::allItems(void)::items)
        {
          goto LABEL_36;
        }

        v12 = (WebKit::WebBackForwardListFrameItem::allItems(void)::items + 40 * *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 4));
        goto LABEL_27;
      }

      v10 = (v10 + i) & v8;
    }

    v15 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
    if (!WebKit::WebBackForwardListFrameItem::allItems(void)::items)
    {
      goto LABEL_28;
    }

LABEL_27:
    v15 += 40 * *(v15 - 4);
    if (v15 == v12)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (v15 != v12)
    {
      *v12 = -1;
      v12[1] = -1;
      v16 = v12[4];
      v12[4] = 0;
      if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, a2);
      }

      v17 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
      v18 = vadd_s32(*(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 16), 0xFFFFFFFF00000001);
      *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 16) = v18;
      v19 = *(v17 - 4);
      if (6 * v18.i32[1] < v19 && v19 >= 9)
      {
        WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::rehash(v19 >> 1);
      }
    }
  }

LABEL_36:
  v21 = *(this + 17);
  v22 = *(this + 7);
  if (v21)
  {
    v23 = 8 * v21;
    do
    {
      v24 = *v22;
      *v22 = 0;
      if (v24)
      {
        WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(v24 + 8);
      }

      v22 = (v22 + 8);
      v23 -= 8;
    }

    while (v23);
    v22 = *(this + 7);
  }

  if (v22)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v22, a2);
  }

  v25 = *(this + 6);
  *(this + 6) = 0;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25);
    WTF::fastFree(v25, a2);
  }

  v26 = *(this + 5);
  *(this + 5) = 0;
  if (v26)
  {
    WTF::RefCounted<WebKit::FrameState>::deref(v26);
  }

  v27 = *(this + 2);
  *(this + 2) = 0;
  if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v27);
    WTF::fastFree(v27, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE683B4);
  }

  if (*this)
  {
    *(*this + 8) = 0;
    v28 = *this;
    *this = 0;
    if (v28)
    {
      if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v28);
        WTF::fastFree(v28, a2);
      }
    }
  }
}

void *WebKit::WebBackForwardListFrameItem::itemForID(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  {
    WebKit::WebBackForwardListFrameItem::allItems(void)::items = 0;
  }

  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a1;
  v6[3] = a2;
  result = WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,(WTF::ShouldValidateKey)1,std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>( &WebKit::WebBackForwardListFrameItem::allItems(void)::items,  v6);
  if (result)
  {
    v5 = result[4];
    if (v5)
    {
      return *(v5 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::WebBackForwardListFrameItem::childItemForFrameID(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v3 != 1 || v4 != a2)
  {
    v6 = *(result + 68);
    if (v6)
    {
      v8 = *(result + 56);
      v9 = 8 * v6;
      while (1)
      {
        result = WebKit::WebBackForwardListFrameItem::childItemForFrameID(*v8, a2);
        if (result)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::WebBackForwardListFrameItem::setChild(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 + 8));
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = WTF::fastMalloc(0x48);
  v21 = WebKit::WebBackForwardListFrameItem::WebBackForwardListFrameItem(v6, v5, a1, a2);
  CFRelease(*(v5 + 8));
  v8 = *(a1 + 68);
  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = *(v6 + 40);
    for (i = *(a1 + 68); i; --i)
    {
      v12 = *v9;
      v13 = *(*v9 + 40);
      v14 = *(v13 + 48);
      if (*(v10 + 48) && (v14 & 1) != 0)
      {
        if (*(v13 + 40) == *(v10 + 40))
        {
          goto LABEL_18;
        }
      }

      else if (((*(v10 + 48) ^ v14) & 1) == 0)
      {
LABEL_18:
        *v9 = v6;

        WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v12 + 8), v7);
        return;
      }

      ++v9;
    }
  }

  if (v8 == *(a1 + 64))
  {
    v15 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 56, v8 + 1, &v21);
    v17 = *(a1 + 68);
    v18 = *(a1 + 56);
    v19 = *v15;
    *v15 = 0;
    *(v18 + 8 * v17) = v19;
    *(a1 + 68) = v17 + 1;
    v20 = v21;
    v21 = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v20 + 8), v16);
    }
  }

  else
  {
    *(*(a1 + 56) + 8 * v8) = v6;
    *(a1 + 68) = v8 + 1;
  }
}