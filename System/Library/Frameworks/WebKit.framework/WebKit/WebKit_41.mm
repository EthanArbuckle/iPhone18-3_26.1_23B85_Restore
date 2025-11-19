uint64_t IPC::ArgumentCoder<WebCore::DocumentSyncData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 4));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 5));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 6));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(a1, (a2 + 48));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 58));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 59));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DocumentSyncData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_43;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_45;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_48;
  }

  v7 = 0;
LABEL_5:
  v8 = *(a1 + 2);
  v35 = v7;
  if (v4 > v8 - v6)
  {
    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      goto LABEL_54;
    }

    if (*v8 >= 2u)
    {
      goto LABEL_57;
    }

    v9 = 0;
LABEL_9:
    v10 = *(a1 + 2);
    if (v4 > v10 - v6)
    {
      *(a1 + 2) = v10 + 1;
      if (v10)
      {
        if (*v10 < 2u)
        {
          v11 = 0;
          goto LABEL_13;
        }

        goto LABEL_66;
      }

      goto LABEL_63;
    }

    goto LABEL_60;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (!v27)
    {
      v4 = 0;
LABEL_53:
      v6 = 0;
      goto LABEL_54;
    }

    if (!v4)
    {
      goto LABEL_53;
    }

    (*(*v27 + 16))(v27, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_54:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (!v28)
    {
      v4 = 0;
LABEL_56:
      v6 = 0;
      goto LABEL_57;
    }

    if (!v4)
    {
      goto LABEL_56;
    }

    (*(*v28 + 16))(v28, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_57:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
        v9 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v9 = 1;
LABEL_60:
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (!v30)
    {
      v4 = 0;
LABEL_62:
      v6 = 0;
      goto LABEL_63;
    }

    if (!v4)
    {
      goto LABEL_62;
    }

    (*(*v30 + 16))(v30, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_63:
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (!v31)
    {
      v4 = 0;
LABEL_65:
      v6 = 0;
      goto LABEL_66;
    }

    if (!v4)
    {
      goto LABEL_65;
    }

    (*(*v31 + 16))(v31, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_66:
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32 && v4)
    {
      (*(*v32 + 16))(v32, v6);
    }

    v11 = 1;
LABEL_13:
    IPC::Decoder::decode<WTF::URL>(a1, &v38);
    IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v36, a1);
    v12 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>(a1);
    result = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a1);
    v14 = result;
    v4 = *(a1 + 1);
    v15 = *(a1 + 2);
    v16 = *a1;
    if (v4 <= &v15[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v4)
        {
          (*(*v33 + 16))(v33);
          v4 = *(a1 + 1);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        if (*v15 < 2u)
        {
          v17 = 0;
          goto LABEL_17;
        }

        goto LABEL_73;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (!v34)
    {
      v4 = 0;
LABEL_72:
      v16 = 0;
      goto LABEL_73;
    }

    if (!v4)
    {
      goto LABEL_72;
    }

    (*(*v34 + 16))(v34);
    v16 = *a1;
    v4 = *(a1 + 1);
LABEL_73:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v4)
    {
LABEL_74:
      *a2 = 0;
      a2[8] = 0;
      if (v37)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    result = (*(*result + 16))(result, v16);
    v16 = *a1;
    v17 = 1;
LABEL_17:
    if (!v16)
    {
      goto LABEL_74;
    }

    if (!v35 && !v9 && !v11 && (v41 & 1) != 0 && (v37 & 1) != 0 && HIWORD(v12) && v14 > 0xFFu && !v17)
    {
      break;
    }

    __break(1u);
LABEL_43:
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_45:
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (!v25)
    {
      v4 = 0;
LABEL_47:
      v6 = 0;
      goto LABEL_48;
    }

    if (!v4)
    {
      goto LABEL_47;
    }

    (*(*v25 + 16))(v25);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_48:
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26, v6);
        v6 = *a1;
        v4 = *(a1 + 1);
        v7 = 1;
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v35 = 1;
  }

  if (WebCore::DocumentSyncData::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebCore::DocumentSyncData::operator new(unsigned long)::s_heapRef, v16);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v19 = NonCompact;
  v20 = v38;
  v38 = 0;
  v44 = v39;
  v45 = v40;
  LODWORD(v39) = v39 & 0xFFFFFFFE;
  v21 = v36;
  v36 = 0;
  v42 = v21;
  v43 = v20;
  WebCore::DocumentSyncData::DocumentSyncData();
  v22 = v42;
  v42 = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v16);
  }

  v23 = v43;
  v43 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v16);
  }

  *a2 = v19;
  a2[8] = 1;
LABEL_35:
  result = v36;
  if (v36)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v36, v16);
  }

LABEL_37:
  if (v41 == 1)
  {
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

void sub_19D7BD544(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, WTF::StringImpl *a20)
{
  if (a12 == 1 && a11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a11, a2);
  }

  if (a18 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::FrameTreeSyncData,void>::decode@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = *this;
  if (v4 <= &v5[-*this])
  {
    *this = 0;
    *(this + 1) = 0;
    v13 = *(this + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_19:
    *this = 0;
    *(this + 1) = 0;
    v14 = *(this + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v6 = *this;
        v4 = *(this + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_22;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_19;
  }

  if (*v5 < 2u)
  {
    v7 = 0;
    goto LABEL_5;
  }

LABEL_22:
  *this = 0;
  *(this + 1) = 0;
  v15 = *(this + 3);
  if (v15 && v4)
  {
    (*(*v15 + 16))(v15, v6);
  }

  v7 = 1;
LABEL_5:
  result = IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v16, this);
  if (!*this)
  {
    goto LABEL_15;
  }

  if (v7 || (v17 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    *a2 = 0;
    a2[8] = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v10 = WebCore::FrameTreeSyncData::operator new(0x10, v9);
  v11 = v16;
  v16 = 0;
  v18 = v11;
  WebCore::FrameTreeSyncData::FrameTreeSyncData();
  v12 = v18;
  v18 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, v9);
  }

  *a2 = v10;
  a2[8] = 1;
LABEL_11:
  result = v16;
  if (v16)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v16, v9);
  }

  return result;
}

void sub_19D7BD7B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a12, a2);
  }

  bmalloc::api::tzoneFree(v12, a2);
  _Unwind_Resume(a1);
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::ProcessSyncData,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = a2[48];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>> const&>(a1, a2 + 8, v5);
}

void IPC::ArgumentCoder<WebCore::ProcessSyncData,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::TextGranularity>(a1);
  IPC::Decoder::decode<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>>(a1, v8);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v9)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::move_constructor(v7, v8);
      *a2 = v4;
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v7);
      a2[56] = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(v7, v6);
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[56] = 0;
LABEL_5:
  if (v9 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(v8, v5);
  }
}

void sub_19D7BD8F8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(v22 + 8, a2);
  if (a22 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(&a16, v24);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[48] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D7BD998(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 48) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::DOMAudioSessionType,BOOL,BOOL,BOOL,WTF::URL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,WTF::OptionSet<WebCore::DocumentClass>,BOOL,BOOL,WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 4 * *(a1 + 12) <= a3)
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

    WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WebKit::GPUProcessCreationParameters::GPUProcessCreationParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = *(a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 16);
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  v9 = a2[7];
  a2[7] = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = v9;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v12 = a2[8];
    a2[8] = 0;
    *(a1 + 64) = v12;
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, a2 + 20);
  v10 = a2[12];
  a2[12] = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = v10;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
  *(a1 + 120) = *(a2 + 60);
  return a1;
}

void sub_19D7BDBAC(_Unwind_Exception *a1, void *a2)
{
  v9 = *v7;
  if (*v7)
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
  if (*(v2 + 72) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v5);
  }

  v12 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v4);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v3);
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](v5 - 5, v13);
  v15 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  v17 = *v2;
  *v2 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7BDD14(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteMediaPlayerProxyConfiguration::RemoteMediaPlayerProxyConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = a2[4];
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 56), (a2 + 7));
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 80), (a2 + 10));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 104, (a2 + 13));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 128, (a2 + 16));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 152, (a2 + 19));
  v9 = *(a2 + 11);
  *(a1 + 192) = 0;
  *(a1 + 176) = v9;
  *(a1 + 200) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 192, a2 + 48);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 208, a2 + 52);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 224));
  v10 = *(a2 + 16);
  *(a1 + 269) = *(a2 + 269);
  *(a1 + 256) = v10;
  return a1;
}

void sub_19D7BDE74(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v7);
  if (*(v2 + 168) == 1)
  {
    v9 = *(v2 + 152);
    if (v9)
    {
      *(v2 + 152) = 0;
      *(v2 + 160) = 0;
      WTF::fastFree(v9, v8);
    }
  }

  if (*(v2 + 144) == 1)
  {
    v10 = *(v2 + 128);
    if (v10)
    {
      *(v2 + 128) = 0;
      *(v2 + 136) = 0;
      WTF::fastFree(v10, v8);
    }
  }

  if (*(v2 + 120) == 1)
  {
    v11 = *(v2 + 104);
    if (v11)
    {
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
      WTF::fastFree(v11, v8);
    }
  }

  if (*(v2 + 96) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 80, v8);
  }

  if (*(v2 + 72) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 56, v8);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v8);
  v13 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  v17 = *v2;
  *v2 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D7BE020(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BDF68);
}

void WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration(WebKit::RemoteMediaPlayerProxyConfiguration *this)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 224);
  WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 208, v2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 192, v3);
  if (*(this + 168) == 1)
  {
    v5 = *(this + 19);
    if (v5)
    {
      *(this + 19) = 0;
      *(this + 40) = 0;
      WTF::fastFree(v5, v4);
    }
  }

  if (*(this + 144) == 1)
  {
    v6 = *(this + 16);
    if (v6)
    {
      *(this + 16) = 0;
      *(this + 34) = 0;
      WTF::fastFree(v6, v4);
    }
  }

  if (*(this + 120) == 1)
  {
    v7 = *(this + 13);
    if (v7)
    {
      *(this + 13) = 0;
      *(this + 28) = 0;
      WTF::fastFree(v7, v4);
    }
  }

  if (*(this + 96) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v4);
  }

  if (*(this + 72) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v4);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v4);
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = *this;
  *this = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }
  }
}

uint64_t WebKit::NetworkProcessCreationParameters::NetworkProcessCreationParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = *(a2 + 1);
  *(a2 + 1) = 0u;
  *(a1 + 16) = v6;
  LOWORD(v5) = *(a2 + 16);
  *(a1 + 40) = 0u;
  *(a1 + 32) = v5;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
  v7 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v7;
  v8 = a2[8];
  a2[8] = 0;
  v9 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, a2 + 20);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 96, a2 + 24);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 112, a2 + 28);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 128, a2 + 32);
  v10 = *(a2 + 72);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 144) = v10;
  WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 152), a2 + 38);
  WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 168), a2 + 42);
  *(a1 + 184) = 0;
  v11 = a2[23];
  a2[23] = 0;
  *(a1 + 184) = v11;
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 192), a2 + 48);
  *(a1 + 208) = a2[26];
  return a1;
}

void sub_19D7BE2EC(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v9 = *(v2 + 184);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 168, a2);
  WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 152, v10);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v14);
  v16 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v15);
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100]((v3 - 16), v18);
  v20 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *v2;
  *v2 = 0;
  if (v22)
  {
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v19);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D7BE404(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 112) = 0;
    *(v2 + 120) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BE34CLL);
}

void sub_19D7BE420(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BE354);
}

void sub_19D7BE43C(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BE35CLL);
}

void sub_19D7BE458(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BE394);
}

_BYTE *std::__optional_move_base<WebKit::NavigationActionData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[2912] = 0;
  if (*(a2 + 2912) == 1)
  {
    WebKit::NavigationActionData::NavigationActionData(a1, a2);
    a1[2912] = 1;
  }

  return a1;
}

