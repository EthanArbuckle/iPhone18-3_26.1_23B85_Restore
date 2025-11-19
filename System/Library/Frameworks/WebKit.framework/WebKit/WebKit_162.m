uint64_t WebKit::NetworkProcessProxy::setGrandfathered(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v11 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v11;
    v9[1] = a3;
    v10 = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetGrandfathered,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetGrandfathered,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 676;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 1));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 16);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FCE8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::requestStorageAccessConfirm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  WebKit::WebProcessProxy::webPage(a2, &v16);
  v12 = v16;
  if (v16)
  {
    WebKit::WebPageProxy::requestStorageAccessConfirm(v16, a4, a5, a3, a6, a7);
    v13 = *(v12 + 8);

    CFRelease(v13);
  }

  else
  {
    v14 = *a7;
    *a7 = 0;
    (*(*v14 + 16))(v14, 0);
    v15 = *(*v14 + 8);

    v15(v14);
  }
}

uint64_t WebKit::NetworkProcessProxy::getAllStorageAccessEntries(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v8, a4);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAllStorageAccessEntries,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 613;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FD10;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setCacheMaxAgeCapForPrevalentResources(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v9 = a4;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,WTF::CompletionHandler<void ()(void)>>(a1, v8, a3, 0, 0, 1);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 670;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FD60;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setGrandfatheringTime(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v9 = a4;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetGrandfatheringTime,WTF::CompletionHandler<void ()(void)>>(a1, v8, a3, 0, 0, 1);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetGrandfatheringTime,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 677;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FD88;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setMaxStatisticsEntries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetMaxStatisticsEntries,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetMaxStatisticsEntries,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 682;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FDB0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setMinimumTimeBetweenDataRecordsRemoval(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v9 = a4;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v10;
    v8[1] = &v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(a1, v8, a3, 0, 0, 1);
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 683;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FDD8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setPruneEntriesDownTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPruneEntriesDownTo,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetPruneEntriesDownTo,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 698;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FE00;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setShouldClassifyResourcesBeforeDataRecordsRemoval(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v10 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8 = &v10;
    v9 = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(a1, &v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 704;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FE28;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setResourceLoadStatisticsDebugMode(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v10 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8 = &v10;
    v9 = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,WTF::CompletionHandler<void ()(void)>>(a1, &v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 700;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FE50;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::isResourceLoadStatisticsEphemeral(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,WTF::CompletionHandler<void ()(BOOL)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 633;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FE78;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v6 = *a3;
    *a3 = 0;
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 654;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v18 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F111FEA0;
    v8[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v16[0] = v8;
      v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, 0, v16, 1);
      if (v17 == 1)
      {
        v10 = v16[0];
        v16[0] = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        return bmalloc::api::tzoneFree(v14, v15);
      }
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::resetParametersToDefaultValues(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v6 = *a3;
    *a3 = 0;
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 656;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v18 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F111FEC8;
    v8[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v16[0] = v8;
      v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, 0, v16, 1);
      if (v17 == 1)
      {
        v10 = v16[0];
        v16[0] = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        return bmalloc::api::tzoneFree(v14, v15);
      }
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }

  return result;
}

void WebKit::NetworkProcessProxy::logTestingEvent(WebKit *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v4 = WebKit::allDataStores(a1);
  v5 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v4, &v9);
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    v7 = *(v6 + 296);
    if (v7)
    {
      (*(*v7 + 16))(v7, a3);
    }

    v8 = *(v6 + 8);

    CFRelease(v8);
  }
}

uint64_t WebKit::NetworkProcessProxy::didCommitCrossSiteLoadWithDataTransfer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a2;
  v13 = a5;
  v11 = a7;
  v12 = a6;
  v8 = *(result + 80);
  if (v8 && (*(v8 + 104) & 1) != 0 || *(result + 88))
  {
    v9[0] = &v14;
    v9[1] = a3;
    v9[2] = a4;
    v9[3] = &v13;
    v9[4] = &v12;
    v9[5] = &v11;
    v10 = a8;
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer>(result, v9, 0, 0);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 600;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer::encode<IPC::Encoder>(a2, v8);
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

void WebKit::NetworkProcessProxy::didCommitCrossSiteLoadWithDataTransferFromPrevalentResource(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(a1 + 88))
  {
    WebKit::WebProcessProxy::webPage(a2, &v4);
    v3 = v4;
    if (v4)
    {
      if ((*(v4 + 865) & 1) == 0 && *(v4 + 864) == 1)
      {
        WebKit::WebPageProxy::send<Messages::WebPage::WasLoadedWithDataTransferFromPrevalentResource>(v4, &v5);
      }

      CFRelease(*(v3 + 8));
    }
  }
}

uint64_t WebKit::NetworkProcessProxy::setCrossSiteLoadWithLinkDecorationForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v12 = a2;
  v6 = *(a1 + 80);
  if (v6 && (*(v6 + 104) & 1) != 0 || *(a1 + 88))
  {
    v10[0] = &v12;
    v10[1] = a3;
    v10[2] = a4;
    v11 = a5;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,WTF::CompletionHandler<void ()(void)>>(a1, v10, a6, 0, 0, 1);
  }

  else
  {
    v8 = *a6;
    *a6 = 0;
    (*(*v8 + 16))(v8);
    v9 = *(*v8 + 8);

    return v9(v8);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 672;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 1));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 2));
  IPC::ArgumentCoder<WebKit::DidFilterKnownLinkDecoration,void>::encode<IPC::Encoder>(v12, a2[24]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FEF0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v6 = *a3;
    *a3 = 0;
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 655;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v18 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F111FF18;
    v8[1] = v6;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v16[0] = v8;
      v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, 0, v16, 1);
      if (v17 == 1)
      {
        v10 = v16[0];
        v16[0] = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        return bmalloc::api::tzoneFree(v14, v15);
      }
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::deleteCookiesForTesting(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v11 = a2;
  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v9[0] = &v11;
    v9[1] = a3;
    v10 = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(a1, v9, a5, 0, 0, 1);
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 596;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 1));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 16);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FF40;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(WebKit *a1, WTF::StringImpl **a2, int a3, char a4, uint64_t a5, uint64_t *a6)
{
  v18 = a2;
  v10 = WebKit::allDataStores(a1);
  v11 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v10, &v18);
  v12 = v11;
  if (v11)
  {
    CFRetain(*(v11 + 8));
    if (a3)
    {
      if (*(a5 + 12))
      {
        CFRetain(*(v12 + 8));
        v13 = *a6;
        *a6 = 0;
        v14 = WTF::fastMalloc(0x20);
        *v14 = &unk_1F111FF68;
        *(v14 + 8) = a3;
        *(v14 + 16) = v12;
        *(v14 + 24) = v13;
        v18 = v14;
        WebKit::WebsiteDataStore::fetchDataForRegistrableDomains(v12, a3, a4, a5, &v18);
        v15 = v18;
        v18 = 0;
        if (v15)
        {
          (*(*v15 + 1))(v15);
        }

LABEL_9:
        CFRelease(*(v12 + 8));
        return;
      }
    }
  }

  v18 = 0;
  v16 = *a6;
  *a6 = 0;
  (*(*v16 + 16))(v16, &v18);
  (*(*v16 + 8))(v16);
  if (v18)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v17);
  }

  if (v12)
  {
    goto LABEL_9;
  }
}

uint64_t WebKit::NetworkProcessProxy::hasIsolatedSession(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasIsolatedSession,WTF::CompletionHandler<void ()(BOOL)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasIsolatedSession,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 622;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FFB8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setAppBoundDomainsForResourceLoadStatistics(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a4;
  *a4 = 0;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 668;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v8, a3);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F111FFE0;
  v9[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15[0] = v9;
    v15[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, 0, v15, 1);
    if (v16 == 1)
    {
      v11 = v15[0];
      v15[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setManagedDomainsForResourceLoadStatistics(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a4;
  *a4 = 0;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 681;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v17 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v8, a3);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1120008;
  v9[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15[0] = v9;
    v15[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, 0, v15, 1);
    if (v16 == 1)
    {
      v11 = v15[0];
      v15[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v17 = a2;
    v5 = *a3;
    *a3 = 0;
    v6 = IPC::Encoder::operator new(0x238, a2);
    *v6 = 705;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    IPC::Encoder::encodeHeader(v6);
    v20 = v6;
    IPC::Encoder::operator<<<BOOL &>(v6, &v17);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1120030;
    v7[1] = v5;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v8 = v7;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v18[0] = v8;
      v18[1] = IdentifierInternal;
      v19 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v20, 0, v18, 1);
      if (v19 == 1)
      {
        v11 = v18[0];
        v18[0] = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      result = v20;
      v20 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        return bmalloc::api::tzoneFree(v15, v16);
      }
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 706;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v29 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = a2[8];
  v14 = IPC::Encoder::grow(v12, 1uLL, 1);
  if (!v15 || (*v14 = v13, v16 = *a3, *a3 = 0, v17 = WTF::fastMalloc(0x10), *v17 = &unk_1F1120080, v17[1] = v16, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E122B9CLL);
  }

  v18 = v17;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v27[0] = v18;
  v27[1] = IdentifierInternal;
  v28 = 1;
  v21 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v29, a5, v27, a6);
  if (v28 == 1)
  {
    v22 = v27[0];
    v27[0] = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  v23 = v29;
  v29 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v20);
    bmalloc::api::tzoneFree(v25, v26);
  }

  if (v21)
  {
    return IdentifierInternal;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::NetworkProcessProxy::setFirstPartyWebsiteDataRemovalModeForTesting(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v10 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8 = &v10;
    v9 = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,WTF::CompletionHandler<void ()(void)>>(a1, &v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 675;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[8]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11200A8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setToSameSiteStrictCookiesForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v9;
    v8[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    v6 = *a4;
    *a4 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);

    return v7(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 717;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11200D0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 674;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11200F8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 714;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120120;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setDomainsWithUserInteraction(uint64_t a1, uint64_t *a2)
{
  WebKit::WebProcessPool::allProcessPools(&v9);
  if (v10)
  {
    v4 = v9;
    v5 = 8 * v10;
    do
    {
      v6 = *v4;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&>(&v8, a2);
      WebKit::WebProcessPool::setDomainsWithUserInteraction(v6, &v8);
      if (v8)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v3);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v3);
}

atomic_uint *WebKit::NetworkProcessProxy::setDomainsWithCrossPageStorageAccess(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = WTF::fastMalloc(0x10);
  *v5 = 1;
  v6 = *a3;
  *a3 = 0;
  *(v5 + 8) = v6;
  WebKit::WebProcessPool::allProcessPools(&v16);
  if (v17)
  {
    v8 = v16;
    v9 = 8 * v17;
    do
    {
      v10 = *v8;
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v15, a2);
      atomic_fetch_add(v5, 1u);
      v11 = WTF::fastMalloc(0x10);
      *v11 = &unk_1F1120148;
      v11[1] = v5;
      v14 = v11;
      WebKit::WebProcessPool::setDomainsWithCrossPageStorageAccess(v10, &v15, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      if (v15)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v15, v7);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v7);
  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5);
}

uint64_t WebKit::NetworkProcessProxy::setPrivateClickMeasurementDebugMode(uint64_t result, uint64_t a2, char a3)
{
  v6 = a2;
  v3 = *(result + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(result + 88))
  {
    v4 = &v6;
    v5 = a3;
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetPrivateClickMeasurementDebugMode>(result, &v4, 0, 0);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetPrivateClickMeasurementDebugMode>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 692;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
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

atomic_ullong *WebKit::NetworkProcessProxy::sendProcessWillSuspendImminentlyForTesting(atomic_ullong *this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  v2 = this[10];
  if (v2 && (*(v2 + 104) & 1) != 0 || this[11])
  {
    WTF::ApproximateTime::now(this);
    this = WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::ProcessWillSuspendImminentlyForTestingSync>(v1, 0, 0, &v6, v3 + 1.0);
    if (!v7)
    {
      this = v6;
      v6 = 0;
      if (this)
      {
        IPC::Decoder::~Decoder(this);
        return bmalloc::api::tzoneFree(v4, v5);
      }
    }
  }

  return this;
}

atomic_ullong *WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::ProcessWillSuspendImminentlyForTestingSync>@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v6 = result[11];
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
    kdebug_trace();
    IPC::Connection::sendSync<Messages::NetworkProcess::ProcessWillSuspendImminentlyForTestingSync>(v6, a2, a3, a4, a5);
    kdebug_trace();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  else
  {
    *a4 = 1;
    a4[16] = 1;
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::sendPrepareToSuspend(WTF::MonotonicTime *a1, char a2, uint64_t *a3, double a4)
{
  if (WebKit::s_suspensionAllowedForTesting)
  {
    WTF::MonotonicTime::now(a1);
    v13 = v8 + a4;
    LOBYTE(v12[0]) = a2;
    v12[1] = &v13;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(a1, v12, a3, 0, 0, 0);
  }

  else
  {
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10);
    v11 = *(*v10 + 8);

    return v11(v10);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, double **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 643;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::Encoder::operator<<<BOOL &>(v12, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120170;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::sendProcessDidResume(uint64_t result, char a2)
{
  v2 = *(result + 80);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(result + 88))
  {
    v3 = a2 ^ 1;
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ProcessDidResume>(result, &v3, 0, 0);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ProcessDidResume>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 644;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

unsigned int *WTF::WeakHashSet<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebsiteDataStore>@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 12);
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  if (v7 > v6)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v8 = *a1;
          *(a1 + 8) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a1 + 12) = v17;
        goto LABEL_25;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, a2);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *a1;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2);
  v18 = *(a2 + 2);
  atomic_fetch_add(v18, 1u);
  v21 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v21, a3);
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::AddWebsiteDataStore>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 572;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::WebsiteDataStoreParameters,void>::encode(v8, *a2);
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

uint64_t WebKit::NetworkProcessProxy::removeSession(uint64_t a1, void *a2, uint64_t *a3)
{
  WTF::WeakHashSet<WebKit::WebEditCommandProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebEditCommandProxy>(a1 + 528, a2);
  v7 = *(a1 + 80);
  if (v7 && (*(v7 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8 = a2[3];
    v9 = *a3;
    *a3 = 0;
    v10 = IPC::Encoder::operator new(0x238, v6);
    *v10 = 599;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v24 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v8);
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F1120198;
    *(v11 + 1) = v9;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v22[0] = v11;
    v22[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, 0, v22, 1);
    if (v23 == 1)
    {
      v13 = v22[0];
      v22[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    v14 = v24;
    v24 = 0;
    if (v14)
    {
      IPC::Encoder::~Encoder(v14, v12);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

  v15 = *a3;
  if (*a3)
  {
    v22[0] = 0;
    *a3 = 0;
    (*(*v15 + 16))(v15, v22);
    (*(*v15 + 8))(v15);
    v17 = v22[0];
    v22[0] = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }
  }

  result = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((a1 + 528));
  if (result)
  {
    {
      result = WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess;
      WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v19);
        }
      }
    }

    else
    {
      WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::contentExtensionRules(unsigned int *a1, WTF::StringImpl *a2)
{
  v37 = a2;
  v38 = a2;
  {
    WebKit::webUserContentControllerProxies(void)::proxies = 0;
  }

  v3 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::webUserContentControllerProxies(void)::proxies, &v38);
  if (!v3)
  {
    v35 = 0;
    v36 = 0;
    v38 = &v37;
    v39 = &v35;
    WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::AddContentRuleLists>(a1, &v38, 0, 0);
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v33);
    return;
  }

  v4 = v3;
  CFRetain(*(v3 + 8));
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>((a1 + 116), v4, &v38);
  WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v4 + 88, a1, &v38);
  v6 = (v4 + 104);
  v5 = *(v4 + 104);
  v35 = 0;
  v36 = 0;
  if (v5)
  {
    v7 = *(v5 - 12);
    if (v7)
    {
      if (v7 >= 0x2222223)
      {
        __break(0xC471u);
        return;
      }

      LODWORD(v36) = 120 * v7 / 0x78u;
      v35 = WTF::fastMalloc((120 * v7));
    }
  }

  v34 = a1;
  v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v4 + 104));
  v9 = v8;
  v11 = v10;
  if (*v6)
  {
    v12 = *v6 + 56 * *(*v6 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v8)
  {
    do
    {
      v13 = *(v9[1] + 16);
      v14 = *(v13 + 16);
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v38 = v14;
      v15 = *(v13 + 24);
      if (v15)
      {
        atomic_fetch_add(v15, 1u);
      }

      v39 = v15;
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      v18 = *(v13 + 80);
      v42 = *(v13 + 64);
      v43 = v18;
      v40 = v17;
      v41 = v16;
      v19 = v9[2];
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v20 = v38;
      v44 = v19;
      v21 = *(v9 + 3);
      v46 = *(v9 + 5);
      v45 = v21;
      v22 = HIDWORD(v36);
      v23 = v35 + 120 * HIDWORD(v36);
      v38 = 0;
      *v23 = v20;
      v24 = v39;
      v39 = 0;
      *(v23 + 8) = v24;
      v25 = v40;
      v26 = v41;
      v27 = v43;
      *(v23 + 48) = v42;
      *(v23 + 64) = v27;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      WTF::URL::URL(v23 + 80, &v44);
      HIDWORD(v36) = v22 + 1;
      v29 = v44;
      v44 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }

      v30 = v39;
      v39 = 0;
      if (v30)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v30);
      }

      v31 = v38;
      v38 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v28);
      }

      do
      {
        v9 += 7;
      }

      while (v9 != v11 && (*v9 + 1) <= 1);
    }

    while (v9 != v12);
  }

  v38 = &v37;
  v39 = &v35;
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::AddContentRuleLists>(v34, &v38, 0, 0);
  WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v32);
  CFRelease(*(v4 + 8));
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::AddContentRuleLists>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 502;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, a2[1]);
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

uint64_t WebKit::NetworkProcessProxy::didDestroyWebUserContentControllerProxy(WebKit::NetworkProcessProxy *this, WebKit::WebUserContentControllerProxy *a2)
{
  v5 = *(a2 + 4);
  v6 = &v5;
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::Remove>(this, &v6, 0, 0);
  return WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(this + 464, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::Remove>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 503;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
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

void WebKit::NetworkProcessProxy::registerRemoteWorkerClientProcess(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED6415D0;
  if (os_log_type_enabled(qword_1ED6415D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "shared";
    *v14 = 136446722;
    if (a2 == 1)
    {
      v8 = "service";
    }

    *&v14[4] = v8;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::registerRemoteWorkerClientProcess: workerType=%{public}s, clientProcessIdentifier=%llu, remoteWorkerProcessIdentifier=%llu", v14, 0x20u);
  }

  *v14 = a3;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v14);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add((v9 + 16), 1u);
  }

  *v14 = a4;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v14);
  v12 = v11;
  if (v11)
  {
    atomic_fetch_add((v11 + 16), 1u);
    if (v10)
    {
      WebKit::WebProcessProxy::registerRemoteWorkerClientProcess(v11, a2, v10);
      goto LABEL_16;
    }
  }

  v13 = qword_1ED6415D0;
  if (!os_log_type_enabled(qword_1ED6415D0, OS_LOG_TYPE_ERROR))
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *v14 = 134218240;
  *&v14[4] = v10;
  v15 = 2048;
  v16 = v12;
  _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "NetworkProcessProxy::registerRemoteWorkerClientProcess: Could not look up one of the processes (clientWebProcess=%p, remoteWorkerProcess=%p)", v14, 0x16u);
  if (v12)
  {
LABEL_16:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16));
  }

