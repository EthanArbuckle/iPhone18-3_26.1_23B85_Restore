void sub_19D6E2970(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a26 == 1 && a24 == 1)
  {
    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a22, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::FileSystemSyncAccessHandleInfo,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
  IPC::ArgumentCoder<IPC::SharedFileHandle,void>::encode(a1, (a2 + 1));
  v4 = a2[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebKit::FileSystemSyncAccessHandleInfo,void>::decode(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = *this;
  if (v4 <= &v5[-*this])
  {
    *this = 0;
    *(this + 1) = 0;
    v24 = *(this + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_39;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_39:
    *v2 = 0;
    *(v2 + 1) = 0;
    v25 = *(v2 + 3);
    if (v25)
    {
      if (v4)
      {
        (*(*v25 + 16))(v25);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_42:
    *v2 = 0;
    *(v2 + 1) = 0;
    v26 = *(v2 + 3);
    if (v26 && v4)
    {
      (*(*v26 + 16))(v26, v6);
    }

    goto LABEL_43;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_42;
  }

  if (!v7)
  {
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this);
    if (v10)
    {
      v8 = v9;
      goto LABEL_8;
    }

LABEL_43:
    v27 = *v2;
    v28 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v29 = *(v2 + 3);
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v27);
    }

    v8 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_8:
  v11 = 1;
LABEL_9:
  IPC::Decoder::takeLastAttachment(v2, &v30);
  if (!*v2)
  {
    goto LABEL_28;
  }

  if ((v30 & 0x100000000) == 0)
  {
    goto LABEL_27;
  }

  fileport_makefd();
  WTF::FileSystemImpl::FileHandle::FileHandle();
  WTF::FileSystemImpl::FileHandle::FileHandle();
  v34 = 1;
  WTF::FileSystemImpl::FileHandle::~FileHandle(v35);
  while (1)
  {
    if (BYTE4(v30) == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v30);
    }

    v12 = *(v2 + 1);
    if ((v34 & 1) == 0)
    {
      v20 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      v21 = *(v2 + 3);
      if (v21)
      {
        if (v12)
        {
          (*(*v21 + 16))(v21, v20);
          v12 = *(v2 + 1);
        }
      }

      else
      {
        v12 = 0;
      }
    }

    v13 = *v2;
    v14 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14 - *v2;
    v16 = v12 >= v15;
    v17 = v12 - v15;
    if (!v16 || v17 <= 7)
    {
      break;
    }

    *(v2 + 2) = v14 + 1;
    if (!v14)
    {
      goto LABEL_35;
    }

    v18 = *v14;
    v19 = 1;
    if (!v13)
    {
      goto LABEL_36;
    }

LABEL_20:
    if (v11)
    {
      v30 = v8;
      if (v34)
      {
        v2 = &v30;
        WTF::FileSystemImpl::FileHandle::FileHandle();
        if (v19)
        {
          v32 = v18;
          *a2 = v30;
          WTF::FileSystemImpl::FileHandle::FileHandle();
          *(a2 + 16) = v32;
          *(a2 + 24) = 1;
          WTF::FileSystemImpl::FileHandle::~FileHandle(&v31);
          goto LABEL_24;
        }
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v33[0] = 0;
    v34 = 0;
  }

  *v2 = 0;
  *(v2 + 1) = 0;
  v22 = *(v2 + 3);
  if (v22)
  {
    if (v12)
    {
      (*(*v22 + 16))(v22);
      v12 = *(v2 + 1);
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_35:
  *v2 = 0;
  *(v2 + 1) = 0;
  v23 = *(v2 + 3);
  if (v23)
  {
    if (v12)
    {
      (*(*v23 + 16))(v23);
      v19 = 0;
      v18 = 0;
      if (*v2)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_24:
  if (v34 == 1)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(v33);
  }
}

void sub_19D6E2DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, char a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1)
  {
    WTF::FileSystemImpl::FileHandle::~FileHandle(&a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::OptionItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 10));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::FocusedElementInformation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(a1, a2 + 16);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 136));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 140));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 156));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 160));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 176));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 177));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 178));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 179));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 180));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 181));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 182));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 183));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 184));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 185));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 186));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 187));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 192));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 212));
  v4 = *(a2 + 212);
  if (v4)
  {
    v6 = *(a2 + 200);
    v7 = 16 * v4;
    do
    {
      v8 = v6;
      IPC::ArgumentCoder<WebKit::OptionItem,void>::encode(a1, v6);
      v6 = v8 + 16;
      v7 -= 16;
    }

    while (v7);
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 216));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 224));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 232));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 240));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 248));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 249));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 256));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 296));
  v9 = *(a2 + 297);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 304));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 312));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 320));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 328));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 329));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 336));
  v10 = *(a2 + 344);
  IPC::Encoder::operator<<<BOOL>(a1, &v10);
  IPC::VectorArgumentCoder<false,WebCore::Color,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 352);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 368));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 369));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 370));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 371));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 372));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 373));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 374));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 375));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 376));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 377));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 384));
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 392));
  return IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData> const&>(a1, a2 + 416);
}