void sub_19D7BE4C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 2912) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NavigationActionData::NavigationActionData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  WebCore::ResourceResponseBase::ResourceResponseBase(a1 + 88, a2 + 88);
  v8 = *(a2 + 336);
  *(a2 + 336) = 0;
  *(a1 + 336) = v8;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v9 = *(a2 + 360);
  *(a2 + 360) = 0;
  *(a1 + 360) = v9;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 368));
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 400));
  v10 = *(a2 + 432);
  v11 = *(a2 + 448);
  v12 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 448) = v11;
  *(a1 + 464) = v12;
  *(a1 + 432) = v10;
  v13 = *(a2 + 488);
  *(a2 + 488) = 0;
  *(a1 + 488) = v13;
  *(a1 + 496) = *(a2 + 496);
  std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](a1 + 504, a2 + 504);
  std::__optional_move_base<WebCore::PrivateClickMeasurement,false>::__optional_move_base[abi:sn200100]((a1 + 560), a2 + 560);
  v14 = *(a2 + 880);
  *(a1 + 884) = *(a2 + 884);
  *(a1 + 880) = v14;
  std::__optional_move_base<WebKit::WebHitTestResultData,false>::__optional_move_base[abi:sn200100]((a1 + 896), a2 + 896);
  *(a1 + 1760) = *(a2 + 1760);
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 1768, a2 + 1768);
  v15 = *(a2 + 1920);
  *(a2 + 1920) = 0;
  *(a1 + 1920) = v15;
  v16 = *(a2 + 1928);
  *(a2 + 1928) = 0;
  *(a1 + 1928) = v16;
  v17 = *(a2 + 1936);
  *(a2 + 1936) = 0;
  *(a1 + 1936) = v17;
  v18 = *(a2 + 1944);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1944) = v18;
  v19 = *(a2 + 1960);
  *(a2 + 1960) = 0;
  *(a1 + 1960) = v19;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 1968));
  v20 = *(a2 + 2000);
  *(a2 + 2000) = 0;
  *(a1 + 2000) = v20;
  v21 = *(a2 + 2008);
  v22 = *(a2 + 2024);
  v23 = *(a2 + 2040);
  *(a1 + 2056) = *(a2 + 2056);
  *(a1 + 2024) = v22;
  *(a1 + 2040) = v23;
  *(a1 + 2008) = v21;
  v24 = *(a2 + 2064);
  *(a2 + 2064) = 0;
  *(a1 + 2064) = v24;
  v25 = *(a2 + 2072);
  v26 = *(a2 + 2088);
  *(a1 + 2104) = *(a2 + 2104);
  *(a1 + 2072) = v25;
  *(a1 + 2088) = v26;
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2128) = *(a2 + 2128);
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 2136, a2 + 2136);
  v27 = *(a2 + 2288);
  *(a2 + 2288) = 0;
  *(a1 + 2288) = v27;
  v28 = *(a2 + 2296);
  *(a2 + 2296) = 0;
  *(a1 + 2296) = v28;
  v29 = *(a2 + 2304);
  *(a2 + 2304) = 0;
  *(a1 + 2304) = v29;
  v30 = *(a2 + 2312);
  *(a1 + 2320) = *(a2 + 2320);
  *(a1 + 2312) = v30;
  v31 = *(a2 + 2328);
  *(a2 + 2328) = 0;
  *(a1 + 2328) = v31;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor((a1 + 2336));
  v32 = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a1 + 2368) = v32;
  v33 = *(a2 + 2376);
  v34 = *(a2 + 2392);
  v35 = *(a2 + 2408);
  *(a1 + 2424) = *(a2 + 2424);
  *(a1 + 2392) = v34;
  *(a1 + 2408) = v35;
  *(a1 + 2376) = v33;
  v36 = *(a2 + 2432);
  *(a2 + 2432) = 0;
  *(a1 + 2432) = v36;
  v37 = *(a2 + 2440);
  v38 = *(a2 + 2456);
  *(a1 + 2472) = *(a2 + 2472);
  *(a1 + 2440) = v37;
  *(a1 + 2456) = v38;
  *(a1 + 2480) = *(a2 + 2480);
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 2496, a2 + 2496);
  v39 = *(a2 + 2648);
  *(a2 + 2648) = 0;
  *(a1 + 2648) = v39;
  v40 = *(a2 + 2656);
  *(a2 + 2656) = 0;
  *(a1 + 2656) = v40;
  v41 = *(a2 + 2664);
  *(a2 + 2664) = 0;
  *(a1 + 2664) = v41;
  v42 = *(a2 + 2672);
  *(a1 + 2680) = *(a2 + 2680);
  *(a1 + 2672) = v42;
  v43 = *(a2 + 2688);
  *(a2 + 2688) = 0;
  *(a1 + 2688) = v43;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 2696, a2 + 2696);
  v44 = *(a2 + 2848);
  *(a2 + 2848) = 0;
  *(a1 + 2848) = v44;
  v45 = *(a2 + 2856);
  *(a2 + 2856) = 0;
  *(a1 + 2856) = v45;
  v46 = *(a2 + 2864);
  *(a2 + 2864) = 0;
  *(a1 + 2864) = v46;
  v47 = *(a2 + 2872);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2872) = v47;
  v48 = *(a2 + 2888);
  v49 = *(a2 + 2896);
  *(a2 + 2888) = 0u;
  *(a1 + 2888) = v48;
  *(a1 + 2896) = v49;
  return a1;
}

void sub_19D7BE804(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2688);
  *(v1 + 2688) = 0;
  if (v3)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 2496));
  v5 = *(v1 + 2432);
  *(v1 + 2432) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v1 + 2368);
  *(v1 + 2368) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 2336);
  v7 = *(v1 + 2328);
  *(v1 + 2328) = 0;
  if (v7)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 2136));
  v9 = *(v1 + 2064);
  *(v1 + 2064) = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v1 + 2000);
  *(v1 + 2000) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 1968);
  v11 = *(v1 + 1960);
  *(v1 + 1960) = 0;
  if (v11)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v1 + 1768));
  if (*(v1 + 1744) == 1)
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData((v1 + 896), v12);
  }

  if (*(v1 + 872) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((v1 + 560), v12);
  }

  if (*(v1 + 552) == 1)
  {
    v13 = *(v1 + 544);
    if (v13)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v13, v12);
    }

    v14 = *(v1 + 536);
    if (v14)
    {
      WTF::fastFree((v14 - 16), v12);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 504);
  }

  v15 = *(v1 + 488);
  *(v1 + 488) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 400);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 368);
  v17 = *(v1 + 360);
  *(v1 + 360) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(v1 + 336);
  *(v1 + 336) = 0;
  if (v18)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v1 + 88), v16);
  v20 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_move_base<WebCore::ContentSecurityPolicyResponseHeaders,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    v5 = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_19D7BEA7C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 24) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebCore::NavigationRequester,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[224] = 0;
  if (*(a2 + 224) == 1)
  {
    WebCore::NavigationRequester::NavigationRequester(a1, a2);
    a1[224] = 1;
  }

  return a1;
}

uint64_t WebCore::NavigationRequester::NavigationRequester(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  *(a2 + 40) = 0;
  v5[5] = v4;
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  v5[7] = 0;
  v5[6] = v6;
  v5[8] = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt((v5 + 7), (a2 + 56));
  v7 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  v8 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v8;
  v9 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);
  v10 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v10;
  v11 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 120) = v11;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  v14 = *(a2 + 184);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 184) = v14;
  *(a1 + 168) = v13;
  *(a1 + 152) = v12;
  return a1;
}

{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v5;
  v6 = *(a2 + 40);
  atomic_fetch_add(v6, 1u);
  *(a1 + 40) = v6;
  v7 = *(a2 + 48);
  atomic_fetch_add(v7, 1u);
  *(a1 + 48) = v7;
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 56, (a2 + 56));
  v8 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v8;
  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 88);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 88) = v9;
  v10 = *(a2 + 96);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 96) = v10;
  *(a1 + 104) = *(a2 + 104);
  v11 = *(a2 + 112);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(a1 + 112) = v11;
  v12 = *(a2 + 120);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(a1 + 120) = v12;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v13 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 184) = v15;
  *(a1 + 168) = v14;
  *(a1 + 152) = v13;
  return a1;
}

void sub_19D7BEBF8(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, a2);
  }

  v7 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, a2);
  }

  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 24, a2 + 24);
  v5 = *(a2 + 22);
  *(a2 + 22) = 0;
  *(a1 + 176) = v5;
  v6 = *(a2 + 23);
  *(a2 + 23) = 0;
  *(a1 + 184) = v6;
  v7 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 192) = v7;
  v8 = *(a2 + 25);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v8;
  v9 = *(a2 + 216);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a1 + 216) = v9;
  v10 = *(a2 + 29);
  *(a2 + 29) = 0;
  *(a1 + 232) = v10;
  v11 = *(a2 + 30);
  *(a1 + 247) = *(a2 + 247);
  *(a1 + 240) = v11;
  std::__optional_move_base<WebKit::NavigationActionData,false>::__optional_move_base[abi:sn200100]((a1 + 256), (a2 + 16));
  v12 = a2[199];
  *(a1 + 3200) = *(a2 + 400);
  *(a1 + 3184) = v12;
  *(a1 + 3208) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 3208, a2 + 802);
  *(a1 + 3224) = 0;
  *(a1 + 3232) = 0;
  if (*(a2 + 3232) == 1)
  {
    v30 = *(a2 + 403);
    *(a2 + 403) = 0;
    *(a1 + 3224) = v30;
    *(a1 + 3232) = 1;
  }

  *(a1 + 3240) = *(a2 + 405);
  v13 = *(a2 + 812);
  *(a1 + 3251) = *(a2 + 3251);
  *(a1 + 3248) = v13;
  v14 = *(a2 + 407);
  *(a2 + 407) = 0;
  *(a1 + 3256) = v14;
  v15 = a2[204];
  *(a1 + 3280) = a2[205];
  *(a1 + 3264) = v15;
  std::__optional_move_base<WebCore::ContentSecurityPolicyResponseHeaders,false>::__optional_move_base[abi:sn200100](a1 + 3296, (a2 + 206));
  WTF::URL::URL(a1 + 3328, a2 + 416);
  WTF::URL::URL(a1 + 3368, a2 + 421);
  *(a1 + 3408) = *(a2 + 1704);
  v16 = *(a2 + 427);
  *(a2 + 427) = 0;
  *(a1 + 3416) = v16;
  v17 = *(a2 + 428);
  *(a2 + 428) = 0;
  *(a1 + 3424) = v17;
  *(a1 + 3432) = *(a2 + 1716);
  v18 = *(a2 + 430);
  *(a2 + 430) = 0;
  *(a1 + 3440) = v18;
  v19 = *(a2 + 431);
  *(a2 + 431) = 0;
  *(a1 + 3448) = v19;
  *(a1 + 3456) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 3456, a2 + 432);
  *(a1 + 3472) = 0u;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 3472, a2 + 434);
  v20 = *(a2 + 1744);
  *(a1 + 3490) = *(a2 + 3490);
  *(a1 + 3488) = v20;
  *(a1 + 3496) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 3496, a2 + 874);
  v21 = *(a2 + 3512);
  *(a1 + 3521) = *(a2 + 3521);
  *(a1 + 3512) = v21;
  WTF::URL::URL(a1 + 3544, a2 + 443);
  v22 = *(a2 + 896);
  *(a1 + 3588) = *(a2 + 1794);
  *(a1 + 3584) = v22;
  WTF::URL::URL(a1 + 3592, a2 + 449);
  *(a1 + 3632) = *(a2 + 1816);
  v23 = *(a2 + 455);
  *(a2 + 455) = 0;
  *(a1 + 3640) = v23;
  v24 = *(a2 + 456);
  *(a2 + 456) = 0;
  *(a1 + 3648) = v24;
  *(a1 + 3656) = *(a2 + 3656);
  std::__optional_move_base<WebCore::NavigationRequester,false>::__optional_move_base[abi:sn200100]((a1 + 3680), (a2 + 230));
  v25 = a2[245];
  v26 = a2[246];
  v27 = a2[247];
  *(a1 + 3968) = a2[248];
  *(a1 + 3952) = v27;
  *(a1 + 3936) = v26;
  *(a1 + 3920) = v25;
  WTF::URL::URL(a1 + 3984, a2 + 498);
  v28 = *(a2 + 4024);
  *(a1 + 4040) = *(a2 + 1010);
  *(a1 + 4024) = v28;
  return a1;
}

void sub_19D7BEF48(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  std::optional<WebCore::NavigationRequester>::~optional(v2 + 3680, a2);
  v13 = *(v2 + 3648);
  *(v2 + 3648) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(v2 + 3640);
  *(v2 + 3640) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = *v10;
  *v10 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = *v9;
  *v9 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v12);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v7, v17);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v6, v18);
  v20 = *(v2 + 3448);
  *(v2 + 3448) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  v21 = *(v2 + 3440);
  *(v2 + 3440) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *(v2 + 3424);
  *(v2 + 3424) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = *(v2 + 3416);
  *(v2 + 3416) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v19);
  }

  v24 = *v5;
  *v5 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = *v4;
  *v4 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  if (*(v2 + 3320) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 3296, v19);
  }

  v26 = *(v2 + 3256);
  *(v2 + 3256) = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v19);
  }

  if (*(v2 + 3232) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v2 + 3224));
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v19);
  if (*(v2 + 3168) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((v2 + 256), v27);
  }

  v28 = *(v2 + 232);
  *(v2 + 232) = 0;
  if (v28)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v28, v27);
  }

  v29 = *(v2 + 224);
  *(v2 + 224) = 0;
  if (v29)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v29, v27);
  }

  v30 = *(v2 + 216);
  *(v2 + 216) = 0;
  if (v30)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 24));
  _Unwind_Resume(a1);
}