LABEL_17:
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
  }
}

void WebKit::NetworkProcessProxy::unregisterRemoteWorkerClientProcess(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED6415D0;
  if (os_log_type_enabled(qword_1ED6415D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "shared";
    *v14 = 136446722;
    if (a2 == 1)
    {
      v8 = "service";
    }

    *&v14[4] = v8;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::unregisterRemoteWorkerClientProcess: workerType=%{public}s, clientProcessIdentifier=%llu, remoteWorkerProcessIdentifier=%llu", v14, 0x20u);
  }

  *v14 = a3;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v14);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add((v9 + 16), 1u);
  }

  *v14 = a4;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v14);
  v12 = v11;
  if (v11)
  {
    atomic_fetch_add((v11 + 16), 1u);
    if (v10)
    {
      WebKit::WebProcessProxy::unregisterRemoteWorkerClientProcess(v11, a2, v10);
      goto LABEL_16;
    }
  }

  v13 = qword_1ED6415D0;
  if (!os_log_type_enabled(qword_1ED6415D0, OS_LOG_TYPE_ERROR))
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *v14 = 134218240;
  *&v14[4] = v10;
  v15 = 2048;
  v16 = v12;
  _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "NetworkProcessProxy::unregisterRemoteWorkerClientProcess: Could not look up one of the processes (clientWebProcess=%p, remoteWorkerProcess=%p)", v14, 0x16u);
  if (v12)
  {
LABEL_16:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16));
  }

LABEL_17:
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
  }
}

atomic_uint *WebKit::NetworkProcessProxy::remoteWorkerContextConnectionNoLongerNeeded(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a3;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v6);
  if (result)
  {
    v5 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::disableRemoteWorkers(result, a2);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(uint64_t a1, WebKit *a2, const WTF::StringImpl **a3, uint64_t a4, char a5, _OWORD *a6, uint64_t a7, uint64_t *a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = a6[1];
  v18[0] = *a6;
  v18[1] = v13;
  v18[2] = a6[2];
  v14 = *a8;
  *a8 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F11201C0;
  v15[1] = v14;
  v17 = v15;
  WebKit::WebProcessPool::establishRemoteWorkerContextConnectionToNetworkProcess(a2, a3, a4, a5, v18, a7, &v17);
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *WebKit::NetworkProcessProxy::startServiceWorkerBackgroundProcessing(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v4);
  if (result)
  {
    v3 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::startServiceWorkerBackgroundProcessing(result);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  return result;
}

atomic_uint *WebKit::NetworkProcessProxy::endServiceWorkerBackgroundProcessing(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v4);
  if (result)
  {
    v3 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::endServiceWorkerBackgroundProcessing(result);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  return result;
}

void WebKit::NetworkProcessProxy::requestBackgroundFetchPermission(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641288;
  v9 = os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *v14 = 134217984;
    *&v14[4] = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::requestBackgroundFetchPermission", v14, 0xCu);
  }

  *v14 = a2;
  v10 = WebKit::allDataStores(v9);
  v11 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v10, v14);
  if (v11)
  {
    v12 = v11;
    CFRetain(*(v11 + 8));
    (*(**(v12 + 416) + 96))(*(v12 + 416), a3, a3 + 32, a4);
    CFRelease(*(v12 + 8));
  }

  else
  {
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13, 0);
    (*(*v13 + 8))(v13);
  }
}

uint64_t WebKit::NetworkProcessProxy::getAllBackgroundFetchIdentifiers(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7[0] = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(a1, v7, a3, 0, 0, 1);
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, v7);
    (*(*v5 + 8))(v5);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 612;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11201E8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::getBackgroundFetchState(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v8[0] = &v7;
    v8[1] = a3;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(a1, v8, a4, 0, 0, 1);
  }

  else
  {
    LOBYTE(v8[0]) = 0;
    v9 = 0;
    v5 = *a4;
    *a4 = 0;
    (*(*v5 + 16))(v5, v8);
    (*(*v5 + 8))(v5);
    if (v9 == 1)
    {
      WebKit::BackgroundFetchState::~BackgroundFetchState(v8, v6);
    }
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetBackgroundFetchState,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 615;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120210;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::AbortBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 569;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120238;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::PauseBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 641;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120260;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResumeBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 662;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120288;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClickBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 589;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11202B0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::notifyBackgroundFetchChange(WebKit *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = WebKit::allDataStores(a1);
  v7 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v6, &v10);
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    (*(**(v8 + 416) + 104))(*(v8 + 416), a3, a4);
    v9 = *(v8 + 8);

    CFRelease(v9);
  }
}

uint64_t WebKit::NetworkProcessProxy::requestStorageSpace(PAL::SessionID,WebCore::ClientOrigin const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 64))
  {
    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 32) = -1;
  return a1;
}

unsigned int *WebKit::NetworkProcessProxy::increaseQuota(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = *MEMORY[0x1E69E9840];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v14 = *(a1 + 8);
  atomic_fetch_add(v14, 1u);
  v48 = a2;
  LOBYTE(v49) = 0;
  v51 = -1;
  LODWORD(v15) = *(a3 + 24);
  if (!*(a3 + 24))
  {
    v16 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    }

    *&v49 = v16;
    v15 = *(a3 + 1);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(&v49 + 1) = v15;
    v50 = *(a3 + 4);
    LOBYTE(v15) = *(a3 + 24);
    goto LABEL_7;
  }

  if (v15 != 255)
  {
    v49 = *a3;
LABEL_7:
    v51 = v15;
  }

  LOBYTE(v52) = 0;
  v54 = -1;
  LODWORD(v17) = *(a3 + 56);
  if (!*(a3 + 56))
  {
    v18 = *(a3 + 4);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    *&v52 = v18;
    v17 = *(a3 + 5);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    *(&v52 + 1) = v17;
    v53 = *(a3 + 12);
    LOBYTE(v17) = *(a3 + 56);
    goto LABEL_14;
  }

  if (v17 != 255)
  {
    v52 = a3[2];
LABEL_14:
    v54 = v17;
  }

  v55 = a4;
  v19 = WTF::fastMalloc(0x60);
  *v19 = &unk_1F1120350;
  *(v19 + 8) = v14;
  v47 = 0;
  *(v19 + 16) = a2;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v19 + 24), &v49);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v19 + 56), &v52);
  *(v19 + 88) = v55;
  v20 = qword_1ED641350;
  v21 = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::requestStorageSpace", buf, 0xCu);
  }

  *buf = a2;
  v22 = WebKit::allDataStores(v21);
  v23 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v22, buf);
  if (!v23)
  {
    (*(*v19 + 16))(v19, 0, 0);
    (*(*v19 + 8))(v19);
    goto LABEL_51;
  }

  v24 = v23;
  CFRetain(*(v23 + 8));
  v25 = *(v24 + 416);
  *buf = a2;
  buf[8] = 0;
  v58 = -1;
  LODWORD(v26) = *(a3 + 24);
  if (!*(a3 + 24))
  {
    v27 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    }

    *&buf[8] = v27;
    v26 = *(a3 + 1);
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
    }

    *&buf[16] = v26;
    v57 = *(a3 + 4);
    LOBYTE(v26) = *(a3 + 24);
    goto LABEL_24;
  }

  if (v26 != 255)
  {
    *&buf[8] = *a3;
LABEL_24:
    v58 = v26;
  }

  LOBYTE(v59) = 0;
  v61 = -1;
  LODWORD(v28) = *(a3 + 56);
  if (*(a3 + 56))
  {
    if (v28 == 255)
    {
      goto LABEL_32;
    }

    v59 = a3[2];
  }

  else
  {
    v29 = *(a3 + 4);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    *&v59 = v29;
    v28 = *(a3 + 5);
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    *(&v59 + 1) = v28;
    v60 = *(a3 + 12);
    LOBYTE(v28) = *(a3 + 56);
  }

  v61 = v28;
LABEL_32:
  *&v62 = a5;
  *(&v62 + 1) = a6;
  v63 = a7;
  v64 = v19;
  v30 = WTF::fastMalloc(0x70);
  *v30 = &unk_1F11202D8;
  *(v30 + 8) = a2;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v30 + 16), &buf[8]);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v30 + 48), &v59);
  v31 = v62;
  *(v30 + 96) = v63;
  *(v30 + 80) = v31;
  v32 = v64;
  v64 = 0;
  *(v30 + 104) = v32;
  v46 = v30;
  (*(*v25 + 16))(v25, a3, a3 + 2, a5, a6, a7, &v46);
  v34 = v46;
  v46 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = v64;
  v64 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (!v61)
  {
    v36 = *(&v59 + 1);
    *(&v59 + 1) = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v33);
    }

    v37 = v59;
    *&v59 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v33);
    }
  }

  v61 = -1;
  if (!v58)
  {
    v38 = *&buf[16];
    *&buf[16] = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v33);
    }

    v39 = *&buf[8];
    *&buf[8] = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v33);
    }
  }

  CFRelease(*(v24 + 8));