void IPC::ArgumentCoder<WebKit::FocusedElementInformation,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v468 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::IntRect>(a1, &v392);
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v465);
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<unsigned long long>(a1);
  v9 = v8;
  v10 = IPC::Decoder::decode<unsigned long long>(a1);
  v358 = v11;
  v12 = v10;
  v354 = IPC::Decoder::decode<unsigned long long>(a1);
  v356 = v13;
  v352 = IPC::Decoder::decode<unsigned long long>(a1);
  v353 = v14;
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = *a1;
  if (v15 <= &v16[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v230 = *(a1 + 3);
    if (v230)
    {
      if (v15)
      {
        (*(*v230 + 16))(v230);
        v15 = *(a1 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_448:
    *a1 = 0;
    *(a1 + 1) = 0;
    v231 = *(a1 + 3);
    if (v231)
    {
      if (v15)
      {
        (*(*v231 + 16))(v231);
        v18 = 0;
        v17 = *a1;
        v15 = *(a1 + 1);
        goto LABEL_451;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
    v18 = 0;
    goto LABEL_451;
  }

  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_448;
  }

  v18 = *v16;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_5;
  }

LABEL_451:
  *a1 = 0;
  *(a1 + 1) = 0;
  v232 = *(a1 + 3);
  if (v232 && v15)
  {
    (*(*v232 + 16))(v232, v17);
  }

  v19 = 0;
LABEL_5:
  v351 = v19;
  if (!v18)
  {
    v19 = 0;
  }

  v350 = v19;
  IPC::Decoder::decode<WebCore::IntRect>(a1, &v390);
  v20 = *(a1 + 1);
  v21 = *(a1 + 2);
  v22 = *a1;
  if (v20 <= &v21[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v233 = *(a1 + 3);
    if (v233)
    {
      if (v20)
      {
        (*(*v233 + 16))(v233);
        v20 = *(a1 + 1);
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_455:
    *a1 = 0;
    *(a1 + 1) = 0;
    v234 = *(a1 + 3);
    if (v234)
    {
      if (v20)
      {
        (*(*v234 + 16))(v234);
        v23 = 0;
        v22 = *a1;
        v20 = *(a1 + 1);
        goto LABEL_458;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_458;
  }

  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
    goto LABEL_455;
  }

  v23 = *v21;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_11;
  }

LABEL_458:
  *a1 = 0;
  *(a1 + 1) = 0;
  v235 = *(a1 + 3);
  if (v235 && v20)
  {
    (*(*v235 + 16))(v235, v22);
  }

  v24 = 0;
LABEL_11:
  v349 = v24;
  if (!v23)
  {
    v24 = 0;
  }

  v348 = v24;
  IPC::Decoder::decode<WebCore::IntRect>(a1, &v388);
  v25 = *(a1 + 1);
  v26 = *(a1 + 2);
  v27 = *a1;
  if (v25 <= &v26[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v236 = *(a1 + 3);
    if (v236)
    {
      if (v25)
      {
        (*(*v236 + 16))(v236);
        v25 = *(a1 + 1);
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_462:
    *a1 = 0;
    *(a1 + 1) = 0;
    v237 = *(a1 + 3);
    if (v237)
    {
      if (v25)
      {
        (*(*v237 + 16))(v237);
        v29 = 0;
        v27 = *a1;
        v25 = *(a1 + 1);
        goto LABEL_465;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 0;
    v29 = 0;
    goto LABEL_465;
  }

  v28 = v26 + 1;
  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
    goto LABEL_462;
  }

  v29 = *v26;
  if (v29 < 2)
  {
    v30 = 1;
    goto LABEL_17;
  }

LABEL_465:
  *a1 = 0;
  *(a1 + 1) = 0;
  v238 = *(a1 + 3);
  if (!v238 || !v25)
  {
    v347 = 0;
    v239 = 0;
    v27 = 0;
LABEL_467:
    *a1 = 0;
    *(a1 + 1) = 0;
    v240 = *(a1 + 3);
    if (v240 && v239)
    {
      (*(*v240 + 16))(v240, v27, v239);
      v33 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v33 = 0;
    }

    goto LABEL_469;
  }

  (*(*v238 + 16))(v238, v27);
  v30 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v28 = *(a1 + 2);
LABEL_17:
  BYTE4(v347) = v30;
  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  LOBYTE(v347) = v31;
  if (v25 <= v28 - v27)
  {
    v239 = 0;
    v290 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v290 && v25)
    {
      (*(*v290 + 16))(v290);
      v27 = *a1;
      v239 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_467;
  }

  v32 = v28 + 1;
  *(a1 + 2) = v28 + 1;
  if (!v28)
  {
    v239 = v25;
    goto LABEL_467;
  }

  v33 = *v28;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_24;
  }

LABEL_469:
  *a1 = 0;
  *(a1 + 1) = 0;
  v241 = *(a1 + 3);
  if (!v241 || !v25)
  {
    v346 = 0;
    v242 = 0;
    v27 = 0;
LABEL_471:
    *a1 = 0;
    *(a1 + 1) = 0;
    v243 = *(a1 + 3);
    if (v243 && v242)
    {
      (*(*v243 + 16))(v243, v27, v242);
      v37 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v37 = 0;
    }

    goto LABEL_473;
  }

  (*(*v241 + 16))(v241, v27);
  v34 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v32 = *(a1 + 2);
LABEL_24:
  BYTE4(v346) = v34;
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  LOBYTE(v346) = v35;
  if (v25 <= v32 - v27)
  {
    v242 = 0;
    v291 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v291 && v25)
    {
      (*(*v291 + 16))(v291);
      v27 = *a1;
      v242 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_471;
  }

  v36 = v32 + 1;
  *(a1 + 2) = v32 + 1;
  if (!v32)
  {
    v242 = v25;
    goto LABEL_471;
  }

  v37 = *v32;
  if (v37 < 2)
  {
    v38 = 1;
    goto LABEL_31;
  }

LABEL_473:
  *a1 = 0;
  *(a1 + 1) = 0;
  v244 = *(a1 + 3);
  if (!v244 || !v25)
  {
    v345 = 0;
    v245 = 0;
    v27 = 0;
LABEL_475:
    *a1 = 0;
    *(a1 + 1) = 0;
    v246 = *(a1 + 3);
    if (v246 && v245)
    {
      (*(*v246 + 16))(v246, v27, v245);
      v41 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v41 = 0;
    }

    goto LABEL_477;
  }

  (*(*v244 + 16))(v244, v27);
  v38 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v36 = *(a1 + 2);
LABEL_31:
  BYTE4(v345) = v38;
  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  LOBYTE(v345) = v39;
  if (v25 <= v36 - v27)
  {
    v245 = 0;
    v292 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v292 && v25)
    {
      (*(*v292 + 16))(v292);
      v27 = *a1;
      v245 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_475;
  }

  v40 = v36 + 1;
  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
    v245 = v25;
    goto LABEL_475;
  }

  v41 = *v36;
  if (v41 < 2)
  {
    v42 = 1;
    goto LABEL_38;
  }

LABEL_477:
  *a1 = 0;
  *(a1 + 1) = 0;
  v247 = *(a1 + 3);
  if (!v247 || !v25)
  {
    v344 = 0;
    v248 = 0;
    v27 = 0;
LABEL_479:
    *a1 = 0;
    *(a1 + 1) = 0;
    v249 = *(a1 + 3);
    if (v249 && v248)
    {
      (*(*v249 + 16))(v249, v27, v248);
      v45 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v45 = 0;
    }

    goto LABEL_481;
  }

  (*(*v247 + 16))(v247, v27);
  v42 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v40 = *(a1 + 2);
LABEL_38:
  BYTE4(v344) = v42;
  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  LOBYTE(v344) = v43;
  if (v25 <= v40 - v27)
  {
    v248 = 0;
    v293 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v293 && v25)
    {
      (*(*v293 + 16))(v293);
      v27 = *a1;
      v248 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_479;
  }

  v44 = v40 + 1;
  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    v248 = v25;
    goto LABEL_479;
  }

  v45 = *v40;
  if (v45 < 2)
  {
    v46 = 1;
    goto LABEL_45;
  }

LABEL_481:
  *a1 = 0;
  *(a1 + 1) = 0;
  v250 = *(a1 + 3);
  if (!v250 || !v25)
  {
    v343 = 0;
    v251 = 0;
    v27 = 0;
LABEL_483:
    *a1 = 0;
    *(a1 + 1) = 0;
    v252 = *(a1 + 3);
    if (v252 && v251)
    {
      (*(*v252 + 16))(v252, v27, v251);
      v49 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v49 = 0;
    }

    goto LABEL_485;
  }

  (*(*v250 + 16))(v250, v27);
  v46 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v44 = *(a1 + 2);
LABEL_45:
  BYTE4(v343) = v46;
  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  LOBYTE(v343) = v47;
  if (v25 <= v44 - v27)
  {
    v251 = 0;
    v294 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v294 && v25)
    {
      (*(*v294 + 16))(v294);
      v27 = *a1;
      v251 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_483;
  }

  v48 = v44 + 1;
  *(a1 + 2) = v44 + 1;
  if (!v44)
  {
    v251 = v25;
    goto LABEL_483;
  }

  v49 = *v44;
  if (v49 < 2)
  {
    v50 = 1;
    goto LABEL_52;
  }

LABEL_485:
  *a1 = 0;
  *(a1 + 1) = 0;
  v253 = *(a1 + 3);
  if (!v253 || !v25)
  {
    v342 = 0;
    v254 = 0;
    v27 = 0;
LABEL_487:
    *a1 = 0;
    *(a1 + 1) = 0;
    v255 = *(a1 + 3);
    if (v255 && v254)
    {
      (*(*v255 + 16))(v255, v27, v254);
      v52 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v52 = 0;
    }

    goto LABEL_489;
  }

  (*(*v253 + 16))(v253, v27);
  v50 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v48 = *(a1 + 2);
LABEL_52:
  BYTE4(v342) = v50;
  if (!v49)
  {
    v50 = 0;
  }

  LOBYTE(v342) = v50;
  if (v25 <= v48 - v27)
  {
    v254 = 0;
    v295 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v295 && v25)
    {
      (*(*v295 + 16))(v295);
      v27 = *a1;
      v254 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_487;
  }

  v51 = v48 + 1;
  *(a1 + 2) = v48 + 1;
  if (!v48)
  {
    v254 = v25;
    goto LABEL_487;
  }

  v52 = *v48;
  if (v52 < 2)
  {
    v53 = 1;
    goto LABEL_58;
  }

LABEL_489:
  *a1 = 0;
  *(a1 + 1) = 0;
  v256 = *(a1 + 3);
  if (!v256 || !v25)
  {
    v341 = 0;
    v257 = 0;
    v27 = 0;
LABEL_491:
    *a1 = 0;
    *(a1 + 1) = 0;
    v258 = *(a1 + 3);
    if (v258 && v257)
    {
      (*(*v258 + 16))(v258, v27, v257);
      v55 = 0;
      v27 = *a1;
      v25 = *(a1 + 1);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v55 = 0;
    }

    goto LABEL_493;
  }

  (*(*v256 + 16))(v256, v27);
  v53 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
  v51 = *(a1 + 2);
LABEL_58:
  BYTE4(v341) = v53;
  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  LOBYTE(v341) = v54;
  if (v25 <= v51 - v27)
  {
    v257 = 0;
    v296 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v296 && v25)
    {
      (*(*v296 + 16))(v296);
      v27 = *a1;
      v257 = *(a1 + 1);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_491;
  }

  *(a1 + 2) = v51 + 1;
  if (!v51)
  {
    v257 = v25;
    goto LABEL_491;
  }

  v55 = *v51;
  if (v55 < 2)
  {
    v56 = 1;
    goto LABEL_65;
  }

LABEL_493:
  *a1 = 0;
  *(a1 + 1) = 0;
  v259 = *(a1 + 3);
  if (!v259)
  {
    v27 = 0;
    v340 = 0;
    v25 = 0;
    goto LABEL_495;
  }

  if (!v25)
  {
    v27 = 0;
    v340 = 0;
    goto LABEL_495;
  }

  (*(*v259 + 16))(v259, v27);
  v56 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
LABEL_65:
  BYTE4(v340) = v56;
  if (!v55)
  {
    v56 = 0;
  }

  LOBYTE(v340) = v56;
  v57 = *(a1 + 2);
  if (v25 <= v57 - v27)
  {
LABEL_495:
    *a1 = 0;
    *(a1 + 1) = 0;
    v260 = *(a1 + 3);
    if (v260)
    {
      if (v25)
      {
        (*(*v260 + 16))(v260, v27);
        v27 = *a1;
        v25 = *(a1 + 1);
LABEL_498:
        *a1 = 0;
        *(a1 + 1) = 0;
        v261 = *(a1 + 3);
        if (v261)
        {
          if (v25)
          {
            (*(*v261 + 16))(v261, v27);
            v27 = *a1;
            v25 = *(a1 + 1);
            goto LABEL_501;
          }
        }

        else
        {
          v25 = 0;
        }

        v27 = 0;
        goto LABEL_501;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 0;
    goto LABEL_498;
  }

  *(a1 + 2) = v57 + 1;
  if (!v57)
  {
    goto LABEL_498;
  }

  v58 = *v57;
  if (v58 < 5)
  {
    v339 = v58 | 0x100;
    goto LABEL_71;
  }

LABEL_501:
  *a1 = 0;
  *(a1 + 1) = 0;
  v262 = *(a1 + 3);
  if (!v262)
  {
    v27 = 0;
    v339 = 0;
    v25 = 0;
    goto LABEL_503;
  }

  if (!v25)
  {
    v27 = 0;
    v339 = 0;
LABEL_503:
    *a1 = 0;
    *(a1 + 1) = 0;
    v263 = *(a1 + 3);
    if (v263)
    {
      if (v25)
      {
        (*(*v263 + 16))(v263, v27);
        v27 = *a1;
        v25 = *(a1 + 1);
LABEL_506:
        *a1 = 0;
        *(a1 + 1) = 0;
        v264 = *(a1 + 3);
        if (v264)
        {
          if (v25)
          {
            (*(*v264 + 16))(v264, v27);
            v27 = *a1;
            v25 = *(a1 + 1);
            goto LABEL_509;
          }
        }

        else
        {
          v25 = 0;
        }

        v27 = 0;
        goto LABEL_509;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 0;
    goto LABEL_506;
  }

  (*(*v262 + 16))(v262, v27);
  v339 = 0;
  v27 = *a1;
  v25 = *(a1 + 1);
LABEL_71:
  v59 = *(a1 + 2);
  if (v25 <= v59 - v27)
  {
    goto LABEL_503;
  }

  *(a1 + 2) = v59 + 1;
  if (!v59)
  {
    goto LABEL_506;
  }

  v60 = *v59;
  if (v60 < 0x13)
  {
    v338 = v60 | 0x100;
    goto LABEL_75;
  }

LABEL_509:
  *a1 = 0;
  *(a1 + 1) = 0;
  v265 = *(a1 + 3);
  if (v265 && v25)
  {
    (*(*v265 + 16))(v265, v27);
  }

  v338 = 0;
LABEL_75:
  v337 = IPC::Decoder::decode<WebCore::InputMode>(a1);
  v61 = *(a1 + 1);
  v62 = *(a1 + 2);
  v63 = *a1;
  if (v61 <= &v62[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v266 = *(a1 + 3);
    if (v266)
    {
      if (v61)
      {
        (*(*v266 + 16))(v266);
        v61 = *(a1 + 1);
      }
    }

    else
    {
      v61 = 0;
    }

LABEL_521:
    *a1 = 0;
    *(a1 + 1) = 0;
    v267 = *(a1 + 3);
    if (v267)
    {
      if (v61)
      {
        (*(*v267 + 16))(v267);
        v63 = *a1;
        v61 = *(a1 + 1);
LABEL_524:
        *a1 = 0;
        *(a1 + 1) = 0;
        v268 = *(a1 + 3);
        if (v268 && v61)
        {
          (*(*v268 + 16))(v268, v63);
        }

        v336 = 0;
        goto LABEL_79;
      }
    }

    else
    {
      v61 = 0;
    }

    v63 = 0;
    goto LABEL_524;
  }

  *(a1 + 2) = v62 + 1;
  if (!v62)
  {
    goto LABEL_521;
  }

  v64 = *v62;
  if (v64 >= 8)
  {
    goto LABEL_524;
  }

  v336 = v64 | 0x100;
LABEL_79:
  IPC::Decoder::decode<WTF::String>(a1, &v386);
  v65 = *(a1 + 1);
  v66 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v67 = *a1;
  v68 = v66 - *a1;
  v69 = v65 >= v68;
  v70 = v65 - v68;
  v360 = v9;
  v361 = v6;
  if (!v69 || v70 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v202 = *(a1 + 3);
    if (v202)
    {
      goto LABEL_693;
    }

    v65 = 0;
    goto LABEL_329;
  }

  *(a1 + 2) = v66 + 1;
  if (!v66)
  {
    goto LABEL_329;
  }

  v71 = *v66;
  v458 = 0;
  v457 = 0;
  if (v71 < 0x10000)
  {
    if (v71)
    {
      v72 = WTF::fastMalloc((16 * v71));
      LODWORD(v458) = v71;
      v457 = v72;
      v73 = v385;
      do
      {
        IPC::Decoder::decode<WebKit::OptionItem>(&v394, a1);
        v74 = v395;
        if (v395)
        {
          if (HIDWORD(v458) == v458)
          {
            v75 = WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v457, HIDWORD(v458) + 1, &v394);
            v76 = (v457 + 16 * HIDWORD(v458));
            v77 = *v75;
            *v75 = 0;
            v78 = v75 + 1;
            *v76 = v77;
          }

          else
          {
            v79 = v394;
            v76 = (v457 + 16 * HIDWORD(v458));
            *&v394 = 0;
            *v76 = v79;
            v78 = &v394 + 1;
          }

          v76[1] = *v78;
          ++HIDWORD(v458);
        }

        else
        {
          v73 = 0;
        }

        if (v395 == 1 && (v80 = v394, *&v394 = 0, v80) && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v80, v67);
          if ((v74 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        else if ((v74 & 1) == 0)
        {
          goto LABEL_99;
        }

        --v71;
      }

      while (v71);
    }

LABEL_117:
    v91 = v457;
    v457 = 0;
    v383 = v91;
    v92 = v458;
    v458 = 0;
    v384 = v92;
    v385 = 1;
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v457, v67);
    goto LABEL_118;
  }

  v73 = v385;
  while (1)
  {
    IPC::Decoder::decode<WebKit::OptionItem>(&v394, a1);
    v84 = v395;
    if (v395)
    {
      if (HIDWORD(v458) == v458)
      {
        v85 = WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v457, HIDWORD(v458) + 1, &v394);
        v86 = (v457 + 16 * HIDWORD(v458));
        v87 = *v85;
        *v85 = 0;
        v88 = v85 + 1;
        *v86 = v87;
      }

      else
      {
        v89 = v394;
        v86 = (v457 + 16 * HIDWORD(v458));
        *&v394 = 0;
        *v86 = v89;
        v88 = &v394 + 1;
      }

      v86[1] = *v88;
      ++HIDWORD(v458);
    }

    else
    {
      v73 = 0;
    }

    if (v395 == 1)
    {
      v90 = v394;
      *&v394 = 0;
      if (v90)
      {
        if (atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, v67);
        }
      }
    }

    if ((v84 & 1) == 0)
    {
      break;
    }

    if (!--v71)
    {
      WTF::Vector<WebKit::OptionItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v457, HIDWORD(v458));
      goto LABEL_117;
    }
  }

LABEL_99:
  LOBYTE(v383) = 0;
  v385 = v73;
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v457, v67);
  if ((v73 & 1) == 0)
  {
    goto LABEL_100;
  }

  while (1)
  {
LABEL_118:
    v335 = IPC::Decoder::decode<float>(a1);
    IPC::Decoder::decode<WTF::String>(a1, &v381);
    v93 = IPC::Decoder::decode<unsigned long long>(a1);
    v334 = v94;
    v95 = v93;
    IPC::Decoder::decode<WTF::String>(a1, &v379);
    v96 = *(a1 + 1);
    v97 = *(a1 + 2);
    v98 = *a1;
    v333 = v95;
    if (v96 <= &v97[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v269 = *(a1 + 3);
      if (v269)
      {
        if (v96)
        {
          (*(*v269 + 16))(v269);
          v96 = *(a1 + 1);
        }
      }

      else
      {
        v96 = 0;
      }
    }

    else
    {
      v99 = v97 + 1;
      *(a1 + 2) = v97 + 1;
      if (v97)
      {
        v100 = *v97;
        if (v100 < 2)
        {
          v101 = 1;
          goto LABEL_122;
        }

        goto LABEL_533;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v270 = *(a1 + 3);
    if (!v270)
    {
      v96 = 0;
LABEL_532:
      v98 = 0;
      v100 = 0;
      goto LABEL_533;
    }

    if (!v96)
    {
      goto LABEL_532;
    }

    (*(*v270 + 16))(v270);
    v100 = 0;
    v98 = *a1;
    v96 = *(a1 + 1);
LABEL_533:
    *a1 = 0;
    *(a1 + 1) = 0;
    v271 = *(a1 + 3);
    if (!v271 || !v96)
    {
      v332 = 0;
      v272 = 0;
      v98 = 0;
LABEL_535:
      *a1 = 0;
      *(a1 + 1) = 0;
      v273 = *(a1 + 3);
      if (v273 && v272)
      {
        (*(*v273 + 16))(v273, v98, v272);
        v103 = 0;
        v98 = *a1;
        v96 = *(a1 + 1);
      }

      else
      {
        v96 = 0;
        v98 = 0;
        v103 = 0;
      }

      goto LABEL_537;
    }

    (*(*v271 + 16))(v271, v98);
    v101 = 0;
    v98 = *a1;
    v96 = *(a1 + 1);
    v99 = *(a1 + 2);
LABEL_122:
    if (v100)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    LOBYTE(v332) = v102;
    BYTE4(v332) = v101;
    if (v96 <= v99 - v98)
    {
      v272 = 0;
      v297 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v297 && v96)
      {
        (*(*v297 + 16))(v297);
        v98 = *a1;
        v272 = *(a1 + 1);
      }

      else
      {
        v98 = 0;
      }

      goto LABEL_535;
    }

    *(a1 + 2) = v99 + 1;
    if (!v99)
    {
      v272 = v96;
      goto LABEL_535;
    }

    v103 = *v99;
    if (v103 < 2)
    {
      v104 = 1;
      goto LABEL_129;
    }

LABEL_537:
    *a1 = 0;
    *(a1 + 1) = 0;
    v274 = *(a1 + 3);
    if (v274 && v96)
    {
      (*(*v274 + 16))(v274, v98);
    }

    v104 = 0;
LABEL_129:
    v331 = v104;
    if (!v103)
    {
      v104 = 0;
    }

    v330 = v104;
    IPC::Decoder::decode<WTF::URL>(a1, &v375);
    v105 = *(a1 + 1);
    v106 = *(a1 + 2);
    v107 = *a1;
    if (v105 <= &v106[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v275 = *(a1 + 3);
      if (v275)
      {
        if (v105)
        {
          (*(*v275 + 16))(v275);
          v105 = *(a1 + 1);
        }
      }

      else
      {
        v105 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v106 + 1;
      if (v106)
      {
        v108 = *v106;
        if (v108 < 0x3A)
        {
          v109 = v108 | 0x100;
          goto LABEL_135;
        }

        goto LABEL_544;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v276 = *(a1 + 3);
    if (v276)
    {
      if (v105)
      {
        (*(*v276 + 16))(v276);
        v107 = *a1;
        v105 = *(a1 + 1);
        goto LABEL_544;
      }
    }

    else
    {
      v105 = 0;
    }

    v107 = 0;
LABEL_544:
    *a1 = 0;
    *(a1 + 1) = 0;
    v277 = *(a1 + 3);
    if (!v277)
    {
      v107 = 0;
      v327 = 0;
      v109 = 0;
      v105 = 0;
      goto LABEL_546;
    }

    if (!v105)
    {
      v107 = 0;
      v327 = 0;
      v109 = 0;
      goto LABEL_546;
    }

    (*(*v277 + 16))(v277, v107);
    v109 = 0;
    v107 = *a1;
    v105 = *(a1 + 1);
LABEL_135:
    v110 = *(a1 + 2);
    if (v105 > v110 - v107)
    {
      *(a1 + 2) = v110 + 1;
      if (v110)
      {
        v111 = *v110;
        if (v111 < 2)
        {
          v327 = v109;
          v328 = 0;
          v326 = v111 != 0;
          goto LABEL_139;
        }

        v327 = v109;
        goto LABEL_552;
      }

      v327 = v109;
      goto LABEL_549;
    }

    v327 = v109;
LABEL_546:
    *a1 = 0;
    *(a1 + 1) = 0;
    v278 = *(a1 + 3);
    if (v278)
    {
      if (v105)
      {
        (*(*v278 + 16))(v278, v107);
        v107 = *a1;
        v105 = *(a1 + 1);
        goto LABEL_549;
      }
    }

    else
    {
      v105 = 0;
    }

    v107 = 0;
LABEL_549:
    *a1 = 0;
    *(a1 + 1) = 0;
    v279 = *(a1 + 3);
    if (v279)
    {
      if (v105)
      {
        (*(*v279 + 16))(v279, v107);
        v107 = *a1;
        v105 = *(a1 + 1);
        goto LABEL_552;
      }
    }

    else
    {
      v105 = 0;
    }

    v107 = 0;
LABEL_552:
    *a1 = 0;
    *(a1 + 1) = 0;
    v280 = *(a1 + 3);
    if (!v280 || !v105)
    {
      goto LABEL_553;
    }

    (*(*v280 + 16))(v280, v107);
    v326 = 0;
    v281 = *(a1 + 3);
    v282 = *a1;
    v283 = *(a1 + 1);
    v328 = 1;
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v281 && v283)
    {
      (*(*v281 + 16))(v281, v282);
LABEL_553:
      v326 = 0;
      v328 = 1;
    }

LABEL_139:
    IPC::Decoder::decode<WTF::String>(a1, &v373);
    IPC::Decoder::decode<WTF::String>(a1, &v371);
    IPC::Decoder::decode<WTF::String>(a1, &v369);
    v112 = *(a1 + 1);
    v113 = *(a1 + 2);
    v114 = *a1;
    v329 = v109;
    if (v112 <= &v113[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v284 = *(a1 + 3);
      if (v284)
      {
        if (v112)
        {
          (*(*v284 + 16))(v284);
          v112 = *(a1 + 1);
        }
      }

      else
      {
        v112 = 0;
      }
    }

    else
    {
      v115 = v113 + 1;
      *(a1 + 2) = v113 + 1;
      if (v113)
      {
        v116 = *v113;
        if (v116 < 2)
        {
          v117 = 1;
          goto LABEL_143;
        }

        goto LABEL_569;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v285 = *(a1 + 3);
    if (!v285)
    {
      v112 = 0;
LABEL_568:
      v114 = 0;
      v116 = 0;
      goto LABEL_569;
    }

    if (!v112)
    {
      goto LABEL_568;
    }

    (*(*v285 + 16))(v285);
    v116 = 0;
    v114 = *a1;
    v112 = *(a1 + 1);
LABEL_569:
    *a1 = 0;
    *(a1 + 1) = 0;
    v286 = *(a1 + 3);
    if (!v286 || !v112)
    {
      v325 = 0;
      v287 = 0;
      v114 = 0;
LABEL_571:
      *a1 = 0;
      *(a1 + 1) = 0;
      v288 = *(a1 + 3);
      if (v288 && v287)
      {
        (*(*v288 + 16))(v288, v114, v287);
        v119 = 0;
        v114 = *a1;
        v112 = *(a1 + 1);
      }

      else
      {
        v112 = 0;
        v114 = 0;
        v119 = 0;
      }

      goto LABEL_573;
    }

    (*(*v286 + 16))(v286, v114);
    v117 = 0;
    v114 = *a1;
    v112 = *(a1 + 1);
    v115 = *(a1 + 2);
LABEL_143:
    if (v116)
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    LOBYTE(v325) = v118;
    BYTE4(v325) = v117;
    if (v112 <= v115 - v114)
    {
      v287 = 0;
      v298 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v298 && v112)
      {
        (*(*v298 + 16))(v298);
        v114 = *a1;
        v287 = *(a1 + 1);
      }

      else
      {
        v114 = 0;
      }

      goto LABEL_571;
    }

    *(a1 + 2) = v115 + 1;
    if (!v115)
    {
      v287 = v112;
      goto LABEL_571;
    }

    v119 = *v115;
    if (v119 < 2)
    {
      v120 = 1;
      goto LABEL_150;
    }

LABEL_573:
    *a1 = 0;
    *(a1 + 1) = 0;
    v289 = *(a1 + 3);
    if (v289 && v112)
    {
      (*(*v289 + 16))(v289, v114);
    }

    v120 = 0;
LABEL_150:
    v324 = v120;
    if (v119)
    {
      v121 = v120;
    }

    else
    {
      v121 = 0;
    }

    IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v367);
    if ((v368 & 1) == 0)
    {
      v199 = *a1;
      v200 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v201 = *(a1 + 3);
      if (v201)
      {
        if (v200)
        {
          (*(*v201 + 16))(v201, v199);
        }
      }
    }

    v322 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
    IPC::VectorArgumentCoder<false,WebCore::Color,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v364);
    v122 = *(a1 + 1);
    v323 = v121;
    v308 = a2;
    v359 = v4;
    v357 = v7;
    v355 = v12;
    if ((v366 & 1) == 0)
    {
      v157 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v158 = *(a1 + 3);
      if (!v158 || !v122)
      {
        v122 = 0;
        v123 = *a1;
LABEL_227:
        *a1 = 0;
        *(a1 + 1) = 0;
        v159 = *(a1 + 3);
        if (v159)
        {
          if (v122)
          {
            (*(*v159 + 16))(v159, v123);
            v122 = *(a1 + 1);
          }
        }

        else
        {
          v122 = 0;
        }

        goto LABEL_229;
      }

      (*(*v158 + 16))(v158, v157);
      v122 = *(a1 + 1);
    }

    v123 = *a1;
    v124 = *(a1 + 2);
    if (v122 <= &v124[-*a1])
    {
      goto LABEL_227;
    }

    v125 = v124 + 1;
    *(a1 + 2) = v124 + 1;
    if (v124)
    {
      v126 = *v124;
      if (v126 < 2)
      {
        v127 = 1;
        goto LABEL_159;
      }

      goto LABEL_232;
    }

LABEL_229:
    *a1 = 0;
    *(a1 + 1) = 0;
    v160 = *(a1 + 3);
    if (!v160)
    {
      v122 = 0;
LABEL_231:
      v123 = 0;
      v126 = 0;
      goto LABEL_232;
    }

    if (!v122)
    {
      goto LABEL_231;
    }

    (*(*v160 + 16))(v160);
    v126 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
LABEL_232:
    *a1 = 0;
    *(a1 + 1) = 0;
    v161 = *(a1 + 3);
    if (!v161 || !v122)
    {
      v320 = 0;
      v162 = 0;
      v163 = 0;
      v123 = 0;
      goto LABEL_234;
    }

    (*(*v161 + 16))(v161, v123);
    v127 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v125 = *(a1 + 2);
LABEL_159:
    v321 = v127;
    if (!v126)
    {
      v127 = 0;
    }

    v320 = v127;
    if (v122 <= v125 - v123)
    {
      v163 = 0;
      v306 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v306 && v122)
      {
        (*(*v306 + 16))(v306);
        v123 = *a1;
        v163 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_662;
    }

    v128 = v125 + 1;
    *(a1 + 2) = v125 + 1;
    if (!v125)
    {
      v163 = v122;
LABEL_662:
      v162 = v321;
LABEL_234:
      *a1 = 0;
      *(a1 + 1) = 0;
      v164 = *(a1 + 3);
      if (v164)
      {
        v190 = v162;
        if (v163)
        {
          (*(*v164 + 16))(v164, v123, v163);
          v129 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v129 = 0;
        }

        v162 = v190;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v129 = 0;
      }

      goto LABEL_236;
    }

    v129 = *v125;
    if (v129 < 2)
    {
      v130 = 1;
      goto LABEL_165;
    }

    v162 = v321;
LABEL_236:
    *a1 = 0;
    *(a1 + 1) = 0;
    v165 = *(a1 + 3);
    if (!v165)
    {
      v318 = 0;
      v319 = 0;
      v166 = 0;
      v123 = 0;
      goto LABEL_238;
    }

    v321 = v162;
    if (!v122)
    {
      v318 = 0;
      v319 = 0;
      v166 = 0;
      v123 = 0;
      goto LABEL_667;
    }

    (*(*v165 + 16))(v165, v123);
    v130 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v128 = *(a1 + 2);
LABEL_165:
    v319 = v130;
    if (!v129)
    {
      v130 = 0;
    }

    v318 = v130;
    if (v122 <= v128 - v123)
    {
      v166 = 0;
      v307 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v307 && v122)
      {
        (*(*v307 + 16))(v307);
        v123 = *a1;
        v166 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_667;
    }

    v131 = v128 + 1;
    *(a1 + 2) = v128 + 1;
    if (!v128)
    {
      v166 = v122;
LABEL_667:
      v162 = v321;
LABEL_238:
      *a1 = 0;
      *(a1 + 1) = 0;
      v167 = *(a1 + 3);
      if (v167)
      {
        v191 = v162;
        if (v166)
        {
          (*(*v167 + 16))(v167, v123, v166);
          v132 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v132 = 0;
        }

        v162 = v191;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v132 = 0;
      }

      goto LABEL_240;
    }

    v132 = *v128;
    if (v132 < 2)
    {
      v133 = 1;
      goto LABEL_171;
    }

    v162 = v321;
LABEL_240:
    *a1 = 0;
    *(a1 + 1) = 0;
    v168 = *(a1 + 3);
    if (!v168)
    {
      v316 = 0;
      v317 = 0;
      v169 = 0;
      v123 = 0;
      goto LABEL_242;
    }

    v321 = v162;
    if (!v122)
    {
      v316 = 0;
      v317 = 0;
      v169 = 0;
      v123 = 0;
      goto LABEL_647;
    }

    (*(*v168 + 16))(v168, v123);
    v133 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v131 = *(a1 + 2);
LABEL_171:
    v317 = v133;
    if (!v132)
    {
      v133 = 0;
    }

    v316 = v133;
    if (v122 <= v131 - v123)
    {
      v169 = 0;
      v303 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v303 && v122)
      {
        (*(*v303 + 16))(v303);
        v123 = *a1;
        v169 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_647;
    }

    v134 = v131 + 1;
    *(a1 + 2) = v131 + 1;
    if (!v131)
    {
      v169 = v122;
LABEL_647:
      v162 = v321;
LABEL_242:
      *a1 = 0;
      *(a1 + 1) = 0;
      v170 = *(a1 + 3);
      if (v170)
      {
        v192 = v162;
        if (v169)
        {
          (*(*v170 + 16))(v170, v123, v169);
          v135 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v135 = 0;
        }

        v162 = v192;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v135 = 0;
      }

      goto LABEL_244;
    }

    v135 = *v131;
    if (v135 < 2)
    {
      v136 = 1;
      goto LABEL_177;
    }

    v162 = v321;
LABEL_244:
    *a1 = 0;
    *(a1 + 1) = 0;
    v171 = *(a1 + 3);
    if (!v171)
    {
      v314 = 0;
      v315 = 0;
      v172 = 0;
      v123 = 0;
      goto LABEL_246;
    }

    v321 = v162;
    if (!v122)
    {
      v314 = 0;
      v315 = 0;
      v172 = 0;
      v123 = 0;
      goto LABEL_652;
    }

    (*(*v171 + 16))(v171, v123);
    v136 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v134 = *(a1 + 2);
LABEL_177:
    v315 = v136;
    if (!v135)
    {
      v136 = 0;
    }

    v314 = v136;
    if (v122 <= v134 - v123)
    {
      v172 = 0;
      v304 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v304 && v122)
      {
        (*(*v304 + 16))(v304);
        v123 = *a1;
        v172 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_652;
    }

    v137 = v134 + 1;
    *(a1 + 2) = v134 + 1;
    if (!v134)
    {
      v172 = v122;
LABEL_652:
      v162 = v321;
LABEL_246:
      *a1 = 0;
      *(a1 + 1) = 0;
      v173 = *(a1 + 3);
      if (v173)
      {
        v193 = v162;
        if (v172)
        {
          (*(*v173 + 16))(v173, v123, v172);
          v138 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v138 = 0;
        }

        v162 = v193;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v138 = 0;
      }

      goto LABEL_248;
    }

    v138 = *v134;
    if (v138 < 2)
    {
      v139 = 1;
      goto LABEL_183;
    }

    v162 = v321;
LABEL_248:
    *a1 = 0;
    *(a1 + 1) = 0;
    v174 = *(a1 + 3);
    if (!v174)
    {
      v312 = 0;
      v313 = 0;
      v175 = 0;
      v123 = 0;
      goto LABEL_250;
    }

    v321 = v162;
    if (!v122)
    {
      v312 = 0;
      v313 = 0;
      v175 = 0;
      v123 = 0;
      goto LABEL_657;
    }

    (*(*v174 + 16))(v174, v123);
    v139 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v137 = *(a1 + 2);
LABEL_183:
    v313 = v139;
    if (!v138)
    {
      v139 = 0;
    }

    v312 = v139;
    if (v122 <= v137 - v123)
    {
      v175 = 0;
      v305 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v305 && v122)
      {
        (*(*v305 + 16))(v305);
        v123 = *a1;
        v175 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_657;
    }

    v140 = v137 + 1;
    *(a1 + 2) = v137 + 1;
    if (!v137)
    {
      v175 = v122;
LABEL_657:
      v162 = v321;
LABEL_250:
      *a1 = 0;
      *(a1 + 1) = 0;
      v176 = *(a1 + 3);
      if (v176)
      {
        v194 = v162;
        if (v175)
        {
          (*(*v176 + 16))(v176, v123, v175);
          v141 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v141 = 0;
        }

        v162 = v194;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v141 = 0;
      }

      goto LABEL_252;
    }

    v141 = *v137;
    if (v141 < 2)
    {
      v142 = 1;
      goto LABEL_189;
    }

    v162 = v321;
LABEL_252:
    *a1 = 0;
    *(a1 + 1) = 0;
    v177 = *(a1 + 3);
    if (!v177)
    {
      v310 = 0;
      v311 = 0;
      v178 = 0;
      v123 = 0;
      goto LABEL_254;
    }

    v321 = v162;
    if (!v122)
    {
      v310 = 0;
      v311 = 0;
      v178 = 0;
      v123 = 0;
      goto LABEL_637;
    }

    (*(*v177 + 16))(v177, v123);
    v142 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v140 = *(a1 + 2);
LABEL_189:
    v311 = v142;
    if (!v141)
    {
      v142 = 0;
    }

    v310 = v142;
    if (v122 <= v140 - v123)
    {
      v178 = 0;
      v301 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v301 && v122)
      {
        (*(*v301 + 16))(v301);
        v123 = *a1;
        v178 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_637;
    }

    v143 = v140 + 1;
    *(a1 + 2) = v140 + 1;
    if (!v140)
    {
      v178 = v122;
LABEL_637:
      v162 = v321;
LABEL_254:
      *a1 = 0;
      *(a1 + 1) = 0;
      v179 = *(a1 + 3);
      if (v179)
      {
        v195 = v162;
        if (v178)
        {
          (*(*v179 + 16))(v179, v123, v178);
          v144 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v144 = 0;
        }

        v162 = v195;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v144 = 0;
      }

      goto LABEL_256;
    }

    v144 = *v140;
    if (v144 < 2)
    {
      v12 = 1;
      goto LABEL_195;
    }

    v162 = v321;
LABEL_256:
    *a1 = 0;
    *(a1 + 1) = 0;
    v180 = *(a1 + 3);
    if (!v180)
    {
      v309 = 0;
      v12 = 0;
      v181 = 0;
      v123 = 0;
      goto LABEL_258;
    }

    v321 = v162;
    if (!v122)
    {
      v309 = 0;
      v12 = 0;
      v181 = 0;
      v123 = 0;
      goto LABEL_642;
    }

    (*(*v180 + 16))(v180, v123);
    v12 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v143 = *(a1 + 2);
LABEL_195:
    if (v144)
    {
      v145 = v12;
    }

    else
    {
      v145 = 0;
    }

    v309 = v145;
    if (v122 <= v143 - v123)
    {
      v181 = 0;
      v302 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v302 && v122)
      {
        (*(*v302 + 16))(v302);
        v123 = *a1;
        v181 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_642;
    }

    v146 = v143 + 1;
    *(a1 + 2) = v143 + 1;
    if (!v143)
    {
      v181 = v122;
LABEL_642:
      v162 = v321;
LABEL_258:
      *a1 = 0;
      *(a1 + 1) = 0;
      v182 = *(a1 + 3);
      if (v182)
      {
        v196 = v162;
        if (v181)
        {
          (*(*v182 + 16))(v182, v123, v181);
          v147 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v147 = 0;
        }

        v162 = v196;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v147 = 0;
      }

      goto LABEL_260;
    }

    v147 = *v143;
    if (v147 < 2)
    {
      v148 = 1;
      goto LABEL_202;
    }

    v162 = v321;
LABEL_260:
    *a1 = 0;
    *(a1 + 1) = 0;
    v183 = *(a1 + 3);
    if (!v183)
    {
      a2 = 0;
      LOBYTE(v148) = 0;
      v184 = 0;
      v123 = 0;
      goto LABEL_262;
    }

    v321 = v162;
    if (!v122)
    {
      a2 = 0;
      LOBYTE(v148) = 0;
      v184 = 0;
      v123 = 0;
      goto LABEL_627;
    }

    (*(*v183 + 16))(v183, v123);
    v148 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v146 = *(a1 + 2);
LABEL_202:
    if (v147)
    {
      a2 = v148;
    }

    else
    {
      a2 = 0;
    }

    if (v122 <= v146 - v123)
    {
      v184 = 0;
      v299 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v299 && v122)
      {
        (*(*v299 + 16))(v299);
        v123 = *a1;
        v184 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_627;
    }

    v149 = v146 + 1;
    *(a1 + 2) = v146 + 1;
    if (!v146)
    {
      v184 = v122;
LABEL_627:
      v162 = v321;
LABEL_262:
      *a1 = 0;
      *(a1 + 1) = 0;
      v185 = *(a1 + 3);
      if (v185)
      {
        v197 = v162;
        if (v184)
        {
          (*(*v185 + 16))(v185, v123, v184);
          v150 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v150 = 0;
        }

        v162 = v197;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v150 = 0;
      }

      goto LABEL_264;
    }

    v150 = *v146;
    if (v150 < 2)
    {
      v151 = 1;
      goto LABEL_209;
    }

    v162 = v321;
LABEL_264:
    *a1 = 0;
    *(a1 + 1) = 0;
    v186 = *(a1 + 3);
    if (!v186)
    {
      v152 = 0;
      v151 = 0;
      v187 = 0;
      v123 = 0;
      goto LABEL_266;
    }

    v321 = v162;
    if (!v122)
    {
      v152 = 0;
      v151 = 0;
      v187 = 0;
      v123 = 0;
      goto LABEL_632;
    }

    (*(*v186 + 16))(v186, v123);
    v151 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
    v149 = *(a1 + 2);
LABEL_209:
    if (v150)
    {
      v152 = v151;
    }

    else
    {
      v152 = 0;
    }

    if (v122 <= v149 - v123)
    {
      v187 = 0;
      v300 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v300 && v122)
      {
        (*(*v300 + 16))(v300);
        v123 = *a1;
        v187 = *(a1 + 1);
      }

      else
      {
        v123 = 0;
      }

      goto LABEL_632;
    }

    *(a1 + 2) = v149 + 1;
    if (!v149)
    {
      v187 = v122;
LABEL_632:
      v162 = v321;
LABEL_266:
      *a1 = 0;
      *(a1 + 1) = 0;
      v188 = *(a1 + 3);
      if (v188)
      {
        v198 = v162;
        if (v187)
        {
          (*(*v188 + 16))(v188, v123, v187);
          v153 = 0;
          v123 = *a1;
          v122 = *(a1 + 1);
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v153 = 0;
        }

        v162 = v198;
      }

      else
      {
        v122 = 0;
        v123 = 0;
        v153 = 0;
      }

      goto LABEL_268;
    }

    v153 = *v149;
    if (v153 < 2)
    {
      v154 = 1;
      goto LABEL_216;
    }

    v162 = v321;
LABEL_268:
    *a1 = 0;
    *(a1 + 1) = 0;
    v189 = *(a1 + 3);
    v321 = v162;
    if (!v189)
    {
      v122 = 0;
LABEL_270:
      v123 = 0;
      v154 = 0;
      goto LABEL_216;
    }

    if (!v122)
    {
      goto LABEL_270;
    }

    (*(*v189 + 16))(v189, v123);
    v154 = 0;
    v123 = *a1;
    v122 = *(a1 + 1);
LABEL_216:
    v155 = v153 ? v154 : 0;
    v156 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v122 < v156 - v123 || v122 - (v156 - v123) <= 7)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v204 = *(a1 + 3);
      if (v204)
      {
        if (v122)
        {
          (*(*v204 + 16))(v204);
          v123 = *a1;
          v122 = *(a1 + 1);
          goto LABEL_334;
        }
      }

      else
      {
        v122 = 0;
      }

      v123 = 0;
    }

    else
    {
      *(a1 + 2) = v156 + 1;
      if (v156)
      {
        if (v123)
        {
          v4 = *v156;
          if (*v156 != -1)
          {
            v7 = 1;
            goto LABEL_339;
          }
        }

        goto LABEL_337;
      }
    }

LABEL_334:
    *a1 = 0;
    *(a1 + 1) = 0;
    v205 = *(a1 + 3);
    if (v205)
    {
      if (v122)
      {
        v202 = (*(*v205 + 16))(v205, v123);
        if (*a1)
        {
          goto LABEL_692;
        }

        v123 = 0;
        v122 = *(a1 + 1);
        goto LABEL_337;
      }
    }

    else
    {
      v122 = 0;
    }

    v123 = 0;
LABEL_337:
    *a1 = 0;
    *(a1 + 1) = 0;
    v206 = *(a1 + 3);
    if (v206 && v122)
    {
      (*(*v206 + 16))(v206, v123);
    }

    v4 = 0;
    v7 = 0;
LABEL_339:
    IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(&v362, a1);
    v202 = IPC::Decoder::decode<std::optional<WebKit::FrameInfoData>>(a1, &v457);
    if (!*a1)
    {
      break;
    }

    if (v393)
    {
      v394 = v392;
      if (v467)
      {
        v396 = v465[1];
        v397 = v465[2];
        v398 = v465[3];
        v399 = v466;
        v395 = v465[0];
        if (v361)
        {
          v400 = v359;
          if (v360)
          {
            v401 = v357;
            if (v358)
            {
              v402 = v355;
              if (v356)
              {
                v403 = v354;
                if (v353)
                {
                  v404 = v352;
                  if (v351)
                  {
                    v405 = v350;
                    if (v391)
                    {
                      v406 = v390;
                      if (v349)
                      {
                        v407 = v348;
                        if (v389)
                        {
                          v408 = v388;
                          if ((v347 & 0x100000000) != 0)
                          {
                            v409 = v347;
                            if ((v346 & 0x100000000) != 0)
                            {
                              v410 = v346;
                              if ((v345 & 0x100000000) != 0)
                              {
                                v411 = v345;
                                if ((v344 & 0x100000000) != 0)
                                {
                                  v412 = v344;
                                  if ((v343 & 0x100000000) != 0)
                                  {
                                    v413 = v343;
                                    if ((v342 & 0x100000000) != 0)
                                    {
                                      v414 = v342;
                                      if ((v341 & 0x100000000) != 0)
                                      {
                                        v415 = v341;
                                        if ((v340 & 0x100000000) != 0)
                                        {
                                          v416 = v340;
                                          if (v339 > 0xFF)
                                          {
                                            v417 = v339;
                                            if (v338 > 0xFF)
                                            {
                                              v418 = v338;
                                              if ((v337 & 0x100) != 0)
                                              {
                                                v419 = v337;
                                                if (v336 > 0xFF)
                                                {
                                                  v420 = v336;
                                                  if (v387)
                                                  {
                                                    v208 = v386;
                                                    v386 = 0;
                                                    v421 = v208;
                                                    if (v385)
                                                    {
                                                      v422 = v383;
                                                      v209 = v384;
                                                      v383 = 0;
                                                      v384 = 0;
                                                      v423 = v209;
                                                      if ((v335 & 0x100000000) != 0)
                                                      {
                                                        v424 = v335;
                                                        if (v382)
                                                        {
                                                          v210 = v381;
                                                          v381 = 0;
                                                          v425 = v210;
                                                          if (v334)
                                                          {
                                                            v426 = v333;
                                                            if (v380)
                                                            {
                                                              v211 = v379;
                                                              v379 = 0;
                                                              v427 = v211;
                                                              if ((v332 & 0x100000000) != 0)
                                                              {
                                                                v428 = v332;
                                                                if (v331)
                                                                {
                                                                  v429 = v330;
                                                                  if (v378)
                                                                  {
                                                                    v212 = v375;
                                                                    v375 = 0;
                                                                    v430 = v212;
                                                                    v431 = v376;
                                                                    v432 = v377;
                                                                    LODWORD(v376) = v376 & 0xFFFFFFFE;
                                                                    if (v329 > 0xFF)
                                                                    {
                                                                      v433 = v327;
                                                                      if (!v328)
                                                                      {
                                                                        v434 = v326;
                                                                        if (v374)
                                                                        {
                                                                          v213 = v373;
                                                                          v373 = 0;
                                                                          v435 = v213;
                                                                          if (v372)
                                                                          {
                                                                            v214 = v371;
                                                                            v371 = 0;
                                                                            v436 = v214;
                                                                            if (v370)
                                                                            {
                                                                              v215 = v369;
                                                                              v369 = 0;
                                                                              v437 = v215;
                                                                              if ((v325 & 0x100000000) != 0)
                                                                              {
                                                                                v438 = v325;
                                                                                if (v324)
                                                                                {
                                                                                  v439 = v323;
                                                                                  if (v368)
                                                                                  {
                                                                                    v216 = v367;
                                                                                    v367 = 0;
                                                                                    v440 = v216;
                                                                                    if ((v322 & 0x100) != 0)
                                                                                    {
                                                                                      v441 = v322;
                                                                                      if (v366)
                                                                                      {
                                                                                        v442 = v364;
                                                                                        v217 = v365;
                                                                                        v364 = 0;
                                                                                        v365 = 0;
                                                                                        v443 = v217;
                                                                                        if (v321)
                                                                                        {
                                                                                          v444 = v320;
                                                                                          if (v319)
                                                                                          {
                                                                                            v445 = v318;
                                                                                            if (v317)
                                                                                            {
                                                                                              v446 = v316;
                                                                                              if (v315)
                                                                                              {
                                                                                                v447 = v314;
                                                                                                if (v313)
                                                                                                {
                                                                                                  v448 = v312;
                                                                                                  if (v311)
                                                                                                  {
                                                                                                    v449 = v310;
                                                                                                    if (v12)
                                                                                                    {
                                                                                                      v450 = v309;
                                                                                                      if (v148)
                                                                                                      {
                                                                                                        v451 = a2;
                                                                                                        if (v151)
                                                                                                        {
                                                                                                          v452 = v152;
                                                                                                          if (v154)
                                                                                                          {
                                                                                                            v453 = v155;
                                                                                                            if (v7)
                                                                                                            {
                                                                                                              v454 = v4;
                                                                                                              if (v363)
                                                                                                              {
                                                                                                                v455 = v362;
                                                                                                                if (v464)
                                                                                                                {
                                                                                                                  std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](&v456, &v457);
                                                                                                                  *(WebKit::FocusedElementInformation::FocusedElementInformation(v308, &v394) + 784) = 1;
                                                                                                                  WebKit::FocusedElementInformation::~FocusedElementInformation(&v394, v218);
                                                                                                                  goto LABEL_396;
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_692:
    __break(1u);
LABEL_693:
    if (v65)
    {
      (*(*v202 + 16))(v202);
      v65 = *(a1 + 1);
    }

LABEL_329:
    *a1 = 0;
    *(a1 + 1) = 0;
    v203 = *(a1 + 3);
    if (v203 && v65)
    {
      (*(*v203 + 16))(v203);
    }

    LOBYTE(v383) = 0;
    v385 = 0;
LABEL_100:
    v81 = *a1;
    v82 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v83 = *(a1 + 3);
    if (v83 && v82)
    {
      (*(*v83 + 16))(v83, v81);
    }
  }

  *v308 = 0;
  v308[784] = 0;
LABEL_396:
  if (v464 == 1 && v463 == 1)
  {
    v219 = cf;
    cf = 0;
    if (v219)
    {
      CFRelease(v219);
    }

    v220 = v461;
    v461 = 0;
    if (v220 && atomic_fetch_add_explicit(v220, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v220, v207);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v460);
    v221 = v459;
    v459 = 0;
    if (v221)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&v458);
  }

  if (v366 == 1)
  {
    WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v364, v207);
  }

  if (v368 == 1 && (v367 & 0x8000000000000) != 0)
  {
    v229 = (v367 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v367 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v229);
      WTF::fastFree(v229, v207);
    }
  }

  if (v370 == 1)
  {
    v222 = v369;
    v369 = 0;
    if (v222)
    {
      if (atomic_fetch_add_explicit(v222, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v222, v207);
      }
    }
  }

  if (v372 == 1)
  {
    v223 = v371;
    v371 = 0;
    if (v223)
    {
      if (atomic_fetch_add_explicit(v223, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v223, v207);
      }
    }
  }

  if (v374 == 1)
  {
    v224 = v373;
    v373 = 0;
    if (v224)
    {
      if (atomic_fetch_add_explicit(v224, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v224, v207);
      }
    }
  }

  if (v378 == 1)
  {
    v225 = v375;
    v375 = 0;
    if (v225)
    {
      if (atomic_fetch_add_explicit(v225, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v225, v207);
      }
    }
  }

  if (v380 == 1)
  {
    v226 = v379;
    v379 = 0;
    if (v226)
    {
      if (atomic_fetch_add_explicit(v226, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v226, v207);
      }
    }
  }

  if (v382 == 1)
  {
    v227 = v381;
    v381 = 0;
    if (v227)
    {
      if (atomic_fetch_add_explicit(v227, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v227, v207);
      }
    }
  }

  if (v385 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v383, v207);
  }

  if (v387 == 1)
  {
    v228 = v386;
    v386 = 0;
    if (v228)
    {
      if (atomic_fetch_add_explicit(v228, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v228, v207);
      }
    }
  }
}

void sub_19D6E608C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, WTF::StringImpl *a56, char a57, WTF::StringImpl *a58, char a59, WTF::StringImpl *a60, char a61, WTF::StringImpl *a62, uint64_t a63)
{
  if (a57 == 1 && a56 && atomic_fetch_add_explicit(a56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a56, a2);
  }

  if (a59 == 1 && a58 && atomic_fetch_add_explicit(a58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a58, a2);
  }

  if (a61 == 1 && a60 && atomic_fetch_add_explicit(a60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a60, a2);
  }

  if (a67 == 1 && a62 && atomic_fetch_add_explicit(a62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a62, a2);
  }

  if (a69 == 1 && a68 && atomic_fetch_add_explicit(a68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a68, a2);
  }

  if (a71 == 1 && a70 && atomic_fetch_add_explicit(a70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a70, a2);
  }

  if (LOBYTE(STACK[0x208]) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a72, a2);
  }

  if (LOBYTE(STACK[0x218]) == 1)
  {
    v73 = STACK[0x210];
    STACK[0x210] = 0;
    if (v73)
    {
      if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::ElementContext>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ElementContext,void>::decode(a1, a2);
  if ((*(a2 + 80) & 1) == 0)
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

uint64_t IPC::Decoder::decode<WebCore::InputMode>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::InputMode,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::NavigatingToAppBoundDomain,void>::decode<IPC::Decoder>(a1);
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

void *IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = a2[3];
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    v10 = a2[3];
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11 && v6)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_17;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    *result = 0;
    result[1] = 0;
    v8 = 1;
LABEL_8:
    *(v3 + 16) = v8;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v14);
  v8 = v15;
  if (v15 == 1)
  {
    *v3 = v14;
    goto LABEL_8;
  }

LABEL_17:
  *v3 = 0;
  *(v3 + 16) = 0;
  v12 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::FrameInfoData>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[368] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<std::optional<WebKit::FrameInfoData>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 368) == 1 && *(a1 + 352) == 1)
  {
    v3 = *(a1 + 304);
    *(a1 + 304) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 208);
    v5 = *(a1 + 200);
    *(a1 + 200) = 0;
    if (v5)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((a1 + 8));
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  v5 = *(a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 8));
  v6 = *(a2 + 232);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 208, v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 240));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 248));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 256));
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>> const&>(a1, (a2 + 272));
  IPC::ArgumentCoder<__SecTrust *,void>::encode(a1, *(a2 + 304));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 312));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 316));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 317));
  return IPC::ArgumentCoder<WebKit::WebFrameMetrics,void>::encode(a1, a2 + 320);
}

void IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v105 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = *this;
  if (v4 <= &v5[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_84;
  }

  v7 = v5 + 1;
  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_84:
    IPC::Decoder::markInvalid(v2);
    v8 = 0;
    goto LABEL_85;
  }

  v8 = *v5;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_85:
  IPC::Decoder::markInvalid(v2);
  v9 = 0;
  v4 = *(v2 + 1);
  v7 = *(v2 + 2);
  v6 = *v2;
LABEL_5:
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v4 <= &v7[-v6])
  {
    IPC::Decoder::markInvalid(v2);
    goto LABEL_87;
  }

  *(v2 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_87:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_88;
  }

  v62 = *v7;
  if (v62 < 2)
  {
    v64 = 0;
    goto LABEL_12;
  }

LABEL_88:
  IPC::Decoder::markInvalid(v2);
  IPC::Decoder::markInvalid(v2);
  LOBYTE(v62) = 0;
  v64 = 1;
LABEL_12:
  IPC::Decoder::decode<WebCore::ResourceRequest>(v2, v70);
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(v2, &v101);
  if ((v104 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v2);
  }

  IPC::Decoder::decode<WTF::String>(v2, &v68);
  v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2);
  v60 = v12;
  v13 = v11;
  v14 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v2);
  v59 = v15;
  v16 = v14;
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::decode<IPC::Decoder>(v99, v2);
  v57 = v100;
  if ((v100 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v2);
  }

  IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(v2, &cf);
  v61 = v67;
  if ((v67 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v2);
  }

  v54 = IPC::Decoder::decode<float>(v2);
  v17 = *(v2 + 1);
  v18 = *(v2 + 2);
  v19 = *v2;
  v65 = v9;
  v63 = v10;
  v58 = v13;
  v56 = v16;
  if (v17 <= &v18[-*v2])
  {
    IPC::Decoder::markInvalid(v2);
    goto LABEL_90;
  }

  v20 = v18 + 1;
  *(v2 + 2) = v18 + 1;
  if (!v18)
  {
LABEL_90:
    IPC::Decoder::markInvalid(v2);
    v21 = 0;
    goto LABEL_91;
  }

  v21 = *v18;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_22;
  }

LABEL_91:
  IPC::Decoder::markInvalid(v2);
  v22 = 0;
  v17 = *(v2 + 1);
  v20 = *(v2 + 2);
  v19 = *v2;
LABEL_22:
  v53 = v22;
  if (!v21)
  {
    v22 = 0;
  }

  v52 = v22;
  if (v17 <= &v20[-v19])
  {
    IPC::Decoder::markInvalid(v2);
    goto LABEL_93;
  }

  v23 = v20 + 1;
  *(v2 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_93:
    IPC::Decoder::markInvalid(v2);
    v24 = 0;
    goto LABEL_94;
  }

  v24 = *v20;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_28;
  }

LABEL_94:
  IPC::Decoder::markInvalid(v2);
  v25 = 0;
  v17 = *(v2 + 1);
  v23 = *(v2 + 2);
  v19 = *v2;
LABEL_28:
  v55 = a2;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v51 = v26;
  if (v17 <= &v23[-v19])
  {
    IPC::Decoder::markInvalid(v2);
    goto LABEL_96;
  }

  *(v2 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_96:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_97;
  }

  v27 = *v23;
  if (v27 < 2)
  {
    v28 = 0;
    goto LABEL_35;
  }

LABEL_97:
  IPC::Decoder::markInvalid(v2);
  LOBYTE(v27) = 0;
  v28 = 1;
LABEL_35:
  v29 = IPC::Decoder::decode<WebCore::IntSize>(v2);
  v31 = v30;
  v32 = IPC::Decoder::decode<WebCore::IntSize>(v2);
  v34 = v33;
  v37 = IPC::Decoder::decode<WebCore::IntSize>(v2);
  v38 = *v2;
  if (*v2)
  {
    if (v28 || (v31 & 1) == 0 || (v34 & 1) == 0 || (v35 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v2);
    if (!*v2)
    {
      *v55 = 0;
      v55[352] = 0;
      if (v61 && cf)
      {
        CFRelease(cf);
      }

      goto LABEL_62;
    }

    LOBYTE(v27) = 0;
  }

  v36 = v65;
  if ((v65 & 1) == 0)
  {
    goto LABEL_75;
  }

  v36 = v64;
  v77[0] = v63;
  if (v64)
  {
    goto LABEL_75;
  }

  v77[1] = v62;
  v36 = v76;
  if ((v76 & 1) == 0)
  {
    goto LABEL_75;
  }

  v31 = v77;
  WebCore::ResourceRequestBase::RequestData::RequestData(v78, v70);
  v39 = v71;
  v71 = 0uLL;
  *&v78[152] = v39;
  v79 = v72;
  v80 = v73;
  v81 = v74;
  v40 = v75;
  v72 = 0;
  v75 = 0;
  v82 = v40;
  v36 = v104;
  if ((v104 & 1) == 0)
  {
    goto LABEL_75;
  }

  v2 = v77;
  LOBYTE(v83) = 0;
  v85 = -1;
  v36 = v103;
  if (v103)
  {
    goto LABEL_76;
  }

  v41 = v101;
  v101 = 0uLL;
  v83 = v41;
  v84 = v102;
LABEL_46:
  v85 = v36;
  while (1)
  {
    v36 = v69;
    if (v69)
    {
      v42 = v68;
      v68 = 0;
      v86 = v42;
      v36 = v60;
      if (v60)
      {
        v36 = v59;
        v87 = v58;
        if (v59)
        {
          v88 = v56;
          v36 = v57;
          if (v57)
          {
            v89 = v99[0];
            v90 = v99[1];
            v36 = v61;
            if (v61)
            {
              v43 = cf;
              cf = 0;
              v91 = v43;
              v36 = v54;
              if ((v54 & 0x100000000) != 0)
              {
                v92 = v54;
                v36 = v53;
                if (v53)
                {
                  v36 = v52;
                  v93 = v52;
                  if (v25)
                  {
                    v36 = v51;
                    v94 = v51;
                    if (v38)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    if (v36 != 255)
    {
      *(v2 + 13) = v101;
      goto LABEL_46;
    }
  }

  v95 = v27;
  v96 = v29;
  v97 = v32;
  v98 = v37;
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100]<WebKit::FrameInfoData,0>(v55, v77);
  v45 = v91;
  v91 = 0;
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = v86;
  v86 = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v44);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 208);
  v47 = v82;
  v82 = 0;
  if (v47)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v31 | 8));
LABEL_62:
  if (v69 == 1)
  {
    v49 = v68;
    v68 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v48);
      }
    }
  }

  if (v104 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v101);
  }

  if (v76 == 1)
  {
    v50 = v75;
    v75 = 0;
    if (v50)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v70);
  }
}

void sub_19D6E6F58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, CFTypeRef cf, uint64_t a23, WTF::StringImpl *a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a19 && cf)
  {
    CFRelease(cf);
  }

  if (a25 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  if (*(v55 - 112) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v55 - 144);
  }

  std::optional<WebCore::ResourceRequest>::~optional(&a27);
  _Unwind_Resume(a1);
}

void *IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::UUID>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::UUID>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void IPC::Decoder::decode<WebCore::CertificateInfo>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(a2, a1);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t std::optional<WebKit::FrameInfoData>::optional[abi:sn200100]<WebKit::FrameInfoData,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 8, a2 + 8);
  v4 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v4;
  v5 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v5;
  v6 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 176) = v6;
  v7 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v7;
  v8 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 200) = v8;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 208));
  v9 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 240) = v9;
  v10 = *(a2 + 248);
  v11 = *(a2 + 264);
  v12 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v11;
  *(a1 + 280) = v12;
  *(a1 + 248) = v10;
  v13 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 304) = v13;
  v14 = *(a2 + 312);
  v15 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v14;
  *(a1 + 328) = v15;
  *(a1 + 352) = 1;
  return a1;
}

void sub_19D6E7194(_Unwind_Exception *a1)
{
  v3 = *(v1 + 200);
  *(v1 + 200) = 0;
  if (v3)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebKit::FrameTreeCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  v4 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, (v4 + 4));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(a1, (v4 + 8));
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  v6 = *(a2 + 52);
  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = 56 * v6;
    do
    {
      result = IPC::ArgumentCoder<WebKit::FrameTreeCreationParameters,void>::encode(a1, v7);
      v7 += 56;
      v8 -= 56;
    }

    while (v8);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FrameTreeSyncData,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
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

void IPC::ArgumentCoder<WebKit::FrameTreeNodeData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::FrameInfoData>(a1, &v46);
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
    v37 = *(a1 + 3);
    if (v37)
    {
      if (v4)
      {
        (*(*v37 + 16))(v37);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_77;
  }

  *(a1 + 2) = v5 + 1;
  if (v5)
  {
    v11 = *v5;
    v44 = 0;
    v45 = 0;
    if (v11 >= 0xB21)
    {
      while (1)
      {
        IPC::Decoder::decode<WebKit::FrameTreeNodeData>(&v66, a1);
        v17 = v85;
        if (v85)
        {
          if (HIDWORD(v45) == v45)
          {
            WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeNodeData>(&v44, &v66);
          }

          else
          {
            WebKit::FrameTreeNodeData::FrameTreeNodeData(v44 + 368 * HIDWORD(v45), &v66);
            ++HIDWORD(v45);
          }
        }

        if (v85 == 1)
        {
          WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v84, v6);
          v19 = cf;
          cf = 0;
          if (v19)
          {
            CFRelease(v19);
          }

          v20 = v75;
          v75 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v18);
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v72);
          v21 = v71;
          v71 = 0;
          if (v21)
          {
          }

          WebCore::ResourceRequestBase::~ResourceRequestBase(v67);
        }

        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!--v11)
        {
          LOBYTE(v41) = 0;
          v43 = 0;
          WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v44, HIDWORD(v45));
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (!v11)
      {
LABEL_43:
        v41 = v44;
        v22 = v45;
        v44 = 0;
        v45 = 0;
        v42 = v22;
        v43 = 1;
LABEL_44:
        WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v6);
        if (v43)
        {
          goto LABEL_45;
        }

        goto LABEL_79;
      }

      LODWORD(v45) = 368 * v11 / 0x170u;
      v44 = WTF::fastMalloc((368 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebKit::FrameTreeNodeData>(&v66, a1);
        v12 = v85;
        if (v85)
        {
          if (HIDWORD(v45) == v45)
          {
            WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeNodeData>(&v44, &v66);
          }

          else
          {
            WebKit::FrameTreeNodeData::FrameTreeNodeData(v44 + 368 * HIDWORD(v45), &v66);
            ++HIDWORD(v45);
          }
        }

        if (v85 == 1)
        {
          WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v84, v6);
          v14 = cf;
          cf = 0;
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = v75;
          v75 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v13);
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v72);
          v16 = v71;
          v71 = 0;
          if (v16)
          {
          }

          WebCore::ResourceRequestBase::~ResourceRequestBase(v67);
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_43;
        }
      }
    }

    LOBYTE(v41) = 0;
    v43 = 0;
    goto LABEL_44;
  }

LABEL_77:
  *a1 = 0;
  *(a1 + 1) = 0;
  v38 = *(a1 + 3);
  if (v38 && v4)
  {
    (*(*v38 + 16))(v38);
  }

  LOBYTE(v41) = 0;
  v43 = 0;
LABEL_79:
  v23 = *a1;
  v39 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v40 = *(a1 + 3);
  if (v40 && v39)
  {
    (*(*v40 + 16))(v40, v23);
  }

LABEL_45:
  if (!*a1)
  {
LABEL_74:
    *a2 = 0;
    a2[368] = 0;
    goto LABEL_59;
  }

  if ((v65 & 1) == 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v66 = v46;
  WebCore::ResourceRequestBase::RequestData::RequestData(v67, v47);
  v24 = v48;
  v48 = 0uLL;
  *&v67[152] = v24;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  v25 = v52;
  v49 = 0;
  v52 = 0;
  v71 = v25;
  LOBYTE(v72) = 0;
  v74 = -1;
  if (!v55)
  {
    v26 = v53;
    v53 = 0uLL;
    v72 = v26;
    v73 = v54;
LABEL_49:
    v74 = v55;
    goto LABEL_50;
  }

  if (v55 != 255)
  {
    v72 = v53;
    goto LABEL_49;
  }

LABEL_50:
  v75 = v56;
  v77 = v58;
  v78 = v59;
  v76 = v57;
  v27 = v61;
  v56 = 0;
  v61 = 0;
  v79 = v60;
  cf = v27;
  v81 = v62;
  v82 = v63;
  v83 = v64;
  if ((v43 & 1) == 0)
  {
    goto LABEL_73;
  }

  v84[0] = v41;
  v28 = v42;
  v41 = 0;
  v42 = 0;
  v84[1] = v28;
  WebKit::FrameTreeNodeData::FrameTreeNodeData(a2, &v66);
  a2[368] = 1;
  WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v84, v29);
  v31 = cf;
  cf = 0;
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = v75;
  v75 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v72);
  v33 = v71;
  v71 = 0;
  if (v33)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v67);
LABEL_59:
  if (v43 == 1)
  {
    WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v23);
  }

  if (v65 == 1)
  {
    v34 = v61;
    v61 = 0;
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = v56;
    v56 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v23);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v53);
    v36 = v52;
    v52 = 0;
    if (v36)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v47);
  }
}

void sub_19D6E7870(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, WTF::StringImpl *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CFTypeRef cf, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a59 == 1)
  {
    v60 = cf;
    cf = 0;
    if (v60)
    {
      CFRelease(v60);
    }

    v61 = a45;
    a45 = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a41);
    v62 = a40;
    a40 = 0;
    if (v62)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a16);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::FrameInfoData>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a1, a2);
  if ((a2[352] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::FullScreenMediaDetails,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(a1, a2 + 24);
}

void IPC::ArgumentCoder<WebKit::FullScreenMediaDetails,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_27;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_27;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_24;
  }

  v7 = *v5;
  if (v7 < 4)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_27:
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v4)
  {
    (*(*v17 + 16))(v17, v6);
  }

  v8 = 0;
LABEL_5:
  v9 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v11 = v10;
  IPC::Decoder::decode<WTF::String>(a1, &v23);
  IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v21, a1);
  if (!*a1)
  {
LABEL_21:
    *a2 = 0;
    *(a2 + 48) = 0;
    goto LABEL_12;
  }

  if (v8 <= 0xFF || (LOBYTE(v18) = v8, (v11 & 1) == 0) || (HIDWORD(v18) = v9, (v24 & 1) == 0) || (v13 = v23, v23 = 0, v19 = v13, (v22 & 1) == 0))
  {
    __break(1u);
    goto LABEL_21;
  }

  std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](v20, v21);
  *a2 = v18;
  *(a2 + 8) = HIDWORD(v9);
  *(a2 + 16) = v19;
  std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](a2 + 24, v20);
  *(a2 + 48) = 1;
  if (v20[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v20);
  }

LABEL_12:
  if (v22 == 1 && v21[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v21);
  }

  if (v24 == 1)
  {
    v14 = v23;
    v23 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }
    }
  }
}

void sub_19D6E7D24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  v28 = *(v24 + 16);
  *(v24 + 16) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, a2);
  }

  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight((v25 + 24));
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a22 == 1 && a20 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a16);
  }

  if (*(v26 - 56) == 1)
  {
    v29 = *(v26 - 64);
    *(v26 - 64) = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::GamepadData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 24), *(a2 + 36));
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 40), *(a2 + 52));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 56));

  return IPC::ArgumentCoder<WTF::HashSet<WebCore::GamepadHapticEffectType,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 64));
}