void sub_19D7BF1DC(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 3208) = 0;
    *(v2 + 3216) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7BF178);
}

void WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(WebKit::NetworkResourceLoadParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 498);
  *(this + 498) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  std::optional<WebCore::NavigationRequester>::~optional(this + 3680, a2);
  v5 = *(this + 456);
  *(this + 456) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 455);
  *(this + 455) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 449);
  *(this + 449) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 443);
  *(this + 443) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3496, v4);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 868, v9);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 3456, v10);
  v12 = *(this + 431);
  *(this + 431) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(this + 430);
  *(this + 430) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = *(this + 428);
  *(this + 428) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
  }

  v15 = *(this + 427);
  *(this + 427) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }

  v16 = *(this + 421);
  *(this + 421) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v11);
  }

  v17 = *(this + 416);
  *(this + 416) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  if (*(this + 3320) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3296, v11);
  }

  v18 = *(this + 407);
  *(this + 407) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v11);
  }

  if (*(this + 3232) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 403);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3208, v11);
  if (*(this + 3168) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((this + 256), v19);
  }

  v20 = *(this + 29);
  *(this + 29) = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v20, v19);
  }

  v21 = *(this + 28);
  *(this + 28) = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v21, v19);
  }

  v22 = *(this + 27);
  *(this + 27) = 0;
  if (v22)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 24));
}

uint64_t WebKit::WebPushD::WebPushDaemonConnectionConfiguration::WebPushDaemonConnectionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v4;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 24) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return a1;
}

void sub_19D7BF4A0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7BF50C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7BF55C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 48 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        WTF::fastFree(v6, a2);
      }

      v4 = (v4 + 48);
      v5 -= 48;
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

uint64_t WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,IPC::FormDataReference::sandboxExtensionHandles(void)::{lambda(0ul &)#1},WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  v4 = *(result + 12);
  if (!v4)
  {
    v5 = 0;
    return _ZN3WTF13CompactMapperIZNK3IPC17FormDataReference23sandboxExtensionHandlesEvEUlRT_E_NS_6VectorIN6WebKit22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS6_IN7WebCore15FormDataElementELm0ES9_Lm16ESA_EEvE10compactMapERSB_SG_RKS5_(a2, *v2, v5);
  }

  if (!(v4 >> 29))
  {
    v6 = WTF::fastMalloc((8 * v4));
    *(a2 + 2) = v4;
    *a2 = v6;
    v5 = *(v2 + 12);
    return _ZN3WTF13CompactMapperIZNK3IPC17FormDataReference23sandboxExtensionHandlesEvEUlRT_E_NS_6VectorIN6WebKit22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS6_IN7WebCore15FormDataElementELm0ES9_Lm16ESA_EEvE10compactMapERSB_SG_RKS5_(a2, *v2, v5);
  }

  __break(0xC471u);
  return result;
}

uint64_t _ZN3WTF13CompactMapperIZNK3IPC17FormDataReference23sandboxExtensionHandlesEvEUlRT_E_NS_6VectorIN6WebKit22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS6_IN7WebCore15FormDataElementELm0ES9_Lm16ESA_EEvE10compactMapERSB_SG_RKS5_(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = a2 + 48 * a3;
    do
    {
      _ZZNK3IPC17FormDataReference23sandboxExtensionHandlesEvENKUlRT_E_clIKN7WebCore15FormDataElementEEENSt3__18optionalIN6WebKit22SandboxExtensionHandleEEES2_(&v11, *v4, *(v4 + 40));
      if (v12 == 1)
      {
        v7 = v11;
        v10 = v11;
        v11 = 0;
        v8 = *(a1 + 12);
        if (v8 == *(a1 + 8))
        {
          WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SandboxExtensionHandle>(a1, &v10);
        }

        else
        {
          v9 = *a1;
          v10 = 0;
          *(v9 + 8 * v8) = v7;
          *(a1 + 12) = v8 + 1;
        }

        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v10);
        if (v12)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v11);
        }
      }

      v4 += 48;
    }

    while (v4 != v5);
  }

  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, *(a1 + 12));
}

void sub_19D7BF740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WebKit::SandboxExtensionImpl *a10, WebKit::SandboxExtensionImpl *a11, char a12)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a10);
  if (a12 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a11);
  }

  _Unwind_Resume(a1);
}

void _ZZNK3IPC17FormDataReference23sandboxExtensionHandlesEvENKUlRT_E_clIKN7WebCore15FormDataElementEEENSt3__18optionalIN6WebKit22SandboxExtensionHandleEEES2_(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 && (WebKit::SandboxExtension::createHandle(0, &v5), (v6 & 1) != 0))
  {
    v4 = v5;
    v5 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v5);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SandboxExtensionHandle>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  *v3 = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return 1;
}

unint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      v11 = v4;
      do
      {
        v12 = *v10;
        *v11++ = 0;
        *v8++ = v12;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v10);
        v10 = v11;
        v9 -= 8;
      }

      while (v9);
    }

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

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
{
  v2 = *(result + 12);
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
      result = *result + 8 * a2;
      v5 = 8 * v2 - 8 * a2;
      do
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(result);
        result = v6 + 8;
        v5 -= 8;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t std::__optional_move_base<WebCore::SharedMemoryHandle,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::MachSendRight::MachSendRight();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7BFA7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        v4 = mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v4, a2);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3 > 5)
  {
    if (v3 == 6 && *a1)
    {
      v5 = (*a1 - 16);
      goto LABEL_10;
    }
  }

  else
  {
    if (*(a1 + 16) <= 2u)
    {
      goto LABEL_3;
    }

    if (v3 == 5)
    {
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_3;
      }

      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_10:
      WTF::fastFree(v5, a2);
      goto LABEL_3;
    }

    if (v3 == 3)
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }
    }
  }

LABEL_3:
  *(a1 + 16) = -1;
  return a1;
}

unsigned __int8 *mpark::detail::destructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::destroy(unsigned __int8 *result, void *a2)
{
  v2 = result;
  v3 = result[16];
  if (v3 > 5)
  {
    if (v3 == 6 && *result)
    {
      result = (*result - 16);
      goto LABEL_10;
    }
  }

  else
  {
    if (result[16] <= 2u)
    {
      goto LABEL_3;
    }

    if (v3 == 5)
    {
      result = *result;
      if (!*v2)
      {
        goto LABEL_3;
      }

      *v2 = 0;
      *(v2 + 2) = 0;
LABEL_10:
      result = WTF::fastFree(result, a2);
      goto LABEL_3;
    }

    if (v3 == 3)
    {
      result = *result;
      *v2 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

LABEL_3:
  v2[16] = -1;
  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        CFRelease(*(v8 + 8));
      }

      v6 = (v6 + 8);
      v7 -= 8;
    }

    while (v7);
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

API::Object *API::Data::createWithoutCopying@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, API::Object **a4@<X8>)
{
  v8 = API::Object::newObject(0x28uLL, 8);
  result = API::Object::Object(v8);
  *result = &unk_1F10E8400;
  *(result + 2) = a1;
  *(result + 3) = a2;
  v10 = *a3;
  *a3 = 0;
  *(result + 4) = v10;
  *a4 = result;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<API::Data::create(std::span<unsigned char const,18446744073709551615ul>)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10E8428;
  WTF::fastFree(*(a1 + 8), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<API::Data::create(std::span<unsigned char const,18446744073709551615ul>)::{lambda(void)#1},void>::~CallableWrapper(WTF **a1, void *a2)
{
  *a1 = &unk_1F10E8428;
  WTF::fastFree(a1[1], a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          CFRelease(*(v6 + 8));
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>::~KeyValuePair(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

API::Error *API::Error::Error(API::Error *this, atomic_uint **a2)
{
  *API::Object::Object(this) = &unk_1F10E7C18;
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(this + 2) = v4;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 3) = v5;
  v6 = *(a2 + 2);
  *(this + 2) = *(a2 + 1);
  *(this + 3) = v6;
  v7 = a2[6];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 8) = v7;
  v8 = *(a2 + 14);
  *(this + 38) = *(a2 + 30);
  *(this + 18) = v8;
  v9 = a2[8];
  *(this + 10) = v9;
  if (v9)
  {
    v10 = v9;
  }

  *(this + 88) = *(a2 + 72);
  return this;
}

void API::Error::~Error(API::Error *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E7C18;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
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
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  *this = &unk_1F10E7C18;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
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
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

void WebCore::ResourceErrorBase::~ResourceErrorBase(WebCore::ResourceErrorBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

uint64_t std::optional<WebCore::ResourceError>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4)
    {
    }

    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  return a1;
}

{
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  return a1;
}

void API::String::~String(API::String *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

void API::URL::~URL(API::URL *this)
{
  *this = &unk_1F10E8300;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WTF::URL>::operator()[abi:sn200100](v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }
  }
}

{
  *this = &unk_1F10E8300;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WTF::URL>::operator()[abi:sn200100](v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  JUMPOUT(0x19EB14CF0);
}

void std::default_delete<WTF::URL>::operator()[abi:sn200100](int a1, WTF::StringImpl **this)
{
  if (this)
  {
    v3 = *this;
    *this = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, this);
    }

    WTF::fastFree(this, this);
  }
}

API::URLResponse *API::URLResponse::URLResponse(API::URLResponse *this, const WebCore::ResourceResponse *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F10E8328;
  WebCore::ResourceResponseBase::ResourceResponseBase((v4 + 16), a2);
  v5 = *(a2 + 31);
  *(this + 33) = v5;
  if (v5)
  {
    v7 = v5;
  }

  *(this + 272) = *(a2 + 256);
  return this;
}

void API::URLResponse::~URLResponse(API::URLResponse *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E8328;
  v3 = *(this + 33);
  *(this + 33) = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 16), a2);
}

{
  *this = &unk_1F10E8328;
  v3 = *(this + 33);
  *(this + 33) = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 16), a2);

  JUMPOUT(0x19EB14CF0);
}

WebCore::ResourceResponseBase *WebCore::ResourceResponseBase::ResourceResponseBase(WebCore::ResourceResponseBase *this, const WebCore::ResourceResponseBase *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v5;
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 5) = v6;
  v7 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 7) = v7;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 8) = v8;
  v9 = *(a2 + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 9) = v9;
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(this + 80, a2 + 80);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(this + 96, a2 + 96);
  v10 = *(a2 + 14);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  *(this + 14) = v10;
  std::__optional_copy_base<WebCore::CertificateInfo,false>::__optional_copy_base[abi:sn200100](this + 120, a2 + 120);
  v11 = *(a2 + 68);
  *(this + 138) = *(a2 + 138);
  *(this + 68) = v11;
  v12 = *(a2 + 18);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 18) = v12;
  v13 = *(a2 + 152);
  *(this + 168) = *(a2 + 168);
  *(this + 152) = v13;
  v14 = *(a2 + 184);
  v15 = *(a2 + 200);
  v16 = *(a2 + 216);
  *(this + 227) = *(a2 + 227);
  *(this + 216) = v16;
  *(this + 200) = v15;
  *(this + 184) = v14;
  return this;
}

void sub_19D7C08F0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v2 + 96), a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v2 + 80, v5);
  v7 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_copy_base<WebCore::CertificateInfo,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = 0;
  if (*(a2 + 8) == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      CFRetain(v4);
    }

    a1[8] = 1;
  }

  return a1;
}

void sub_19D7C0A28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

API::UserContentURLPattern *API::UserContentURLPattern::UserContentURLPattern(API::UserContentURLPattern *this, atomic_uint **a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F10E7D58;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(this + 20) = 1;
  *(this + 40) = WebCore::UserContentURLPattern::parse();
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 6) = v5;
  return this;
}