LABEL_51:
  if (!v54)
  {
    v41 = *(&v52 + 1);
    *(&v52 + 1) = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v40);
    }

    v42 = v52;
    *&v52 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v40);
    }
  }

  v54 = -1;
  if (!v51)
  {
    v43 = *(&v49 + 1);
    *(&v49 + 1) = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v40);
    }

    v44 = v49;
    *&v49 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v40);
    }
  }

  v51 = -1;
  result = v47;
  v47 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v40);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::increaseQuota(PAL::SessionID,WebCore::ClientOrigin const&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 72) = -1;
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 40) = -1;
  v7 = *a1;
  *a1 = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::RegisterScheme>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 120;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::UnregisterScheme>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 121;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

atomic_uint *WebKit::NetworkProcessProxy::setWebProcessHasUploads(atomic_uint *result, uint64_t a2, char a3)
{
  v4 = result;
  v66 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *buf = a2;
    {
      WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
    }

    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, buf);
    if (result)
    {
      v5 = result;
      v6 = result + 4;
      atomic_fetch_add(result + 4, 1u);
      if (v4[128])
      {
        goto LABEL_36;
      }

      v7 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::setWebProcessHasUploads: The number of uploads in progress is now greater than 0. Taking Networking and UI process assertions.", buf, 2u);
      }

      v8 = getpid();
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v62 = 0;
      v63 = *buf;
      WebKit::ProcessAssertion::create(v8, &v63, 2, 1, MEMORY[0x1E696EBA8], &v62, &v64);
      v9 = v64;
      v64 = 0;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v60 = 0;
      v61 = *buf;
      WebKit::ProcessAssertion::create(v4, &v61, 2, 1, &v60, buf);
      v11 = *buf;
      *buf = 0;
      if (*(v4 + 512) == 1)
      {
        v12 = *(v4 + 61);
        *(v4 + 61) = v9;
        if (v12)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v12 + 8), v10);
        }

        v13 = *(v4 + 62);
        *(v4 + 62) = v11;
        if (v13)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v13 + 8), v10);
        }

        v14 = *(v4 + 63);
        *(v4 + 63) = 0;
        if (v14)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v10);
        }
      }

      else
      {
        *(v4 + 61) = v9;
        *(v4 + 62) = v11;
        *(v4 + 63) = 0;
        *(v4 + 512) = 1;
      }

      v23 = v60;
      v60 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      v24 = v61;
      v61 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v10);
      }

      v25 = v62;
      v62 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      v26 = v63;
      v63 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v10);
      }

      if (v4[128])
      {
LABEL_36:
        if (a2 != -1)
        {
          if (!a2)
          {
            __break(0xC471u);
            JUMPOUT(0x19E126AF4);
          }

          v27 = *(v4 + 63);
          if (!v27)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4 + 63);
            v27 = *(v4 + 63);
          }

          v28 = *(v27 - 8);
          v29 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
          v30 = 9 * ((v29 + ~(v29 << 13)) ^ ((v29 + ~(v29 << 13)) >> 8));
          v31 = (v30 ^ (v30 >> 15)) + ~((v30 ^ (v30 >> 15)) << 27);
          v32 = v28 & ((v31 >> 31) ^ v31);
          v33 = (v27 + 16 * v32);
          v34 = *v33;
          if (*v33)
          {
            v35 = 0;
            v36 = 1;
            while (v34 != a2)
            {
              if (v34 == -1)
              {
                v35 = v33;
              }

              v32 = (v32 + v36) & v28;
              v33 = (v27 + 16 * v32);
              v34 = *v33;
              ++v36;
              if (!*v33)
              {
                if (v35)
                {
                  *v35 = 0;
                  v35[1] = 0;
                  --*(*(v4 + 63) - 16);
                  v33 = v35;
                }

                goto LABEL_48;
              }
            }

            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
          }

LABEL_48:
          *v33 = a2;
          v37 = qword_1ED641030;
          if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(v5 + 10);
            if (v38)
            {
              LODWORD(v38) = *(v38 + 108);
            }

            *buf = 67109120;
            *&buf[4] = v38;
            _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::setWebProcessHasUploads: Taking upload assertion on behalf of WebProcess with PID %d", buf, 8u);
          }

          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v64 = 0;
          WebKit::ProcessAssertion::create(v5, buf, 2, 1, &v64, &v63);
          v40 = v64;
          v64 = 0;
          if (v40)
          {
            (*(*v40 + 8))(v40);
          }

          v41 = *buf;
          *buf = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v39);
          }

          v42 = v33[1];
          v33[1] = v63;
          if (v42)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v42 + 8), v39);
          }

          v43 = *(v4 + 63);
          if (v43)
          {
            v44 = *(v43 - 12) + 1;
          }

          else
          {
            v44 = 1;
          }

          *(v43 - 12) = v44;
          v45 = (*(v43 - 16) + v44);
          v46 = *(v43 - 4);
          if (v46 > 0x400)
          {
            if (v46 > 2 * v45)
            {
              return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
            }
          }

          else if (3 * v46 > 4 * v45)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
          }

          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4 + 63);
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
        }

        __break(0xC471u);
LABEL_95:
        JUMPOUT(0x19E126AD4);
      }

LABEL_90:
      __break(1u);
    }
  }

  else if (*(result + 512) == 1)
  {
    v15 = *(result + 63);
    if (v15)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E126B14);
      }

      if (!a2)
      {
        __break(0xC471u);
        goto LABEL_95;
      }

      v16 = *(v15 - 8);
      v17 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
      v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
      v20 = v16 & ((v19 >> 31) ^ v19);
      v21 = *(v15 + 16 * v20);
      if (v21 != a2)
      {
        v22 = 1;
        while (v21)
        {
          v20 = (v20 + v22) & v16;
          v21 = *(v15 + 16 * v20);
          ++v22;
          if (v21 == a2)
          {
            goto LABEL_68;
          }
        }

        v20 = *(v15 - 4);
      }

LABEL_68:
      if (v20 != *(v15 - 4))
      {
        v47 = (v15 + 16 * v20);
        v48 = v47[1];
        v47[1] = 0;
        v49 = *(result + 63);
        if (!v49 || (v49 += 2 * *(v49 - 1), v49 != v47))
        {
          if (v49 != v47)
          {
            *v47 = -1;
            v47[1] = 0;
            v50 = *(result + 63);
            v51 = vadd_s32(*(v50 - 16), 0xFFFFFFFF00000001);
            *(v50 - 16) = v51;
            v52 = *(v50 - 4);
            if (6 * v51.i32[1] < v52 && v52 >= 9)
            {
              result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result + 63, v52 >> 1);
            }
          }
        }

        if (v48)
        {
          v54 = qword_1ED641030;
          if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(v48 + 20);
            *buf = 67109120;
            *&buf[4] = v56;
            _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::setWebProcessHasUploads: Releasing upload assertion on behalf of WebProcess with PID %d", buf, 8u);
          }

          if ((v4[128] & 1) == 0)
          {
            goto LABEL_90;
          }

          v57 = *(v4 + 63);
          if (!v57 || !*(v57 - 12))
          {
            v58 = qword_1ED641030;
            if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "NetworkProcessProxy::setWebProcessHasUploads: The number of uploads in progress is now zero. Releasing Networking and UI process assertions.", buf, 2u);
            }

            std::optional<WebKit::NetworkProcessProxy::UploadActivity>::operator=[abi:sn200100](v4 + 61, v59);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v48 + 8), v55);
        }
      }
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v30);
  if (!v30)
  {
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, 0);
    v16 = *(*v15 + 8);

    v16(v15);
    return;
  }

  v5 = *(v30 + 352);
  v6 = 1;
  atomic_fetch_add((v5 + 16), 1u);
  v7 = v30;
  v8 = *(v5 + 88);
  if (v8)
  {
    v9 = *(v30 + 48);
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v11 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
    kdebug_trace();
    IPC::Connection::createSyncMessageEncoder(0x105B, v9, v33);
    v12 = IPC::Connection::sendSyncMessage(v8, v33[1], v33, 2, &v31, INFINITY);
    if (v32)
    {
      if (v32 != 1)
      {
        mpark::throw_bad_variant_access(v12);
      }

      v14 = v31;
      v6 = 1;
      goto LABEL_22;
    }

    v14 = v31;
    v31 = 0;
    if (*(v14 + 50) == 3194)
    {
      v17 = 11;
    }

    else
    {
      v20 = IPC::Decoder::decode<std::tuple<BOOL>>(v14);
      if (v20 >= 0x100u)
      {
        v3 = v20;
        v6 = 0;
        goto LABEL_19;
      }

      v17 = 14;
    }

    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v18, v19);
    v6 = 1;
    v14 = v17;
LABEL_19:
    if (!v32)
    {
      v21 = v31;
      v31 = 0;
      if (v21)
      {
        IPC::Decoder::~Decoder(v21);
        bmalloc::api::tzoneFree(v28, v29);
      }
    }

LABEL_22:
    v22 = v33[0];
    v33[0] = 0;
    if (v22)
    {
      IPC::Encoder::~Encoder(v22, v13);
      bmalloc::api::tzoneFree(v24, v25);
    }

    kdebug_trace();
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v14 = 1;
LABEL_25:
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
LABEL_26:
  v23 = *a3;
  *a3 = 0;
  (*(*v23 + 16))(v23, (v6 == 0) & v3);
  (*(*v23 + 8))(v23);
  if (v6 || !v14)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_29;
  }

  IPC::Decoder::~Decoder(v14);
  bmalloc::api::tzoneFree(v26, v27);
  v7 = v30;
  if (v30)
  {
LABEL_29:
    CFRelease(*(v7 + 8));
  }
}

uint64_t WebKit::NetworkProcessProxy::preconnectTo(WTF *a1, uint64_t a2, uint64_t a3, uint64_t a4, WebCore::ResourceRequestBase *a5, char a6, __int16 a7)
{
  v23 = a2;
  v21 = a4;
  v22 = a3;
  if (WTF::isUIThread(a1))
  {
    result = WebCore::ResourceRequestBase::url(a5);
    if (*(result + 8))
    {
      result = WebCore::ResourceRequestBase::url(a5);
      if ((*(result + 8) & 2) != 0)
      {
        v17[0] = a2;
        v13 = WebKit::allDataStores(result);
        v14 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v13, v17);
        if (v14)
        {
          v15 = v14;
          CFRetain(*(v14 + 8));
          v16 = *(v15 + 552);
          CFRelease(*(v15 + 8));
        }

        else
        {
          v16 = 0;
        }

        v17[0] = &v23;
        v17[1] = &v22;
        v17[2] = &v21;
        v17[3] = a5;
        v18 = a6;
        v19 = a7;
        v20 = v16;
        return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::PreconnectTo>(a1, v17, 0, 0);
      }
    }
  }

  else
  {
    result = WTF::linkedOnOrAfterSDKWithBehavior();
    if (result)
    {
      result = 1687;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::PreconnectTo>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 642;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::NetworkProcess::PreconnectTo::encode<IPC::Encoder>(a2, v8);
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetQuota,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 657;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120378;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetStoragePersistedState,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 659;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11203A0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::hasAppBoundSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasAppBoundSession,WTF::CompletionHandler<void ()(BOOL)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasAppBoundSession,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 621;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11203C8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::clearAppBoundSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7 = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearAppBoundSession,WTF::CompletionHandler<void ()(void)>>(a1, &v7, a3, 0, 0, 1);
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5);
    v6 = *(*v5 + 8);

    return v6(v5);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearAppBoundSession,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 581;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11203F0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkProcessProxy::getAppBoundDomains(WebKit *a1, WTF::StringImpl **a2, uint64_t *a3)
{
  v12 = a2;
  v4 = WebKit::allDataStores(a1);
  v5 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v4, &v12);
  if (v5)
  {
    v6 = v5;
    v7 = *a3;
    *a3 = 0;
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F1120418;
    *(v8 + 8) = v7;
    v12 = v8;
    WebKit::WebsiteDataStore::getAppBoundDomains(v6, &v12);
    result = v12;
    if (v12)
    {
      return (*(*v12 + 1))(v12);
    }
  }

  else
  {
    v12 = 0;
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, &v12);
    (*(*v10 + 8))(v10);
    result = v12;
    if (v12)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v11);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::UpdateBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 730;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120440;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClearBundleIdentifier,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 583;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v25 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1120468;
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
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 616;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120490;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 617;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11204B8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::processPushMessage(WebKit *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v56 = a2;
  v58 = a2;
  v7 = WebKit::allDataStores(a1);
  v8 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v7, &v58);
  if (v8)
  {
    v9 = v8;
    CFRetain(*(v8 + 8));
    v11 = WebKit::WebsiteDataStore::builtInNotificationsEnabled(v9, v10);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = (*(**(v9 + 416) + 56))(v53);
      if (!v53[0] || !*(v53[0] - 3))
      {
        v15 = WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(v13);
        (*(**(v15 + 4) + 64))(&v58);
        v16 = v58;
        v58 = 0;
        v17 = v53[0];
        v53[0] = v16;
        if (v17)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v14);
          if (v58)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v58, v14);
          }
        }
      }

      WebCore::SecurityOriginData::fromURL(&v58, (a3 + 32), v14);
      WebCore::SecurityOriginData::toString(&v57, &v58);
      if (!v61)
      {
        v20 = v59;
        v59 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }

        v21 = v58;
        v58 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v18);
        }
      }

      v22 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(v53, &v57, v19);
      v24 = v53[0];
      if (v53[0])
      {
        v24 = (v53[0] + 16 * *(v53[0] - 1));
      }

      if (v24 == v22)
      {
        v12 = 2;
      }

      else
      {
        v12 = *(v22 + 8);
      }

      v25 = v57;
      v57 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      if (v53[0])
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v53[0], v23);
      }
    }

    v26 = getpid();
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v57 = 0;
    WebKit::ProcessAssertion::create(v26, v53, 2, 1, MEMORY[0x1E696EBA8], &v57, &v58);
    v28 = v57;
    v29 = v58;
    v57 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v30 = v53[0];
    v53[0] = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v27);
    }

    v31 = WebCore::Timer::operator new(0x38, v27);
    v32 = WTF::fastMalloc(0x10);
    *v32 = &unk_1F111F3A8;
    v32[1] = v29;
    WebCore::TimerBase::TimerBase(v31);
    *v31 = &unk_1F10EB388;
    *(v31 + 6) = v32;
    WebCore::TimerBase::start();
    v33 = *a4;
    *a4 = 0;
    v53[0] = &v56;
    v53[1] = a3;
    v54 = v12;
    v55[0] = v11;
    v35 = IPC::Encoder::operator new(0x238, v34);
    *v35 = 646;
    *(v35 + 68) = 0;
    *(v35 + 70) = 0;
    *(v35 + 69) = 0;
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 1) = 0;
    IPC::Encoder::encodeHeader(v35);
    v57 = v35;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v35, v56);
    IPC::ArgumentCoder<WebKit::WebPushMessage,void>::encode(v35, a3);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v35, v12);
    IPC::Encoder::operator<<<BOOL &>(v35, v55);
    v36 = WTF::fastMalloc(0x18);
    *v36 = &unk_1F11204E0;
    *(v36 + 1) = v33;
    *(v36 + 2) = v31;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v37 = v36;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v58 = v37;
      v59 = IdentifierInternal;
      v60 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v57, 0, &v58, 1);
      if (v60 == 1)
      {
        v40 = v58;
        v58 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      v41 = v57;
      v57 = 0;
      if (v41)
      {
        IPC::Encoder::~Encoder(v41, v39);
        bmalloc::api::tzoneFree(v42, v43);
      }

      CFRelease(*(v9 + 8));
    }
  }

  else
  {
    LOBYTE(v58) = 0;
    v69 = 0;
    v44 = *a4;
    *a4 = 0;
    (*(*v44 + 16))(v44, 0, &v58);
    (*(*v44 + 8))(v44);
    if (v69 == 1)
    {
      if (v68 == 1)
      {
        v46 = v67;
        v67 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v45);
        }

        v47 = v66;
        v66 = 0;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v45);
        }

        v48 = v65;
        v65 = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v45);
        }

        v49 = v64;
        v64 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v45);
        }

        v50 = v63;
        v63 = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v45);
        }
      }

      v51 = v62;
      v62 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v45);
      }

      v52 = v58;
      v58 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v45);
      }
    }
  }
}