uint64_t IPC::ArgumentCoder<WebKit::GamepadData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45)
    {
      if (v4)
      {
        (*(*v45 + 16))(v45);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v46 = *(a1 + 3);
  if (v46 && v4)
  {
    (*(*v46 + 16))(v46);
  }

  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::String>(a1, &v55);
  IPC::Decoder::decode<WTF::String>(a1, &v53);
  IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v51);
  IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v49);
  result = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v13 = result;
  v15 = v14;
  v16 = *(a1 + 1);
  v17 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = *a1;
  v19 = v17 - *a1;
  v7 = v16 >= v19;
  v20 = v16 - v19;
  if (!v7 || v20 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (v47)
    {
      if (v16)
      {
        (*(*v47 + 16))(v47);
        v16 = *(a1 + 1);
      }
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_79;
  }

  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48 && v16)
    {
      (*(*v48 + 16))(v48);
    }

    goto LABEL_38;
  }

  v21 = *v17;
  v57 = 0;
  if (!v21)
  {
    v44 = 0;
    goto LABEL_41;
  }

  for (i = 0; i != v21; ++i)
  {
    result = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a1);
    v23 = result;
    if ((result & 0x100) == 0 || (result & 0xFE) == 0xFE)
    {
      v25 = v57;
      if (v57)
      {
LABEL_37:
        WTF::fastFree((v25 - 16), v18);
      }

LABEL_38:
      v18 = *a1;
      v16 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        goto LABEL_67;
      }

      goto LABEL_39;
    }

    v24 = result;
    if (result == 254)
    {
      __break(0xC471u);
      JUMPOUT(0x19D6E82D8);
    }

    if (result == 255)
    {
      __break(0xC471u);
      JUMPOUT(0x19D6E82F8);
    }

    v25 = v57;
    if (!v57)
    {
      result = WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(&v57);
      v25 = v57;
    }

    v26 = *(v25 - 8);
    v27 = ~(v23 << 15) + v23;
    v28 = (9 * (v27 ^ (v27 >> 10))) ^ ((9 * (v27 ^ (v27 >> 10))) >> 6);
    v29 = v26 & ((v28 + ~(v28 << 11)) ^ ((v28 + ~(v28 << 11)) >> 16));
    v30 = (v25 + v29);
    v31 = *(v25 + v29);
    if (v31 == 255)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v33 = 1;
    do
    {
      if (v31 == v24)
      {
        goto LABEL_37;
      }

      if (v31 == 254)
      {
        v18 = v30;
      }

      v29 = (v29 + v33) & v26;
      v30 = (v25 + v29);
      v31 = *(v25 + v29);
      ++v33;
    }

    while (v31 != 255);
    if (!v18)
    {
LABEL_21:
      v32 = *(v25 - 16);
      v18 = v30;
    }

    else
    {
      *v18 = -1;
      v32 = *(v25 - 16) - 1;
      *(v25 - 16) = v32;
    }

    *v18 = v24;
    v34 = *(v25 - 12) + 1;
    *(v25 - 12) = v34;
    v35 = (v34 + v32);
    v36 = *(v25 - 4);
    if (v36 <= 0x400)
    {
      if (3 * v36 > 4 * v35)
      {
        continue;
      }

LABEL_31:
      result = WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(&v57);
      continue;
    }

    if (v36 <= 2 * v35)
    {
      goto LABEL_31;
    }
  }

  v44 = v57;