void sub_19D7C0B00(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v3;
  *v3 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void API::UserContentURLPattern::~UserContentURLPattern(API::UserContentURLPattern *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E7D58;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  *this = &unk_1F10E7D58;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ImageResource>::destruct(*a1, (*a1 + 32 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ImageResource>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[3];
      v3[3] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[2];
      v3[2] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = v3[1];
      v3[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
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

uint64_t WebKit::BackgroundFetchState::BackgroundFetchState(uint64_t a1, uint64_t a2)
{
  v4 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(a1);
  WTF::URL::URL((v4 + 32), (a2 + 32));
  v5 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  return a1;
}

void sub_19D7C0E98(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(void **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

WTF::StringImpl **std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      CFRelease(v4);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7C109C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>::destruct(*a1, *a1 + 16 * v3);
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

void WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>>::destruct(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *v3;
      *v3 = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v3 += 16;
    }

    while (v3 != a2);
  }
}

uint64_t std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7C11C4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebCore::FontPlatformSerializedTraits,false>::__optional_move_base[abi:sn200100](_BYTE *result, uint64_t *a2)
{
  *result = 0;
  result[72] = 0;
  if (*(a2 + 72) == 1)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    result[8] = 0;
    result[16] = 0;
    if (*(a2 + 16) == 1)
    {
      v3 = a2[1];
      a2[1] = 0;
      *(result + 1) = v3;
      result[16] = 1;
    }

    result[24] = 0;
    result[32] = 0;
    if (*(a2 + 32) == 1)
    {
      v4 = a2[3];
      a2[3] = 0;
      *(result + 3) = v4;
      result[32] = 1;
    }

    result[40] = 0;
    result[48] = 0;
    if (*(a2 + 48) == 1)
    {
      v5 = a2[5];
      a2[5] = 0;
      *(result + 5) = v5;
      result[48] = 1;
    }

    result[56] = 0;
    result[64] = 0;
    if (*(a2 + 64) == 1)
    {
      v6 = a2[7];
      a2[7] = 0;
      *(result + 7) = v6;
      result[64] = 1;
    }

    result[72] = 1;
  }

  return result;
}

uint64_t WebCore::FontPlatformSerializedAttributes::FontPlatformSerializedAttributes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v7 = a2[3];
    a2[3] = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = 1;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v8 = a2[5];
    a2[5] = 0;
    *(a1 + 40) = v8;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v9 = a2[7];
    a2[7] = 0;
    *(a1 + 56) = v9;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v10 = a2[9];
    a2[9] = 0;
    *(a1 + 72) = v10;
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v11 = a2[11];
    a2[11] = 0;
    *(a1 + 88) = v11;
    *(a1 + 96) = 1;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v12 = a2[13];
    a2[13] = 0;
    *(a1 + 104) = v12;
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v13 = a2[15];
    a2[15] = 0;
    *(a1 + 120) = v13;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v14 = a2[17];
    a2[17] = 0;
    *(a1 + 136) = v14;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    v15 = a2[19];
    a2[19] = 0;
    *(a1 + 152) = v15;
    *(a1 + 160) = 1;
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v16 = a2[21];
    a2[21] = 0;
    *(a1 + 168) = v16;
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v17 = a2[23];
    a2[23] = 0;
    *(a1 + 184) = v17;
    *(a1 + 192) = 1;
  }

  std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 200, (a2 + 25));
  std::__optional_move_base<WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<__CFNumber const*>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 224, (a2 + 28));
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(a1 + 256) = -1;
    v18 = *(a2 + 256);
    if (v18 != 255)
    {
      v19 = a2[31];
      a2[31] = 0;
      *(a1 + 248) = v19;
      *(a1 + 256) = v18;
    }

    *(a1 + 264) = 1;
  }

  std::__optional_move_base<WebCore::FontPlatformSerializedTraits,false>::__optional_move_base[abi:sn200100]((a1 + 272), a2 + 34);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v20 = a2[44];
    a2[44] = 0;
    *(a1 + 352) = v20;
    *(a1 + 360) = 1;
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  if (*(a2 + 376) == 1)
  {
    v21 = a2[46];
    a2[46] = 0;
    *(a1 + 368) = v21;
    *(a1 + 376) = 1;
  }

  return a1;
}

void sub_19D7C157C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 216) == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 200, a2);
  }

  if (*(v2 + 192) == 1)
  {
    v4 = *(v2 + 184);
    *(v2 + 184) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*(v2 + 176) == 1)
  {
    v5 = *(v2 + 168);
    *(v2 + 168) = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(v2 + 160) == 1)
  {
    v6 = *(v2 + 152);
    *(v2 + 152) = 0;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (*(v2 + 144) == 1)
  {
    v7 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*(v2 + 128) == 1)
  {
    v8 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (*(v2 + 112) == 1)
  {
    v9 = *(v2 + 104);
    *(v2 + 104) = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (*(v2 + 96) == 1)
  {
    v10 = *(v2 + 88);
    *(v2 + 88) = 0;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (*(v2 + 80) == 1)
  {
    v11 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (*(v2 + 64) == 1)
  {
    v12 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (*(v2 + 48) == 1)
  {
    v13 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (*(v2 + 32) == 1)
  {
    v14 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v15 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *v2;
  *v2 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(WebCore::FontPlatformSerializedAttributes *this, WTF::StringImpl *a2)
{
  if (*(this + 376) == 1)
  {
    v3 = *(this + 46);
    *(this + 46) = 0;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (*(this + 360) == 1)
  {
    v4 = *(this + 44);
    *(this + 44) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*(this + 344) == 1)
  {
    if (*(this + 336) == 1)
    {
      v5 = *(this + 41);
      *(this + 41) = 0;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (*(this + 320) == 1)
    {
      v6 = *(this + 39);
      *(this + 39) = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (*(this + 304) == 1)
    {
      v7 = *(this + 37);
      *(this + 37) = 0;
      if (v7)
      {
        CFRelease(v7);
      }
    }

    if (*(this + 288) == 1)
    {
      v8 = *(this + 35);
      *(this + 35) = 0;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = *(this + 34);
    *(this + 34) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  if (*(this + 264) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RetainPtr<__CFNumber const*>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(this + 248, a2);
  }

  if (*(this + 240) == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 224, a2);
  }

  if (*(this + 216) == 1)
  {
    WTF::Vector<std::pair<WTF::RetainPtr<__CFNumber const*>,WTF::RetainPtr<CGColor *>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 200, a2);
  }

  if (*(this + 192) == 1)
  {
    v10 = *(this + 23);
    *(this + 23) = 0;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (*(this + 176) == 1)
  {
    v11 = *(this + 21);
    *(this + 21) = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (*(this + 160) == 1)
  {
    v12 = *(this + 19);
    *(this + 19) = 0;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (*(this + 144) == 1)
  {
    v13 = *(this + 17);
    *(this + 17) = 0;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (*(this + 128) == 1)
  {
    v14 = *(this + 15);
    *(this + 15) = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (*(this + 112) == 1)
  {
    v15 = *(this + 13);
    *(this + 13) = 0;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (*(this + 96) == 1)
  {
    v16 = *(this + 11);
    *(this + 11) = 0;
    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (*(this + 80) == 1)
  {
    v17 = *(this + 9);
    *(this + 9) = 0;
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (*(this + 64) == 1)
  {
    v18 = *(this + 7);
    *(this + 7) = 0;
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (*(this + 48) == 1)
  {
    v19 = *(this + 5);
    *(this + 5) = 0;
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (*(this + 32) == 1)
  {
    v20 = *(this + 3);
    *(this + 3) = 0;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  v21 = *(this + 2);
  *(this + 2) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

  v22 = *(this + 1);
  *(this + 1) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  v23 = *this;
  *this = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
    }
  }
}

_BYTE *std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[384] = 0;
  if (*(a2 + 384) == 1)
  {
    WebCore::FontPlatformSerializedAttributes::FontPlatformSerializedAttributes(a1, a2);
    a1[384] = 1;
  }

  return a1;
}

void sub_19D7C1A4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 384) == 1)
  {
    WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(WebCore::ContentFilterUnblockHandler *this, void *a2)
{
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(this + 120) == 1)
  {
    v5 = *(this + 10);
    *(this + 10) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::~__value_func[abi:sn200100](this + 48);
  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

uint64_t WebCore::ParagraphStyle::ParagraphStyle(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 56, a2 + 14);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 88, a2 + 22);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 120, a2 + 30);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 34);
  return a1;
}

void sub_19D7C1CFC(_Unwind_Exception *a1, void *a2)
{
  v10 = *v8;
  if (*v8)
  {
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    WTF::fastFree(v10, a2);
  }

  WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, a2);
  WTF::Vector<WebCore::TextTable,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v11);
  WTF::Vector<WebCore::TextTableBlock,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v12);
  v14 = *v4;
  if (*v4)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    WTF::fastFree(v14, v13);
  }

  v15 = *v3;
  if (*v3)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v15, v13);
  }

  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<double,WTF::String,WTF::URL,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ParagraphStyle,WTF::RetainPtr<NSPresentationIntent>,WTF::RetainPtr<NSShadow>,WTF::RetainPtr<NSDate>,WebCore::AttributedString::ColorFromCGColor,WebCore::AttributedString::ColorFromPlatformColor,WebCore::MultiRepresentationHEICAttachmentData,WebCore::TextAttachmentFileWrapper,WebCore::TextAttachmentMissingImage>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 152) = -1;
  switch(*(a2 + 152))
  {
    case 0:
      *a1 = *a2;
      goto LABEL_4;
    case 1:
    case 3:
    case 7:
    case 8:
    case 9:
      goto LABEL_3;
    case 2:
      WTF::URL::URL(a1, a2);
      goto LABEL_4;
    case 4:
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      goto LABEL_4;
    case 5:
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      goto LABEL_4;
    case 6:
      WebCore::ParagraphStyle::ParagraphStyle(a1, a2);
      goto LABEL_4;
    case 0xA:
    case 0xB:
      *a1 = 0;
      if (a1 != a2)
      {
LABEL_3:
        v4 = *a2;
        *a2 = 0;
        *a1 = v4;
      }

      goto LABEL_4;
    case 0xC:
      WebCore::MultiRepresentationHEICAttachmentData::MultiRepresentationHEICAttachmentData(a1, a2);
      goto LABEL_4;
    case 0xD:
      v6 = *a2;
      *a2 = 0;
      *a1 = v6;
      v7 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v7;
      v8 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 16) = v8;
      goto LABEL_4;
    case 0xE:
LABEL_4:
      *(a1 + 152) = *(a2 + 152);
      break;
    default:
      return a1;
  }

  return a1;
}

void sub_19D7C1ED4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    WTF::fastFree(v15, a2);
  }

  if (*(v13 + 152) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<double,WTF::String,WTF::URL,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ParagraphStyle,WTF::RetainPtr<NSPresentationIntent>,WTF::RetainPtr<NSShadow>,WTF::RetainPtr<NSDate>,WebCore::AttributedString::ColorFromCGColor,WebCore::AttributedString::ColorFromPlatformColor,WebCore::MultiRepresentationHEICAttachmentData,WebCore::TextAttachmentFileWrapper,WebCore::TextAttachmentMissingImage>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  *(v13 + 152) = -1;
  _Unwind_Resume(exception_object);
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<double,WTF::String,WTF::URL,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ParagraphStyle,WTF::RetainPtr<NSPresentationIntent>,WTF::RetainPtr<NSShadow>,WTF::RetainPtr<NSDate>,WebCore::AttributedString::ColorFromCGColor,WebCore::AttributedString::ColorFromPlatformColor,WebCore::MultiRepresentationHEICAttachmentData,WebCore::TextAttachmentFileWrapper,WebCore::TextAttachmentMissingImage>,(mpark::detail::Trait)1> &>(int a1, WebCore::MultiRepresentationHEICAttachmentData *this)
{
  if (*(this + 152) == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 152);
  }

  switch(v2)
  {
    case 1:
    case 2:
      goto LABEL_17;
    case 3:

      WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(this);
      return;
    case 4:

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, this);
      return;
    case 5:
      v6 = *this;
      if (!*this)
      {
        return;
      }

      *this = 0;
      *(this + 2) = 0;
      break;
    case 6:
      v10 = *(this + 17);
      if (v10)
      {
        *(this + 17) = 0;
        *(this + 36) = 0;
        WTF::fastFree(v10, this);
      }

      WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, this);
      WTF::Vector<WebCore::TextTable,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v11);
      WTF::Vector<WebCore::TextTableBlock,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v12);
      v13 = *(this + 9);
      if (v13)
      {
        *(this + 9) = 0;
        *(this + 20) = 0;
        WTF::fastFree(v13, this);
      }

      v6 = *(this + 7);
      if (!v6)
      {
        return;
      }

      *(this + 7) = 0;
      *(this + 16) = 0;
      break;
    case 7:
    case 8:
    case 9:
      v4 = *this;
      *this = 0;
      if (v4)
      {
      }

      return;
    case 10:
    case 11:
      v5 = *this;
      if ((*this & 0x8000000000000) == 0)
      {
        return;
      }

      v6 = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1)
      {
        return;
      }

      atomic_store(1u, v6);
      break;
    case 12:

      WebCore::MultiRepresentationHEICAttachmentData::~MultiRepresentationHEICAttachmentData(this, this);
      return;
    case 13:
      v7 = *(this + 2);
      *(this + 2) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, this);
      }

      v8 = *(this + 1);
      *(this + 1) = 0;
      if (v8)
      {
        CFRelease(v8);
      }

LABEL_17:
      v9 = *this;
      *this = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v9, this);
      }

      return;
    default:
      return;
  }

  WTF::fastFree(v6, this);
}