WebKit::WebNotificationManagerProxy *WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(WebKit::WebNotificationManagerProxy *this)
{
  {
    return WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(void)::sharedManager;
  }

  v2 = API::Object::newObject(0x38uLL, 80);
  result = WebKit::WebNotificationManagerProxy::WebNotificationManagerProxy(v2, 0);
  WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(void)::sharedManager = result;
  return result;
}

IPC::Encoder *WebKit::NetworkProcessProxy::processNotificationEvent(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  if (!*a4)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  v8 = getpid();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = 0;
  WebKit::ProcessAssertion::create(v8, &v31, 2, 1, MEMORY[0x1E696EBA8], &v28, v29);
  v10 = v28;
  v11 = v29[0];
  v28 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v12 = v31;
  v31 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = WebCore::Timer::operator new(0x38, v9);
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111F3D0;
  v14[1] = v11;
  WebCore::TimerBase::TimerBase(v13);
  *v13 = &unk_1F10EB388;
  *(v13 + 6) = v14;
  WebCore::TimerBase::start();
  v15 = *a4;
  *a4 = 0;
  v17 = IPC::Encoder::operator new(0x238, v16);
  *v17 = 645;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = 0;
  IPC::Encoder::encodeHeader(v17);
  v31 = v17;
  IPC::ArgumentCoder<WebCore::NotificationData,void>::encode(v17, a2);
  v18 = IPC::Encoder::grow(v17, 1uLL, 1);
  if (!v19)
  {
    __break(0xC471u);
    JUMPOUT(0x19E128828);
  }

  *v18 = a3;
  v20 = WTF::fastMalloc(0x18);
  *v20 = &unk_1F1120508;
  v20[1] = v15;
  v20[2] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19E128808);
  }

  v21 = v20;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v29[0] = v21;
  v29[1] = IdentifierInternal;
  v30 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v31, 0, v29, 1);
  if (v30 == 1)
  {
    v24 = v29[0];
    v29[0] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  result = v31;
  v31 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v23);
    return bmalloc::api::tzoneFree(v26, v27);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasPushSubscriptionForTesting,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 624;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120580;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 729;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible::encode<IPC::Encoder>(a2, v8);
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

void WebKit::NetworkProcessProxy::openWindowFromServiceWorker(WebKit *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v14 = a2;
  v8 = WebKit::allDataStores(a1);
  v9 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v8, &v14);
  if (v9)
  {
    v10 = v9;
    CFRetain(*(v9 + 8));
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F11205A8;
    v12 = *a5;
    *a5 = 0;
    v11[1] = v12;
    v14 = v11;
    WebKit::WebsiteDataStore::openWindowFromServiceWorker(v10, a3, a4, &v14);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    CFRelease(*(v10 + 8));
  }

  else
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13, &v14);
    (*(*v13 + 8))(v13);
  }
}

void WebKit::NetworkProcessProxy::reportConsoleMessage(WebKit *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a2;
  v14 = WebKit::allDataStores(a1);
  v15 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v14, &v18);
  if (v15)
  {
    v16 = v15;
    CFRetain(*(v15 + 8));
    (*(**(v16 + 416) + 40))(*(v16 + 416), a3, a4, a5, a6, a7, a8);
    v17 = *(v16 + 8);

    CFRelease(v17);
  }
}

atomic_uint *WebKit::NetworkProcessProxy::navigateServiceWorkerClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v17[0] = *(a3 + 16);
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
  if (v9)
  {
    v10 = (v9 + 16);
    atomic_fetch_add((v9 + 16), 1u);
    v11 = WebKit::WebFrameProxy::webFrame(a2, 1);
    if (v11)
    {
      v12 = v11;
      CFRetain(*(v11 + 8));
      v13 = *(a3 + 16);
      v17[0] = *a3;
      v17[1] = v13;
      WebKit::WebFrameProxy::navigateServiceWorkerClient(v12, v17, a4, a5);
      CFRelease(*(v12 + 8));
    }

    else
    {
      v16 = *a5;
      *a5 = 0;
      (*(*v16 + 16))(v16, 0, 0, 0, 0);
      (*(*v16 + 8))(v16);
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  else
  {
    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, 0, 0, 0, 0);
    return (*(*v15 + 8))(v15);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationDidEnterBackground>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 577;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationWillEnterForeground>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 578;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void WebKit::NetworkProcessProxy::cookiesDidChange(WebKit *a1, uint64_t a2)
{
  v6 = a2;
  v2 = WebKit::allDataStores(a1);
  v3 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v2, &v6);
  if (v3)
  {
    v4 = v3;
    CFRetain(*(v3 + 8));
    v5 = WebKit::WebsiteDataStore::cookieStore(v4);
    CFRetain(v5[1]);
    API::HTTPCookieStore::cookiesDidChange(v5);
    CFRelease(v5[1]);
    CFRelease(v4[1]);
  }
}

uint64_t WebKit::NetworkProcessProxy::notifyMediaStreamingActivity(uint64_t this, char a2)
{
  v2 = *(this + 80);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(this + 88))
  {
    v3 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::NotifyMediaStreamingActivity>(this, &v3, 0, 0);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::NotifyMediaStreamingActivity>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 640;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

atomic_uint *WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(uint64_t a1, int a2, const WebCore::SecurityOriginData *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = a5;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin - webPageProxyID=%llu - BEGIN", buf, 0x16u);
  }

  atomic_fetch_add((a1 + 16), 1u);
  v13 = *a6;
  *a6 = 0;
  v14 = WTF::fastMalloc(0x20);
  *v14 = &unk_1F11205D0;
  v14[1] = a1;
  v14[2] = a5;
  v14[3] = v13;
  v15 = WTF::fastMalloc(0x10);
  *v15 = 1;
  *(v15 + 1) = v14;
  *buf = a4;
  v16 = WebKit::allDataStores(v15);
  v17 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v16, buf);
  if (!v17)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v15);
  }

  v18 = v17;
  CFRetain(*(v17 + 8));
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((v18 + 328), buf);
  v19 = *(v18 + 328);
  v43 = a5;
  if (v19)
  {
    v20 = *(v19 - 4);
    v21 = (v19 + 8 * v20);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v47 = (v18 + 328);
  v48 = v21;
  v49 = v21;
  v50 = v21;
  v51 = v19 + 8 * v20;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v47);
  v22 = *&buf[8];
  if (*&buf[8] == v48)
  {
LABEL_19:
    if ((a2 & 4) != 0 && WebCore::operator==())
    {
      {
        byte_1ED6436B0 = 0;
        WebKit::ViewSnapshotStore::singleton(void)::store = 0u;
        *&qword_1ED6436A0 = 0u;
      }

      WebKit::ViewSnapshotStore::discardSnapshotImagesForOrigin(&WebKit::ViewSnapshotStore::singleton(void)::store, a3);
      WebKit::WebProcessProxy::webPage(v43, v44);
      v35 = v44[0];
      if (v44[0])
      {
        WTF::URL::URL(buf, (*(v44[0] + 32) + 1176));
        WebCore::SecurityOriginData::fromURL(&v47, buf, v36);
        v38 = WebCore::operator==();
        if (!v50)
        {
          v39 = v48;
          v48 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v37);
          }

          v40 = v47;
          v47 = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v37);
          }
        }

        LOBYTE(v50) = -1;
        v41 = *buf;
        *buf = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v37);
        }

        if (v38)
        {
          *(v35 + 1029) = 1;
        }

        CFRelease(*(v35 + 8));
      }
    }

    CFRelease(*(v18 + 8));
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v15);
  }

  while (1)
  {
    if ((v23 = *(*v22 + 8), atomic_fetch_add((v23 + 16), 1u), (v24 = *(v23 + 80)) != 0) && (*(v24 + 104) & 1) != 0 || *(v23 + 88))
    {
      if (!WebKit::WebProcessProxy::isDummyProcessProxy(v23))
      {
        break;
      }
    }

LABEL_18:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v23 + 16));
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    v22 = *&buf[8];
    if (*&buf[8] == v48)
    {
      goto LABEL_19;
    }
  }

  atomic_fetch_add(v15, 1u);
  v26 = IPC::Encoder::operator new(0x238, v25);
  *v26 = 2938;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = 0;
  IPC::Encoder::encodeHeader(v26);
  v46 = v26;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v26, a2);
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v26, a3);
  v27 = WTF::fastMalloc(0x10);
  *v27 = &unk_1F11205F8;
  v27[1] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
  {
    v28 = v27;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v44[0] = v28;
    v44[1] = IdentifierInternal;
    v45 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v23, &v46, 0, v44, 1);
    if (v45 == 1)
    {
      v31 = v44[0];
      v44[0] = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }
    }

    v32 = v46;
    v46 = 0;
    if (v32)
    {
      IPC::Encoder::~Encoder(v32, v30);
      bmalloc::api::tzoneFree(v33, v34);
    }

    goto LABEL_18;
  }

  result = 141;
  __break(0xC471u);
  return result;
}

atomic_uint *WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v39[0] = a4;
  v39[1] = a5;
  v10 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::reloadExecutionContextsForOrigin BEGIN", buf, 0xCu);
  }

  atomic_fetch_add((a1 + 16), 1u);
  v11 = *a6;
  *a6 = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F1120620;
  v12[1] = a1;
  v12[2] = v11;
  v13 = WTF::fastMalloc(0x10);
  *v13 = 1;
  *(v13 + 1) = v12;
  *&buf[0] = a3;
  v14 = WebKit::allDataStores(v13);
  v15 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v14, buf);
  if (!v15)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13);
  }

  v16 = v15;
  CFRetain(*(v15 + 8));
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((v16 + 328), buf);
  v17 = *(v16 + 328);
  if (v17)
  {
    v18 = *(v17 - 4);
    v19 = v17 + 8 * v18;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v34 = v16 + 328;
  v35 = v19;
  v36 = v19;
  v37 = v19;
  v38 = v17 + 8 * v18;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v34);
  v20 = *(&buf[0] + 1);
  if (*(&buf[0] + 1) == v35)
  {
LABEL_19:
    CFRelease(*(v16 + 8));
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13);
  }

  while (1)
  {
    v21 = *(*v20 + 8);
    atomic_fetch_add((v21 + 16), 1u);
    v22 = *(v21 + 80);
    if ((!v22 || (*(v22 + 104) & 1) == 0) && !*(v21 + 88) || WebKit::WebProcessProxy::isDummyProcessProxy(v21))
    {
      goto LABEL_18;
    }

    atomic_fetch_add(v13, 1u);
    v24 = IPC::Encoder::operator new(0x238, v23);
    *v24 = 2978;
    *(v24 + 68) = 0;
    *(v24 + 70) = 0;
    *(v24 + 69) = 0;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 1) = 0;
    IPC::Encoder::encodeHeader(v24);
    v42 = v24;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v24, a2);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v24, v39);
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F1120648;
    v25[1] = v13;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      break;
    }

    v26 = v25;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v40[0] = v26;
    v40[1] = IdentifierInternal;
    v41 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v21, &v42, 0, v40, 1);
    if (v41 == 1)
    {
      v29 = v40[0];
      v40[0] = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    v30 = v42;
    v42 = 0;
    if (v30)
    {
      IPC::Encoder::~Encoder(v30, v28);
      bmalloc::api::tzoneFree(v31, v32);
    }

LABEL_18:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v21 + 16));
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    v20 = *(&buf[0] + 1);
    if (*(&buf[0] + 1) == v35)
    {
      goto LABEL_19;
    }
  }

  result = 141;
  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::NetworkProcessProxy::addAllowedFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF **a3, int a4, uint64_t *a5)
{
  v10 = (a1 + 544);
  v11 = *(a1 + 552);
  *(a1 + 552) = v11 + 1;
  if (v11 > *(a1 + 556))
  {
    WTF::WeakHashMap<WebKit::WebProcessProxy,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultWeakPtrImpl>::removeNullReferences((a1 + 544), a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v12 = *(a2 + 8);
  atomic_fetch_add(v12, 1u);
  v49[0] = v12;
  if (v12 == -1)
  {
    __break(0xC471u);
    goto LABEL_65;
  }

  if (!v12)
  {
    __break(0xC471u);
    JUMPOUT(0x19E129E58);
  }

  v13 = *v10;
  if (*v10 || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(v10, 0), (v13 = *v10) != 0))
  {
    v14 = *(v13 - 8);
  }

  else
  {
    v14 = 0;
  }

  v17 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(v49);
  v18 = 0;
  v19 = 1;
  v20 = v49[0];
  while (1)
  {
    v21 = v17 & v14;
    v22 = v13 + 24 * v21;
    v23 = *v22;
    if (*v22 != -1)
    {
      break;
    }

    v18 = v13 + 24 * v21;
LABEL_14:
    v17 = v19 + v21;
    ++v19;
  }

  if (!v23)
  {
    if (v18)
    {
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      --*(*v10 - 16);
      v20 = v49[0];
      v22 = v18;
    }

    v49[0] = 0;
    v24 = *v22;
    *v22 = v20;
    if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24);
      WTF::fastFree(v24, v15);
    }

    *(v22 + 8) = 0;
    v25 = *(v22 + 16);
    *(v22 + 16) = 0;
    if (v25)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v15);
    }

    v26 = *v10;
    if (*v10)
    {
      v27 = *(v26 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v26 - 12) = v27;
    v30 = (*(v26 - 16) + v27);
    v31 = *(v26 - 4);
    if (v31 > 0x400)
    {
      if (v31 <= 2 * v30)
      {
LABEL_27:
        v22 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(v10, v22);
        v26 = *v10;
        if (*v10)
        {
          LODWORD(v31) = *(v26 - 4);
        }

        else
        {
          LODWORD(v31) = 0;
        }
      }
    }

    else if (3 * v31 <= 4 * v30)
    {
      goto LABEL_27;
    }

    v32 = v26 + 24 * v31;
    v20 = v49[0];
    goto LABEL_34;
  }

  if (v23 != v49[0])
  {
    goto LABEL_14;
  }

  v28 = *v10;
  if (*v10)
  {
    v29 = *(v28 - 4);
  }

  else
  {
    v29 = 0;
  }

  v32 = v28 + 24 * v29;