LABEL_41:
  v37 = 1;
  while (*a1)
  {
    if (v10 & 0x100000000) != 0 && (v56 & 1) != 0 && (v54 & 1) != 0 && (v52 & 1) != 0 && (v50 & 1) != 0 && (v15 & 1) != 0 && (v37)
    {
      *&v12 = 0;
      v38 = v55;
      v55 = 0;
      v39 = v53;
      v53 = 0;
      v40 = v51[0];
      v41 = v51[1];
      *v51 = v12;
      v42 = v49[0];
      v43 = v49[1];
      *v49 = v12;
      *a2 = v10;
      *(a2 + 8) = v38;
      *(a2 + 16) = v39;
      *(a2 + 24) = v40;
      *(a2 + 32) = v41;
      *(a2 + 40) = v42;
      *(a2 + 48) = v43;
      *(a2 + 56) = v13;
      *(a2 + 64) = v44;
      *(a2 + 72) = 1;
      goto LABEL_51;
    }

    __break(1u);
LABEL_67:
    if (v16)
    {
      result = (*(*result + 16))(result, v18);
    }

LABEL_39:
    v44 = 0;
    v37 = 0;
  }

  *a2 = 0;
  *(a2 + 72) = 0;
  if (!v44)
  {
    v37 = 0;
  }

  if (v37 == 1)
  {
    result = WTF::fastFree((v44 - 16), v18);
  }