void *WebCore::MultiRepresentationHEICAttachmentData::MultiRepresentationHEICAttachmentData(void *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  a1[1] = v5;
  v6 = a2[2];
  a2[2] = 0;
  a1[2] = v6;
  v7 = a2[3];
  a2[3] = 0;
  a1[4] = 0;
  a1[3] = v7;
  a1[5] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a1 + 4), a2 + 8);
  v8 = a2[6];
  a2[6] = 0;
  a1[6] = v8;
  return a1;
}

void sub_19D7C2184(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::MultiRepresentationHEICAttachmentSingleImage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::MultiRepresentationHEICAttachmentSingleImage>::destruct(*a1, (*a1 + 16 * v3));
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

_DWORD *WTF::VectorDestructor<true,WebCore::MultiRepresentationHEICAttachmentSingleImage>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[4];
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        if (*(v4 + 160) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<double,WTF::String,WTF::URL,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ParagraphStyle,WTF::RetainPtr<NSPresentationIntent>,WTF::RetainPtr<NSShadow>,WTF::RetainPtr<NSDate>,WebCore::AttributedString::ColorFromCGColor,WebCore::AttributedString::ColorFromPlatformColor,WebCore::MultiRepresentationHEICAttachmentData,WebCore::TextAttachmentFileWrapper,WebCore::TextAttachmentMissingImage>,(mpark::detail::Trait)1> &>(&v7, (v4 + 8));
          v5 = *v4;
        }

        *(v4 + 160) = -1;
        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 168;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<std::pair<WebCore::AttributedString::Range,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 24 * v3;
    v6 = (v4 + 16);
    do
    {
      if (*v6)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebCore::AttributedString::AttributeValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebCore::AttributedString::AttributeValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebCore::AttributedString::AttributeValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v6, a2);
      }

      v6 += 3;
      v5 -= 24;
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

WebCore::ApplePaySessionPaymentRequest *WebCore::ApplePaySessionPaymentRequest::ApplePaySessionPaymentRequest(WebCore::ApplePaySessionPaymentRequest *this, const WebCore::ApplePaySessionPaymentRequest *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(this + 1) = v4;
  v5 = *(a2 + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  v6 = *(a2 + 6);
  *(this + 28) = *(a2 + 28);
  *(this + 6) = v6;
  v7 = *(a2 + 5);
  *(this + 4) = MEMORY[0x1E69E2E40] + 16;
  *(this + 5) = v7;
  if (v7)
  {
    v8 = v7;
  }

  v9 = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 12) = v9;
  v10 = *(a2 + 8);
  *(this + 7) = MEMORY[0x1E69E2E40] + 16;
  *(this + 8) = v10;
  if (v10)
  {
    v11 = v10;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 72, a2 + 72);
  v12 = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
  *(this + 22) = v12;
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 96, a2 + 12);
  WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 112, a2 + 14);
  *(this + 128) = *(a2 + 128);
  v13 = *(a2 + 17);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(this + 17) = v13;
  v14 = *(a2 + 18);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 18) = v14;
  v15 = *(a2 + 152);
  v16 = *(a2 + 168);
  *(this + 23) = *(a2 + 23);
  *(this + 168) = v16;
  *(this + 152) = v15;
  v17 = *(a2 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(this + 24) = v17;
  *(this + 100) = *(a2 + 100);
  v18 = *(a2 + 26);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(this + 26) = v18;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 216, a2 + 216);
  v19 = *(a2 + 232);
  *(this + 240) = 0;
  *(this + 232) = v19;
  *(this + 336) = 0;
  if (*(a2 + 336) == 1)
  {
    *(this + 240) = *(a2 + 240);
    v20 = *(a2 + 31);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    *(this + 31) = v20;
    v21 = *(a2 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    *(this + 32) = v21;
    v22 = *(a2 + 33);
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    *(this + 33) = v22;
    v23 = *(a2 + 34);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    *(this + 34) = v23;
    *(this + 280) = *(a2 + 280);
    v24 = *(a2 + 36);
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    *(this + 36) = v24;
    v25 = *(a2 + 37);
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    *(this + 37) = v25;
    WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 304, a2 + 38);
    v26 = *(a2 + 40);
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
    }

    *(this + 40) = v26;
    *(this + 328) = *(a2 + 328);
    *(this + 336) = 1;
  }

  *(this + 86) = *(a2 + 86);
  v27 = *(a2 + 44);
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  *(this + 44) = v27;
  *(this + 360) = 0;
  *(this + 560) = 0;
  if (*(a2 + 560) == 1)
  {
    v28 = *(a2 + 45);
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    *(this + 45) = v28;
    *(this + 368) = *(a2 + 368);
    v29 = *(a2 + 47);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    *(this + 47) = v29;
    v30 = *(a2 + 48);
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    *(this + 48) = v30;
    v31 = *(a2 + 392);
    v32 = *(a2 + 408);
    *(this + 53) = *(a2 + 53);
    *(this + 392) = v31;
    *(this + 408) = v32;
    v33 = *(a2 + 54);
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    *(this + 54) = v33;
    *(this + 220) = *(a2 + 220);
    *(this + 448) = 0;
    *(this + 528) = 0;
    if (*(a2 + 528) == 1)
    {
      *(this + 448) = *(a2 + 448);
      v34 = *(a2 + 57);
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      *(this + 57) = v34;
      v35 = *(a2 + 58);
      if (v35)
      {
        atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
      }

      *(this + 58) = v35;
      v36 = *(a2 + 472);
      v37 = *(a2 + 488);
      *(this + 63) = *(a2 + 63);
      *(this + 472) = v36;
      *(this + 488) = v37;
      v38 = *(a2 + 64);
      if (v38)
      {
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
      }

      *(this + 64) = v38;
      *(this + 260) = *(a2 + 260);
      *(this + 528) = 1;
    }

    v39 = *(a2 + 67);
    if (v39)
    {
      atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
    }

    *(this + 67) = v39;
    v40 = *(a2 + 68);
    if (v40)
    {
      atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
    }

    *(this + 68) = v40;
    v41 = *(a2 + 69);
    if (v41)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    *(this + 69) = v41;
    *(this + 560) = 1;
  }

  *(this + 568) = 0;
  *(this + 680) = 0;
  if (*(a2 + 680) == 1)
  {
    v42 = *(a2 + 71);
    if (v42)
    {
      atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
    }

    *(this + 71) = v42;
    *(this + 576) = *(a2 + 576);
    v43 = *(a2 + 73);
    if (v43)
    {
      atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    }

    *(this + 73) = v43;
    v44 = *(a2 + 74);
    if (v44)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    *(this + 74) = v44;
    v45 = *(a2 + 600);
    v46 = *(a2 + 616);
    *(this + 79) = *(a2 + 79);
    *(this + 600) = v45;
    *(this + 616) = v46;
    v47 = *(a2 + 80);
    if (v47)
    {
      atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
    }

    *(this + 80) = v47;
    *(this + 324) = *(a2 + 324);
    v48 = *(a2 + 82);
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    *(this + 82) = v48;
    v49 = *(a2 + 83);
    if (v49)
    {
      atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
    }

    *(this + 83) = v49;
    v50 = *(a2 + 84);
    if (v50)
    {
      atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
    }

    *(this + 84) = v50;
    *(this + 680) = 1;
  }

  *(this + 688) = 0;
  *(this + 704) = 0;
  if (*(a2 + 704) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 688, a2 + 688);
    *(this + 704) = 1;
  }

  *(this + 712) = 0;
  *(this + 840) = 0;
  if (*(a2 + 840) == 1)
  {
    v51 = *(a2 + 89);
    if (v51)
    {
      atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
    }

    *(this + 89) = v51;
    *(this + 720) = *(a2 + 720);
    v52 = *(a2 + 91);
    if (v52)
    {
      atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
    }

    *(this + 91) = v52;
    v53 = *(a2 + 92);
    if (v53)
    {
      atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
    }

    *(this + 92) = v53;
    v54 = *(a2 + 744);
    v55 = *(a2 + 760);
    *(this + 97) = *(a2 + 97);
    *(this + 744) = v54;
    *(this + 760) = v55;
    v56 = *(a2 + 98);
    if (v56)
    {
      atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
    }

    *(this + 98) = v56;
    *(this + 396) = *(a2 + 396);
    *(this + 100) = *(a2 + 100);
    v57 = *(a2 + 101);
    if (v57)
    {
      atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
    }

    *(this + 101) = v57;
    v58 = *(a2 + 102);
    if (v58)
    {
      atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
    }

    *(this + 102) = v58;
    v59 = *(a2 + 103);
    if (v59)
    {
      atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
    }

    *(this + 103) = v59;
    v60 = *(a2 + 104);
    if (v60)
    {
      atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
    }

    *(this + 104) = v60;
    *(this + 840) = 1;
  }

  std::__optional_copy_base<WebCore::ApplePayDisbursementRequest,false>::__optional_copy_base[abi:sn200100](this + 848, a2 + 848);
  *(this + 440) = *(a2 + 440);
  v61 = *(a2 + 111);
  if (v61)
  {
    atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
  }

  *(this + 111) = v61;
  return this;
}

void sub_19D7C29F0(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 704))
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 688, a2);
  }

  if (*(v2 + 680) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest((v2 + 568), a2);
  }

  if (*(v2 + 560) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest((v2 + 360), a2);
  }

  v7 = *(v2 + 352);
  *(v2 + 352) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  if (*(v2 + 336) == 1)
  {
    WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 216, a2);
  v9 = *(v2 + 208);
  *(v2 + 208) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(v2 + 192);
  *(v2 + 192) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(v2 + 144);
  *(v2 + 144) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 112, v8);
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 96, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 72, v14);
  WebCore::PaymentContact::~PaymentContact(v4);
  WebCore::PaymentContact::~PaymentContact(v3);
  v16 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x2762763)
  {
    v5 = 104 * v3;
    v6 = WTF::fastMalloc((104 * v3));
    *(v2 + 8) = v5 / 0x68;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 104 * v7;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6 = v10;
        v11 = *(v8 + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v6 + 8) = v11;
        v12 = *(v8 + 16);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        *(v6 + 16) = v12;
        v13 = *(v8 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *(v6 + 24) = v13;
        *(v6 + 32) = *(v8 + 32);
        v14 = *(v8 + 48);
        v15 = *(v8 + 64);
        v16 = *(v8 + 80);
        *(v6 + 93) = *(v8 + 93);
        *(v6 + 64) = v15;
        *(v6 + 80) = v16;
        *(v6 + 48) = v14;
        v6 += 104;
        v8 += 104;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x3333334)
  {
    v5 = 80 * v3;
    v6 = WTF::fastMalloc((80 * v3));
    *(v2 + 8) = v5 / 0x50;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 80 * v7;
      do
      {
        *v6 = *v8;
        v10 = *(v8 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *(v6 + 8) = v10;
        v11 = *(v8 + 16);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v6 + 16) = v11;
        v12 = *(v8 + 24);
        v13 = *(v8 + 40);
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 40) = v13;
        *(v6 + 24) = v12;
        v14 = *(v8 + 64);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        *(v6 + 64) = v14;
        *(v6 + 72) = *(v8 + 72);
        v6 += 80;
        v8 += 80;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x5555556)
  {
    v5 = 48 * v3;
    v6 = WTF::fastMalloc((48 * v3));
    *(v2 + 8) = v5 / 0x30;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 48 * v7;
      do
      {
        *v6 = *v8;
        v10 = *(v8 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *(v6 + 8) = v10;
        v11 = *(v8 + 16);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *(v6 + 16) = v11;
        v12 = *(v8 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        *(v6 + 24) = v12;
        v13 = *(v8 + 32);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *(v6 + 32) = v13;
        v14 = *(v8 + 40);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        *(v6 + 40) = v14;
        v6 += 48;
        v8 += 48;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x6666667)
  {
    v5 = 40 * v3;
    v6 = WTF::fastMalloc((40 * v3));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = *a2 + 40 * v7;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6 = v10;
        v11 = v8[1];
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        v6[1] = v11;
        v12 = v8[2];
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v6[2] = v12;
        v13 = v8[3];
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v6[3] = v13;
        v14 = v8[4];
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v6[4] = v14;
        v6 += 5;
        v8 += 5;
      }

      while (v8 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplePayPaymentTokenContext>::destruct(*a1, (*a1 + 40 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplePayPaymentTokenContext>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[4];
      v3[4] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[3];
      v3[3] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = v3[2];
      v3[2] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = v3[1];
      v3[1] = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
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

      v3 += 5;
    }

    while (v3 != a2);
  }

  return result;
}

_BYTE *std::__optional_copy_base<WebCore::ApplePayDisbursementRequest,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    std::__optional_copy_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7C31F8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1 && *(v2 + 16) == 1)
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

uint64_t std::__optional_copy_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
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

void sub_19D7C32A8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::DocumentEditingContext::DocumentEditingContext(uint64_t a1, uint64_t a2)
{
  WebCore::AttributedString::AttributedString();
  WebCore::AttributedString::AttributedString();
  WebCore::AttributedString::AttributedString();
  WebCore::AttributedString::AttributedString();
  WebCore::AttributedString::AttributedString();
  v4 = *(a2 + 200);
  *(a1 + 216) = 0;
  *(a1 + 200) = v4;
  *(a1 + 224) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 216, (a2 + 216));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 232, (a2 + 232));
  return a1;
}

void sub_19D7C336C(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    WTF::fastFree(v7, a2);
  }

  MEMORY[0x19EB065D0](v2 + 160);
  MEMORY[0x19EB065D0](v2 + 120);
  MEMORY[0x19EB065D0](v2 + 80);
  MEMORY[0x19EB065D0](v2 + 40);
  MEMORY[0x19EB065D0](v2);
  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebKit::EditorState::PostLayoutData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[224] = 0;
  if (*(a2 + 224) == 1)
  {
    WebKit::EditorState::PostLayoutData::PostLayoutData(a1, a2);
    a1[224] = 1;
  }

  return a1;
}