LABEL_34:
  v49[0] = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v15);
  }

  v33 = *v10;
  if (*v10)
  {
    v33 += 24 * *(v33 - 4);
  }

  while (v22 != v33)
  {
    if (*(*v22 + 8))
    {
      break;
    }

    do
    {
      v22 += 24;
    }

    while (v22 != v32 && (*v22 + 1) <= 1);
  }

  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v22 + 16), a3, v16, v49);
  if (a4 && (*(v22 + 8) & 1) == 0)
  {
    *(v22 + 8) = 1;
  }

  else if (!v50)
  {
    v35 = *a5;
    *a5 = 0;
    (*(*v35 + 16))(v35);
    return (*(*v35 + 8))(v35);
  }

  v37 = *(a2 + 120);
  v38 = IPC::Encoder::operator new(0x238, v34);
  *v38 = 570;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = 0;
  IPC::Encoder::encodeHeader(v38);
  v51 = v38;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v38, v37);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v38, a3);
  v39 = IPC::Encoder::grow(v38, 1uLL, 1);
  if (!v40)
  {
    __break(0xC471u);
    JUMPOUT(0x19E129E78);
  }

  *v39 = a4;
  v41 = *a5;
  *a5 = 0;
  v42 = WTF::fastMalloc(0x10);
  *v42 = &unk_1F1120670;
  *(v42 + 1) = v41;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
LABEL_65:
    JUMPOUT(0x19E129E38);
  }

  v43 = v42;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v49[0] = v43;
  v49[1] = IdentifierInternal;
  v50 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v51, 0, v49, 1);
  if (v50 == 1)
  {
    v46 = v49[0];
    v49[0] = 0;
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }
  }

  result = v51;
  v51 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v45);
    return bmalloc::api::tzoneFree(v47, v48);
  }

  return result;
}

void WebKit::NetworkProcessProxy::wakeUpWebProcessForIPC(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *v8 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v8);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add((v4 + 16), 1u);
  }

  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 134218496;
    *&v8[4] = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::wakeUpWebProcessForIPC processIdentifier=%llu, webProcess=%p", v8, 0x20u);
  }

  if (v5)
  {
    WebKit::AuxiliaryProcessProxy::wakeUpTemporarilyForIPC(v5, v7);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5 + 4);
  }
}