LABEL_51:
  if (v50 == 1)
  {
    result = v49[0];
    if (v49[0])
    {
      v49[0] = 0;
      LODWORD(v49[1]) = 0;
      result = WTF::fastFree(result, v18);
    }
  }

  if (v52 == 1)
  {
    result = v51[0];
    if (v51[0])
    {
      v51[0] = 0;
      LODWORD(v51[1]) = 0;
      result = WTF::fastFree(result, v18);
    }
  }

  if (v54 == 1)
  {
    result = v53;
    v53 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  if (v56 == 1)
  {
    result = v55;
    v55 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  return result;
}

void sub_19D6E8388(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13, WTF *a14, int a15, int a16, char a17, WTF::StringImpl *a18, char a19, WTF::StringImpl *a20, char a21, uint64_t a22)
{
  if (a13 == 1 && a10)
  {
    WTF::fastFree(a10, a2);
  }

  if (a17 == 1 && a14)
  {
    WTF::fastFree(a14, a2);
  }

  if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a21 == 1 && a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<true,double,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6E84D4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessConnectionParameters,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(a1, a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(a1, (a2 + 56));

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(a1, (a2 + 58));
}

void IPC::ArgumentCoder<WebKit::GPUProcessConnectionParameters,void>::decode(IPC::Decoder *a1@<X0>, WTF::MachSendRight *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ProcessIdentity>(a1, v26);
  IPC::Decoder::decode<WebKit::SharedPreferencesForWebProcess>(a1, v24);
  v4 = IPC::Decoder::decode<BOOL>(a1);
  IPC::Decoder::decode<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v22, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v20);
  v5 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v6 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (*a1)
  {
    if ((v27 & 1) == 0 || (v8 = v6, WTF::MachSendRight::MachSendRight(v13, v26), (v25 & 1) == 0) || (*v14 = *v24, *&v14[15] = *&v24[15], (v4 & 0x100) == 0) || (v15 = v4, (v23 & 1) == 0) || (v9 = v22, v22 = 0, v16 = v9, (v21 & 1) == 0) || (v10 = v20, v20 = 0, v17 = v10, (v5 & 0x10000) == 0) || (v18 = v5, (v8 & 0x10000) == 0))
    {
      __break(1u);
      return;
    }

    v19 = v8;
    _ZNSt3__127__optional_copy_assign_baseIN6WebKit30GPUProcessConnectionParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a2, v13);
    WebKit::GPUProcessConnectionParameters::~GPUProcessConnectionParameters(v13, v11);
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  if (v21 == 1)
  {
    v12 = v20;
    v20 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }
    }
  }

  if (v23 == 1 && v22)
  {
    WTF::fastFree((v22 - 16), v7);
  }

  if (v27 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v26);
  }
}

void sub_19D6E8704(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, char a19, uint64_t a20, char a21)
{
  WebKit::GPUProcessConnectionParameters::~GPUProcessConnectionParameters(&a10, a2);
  if (a19 == 1)
  {
    v24 = a18;
    a18 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }
    }
  }

  if (a21 == 1 && a20)
  {
    WTF::fastFree((a20 - 16), v23);
  }

  if (*(v21 - 52) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v21 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebKit::SharedPreferencesForWebProcess>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void WebKit::GPUProcessConnectionParameters::~GPUProcessConnectionParameters(WebKit::GPUProcessConnectionParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  WTF::MachSendRight::~MachSendRight(this);
}

uint64_t IPC::ArgumentCoder<WebKit::GoToBackForwardItemParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebKit::FrameState,void>::encode(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 17));
  IPC::ArgumentCoder<std::optional<WebKit::WebsitePoliciesData>,void>::encode<IPC::Encoder,std::optional<WebKit::WebsitePoliciesData>>(a1, a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 152));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 160);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 176));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 184));
  v4 = *(a2 + 192);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebKit::GoToBackForwardItemParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>(v2, &v56);
  LOWORD(v7) = IPC::Decoder::decode<WebCore::TextGranularity>(v2);
  v8 = IPC::Decoder::decode<WebKit::UnifiedOriginStorageLevel>(v2);
  IPC::Decoder::decode<std::optional<WebKit::WebsitePoliciesData>>(v54, v2);
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = *v2;
  if (v9 <= &v10[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v36 = *(v2 + 3);
    if (v36)
    {
      if (v9)
      {
        (*(*v36 + 16))(v36);
        v9 = *(v2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_68:
    *v2 = 0;
    *(v2 + 1) = 0;
    v37 = *(v2 + 3);
    if (v37)
    {
      if (v9)
      {
        (*(*v37 + 16))(v37);
        v12 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
        goto LABEL_71;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_71;
  }

  *(v2 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_68;
  }

  v12 = *v10;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_5;
  }

LABEL_71:
  *v2 = 0;
  *(v2 + 1) = 0;
  v38 = *(v2 + 3);
  if (v38 && v9)
  {
    (*(*v38 + 16))(v38, v11);
  }

  v13 = 0;
LABEL_5:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v2, &v51);
  if ((v53 & 1) == 0)
  {
    v33 = *v2;
    v34 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v35 = *(v2 + 3);
    if (v35)
    {
      if (v34)
      {
        (*(*v35 + 16))(v35, v33);
      }
    }
  }

  IPC::Decoder::decode<WebCore::PublicSuffix>(&v49, v2);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(v2, &v47);
  v15 = *(v2 + 1);
  if ((v48 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  v16 = *v2;
  v17 = *(v2 + 2);
  if (v15 <= &v17[-*v2])
  {
    while (1)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v30 = *(v2 + 3);
      if (v30)
      {
        if (v15)
        {
          (*(*v30 + 16))(v30, v16);
          v15 = *(v2 + 1);
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_49:
      *v2 = 0;
      *(v2 + 1) = 0;
      v31 = *(v2 + 3);
      if (v31)
      {
        if (v15)
        {
          (*(*v31 + 16))(v31);
          v16 = *v2;
          v15 = *(v2 + 1);
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = 0;
LABEL_52:
      *v2 = 0;
      *(v2 + 1) = 0;
      v32 = *(v2 + 3);
      if (!v32)
      {
        goto LABEL_53;
      }

      if (!v15)
      {
        goto LABEL_53;
      }

      (*(*v32 + 16))(v32, v16);
      v16 = *v2;
      v2 = 0;
      if (!v16)
      {
        goto LABEL_53;
      }

LABEL_14:
      if (v6)
      {
        v39 = v4;
        if (v57)
        {
          v19 = v56;
          v56 = 0;
          v40 = v19;
          if ((v7 & 0x100) != 0)
          {
            LOBYTE(v41) = v7;
            if (v8 > 0xFFu)
            {
              HIBYTE(v41) = v8;
              if (v55)
              {
                v7 = &v39;
                std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](v42, v54);
                if (v13)
                {
                  LOBYTE(v43) = v14;
                  if (v53)
                  {
                    *(&v43 + 1) = v51;
                    v44 = v52;
                    if (v50)
                    {
                      v20 = v49;
                      v49 = 0;
                      v45[0] = v20;
                      if (v48)
                      {
                        v21 = v47;
                        v47 = 0;
                        v45[1] = v21;
                        if (v2 > 0xFF)
                        {
                          v46 = v2;
                          v22 = v40;
                          v40 = 0;
                          *a2 = v39;
                          *(a2 + 8) = v22;
                          *(a2 + 16) = v41;
                          std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100]((a2 + 24), v42);
                          *(a2 + 152) = v43;
                          *(a2 + 168) = v44;
                          v23 = *v45;
                          v45[0] = 0;
                          v45[1] = 0;
                          *(a2 + 176) = v23;
                          *(a2 + 192) = v46;
                          *(a2 + 200) = 1;
                          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v45[1]);
                          v24 = v45[0];
                          v45[0] = 0;
                          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v24, v16);
                          }

                          if (v42[120] == 1)
                          {
                            WebKit::WebsitePoliciesData::~WebsitePoliciesData(v42, v16);
                          }

                          v25 = v40;
                          v40 = 0;
                          if (v25)
                          {
                            WTF::RefCounted<WebKit::FrameState>::deref(v25);
                          }

                          goto LABEL_31;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      __break(1u);
LABEL_45:
      v28 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      v29 = *(v2 + 3);
      if (v29 && v15)
      {
        (*(*v29 + 16))(v29, v28);
        v15 = *(v2 + 1);
        goto LABEL_10;
      }

      v15 = 0;
      v16 = *v2;
    }
  }

  *(v2 + 2) = v17 + 1;
  if (!v17)
  {
    goto LABEL_49;
  }

  v18 = *v17;
  if (v18 >= 3)
  {
    goto LABEL_52;
  }

  v2 = (v18 | 0x100);
  if (v16)
  {
    goto LABEL_14;
  }

LABEL_53:
  *a2 = 0;
  *(a2 + 200) = 0;
LABEL_31:
  if (v48 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v47);
  }

  if (v50 == 1)
  {
    v26 = v49;
    v49 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v16);
      }
    }
  }

  if (v55 == 1 && v54[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v54, v16);
  }

  if (v57 == 1)
  {
    v27 = v56;
    v56 = 0;
    if (v27)
    {
      WTF::RefCounted<WebKit::FrameState>::deref(v27);
    }
  }
}

void sub_19D6E8E68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::StringImpl *a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, WTF::StringImpl *a40, char a41)
{
  if (*(v41 - 104) == 1 && *(v41 - 112) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData((v41 - 232), a2);
  }

  if (*(v41 - 88) == 1)
  {
    v43 = *(v41 - 96);
    *(v41 - 96) = 0;
    if (v43)
    {
      WTF::RefCounted<WebKit::FrameState>::deref(v43);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *IPC::Decoder::decode<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>@<X0>(IPC::Decoder *a1@<X0>, unint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::FrameState,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

void IPC::Decoder::decode<std::optional<WebKit::WebsitePoliciesData>>(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_16;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_16:
    IPC::Decoder::markInvalid(this);
    goto LABEL_17;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_17:
    IPC::Decoder::markInvalid(this);
LABEL_14:
    *a1 = 0;
    a1[128] = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
    LOBYTE(v7[0]) = 0;
    v8 = 0;
    std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](a1, v7);
    a1[128] = 1;
    if (v8 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::decode(this, v7);
  if ((v8 & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  WebKit::WebsitePoliciesData::WebsitePoliciesData(a1, v7);
  a1[120] = 1;
  a1[128] = 1;
  if (v8)
  {
LABEL_9:
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v7, v6);
  }

LABEL_10:
  if ((a1[128] & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }
}

void sub_19D6E9118(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(&a9, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::PublicSuffix>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::PublicSuffix,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::CursorContext,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::Cursor>,void>::encode<IPC::Encoder,std::optional<WebCore::Cursor> const&>(a1, a2 + 16);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
}

uint64_t IPC::ArgumentCoder<WebKit::DynamicViewportSizeUpdate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 40));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 56));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 72));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  v4 = *(a2 + 112);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::DynamicViewportSizeUpdate,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v89 = v8;
  v9 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v88 = v10;
  v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v13 = v12;
  if ((v12 & 1) == 0)
  {
    v65 = *a1;
    v66 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v67 = *(a1 + 3);
    if (v67)
    {
      if (v66)
      {
        (*(*v67 + 16))(v67, v65);
      }
    }
  }

  v14 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v16 = v15;
  if ((v15 & 1) == 0)
  {
    v54 = *a1;
    v55 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56)
    {
      if (v55)
      {
        (*(*v56 + 16))(v56, v54);
      }
    }
  }

  v87 = *a1;
  if (*a1)
  {
    if ((v13 & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_38;
    }

    v83 = v11 & 0xFFFFFFFFFFFFFF00;
    v84 = v11;
  }

  else
  {
    v48 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49 && v48)
    {
      (*(*v49 + 16))(v49, 0);
    }

    v83 = 0;
    v84 = 0;
  }

  v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v18 = v17;
  if ((v17 & 1) == 0)
  {
    v68 = *a1;
    v69 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v70 = *(a1 + 3);
    if (v70)
    {
      if (v69)
      {
        (*(*v70 + 16))(v70, v68);
      }
    }
  }

  v19 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v21 = v20;
  v82 = v19;
  if ((v20 & 1) == 0)
  {
    v57 = *a1;
    v58 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (v59)
    {
      if (v58)
      {
        (*(*v59 + 16))(v59, v57);
      }
    }
  }

  v85 = *a1;
  if (*a1)
  {
    if ((v18 & 1) == 0 || (v21 & 1) == 0)
    {
      goto LABEL_38;
    }

    v76 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v50 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v51 = *(a1 + 3);
    if (v51 && v50)
    {
      (*(*v51 + 16))(v51, 0);
    }

    v11 = 0;
    v76 = 0;
  }

  v78 = v14;
  v22 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    v71 = *a1;
    v72 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73)
    {
      if (v72)
      {
        (*(*v73 + 16))(v73, v71);
      }
    }
  }

  v86 = v6;
  v25 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v27 = v26;
  if ((v26 & 1) == 0)
  {
    v60 = *a1;
    v61 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v62 = *(a1 + 3);
    if (v62)
    {
      if (v61)
      {
        v63 = v25;
        (*(*v62 + 16))(v62, v60);
        v25 = v63;
      }
    }
  }

  v6 = *a1;
  v80 = v7;
  v81 = v4;
  v79 = v9;
  v77 = v11;
  v75 = v25;
  if (*a1)
  {
    if ((v24 & 1) == 0 || (v27 & 1) == 0)
    {
      goto LABEL_38;
    }

    v11 = v22 & 0xFFFFFFFFFFFFFF00;
    v74 = v22;
  }

  else
  {
    v52 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (v53 && v52)
    {
      (*(*v53 + 16))(v53, 0);
    }

    v74 = 0;
    v11 = 0;
  }

  IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v90);
  LOBYTE(v9) = v91;
  if ((v91 & 1) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v28 = IPC::Decoder::decode<unsigned long long>(a1);
    v30 = v29;
    v31 = IPC::Decoder::decode<float>(a1);
    result = IPC::Decoder::decode<unsigned long long>(a1);
    v33 = result;
    v35 = v34;
    v36 = *(a1 + 1);
    v37 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v38 = *a1;
    v39 = v37 - *a1;
    v40 = v36 >= v39;
    v41 = v36 - v39;
    if (!v40 || v41 <= 7)
    {
      break;
    }

    *(a1 + 2) = v37 + 1;
    if (!v37)
    {
      goto LABEL_59;
    }

    v42 = *v37;
    v43 = 1;
    if (!v38)
    {
      goto LABEL_60;
    }

LABEL_25:
    if (v86 & 1) != 0 && (v89 & 1) != 0 && (v88 & 1) != 0 && v87 && v85 && v6 && (v9 & 1) != 0 && (v30 & 1) != 0 && (v31 & 0x100000000) != 0 && (v35 & 1) != 0 && (v43)
    {
      *a2 = v81;
      *(a2 + 8) = v80;
      *(a2 + 16) = v79;
      *(a2 + 24) = v83 | v84;
      *(a2 + 32) = v78;
      *(a2 + 40) = v76 | v77;
      *(a2 + 48) = v82;
      *(a2 + 56) = v11 | v74;
      *(a2 + 64) = v75;
      *(a2 + 72) = v90;
      *(a2 + 88) = v28;
      *(a2 + 96) = v31;
      v44 = 1;
      *(a2 + 104) = v33;
      *(a2 + 112) = v42;
      goto LABEL_37;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v45 = *a1;
    v46 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (v47 && v46)
    {
      (*(*v47 + 16))(v47, v45);
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v64 = *(a1 + 3);
  if (v64)
  {
    if (v36)
    {
      (*(*v64 + 16))(v64);
      v36 = *(a1 + 1);
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v36)
    {
      result = (*(*result + 16))(result);
      v43 = 0;
      v42 = 0;
      if (*a1)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_60:
  v44 = 0;
  *a2 = 0;
LABEL_37:
  *(a2 + 120) = v44;
  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebCore::RectEdges<float>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::decode(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    goto LABEL_22;
  }

  v4 = v2 + 1;
  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
    goto LABEL_23;
  }

  v5 = *v2;
  if (v5 >= 2)
  {
    v6 = a1;
    goto LABEL_24;
  }

  LODWORD(v6) = 1;
  while (1)
  {
    v7 = v5 ? v6 : 0;
    if (v1 <= &v4[-v3])
    {
      v20 = a1;
      IPC::Decoder::markInvalid(a1);
      a1 = v20;
    }

    else
    {
      v8 = v4 + 1;
      *(a1 + 2) = v4 + 1;
      if (v4)
      {
        v9 = *v4 << 8;
        v10 = 1;
        goto LABEL_11;
      }
    }

    v21 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v21;
    v9 = 0;
    v10 = 0;
    v1 = *(v21 + 1);
    v8 = *(v21 + 2);
    v3 = *v21;
LABEL_11:
    if (v1 <= &v8[-v3])
    {
      v22 = a1;
      v15 = v10;
      v17 = v9;
      IPC::Decoder::markInvalid(a1);
      v10 = v15;
      v9 = v17;
      a1 = v22;
    }

    else
    {
      *(a1 + 2) = v8 + 1;
      if (v8)
      {
        v11 = *v8 << 16;
        v12 = 1;
        goto LABEL_14;
      }
    }

    v16 = v10;
    v18 = v9;
    v14 = v6;
    v6 = a1;
    a1 = IPC::Decoder::markInvalid(a1);
    v10 = v16;
    v9 = v18;
    v11 = 0;
    v12 = 0;
    v3 = *v6;
    LOBYTE(v6) = v14;
LABEL_14:
    if (!v3)
    {
      break;
    }

    if (v6 & 1) != 0 && (v10 & 1) != 0 && (v12)
    {
      LODWORD(v3) = 0x1000000;
      return v11 | v9 | v7 | v3;
    }

    __break(1u);
LABEL_22:
    v19 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v19;
LABEL_23:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    v5 = 0;
LABEL_24:
    IPC::Decoder::markInvalid(v6);
    a1 = v6;
    LODWORD(v6) = 0;
    v1 = *(a1 + 1);
    v4 = *(a1 + 2);
    v3 = *a1;
  }

  v7 = 0;
  return v11 | v9 | v7 | v3;
}

uint64_t IPC::ArgumentCoder<WebKit::InteractionInformationAtPosition,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::encode(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 17));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 19));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 20));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 21));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 22));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 23));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 24));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 25));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 26));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 27));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 28));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 29));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 30));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 31));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 58));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 59));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 60));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 61));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 152));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 160));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 168));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 176));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(a1, (a2 + 192));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 200));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 208));
  IPC::ArgumentCoder<WebKit::CursorContext,void>::encode(a1, a2 + 216);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(a1, (a2 + 280));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 288));
  IPC::encodeObjectDirectly<NSArray>(a1, *(a2 + 296));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 304));
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(a1, a2 + 320);
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(a1, a2 + 416);

  return IPC::VectorArgumentCoder<false,WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 512);
}