void sub_19D7C3438(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 224) == 1)
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::EditorState::PostLayoutData::PostLayoutData(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 24) = 0;
  if (a1 != a2)
  {
    v5 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v5;
  }

  *(a1 + 32) = *(a2 + 8);
  v6 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(a1 + 40) = v6;
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 48) = v7;
  v8 = *(a2 + 7);
  v9 = *(a2 + 16);
  *(a1 + 72) = 0;
  *(a1 + 64) = v9;
  *(a1 + 56) = v8;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  v10 = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  if (a1 != a2)
  {
    v11 = *(a2 + 12);
    *(a2 + 12) = 0;
    *(a1 + 96) = v11;
  }

  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  v14 = *(a2 + 152);
  v15 = *(a2 + 168);
  v16 = *(a2 + 184);
  *(a1 + 195) = *(a2 + 195);
  *(a1 + 184) = v16;
  *(a1 + 168) = v15;
  *(a1 + 152) = v14;
  return a1;
}

void sub_19D7C3558(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 24);
  if ((v8 & 0x8000000000000) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebKit::EditorState::VisualData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[256] = 0;
  if (*(a2 + 256) == 1)
  {
    WebKit::EditorState::VisualData::VisualData(a1, a2);
    a1[256] = 1;
  }

  return a1;
}

uint64_t WebKit::EditorState::VisualData::VisualData(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 80, a2 + 20);
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v10;
  *(a1 + 128) = v9;
  *(a1 + 112) = v8;
  *(a1 + 96) = v7;
  *(a1 + 160) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 38);
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v11;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  return a1;
}

void sub_19D7C3718(_Unwind_Exception *exception_object, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_storage_base<WebKit::EditorState::VisualData,false>::~__optional_storage_base(uint64_t a1, void *a2)
{
  if (*(a1 + 256) == 1)
  {
    v3 = *(a1 + 152);
    if (v3)
    {
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      WTF::fastFree(v4, a2);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  return a1;
}

void WebKit::EditorState::PostLayoutData::~PostLayoutData(WebKit::EditorState::PostLayoutData *this, void *a2)
{
  v3 = *(this + 12);
  if ((v3 & 0x8000000000000) != 0)
  {
    v8 = (v3 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 3);
  if ((v7 & 0x8000000000000) != 0)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }
}

uint64_t WebKit::WebExtensionContextParameters::WebExtensionContextParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WTF::URL::URL(a1 + 16, (a2 + 16));
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v4;
  *(a1 + 64) = 0;
  v5 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  v6 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 72) = v6;
  v7 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 80) = v7;
  v8 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v8;
  v9 = *(a2 + 96);
  v10 = *(a2 + 105);
  *(a1 + 128) = 0;
  *(a1 + 105) = v10;
  *(a1 + 96) = v9;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 144, (a2 + 144));
  return a1;
}

void sub_19D7C396C(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }

  v9 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = *(v2 + 72);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, a2);
  }

  v11 = *(v2 + 64);
  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, a2);
  }

  v12 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(WebKit::WebExtensionContextParameters *this, void *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    *(this + 18) = 0;
    *(this + 38) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = *(this + 9);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *(this + 8);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

uint64_t WebCore::Cookie::Cookie(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v8;
  v9 = *(a2 + 5);
  *(a1 + 51) = *(a2 + 51);
  *(a1 + 40) = v9;
  v10 = a2[9];
  a2[9] = 0;
  *(a1 + 72) = v10;
  WTF::URL::URL(a1 + 80, a2 + 10);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 120, a2 + 30);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_19D7C3BBC(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 120) = 0;
    *(v2 + 128) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *v2;
  *v2 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7C3D14(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7C3DA0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebExtensionScriptInjectionParameters::WebExtensionScriptInjectionParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v4 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v4;
    *(a1 + 24) = 1;
  }

  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 32), a2 + 32);
  std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 56, a2 + 56);
  std::__optional_move_base<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 80, a2 + 80);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 104);
    *(a2 + 104) = 0;
    *(a1 + 104) = v5;
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v6 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(a1 + 120) = v6;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v7 = *(a2 + 136);
    *(a2 + 136) = 0;
    *(a1 + 136) = v7;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_19D7C3EDC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 72) == 1)
  {
    v4 = *(v2 + 56);
    if (v4)
    {
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  if (*(v2 + 48) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 32, a2);
  }

  if (*(v2 + 24) == 1)
  {
    v5 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(WebKit::WebExtensionScriptInjectionParameters *this, WTF::StringImpl *a2)
{
  if (*(this + 144) == 1)
  {
    v3 = *(this + 17);
    *(this + 17) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  if (*(this + 128) == 1)
  {
    v4 = *(this + 15);
    *(this + 15) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(this + 112) == 1)
  {
    v5 = *(this + 13);
    *(this + 13) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(this + 96) == 1)
  {
    v6 = *(this + 10);
    if (v6)
    {
      *(this + 10) = 0;
      *(this + 22) = 0;
      WTF::fastFree(v6, a2);
    }
  }

  if (*(this + 72) == 1)
  {
    v7 = *(this + 7);
    if (v7)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v7, a2);
    }
  }

  if (*(this + 48) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  }

  if (*(this + 24) == 1)
  {
    v8 = *(this + 2);
    *(this + 2) = 0;
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }
  }
}

uint64_t WebKit::WebExtensionRegisteredScriptParameters::WebExtensionRegisteredScriptParameters(uint64_t a1, uint64_t a2)
{
  v4 = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, a2);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v4 + 24, a2 + 24);
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 64), a2 + 64);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 88), a2 + 88);
  v6 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v6;
  return a1;
}

void sub_19D7C40DC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 80) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, a2);
  }

  v4 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(v2 + 40) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    WTF::URL::URL(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_19D7C419C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 40) == 1)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(WebKit::WebExtensionMenuItemParameters *this, void *a2)
{
  if (*(this + 104) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, a2);
  }

  if (*(this + 80) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(this + 16) == 1)
  {
    v6 = *(this + 1);
    *(this + 1) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }
}

uint64_t std::__optional_move_base<WebKit::WebExtensionTabParameters,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    *a1 = *a2;
    std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((a1 + 16), a2 + 16);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v4 = *(a2 + 64);
      *(a2 + 64) = 0;
      *(a1 + 64) = v4;
      *(a1 + 72) = 1;
    }

    v5 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v5;
    v6 = *(a2 + 112);
    v7 = *(a2 + 128);
    v8 = *(a2 + 144);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 128) = v7;
    *(a1 + 144) = v8;
    *(a1 + 112) = v6;
    *(a1 + 176) = 1;
  }

  return a1;
}

void sub_19D7C4368(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 176) == 1)
  {
    if (*(v2 + 72) == 1)
    {
      v4 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(v2 + 56) == 1)
    {
      v5 = *(v2 + 16);
      *(v2 + 16) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebExtensionMessageSenderParameters::WebExtensionMessageSenderParameters(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 8) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  std::__optional_move_base<WebKit::WebExtensionTabParameters,false>::__optional_move_base[abi:sn200100](a1 + 16, (a2 + 2));
  v5 = *(a2 + 25);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 200) = v5;
  WTF::URL::URL(a1 + 232, a2 + 29);
  *(a1 + 272) = *(a2 + 17);
  return a1;
}

void sub_19D7C4458(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 192) == 1)
  {
    if (*(v2 + 88) == 1)
    {
      v4 = *(v2 + 80);
      *(v2 + 80) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(v2 + 72) == 1)
    {
      v5 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  if (*(v2 + 8) == 1)
  {
    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_destruct_base<WebKit::WebExtensionTabParameters,false>::__optional_destruct_base[abi:sn200100]<WebKit::WebExtensionTabParameters>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((a1 + 16), a2 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v4 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 64) = v4;
    *(a1 + 72) = 1;
  }

  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  v6 = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  *(a1 + 112) = v6;
  *(a1 + 176) = 1;
  return a1;
}

uint64_t std::__optional_move_base<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7C45CC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::WebExtensionTabParameters>::destruct(*a1, (*a1 + 176 * v3));
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

void sub_19D7C4650(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebExtensionTabParameters>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 72) == 1)
      {
        result = *(v3 + 8);
        *(v3 + 8) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      if (*(v3 + 56) == 1)
      {
        result = *(v3 + 2);
        *(v3 + 2) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      v3 = (v3 + 176);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
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
  }

  return a1;
}

void sub_19D7C4804(_Unwind_Exception *a1)
{
  v4 = *(v1 + 25);
  *(v1 + 25) = 0;
  if (v4)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v2);
  std::__optional_storage_base<WebKit::FrameInfoData,false>::~__optional_storage_base(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::FocusedElementInformation::FocusedElementInformation(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  v13 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = v13;
  *(a1 + 208) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 200, a2 + 50);
  *(a1 + 216) = *(a2 + 54);
  v14 = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 224) = v14;
  *(a1 + 232) = *(a2 + 29);
  v15 = *(a2 + 30);
  *(a2 + 30) = 0;
  *(a1 + 240) = v15;
  *(a1 + 248) = *(a2 + 124);
  WTF::URL::URL(a1 + 256, a2 + 32);
  *(a1 + 296) = *(a2 + 148);
  v16 = *(a2 + 38);
  *(a2 + 38) = 0;
  *(a1 + 304) = v16;
  v17 = *(a2 + 39);
  *(a2 + 39) = 0;
  *(a1 + 312) = v17;
  v18 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 320) = v18;
  *(a1 + 328) = *(a2 + 164);
  *(a1 + 336) = 0;
  if (a1 != a2)
  {
    v19 = *(a2 + 42);
    *(a2 + 42) = 0;
    *(a1 + 336) = v19;
  }

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 352, a2 + 88);
  v20 = a2[23];
  v21 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 368) = v20;
  *(a1 + 384) = v21;
  std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](a1 + 416, (a2 + 26));
  return a1;
}

void sub_19D7C4980(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 44), a2);
  v6 = v2[42];
  if ((v6 & 0x8000000000000) != 0)
  {
    v11 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v5);
    }
  }

  v7 = v2[40];
  v2[40] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v2[39];
  v2[39] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = v2[38];
  v2[38] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v2[32];
  v2[32] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v12 = v2[30];
  v2[30] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v5);
  }

  v13 = v2[28];
  v2[28] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v5);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v5);
  v15 = v2[24];
  v2[24] = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebKit::FrameTreeCreationParameters>::destruct(*a1, (*a1 + 56 * v3));
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

WTF::StringImpl *WTF::VectorDestructor<true,WebKit::FrameTreeCreationParameters>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result + 40;
    do
    {
      WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3);
      v5 = *(v3 - 1);
      *(v3 - 1) = 0;
      if (v5)
      {
        WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, v4);
      }

      result = *(v3 - 2);
      *(v3 - 2) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }

      v6 = (v3 + 16);
      v3 += 56;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t WebKit::FrameTreeNodeData::FrameTreeNodeData(uint64_t a1, uint64_t a2)
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
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 352, (a2 + 352));
  return a1;
}