void WebKit::NetworkProcessProxy::reportNetworkIssue(uint64_t a1, uint64_t a2, const WTF::URL *a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v7);
  v4 = v7;
  if (v7)
  {
    v5 = *(v7 + 1464);
    if (v5)
    {
      WebKit::NetworkIssueReporter::report(v5, a3);
    }

    v6 = *(v4 + 8);

    CFRelease(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::FetchLocalStorage,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 608;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1120698;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RestoreLocalStorage,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 660;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11206C0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 658;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F11206E8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setDefaultRequestTimeoutInterval(uint64_t this, double a2)
{
  v2 = *(this + 80);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(this + 88))
  {
    v3 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetDefaultRequestTimeoutInterval>(this, &v3, 0, 0);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetDefaultRequestTimeoutInterval>(uint64_t a1, double *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 673;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 16), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::LegacyCustomProtocolManagerProxy::deref(WebKit::LegacyCustomProtocolManagerProxy *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::LegacyCustomProtocolManagerProxy::~LegacyCustomProtocolManagerProxy(WebKit::LegacyCustomProtocolManagerProxy *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    v3 = (v1 + 16);
    atomic_fetch_add((v1 + 16), 1u);
    IPC::MessageReceiverMap::removeMessageReceiver((v1 + 96), 0x13u);
    WebKit::LegacyCustomProtocolManagerProxy::invalidate(this);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
    v5 = *(this + 2);
    *(this + 2) = 0;
    if (v5)
    {
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5);
        WTF::fastFree(v5, v4);
      }
    }

    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::LegacyCustomProtocolManagerProxy::~LegacyCustomProtocolManagerProxy(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::LegacyCustomProtocolManagerProxy::startLoading(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 16) + 8);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add((v3 + 16), 1u);
    (*(**(v3 + 424) + 16))(*(v3 + 424), a1, a2, a3);

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::LegacyCustomProtocolManagerProxy::stopLoading(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (v2)
  {
    v3 = (v2 + 16);
    atomic_fetch_add((v2 + 16), 1u);
    (*(**(v2 + 424) + 24))(*(v2 + 424), a1, a2);

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::LegacyCustomProtocolManagerProxy::wasRedirectedToRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v4 = *(*(a1 + 16) + 8);
  if (v4)
  {
    v5 = (v4 + 16);
    atomic_fetch_add((v4 + 16), 1u);
    v7[0] = &v8;
    v7[1] = a3;
    v7[2] = a4;
    WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::WasRedirectedToRequest>(v4, v7, 0, 0);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::WasRedirectedToRequest>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 122;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::LegacyCustomProtocolManager::WasRedirectedToRequest::encode<IPC::Encoder>(a2, v8);
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::didReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a2;
  v4 = *(*(a1 + 16) + 8);
  if (v4)
  {
    v5 = (v4 + 16);
    atomic_fetch_add((v4 + 16), 1u);
    v7[0] = &v9;
    v7[1] = a3;
    v8 = a4;
    WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidReceiveResponse>(v4, v7, 0, 0);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidReceiveResponse>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 119;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::LegacyCustomProtocolManager::DidReceiveResponse::encode<IPC::Encoder>(a2, v8);
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::didLoadData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v8[0] = a3;
  v8[1] = a4;
  v4 = *(*(a1 + 16) + 8);
  if (v4)
  {
    v5 = (v4 + 16);
    atomic_fetch_add((v4 + 16), 1u);
    v7[0] = &v9;
    v7[1] = v8;
    WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidLoadData>(v4, v7, 0, 0);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidLoadData>(uint64_t a1, const void ***a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 118;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, *a2[1], a2[1][1]);
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::didFailWithError(uint64_t a1, uint64_t a2, WebCore::ResourceError *a3)
{
  v7 = a2;
  v3 = *(*(a1 + 16) + 8);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add((v3 + 16), 1u);
    v6[0] = &v7;
    v6[1] = a3;
    WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidFailWithError>(v3, v6, 0, 0);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidFailWithError>(uint64_t a1, WebCore::ResourceError **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 116;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v8, a2[1]);
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

uint64_t WebKit::LegacyCustomProtocolManagerProxy::didFinishLoading(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(*(a1 + 16) + 8);
  if (v2)
  {
    v3 = (v2 + 16);
    atomic_fetch_add((v2 + 16), 1u);
    v5 = &v6;
    WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidFinishLoading>(v2, &v5, 0, 0);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::LegacyCustomProtocolManager::DidFinishLoading>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 117;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
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

uint64_t WebKit::ServiceWorkerNotificationHandler::singleton(WebKit::ServiceWorkerNotificationHandler *this)
{
  {
    operator new();
  }

  return WebKit::ServiceWorkerNotificationHandler::singleton(void)::handler;
}

uint64_t WebKit::ServiceWorkerNotificationHandler::dataStoreForNotificationID(WebKit::ServiceWorkerNotificationHandler *this, const WTF::UUID *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if (!(*a2 ^ 1 | *(a2 + 1)) || *a2 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E12B214);
  }

  v5 = *(v2 - 8);
  v6 = WTF::UUIDHash::hash(a2, a2);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = v6 & v5;
  v10 = (v2 + 32 * v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12 != v8 || v11 != v7)
  {
    v14 = 1;
    while (v11 | v12)
    {
      v9 = (v9 + v14) & v5;
      v15 = (v2 + 32 * v9);
      v11 = *v15;
      v12 = v15[1];
      v16 = v12 == v8 && v11 == v7;
      ++v14;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    v18 = *(this + 2);
    if (!v18)
    {
      return 0;
    }

    v17 = v18 + 32 * *(v18 - 4);
    goto LABEL_19;
  }

LABEL_15:
  v17 = v2 + 32 * v9;
  v18 = *(this + 2);
  if (v18)
  {
LABEL_19:
    v18 += 32 * *(v18 - 4);
  }

  if (v18 != v17)
  {
    v21 = *(v17 + 16);
    v19 = WebKit::allDataStores(v6);
    return WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v19, &v21);
  }

  return 0;
}

uint64_t WebKit::ServiceWorkerNotificationHandler::showNotification(uint64_t a1, atomic_ullong *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = qword_1ED6410A8;
  v10 = os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *v33 = 0;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNotificationHandler showNotification called", v33, 2u);
  }

  v34 = a3[26];
  v11 = WebKit::allDataStores(v10);
  v12 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v11, &v34);
  if (v12)
  {
    v13 = v12;
    CFRetain(*(v12 + 8));
    v15 = a3[18];
    v16 = a3[19];
    v17 = a3 + 18;
    if (!(v15 ^ 1 | v16) || !(v15 | v16))
    {
      __break(0xC471u);
      JUMPOUT(0x19E12B498);
    }

    v18 = *(a1 + 16);
    if (v18 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,PAL::SessionID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,PAL::SessionID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand((a1 + 16)), (v18 = *(a1 + 16)) != 0))
    {
      v19 = *(v18 - 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = WTF::UUIDHash::hash((a3 + 18), v14) & v19;
    v21 = (v18 + 32 * v20);
    v23 = *v21;
    v22 = v21[1];
    if (*v21 != 0)
    {
      v24 = 0;
      v25 = 1;
      while (v22 != a3[19] || v23 != *v17)
      {
        if (!(v23 ^ 1 | v22))
        {
          v24 = v21;
        }

        v20 = (v20 + v25) & v19;
        v21 = (v18 + 32 * v20);
        v23 = *v21;
        v22 = v21[1];
        ++v25;
        if (*v21 == 0)
        {
          if (v24)
          {
            *v24 = 0;
            v24[1] = 0;
            v24[2] = 0;
            --*(*(a1 + 16) - 16);
            v21 = v24;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_26;
    }

LABEL_20:
    *v21 = *v17;
    v21[2] = a3[26];
    v27 = *(a1 + 16);
    if (v27)
    {
      v28 = *(v27 - 12) + 1;
    }

    else
    {
      v28 = 1;
    }

    *(v27 - 12) = v28;
    v29 = (*(v27 - 16) + v28);
    v30 = *(v27 - 4);
    if (v30 > 0x400)
    {
      if (v30 > 2 * v29)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v30 > 4 * v29)
    {
LABEL_26:
      WebKit::WebsiteDataStore::showPersistentNotification(v13, a2, a3);
      CFRelease(v13[1]);
      goto LABEL_27;
    }

    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,PAL::SessionID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,PAL::SessionID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand((a1 + 16));
    goto LABEL_26;
  }

LABEL_27:
  v31 = *a5;
  *a5 = 0;
  (*(*v31 + 16))(v31);
  return (*(*v31 + 8))(v31);
}

void WebKit::ServiceWorkerNotificationHandler::cancelNotification(WebKit::ServiceWorkerNotificationHandler *a1, int a2, WTF::UUID *a3)
{
  v4 = WebKit::ServiceWorkerNotificationHandler::dataStoreForNotificationID(a1, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CFRetain(*(v4 + 8));
    v7 = WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(v6);
    WebKit::WebNotificationManagerProxy::cancel(v7, v8, a3);
    v9 = *(v5 + 8);

    CFRelease(v9);
  }
}

void WebKit::ServiceWorkerNotificationHandler::clearNotifications(WebKit::ServiceWorkerNotificationHandler *this, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v4 = *a2;
    v5 = 16 * v2;
    do
    {
      v6 = WebKit::ServiceWorkerNotificationHandler::dataStoreForNotificationID(this, v4);
      if (v6)
      {
        v7 = v6;
        CFRetain(*(v6 + 8));
        WebKit::WebsiteDataStore::clearServiceWorkerNotification(v7, v4);
        CFRelease(v7[1]);
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
  }
}

void WebKit::ServiceWorkerNotificationHandler::didDestroyNotification(WebKit::ServiceWorkerNotificationHandler *this, const WTF::UUID *a2)
{
  v3 = WebKit::ServiceWorkerNotificationHandler::dataStoreForNotificationID(this, a2);
  if (v3)
  {
    v4 = v3;
    v5 = CFRetain(*(v3 + 8));
    v6 = WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(v5);
    WebKit::WebNotificationManagerProxy::didDestroyNotification(v6, v7, a2);
    v8 = *(v4 + 8);

    CFRelease(v8);
  }
}

atomic_uint *WebKit::ServiceWorkerNotificationHandler::sharedPreferencesForWebProcess@<X0>(const IPC::Connection *a1@<X1>, uint64_t a2@<X8>)
{
  WebKit::WebProcessProxy::fromConnection(a1, a1, &v7);
  v4 = v7;
  v5 = (v7 + 1096);
  *(a2 + 16) = *(v7 + 1112);
  *a2 = *v5;
  *(a2 + 24) = 1;

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
}

uint64_t WebKit::WebNotification::WebNotification(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5, atomic_ullong *a6)
{
  *API::Object::Object(a1) = &unk_1F111F3F8;
  *(a1 + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F111F1D8;
  v12 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(a1 + 32) = v12;
  v13 = *(a2 + 8);
  *(a1 + 56) = *(a2 + 24);
  *(a1 + 40) = v13;
  v14 = *(a2 + 40);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(a1 + 72) = v14;
  v15 = *(a2 + 48);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(a1 + 80) = v15;
  v16 = *(a2 + 56);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(a1 + 88) = v16;
  v17 = *(a2 + 64);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(a1 + 96) = v17;
  v18 = *(a2 + 72);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(a1 + 104) = v18;
  v19 = *(a2 + 88);
  *(a1 + 112) = *(a2 + 80);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *(a1 + 120) = v19;
  v20 = *(a2 + 96);
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  *(a1 + 128) = v20;
  v21 = *(a2 + 104);
  *(a1 + 152) = *(a2 + 120);
  *(a1 + 136) = v21;
  v22 = *(a2 + 208);
  v24 = *(a2 + 160);
  v23 = *(a2 + 176);
  *(a1 + 224) = *(a2 + 192);
  *(a1 + 240) = v22;
  *(a1 + 192) = v24;
  *(a1 + 208) = v23;
  *(a1 + 176) = *(a2 + 144);
  v25 = *(a2 + 236);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = v25;
  if (v25)
  {
    v26 = WTF::fastMalloc(v25);
    *(a1 + 264) = v25;
    *(a1 + 256) = v26;
    memcpy(v26, *(a2 + 224), *(a2 + 236));
  }

  *(a1 + 272) = *(a2 + 240);
  API::SecurityOrigin::createFromString((a2 + 88), &v31);
  *(a1 + 288) = v31;
  if ((a4 & 1) == 0)
  {
    a3 = 0;
  }

  *(a1 + 296) = a3;
  v27 = a5[1];
  *(a1 + 304) = *a5;
  *(a1 + 320) = v27;
  *(a1 + 336) = a6;
  if (a6)
  {
    v30 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a6);
    v28 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v30);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 344) = v28;
  return a1;
}

uint64_t WebKit::WebNotificationManagerMessageHandler::showNotification(uint64_t a1, atomic_ullong *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v10 = qword_1ED6410A8;
  v11 = os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *v18 = 0;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebNotificationManagerMessageHandler showNotification called", v18, 2u);
  }

  v12 = a3[12];
  if (v12 && *(v12 + 4))
  {
    v13 = WebKit::ServiceWorkerNotificationHandler::singleton(v11);
    return WebKit::ServiceWorkerNotificationHandler::showNotification(v13, a2, a3, v14, a5);
  }

  else
  {
    v16 = *(*(a1 + 16) + 8);
    if (v16)
    {
      CFRetain(*(v16 - 8));
      WebKit::WebPageProxy::showNotification((v16 - 16), a2, a3, a4);
      CFRelease(*(v16 - 8));
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      return (*(*v17 + 8))(v17);
    }

    else
    {
      result = 103;
      __break(0xC471u);
    }
  }

  return result;
}

void WebKit::WebNotificationManagerMessageHandler::cancelNotification(WebKit::ServiceWorkerNotificationHandler *a1, uint64_t a2, const UUID **a3)
{
  v5 = WebKit::ServiceWorkerNotificationHandler::singleton(a1);
  if (WebKit::ServiceWorkerNotificationHandler::handlesNotification(v5[2], *a3, a3[1]))
  {

    WebKit::ServiceWorkerNotificationHandler::cancelNotification(v5, v6, a3);
  }

  else
  {
    v7 = *(*(a1 + 2) + 8);
    if (v7)
    {
      CFRetain(*(v7 - 8));
      WebKit::WebPageProxy::cancelNotification((v7 - 16), a3);
      v8 = *(v7 - 8);

      CFRelease(v8);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

uint64_t WebKit::ServiceWorkerNotificationHandler::handlesNotification(uint64_t this, const UUID *a2, const UUID *a3)
{
  v14 = a2;
  v15 = a3;
  if (this)
  {
    if (!(a2 ^ 1 | a3) || !(a2 | a3))
    {
      __break(0xC471u);
      JUMPOUT(0x19E12BBA0);
    }

    v3 = this;
    v4 = *(this - 8);
    v5 = WTF::UUIDHash::hash(&v14, a2) & v4;
    v6 = (v3 + 32 * v5);
    v7 = *v6;
    v8 = v6[1];
    if (v8 == v15 && v7 == v14)
    {
      return 1;
    }

    else
    {
      v10 = 1;
      do
      {
        v11 = v7 | v8;
        this = v11 != 0;
        if (!v11)
        {
          break;
        }

        v5 = (v5 + v10) & v4;
        v12 = (v3 + 32 * v5);
        v7 = *v12;
        v8 = v12[1];
        v13 = v8 == v15 && v7 == v14;
        ++v10;
      }

      while (!v13);
    }
  }

  return this;
}

WTF *WebKit::WebNotificationManagerMessageHandler::clearNotifications(WebKit::ServiceWorkerNotificationHandler *a1, uint64_t a2)
{
  v4 = WebKit::ServiceWorkerNotificationHandler::singleton(a1);
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v6 = *(a2 + 12);
  if (v6)
  {
    if (v6 >> 28)
    {
      goto LABEL_29;
    }

    v7 = v4;
    LODWORD(v27) = *(a2 + 12);
    v26 = WTF::fastMalloc((16 * v6));
    v8 = *(a2 + 12);
    if (!v8)
    {
      goto LABEL_19;
    }

    if (v8 >> 28)
    {
LABEL_29:
      __break(0xC471u);
      JUMPOUT(0x19E12BD88);
    }

    LODWORD(v25) = *(a2 + 12);
    v24 = WTF::fastMalloc((16 * v8));
    v9 = *(a2 + 12);
    if (v9)
    {
      v10 = *a2;
      v11 = 16 * v9;
      do
      {
        if (WebKit::ServiceWorkerNotificationHandler::handlesNotification(v7[2], *v10, v10[1]))
        {
          v12 = HIDWORD(v27);
          if (HIDWORD(v27) == v27)
          {
            v13 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v26, HIDWORD(v27) + 1, v10);
            v12 = HIDWORD(v27);
            v14 = v26;
            v15 = *v13;
          }

          else
          {
            v14 = v26;
            v15 = *v10;
          }

          *(v14 + v12) = v15;
          v20 = &v27 + 4;
        }

        else
        {
          v16 = HIDWORD(v25);
          if (HIDWORD(v25) == v25)
          {
            v17 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, HIDWORD(v25) + 1, v10);
            v16 = HIDWORD(v25);
            v18 = v24;
            v19 = *v17;
          }

          else
          {
            v18 = v24;
            v19 = *v10;
          }

          *(v18 + v16) = v19;
          v20 = &v25 + 4;
        }

        ++*v20;
        v10 += 2;
        v11 -= 16;
      }

      while (v11);
      if (HIDWORD(v27))
      {
        WebKit::ServiceWorkerNotificationHandler::clearNotifications(v7, &v26);
      }
    }
  }

LABEL_19:
  if (HIDWORD(v25))
  {
    v21 = *(*(a1 + 2) + 8);
    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19E12BDA8);
    }

    CFRetain(*(v21 - 8));
    WebKit::WebPageProxy::clearNotifications(v21 - 16, &v24);
    CFRelease(*(v21 - 8));
  }

  v22 = v24;
  if (v24)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    WTF::fastFree(v22, v5);
  }

  result = v26;
  if (v26)
  {
    v26 = 0;
    LODWORD(v27) = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

void WebKit::WebNotificationManagerMessageHandler::didDestroyNotification(WebKit::WebNotificationManagerMessageHandler *this, const UUID **a2)
{
  v4 = WebKit::ServiceWorkerNotificationHandler::singleton(this);
  if (WebKit::ServiceWorkerNotificationHandler::handlesNotification(v4[2], *a2, a2[1]))
  {

    WebKit::ServiceWorkerNotificationHandler::didDestroyNotification(v4, a2);
  }

  else
  {
    v5 = *(*(this + 2) + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      WebKit::WebPageProxy::didDestroyNotification((v5 - 16), a2);
      v6 = *(v5 - 8);

      CFRelease(v6);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebNotificationManagerMessageHandler::pageWasNotifiedOfNotificationPermission(WebKit::WebNotificationManagerMessageHandler *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRetain(*(v1 - 8));
    WebKit::WebPageProxy::pageWillLikelyUseNotifications((v1 - 16));
    v2 = *(v1 - 8);

    CFRelease(v2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::WebNotificationManagerMessageHandler::requestPermission(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::WebNotificationManagerMessageHandler::getPermissionState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::WebNotificationManagerMessageHandler::getPermissionStateSync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void WebKit::WebNotificationManagerMessageHandler::sharedPreferencesForWebProcess(WebKit::WebNotificationManagerMessageHandler *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(this + 2) + 8);
  if (v4)
  {
    CFRetain(*(v4 - 8));
    v5 = *(v4 + 336);
    atomic_fetch_add((v5 + 16), 1u);
    *a2 = *(v5 + 1096);
    *(a2 + 16) = *(v5 + 1112);
    *(a2 + 24) = 1;
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    v6 = *(v4 - 8);

    CFRelease(v6);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebNotificationManagerProxy::~WebNotificationManagerProxy(WebKit::WebNotificationManagerProxy *this, void *a2)
{
  *this = &unk_1F111F298;
  v3 = (this + 16);
  *(this + 2) = &unk_1F111F2D8;
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 16);
      do
      {
        if (*(v6 - 2) ^ 1 | *(v6 - 1))
        {
          v7 = *v6;
          *v6 = 0;
          if (v7)
          {
            CFRelease(*(v7 + 8));
          }
        }

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  WebKit::WebContextSupplement::~WebContextSupplement(v3, a2);
}

{
  WebKit::WebNotificationManagerProxy::~WebNotificationManagerProxy(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void non-virtual thunk toWebKit::WebNotificationManagerProxy::~WebNotificationManagerProxy(WebKit::WebNotificationManagerProxy *this, void *a2)
{
  WebKit::WebNotificationManagerProxy::~WebNotificationManagerProxy((this - 16), a2);
}

{
  WebKit::WebNotificationManagerProxy::~WebNotificationManagerProxy((this - 16), a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::WebNotificationManagerProxy::setProvider(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
    v4 = *(a1 + 32);
    *(a1 + 32) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v3 = *(a1 + 32);
    }

    v5 = *(*v3 + 48);

    return v5();
  }

  else
  {
    v7 = API::NotificationProvider::operator new(8, a2);
    *v7 = &unk_1F111F448;
    result = *(a1 + 32);
    *(a1 + 32) = v7;
    if (result)
    {
      v8 = *(*result + 8);

      return v8();
    }
  }

  return result;
}

void WebKit::WebNotificationManagerProxy::show(uint64_t a1, uint64_t a2, atomic_ullong *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = *(a2 + 40);
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = API::Object::newObject(0x160uLL, 79);
  LOBYTE(v15) = 0;
  v16 = 0;
  v14 = WebKit::WebNotification::WebNotification(v12, a4, v10, v11, &v15, a3);
  WebKit::WebNotificationManagerProxy::showImpl(a1, a2, &v14, a5);
  v13 = v14;
  v14 = 0;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }
}

uint64_t WebKit::WebNotificationManagerProxy::showImpl(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v11 = *(*a3 + 16);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID const&>((a1 + 40), &v11, v8 + 176, v10);
  WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::UUID const&,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>&>((*a3 + 176), (a1 + 48), a3, v10);
  return (*(**(a1 + 32) + 16))(*(a1 + 32), a2, *a3, a4);
}

uint64_t WebKit::WebNotificationManagerProxy::showPersistent(uint64_t a1, uint64_t a2, atomic_ullong *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 224);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v10 = (v9 + 32);
  if (v11 | v12)
  {
    v19 = *v10;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    LOBYTE(v19) = 0;
  }

  v20 = v13;
  v14 = API::Object::newObject(0x160uLL, 79);
  v18 = WebKit::WebNotification::WebNotification(v14, a4, 0, 0, &v19, a3);
  v15 = WebKit::WebNotificationManagerProxy::showImpl(a1, 0, &v18, a5);
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    CFRelease(*(v16 + 8));
  }

  return v15;
}

void WebKit::WebNotificationManagerProxy::cancel(WebKit::WebNotificationManagerProxy *this, WebKit::WebPageProxy *a2, const WTF::UUID *a3)
{
  v5 = WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(this + 6, a3);
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    (*(**(this + 4) + 24))(*(this + 4), v6);
    WebKit::WebNotificationManagerProxy::didDestroyNotification(this, v7, a3);
    v8 = *(v6 + 8);

    CFRelease(v8);
  }
}

void WebKit::WebNotificationManagerProxy::didDestroyNotification(WebKit::WebNotificationManagerProxy *this, WebKit::WebPageProxy *a2, const WTF::UUID *a3)
{
  v4 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(this + 6, a3);
  WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 6, v4, &v10);
  if (v10)
  {
    v9 = *(v10 + 16);
    v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, &v9);
    v6 = *(this + 5);
    if (v6)
    {
      v7 = (v6 + 32 * *(v6 - 4));
      if (v7 == v5)
      {
LABEL_9:
        (*(**(this + 4) + 32))(*(this + 4), v10);
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          CFRelease(*(v8 + 8));
        }

        return;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v7 = 0;
    }

    if (v7 != v5)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 5, v5);
    }

    goto LABEL_9;
  }
}

WTF *WebKit::WebNotificationManagerProxy::clearNotifications(WTF *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v6 = (result + 40);
  v5 = *(result + 5);
  v35 = a2;
  if (v5 && (v7 = *(v5 - 12), v7))
  {
    if (v7 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v8 = WTF::fastMalloc((8 * v7));
    LODWORD(v38) = v7;
    v37 = v8;
    a2 = v35;
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
LABEL_5:
      v33 = 0;
      goto LABEL_8;
    }
  }

  v33 = *(a2 + 40);
LABEL_8:
  v9 = *(v4 + 6);
  v34 = (v4 + 48);
  if (v9)
  {
    v10 = *(v9 - 4);
    v11 = (v9 + 32 * v10);
    if (*(v9 - 12))
    {
      if (!v10)
      {
        v14 = 0;
        v13 = *(v4 + 6);
        goto LABEL_20;
      }

      v12 = 32 * v10;
      v13 = *(v4 + 6);
      while (*v13 <= 1uLL)
      {
        v13 += 4;
        v12 -= 32;
        if (!v12)
        {
          v13 = v11;
          break;
        }
      }

LABEL_15:
      v14 = *(v9 - 4);
LABEL_20:
      v15 = (v9 + 32 * v14);
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v13 = v11;
  v11 = (v9 + 32 * v10);
  if (v9)
  {
    goto LABEL_15;
  }

  v15 = 0;
LABEL_21:
  if (v13 == v15)
  {
    goto LABEL_60;
  }

  v16 = 0;
  v17 = *(a3 + 12);
  do
  {
    v18 = v13[2];
    CFRetain(*(v18 + 8));
    if (v17)
    {
      v19 = *(a3 + 12);
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = *a3;
      while (v20[1] != *(v18 + 184) || *v20 != *(v18 + 176))
      {
        v20 += 2;
        if (!--v19)
        {
          if (v18)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }
    }

    v22 = *(v18 + 296);
    if (v35 && v22)
    {
      if (v33 == v22)
      {
        goto LABEL_38;
      }
    }

    else if ((v35 != 0) == (v22 != 0))
    {
LABEL_38:
      v23 = *(v18 + 16);
      v39[0] = v23;
      if (v16 == v38)
      {
        v24 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, v16 + 1, v39);
        v25 = HIDWORD(v38);
        v8 = v37;
        *(v37 + HIDWORD(v38)) = *v24;
      }

      else
      {
        *(v8 + v16) = v23;
        v25 = HIDWORD(v38);
      }

      v16 = v25 + 1;
      HIDWORD(v38) = v25 + 1;
    }

LABEL_42:
    CFRelease(*(v18 + 8));
    do
    {
LABEL_43:
      v13 += 4;
    }

    while (v13 != v11 && *v13 <= 1uLL);
  }

  while (v13 != v15);
  if (v16)
  {
    for (i = 8 * v16; i; i -= 8)
    {
      v36 = *v8;
      v27 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6, &v36);
      if (*v6)
      {
        if ((*v6 + 32 * *(*v6 - 4)) == v27)
        {
          goto LABEL_59;
        }
      }

      else if (!v27)
      {
        goto LABEL_59;
      }

      v28 = v27[2];
      v29 = v27[3];
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v6, v27);
      v39[0] = v28;
      v39[1] = v29;
      v40 = 1;
      v30 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(v34, v39);
      if (*v34)
      {
        v31 = *v34 + 32 * *(*v34 - 4);
        if (v31 != v30)
        {
          goto LABEL_57;
        }
      }

      else if (v30)
      {
        v31 = 0;
LABEL_57:
        if (v31 != v30)
        {
          WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(v34, v30);
        }
      }

LABEL_59:
      v8 = (v8 + 8);
    }
  }

LABEL_60:
  (*(**(v4 + 4) + 40))(*(v4 + 4), &v37);
  result = v37;
  if (v37)
  {
    v37 = 0;
    LODWORD(v38) = 0;
    return WTF::fastFree(result, v32);
  }

  return result;
}

void WebKit::WebNotificationManagerProxy::providerDidShowNotification(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v12);
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 += 32 * *(v4 - 4);
  }

  if (v4 != v3)
  {
    v5 = v3 + 16;
    v6 = WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>((a1 + 48), (v3 + 16));
    if (v6)
    {
      v7 = v6;
      CFRetain(*(v6 + 8));
      v8 = *(v7 + 344);
      if (v8)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v7 + 336), &v11);
        if (v11)
        {
          v10 = v5;
          IPC::Connection::send<Messages::WebNotificationManager::DidShowNotification>(v11, &v10, 0, 0, 0);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
          }
        }
      }

      CFRelease(*(v7 + 8));
    }
  }
}

uint64_t IPC::Connection::send<Messages::WebNotificationManager::DidShowNotification>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2142;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v18 = v10;
  v11 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(*a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *v11);
  v13 = IPC::Connection::sendMessageImpl(a1, &v18, a4, a5);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v13;
}

void WebKit::WebNotificationManagerProxy::providerDidClickNotification(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 5, &v5);
  v4 = a1[5];
  if (v4)
  {
    v4 += 32 * *(v4 - 4);
  }

  if (v4 != v3)
  {
    WebKit::WebNotificationManagerProxy::providerDidClickNotification(a1, (v3 + 16));
  }
}

void WebKit::WebNotificationManagerProxy::providerDidClickNotification(WebKit::WebNotificationManagerProxy *this, const WTF::UUID *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(this + 6, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFRetain(*(v2 + 8));
    v5 = *(v3 + 128);
    if (v5 && *(v5 + 4))
    {
      *buf = *(v3 + 240);
      v6 = WebKit::allDataStores(v4);
      v7 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v6, buf);
      if (v7)
      {
        v8 = v7;
        CFRetain(*(v7 + 8));
        v10 = WebKit::WebsiteDataStore::networkProcess(v8, v9);
        atomic_fetch_add((v10 + 16), 1u);
        v11 = WTF::fastMalloc(0x10);
        *v11 = &unk_1F111F4A0;
        *buf = v11;
        WebKit::NetworkProcessProxy::processNotificationEvent(v10, v3 + 32, 0, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
        CFRelease(v8[1]);
      }

      else
      {
        v21 = qword_1ED640EA0;
        if (os_log_type_enabled(qword_1ED640EA0, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v3 + 240);
          *buf = 134217984;
          *&buf[4] = v22;
          _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "WebsiteDataStore not found from sessionID %llu, dropping notification click", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = *(v3 + 344);
      if (v12)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v12, *(v3 + 336), &v23);
        v14 = v23;
        if (v23)
        {
          v15 = IPC::Encoder::operator new(0x238, v13);
          *v15 = 2139;
          *(v15 + 68) = 0;
          *(v15 + 70) = 0;
          *(v15 + 69) = 0;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 1) = 0;
          IPC::Encoder::encodeHeader(v15);
          *buf = v15;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, *(v3 + 184));
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, *(v3 + 176));
          IPC::Connection::sendMessageImpl(v14, buf, 0, 0);
          v17 = *buf;
          *buf = 0;
          if (v17)
          {
            IPC::Encoder::~Encoder(v17, v16);
            bmalloc::api::tzoneFree(v19, v20);
          }

          v18 = v23;
          v23 = 0;
          if (v18)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
          }
        }
      }
    }

    CFRelease(*(v3 + 8));
  }
}