void IPC::ArgumentCoder<WebKit::InteractionInformationAtPosition,void>::decode(IPC::Decoder *a1@<X0>, IPC::Decoder *a2@<X8>)
{
  v2 = a1;
  v462 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::decode(a1, v406);
  if ((v407 & 1) == 0)
  {
    v139 = *v2;
    v140 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v141 = *(v2 + 3);
    if (v141 && v140 != 0)
    {
      (*(*v141 + 16))(v141, v139);
    }
  }

  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *v2;
  if (v3 <= &v4[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v190 = *(v2 + 3);
    if (v190)
    {
      if (v3)
      {
        (*(*v190 + 16))(v190);
        v3 = *(v2 + 1);
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_356:
    *v2 = 0;
    *(v2 + 1) = 0;
    v191 = *(v2 + 3);
    if (v191)
    {
      if (v3)
      {
        (*(*v191 + 16))(v191);
        v6 = 0;
        v5 = *v2;
        v3 = *(v2 + 1);
        goto LABEL_359;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    v6 = 0;
    goto LABEL_359;
  }

  *(v2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_356;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    v7 = 1;
    goto LABEL_6;
  }

LABEL_359:
  *v2 = 0;
  *(v2 + 1) = 0;
  v192 = *(v2 + 3);
  if (v192 && v3)
  {
    (*(*v192 + 16))(v192, v5);
  }

  v7 = 0;
LABEL_6:
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v368 = IPC::Decoder::decode<std::optional<BOOL>>(v2);
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = *v2;
  if (v9 <= &v10[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v193 = *(v2 + 3);
    if (v193)
    {
      if (v9)
      {
        (*(*v193 + 16))(v193);
        v9 = *(v2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_363:
    *v2 = 0;
    *(v2 + 1) = 0;
    v194 = *(v2 + 3);
    if (v194)
    {
      if (v9)
      {
        (*(*v194 + 16))(v194);
        v11 = *v2;
        v9 = *(v2 + 1);
        goto LABEL_366;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_366;
  }

  *(v2 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_363;
  }

  v12 = *v10;
  if (v12 < 4)
  {
    v13 = v12 | 0x100;
    goto LABEL_13;
  }

LABEL_366:
  *v2 = 0;
  *(v2 + 1) = 0;
  v195 = *(v2 + 3);
  if (!v195)
  {
    v11 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_368;
  }

  if (!v9)
  {
    v11 = 0;
    v13 = 0;
LABEL_368:
    *v2 = 0;
    *(v2 + 1) = 0;
    v196 = *(v2 + 3);
    if (v196)
    {
      v237 = v13;
      if (v9)
      {
        (*(*v196 + 16))(v196, v11);
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v11 = 0;
      }

      v13 = v237;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    goto LABEL_370;
  }

  (*(*v195 + 16))(v195, v11);
  v13 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
LABEL_13:
  v14 = *(v2 + 2);
  if (v9 <= &v14[-v11])
  {
    goto LABEL_368;
  }

  v15 = v14 + 1;
  *(v2 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_370:
    *v2 = 0;
    *(v2 + 1) = 0;
    v197 = *(v2 + 3);
    if (v197)
    {
      v236 = v13;
      if (v9)
      {
        (*(*v197 + 16))(v197, v11);
        v16 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v11 = 0;
        v16 = 0;
      }

      v13 = v236;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v16 = 0;
    }

    goto LABEL_372;
  }

  v16 = *v14;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_17;
  }

LABEL_372:
  *v2 = 0;
  *(v2 + 1) = 0;
  v198 = *(v2 + 3);
  if (!v198)
  {
    v363 = 0;
    v366 = 0;
    v199 = 0;
    v11 = 0;
    goto LABEL_374;
  }

  v235 = v13;
  if (!v9)
  {
    v363 = 0;
    v366 = 0;
    v199 = 0;
    v11 = 0;
LABEL_374:
    *v2 = 0;
    *(v2 + 1) = 0;
    v200 = *(v2 + 3);
    if (v200)
    {
      v239 = v13;
      if (v199)
      {
        (*(*v200 + 16))(v200, v11, v199);
        v19 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v19 = 0;
      }

      v13 = v239;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v19 = 0;
    }

    goto LABEL_376;
  }

  (*(*v198 + 16))(v198, v11);
  v17 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v15 = *(v2 + 2);
  v13 = v235;
LABEL_17:
  v366 = v17;
  if (!v16)
  {
    v17 = 0;
  }

  v363 = v17;
  if (v9 <= &v15[-v11])
  {
    v308 = v13;
    v199 = 0;
    v309 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v309 && v9)
    {
      (*(*v309 + 16))(v309);
      v11 = *v2;
      v199 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v308;
    goto LABEL_374;
  }

  v18 = v15 + 1;
  *(v2 + 2) = v15 + 1;
  if (!v15)
  {
    v199 = v9;
    goto LABEL_374;
  }

  v19 = *v15;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_23;
  }

LABEL_376:
  *v2 = 0;
  *(v2 + 1) = 0;
  v201 = *(v2 + 3);
  if (!v201)
  {
    v361 = 0;
    v364 = 0;
    v202 = 0;
    v11 = 0;
    goto LABEL_378;
  }

  v238 = v13;
  if (!v9)
  {
    v361 = 0;
    v364 = 0;
    v202 = 0;
    v11 = 0;
LABEL_378:
    *v2 = 0;
    *(v2 + 1) = 0;
    v203 = *(v2 + 3);
    if (v203)
    {
      v241 = v13;
      if (v202)
      {
        (*(*v203 + 16))(v203, v11, v202);
        v23 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v23 = 0;
      }

      v13 = v241;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v23 = 0;
    }

    goto LABEL_380;
  }

  (*(*v201 + 16))(v201, v11);
  v20 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v18 = *(v2 + 2);
  v13 = v238;
LABEL_23:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v361 = v21;
  if (v9 <= &v18[-v11])
  {
    v364 = v20;
    v310 = v13;
    v202 = 0;
    v311 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v311 && v9)
    {
      (*(*v311 + 16))(v311);
      v11 = *v2;
      v202 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v310;
    goto LABEL_378;
  }

  v22 = v18 + 1;
  *(v2 + 2) = v18 + 1;
  if (!v18)
  {
    v364 = v20;
    v202 = v9;
    goto LABEL_378;
  }

  v23 = *v18;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_30;
  }

  v364 = v20;
LABEL_380:
  *v2 = 0;
  *(v2 + 1) = 0;
  v204 = *(v2 + 3);
  if (!v204)
  {
    v358 = 0;
    v360 = 0;
    v205 = 0;
    v11 = 0;
    goto LABEL_382;
  }

  v240 = v13;
  if (!v9)
  {
    v358 = 0;
    v360 = 0;
    v205 = 0;
    v11 = 0;
LABEL_382:
    *v2 = 0;
    *(v2 + 1) = 0;
    v206 = *(v2 + 3);
    if (v206)
    {
      v243 = v13;
      if (v205)
      {
        (*(*v206 + 16))(v206, v11, v205);
        v26 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v26 = 0;
      }

      v13 = v243;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v26 = 0;
    }

    goto LABEL_384;
  }

  (*(*v204 + 16))(v204, v11);
  v24 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v22 = *(v2 + 2);
  v13 = v240;
  v20 = v364;
LABEL_30:
  v360 = v24;
  if (!v23)
  {
    v24 = 0;
  }

  v358 = v24;
  if (v9 <= &v22[-v11])
  {
    v364 = v20;
    v312 = v13;
    v205 = 0;
    v313 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v313 && v9)
    {
      (*(*v313 + 16))(v313);
      v11 = *v2;
      v205 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v312;
    goto LABEL_382;
  }

  v25 = v22 + 1;
  *(v2 + 2) = v22 + 1;
  if (!v22)
  {
    v364 = v20;
    v205 = v9;
    goto LABEL_382;
  }

  v26 = *v22;
  if (v26 < 2)
  {
    v27 = 1;
    goto LABEL_36;
  }

  v364 = v20;
LABEL_384:
  *v2 = 0;
  *(v2 + 1) = 0;
  v207 = *(v2 + 3);
  if (!v207)
  {
    v357 = 0;
    v359 = 0;
    v208 = 0;
    v11 = 0;
    goto LABEL_386;
  }

  v242 = v13;
  if (!v9)
  {
    v357 = 0;
    v359 = 0;
    v208 = 0;
    v11 = 0;
LABEL_386:
    *v2 = 0;
    *(v2 + 1) = 0;
    v209 = *(v2 + 3);
    if (v209)
    {
      v245 = v13;
      if (v208)
      {
        (*(*v209 + 16))(v209, v11, v208);
        v30 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v30 = 0;
      }

      v13 = v245;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v30 = 0;
    }

    goto LABEL_388;
  }

  (*(*v207 + 16))(v207, v11);
  v27 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v25 = *(v2 + 2);
  v13 = v242;
  v20 = v364;
LABEL_36:
  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v357 = v28;
  if (v9 <= &v25[-v11])
  {
    v359 = v27;
    v364 = v20;
    v314 = v13;
    v208 = 0;
    v315 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v315 && v9)
    {
      (*(*v315 + 16))(v315);
      v11 = *v2;
      v208 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v314;
    goto LABEL_386;
  }

  v29 = v25 + 1;
  *(v2 + 2) = v25 + 1;
  if (!v25)
  {
    v359 = v27;
    v364 = v20;
    v208 = v9;
    goto LABEL_386;
  }

  v30 = *v25;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_43;
  }

  v359 = v27;
  v364 = v20;
LABEL_388:
  *v2 = 0;
  *(v2 + 1) = 0;
  v210 = *(v2 + 3);
  if (!v210)
  {
    v354 = 0;
    v356 = 0;
    v211 = 0;
    v11 = 0;
    goto LABEL_390;
  }

  v244 = v13;
  if (!v9)
  {
    v354 = 0;
    v356 = 0;
    v211 = 0;
    v11 = 0;
LABEL_390:
    *v2 = 0;
    *(v2 + 1) = 0;
    v212 = *(v2 + 3);
    if (v212)
    {
      v247 = v13;
      if (v211)
      {
        (*(*v212 + 16))(v212, v11, v211);
        v33 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v33 = 0;
      }

      v13 = v247;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v33 = 0;
    }

    goto LABEL_392;
  }

  (*(*v210 + 16))(v210, v11);
  v31 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v29 = *(v2 + 2);
  v13 = v244;
  v20 = v364;
  v27 = v359;
LABEL_43:
  v356 = v31;
  if (!v30)
  {
    v31 = 0;
  }

  v354 = v31;
  if (v9 <= &v29[-v11])
  {
    v359 = v27;
    v364 = v20;
    v316 = v13;
    v211 = 0;
    v317 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v317 && v9)
    {
      (*(*v317 + 16))(v317);
      v11 = *v2;
      v211 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v316;
    goto LABEL_390;
  }

  v32 = v29 + 1;
  *(v2 + 2) = v29 + 1;
  if (!v29)
  {
    v359 = v27;
    v364 = v20;
    v211 = v9;
    goto LABEL_390;
  }

  v33 = *v29;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_49;
  }

  v359 = v27;
  v364 = v20;
LABEL_392:
  *v2 = 0;
  *(v2 + 1) = 0;
  v213 = *(v2 + 3);
  if (!v213)
  {
    v353 = 0;
    v355 = 0;
    v214 = 0;
    v11 = 0;
    goto LABEL_394;
  }

  v246 = v13;
  if (!v9)
  {
    v353 = 0;
    v355 = 0;
    v214 = 0;
    v11 = 0;
LABEL_394:
    *v2 = 0;
    *(v2 + 1) = 0;
    v215 = *(v2 + 3);
    if (v215)
    {
      v249 = v13;
      if (v214)
      {
        (*(*v215 + 16))(v215, v11, v214);
        v37 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v37 = 0;
      }

      v13 = v249;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v37 = 0;
    }

    goto LABEL_396;
  }

  (*(*v213 + 16))(v213, v11);
  v34 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v32 = *(v2 + 2);
  v13 = v246;
  v20 = v364;
  v27 = v359;
LABEL_49:
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v353 = v35;
  if (v9 <= &v32[-v11])
  {
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v318 = v13;
    v214 = 0;
    v319 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v319 && v9)
    {
      (*(*v319 + 16))(v319);
      v11 = *v2;
      v214 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v318;
    goto LABEL_394;
  }

  v36 = v32 + 1;
  *(v2 + 2) = v32 + 1;
  if (!v32)
  {
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v214 = v9;
    goto LABEL_394;
  }

  v37 = *v32;
  if (v37 < 2)
  {
    v38 = 1;
    goto LABEL_56;
  }

  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_396:
  *v2 = 0;
  *(v2 + 1) = 0;
  v216 = *(v2 + 3);
  if (!v216)
  {
    v350 = 0;
    v352 = 0;
    v217 = 0;
    v11 = 0;
    goto LABEL_398;
  }

  v248 = v13;
  if (!v9)
  {
    v350 = 0;
    v352 = 0;
    v217 = 0;
    v11 = 0;
LABEL_398:
    *v2 = 0;
    *(v2 + 1) = 0;
    v218 = *(v2 + 3);
    if (v218)
    {
      v251 = v13;
      if (v217)
      {
        (*(*v218 + 16))(v218, v11, v217);
        v40 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v40 = 0;
      }

      v13 = v251;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v40 = 0;
    }

    goto LABEL_400;
  }

  (*(*v216 + 16))(v216, v11);
  v38 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v36 = *(v2 + 2);
  v13 = v248;
  v20 = v364;
  v27 = v359;
  v34 = v355;
LABEL_56:
  v352 = v38;
  if (!v37)
  {
    v38 = 0;
  }

  v350 = v38;
  if (v9 <= &v36[-v11])
  {
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v296 = v13;
    v217 = 0;
    v297 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v297 && v9)
    {
      (*(*v297 + 16))(v297);
      v11 = *v2;
      v217 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v296;
    goto LABEL_398;
  }

  v39 = v36 + 1;
  *(v2 + 2) = v36 + 1;
  if (!v36)
  {
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v217 = v9;
    goto LABEL_398;
  }

  v40 = *v36;
  if (v40 < 2)
  {
    v41 = 1;
    goto LABEL_62;
  }

  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_400:
  *v2 = 0;
  *(v2 + 1) = 0;
  v219 = *(v2 + 3);
  if (!v219)
  {
    v349 = 0;
    v351 = 0;
    v220 = 0;
    v11 = 0;
    goto LABEL_402;
  }

  v250 = v13;
  if (!v9)
  {
    v349 = 0;
    v351 = 0;
    v220 = 0;
    v11 = 0;
LABEL_402:
    *v2 = 0;
    *(v2 + 1) = 0;
    v221 = *(v2 + 3);
    if (v221)
    {
      v253 = v13;
      if (v220)
      {
        (*(*v221 + 16))(v221, v11, v220);
        v44 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v44 = 0;
      }

      v13 = v253;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v44 = 0;
    }

    goto LABEL_404;
  }

  (*(*v219 + 16))(v219, v11);
  v41 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v39 = *(v2 + 2);
  v13 = v250;
  v20 = v364;
  v27 = v359;
  v34 = v355;
LABEL_62:
  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v349 = v42;
  if (v9 <= &v39[-v11])
  {
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v298 = v13;
    v220 = 0;
    v299 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v299 && v9)
    {
      (*(*v299 + 16))(v299);
      v11 = *v2;
      v220 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v298;
    goto LABEL_402;
  }

  v43 = v39 + 1;
  *(v2 + 2) = v39 + 1;
  if (!v39)
  {
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v220 = v9;
    goto LABEL_402;
  }

  v44 = *v39;
  if (v44 < 2)
  {
    v45 = 1;
    goto LABEL_69;
  }

  v351 = v41;
  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_404:
  *v2 = 0;
  *(v2 + 1) = 0;
  v222 = *(v2 + 3);
  if (!v222)
  {
    v346 = 0;
    v348 = 0;
    v223 = 0;
    v11 = 0;
    goto LABEL_406;
  }

  v252 = v13;
  if (!v9)
  {
    v346 = 0;
    v348 = 0;
    v223 = 0;
    v11 = 0;
LABEL_406:
    *v2 = 0;
    *(v2 + 1) = 0;
    v224 = *(v2 + 3);
    if (v224)
    {
      v255 = v13;
      if (v223)
      {
        (*(*v224 + 16))(v224, v11, v223);
        v47 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v47 = 0;
      }

      v13 = v255;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v47 = 0;
    }

    goto LABEL_408;
  }

  (*(*v222 + 16))(v222, v11);
  v45 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v43 = *(v2 + 2);
  v13 = v252;
  v20 = v364;
  v27 = v359;
  v34 = v355;
  v41 = v351;
LABEL_69:
  v348 = v45;
  if (!v44)
  {
    v45 = 0;
  }

  v346 = v45;
  if (v9 <= &v43[-v11])
  {
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v300 = v13;
    v223 = 0;
    v301 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v301 && v9)
    {
      (*(*v301 + 16))(v301);
      v11 = *v2;
      v223 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v300;
    goto LABEL_406;
  }

  v46 = v43 + 1;
  *(v2 + 2) = v43 + 1;
  if (!v43)
  {
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v223 = v9;
    goto LABEL_406;
  }

  v47 = *v43;
  if (v47 < 2)
  {
    v48 = 1;
    goto LABEL_75;
  }

  v351 = v41;
  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_408:
  *v2 = 0;
  *(v2 + 1) = 0;
  v225 = *(v2 + 3);
  if (!v225)
  {
    v345 = 0;
    v347 = 0;
    v226 = 0;
    v11 = 0;
    goto LABEL_410;
  }

  v254 = v13;
  if (!v9)
  {
    v345 = 0;
    v347 = 0;
    v226 = 0;
    v11 = 0;
LABEL_410:
    *v2 = 0;
    *(v2 + 1) = 0;
    v227 = *(v2 + 3);
    if (v227)
    {
      v257 = v13;
      if (v226)
      {
        (*(*v227 + 16))(v227, v11, v226);
        v51 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v51 = 0;
      }

      v13 = v257;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v51 = 0;
    }

    goto LABEL_412;
  }

  (*(*v225 + 16))(v225, v11);
  v48 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v46 = *(v2 + 2);
  v13 = v254;
  v20 = v364;
  v27 = v359;
  v34 = v355;
  v41 = v351;
LABEL_75:
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v345 = v49;
  if (v9 <= &v46[-v11])
  {
    v347 = v48;
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v302 = v13;
    v226 = 0;
    v303 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v303 && v9)
    {
      (*(*v303 + 16))(v303);
      v11 = *v2;
      v226 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v302;
    goto LABEL_410;
  }

  v50 = v46 + 1;
  *(v2 + 2) = v46 + 1;
  if (!v46)
  {
    v347 = v48;
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v226 = v9;
    goto LABEL_410;
  }

  v51 = *v46;
  if (v51 < 2)
  {
    v52 = 1;
    goto LABEL_82;
  }

  v347 = v48;
  v351 = v41;
  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_412:
  *v2 = 0;
  *(v2 + 1) = 0;
  v228 = *(v2 + 3);
  if (!v228)
  {
    v343 = 0;
    v344 = 0;
    v229 = 0;
    v11 = 0;
    goto LABEL_414;
  }

  v256 = v13;
  if (!v9)
  {
    v343 = 0;
    v344 = 0;
    v229 = 0;
    v11 = 0;
LABEL_414:
    *v2 = 0;
    *(v2 + 1) = 0;
    v230 = *(v2 + 3);
    if (v230)
    {
      v259 = v13;
      if (v229)
      {
        (*(*v230 + 16))(v230, v11, v229);
        v54 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v54 = 0;
      }

      v13 = v259;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v54 = 0;
    }

    goto LABEL_416;
  }

  (*(*v228 + 16))(v228, v11);
  v52 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v50 = *(v2 + 2);
  v13 = v256;
  v20 = v364;
  v27 = v359;
  v34 = v355;
  v41 = v351;
  v48 = v347;
LABEL_82:
  v344 = v52;
  if (!v51)
  {
    v52 = 0;
  }

  v343 = v52;
  if (v9 <= &v50[-v11])
  {
    v347 = v48;
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v304 = v13;
    v229 = 0;
    v305 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v305 && v9)
    {
      (*(*v305 + 16))(v305);
      v11 = *v2;
      v229 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v304;
    goto LABEL_414;
  }

  v53 = v50 + 1;
  *(v2 + 2) = v50 + 1;
  if (!v50)
  {
    v347 = v48;
    v351 = v41;
    v355 = v34;
    v359 = v27;
    v364 = v20;
    v229 = v9;
    goto LABEL_414;
  }

  v54 = *v50;
  if (v54 < 2)
  {
    v55 = 1;
    goto LABEL_88;
  }

  v347 = v48;
  v351 = v41;
  v355 = v34;
  v359 = v27;
  v364 = v20;
LABEL_416:
  *v2 = 0;
  *(v2 + 1) = 0;
  v231 = *(v2 + 3);
  if (!v231)
  {
    v341 = 0;
    v342 = 0;
    v232 = 0;
    v11 = 0;
    goto LABEL_418;
  }

  v258 = v13;
  if (!v9)
  {
    v341 = 0;
    v342 = 0;
    v232 = 0;
    v11 = 0;
LABEL_418:
    *v2 = 0;
    *(v2 + 1) = 0;
    v233 = *(v2 + 3);
    if (v233)
    {
      v260 = v13;
      if (v232)
      {
        (*(*v233 + 16))(v233, v11, v232);
        v57 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v9 = 0;
        v11 = 0;
        v57 = 0;
      }

      v13 = v260;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v57 = 0;
    }

    goto LABEL_420;
  }

  (*(*v231 + 16))(v231, v11);
  v55 = 0;
  v11 = *v2;
  v9 = *(v2 + 1);
  v53 = *(v2 + 2);
  v13 = v258;
  v20 = v364;
  v27 = v359;
  v34 = v355;
  v41 = v351;
  v48 = v347;
LABEL_88:
  if (v54)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v364 = v20;
  v359 = v27;
  v355 = v34;
  v351 = v41;
  v347 = v48;
  v341 = v56;
  v342 = v55;
  if (v9 <= &v53[-v11])
  {
    v306 = v13;
    v232 = 0;
    v307 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v307 && v9)
    {
      (*(*v307 + 16))(v307);
      v11 = *v2;
      v232 = *(v2 + 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v306;
    goto LABEL_418;
  }

  *(v2 + 2) = v53 + 1;
  if (!v53)
  {
    v232 = v9;
    goto LABEL_418;
  }

  v57 = *v53;
  if (v57 < 2)
  {
    v367 = v13;
    v58 = 1;
    goto LABEL_95;
  }

LABEL_420:
  *v2 = 0;
  *(v2 + 1) = 0;
  v234 = *(v2 + 3);
  v367 = v13;
  if (v234 && v9)
  {
    (*(*v234 + 16))(v234, v11);
  }

  v58 = 0;
LABEL_95:
  v340 = v58;
  if (!v57)
  {
    v58 = 0;
  }

  v339 = v58;
  IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(&v404, v2);
  v59 = *(v2 + 1);
  v60 = *(v2 + 2);
  v61 = *v2;
  if (v59 <= &v60[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v261 = *(v2 + 3);
    if (v261)
    {
      if (v59)
      {
        (*(*v261 + 16))(v261);
        v59 = *(v2 + 1);
      }
    }

    else
    {
      v59 = 0;
    }

LABEL_494:
    *v2 = 0;
    *(v2 + 1) = 0;
    v262 = *(v2 + 3);
    if (v262)
    {
      if (v59)
      {
        (*(*v262 + 16))(v262);
        v63 = 0;
        v61 = *v2;
        v59 = *(v2 + 1);
        goto LABEL_497;
      }
    }

    else
    {
      v59 = 0;
    }

    v61 = 0;
    v63 = 0;
    goto LABEL_497;
  }

  v62 = v60 + 1;
  *(v2 + 2) = v60 + 1;
  if (!v60)
  {
    goto LABEL_494;
  }

  v63 = *v60;
  if (v63 < 2)
  {
    v64 = 1;
    goto LABEL_101;
  }

LABEL_497:
  *v2 = 0;
  *(v2 + 1) = 0;
  v263 = *(v2 + 3);
  if (!v263 || !v59)
  {
    v337 = 0;
    v338 = 0;
    v264 = 0;
    v61 = 0;
LABEL_499:
    *v2 = 0;
    *(v2 + 1) = 0;
    v265 = *(v2 + 3);
    if (v265 && v264)
    {
      (*(*v265 + 16))(v265, v61, v264);
      v66 = 0;
      v61 = *v2;
      v59 = *(v2 + 1);
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v66 = 0;
    }

    goto LABEL_501;
  }

  (*(*v263 + 16))(v263, v61);
  v64 = 0;
  v61 = *v2;
  v59 = *(v2 + 1);
  v62 = *(v2 + 2);
LABEL_101:
  v338 = v64;
  if (!v63)
  {
    v64 = 0;
  }

  v337 = v64;
  if (v59 <= &v62[-v61])
  {
    v264 = 0;
    v291 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v291 && v59)
    {
      (*(*v291 + 16))(v291);
      v61 = *v2;
      v264 = *(v2 + 1);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_499;
  }

  v65 = v62 + 1;
  *(v2 + 2) = v62 + 1;
  if (!v62)
  {
    v264 = v59;
    goto LABEL_499;
  }

  v66 = *v62;
  if (v66 < 2)
  {
    v67 = 1;
    goto LABEL_107;
  }

LABEL_501:
  *v2 = 0;
  *(v2 + 1) = 0;
  v266 = *(v2 + 3);
  if (!v266 || !v59)
  {
    v335 = 0;
    v336 = 0;
    v267 = 0;
    v61 = 0;
LABEL_503:
    *v2 = 0;
    *(v2 + 1) = 0;
    v268 = *(v2 + 3);
    if (v268 && v267)
    {
      (*(*v268 + 16))(v268, v61, v267);
      v69 = 0;
      v61 = *v2;
      v59 = *(v2 + 1);
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v69 = 0;
    }

    goto LABEL_505;
  }

  (*(*v266 + 16))(v266, v61);
  v67 = 0;
  v61 = *v2;
  v59 = *(v2 + 1);
  v65 = *(v2 + 2);
LABEL_107:
  v336 = v67;
  if (!v66)
  {
    v67 = 0;
  }

  v335 = v67;
  if (v59 <= &v65[-v61])
  {
    v267 = 0;
    v292 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v292 && v59)
    {
      (*(*v292 + 16))(v292);
      v61 = *v2;
      v267 = *(v2 + 1);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_503;
  }

  v68 = v65 + 1;
  *(v2 + 2) = v65 + 1;
  if (!v65)
  {
    v267 = v59;
    goto LABEL_503;
  }

  v69 = *v65;
  if (v69 < 2)
  {
    v70 = 1;
    goto LABEL_113;
  }

LABEL_505:
  *v2 = 0;
  *(v2 + 1) = 0;
  v269 = *(v2 + 3);
  if (!v269 || !v59)
  {
    v333 = 0;
    v334 = 0;
    v270 = 0;
    v61 = 0;
LABEL_507:
    *v2 = 0;
    *(v2 + 1) = 0;
    v271 = *(v2 + 3);
    if (v271 && v270)
    {
      (*(*v271 + 16))(v271, v61, v270);
      v72 = 0;
      v61 = *v2;
      v59 = *(v2 + 1);
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v72 = 0;
    }

    goto LABEL_509;
  }

  (*(*v269 + 16))(v269, v61);
  v70 = 0;
  v61 = *v2;
  v59 = *(v2 + 1);
  v68 = *(v2 + 2);
LABEL_113:
  v334 = v70;
  if (!v69)
  {
    v70 = 0;
  }

  v333 = v70;
  if (v59 <= &v68[-v61])
  {
    v270 = 0;
    v293 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v293 && v59)
    {
      (*(*v293 + 16))(v293);
      v61 = *v2;
      v270 = *(v2 + 1);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_507;
  }

  v71 = v68 + 1;
  *(v2 + 2) = v68 + 1;
  if (!v68)
  {
    v270 = v59;
    goto LABEL_507;
  }

  v72 = *v68;
  if (v72 < 2)
  {
    v73 = 1;
    goto LABEL_119;
  }

LABEL_509:
  *v2 = 0;
  *(v2 + 1) = 0;
  v272 = *(v2 + 3);
  if (!v272 || !v59)
  {
    v331 = 0;
    v332 = 0;
    v273 = 0;
    v61 = 0;
LABEL_511:
    *v2 = 0;
    *(v2 + 1) = 0;
    v274 = *(v2 + 3);
    if (v274 && v273)
    {
      (*(*v274 + 16))(v274, v61, v273);
      v75 = 0;
      v61 = *v2;
      v59 = *(v2 + 1);
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v75 = 0;
    }

    goto LABEL_513;
  }

  (*(*v272 + 16))(v272, v61);
  v73 = 0;
  v61 = *v2;
  v59 = *(v2 + 1);
  v71 = *(v2 + 2);
LABEL_119:
  v332 = v73;
  if (!v72)
  {
    v73 = 0;
  }

  v331 = v73;
  if (v59 <= &v71[-v61])
  {
    v273 = 0;
    v294 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v294 && v59)
    {
      (*(*v294 + 16))(v294);
      v61 = *v2;
      v273 = *(v2 + 1);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_511;
  }

  v74 = v71 + 1;
  *(v2 + 2) = v71 + 1;
  if (!v71)
  {
    v273 = v59;
    goto LABEL_511;
  }

  v75 = *v71;
  if (v75 < 2)
  {
    v76 = 1;
    goto LABEL_125;
  }

LABEL_513:
  *v2 = 0;
  *(v2 + 1) = 0;
  v275 = *(v2 + 3);
  if (!v275 || !v59)
  {
    v329 = 0;
    v330 = 0;
    v276 = 0;
    v61 = 0;
LABEL_515:
    *v2 = 0;
    *(v2 + 1) = 0;
    v277 = *(v2 + 3);
    if (v277 && v276)
    {
      (*(*v277 + 16))(v277, v61, v276);
      v78 = 0;
      v61 = *v2;
      v59 = *(v2 + 1);
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v78 = 0;
    }

    goto LABEL_517;
  }

  (*(*v275 + 16))(v275, v61);
  v76 = 0;
  v61 = *v2;
  v59 = *(v2 + 1);
  v74 = *(v2 + 2);
LABEL_125:
  if (v75)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v329 = v77;
  v330 = v76;
  if (v59 <= &v74[-v61])
  {
    v276 = 0;
    v295 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v295 && v59)
    {
      (*(*v295 + 16))(v295);
      v61 = *v2;
      v276 = *(v2 + 1);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_515;
  }

  *(v2 + 2) = v74 + 1;
  if (!v74)
  {
    v276 = v59;
    goto LABEL_515;
  }

  v78 = *v74;
  if (v78 < 2)
  {
    v79 = 1;
    goto LABEL_132;
  }

LABEL_517:
  *v2 = 0;
  *(v2 + 1) = 0;
  v278 = *(v2 + 3);
  if (v278 && v59)
  {
    (*(*v278 + 16))(v278, v61);
  }

  v79 = 0;
LABEL_132:
  v328 = v79;
  if (!v78)
  {
    v79 = 0;
  }

  v327 = v79;
  v325 = IPC::Decoder::decode<WebCore::FloatPoint>(v2);
  v326 = v80;
  IPC::Decoder::decode<WTF::URL>(v2, &v400);
  IPC::Decoder::decode<WTF::URL>(v2, &v396);
  IPC::Decoder::decode<WTF::String>(v2, &v394);
  IPC::Decoder::decode<WTF::String>(v2, &v392);
  IPC::Decoder::decode<WTF::String>(v2, &v390);
  IPC::Decoder::decode<WebCore::IntRect>(v2, &v388);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(v2, &v386);
  IPC::Decoder::decode<WTF::String>(v2, &v384);
  IPC::Decoder::decode<WTF::String>(v2, &v382);
  v81 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v2);
  v83 = v82;
  if ((v82 & 1) == 0)
  {
    v187 = *v2;
    v188 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v189 = *(v2 + 3);
    if (v189)
    {
      if (v188)
      {
        (*(*v189 + 16))(v189, v187);
      }
    }
  }

  v324 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v2);
  v85 = v84;
  if ((v84 & 1) == 0)
  {
    v182 = *v2;
    v183 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v184 = *(v2 + 3);
    if (v184)
    {
      if (v183)
      {
        (*(*v184 + 16))(v184, v182);
      }
    }
  }

  v86 = *v2;
  if (*v2)
  {
    if ((v83 & 1) == 0 || (v85 & 1) == 0)
    {
      goto LABEL_326;
    }

    v87 = v81 >> 8;
    v88 = *v2;
    v323 = v81;
  }

  else
  {
    v180 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v181 = *(v2 + 3);
    if (v181 && v180)
    {
      (*(*v181 + 16))(v181, 0);
      v323 = 0;
      v87 = 0;
      v88 = *v2;
    }

    else
    {
      v88 = 0;
      v323 = 0;
      v87 = 0;
    }
  }

  v322 = v87;
  v89 = *(v2 + 1);
  v90 = *(v2 + 2);
  v365 = v7;
  v362 = v8;
  if (v89 <= &v90[-v88])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v279 = *(v2 + 3);
    if (v279)
    {
      if (v89)
      {
        (*(*v279 + 16))(v279);
        v88 = *v2;
        v89 = *(v2 + 1);
        goto LABEL_522;
      }
    }

    else
    {
      v89 = 0;
    }

    v88 = 0;
LABEL_522:
    *v2 = 0;
    *(v2 + 1) = 0;
    v280 = *(v2 + 3);
    if (v280)
    {
      if (v89)
      {
        (*(*v280 + 16))(v280, v88);
        v88 = *v2;
        v89 = *(v2 + 1);
        goto LABEL_525;
      }
    }

    else
    {
      v89 = 0;
    }

    v88 = 0;
LABEL_525:
    *v2 = 0;
    *(v2 + 1) = 0;
    v281 = *(v2 + 3);
    if (v281 && v89)
    {
      (*(*v281 + 16))(v281, v88);
    }

    goto LABEL_221;
  }

  *(v2 + 2) = v90 + 1;
  if (!v90)
  {
    goto LABEL_522;
  }

  v91 = *v90;
  if (v91 >= 2)
  {
    goto LABEL_525;
  }

  if (!v91)
  {
    v8 = 0;
    v371 = 0;
    v92 = 1;
    goto LABEL_147;
  }

  IPC::ArgumentCoder<WebCore::Cursor,void>::decode(v2, &v410);
  if (v412[0] & 1) != 0 || (v143 = *v2, v144 = *(v2 + 1), *v2 = 0, *(v2 + 1) = 0, (v145 = *(v2 + 3)) != 0) && v144 && ((*(*v145 + 16))(v145, v143), (v412[0]))
  {
    v371 = v410;
    v372 = *(&v410 + 1);
    v455 = v411;
    v8 = 1;
    v92 = 1;
    goto LABEL_147;
  }

LABEL_221:
  v146 = *v2;
  v147 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  v148 = *(v2 + 3);
  if (v148 && v147)
  {
    (*(*v148 + 16))(v148, v146);
  }

  v92 = 0;
  v371 = 0;
LABEL_147:
  v93 = *(v2 + 1);
  v94 = *(v2 + 2);
  v95 = *v2;
  if (v93 <= &v94[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v282 = *(v2 + 3);
    if (v282)
    {
      if (v93)
      {
        (*(*v282 + 16))(v282);
        v93 = *(v2 + 1);
      }
    }

    else
    {
      v93 = 0;
    }

LABEL_530:
    *v2 = 0;
    *(v2 + 1) = 0;
    v283 = *(v2 + 3);
    if (v283)
    {
      if (v93)
      {
        (*(*v283 + 16))(v283);
        v97 = 0;
        v95 = *v2;
        v93 = *(v2 + 1);
        goto LABEL_533;
      }
    }

    else
    {
      v93 = 0;
    }

    v95 = 0;
    v97 = 0;
    goto LABEL_533;
  }

  v96 = v94 + 1;
  *(v2 + 2) = v94 + 1;
  if (!v94)
  {
    goto LABEL_530;
  }

  v97 = *v94;
  if (v97 < 2)
  {
    v98 = 1;
    goto LABEL_151;
  }

LABEL_533:
  *v2 = 0;
  *(v2 + 1) = 0;
  v284 = *(v2 + 3);
  if (!v284 || !v93)
  {
    v99 = 0;
    LOBYTE(v98) = 0;
    v285 = 0;
    v95 = 0;
LABEL_535:
    *v2 = 0;
    *(v2 + 1) = 0;
    v286 = *(v2 + 3);
    if (v286 && v285)
    {
      (*(*v286 + 16))(v286, v95, v285);
      v100 = 0;
      v95 = *v2;
      v93 = *(v2 + 1);
    }

    else
    {
      v93 = 0;
      v95 = 0;
      v100 = 0;
    }

LABEL_537:
    *v2 = 0;
    *(v2 + 1) = 0;
    v287 = *(v2 + 3);
    if (v287)
    {
      if (v93)
      {
        (*(*v287 + 16))(v287, v95);
        v101 = 0;
        if (*v2)
        {
          goto LABEL_158;
        }
      }
    }

LABEL_538:
    if ((v92 & 1) == 0 || (v102 = v372, (v8 & (v372 != 0)) == 0))
    {
      v323 = 0;
      goto LABEL_543;
    }

    if (v372[4] != 1)
    {
      v323 = 0;
      --v372[4];
      goto LABEL_543;
    }

    v138 = 0;
    v323 = 0;
LABEL_212:
    (*(*v102 + 8))(v102);
    if (v138)
    {
      goto LABEL_169;
    }

LABEL_543:
    v288 = *v2;
    v289 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v290 = *(v2 + 3);
    if (v290 && v289)
    {
      (*(*v290 + 16))(v290, v288);
    }

    v103 = 0;
    goto LABEL_170;
  }

  (*(*v284 + 16))(v284, v95);
  v98 = 0;
  v95 = *v2;
  v93 = *(v2 + 1);
  v96 = *(v2 + 2);
LABEL_151:
  if (v97)
  {
    v99 = v98;
  }

  else
  {
    v99 = 0;
  }

  if (v93 <= &v96[-v95])
  {
    v285 = 0;
    v320 = *(v2 + 3);
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v93 && v320)
    {
      (*(*v320 + 16))(v320);
      v95 = *v2;
      v285 = *(v2 + 1);
    }

    else
    {
      v95 = 0;
    }

    goto LABEL_535;
  }

  *(v2 + 2) = v96 + 1;
  if (!v96)
  {
    v285 = v93;
    goto LABEL_535;
  }

  v100 = *v96;
  if (v100 >= 2)
  {
    goto LABEL_537;
  }

  v101 = 1;
  if (!v95)
  {
    goto LABEL_538;
  }

LABEL_158:
  if (!v86 || (v92 & 1) == 0)
  {
    goto LABEL_326;
  }

  if (v8)
  {
    v102 = 0;
    v410 = v455;
  }

  else
  {
    v371 = 0;
    v102 = v372;
  }

  if ((v98 & 1) == 0 || (v101 & 1) == 0)
  {
    goto LABEL_326;
  }

  v92 = v99 | ((v100 != 0) << 8);
  if (v8)
  {
    v381 = v410;
    if (v102)
    {
      if (v102[4] != 1)
      {
        --v102[4];
LABEL_169:
        v103 = 1;
LABEL_170:
        v8 = 1;
        goto LABEL_173;
      }

      v138 = 1;
      goto LABEL_212;
    }
  }

  else
  {
    v371 = 0;
  }

  v103 = 1;
LABEL_173:
  v369 = v103;
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>(v2, &v379);
  IPC::Decoder::decode<WTF::String>(v2, &v377);
  v104 = objc_opt_class();
  *&v410 = v104;
  if (v104)
  {
    v104 = v104;
  }

  v105 = MEMORY[0x1E69E22C0];
  v106 = (*MEMORY[0x1E69E22C0])(v104);
  *(&v410 + 1) = v106;
  if (v106)
  {
    v107 = v106;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v455, &v410, 2);
  IPC::decodeRequiringAllowedClasses<NSArray,NSArray*>(&v375, v2);
  if (v455)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v455, v108);
  }

  for (i = 8; i != -8; i -= 8)
  {
    v110 = *(&v410 + i);
    *(&v410 + i) = 0;
    if (v110)
    {
    }
  }

  if (*v2)
  {
    if ((v376 & 1) == 0)
    {
      goto LABEL_326;
    }

    v321 = v92;
    v111 = v375;
    if (v375)
    {
      v457 = 0u;
      v458 = 0u;
      v455 = 0u;
      v456 = 0u;
      v112 = [v375 countByEnumeratingWithState:&v455 objects:&v410 count:16];
      if (v112)
      {
        v113 = *v456;
        while (2)
        {
          for (j = 0; j != v112; ++j)
          {
            if (*v456 != v113)
            {
              objc_enumerationMutation(v111);
            }

            (*v105)();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *a2 = 0;
              *(a2 + 528) = 0;
              v2 = v372;
              v103 = v369;
              goto LABEL_280;
            }
          }

          v112 = [v111 countByEnumeratingWithState:&v455 objects:&v410 count:16];
          if (v112)
          {
            continue;
          }

          break;
        }
      }
    }

    IPC::Decoder::decode<WebCore::IntRect>(v2, &v373);
    IPC::Decoder::decode<std::optional<WebCore::ElementContext>>(&v455, v2);
    IPC::Decoder::decode<std::optional<WebCore::ElementContext>>(v452, v2);
    v116 = *(v2 + 1);
    v117 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v108 = *v2;
    v118 = v117 - *v2;
    v119 = v116 >= v118;
    v120 = v116 - v118;
    if (v119 && v120 > 7)
    {
      *(v2 + 2) = v117 + 1;
      if (v117)
      {
        v121 = *v117;
        v408 = 0;
        v409 = 0;
        if (v121 >= 0x2AAA)
        {
          while (1)
          {
            IPC::Decoder::decode<WebCore::ElementAnimationContext>(&v410, v2);
            LODWORD(v117) = v415;
            if ((v415 & 1) == 0)
            {
              break;
            }

            v149 = HIDWORD(v409);
            if (HIDWORD(v409) == v409)
            {
              v150 = WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v408, HIDWORD(v409) + 1, &v410);
              v149 = HIDWORD(v409);
              v151 = (v408 + 96 * HIDWORD(v409));
              v152 = *v150;
              v151[1] = v150[1];
              v153 = v150[5];
              v155 = v150[2];
              v154 = v150[3];
              v151[4] = v150[4];
            }

            else
            {
              v151 = (v408 + 96 * HIDWORD(v409));
              v152 = v410;
              v151[1] = v411;
              v153 = v414;
              v155 = *v412;
              v154 = *&v412[16];
              v151[4] = v413;
            }

            v151[5] = v153;
            v151[2] = v155;
            v151[3] = v154;
            *v151 = v152;
            HIDWORD(v409) = v149 + 1;
            if (!--v121)
            {
              WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v408, (v149 + 1));
              v126 = v408;
              LODWORD(v117) = HIDWORD(v409);
              goto LABEL_209;
            }
          }

          v103 = v369;
        }

        else
        {
          if (!v121)
          {
            LODWORD(v117) = 0;
            v126 = 0;
LABEL_209:
            v103 = v369;
LABEL_210:
            v115 = v409;
            v137 = 1;
LABEL_234:
            if (!*v2)
            {
              *a2 = 0;
              *(a2 + 528) = 0;
              if (v126)
              {
                v179 = v137;
              }

              else
              {
                v179 = 0;
              }

              if (v179)
              {
                WTF::fastFree(v126, v108);
              }

              goto LABEL_279;
            }

            v2 = a2;
            if (v407)
            {
              *&v410 = v406[0];
              *(&v410 + 7) = *(v406 + 7);
              if (v365)
              {
                LOBYTE(v411) = v362;
                if ((v368 & 0x10000) != 0)
                {
                  *(&v411 + 1) = v368;
                  if (v367 > 0xFF)
                  {
                    BYTE3(v411) = v367;
                    if (v366)
                    {
                      BYTE4(v411) = v363;
                      if (v364)
                      {
                        BYTE5(v411) = v361;
                        if (v360)
                        {
                          BYTE6(v411) = v358;
                          if (v359)
                          {
                            BYTE7(v411) = v357;
                            if (v356)
                            {
                              BYTE8(v411) = v354;
                              if (v355)
                              {
                                BYTE9(v411) = v353;
                                if (v352)
                                {
                                  BYTE10(v411) = v350;
                                  if (v351)
                                  {
                                    BYTE11(v411) = v349;
                                    if (v348)
                                    {
                                      BYTE12(v411) = v346;
                                      if (v347)
                                      {
                                        BYTE13(v411) = v345;
                                        if (v344)
                                        {
                                          BYTE14(v411) = v343;
                                          if (v342)
                                          {
                                            HIBYTE(v411) = v341;
                                            if (v340)
                                            {
                                              v412[0] = v339;
                                              if (v405)
                                              {
                                                *&v412[8] = v404;
                                                if (v338)
                                                {
                                                  v412[24] = v337;
                                                  if (v336)
                                                  {
                                                    v412[25] = v335;
                                                    if (v334)
                                                    {
                                                      v412[26] = v333;
                                                      if (v332)
                                                      {
                                                        v412[27] = v331;
                                                        if (v330)
                                                        {
                                                          v412[28] = v329;
                                                          if (v328)
                                                          {
                                                            v412[29] = v327;
                                                            if (v326)
                                                            {
                                                              *&v413 = v325;
                                                              if (v403)
                                                              {
                                                                v158 = v400;
                                                                v400 = 0;
                                                                *(&v413 + 1) = v158;
                                                                v414 = v401;
                                                                v415 = v402;
                                                                LODWORD(v401) = v401 & 0xFFFFFFFE;
                                                                if (v399)
                                                                {
                                                                  v159 = v396;
                                                                  v396 = 0;
                                                                  v416 = v159;
                                                                  v417 = v397;
                                                                  v418 = v398;
                                                                  LODWORD(v397) = v397 & 0xFFFFFFFE;
                                                                  if (v395)
                                                                  {
                                                                    v160 = v394;
                                                                    v394 = 0;
                                                                    v419 = v160;
                                                                    if (v393)
                                                                    {
                                                                      v161 = v392;
                                                                      v392 = 0;
                                                                      v420 = v161;
                                                                      if (v391)
                                                                      {
                                                                        v162 = v390;
                                                                        v390 = 0;
                                                                        v421 = v162;
                                                                        if (v389)
                                                                        {
                                                                          v422 = v388;
                                                                          if (v387)
                                                                          {
                                                                            v163 = v386;
                                                                            v386 = 0;
                                                                            v423 = v163;
                                                                            if (v385)
                                                                            {
                                                                              v164 = v384;
                                                                              v384 = 0;
                                                                              v424 = v164;
                                                                              if (v383)
                                                                              {
                                                                                v165 = v382;
                                                                                v382 = 0;
                                                                                v425 = v165;
                                                                                if (v103)
                                                                                {
                                                                                  v426 = v323 | (v322 << 8);
                                                                                  v427 = v324;
                                                                                  v428 = 0;
                                                                                  v431 = 0;
                                                                                  if (v8)
                                                                                  {
                                                                                    v428 = v371;
                                                                                    v429 = v372;
                                                                                    v430 = v381;
                                                                                    v431 = 1;
                                                                                    v372 = 0;
                                                                                  }

                                                                                  v432 = v321;
                                                                                  if (v380)
                                                                                  {
                                                                                    v166 = v379;
                                                                                    v379 = 0;
                                                                                    v433 = v166;
                                                                                    if (v378)
                                                                                    {
                                                                                      v167 = v377;
                                                                                      v377 = 0;
                                                                                      v375 = 0;
                                                                                      v434 = v167;
                                                                                      v435 = v111;
                                                                                      if (v374)
                                                                                      {
                                                                                        v436 = v373;
                                                                                        if (v461)
                                                                                        {
                                                                                          v439 = v457;
                                                                                          v440 = v458;
                                                                                          v441 = v459;
                                                                                          v442 = v460;
                                                                                          v437 = v455;
                                                                                          v438 = v456;
                                                                                          if (v454)
                                                                                          {
                                                                                            v445 = v452[2];
                                                                                            v446 = v452[3];
                                                                                            v447 = v452[4];
                                                                                            v448 = v453;
                                                                                            v443 = v452[0];
                                                                                            v444 = v452[1];
                                                                                            if (v137)
                                                                                            {
                                                                                              v449 = v126;
                                                                                              v450 = v115;
                                                                                              v451 = v117;
                                                                                              WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(a2, &v410);
                                                                                              *(a2 + 528) = 1;
                                                                                              WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&v410, v168);
                                                                                              goto LABEL_279;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v122 = WTF::fastMalloc((96 * v121));
          LODWORD(v409) = 96 * v121 / 0x60u;
          v408 = v122;
          v103 = v369;
          while (1)
          {
            IPC::Decoder::decode<WebCore::ElementAnimationContext>(&v410, v2);
            LODWORD(v117) = v415;
            if ((v415 & 1) == 0)
            {
              break;
            }

            v123 = HIDWORD(v409);
            if (HIDWORD(v409) == v409)
            {
              v124 = WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v408, HIDWORD(v409) + 1, &v410);
              v125 = HIDWORD(v409);
              v126 = v408;
              v127 = (v408 + 96 * HIDWORD(v409));
              v128 = *v124;
              v127[1] = v124[1];
              v129 = v124[5];
              v131 = v124[2];
              v130 = v124[3];
              v127[4] = v124[4];
              v127[5] = v129;
              v127[2] = v131;
              v127[3] = v130;
              *v127 = v128;
              v123 = v125;
            }

            else
            {
              v126 = v408;
              v132 = (v408 + 96 * HIDWORD(v409));
              v133 = v410;
              v132[1] = v411;
              v134 = v414;
              v136 = *v412;
              v135 = *&v412[16];
              v132[4] = v413;
              v132[5] = v134;
              v132[2] = v136;
              v132[3] = v135;
              *v132 = v133;
            }

            LODWORD(v117) = v123 + 1;
            HIDWORD(v409) = v117;
            if (!--v121)
            {
              goto LABEL_210;
            }
          }
        }

        v156 = v408;
        if (v408)
        {
          v408 = 0;
          LODWORD(v409) = 0;
          WTF::fastFree(v156, v108);
        }

LABEL_232:
        v108 = *v2;
        v157 = *(v2 + 1);
        *v2 = 0;
        *(v2 + 1) = 0;
        v126 = *(v2 + 3);
        if (v126)
        {
          if (v157)
          {
            (*(*v126 + 16))(v126, v108);
          }

          v137 = 0;
          v126 = 0;
        }

        else
        {
          v137 = 0;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v185 = *(v2 + 3);
      if (v185)
      {
        if (v116)
        {
          (*(*v185 + 16))(v185);
          v116 = *(v2 + 1);
        }
      }

      else
      {
        v116 = 0;
      }
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v186 = *(v2 + 3);
    v103 = v369;
    if (v186 && v116)
    {
      (*(*v186 + 16))(v186);
    }

    goto LABEL_232;
  }

  *a2 = 0;
  *(a2 + 528) = 0;
LABEL_279:
  v2 = v372;
LABEL_280:
  if (v376 == 1 && v375)
  {
  }

  if (v378 == 1)
  {
    v169 = v377;
    v377 = 0;
    if (v169)
    {
      if (atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v169, v108);
      }
    }
  }

  if (v380 == 1)
  {
    v170 = v379;
    v379 = 0;
    if (v170)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(v170);
    }
  }

  if ((v103 & v8) == 1 && v2)
  {
    if (*(v2 + 4) != 1)
    {
      --*(v2 + 4);
      goto LABEL_294;
    }

LABEL_327:
    (*(*v2 + 8))(v2);
  }

LABEL_294:
  if (v383 == 1)
  {
    v171 = v382;
    v382 = 0;
    if (v171)
    {
      if (atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v171, v108);
      }
    }
  }

  if (v385 == 1)
  {
    v172 = v384;
    v384 = 0;
    if (v172)
    {
      if (atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v172, v108);
      }
    }
  }

  if (v387 == 1)
  {
    v173 = v386;
    v386 = 0;
    if (v173)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v173, v108);
    }
  }

  if (v391 == 1)
  {
    v174 = v390;
    v390 = 0;
    if (v174)
    {
      if (atomic_fetch_add_explicit(v174, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v174, v108);
      }
    }
  }

  if (v393 == 1)
  {
    v175 = v392;
    v392 = 0;
    if (v175)
    {
      if (atomic_fetch_add_explicit(v175, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v175, v108);
      }
    }
  }

  if (v395 == 1)
  {
    v176 = v394;
    v394 = 0;
    if (v176)
    {
      if (atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v176, v108);
      }
    }
  }

  if (v399 == 1)
  {
    v177 = v396;
    v396 = 0;
    if (v177)
    {
      if (atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v177, v108);
      }
    }
  }

  if (v403 == 1)
  {
    v178 = v400;
    v400 = 0;
    if (v178)
    {
      if (atomic_fetch_add_explicit(v178, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v178, v108);
      }
    }
  }
}