void sub_19D7C4CA4(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 352);
  if (v4)
  {
    *(v2 + 352) = 0;
    *(v2 + 360) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 304);
  *(v2 + 304) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v2 + 240);
  *(v2 + 240) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 208);
  v7 = *(v2 + 200);
  *(v2 + 200) = 0;
  if (v7)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 368 * v3;
    v6 = v4 + 352;
    do
    {
      WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6);
      v8 = *(v6 - 6);
      *(v6 - 6) = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(v6 - 14);
      *(v6 - 14) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor((v6 - 144));
      v10 = *(v6 - 19);
      *(v6 - 19) = 0;
      if (v10)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase((v6 - 344));
      v6 += 368;
      v5 -= 368;
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

void WTF::VectorDestructor<true,WebKit::FrameTreeNodeData>::destruct(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 352;
    do
    {
      WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      v5 = *(v3 - 48);
      *(v3 - 48) = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v3 - 112);
      *(v3 - 112) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v3 - 144);
      v7 = *(v3 - 152);
      *(v3 - 152) = 0;
      if (v7)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase((v3 - 344));
      v8 = (v3 + 16);
      v3 += 368;
    }

    while (v8 != a2);
  }
}

__n128 _ZNSt3__127__optional_copy_assign_baseIN6WebKit30GPUProcessConnectionParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(WTF::MachSendRight *a1, uint64_t a2)
{
  v3 = WTF::MachSendRight::MachSendRight(a1, a2);
  result = *(a2 + 8);
  *(v3 + 17) = *(a2 + 17);
  *(v3 + 8) = result;
  *(v3 + 40) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v3 + 40) = v5;
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(v3 + 48) = v6;
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 64) = 1;
  return result;
}

_BYTE *std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[120] = 0;
  if (*(a2 + 120) == 1)
  {
    WebKit::WebsitePoliciesData::WebsitePoliciesData(a1, a2);
    a1[120] = 1;
  }

  return a1;
}

void sub_19D7C4F34(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 120) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsitePoliciesData::WebsitePoliciesData(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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
  return a1;
}

void sub_19D7C5024(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  if (*v2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__optional_destruct_base<WebCore::PublicSuffix,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

uint64_t WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  WTF::URL::URL(a1 + 72, (a2 + 72));
  WTF::URL::URL(a1 + 112, (a2 + 112));
  v7 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v7;
  v8 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v8;
  v9 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v9;
  *(a1 + 176) = *(a2 + 176);
  v10 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 192) = v10;
  v11 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 200) = v11;
  v12 = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(a1 + 232) = *(a2 + 232);
    v13 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a1 + 240) = v13;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = *(a2 + 272);
  v14 = *(a2 + 280);
  *(a2 + 280) = 0;
  *(a1 + 280) = v14;
  v15 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a1 + 288) = v15;
  v16 = *(a2 + 296);
  *(a2 + 296) = 0;
  *(a1 + 296) = v16;
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
  *(a1 + 512) = 0u;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 512, (a2 + 512));
  return a1;
}

void sub_19D7C5250(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 512) = 0;
    *(v2 + 520) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 296);
  *(v2 + 296) = 0;
  if (v6)
  {
  }

  v7 = *(v2 + 288);
  *(v2 + 288) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 280);
  *(v2 + 280) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v8);
  }

  if (*(v2 + 264) == 1)
  {
    v9 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v9)
    {
      if (v9[4] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[4];
      }
    }
  }

  v10 = *(v2 + 208);
  *(v2 + 208) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 200);
  *(v2 + 200) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v2 + 192);
  *(v2 + 192) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v12, a2);
  }

  v13 = *(v2 + 168);
  *(v2 + 168) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(v2 + 160);
  *(v2 + 160) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(v2 + 152);
  *(v2 + 152) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(a1);
    *(a1 + 32) = 0;
    v4 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 32) = v4;
    *(a1 + 40) = 0;
    v5 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 40) = v5;
    *(a1 + 48) = 1;
  }

  return a1;
}

uint64_t WebKit::LoadParameters::LoadParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = *(a2 + 1);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 8) = v5;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 40, (a2 + 5));
  v6 = a2[24];
  a2[24] = 0;
  *(a1 + 192) = v6;
  v7 = a2[25];
  a2[25] = 0;
  *(a1 + 200) = v7;
  v8 = a2[26];
  a2[26] = 0;
  *(a1 + 208) = v8;
  v9 = a2[27];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 216) = v9;
  v10 = *(a2 + 29);
  a2[29] = 0;
  a2[30] = 0;
  *(a1 + 232) = v10;
  v11 = a2[31];
  a2[31] = 0;
  *(a1 + 248) = v11;
  v12 = a2[32];
  a2[32] = 0;
  *(a1 + 256) = v12;
  v13 = a2[33];
  a2[33] = 0;
  *(a1 + 264) = v13;
  v14 = a2[34];
  a2[34] = 0;
  *(a1 + 272) = v14;
  v15 = a2[35];
  a2[35] = 0;
  *(a1 + 280) = v15;
  v16 = a2[36];
  a2[36] = 0;
  *(a1 + 288) = v16;
  std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100]((a1 + 296), (a2 + 37));
  std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](a1 + 432, (a2 + 54));
  *(a1 + 800) = *(a2 + 400);
  v17 = a2[101];
  if (v17)
  {
    CFRetain(*(v17 + 8));
  }

  *(a1 + 808) = v17;
  v18 = *(a2 + 408);
  *(a1 + 818) = *(a2 + 818);
  *(a1 + 816) = v18;
  v19 = a2[103];
  a2[103] = 0;
  *(a1 + 824) = v19;
  *(a1 + 832) = *(a2 + 416);
  std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](a1 + 840, (a2 + 105));
  v20 = *(a2 + 56);
  v21 = *(a2 + 57);
  v22 = *(a2 + 59);
  *(a1 + 928) = *(a2 + 58);
  *(a1 + 944) = v22;
  *(a1 + 896) = v20;
  *(a1 + 912) = v21;
  return a1;
}

void sub_19D7C55D0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 + 784) == 1)
  {
    v4 = *(v2 + 736);
    *(v2 + 736) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v2 + 672);
    *(v2 + 672) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 640);
    v6 = *(v2 + 632);
    *(v2 + 632) = 0;
    if (v6)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 440));
  }

  if (*(v2 + 416) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData((v2 + 296), a2);
  }

  v7 = *(v2 + 288);
  *(v2 + 288) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 280);
  *(v2 + 280) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 272);
  *(v2 + 272) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(v2 + 264);
  *(v2 + 264) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 256);
  *(v2 + 256) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v2 + 248);
  *(v2 + 248) = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v2 + 240));
  v13 = *(v2 + 232);
  *(v2 + 232) = 0;
  if (v13)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 40));
  v15 = *v2;
  *v2 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::LoadParameters::~LoadParameters(WebKit::LoadParameters *this, void *a2)
{
  if (*(this + 888) == 1)
  {
    v3 = *(this + 110);
    if (v3)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(this + 109);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 840);
  }

  v5 = *(this + 103);
  *(this + 103) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 101);
  *(this + 101) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  if (*(this + 784) == 1)
  {
    v7 = *(this + 92);
    *(this + 92) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(this + 84);
    *(this + 84) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 640);
    v9 = *(this + 79);
    *(this + 79) = 0;
    if (v9)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((this + 440));
  }

  if (*(this + 416) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData((this + 296), a2);
  }

  v10 = *(this + 36);
  *(this + 36) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 35);
  *(this + 35) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 34);
  *(this + 34) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 33);
  *(this + 33) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(this + 32);
  *(this + 32) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(this + 31);
  *(this + 31) = 0;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 2);
    (*(*v15 + 8))(v15);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 30);
  v16 = *(this + 29);
  *(this + 29) = 0;
  if (v16)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 40));
  v18 = *this;
  *this = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }
  }
}

uint64_t WebCore::ResourceResponseBase::ResourceResponseBase(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a2 + 40) = 0;
  v6[5] = v4;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6[7] = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  v6[8] = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  v6[10] = 0;
  v6[6] = v5;
  v6[9] = v9;
  v6[11] = 0;
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
    v18 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(a1 + 120) = v18;
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
  return a1;
}

void sub_19D7C5B1C(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3, a2);
  v8 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *v2;
  *v2 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebCore::PrivateClickMeasurement,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[312] = 0;
  if (*(a2 + 312) == 1)
  {
    WebCore::PrivateClickMeasurement::PrivateClickMeasurement(a1, a2);
    a1[312] = 1;
  }

  return a1;
}

void sub_19D7C5C54(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 312) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::PrivateClickMeasurement::PrivateClickMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v6;
  std::__optional_move_base<WebCore::PCM::AttributionTriggerData,false>::__optional_move_base[abi:sn200100](a1 + 56, a2 + 56);
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v8 = *(a2 + 224);
    *(a2 + 224) = 0;
    *(a1 + 224) = v8;
    *(a1 + 232) = 1;
  }

  v9 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 240) = v9;
  v10 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v10;
  v11 = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a1 + 256) = v11;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v12 = *(a2 + 272);
    *(a2 + 272) = 0;
    *(a1 + 272) = v12;
    v13 = *(a2 + 280);
    *(a2 + 280) = 0;
    *(a1 + 280) = v13;
    v14 = *(a2 + 288);
    *(a2 + 288) = 0;
    *(a1 + 288) = v14;
    *(a1 + 296) = 1;
  }

  v15 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 304) = v15;
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 33);
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(v8 - 23) = v7;
  *(v8 - 32) = v6;
  *(v8 + 128) = 0;
  if (*(a2 + 184) == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v8, a2 + 56);
  }

  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v10 = *(a2 + 224);
    *(a2 + 224) = 0;
    *(a1 + 224) = v10;
    *(a1 + 232) = 1;
  }

  v11 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 240) = v11;
  v12 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v12;
  v13 = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a1 + 256) = v13;
  v14 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v14;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v15 = *(a2 + 272);
    *(a2 + 272) = 0;
    *(a1 + 272) = v15;
    v16 = *(a2 + 280);
    *(a2 + 280) = 0;
    *(a1 + 280) = v16;
    v17 = *(a2 + 288);
    *(a2 + 288) = 0;
    *(a1 + 288) = v17;
    *(a1 + 296) = 1;
  }

  v18 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 304) = v18;
  return a1;
}

uint64_t std::__optional_move_base<WebCore::PCM::AttributionTriggerData,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v2 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      v10 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(result + 8) = v10;
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
      v11 = *(a2 + 40);
      *(a2 + 40) = 0;
      *(result + 40) = v11;
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
      *(a2 + 80) = 0;
      *(result + 72) = v6;
      *(result + 88) = 1;
    }

    *(result + 96) = 0;
    *(result + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v7 = *(a2 + 96);
      *(a2 + 96) = 0;
      *(result + 96) = v7;
      v8 = *(a2 + 104);
      *(a2 + 104) = 0;
      *(result + 104) = v8;
      v9 = *(a2 + 112);
      *(a2 + 112) = 0;
      *(result + 112) = v9;
      *(result + 120) = 1;
    }

    *(result + 128) = 1;
  }

  return result;
}

_BYTE *std::__optional_move_base<WebKit::WebHitTestResultData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[848] = 0;
  if (*(a2 + 848) == 1)
  {
    WebKit::WebHitTestResultData::WebHitTestResultData(a1, a2);
    a1[848] = 1;
  }

  return a1;
}

void sub_19D7C5EF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 848) == 1)
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebHitTestResultData::WebHitTestResultData(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v8;
  v9 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v9;
  v10 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v10;
  v11 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v11;
  v12 = *(a2 + 4);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 64) = v12;
  std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](a1 + 96, (a2 + 12));
  v13 = *(a2 + 29);
  *(a1 + 480) = a2[60];
  *(a1 + 464) = v13;
  v14 = a2[61];
  a2[61] = 0;
  *(a1 + 488) = v14;
  v15 = a2[62];
  a2[62] = 0;
  *(a1 + 496) = v15;
  v16 = a2[63];
  a2[63] = 0;
  *(a1 + 504) = v16;
  v17 = a2[64];
  a2[64] = 0;
  *(a1 + 512) = v17;
  v18 = a2[65];
  a2[65] = 0;
  *(a1 + 520) = v18;
  v19 = a2[66];
  a2[66] = 0;
  *(a1 + 528) = v19;
  LOWORD(v19) = *(a2 + 268);
  *(a1 + 538) = *(a2 + 538);
  *(a1 + 536) = v19;
  std::__optional_move_base<WebCore::ResourceResponse,false>::__optional_move_base[abi:sn200100](a1 + 544, (a2 + 68));
  *(a1 + 816) = a2[102];
  v20 = a2[103];
  a2[103] = 0;
  *(a1 + 824) = v20;
  v21 = a2[104];
  a2[104] = 0;
  *(a1 + 832) = v21;
  v22 = a2[105];
  a2[105] = 0;
  *(a1 + 840) = v22;
  return a1;
}