void WebKit::WebNotificationManagerProxy::providerDidCloseNotifications(WebKit::WebNotificationManagerProxy *this, API::Array *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  v2 = *(a2 + 7);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  for (i = 0; i != v2; ++i)
  {
    LOBYTE(v57[0]) = 0;
    v58 = 0;
    v6 = *(v3 + 7);
    if (i >= v6)
    {
LABEL_76:
      __break(0xC471u);
      JUMPOUT(0x19E12D4F0);
    }

    v7 = *(*(v3 + 2) + 8 * i);
    if (!v7)
    {
      goto LABEL_13;
    }

    if ((*(*v7 + 16))(v7) != 33)
    {
      v6 = *(v3 + 7);
LABEL_13:
      if (i >= v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19E12D4F8);
      }

      v11 = *(*(v3 + 2) + 8 * i);
      if (!v11 || (*(*v11 + 16))(v11) != 8)
      {
        continue;
      }

      CFRetain(*(v11 + 8));
      if (*(v11 + 24) != 16)
      {
        CFRelease(*(v11 + 8));
        continue;
      }

      v12 = *(v11 + 16);
      v14 = *v12;
      v13 = v12[1];
      v57[0] = v14;
      v57[1] = v13;
      if ((v58 & 1) == 0)
      {
        v58 = 1;
      }

      CFRelease(*(v11 + 8));
      if ((v58 & 1) == 0)
      {
        __break(1u);
      }

      v7 = 0;
      v10 = 1;
LABEL_21:
      v15 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(this + 6, v57);
      WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 6, v15, &v53);
      if (!v53)
      {
        v25 = 4;
        goto LABEL_43;
      }

      v17 = v53[16];
      if (v17 && *(v17 + 4))
      {
        *buf = v53[30];
        v18 = WebKit::allDataStores(v16);
        v19 = WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(v18, buf);
        if (v19)
        {
          v20 = v19;
          CFRetain(*(v19 + 8));
          v22 = WebKit::WebsiteDataStore::networkProcess(v20, v21);
          atomic_fetch_add((v22 + 16), 1u);
          v23 = v53;
          v24 = WTF::fastMalloc(0x10);
          *v24 = &unk_1F1120710;
          *buf = v24;
          WebKit::NetworkProcessProxy::processNotificationEvent(v22, (v23 + 4), 1, buf);
          if (*buf)
          {
            (*(**buf + 8))(*buf);
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v22 + 16));
          CFRelease(v20[1]);
          v25 = 1;
        }

        else
        {
          v35 = qword_1ED640EA0;
          if (os_log_type_enabled(qword_1ED640EA0, OS_LOG_TYPE_ERROR))
          {
            v36 = v53[30];
            *buf = 134217984;
            *&buf[4] = v36;
            _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "WebsiteDataStore not found from sessionID %llu, dropping notification close", buf, 0xCu);
          }

          v25 = 1;
        }

        goto LABEL_41;
      }

      *buf = v53[2];
      v26 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, buf);
      a2 = v26;
      v27 = *(this + 5);
      if (v27)
      {
        v28 = (v27 + 32 * *(v27 - 4));
        if (v28 == v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!v26)
        {
LABEL_37:
          v29 = HIDWORD(v55);
          if (HIDWORD(v55) == v55)
          {
            v30 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v54, HIDWORD(v55) + 1, &v53);
            v25 = 0;
            v29 = HIDWORD(v55);
            v31 = HIDWORD(v55) + 1;
            v32 = v54;
            v33 = *v30;
            *v30 = 0;
          }

          else
          {
            v25 = 0;
            v31 = HIDWORD(v55) + 1;
            v33 = v53;
            v32 = v54;
            v53 = 0;
          }

          *(v32 + v29) = v33;
          HIDWORD(v55) = v31;
LABEL_41:
          v34 = v53;
          v53 = 0;
          if (v34)
          {
            CFRelease(v34[1]);
          }

LABEL_43:
          if (v10)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v28 = 0;
      }

      if (v28 != v26)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 5, v26);
      }

      goto LABEL_37;
    }

    CFRetain(*(v7 + 8));
    *buf = *(v7 + 16);
    if ((*buf - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_76;
    }

    v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, buf);
    v9 = *(this + 5);
    if (v9)
    {
      v9 += 32 * *(v9 - 4);
    }

    if (v9 != v8)
    {
      *v57 = *(v8 + 16);
      v10 = 0;
      if ((v58 & 1) == 0)
      {
        v58 = 1;
      }

      goto LABEL_21;
    }

    v25 = 4;
LABEL_44:
    CFRelease(*(v7 + 8));
LABEL_45:
    if ((v25 | 4) != 4)
    {
      v38 = HIDWORD(v55);
      v37 = v54;
      goto LABEL_65;
    }
  }

  v37 = v54;
  v38 = HIDWORD(v55);
  if (!HIDWORD(v55))
  {
    goto LABEL_70;
  }

  v39 = 0;
  v40 = 8 * HIDWORD(v55);
  do
  {
    v41 = *(v37 + v39);
    v42 = *(v41 + 344);
    if (v42)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v42, *(v41 + 336), &v53);
      if (v53)
      {
        *buf = *(*(v37 + v39) + 176);
        WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v57, buf, 1uLL);
        v43 = v53;
        v45 = IPC::Encoder::operator new(0x238, v44);
        *v45 = 2140;
        *(v45 + 68) = 0;
        *(v45 + 70) = 0;
        *(v45 + 69) = 0;
        *(v45 + 2) = 0;
        *(v45 + 3) = 0;
        *(v45 + 1) = 0;
        IPC::Encoder::encodeHeader(v45);
        *buf = v45;
        IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v45, v57);
        IPC::Connection::sendMessageImpl(v43, buf, 0, 0);
        v46 = *buf;
        *buf = 0;
        if (v46)
        {
          IPC::Encoder::~Encoder(v46, a2);
          bmalloc::api::tzoneFree(v49, v50);
        }

        v47 = v57[0];
        if (v57[0])
        {
          v57[0] = 0;
          LODWORD(v57[1]) = 0;
          WTF::fastFree(v47, a2);
        }

        v48 = v53;
        v53 = 0;
        if (v48)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v48);
        }
      }
    }

    v39 += 8;
  }

  while (v40 != v39);
LABEL_65:
  if (v38)
  {
    v51 = 0;
    do
    {
      v52 = *(v37 + v51);
      *(v37 + v51) = 0;
      if (v52)
      {
        CFRelease(*(v52 + 8));
      }

      v51 += 8;
    }

    while (8 * v38 != v51);
  }

LABEL_70:
  if (v37)
  {
    v54 = 0;
    LODWORD(v55) = 0;
    WTF::fastFree(v37, a2);
  }
}