void sub_19D7C6060(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 528);
  *(v2 + 528) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(v2 + 520);
  *(v2 + 520) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v5, a2);
  }

  v6 = *(v2 + 512);
  *(v2 + 512) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  }

  v7 = *(v2 + 504);
  *(v2 + 504) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 496);
  *(v2 + 496) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 488);
  *(v2 + 488) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  if (*(v2 + 448) == 1)
  {
    v10 = *(v2 + 400);
    *(v2 + 400) = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v2 + 336);
    *(v2 + 336) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 304);
    v12 = *(v2 + 296);
    *(v2 + 296) = 0;
    if (v12)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 104));
  }

  v13 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  v19 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  v20 = *v2;
  *v2 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebCore::ResourceResponse,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    WebCore::ResourceResponseBase::ResourceResponseBase(a1, a2);
    v4 = *(a2 + 248);
    *(a2 + 248) = 0;
    *(a1 + 248) = v4;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = 1;
  }

  return a1;
}

void sub_19D7C62D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 264) == 1)
  {
    v4 = *(v2 + 248);
    *(v2 + 248) = 0;
    if (v4)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NavigationActionData::~NavigationActionData(WebKit::NavigationActionData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 362);
  *(this + 362) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 361);
  *(this + 361) = 0;
  if (v4)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 2696));
  v5 = *(this + 336);
  *(this + 336) = 0;
  if (v5)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 2496));
  v7 = *(this + 304);
  *(this + 304) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 296);
  *(this + 296) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 2336);
  v9 = *(this + 291);
  *(this + 291) = 0;
  if (v9)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 2136));
  v11 = *(this + 258);
  *(this + 258) = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 250);
  *(this + 250) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 1968);
  v13 = *(this + 245);
  *(this + 245) = 0;
  if (v13)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((this + 1768));
  if (*(this + 1744) == 1)
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData((this + 896), v14);
  }

  if (*(this + 872) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 560), v14);
  }

  if (*(this + 552) == 1)
  {
    v15 = *(this + 68);
    if (v15)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v15, v14);
    }

    v16 = *(this + 67);
    if (v16)
    {
      WTF::fastFree((v16 - 16), v14);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 504);
  }

  v17 = *(this + 61);
  *(this + 61) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 400);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 368);
  v19 = *(this + 45);
  *(this + 45) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }

  v20 = *(this + 42);
  *(this + 42) = 0;
  if (v20)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 88), v18);
  v22 = *(this + 9);
  *(this + 9) = 0;
  if (v22)
  {
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }
  }
}

uint64_t _ZNSt3__127__optional_copy_assign_baseIN6WebKit34NetworkProcessConnectionParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
  *(a1 + 40) = 1;
  return a1;
}

void sub_19D7C6568(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::PasteboardImage::~PasteboardImage(WebCore::PasteboardImage *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, a2);
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (v9[4] == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --v9[4];
    }
  }
}

uint64_t std::__optional_destruct_base<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (v2[4] == 1)
      {
        (*(*v2 + 8))(v2);
      }

      else
      {
        --v2[4];
      }
    }
  }

  return a1;
}

uint64_t WebCore::PasteboardWebContent::PasteboardWebContent(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  LOBYTE(v3) = *(a2 + 8);
  v4 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v4;
  v5 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v5;
  v6 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v6;
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  v9 = a2[7];
  a2[7] = 0;
  *(a1 + 64) = 0;
  *(a1 + 8) = v3;
  *(a1 + 56) = v9;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  return a1;
}

void sub_19D7C67D8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  v10 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v11 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 8))(v11);
  }

  v12 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  v13 = *v2;
  *v2 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::PasteboardWebContent::~PasteboardWebContent(WebCore::PasteboardWebContent *this, void *a2)
{
  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v3);
    }
  }
}

void WebKit::PolicyDecision::~PolicyDecision(WebKit::PolicyDecision *this, WTF::StringImpl *a2)
{
  if (*(this + 200) == 1)
  {
    v3 = *(this + 24);
    *(this + 24) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  if (*(this + 176) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 21);
  }

  if (*(this + 160) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData((this + 40), a2);
  }
}

uint64_t WebKit::WebTouchEvent::WebTouchEvent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F10E83B8;
  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v5;
  *(a1 + 12) = v4;
  *a1 = &unk_1F10E7D80;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return a1;
}

void sub_19D7C6CA4(_Unwind_Exception *a1, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  v9 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v9, v8);
  }

  _Unwind_Resume(a1);
}

void WebKit::WebEvent::~WebEvent(WebKit::WebEvent *this, void *a2)
{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

uint64_t WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 << 7;
    v6 = *a1;
    v7 = *a1;
    do
    {
      v8 = *v7;
      v7 = (v7 + 128);
      (*v8)(v6);
      v4 = (v4 + 128);
      v6 = v7;
      v5 -= 128;
    }

    while (v5);
  }

  v9 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v9, a2);
  }

  return a1;
}

uint64_t std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::~pair(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 56 * v3;
    do
    {
      v4 = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v4, a2) + 56;
      v5 -= 56;
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

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = -1;
  if (*(a2 + 48) <= 1u)
  {
    if (*(a2 + 48))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v7;
      *(a1 + 8) = v6;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    goto LABEL_7;
  }

  if (*(a2 + 48) == 2)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
LABEL_7:
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

void sub_19D7C6F3C(_Unwind_Exception *a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 48);
  if (v3 != 255)
  {
    v4 = *a1;
    if (v3 == 2 || v3 == 1)
    {
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  *(a1 + 48) = -1;
  return a1;
}

void *mpark::detail::alt<0ul,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::alt<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7C700C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl **std::optional<WebKit::HTTPBody>::~optional(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  if (*(result + 24) == 1)
  {
    v4 = result;
    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((result + 1), a2);
    result = v4;
    v3 = *v4;
    *v4 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v2);
        return v4;
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::TextRecognitionWordData>::destruct(*a1, (*a1 + 48 * v3));
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

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::TextRecognitionWordData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::DOMCacheEngine::CacheInfo>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = v3[2];
      v3[2] = 0;
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

uint64_t WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, char a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 24, a5);
  v16 = *(a5 + 152);
  *(a5 + 152) = 0;
  *(a1 + 176) = v16;
  v17 = *(a5 + 160);
  *(a5 + 160) = 0;
  *(a1 + 184) = v17;
  v18 = *(a5 + 168);
  *(a5 + 168) = 0;
  *(a1 + 192) = v18;
  v19 = *(a5 + 176);
  *(a1 + 208) = *(a5 + 184);
  *(a1 + 200) = v19;
  v20 = *(a5 + 192);
  *(a5 + 192) = 0;
  *(a1 + 216) = v20;
  LODWORD(v20) = *a6;
  *(a1 + 227) = *(a6 + 3);
  *(a1 + 224) = v20;
  v21 = *(a6 + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  *(a1 + 232) = v21;
  v22 = *(a6 + 32);
  *(a1 + 240) = *(a6 + 16);
  *(a1 + 256) = v22;
  v23 = *a7;
  *a7 = 0;
  *(a1 + 272) = v23;
  *(a1 + 280) = a8;
  WebCore::ResourceResponseData::ResourceResponseData(a1 + 288, a9);
  *(a1 + 584) = 0;
  *(a1 + 592) = -1;
  if (!*(a10 + 8))
  {
    v24 = 0;
    goto LABEL_7;
  }

  if (*(a10 + 8) != 255)
  {
    v24 = *a10;
    *a10 = 0;
LABEL_7:
    *(a1 + 584) = v24;
    *(a1 + 592) = *(a10 + 8);
  }

  *(a1 + 600) = a11;
  return a1;
}

void sub_19D7C72D0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = v2[34];
  v2[34] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[29];
  v2[29] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[27];
  v2[27] = 0;
  if (v6)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 3));
  _Unwind_Resume(a1);
}

uint64_t WebCore::ResourceResponseData::ResourceResponseData(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(v6 + 40) = v4;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v6 + 56) = v7;
  LOWORD(v7) = *(a2 + 64);
  v8 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(v6 + 72) = v8;
  v9 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 48) = v5;
  *(v6 + 64) = v7;
  *(v6 + 80) = v9;
  *(v6 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v6 + 88, (a2 + 88));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 104, (a2 + 104));
  *(a1 + 120) = 0;
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    v10 = *(a2 + 136);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = v10;
    v11 = *(a2 + 152);
    v12 = *(a2 + 168);
    v13 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 168) = v12;
    *(a1 + 184) = v13;
    *(a1 + 152) = v11;
    v14 = *(a2 + 208);
    *(a2 + 208) = 0;
    *(a1 + 208) = v14;
    v15 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v15;
    v16 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a1 + 240) = v16;
    *(a1 + 248) = 1;
  }

  v17 = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 256) = v17;
  v18 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v18;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    v20 = *(a2 + 280);
    *(a2 + 280) = 0;
    *(a1 + 280) = v20;
    *(a1 + 288) = 1;
  }

  return a1;
}

void sub_19D7C7490(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3, a2);
  v8 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *v2;
  *v2 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D7C7570(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7C74A4);
}

uint64_t WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  WebCore::ResourceRequestBase::RequestData::RequestData(a1 + 24, a2 + 24);
  v5 = *(a2 + 22);
  *(a2 + 22) = 0;
  *(a1 + 176) = v5;
  v6 = *(a2 + 23);
  *(a2 + 23) = 0;
  *(a1 + 184) = v6;
  v7 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 192) = v7;
  v8 = *(a2 + 25);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v8;
  v9 = *(a2 + 27);
  *(a2 + 27) = 0;
  *(a1 + 216) = v9;
  LODWORD(v9) = *(a2 + 56);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 224) = v9;
  v10 = *(a2 + 29);
  *(a2 + 29) = 0;
  *(a1 + 232) = v10;
  v11 = a2[16];
  *(a1 + 240) = a2[15];
  *(a1 + 256) = v11;
  v12 = *(a2 + 34);
  *(a2 + 34) = 0;
  *(a1 + 272) = v12;
  *(a1 + 280) = *(a2 + 280);
  WebCore::ResourceResponseData::ResourceResponseData(a1 + 288, (a2 + 18));
  *(a1 + 584) = 0;
  *(a1 + 592) = -1;
  if (!*(a2 + 592))
  {
    v13 = 0;
    goto LABEL_5;
  }

  if (*(a2 + 592) != 255)
  {
    v13 = *(a2 + 73);
    *(a2 + 73) = 0;
LABEL_5:
    *(a1 + 584) = v13;
    *(a1 + 592) = *(a2 + 592);
  }

  *(a1 + 600) = *(a2 + 75);
  return a1;
}

void sub_19D7C7690(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = v2[34];
  v2[34] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[29];
  v2[29] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[27];
  v2[27] = 0;
  if (v6)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 3));
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v3 + 2);
          (*(*v3 + 8))(v3);
        }
      }
    }
  }

  else if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v2);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  LODWORD(v4) = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a2 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        *a1 = *a2;
        LOBYTE(v4) = 5;
      }

      else
      {
        v4 = *a2;
        *a2 = 0;
        *a1 = v4;
        LOBYTE(v4) = 6;
      }
    }

    else if ((v4 - 7) >= 2)
    {
      return a1;
    }
  }

  else if (*(a2 + 16) <= 1u)
  {
    if (!*(a2 + 16))
    {
      *a1 = 0;
    }
  }

  else if (v4 == 2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    LOBYTE(v4) = *(a2 + 16);
  }

  else if (v4 == 3)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    LOBYTE(v4) = 3;
  }

  else
  {
    *a1 = *a2;
    LOBYTE(v4) = 4;
  }

  *(a1 + 16) = v4;
  return a1;
}

void sub_19D7C787C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 16);
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
    }
  }

  else if (v5 <= 8 && ((1 << v5) & 0x1B0) == 0)
  {
    if (v5 == 3)
    {
      v6 = *v2;
      *v2 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }
    }

    else if (v5 == 6)
    {
      v7 = *v2;
      *v2 = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v7, a2);
      }
    }
  }

  *(v2 + 16) = -1;
  _Unwind_Resume(exception_object);
}