WTF::StringImpl *WebKit::WebNotificationManagerProxy::providerDidUpdateNotificationPolicy(WebKit::WebNotificationManagerProxy *this, const API::SecurityOrigin *a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640EA0;
  if (os_log_type_enabled(qword_1ED640EA0, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::SecurityOriginData::toString(&v29, (a2 + 16));
    WTF::String::utf8();
    if (v31)
    {
      v7 = v31 + 16;
    }

    else
    {
      v7 = 0;
    }

    *buf = 136643075;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "Provider did update notification policy for origin %{sensitive}s to %d", buf, 0x12u);
    v9 = v31;
    v31 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::fastFree(v9, v8);
      }

      else
      {
        --*v9;
      }
    }

    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  v11 = (a2 + 16);
  result = WebCore::SecurityOriginData::toString(&v28, v11);
  if (v28)
  {
    if (*(v28 + 1))
    {
      if (WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(result) == this)
      {
        v21 = WTF::fastMalloc(0x18);
        *v21 = &unk_1F111F4C8;
        *(v21 + 8) = v11;
        *(v21 + 16) = a3;
        *buf = v21;
        WebKit::WebsiteDataStore::forEachWebsiteDataStore(buf);
        (*(*v21 + 8))(v21);
        {
          WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
          *algn_1ED643608 = 0;
        }

        WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, buf);
        if (WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes)
        {
          v22 = *(WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes - 4);
          v23 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v22;
        }

        else
        {
          v23 = 0;
          v22 = 0;
        }

        v31 = &WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes;
        v32 = v23;
        v33 = v23;
        v34 = v23;
        v35 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v22;
        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v31);
        for (i = *&buf[8]; *&buf[8] != v32; i = *&buf[8])
        {
          v25 = *(*i + 8);
          v26 = (v25 + 16);
          atomic_fetch_add((v25 + 16), 1u);
          v27 = *(v25 + 80);
          if (v27 && (*(v27 + 104) & 1) != 0 || *(v25 + 88))
          {
            v29 = &v28;
            v30 = a3;
            WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidUpdateNotificationDecision>(v25, &v29);
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v26);
          WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
        }
      }

      else
      {
        v14 = *(this + 3);
        if (v14)
        {
          v15 = *(v14 + 8);
          if (v15)
          {
            CFRetain(*(v15 - 8));
            v16 = *(v15 + 68);
            if (v16)
            {
              v17 = *(v15 + 56);
              v18 = 8 * v16;
              do
              {
                v19 = *v17;
                v20 = *(*v17 + 80);
                if (v20 && (*(v20 + 104) & 1) != 0 || *(v19 + 88))
                {
                  *buf = &v28;
                  buf[8] = a3;
                  WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidUpdateNotificationDecision>(v19, buf);
                }

                ++v17;
                v18 -= 8;
              }

              while (v18);
            }

            CFRelease(*(v15 - 8));
          }
        }
      }
    }

    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

void WebKit::WebNotificationManagerProxy::providerDidRemoveNotificationPolicies(WebKit::WebNotificationManagerProxy *this, API::Array *a2)
{
  if (!*(a2 + 7))
  {
    return;
  }

  if (WebKit::WebNotificationManagerProxy::serviceWorkerManagerSingleton(this) != this)
  {
    v5 = *(this + 3);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        CFRetain(*(v6 - 8));
        WebKit::apiArrayToSecurityOriginStrings(&v37, a2);
        v8 = *(v6 + 68);
        if (v8)
        {
          v9 = *(v6 + 56);
          v10 = 8 * v8;
          do
          {
            v11 = *v9;
            v12 = *(*v9 + 80);
            if (v12 && (*(v12 + 104) & 1) != 0 || *(v11 + 88))
            {
              v32 = &v37;
              WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidRemoveNotificationDecisions>(v11, &v32);
            }

            ++v9;
            v10 -= 8;
          }

          while (v10);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v7);
        CFRelease(*(v6 - 8));
      }
    }

    return;
  }

  v13 = *(a2 + 7);
  v37 = 0;
  v38 = 0;
  if (!v13)
  {
    goto LABEL_35;
  }

  if (v13 >> 27)
  {
LABEL_48:
    __break(0xC471u);
    JUMPOUT(0x19E12DB68);
  }

  v14 = 0;
  LODWORD(v38) = v13;
  v37 = WTF::fastMalloc((32 * v13));
  v15 = (v37 + 24);
  do
  {
    if (v14 >= *(a2 + 7))
    {
      goto LABEL_48;
    }

    v16 = *(*(a2 + 2) + 8 * v14);
    if ((*(*v16 + 16))(v16) == 18)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v17 + 40);
    if (*(v17 + 40))
    {
      if (v18 == 255)
      {
        *(v15 - 24) = 0;
        *v15 = -1;
        goto LABEL_28;
      }

      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
    }

    else
    {
      v19 = *(v17 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v20 = *(v17 + 24);
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v2 = *(v17 + 32);
      v18 = *(v17 + 40);
    }

    *(v15 - 24) = 0;
    *v15 = -1;
    if (v18)
    {
      if (v18 != 255)
      {
        *(v15 - 3) = v19;
        *(v15 - 2) = v20;
        *v15 = v18;
      }
    }

    else
    {
      *(v15 - 3) = v19;
      *(v15 - 2) = v20;
      *(v15 - 2) = v2;
      *v15 = 0;
    }

LABEL_28:
    ++v14;
    v15 += 32;
  }

  while (v13 != v14);
  HIDWORD(v38) = v13;
LABEL_35:
  v21 = WTF::fastMalloc(0x10);
  *v21 = &unk_1F111F518;
  v21[1] = &v37;
  v32 = v21;
  WebKit::WebsiteDataStore::forEachWebsiteDataStore(&v32);
  (*(*v21 + 8))(v21);
  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v22);
  WebKit::apiArrayToSecurityOriginStrings(v30, a2);
  {
    WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
    *algn_1ED643608 = 0;
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, &v37);
  if (WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes)
  {
    v23 = *(WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes - 4);
    v24 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v23;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v32 = &WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes;
  v33 = v24;
  v34 = v24;
  v35 = v24;
  v36 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v23;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
  for (i = v38; v38 != v33; i = v38)
  {
    v27 = *(*i + 8);
    v28 = (v27 + 16);
    atomic_fetch_add((v27 + 16), 1u);
    v29 = *(v27 + 80);
    if (v29 && (*(v29 + 104) & 1) != 0 || *(v27 + 88))
    {
      v31 = v30;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidRemoveNotificationDecisions>(v27, &v31);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v28);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v37);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v25);
}

WTF::StringImpl *WebKit::apiArrayToSecurityOriginStrings(WTF::StringImpl *this, API::Array *a2)
{
  v2 = this;
  if (a2)
  {
    v4 = *(a2 + 7);
    *this = 0;
    *(this + 1) = 0;
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v5 = WTF::fastMalloc((8 * v4));
        v6 = 0;
        *(v2 + 2) = v4;
        *v2 = v5;
        while (v6 < *(a2 + 7))
        {
          v7 = *(*(a2 + 2) + 8 * v6);
          if ((*(*v7 + 16))(v7) == 18)
          {
            v8 = v7;
          }

          else
          {
            v8 = 0;
          }

          WebCore::SecurityOriginData::toString(&v13, (v8 + 16));
          v10 = *(v2 + 3);
          v11 = *v2;
          v12 = v13;
          v13 = 0;
          *(v11 + 8 * v10) = v12;
          *(v2 + 3) = v10 + 1;
          this = v13;
          v13 = 0;
          if (this)
          {
            if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, v9);
            }
          }

          if (v4 == ++v6)
          {
            return this;
          }
        }

        __break(0xC471u);
      }

      JUMPOUT(0x19E12DC80);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }

  return this;
}

uint64_t WebKit::WebNotificationManagerProxy::getNotifications(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t *a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  v8 = *(a1 + 48);
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
LABEL_10:
    v12 = v10;
    v10 = (v8 + 32 * v9);
    if (!v8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v9 = *(v8 - 4);
  v10 = (v8 + 32 * v9);
  if (!*(v8 - 12))
  {
    goto LABEL_10;
  }

  if (!v9)
  {
    v13 = 0;
    v12 = *(a1 + 48);
    goto LABEL_13;
  }

  v11 = 32 * v9;
  v12 = *(a1 + 48);
  while (*v12 <= 1uLL)
  {
    v12 += 4;
    v11 -= 32;
    if (!v11)
    {
      v12 = v10;
      break;
    }
  }

LABEL_8:
  v13 = *(v8 - 4);
LABEL_13:
  v14 = (v8 + 32 * v13);
LABEL_14:
  if (v12 == v14)
  {
    v21 = 0;
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v12[2];
      if (WTF::equal(*(v17 + 128), *a2, a3))
      {
        if (*(v17 + 240) == a4)
        {
          v18 = *a3;
          if (!*a3 || !*(v18 + 1) || WTF::equal(*(v17 + 96), v18, a3))
          {
            v19 = v12[2];
            v66 = v19;
            if (v16 == v65)
            {
              v20 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v64, v16 + 1, &v66);
              v16 = HIDWORD(v65);
              v15 = v64;
              *(v64 + HIDWORD(v65)) = *v20;
            }

            else
            {
              *(v15 + 8 * v16) = v19;
            }

            HIDWORD(v65) = ++v16;
          }
        }
      }

      do
      {
        v12 += 4;
      }

      while (v12 != v10 && *v12 <= 1uLL);
    }

    while (v12 != v14);
    v21 = (v15 + 8 * v16);
    if (v16)
    {
      v22 = 126 - 2 * __clz(v16);
      goto LABEL_32;
    }
  }

  v22 = 0;
LABEL_32:
  result = std::__introsort<std::_RangeAlgPolicy,WebKit::WebNotificationManagerProxy::getNotifications(WTF::URL const&,WTF::String const&,PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0 &,WebKit::WebNotification **,false>(v15, v21, v22, 1);
  v62 = 0;
  v63 = 0;
  v24 = HIDWORD(v65);
  if (HIDWORD(v65))
  {
    if (HIBYTE(HIDWORD(v65)))
    {
      __break(0xC471u);
      return result;
    }

    v25 = WTF::fastMalloc((HIDWORD(v65) << 8));
    LODWORD(v63) = v24;
    v62 = v25;
    v26 = v64;
    if (HIDWORD(v65))
    {
      v27 = v25;
      v28 = 0;
      v29 = 0;
      v30 = HIDWORD(v65) << 8;
      do
      {
        v31 = *(v26 + v29);
        v32 = *(v31 + 32);
        if (v32)
        {
          atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        }

        v66 = v32;
        v33 = *(v31 + 56);
        v67 = *(v31 + 40);
        v68 = v33;
        v34 = *(v31 + 72);
        if (v34)
        {
          atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
        }

        v69 = v34;
        v35 = *(v31 + 80);
        if (v35)
        {
          atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
        }

        v70 = v35;
        v36 = *(v31 + 88);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
        }

        v71 = v36;
        v37 = *(v31 + 96);
        if (v37)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
        }

        v72 = v37;
        v38 = *(v31 + 104);
        if (v38)
        {
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
        }

        v73 = v38;
        v74 = *(v31 + 112);
        v39 = *(v31 + 120);
        if (v39)
        {
          atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
        }

        v75 = v39;
        v40 = *(v31 + 128);
        if (v40)
        {
          atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
        }

        v76 = v40;
        v77 = *(v31 + 136);
        v78 = *(v31 + 152);
        v41 = *(v31 + 224);
        v81 = *(v31 + 208);
        v42 = *(v31 + 192);
        v79 = *(v31 + 176);
        v80 = v42;
        v43 = *(v31 + 240);
        v82 = v41;
        v83 = v43;
        v44 = *(v31 + 268);
        v84 = 0;
        v85 = 0;
        v86 = v44;
        if (v44)
        {
          v45 = WTF::fastMalloc(v44);
          v85 = v44;
          v84 = v45;
          memcpy(v45, *(v31 + 256), *(v31 + 268));
        }

        v87 = *(v31 + 272);
        v46 = v27 + v28;
        WTF::URL::URL(v27 + v28, &v66);
        v47 = v69;
        v69 = 0;
        *(v46 + 40) = v47;
        v48 = v70;
        v70 = 0;
        *(v46 + 48) = v48;
        v49 = v71;
        v71 = 0;
        *(v46 + 56) = v49;
        v50 = v72;
        v72 = 0;
        *(v46 + 64) = v50;
        v51 = v73;
        v73 = 0;
        *(v46 + 72) = v51;
        *(v46 + 80) = v74;
        v52 = v75;
        v75 = 0;
        *(v46 + 88) = v52;
        WTF::URL::URL(v27 + v28 + 96, &v76);
        *(v46 + 144) = v79;
        v53 = v80;
        v54 = v81;
        v55 = v83;
        *(v46 + 192) = v82;
        *(v46 + 208) = v55;
        *(v46 + 160) = v53;
        *(v46 + 176) = v54;
        v56 = v84;
        v84 = 0;
        *(v46 + 224) = v56;
        LODWORD(v56) = v85;
        v85 = 0;
        *(v46 + 232) = v56;
        LODWORD(v56) = v86;
        v86 = 0;
        *(v46 + 236) = v56;
        *(v46 + 240) = v87;
        ++v29;
        WebCore::NotificationData::~NotificationData(&v66, v57);
        v28 += 256;
      }

      while (v30 != v28);
      HIDWORD(v63) = v29;
    }
  }

  else
  {
    v26 = v64;
  }

  v58 = *a5;
  *a5 = 0;
  (*(*v58 + 16))(v58, &v62);
  (*(*v58 + 8))(v58);
  result = WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v59);
  if (v26)
  {
    return WTF::fastFree(v26, v60);
  }

  return result;
}

void WebKit::ServiceWorkerNotificationHandler::~ServiceWorkerNotificationHandler(WebKit::ServiceWorkerNotificationHandler *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebNotificationManagerMessageHandler::~WebNotificationManagerMessageHandler(WebKit::WebNotificationManagerMessageHandler *this, void *a2)
{
  *this = &unk_1F111F200;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  *this = &unk_1F111F200;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebNotification::~WebNotification(WebKit::WebNotification *this, void *a2)
{
  *this = &unk_1F111F1D8;
  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 36);
  *(this + 36) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  WebCore::NotificationData::~NotificationData((this + 32), a2);
}

{
  *this = &unk_1F111F1D8;
  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 36);
  *(this + 36) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  WebCore::NotificationData::~NotificationData((this + 32), a2);

  JUMPOUT(0x19EB14CF0);
}

WebKit::DownloadProxyMap *std::unique_ptr<WebKit::DownloadProxyMap>::reset[abi:sn200100](WebKit::DownloadProxyMap **a1, WebKit::DownloadProxyMap *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::DownloadProxyMap::~DownloadProxyMap(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessAssertion,WTF::RawPtrTraits<WebKit::ProcessAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111F3A8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111F3A8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkProcessProxy::processPushMessage(PAL::SessionID,WebKit::WebPushMessage const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "NetworkProcess is taking too much time to process a push message", v5, 2u);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }
}