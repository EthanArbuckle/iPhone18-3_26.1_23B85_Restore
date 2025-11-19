uint64_t IPC::ArgumentCoder<WebCore::SVGFilter,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v8 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  LODWORD(v9) = v7;
  if ((v7 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v10 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v9 & 1) == 0)
    {
      goto LABEL_73;
    }

    v64 = v4;
    v65 = v8;
    v66 = 1;
    v11 = v10;
  }

  else
  {
    LOBYTE(v64) = 0;
    v66 = 0;
    IPC::Decoder::markInvalid(a1);
    v11 = *a1;
  }

  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  if (v12 <= &v13[-v11])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_87;
  }

  v14 = v13 + 1;
  *(a1 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_87:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_88;
  }

  if (*v13 >= 3u)
  {
LABEL_88:
    IPC::Decoder::markInvalid(a1);
    v12 = *(a1 + 1);
    v14 = *(a1 + 2);
    LODWORD(v9) = 1;
    v11 = *a1;
    goto LABEL_13;
  }

  LODWORD(v9) = 0;
LABEL_13:
  v15 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15 - v11;
  v17 = v12 >= v16;
  v18 = v12 - v16;
  v51 = v10;
  if (v17 && v18 > 7)
  {
    *(a1 + 2) = v15 + 1;
    if (v15)
    {
      v6 = &v67;
      v8 = *v15;
      v58 = 0;
      v59 = 0;
      if (v8 >= 0x8000)
      {
        do
        {
          IPC::Decoder::decode<WebCore::SVGFilterExpressionTerm>(&v67, a1);
          if ((v69 & 1) == 0)
          {
            goto LABEL_75;
          }

          if (HIDWORD(v59) == v59)
          {
            WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SVGFilterExpressionTerm>(&v58, &v67);
          }

          else
          {
            v45 = HIDWORD(v59) + 1;
            v46 = (v58 + 32 * HIDWORD(v59));
            v47 = v68;
            *v46 = v67;
            v46[1] = v47;
            HIDWORD(v59) = v45;
          }

          --v8;
        }

        while (v8);
        WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v58, HIDWORD(v59));
      }

      else if (v8)
      {
        LODWORD(v59) = v8;
        v58 = WTF::fastMalloc((32 * v8));
        do
        {
          IPC::ArgumentCoder<WebCore::SVGFilterExpressionTerm,void>::decode(&v67, a1);
          if ((v69 & 1) == 0)
          {
            goto LABEL_74;
          }

LABEL_21:
          if (HIDWORD(v59) == v59)
          {
            WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SVGFilterExpressionTerm>(&v58, &v67);
          }

          else
          {
            v19 = HIDWORD(v59) + 1;
            v20 = (v58 + 32 * HIDWORD(v59));
            v21 = *(v6 + 16);
            *v20 = v67;
            v20[1] = v21;
            HIDWORD(v59) = v19;
          }

          --v8;
        }

        while (v8);
      }

      v22 = v58;
      v58 = 0;
      v61 = v22;
      v62 = v59;
      v23 = 1;
      v63 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  LOBYTE(v61) = 0;
  v63 = 0;
  while (2)
  {
    IPC::Decoder::markInvalid(a1);
LABEL_28:
    v24 = *(a1 + 1);
    v25 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25 - *a1;
    v17 = v24 >= v26;
    v27 = v24 - v26;
    if (!v17 || v27 <= 7)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_85:
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v67) = 0;
      LOBYTE(v68) = 0;
      goto LABEL_95;
    }

    *(a1 + 2) = v25 + 1;
    if (!v25)
    {
      goto LABEL_85;
    }

    v6 = *v25;
    v58 = 0;
    v59 = 0;
    if (v6 < 0x20000)
    {
      if (!v6)
      {
LABEL_42:
        *&v67 = v58;
        v32 = v59;
        v58 = 0;
        v59 = 0;
        *(&v67 + 1) = v32;
        LOBYTE(v68) = 1;
        result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v7);
        goto LABEL_43;
      }

      v29 = WTF::fastMalloc((8 * v6));
      LODWORD(v59) = v6;
      v58 = v29;
      while (1)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(&v53, a1);
        if ((v54 & 1) == 0)
        {
          goto LABEL_102;
        }

        v30 = HIDWORD(v59);
        if (HIDWORD(v59) == v59)
        {
          WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(&v58, &v53);
          if ((v54 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v31 = v53;
          v53 = 0;
          *(v58 + HIDWORD(v59)) = v31;
          HIDWORD(v59) = v30 + 1;
        }

        WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v53, v7);
LABEL_41:
        if (!--v6)
        {
          goto LABEL_42;
        }
      }
    }

    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(&v53, a1);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v48 = HIDWORD(v59);
      if (HIDWORD(v59) == v59)
      {
        WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(&v58, &v53);
        if ((v54 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v49 = v53;
        v53 = 0;
        *(v58 + HIDWORD(v59)) = v49;
        HIDWORD(v59) = v48 + 1;
      }

      WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v53, v7);
LABEL_100:
      if (!--v6)
      {
        WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v58, HIDWORD(v59));
        goto LABEL_42;
      }
    }

LABEL_102:
    LOBYTE(v67) = 0;
    LOBYTE(v68) = 0;
    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v7);
LABEL_95:
    result = IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
      goto LABEL_72;
    }

LABEL_43:
    if ((v63 & 1) == 0 || (v68 & 1) == 0)
    {
      goto LABEL_73;
    }

    result = WebCore::SVGFilter::isValidSVGFilterExpression();
    if (result)
    {
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v58);
      if ((v60 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      v6 = IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterRenderingMode>>(a1);
      v50 = v9;
      v35 = a2;
      v36 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
      v8 = v37;
      v56 = v36;
      v57 = v37;
      v9 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      a2 = v38;
      if ((v38 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      v39 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      v41 = v40;
      if ((v40 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a1);
      }

      v42 = *a1;
      if (*a1)
      {
        if (a2 & 1) != 0 && (v41)
        {
          v53 = v9;
          v54 = v39;
          v55 = 1;
LABEL_57:
          if (v51 && !v50 && (v63 & 1) != 0 && (v68 & 1) != 0 && (v60 & 1) != 0 && v6 > 0xFFu && (v8 & 1) != 0 && v42)
          {
            WebCore::SVGFilter::create();
            v43 = v52;
            v52 = 0;
            *v35 = v43;
            v35[8] = 1;
            result = WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v52, v44);
            break;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        IPC::Decoder::markInvalid(a1);
        if (v69)
        {
          goto LABEL_21;
        }

LABEL_75:
        v23 = 0;
        LOBYTE(v61) = 0;
        v63 = 0;
LABEL_25:
        if (v58)
        {
          WTF::fastFree(v58, v7);
        }

        if ((v23 & 1) == 0)
        {
          continue;
        }

        goto LABEL_28;
      }

      LOBYTE(v53) = 0;
      v55 = 0;
      result = IPC::Decoder::markInvalid(a1);
      if (*a1)
      {
        goto LABEL_57;
      }

      *v35 = 0;
      v35[8] = 0;
    }

    else
    {
LABEL_72:
      *a2 = 0;
      a2[8] = 0;
    }

    break;
  }

  if (v68 == 1)
  {
    result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v34);
  }

  if (v63 == 1)
  {
    result = v61;
    if (v61)
    {
      v61 = 0;
      LODWORD(v62) = 0;
      return WTF::fastFree(result, v34);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(a1, a2);
  v4 = *(a2 + 20);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v5, v6);
}

void *IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::encode(WTF *a1, void *a2)
{
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(a1, a2);
  v7 = a2[2];
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, &v7);
  v4 = a2[3];
  v5 = a2[4];

  return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, v4, v5);
}

void IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::decode(a1, &v13);
  v4 = v15;
  if ((v15 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v5 = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v7 = v6;
  v11 = v5;
  v12 = v6;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v9);
  if ((v10 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (*a1)
  {
    if (v4 & 1) != 0 && (v7 & 1) != 0 && (v10)
    {
      WebCore::PixelBufferSourceView::create(&v13, &v11, v9[0], v9[1], a2);
      if ((v15 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[40] = 0;
  if (!v4)
  {
    return;
  }

LABEL_10:
  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_19D771FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef cf, char a16)
{
  if (v16)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::PixelBufferSourceView::create@<X0>(__int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = WebCore::PixelBuffer::supportedPixelFormat();
  if (result)
  {
    result = WebCore::PixelBuffer::computeBufferSize();
    if (v16)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4 == v17;
    }

    if (v11)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      if (v13)
      {
        result = CFRetain(v13);
      }

      v14 = *a2;
      *a5 = v12;
      *(a5 + 8) = v13;
      *(a5 + 16) = v14;
      *(a5 + 24) = a3;
      *(a5 + 32) = a4;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      *a5 = 0;
    }

    *(a5 + 40) = v15;
  }

  else
  {
    *a5 = 0;
    *(a5 + 40) = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MarkupExclusionRule,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::AtomString>(a1, &v49);
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
    v44 = *(a1 + 3);
    if (v44)
    {
      if (v4)
      {
        (*(*v44 + 16))(v44);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_60:
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45 && v4)
    {
      (*(*v45 + 16))(v45);
    }

    LOBYTE(v46) = 0;
LABEL_49:
    v27 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      goto LABEL_52;
    }

    while (*a1)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      if (v28)
      {
        result = (*(*result + 16))(result, v27);
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    goto LABEL_28;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_60;
  }

  v11 = *v5;
  v54 = 0;
  v55 = 0;
  if (v11 < 0x10000)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = WTF::fastMalloc((16 * v11));
    LODWORD(v55) = v11;
    v54 = v12;
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::AtomString,WTF::AtomString>>(&v51, a1);
      if ((v53 & 1) == 0)
      {
        goto LABEL_48;
      }

      if (HIDWORD(v55) != v55)
      {
        break;
      }

      v13 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v54, HIDWORD(v55) + 1, &v51);
      v14 = HIDWORD(v55) + 1;
      v15 = (v54 + 16 * HIDWORD(v55));
      v16 = *v13;
      *v13 = 0;
      *v15 = v16;
      v17 = v13[1];
      v13[1] = 0;
      v15[1] = v17;
      HIDWORD(v55) = v14;
      if (v53)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    v18 = HIDWORD(v55) + 1;
    v19 = (v54 + 16 * HIDWORD(v55));
    v20 = v51;
    v51 = 0;
    *v19 = v20;
    v21 = v52;
    v52 = 0;
    v19[1] = v21;
    HIDWORD(v55) = v18;
LABEL_15:
    v22 = v52;
    v52 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v6);
    }

    v23 = v51;
    v51 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v6);
    }

    goto LABEL_21;
  }

  do
  {
    IPC::Decoder::decode<std::pair<WTF::AtomString,WTF::AtomString>>(&v51, a1);
    if ((v53 & 1) == 0)
    {
LABEL_48:
      LOBYTE(v46) = 0;
      WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v6);
      goto LABEL_49;
    }

    if (HIDWORD(v55) == v55)
    {
      v32 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v54, HIDWORD(v55) + 1, &v51);
      v33 = HIDWORD(v55) + 1;
      v34 = (v54 + 16 * HIDWORD(v55));
      v35 = *v32;
      *v32 = 0;
      *v34 = v35;
      v36 = v32[1];
      v32[1] = 0;
      v34[1] = v36;
      HIDWORD(v55) = v33;
      if ((v53 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v37 = HIDWORD(v55) + 1;
      v38 = (v54 + 16 * HIDWORD(v55));
      v39 = v51;
      v51 = 0;
      *v38 = v39;
      v40 = v52;
      v52 = 0;
      v38[1] = v40;
      HIDWORD(v55) = v37;
    }

    v41 = v52;
    v52 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v6);
    }

    v42 = v51;
    v51 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v6);
    }

LABEL_44:
    --v11;
  }

  while (v11);
  if (v55 > HIDWORD(v55))
  {
    v43 = v54;
    if (HIDWORD(v55))
    {
      LODWORD(v55) = HIDWORD(v55);
      v54 = WTF::fastRealloc(v54, (16 * HIDWORD(v55)));
    }

    else if (v54)
    {
      v54 = 0;
      LODWORD(v55) = 0;
      WTF::fastFree(v43, v6);
    }
  }

LABEL_22:
  v46 = v54;
  v24 = v55;
  v25 = HIDWORD(v55);
  v54 = 0;
  v55 = 0;
  v47 = __PAIR64__(v25, v24);
  v48 = 1;
  result = WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v6);
  if (*a1)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_51;
    }

    v29 = v49;
    v49 = 0;
    v30 = v46;
    v46 = 0;
    v47 = 0;
    v51 = 0;
    v52 = 0;
    *a2 = v29;
    *(a2 + 8) = v30;
    v53 = 0;
    *(a2 + 16) = v24;
    *(a2 + 20) = v25;
    *(a2 + 24) = 1;
    WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v27);
    v31 = v51;
    v51 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v27);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  result = WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v27);
LABEL_28:
  if (v50 == 1)
  {
    result = v49;
    v49 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v27);
      }
    }
  }

  return result;
}

void sub_19D7724C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, WTF::StringImpl *a16, char a17)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::SystemImage,void>::encode(IPC::Encoder *result, WebCore::ARKitBadgeSystemImage *a2)
{
  v3 = result;
  if (*(a2 + 12) == 1)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);

    return IPC::ArgumentCoder<WebCore::ARKitBadgeSystemImage,void>::encode(v3, a2);
  }

  else if (!*(a2 + 12))
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);
    v4 = *(a2 + 13);
    return IPC::Encoder::operator<<<BOOL>(v3, &v4);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SystemImage,void>::encode(uint64_t a1, WebCore::ARKitBadgeSystemImage *this)
{
  if (*(this + 12) == 1)
  {
    if (*(a1 + 8))
    {
      **a1 = 1;
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_13;
      }

      ++*a1;
      *(a1 + 8) = v7 - 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    return IPC::ArgumentCoder<WebCore::ARKitBadgeSystemImage,void>::encode(a1, this);
  }

  if (*(this + 12))
  {
    return a1;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_14;
  }

  **a1 = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*a1 + 1);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v3)
  {
LABEL_14:
    *a1 = 0;
    *(a1 + 8) = 0;
    return a1;
  }

  *v5 = *(this + 13);
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_13;
  }

  ++*a1;
  *(a1 + 8) = v6 - 1;
  return a1;
}

unint64_t IPC::ArgumentCoder<WebCore::SystemImage,void>::decode@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 8) = 0;
    v27 = *(result + 24);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_58;
  }

  *(result + 16) = v5 + 1;
  if (!v5)
  {
LABEL_58:
    *v2 = 0;
    *(v2 + 1) = 0;
    v28 = *(v2 + 3);
    if (v28)
    {
      if (v4)
      {
        (*(*v28 + 16))(v28);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_61;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_61:
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result, v6);
        v8 = 0;
        v6 = *v2;
        if (*v2)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_13:
    *a2 = 0;
    a2[8] = 0;
    return result;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_61;
  }

  v8 = v7 | 0x100;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v8 < 0x100 || v8 != 0)
  {
    if (v8 < 0x100 || v8 != 1)
    {
      goto LABEL_13;
    }

    v15 = *(v2 + 1);
    v16 = ((*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v15 >= v16 - v6 && v15 - (v16 - v6) > 7)
    {
      *(v2 + 2) = v16 + 8;
      if (v16)
      {
        v18 = *v16;
        if ((*v16 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          v19 = 1;
          goto LABEL_31;
        }

        goto LABEL_54;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v24 = *(v2 + 3);
      if (v24)
      {
        if (v15)
        {
          (*(*v24 + 16))(v24);
          v6 = *v2;
          v15 = *(v2 + 1);
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0;
      }

      v6 = 0;
    }

LABEL_51:
    *v2 = 0;
    *(v2 + 1) = 0;
    v25 = *(v2 + 3);
    if (v25)
    {
      if (v15)
      {
        result = (*(*v25 + 16))(v25, v6);
        if (*v2)
        {
          goto LABEL_46;
        }

        v6 = 0;
        v15 = *(v2 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0;
    }

    v6 = 0;
LABEL_54:
    *v2 = 0;
    *(v2 + 1) = 0;
    v26 = *(v2 + 3);
    if (v26 && v15)
    {
      (*(*v26 + 16))(v26, v6);
    }

    v19 = 0;
    v18 = 0;
LABEL_31:
    result = IPC::Decoder::decode<WebCore::FloatPoint>(v2);
    if (*v2)
    {
      if (v19 & 1) != 0 && (v20)
      {
        v21 = result;
        v22 = HIDWORD(result);
        if (*MEMORY[0x1E69E2650])
        {
          result = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2650], v20);
        }

        else
        {
          result = WebCore::ARKitBadgeSystemImage::operatorNewSlow(0x28);
        }

        *(result + 8) = 1;
        *(result + 12) = 1;
        *result = MEMORY[0x1E69E2E70] + 16;
        *(result + 16) = 0;
        *(result + 24) = v18;
        *(result + 32) = v21;
        *(result + 36) = v22;
        if (*v2)
        {
          *a2 = result;
          goto LABEL_38;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v23 = *(v2 + 1);
      *v2 = 0;
      *(v2 + 1) = 0;
      result = *(v2 + 3);
      if (!result)
      {
        goto LABEL_13;
      }

      if (v23)
      {
        result = (*(*result + 16))(result, 0);
      }

      if (!*v2)
      {
        goto LABEL_13;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    *a2 = 0;
    a2[8] = 0;
LABEL_76:
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      v32 = *(*result + 8);

      return v32();
    }

    return result;
  }

  v11 = *(v2 + 1);
  v12 = *(v2 + 2);
  if (v11 <= v12 - v6)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v29 = *(v2 + 3);
    if (v29)
    {
      if (v11)
      {
        (*(*v29 + 16))(v29);
        v6 = *v2;
        v11 = *(v2 + 1);
LABEL_68:
        *v2 = 0;
        *(v2 + 1) = 0;
        v30 = *(v2 + 3);
        if (v30)
        {
          if (v11)
          {
            (*(*v30 + 16))(v30, v6);
            v6 = *v2;
            v11 = *(v2 + 1);
            goto LABEL_71;
          }
        }

        else
        {
          v11 = 0;
        }

        v6 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v11 = 0;
    }

    v6 = 0;
    goto LABEL_68;
  }

  *(v2 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_68;
  }

  v13 = *v12;
  if (v13 < 2)
  {
    if (*MEMORY[0x1E69E2690])
    {
      result = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2690], v6);
    }

    else
    {
      result = WebCore::ApplePayLogoSystemImage::operatorNewSlow(0x10);
    }

    v14 = 1;
    *(result + 8) = 1;
    *(result + 12) = 0;
    *result = MEMORY[0x1E69E2E90] + 16;
    *(result + 13) = v13;
    goto LABEL_20;
  }

LABEL_71:
  *v2 = 0;
  *(v2 + 1) = 0;
  result = *(v2 + 3);
  if (!result)
  {
LABEL_72:
    v14 = 0;
    goto LABEL_73;
  }

  if (!v11)
  {
    result = 0;
    goto LABEL_72;
  }

  (*(*result + 16))(result, v6);
  v33 = 0;
  result = *(v2 + 3);
  v34 = *v2;
  v35 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  if (result && v35)
  {
    result = (*(*result + 16))(result, v34, v35);
    if (*v2)
    {
      goto LABEL_46;
    }

    v33 = *(v2 + 1);
    result = *(v2 + 3);
  }

  *v2 = 0;
  *(v2 + 1) = 0;
  if (!result)
  {
    goto LABEL_72;
  }

  if (v33)
  {
    (*(*result + 16))(result, 0);
  }

  result = 0;
  v14 = 0;
LABEL_20:
  if (*v2)
  {
    if (v14)
    {
      *a2 = result;
LABEL_38:
      a2[8] = 1;
      return result;
    }

    goto LABEL_46;
  }

LABEL_73:
  *a2 = 0;
  a2[8] = 0;
  v31 = v14 ^ 1;
  if (!result)
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_76;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SerializedScriptValue::Internals,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
  IPC::ArgumentCoder<std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 16));
  IPC::VectorArgumentCoder<false,std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  IPC::VectorArgumentCoder<false,WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 40);

  return IPC::VectorArgumentCoder<false,WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 56);
}

void IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(IPC::Encoder *a1, atomic_uint *a2)
{
  v3 = a2 + 2;
  atomic_fetch_add(a2 + 2, 1u);
  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(a1, a2);
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a2 + 2);
    v4 = *(*a2 + 8);

    v4(a2);
  }
}

void sub_19D772D44(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SharedBuffer,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(a1, &v6);
  if (*a1)
  {
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::SharedBuffer::create();
    *a2 = v5;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  if (v7 == 1)
  {
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }
    }
  }
}

void sub_19D772E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a11 + 2);
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::FilterOperation,void>::encode(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if ((v4 - 1) <= 3)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);
    v6 = v3;
    v7 = a2;

    return IPC::ArgumentCoder<WebCore::BasicColorMatrixFilterOperation,void>::encode(v6, v7);
  }

  if (*(a2 + 12) < 0xAu)
  {
    if ((v4 - 7) >= 3 && v4 != 5)
    {
      return result;
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);
    v6 = v3;
    v7 = a2;

    return IPC::ArgumentCoder<WebCore::BasicColorMatrixFilterOperation,void>::encode(v6, v7);
  }

  if (*(a2 + 12) > 0xAu)
  {
    if (v4 == 11)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 3);

      return IPC::ArgumentCoder<WebCore::DropShadowFilterOperation,void>::encode(v3, a2);
    }

    else
    {
      if (v4 == 14)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 4);
        v8 = WebCore::DefaultFilterOperation::representedType(a2);
        result = v3;
      }

      else
      {
        if (v4 != 13)
        {
          return result;
        }

        v8 = 5;
      }

      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, v8);
    }
  }

  else
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 2);

    return IPC::ArgumentCoder<WebCore::Length,void>::encode(v3, (a2 + 16));
  }
}

uint64_t IPC::ArgumentCoder<WebCore::BasicColorMatrixFilterOperation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::Decoder::decode<WebCore::FilterOperation::Type>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v13;
        v1 = v13[1];
        goto LABEL_9;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_9:
    a1 = v13;
    *v13 = 0;
    v13[1] = 0;
    v8 = v13[3];
    if (v8 && v1)
    {
      (*(*v8 + 16))(v8, v3);
      a1 = v13;
    }

    goto LABEL_10;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 0x10 && ((0xEFFFu >> v4) & 1) != 0)
  {
    v5 = byte_19E703060[v4];
    v6 = 1;
    return v5 | (v6 << 8);
  }

LABEL_10:
  v9 = *a1;
  v10 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v11 = a1[3];
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
  }

  v6 = 0;
  v5 = 0;
  return v5 | (v6 << 8);
}

mpark *IPC::ArgumentCoder<WebCore::DropShadowFilterOperation,void>::encode(IPC::Encoder *a1, int *a2)
{
  v4 = a2[5];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[6]);

  return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
}

void IPC::ArgumentCoder<WebCore::FilterEffect,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  switch(*(a2 + 48))
  {
    case 2:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);

      IPC::Encoder::operator<<<WebCore::FEBlend const&>(a1, a2);
      return;
    case 3:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);

      IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(a1, a2);
      return;
    case 4:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);

      IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(a1, a2);
      return;
    case 5:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);

      IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(a1, a2);
      return;
    case 6:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 4);

      IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(a1, a2);
      return;
    case 7:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 5);

      IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(a1, a2);
      return;
    case 8:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 6);

      IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(a1, a2);
      return;
    case 9:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 7);

      IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(a1, a2);
      return;
    case 0xA:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 8);

      IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(a1, a2);
      return;
    case 0xB:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 9);

      IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(a1, a2);
      return;
    case 0xC:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 10);

      IPC::ArgumentCoder<WebCore::FEImage,void>::encode(a1, a2);
      return;
    case 0xD:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 11);

      IPC::Encoder::operator<<<WebCore::FEMerge const&>(a1, a2);
      return;
    case 0xE:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 12);

      IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(a1, a2);
      return;
    case 0xF:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 13);

      IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(a1, a2);
      return;
    case 0x10:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 15);

      IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(a1, a2);
      return;
    case 0x11:
      v4 = 14;
      goto LABEL_12;
    case 0x12:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 16);

      IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(a1, a2);
      return;
    case 0x13:
      v4 = 17;
      goto LABEL_12;
    case 0x14:
      v4 = 18;
LABEL_12:
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);

      IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
      break;
    default:
      return;
  }
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::FEBlend const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
  return a1;
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::FEMerge const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
  return a1;
}

WTF *IPC::StreamConnectionEncoder::operator<<<WebCore::FEMerge const&>(WTF *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::StreamConnectionEncoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
  return a1;
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_23:
        *a2 = 0;
        *(a2 + 1) = 0;
        v18 = *(a2 + 3);
        if (v18)
        {
          if (v6)
          {
            (*(*v18 + 16))(v18, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_26:
            *a2 = 0;
            *(a2 + 1) = 0;
            v8 = *(a2 + 3);
            if (v8)
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_23;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_23;
  }

  if (*v4 - 1 >= 0x12)
  {
    goto LABEL_26;
  }

  for (i = 1; ; i = 0)
  {
    IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v21);
    if (v22)
    {
      break;
    }

    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (!v16 || !v15 || (v8 = (*(*v16 + 16))(v16, v14), !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_13;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    if (v6)
    {
      (*(*v8 + 16))(v8, v5);
    }

LABEL_27:
    ;
  }

  if (*a2)
  {
    if (i)
    {
      cf = v21;
      WebCore::FEBlend::create();
      v9 = v20;
      v20 = 0;
      *a1 = v9;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v20, v10);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    goto LABEL_30;
  }

  *a1 = 0;
  a1[8] = 0;
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_13:
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 3);
  if (v12 && v11)
  {
    v13 = *(*v12 + 16);

    v13();
  }
}

void sub_19D7738D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::decode(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEComponentTransfer,WTF::RawPtrTraits<WebCore::FEComponentTransfer>,WTF::DefaultRefDerefTraits<WebCore::FEComponentTransfer>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ComponentTransferFunction>(v35, a2);
  IPC::Decoder::decode<WebCore::ComponentTransferFunction>(v31, a2);
  IPC::Decoder::decode<WebCore::ComponentTransferFunction>(v27, a2);
  IPC::Decoder::decode<WebCore::ComponentTransferFunction>(v23, a2);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v21);
  v5 = v22;
  if (v22)
  {
    if (!*a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (!v17 || !v16 || (v18 = v5, (*(*v17 + 16))(v17, v4), v5 = v18, !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
LABEL_31:
      v8 = 0;
      goto LABEL_11;
    }
  }

  if ((v38 & 1) == 0 || (v34 & 1) == 0 || (v30 & 1) == 0 || (v26 & 1) == 0 || (v5 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    *a1 = 0;
    a1[8] = 0;
    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_31;
  }

  cf = v21;
  WebCore::FEComponentTransfer::create();
  v6 = v20;
  v20 = 0;
  *a1 = v6;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v20, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  v8 = 1;
LABEL_11:
  if (v26 == 1)
  {
    v9 = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      WTF::fastFree(v9, v4);
    }
  }

  if (v30 == 1)
  {
    v10 = v28;
    if (v28)
    {
      v28 = 0;
      v29 = 0;
      WTF::fastFree(v10, v4);
    }
  }

  if (v34 == 1)
  {
    v11 = v32;
    if (v32)
    {
      v32 = 0;
      v33 = 0;
      WTF::fastFree(v11, v4);
    }
  }

  if (v38 == 1 && (v12 = v36) != 0)
  {
    v36 = 0;
    v37 = 0;
    WTF::fastFree(v12, v4);
    if (v8)
    {
      return;
    }
  }

  else if (v8)
  {
    return;
  }

  v13 = *a2;
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v15 = *(a2 + 3);
  if (v15)
  {
    if (v14)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }
}

void sub_19D773B78(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF *a25, int a26, int a27, char a28)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a21 == 1 && a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a28 == 1 && a25)
  {
    WTF::fastFree(a25, a2);
  }

  if (*(v28 - 88) == 1)
  {
    v30 = *(v28 - 104);
    if (v30)
    {
      *(v28 - 104) = 0;
      *(v28 - 96) = 0;
      WTF::fastFree(v30, a2);
    }
  }

  if (*(v28 - 40) == 1)
  {
    v31 = *(v28 - 56);
    if (v31)
    {
      *(v28 - 56) = 0;
      *(v28 - 48) = 0;
      WTF::fastFree(v31, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEComposite,WTF::RawPtrTraits<WebCore::FEComposite>,WTF::DefaultRefDerefTraits<WebCore::FEComposite>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32, v6);
        v6 = *a2;
        v4 = *(a2 + 1);
LABEL_52:
        *a2 = 0;
        *(a2 + 1) = 0;
        v33 = *(a2 + 3);
        if (v33)
        {
          if (v4)
          {
            (*(*v33 + 16))(v33, v6);
            v6 = *a2;
            v4 = *(a2 + 1);
            goto LABEL_55;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_52;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_52;
  }

  v7 = *v5;
  if (v7 < 8)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_55:
  *a2 = 0;
  *(a2 + 1) = 0;
  v34 = *(a2 + 3);
  if (!v34)
  {
    v4 = 0;
LABEL_57:
    v6 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (!v4)
  {
    goto LABEL_57;
  }

  (*(*v34 + 16))(v34, v6);
  v8 = 0;
  v6 = *a2;
  v4 = *(a2 + 1);
LABEL_5:
  v48 = v8;
  v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v9 - v6 && v4 - (v9 - v6) > 3)
  {
    *(a2 + 2) = v9 + 1;
    if (v9)
    {
      v11 = *v9 | 0x100000000;
      v12 = v6;
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (!v35)
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

    (*(*v35 + 16))(v35, v6);
    v6 = *a2;
    v4 = *(a2 + 1);
  }

LABEL_63:
  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (!v36)
  {
    v12 = 0;
    v4 = 0;
LABEL_65:
    v6 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_65;
  }

  (*(*v36 + 16))(v36, v6);
  v11 = 0;
  v12 = *a2;
  v4 = *(a2 + 1);
  v6 = *a2;
LABEL_12:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a2 + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_19;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37)
    {
      if (v4)
      {
        (*(*v37 + 16))(v37, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_69;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_69:
  *a2 = 0;
  *(a2 + 1) = 0;
  v38 = *(a2 + 3);
  if (v38)
  {
    if (v4)
    {
      (*(*v38 + 16))(v38, v12);
      v15 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_19;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v15 = 0;
LABEL_19:
  v16 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v16 - v6 || v4 - (v16 - v6) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v39 = *(a2 + 3);
    if (v39)
    {
      if (v4)
      {
        (*(*v39 + 16))(v39, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_75;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v16 + 1;
    if (v16)
    {
      v17 = *v16 | 0x100000000;
      goto LABEL_23;
    }
  }

LABEL_75:
  *a2 = 0;
  *(a2 + 1) = 0;
  v40 = *(a2 + 3);
  if (v40)
  {
    if (v4)
    {
      (*(*v40 + 16))(v40, v12);
      v17 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_23;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v17 = 0;
LABEL_23:
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = v18 - v6;
  v20 = v4 >= v19;
  v21 = v4 - v19;
  if (!v20 || v21 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (v41)
    {
      if (v4)
      {
        (*(*v41 + 16))(v41, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_81;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_81;
  }

  *(a2 + 2) = v18 + 1;
  if (v18)
  {
    v22 = *v18 | 0x100000000;
    goto LABEL_28;
  }

LABEL_81:
  *a2 = 0;
  *(a2 + 1) = 0;
  v42 = *(a2 + 3);
  if (v42 && v4)
  {
    (*(*v42 + 16))(v42, v12);
  }

  v22 = 0;
LABEL_28:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v46);
  v23 = v47;
  if (v47)
  {
    if (!*a2)
    {
LABEL_40:
      *a1 = 0;
      a1[8] = 0;
      if (v46)
      {
        CFRelease(v46);
      }

      goto LABEL_42;
    }

LABEL_30:
    if (v8 > 0xFF && (v11 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v17 & 0x100000000) != 0 && (v22 & 0x100000000) != 0 && (v23 & 1) != 0)
    {
      cf = v46;
      WebCore::FEComposite::create();
      v24 = v45;
      v45 = 0;
      *a1 = v24;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v45, v25);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    __break(1u);
    goto LABEL_40;
  }

  v29 = *a2;
  v30 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v31 = *(a2 + 3);
  if (v31)
  {
    if (v30)
    {
      v43 = v23;
      (*(*v31 + 16))(v31, v29);
      v23 = v43;
      if (*a2)
      {
        goto LABEL_30;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
LABEL_42:
  v26 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (v27 && v26)
  {
    v28 = *(*v27 + 16);

    v28();
  }
}

void sub_19D774234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEConvolveMatrix,WTF::RawPtrTraits<WebCore::FEConvolveMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEConvolveMatrix>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::IntSize>(a2);
  v7 = v6;
  v55 = v4;
  v56 = v6;
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_68;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_90;
  }

  v9 = v4;
  if (v4 < 1)
  {
    goto LABEL_68;
  }

  v10 = HIDWORD(v4);
  if (SHIDWORD(v4) < 1)
  {
    goto LABEL_68;
  }

  v5 = *(a2 + 1);
  v11 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v11 - v8 || v5 - (v11 - v8) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v4 = *(a2 + 3);
    if (v4)
    {
      goto LABEL_91;
    }

    v5 = 0;
LABEL_66:
    v8 = 0;
    goto LABEL_67;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_67:
    while (1)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v37 = *(a2 + 3);
      if (!v37)
      {
        goto LABEL_68;
      }

      if (!v5)
      {
        goto LABEL_68;
      }

      v4 = (*(*v37 + 16))(v37, v8);
      if (!*a2)
      {
        goto LABEL_68;
      }

LABEL_90:
      __break(1u);
LABEL_91:
      if (!v5)
      {
        goto LABEL_66;
      }

      (*(*v4 + 16))(v4);
      v8 = *a2;
      v5 = *(a2 + 1);
    }
  }

  if (*v11 == 0.0)
  {
LABEL_68:
    *a1 = 0;
    a1[8] = 0;
LABEL_69:
    v38 = *a2;
    v39 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40)
    {
      if (v39)
      {
        (*(*v40 + 16))(v40, v38);
      }
    }

    return;
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 < v13 - v8 || v5 - (v13 - v8) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (v41)
    {
      if (v5)
      {
        (*(*v41 + 16))(v41);
        v8 = *a2;
        v5 = *(a2 + 1);
LABEL_76:
        *a2 = 0;
        *(a2 + 1) = 0;
        v42 = *(a2 + 3);
        if (v42 && v5)
        {
          (*(*v42 + 16))(v42, v8);
        }

        v15 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = 0;
    goto LABEL_76;
  }

  *(a2 + 2) = v13 + 4;
  if (!v13)
  {
    goto LABEL_76;
  }

  v15 = *v13 | 0x100000000;
LABEL_19:
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  v53 = v4;
  v54 = v16;
  if (!*a2)
  {
    goto LABEL_68;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_68;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v4 >= v9)
  {
    goto LABEL_68;
  }

  if (SHIDWORD(v4) >= v10)
  {
    goto LABEL_68;
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a2);
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v20 = v19;
  v51 = v4;
  v52 = v19;
  v21 = *a2;
  if (!*a2)
  {
    goto LABEL_68;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (*&v4 <= 0.0)
  {
    goto LABEL_68;
  }

  v18.n128_u32[0] = HIDWORD(v4);
  if (*(&v4 + 1) <= 0.0)
  {
    goto LABEL_68;
  }

  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  if (v22 <= &v23[-v21])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v22)
      {
        (*(*v34 + 16))(v34, v18.n128_f32[0]);
        v21 = *a2;
        v22 = *(a2 + 1);
LABEL_59:
        *a2 = 0;
        *(a2 + 1) = 0;
        v35 = *(a2 + 3);
        if (v35)
        {
          if (v22)
          {
            (*(*v35 + 16))(v35, v21, v18);
            v21 = *a2;
            v22 = *(a2 + 1);
LABEL_62:
            *a2 = 0;
            *(a2 + 1) = 0;
            v36 = *(a2 + 3);
            if (v36 && v22)
            {
              (*(*v36 + 16))(v36, v21, v18);
            }

            v24 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          v22 = 0;
        }

        v21 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    goto LABEL_59;
  }

  *(a2 + 2) = v23 + 1;
  if (!v23)
  {
    goto LABEL_59;
  }

  if (*v23 >= 2u)
  {
    goto LABEL_62;
  }

  v24 = 1;
LABEL_33:
  v4 = IPC::Decoder::decode<WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v47, a2);
  if (!*a2)
  {
    goto LABEL_50;
  }

  v26 = v9 * v10;
  if ((v26 & 0xFFFFFFFF00000000) != 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D774620);
  }

  if ((v50 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (v26 != v49)
  {
    goto LABEL_50;
  }

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v45);
  v27 = v46;
  if ((v46 & 1) == 0)
  {
    v25 = *a2;
    v31 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v31)
      {
        v4 = (*(*v32 + 16))(v32, v25);
        if (*a2)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_50:
    v30 = 0;
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_51;
  }

  if (!*a2)
  {
    *a1 = 0;
    a1[8] = 0;
    if (v45)
    {
      CFRelease(v45);
    }

    v30 = 0;
    goto LABEL_51;
  }

LABEL_39:
  if ((v15 & 0x100000000) == 0 || Options <= 0xFFu || (v24 & 1) == 0 || (v27 & 1) == 0)
  {
    goto LABEL_90;
  }

  cf = v45;
  WebCore::FEConvolveMatrix::create();
  v28 = v44;
  v44 = 0;
  *a1 = v28;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v44, v29);
  if (cf)
  {
    CFRelease(cf);
  }

  v30 = 1;
LABEL_51:
  if (v50 == 1)
  {
    v33 = v47;
    if (v47)
    {
      v47 = 0;
      v48 = 0;
      WTF::fastFree(v33, v25);
    }
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_69;
  }
}

void sub_19D774774(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, int a16, char a17)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a17)
  {
    if (a14)
    {
      WTF::fastFree(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEDiffuseLighting,WTF::RawPtrTraits<WebCore::FEDiffuseLighting>,WTF::DefaultRefDerefTraits<WebCore::FEDiffuseLighting>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v49);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a2;
  v7 = v5 - *a2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a2 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (!v34)
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

    (*(*v34 + 16))(v34, v6);
    v6 = *a2;
    v4 = *(a2 + 1);
  }

LABEL_57:
  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = *(a2 + 3);
  if (!v35)
  {
    v12 = 0;
    v4 = 0;
LABEL_59:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_59;
  }

  (*(*v35 + 16))(v35, v6);
  v11 = 0;
  v12 = *a2;
  v4 = *(a2 + 1);
  v6 = *a2;
LABEL_8:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a2 + 2) = v13 + 4;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v36 = *(a2 + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_63;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_63:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (v37)
  {
    if (v4)
    {
      (*(*v37 + 16))(v37, v12);
      v15 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_15;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v15 = 0;
LABEL_15:
  v16 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v16 - v6 || v4 - (v16 - v6) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_69;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v16 + 4;
    if (v16)
    {
      v17 = *v16 | 0x100000000;
      goto LABEL_19;
    }
  }

LABEL_69:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (v39)
  {
    if (v4)
    {
      (*(*v39 + 16))(v39, v12);
      v17 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_19;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v17 = 0;
LABEL_19:
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = (v18 - v6);
  v8 = v4 >= v19;
  v20 = v4 - v19;
  if (!v8 || v20 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_75;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_75;
  }

  *(a2 + 2) = v18 + 4;
  if (v18)
  {
    v21 = *v18 | 0x100000000;
    goto LABEL_24;
  }

LABEL_75:
  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41 && v4)
  {
    (*(*v41 + 16))(v41, v12);
  }

  v21 = 0;
LABEL_24:
  IPC::Decoder::decode<WTF::Ref<WebCore::LightSource,WTF::RawPtrTraits<WebCore::LightSource>,WTF::DefaultRefDerefTraits<WebCore::LightSource>>>(&v47, a2);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v45);
  v24 = v46;
  if (v46)
  {
    if (!*a2)
    {
      *a1 = 0;
      a1[8] = 0;
      v27 = v45;
      if (!v45)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v23 = *a2;
    v32 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v33 = *(a2 + 3);
    if (!v33 || !v32 || (v42 = v24, v22 = (*(*v33 + 16))(v33, v23), v24 = v42, !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_35;
    }
  }

  if ((v50 & 1) == 0 || (v11 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || (v17 & 0x100000000) == 0 || (v21 & 0x100000000) == 0 || (v48 & 1) == 0 || (v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  cf = v45;
  WebCore::FEDiffuseLighting::create();
  v25 = v44;
  v44 = 0;
  *a1 = v25;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v44, v26);
  v27 = cf;
  if (cf)
  {
LABEL_34:
    CFRelease(v27);
  }

LABEL_35:
  if (v48 == 1)
  {
    v22 = v47;
    v47 = 0;
    if (v22)
    {
      if (v22[2] != 1)
      {
        --v22[2];
        goto LABEL_39;
      }

LABEL_44:
      (*(*v22 + 8))(v22);
    }
  }

LABEL_39:
  if (v50 == 1 && (v49 & 0x8000000000000) != 0)
  {
    v31 = (v49 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v49 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v31);
      WTF::fastFree(v31, v23);
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v28 = *a2;
    v29 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30)
    {
      if (v29)
      {
        (*(*v30 + 16))(v30, v28);
      }
    }
  }
}

void sub_19D774D24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && (a17 & 0x8000000000000) != 0)
  {
    v19 = (a17 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEDisplacementMap,WTF::RawPtrTraits<WebCore::FEDisplacementMap>,WTF::DefaultRefDerefTraits<WebCore::FEDisplacementMap>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a2);
  v5 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a2);
  v6 = *(a2 + 1);
  v7 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = v7 - *a2;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (v9 && v10 > 3)
  {
    *(a2 + 2) = v7 + 1;
    if (v7)
    {
      v12 = *v7 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v6 = *(a2 + 1);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v23 = *(a2 + 3);
  if (v23 && v6)
  {
    (*(*v23 + 16))(v23);
  }

  v12 = 0;
LABEL_8:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v27);
  v13 = v28;
  if (v28)
  {
    if (!*a2)
    {
LABEL_18:
      *a1 = 0;
      a1[8] = 0;
      if (v27)
      {
        CFRelease(v27);
      }

      goto LABEL_20;
    }

LABEL_10:
    if (v4 > 0xFFu && v5 > 0xFFu && (v12 & 0x100000000) != 0 && (v13 & 1) != 0)
    {
      cf = v27;
      WebCore::FEDisplacementMap::create();
      v14 = v26;
      v26 = 0;
      *a1 = v14;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v26, v15);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v19 = *a2;
  v20 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v21 = *(a2 + 3);
  if (v21)
  {
    if (v20)
    {
      v24 = v13;
      (*(*v21 + 16))(v21, v19);
      v13 = v24;
      if (*a2)
      {
        goto LABEL_10;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
LABEL_20:
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = *(a2 + 3);
  if (v17 && v16)
  {
    v18 = *(*v17 + 16);

    v18();
  }
}

void sub_19D775044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEDropShadow,WTF::RawPtrTraits<WebCore::FEDropShadow>,WTF::DefaultRefDerefTraits<WebCore::FEDropShadow>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a2;
  v7 = v5 - *a2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a2 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (!v38)
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

    (*(*v38 + 16))(v38, v6);
    v6 = *a2;
    v4 = *(a2 + 1);
  }

LABEL_57:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (!v39)
  {
    v12 = 0;
    v4 = 0;
LABEL_59:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_59;
  }

  (*(*v39 + 16))(v39, v6);
  v11 = 0;
  v12 = *a2;
  v4 = *(a2 + 1);
  v6 = *a2;
LABEL_8:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a2 + 2) = v13 + 4;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_63;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_63:
  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41)
  {
    if (v4)
    {
      (*(*v41 + 16))(v41, v12);
      v15 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_15;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v15 = 0;
LABEL_15:
  v16 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v16 - v6 || v4 - (v16 - v6) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v42 = *(a2 + 3);
    if (v42)
    {
      if (v4)
      {
        (*(*v42 + 16))(v42, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_69;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v16 + 4;
    if (v16)
    {
      v17 = *v16 | 0x100000000;
      goto LABEL_19;
    }
  }

LABEL_69:
  *a2 = 0;
  *(a2 + 1) = 0;
  v43 = *(a2 + 3);
  if (v43)
  {
    if (v4)
    {
      (*(*v43 + 16))(v43, v12);
      v17 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_19;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v17 = 0;
LABEL_19:
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = (v18 - v6);
  v8 = v4 >= v19;
  v20 = v4 - v19;
  if (!v8 || v20 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44)
    {
      if (v4)
      {
        (*(*v44 + 16))(v44, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_75;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_75;
  }

  *(a2 + 2) = v18 + 4;
  if (v18)
  {
    v21 = *v18 | 0x100000000;
    goto LABEL_24;
  }

LABEL_75:
  *a2 = 0;
  *(a2 + 1) = 0;
  v45 = *(a2 + 3);
  if (v45 && v4)
  {
    (*(*v45 + 16))(v45, v12);
  }

  v21 = 0;
LABEL_24:
  IPC::Decoder::decode<WebCore::Color>(a2, &v53);
  v22 = *(a2 + 1);
  v23 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = v23 - *a2;
  v8 = v22 >= v24;
  v25 = v22 - v24;
  if (v8 && v25 > 3)
  {
    *(a2 + 2) = v23 + 1;
    if (v23)
    {
      v26 = *v23 | 0x100000000;
      goto LABEL_29;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46)
    {
      if (v22)
      {
        (*(*v46 + 16))(v46);
        v22 = *(a2 + 1);
      }
    }

    else
    {
      v22 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v47 = *(a2 + 3);
  if (v47 && v22)
  {
    (*(*v47 + 16))(v47);
  }

  v26 = 0;
LABEL_29:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v51);
  v28 = v52;
  if (v52)
  {
    if (!*a2)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v27 = *a2;
    v36 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (!v37 || !v36 || (v48 = v28, (*(*v37 + 16))(v37, v27), v28 = v48, !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_40;
    }
  }

  if ((v11 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || (v17 & 0x100000000) == 0 || (v21 & 0x100000000) == 0 || (v54 & 1) == 0 || (v26 & 0x100000000) == 0 || (v28 & 1) == 0)
  {
    __break(1u);
LABEL_45:
    *a1 = 0;
    a1[8] = 0;
    v31 = v51;
    if (!v51)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  cf = v51;
  WebCore::FEDropShadow::create();
  v29 = v50;
  v50 = 0;
  *a1 = v29;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v50, v30);
  v31 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v31);
  }

LABEL_40:
  if (v54 == 1 && (v53 & 0x8000000000000) != 0)
  {
    v35 = (v53 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v53 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35);
      WTF::fastFree(v35, v27);
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v32 = *a2;
    v33 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v33)
      {
        (*(*v34 + 16))(v34, v32);
      }
    }
  }
}

void sub_19D775630(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1 && (a15 & 0x8000000000000) != 0)
  {
    v17 = (a15 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEFlood,WTF::RawPtrTraits<WebCore::FEFlood>,WTF::DefaultRefDerefTraits<WebCore::FEFlood>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v29);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a2;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(a2 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v23 = *(a2 + 3);
  if (v23 && v4)
  {
    (*(*v23 + 16))(v23);
  }

  v10 = 0;
LABEL_8:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v27);
  v12 = v28;
  if (v28)
  {
    if (!*a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (!v21 || !v20 || (v24 = v12, (*(*v21 + 16))(v21, v11), v12 = v24, !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_15;
    }
  }

  if ((v30 & 1) == 0 || (v10 & 0x100000000) == 0 || (v12 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    *a1 = 0;
    a1[8] = 0;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  cf = v27;
  WebCore::FEFlood::create();
  v13 = v26;
  v26 = 0;
  *a1 = v13;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v26, v14);
  v15 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v15);
  }

LABEL_15:
  if (v30 == 1 && (v29 & 0x8000000000000) != 0)
  {
    v19 = (v29 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, v11);
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
      }
    }
  }
}

void sub_19D7758E0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1 && (a15 & 0x8000000000000) != 0)
  {
    v17 = (a15 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEGaussianBlur,WTF::RawPtrTraits<WebCore::FEGaussianBlur>,WTF::DefaultRefDerefTraits<WebCore::FEGaussianBlur>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::decode(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::FEImage,WTF::RawPtrTraits<WebCore::FEImage>,WTF::DefaultRefDerefTraits<WebCore::FEImage>>>(uint64_t a1, IPC::Decoder *a2)
{
  v5 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 < v5 - v6 || v7 - (v5 - v6) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37)
    {
      if (v7)
      {
        (*(*v37 + 16))(v37);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_53:
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38)
    {
      if (v7)
      {
        result = (*(*v38 + 16))(v38, v6);
        if (*a2)
        {
          goto LABEL_91;
        }

        v6 = 0;
        v7 = *(a2 + 1);
        goto LABEL_56;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_56:
    *a2 = 0;
    *(a2 + 1) = 0;
    v39 = *(a2 + 3);
    if (v39 && v7)
    {
      result = (*(*v39 + 16))(v39, v6);
      v40 = *a2;
      if (*a2)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v40 = 0;
    }

    v50[0] = 0;
    v51 = 0;
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v40);
    }

    goto LABEL_12;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_53;
  }

  v9 = *v5;
  if (v6)
  {
    v10 = v9 - 1 >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_56;
  }

  v52 = v9;
  v53 = 2;
  WebCore::SourceImage::SourceImage();
  WebCore::SourceImage::SourceImage();
  v51 = 1;
  MEMORY[0x19EB03E10](v54);
  mpark::variant<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v52, v11);
LABEL_12:
  v12 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    v41 = *a2;
    v42 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43)
    {
      if (v42)
      {
        (*(*v43 + 16))(v43, v41);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  if ((v16 & 1) == 0)
  {
    v34 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35)
    {
      if (v17)
      {
        v49 = result;
        v36 = v16;
        (*(*v35 + 16))(v35, v34);
        v16 = v36;
        result = v49;
      }
    }
  }

  v2 = *a2;
  if (!*a2)
  {
    LOBYTE(v54[0]) = 0;
    v55 = 0;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      goto LABEL_92;
    }

    goto LABEL_46;
  }

  if (v14 & 1) != 0 && (v16)
  {
    v54[0] = v12;
    v54[1] = result;
    v55 = 1;
    v18 = v2;
    v19 = v2;
    goto LABEL_18;
  }

  while (1)
  {
    while (1)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      if (v17)
      {
        result = (*(*result + 16))(result, 0);
        v18 = *a2;
        v19 = *a2;
      }

      else
      {
LABEL_46:
        v18 = 0;
        v19 = 0;
      }

LABEL_18:
      v17 = *(a2 + 1);
      v20 = *(a2 + 2);
      if (v17 <= &v20[-v19])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v44 = *(a2 + 3);
        if (v44)
        {
          if (v17)
          {
            (*(*v44 + 16))(v44);
            v19 = *a2;
            v17 = *(a2 + 1);
            goto LABEL_65;
          }
        }

        else
        {
          v17 = 0;
        }

        v19 = 0;
      }

      else
      {
        v21 = v20 + 1;
        *(a2 + 2) = v20 + 1;
        if (v20)
        {
          v22 = *v20;
          if (v22 < 0xB)
          {
            v23 = v22 | 0x100;
            goto LABEL_22;
          }

          goto LABEL_68;
        }
      }

LABEL_65:
      *a2 = 0;
      *(a2 + 1) = 0;
      v45 = *(a2 + 3);
      if (v45)
      {
        if (v17)
        {
          (*(*v45 + 16))(v45, v19);
          v19 = *a2;
          v17 = *(a2 + 1);
          goto LABEL_68;
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = 0;
LABEL_68:
      *a2 = 0;
      *(a2 + 1) = 0;
      v46 = *(a2 + 3);
      if (!v46)
      {
        v23 = 0;
        goto LABEL_70;
      }

      if (!v17)
      {
        v23 = 0;
        goto LABEL_71;
      }

      result = (*(*v46 + 16))(v46, v19);
      v23 = 0;
      v18 = *a2;
      v17 = *(a2 + 1);
      v21 = *(a2 + 2);
      v19 = *a2;
LABEL_22:
      if (v17 <= &v21[-v19])
      {
        v48 = *(a2 + 3);
        *a2 = 0;
        *(a2 + 1) = 0;
        if (!v17)
        {
          goto LABEL_71;
        }

        if (v48)
        {
          (*(*v48 + 16))(v48);
          v19 = *a2;
          v17 = *(a2 + 1);
          goto LABEL_72;
        }

LABEL_70:
        v17 = 0;
LABEL_71:
        v19 = 0;
        goto LABEL_72;
      }

      *(a2 + 2) = v21 + 1;
      if (v21)
      {
        v24 = *v21;
        if (v24 < 3)
        {
          v25 = v24 | 0x100;
          if (v19)
          {
            goto LABEL_26;
          }

          break;
        }

        goto LABEL_75;
      }

LABEL_72:
      *a2 = 0;
      *(a2 + 1) = 0;
      v47 = *(a2 + 3);
      if (v47)
      {
        if (v17)
        {
          (*(*v47 + 16))(v47, v19);
          v19 = *a2;
          v17 = *(a2 + 1);
          goto LABEL_75;
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = 0;
LABEL_75:
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v17)
      {
        goto LABEL_76;
      }

      result = (*(*result + 16))(result, v19);
      v25 = 0;
      v18 = *a2;
      if (!*a2)
      {
        break;
      }

LABEL_26:
      if (v23 > 0xFF && v25 > 0xFF)
      {
        result = WebCore::SVGPreserveAspectRatioValue::SVGPreserveAspectRatioValue();
        v26 = 0;
        goto LABEL_29;
      }
    }

    v17 = *(a2 + 1);
    result = *(a2 + 3);
    v26 = 1;
    *a2 = 0;
    *(a2 + 1) = 0;
    if (result && v17)
    {
      result = (*(*result + 16))(result, v18);
LABEL_76:
      v26 = 1;
    }

LABEL_29:
    v27 = *a2;
    if (!*a2)
    {
      break;
    }

    if ((v51 & 1) != 0 && v2 && !v26)
    {
      WebCore::FEImage::create();
      v28 = v52;
      v52 = 0;
      *a1 = v28;
      *(a1 + 8) = 1;
      result = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v52, v29);
      goto LABEL_34;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_34:
  if (v51 == 1)
  {
    result = MEMORY[0x19EB03E10](v50);
  }

  if (!v27)
  {
    v32 = *a2;
    v33 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v33)
      {
        return (*(*result + 16))(result, v32);
      }
    }
  }

  return result;
}

void sub_19D775FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1)
  {
    MEMORY[0x19EB03E10](&a12);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEMerge,WTF::RawPtrTraits<WebCore::FEMerge>,WTF::DefaultRefDerefTraits<WebCore::FEMerge>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 3)
  {
    *(a2 + 2) = v4 + 1;
    if (v4)
    {
      v8 = *v4 | 0x100000000;
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v18 = *(a2 + 3);
  if (!v18)
  {
    v6 = 0;
LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  (*(*v18 + 16))(v18);
  v5 = *a2;
  v6 = *(a2 + 1);
LABEL_26:
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *(a2 + 3);
  if (v9)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v8 = 0;
LABEL_8:
    IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v21);
    if (v22)
    {
      break;
    }

    v15 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (!v17 || !v16 || (v9 = (*(*v17 + 16))(v17, v15), !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_16;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    if (v6)
    {
      (*(*v9 + 16))(v9, v5);
    }
  }

  if (*a2)
  {
    if ((v8 & 0x100000000) != 0)
    {
      cf = v21;
      WebCore::FEMerge::create();
      v10 = v20;
      v20 = 0;
      *a1 = v10;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v20, v11);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    goto LABEL_30;
  }

  *a1 = 0;
  a1[8] = 0;
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_16:
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 3);
  if (v13 && v12)
  {
    v14 = *(*v13 + 16);

    v14();
  }
}

void sub_19D77623C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEMorphology,WTF::RawPtrTraits<WebCore::FEMorphology>,WTF::DefaultRefDerefTraits<WebCore::FEMorphology>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      if (v6)
      {
        (*(*v25 + 16))(v25);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_41:
        *a2 = 0;
        *(a2 + 1) = 0;
        v26 = *(a2 + 3);
        if (v26)
        {
          if (v6)
          {
            (*(*v26 + 16))(v26, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
            goto LABEL_44;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_41;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_41;
  }

  v7 = *v4;
  if (v7 < 3)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_44:
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (!v27)
  {
    v6 = 0;
LABEL_46:
    v5 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_46;
  }

  (*(*v27 + 16))(v27, v5);
  v8 = 0;
  v5 = *a2;
  v6 = *(a2 + 1);
LABEL_5:
  v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v9 - v5 && v6 - (v9 - v5) > 3)
  {
    *(a2 + 2) = v9 + 1;
    if (v9)
    {
      v11 = *v9 | 0x100000000;
      v12 = v5;
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (!v28)
    {
      v6 = 0;
LABEL_51:
      v5 = 0;
      goto LABEL_52;
    }

    if (!v6)
    {
      goto LABEL_51;
    }

    (*(*v28 + 16))(v28);
    v5 = *a2;
    v6 = *(a2 + 1);
  }

LABEL_52:
  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (!v29)
  {
    v12 = 0;
    v6 = 0;
LABEL_54:
    v5 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    v12 = 0;
    goto LABEL_54;
  }

  (*(*v29 + 16))(v29, v5);
  v11 = 0;
  v12 = *a2;
  v6 = *(a2 + 1);
  v5 = *a2;
LABEL_12:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v13 - v5 && v6 - (v13 - v5) > 3)
  {
    *(a2 + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_19;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (!v30)
    {
      v6 = 0;
LABEL_57:
      v12 = 0;
      goto LABEL_58;
    }

    if (!v6)
    {
      goto LABEL_57;
    }

    (*(*v30 + 16))(v30, v12);
    v12 = *a2;
    v6 = *(a2 + 1);
  }

LABEL_58:
  *a2 = 0;
  *(a2 + 1) = 0;
  v31 = *(a2 + 3);
  if (v31 && v6)
  {
    (*(*v31 + 16))(v31, v12);
  }

  v15 = 0;
LABEL_19:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v35);
  v16 = v36;
  if (v36)
  {
    if (!*a2)
    {
LABEL_29:
      *a1 = 0;
      a1[8] = 0;
      if (v35)
      {
        CFRelease(v35);
      }

      goto LABEL_31;
    }

LABEL_21:
    if (v8 > 0xFF && (v11 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v16 & 1) != 0)
    {
      cf = v35;
      WebCore::FEMorphology::create();
      v17 = v34;
      v34 = 0;
      *a1 = v17;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v34, v18);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v22 = *a2;
  v23 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v24 = *(a2 + 3);
  if (v24)
  {
    if (v23)
    {
      v32 = v16;
      (*(*v24 + 16))(v24, v22);
      v16 = v32;
      if (*a2)
      {
        goto LABEL_21;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
LABEL_31:
  v19 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (v20 && v19)
  {
    v21 = *(*v20 + 16);

    v21();
  }
}

void sub_19D77667C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FEOffset,WTF::RawPtrTraits<WebCore::FEOffset>,WTF::DefaultRefDerefTraits<WebCore::FEOffset>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::FEOffset,void>::decode(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FETile,WTF::RawPtrTraits<WebCore::FETile>,WTF::DefaultRefDerefTraits<WebCore::FETile>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v15);
  if (v16)
  {
    if (*a2)
    {
      cf = v15;
      WebCore::FETile::create();
      v4 = v14;
      v14 = 0;
      *a1 = v4;
      *(a1 + 8) = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v14, v5);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
      if (*a2)
      {
        __break(1u);
        return;
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = *(a2 + 3);
  if (v7 && v6)
  {
    v8 = *(*v7 + 16);

    v8();
  }
}

void sub_19D77682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FESpecularLighting,WTF::RawPtrTraits<WebCore::FESpecularLighting>,WTF::DefaultRefDerefTraits<WebCore::FESpecularLighting>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v53);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a2;
  v7 = v5 - *a2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a2 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v36 = *(a2 + 3);
    if (!v36)
    {
      v4 = 0;
LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (!v4)
    {
      goto LABEL_61;
    }

    (*(*v36 + 16))(v36, v6);
    v6 = *a2;
    v4 = *(a2 + 1);
  }

LABEL_62:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (!v37)
  {
    v12 = 0;
    v4 = 0;
LABEL_64:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_64;
  }

  (*(*v37 + 16))(v37, v6);
  v11 = 0;
  v12 = *a2;
  v4 = *(a2 + 1);
  v6 = *a2;
LABEL_8:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a2 + 2) = v13 + 4;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v38 = *(a2 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_68;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_68:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (v39)
  {
    if (v4)
    {
      (*(*v39 + 16))(v39, v12);
      v15 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_15;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v15 = 0;
LABEL_15:
  v16 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v16 - v6 || v4 - (v16 - v6) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_74;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v16 + 4;
    if (v16)
    {
      v17 = *v16 | 0x100000000;
      goto LABEL_19;
    }
  }

LABEL_74:
  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41)
  {
    if (v4)
    {
      (*(*v41 + 16))(v41, v12);
      v17 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_19;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v17 = 0;
LABEL_19:
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v18 - v6 || v4 - (v18 - v6) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v42 = *(a2 + 3);
    if (v42)
    {
      if (v4)
      {
        (*(*v42 + 16))(v42, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_80;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

  else
  {
    *(a2 + 2) = v18 + 4;
    if (v18)
    {
      v19 = *v18 | 0x100000000;
      goto LABEL_23;
    }
  }

LABEL_80:
  *a2 = 0;
  *(a2 + 1) = 0;
  v43 = *(a2 + 3);
  if (v43)
  {
    if (v4)
    {
      (*(*v43 + 16))(v43, v12);
      v19 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_23;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v19 = 0;
LABEL_23:
  v20 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = (v20 - v6);
  v8 = v4 >= v21;
  v22 = v4 - v21;
  if (!v8 || v22 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v44 = *(a2 + 3);
    if (v44)
    {
      if (v4)
      {
        (*(*v44 + 16))(v44, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_86;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_86;
  }

  *(a2 + 2) = v20 + 4;
  if (v20)
  {
    v23 = *v20 | 0x100000000;
    goto LABEL_28;
  }

LABEL_86:
  *a2 = 0;
  *(a2 + 1) = 0;
  v45 = *(a2 + 3);
  if (v45 && v4)
  {
    (*(*v45 + 16))(v45, v12);
  }

  v23 = 0;
LABEL_28:
  IPC::Decoder::decode<WTF::Ref<WebCore::LightSource,WTF::RawPtrTraits<WebCore::LightSource>,WTF::DefaultRefDerefTraits<WebCore::LightSource>>>(&v51, a2);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v49);
  v26 = v50;
  if (v50)
  {
    if (!*a2)
    {
      *a1 = 0;
      a1[8] = 0;
      v29 = v49;
      if (!v49)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v25 = *a2;
    v34 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (!v35 || !v34 || (v46 = v26, v24 = (*(*v35 + 16))(v35, v25), v26 = v46, !*a2))
    {
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_40;
    }
  }

  if ((v54 & 1) == 0 || (v11 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || (v17 & 0x100000000) == 0 || (v19 & 0x100000000) == 0 || (v23 & 0x100000000) == 0 || (v52 & 1) == 0 || (v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  cf = v49;
  WebCore::FESpecularLighting::create();
  v27 = v48;
  v48 = 0;
  *a1 = v27;
  a1[8] = 1;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v48, v28);
  v29 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v29);
  }

LABEL_40:
  if (v52 == 1)
  {
    v24 = v51;
    v51 = 0;
    if (v24)
    {
      if (v24[2] != 1)
      {
        --v24[2];
        goto LABEL_44;
      }

LABEL_49:
      (*(*v24 + 8))(v24);
    }
  }

LABEL_44:
  if (v54 == 1 && (v53 & 0x8000000000000) != 0)
  {
    v33 = (v53 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v53 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v33);
      WTF::fastFree(v33, v25);
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v30 = *a2;
    v31 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v31)
      {
        (*(*v32 + 16))(v32, v30);
      }
    }
  }
}

void sub_19D776E9C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && (a17 & 0x8000000000000) != 0)
  {
    v19 = (a17 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FETurbulence,WTF::RawPtrTraits<WebCore::FETurbulence>,WTF::DefaultRefDerefTraits<WebCore::FETurbulence>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35)
    {
      if (v6)
      {
        (*(*v35 + 16))(v35);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_53:
        *a2 = 0;
        *(a2 + 1) = 0;
        v36 = *(a2 + 3);
        if (v36)
        {
          if (v6)
          {
            (*(*v36 + 16))(v36, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
            goto LABEL_56;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_53;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_53;
  }

  v7 = *v4;
  if (v7 < 3)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_56:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (!v37)
  {
    v6 = 0;
LABEL_58:
    v5 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_58;
  }

  (*(*v37 + 16))(v37, v5);
  v8 = 0;
  v5 = *a2;
  v6 = *(a2 + 1);
LABEL_5:
  v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v9 - v5 && v6 - (v9 - v5) > 3)
  {
    *(a2 + 2) = v9 + 1;
    if (v9)
    {
      v11 = *v9 | 0x100000000;
      v12 = v5;
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v39 = *(a2 + 3);
    if (!v39)
    {
      v6 = 0;
LABEL_66:
      v5 = 0;
      goto LABEL_67;
    }

    if (!v6)
    {
      goto LABEL_66;
    }

    (*(*v39 + 16))(v39);
    v5 = *a2;
    v6 = *(a2 + 1);
  }

LABEL_67:
  *a2 = 0;
  *(a2 + 1) = 0;
  v40 = *(a2 + 3);
  if (!v40)
  {
    v12 = 0;
    v6 = 0;
LABEL_69:
    v5 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    v12 = 0;
    goto LABEL_69;
  }

  (*(*v40 + 16))(v40, v5);
  v11 = 0;
  v12 = *a2;
  v6 = *(a2 + 1);
  v5 = *a2;
LABEL_12:
  v13 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v13 - v5 && v6 - (v13 - v5) > 3)
  {
    *(a2 + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_19;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (!v41)
    {
      v6 = 0;
LABEL_72:
      v12 = 0;
      goto LABEL_73;
    }

    if (!v6)
    {
      goto LABEL_72;
    }

    (*(*v41 + 16))(v41, v12);
    v12 = *a2;
    v6 = *(a2 + 1);
  }

LABEL_73:
  *a2 = 0;
  *(a2 + 1) = 0;
  v42 = *(a2 + 3);
  if (v42 && v6)
  {
    (*(*v42 + 16))(v42, v12);
  }

  v15 = 0;
LABEL_19:
  v16 = IPC::Decoder::decode<float>(a2);
  v17 = *(a2 + 1);
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *a2;
  v20 = v18 - *a2;
  v21 = v17 >= v20;
  v22 = v17 - v20;
  if (v21 && v22 > 3)
  {
    v23 = (v18 + 1);
    *(a2 + 2) = v18 + 1;
    if (v18)
    {
      v24 = *v18 | 0x100000000;
      goto LABEL_24;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43)
    {
      if (v17)
      {
        (*(*v43 + 16))(v43);
        v17 = *(a2 + 1);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v44 = *(a2 + 3);
  if (!v44)
  {
    v24 = 0;
    goto LABEL_79;
  }

  if (!v17)
  {
    v24 = 0;
    goto LABEL_80;
  }

  (*(*v44 + 16))(v44);
  v24 = 0;
  v19 = *a2;
  v17 = *(a2 + 1);
  v23 = *(a2 + 2);
LABEL_24:
  if (v17 <= &v23[-v19])
  {
    v38 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v38)
    {
      if (v17)
      {
        (*(*v38 + 16))(v38);
        v19 = *a2;
        v17 = *(a2 + 1);
        goto LABEL_81;
      }

LABEL_80:
      v19 = 0;
LABEL_81:
      *a2 = 0;
      *(a2 + 1) = 0;
      v45 = *(a2 + 3);
      if (v45)
      {
        if (v17)
        {
          (*(*v45 + 16))(v45, v19);
          v19 = *a2;
          v17 = *(a2 + 1);
          goto LABEL_84;
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = 0;
      goto LABEL_84;
    }

LABEL_79:
    v17 = 0;
    goto LABEL_80;
  }

  *(a2 + 2) = v23 + 1;
  if (!v23)
  {
    goto LABEL_81;
  }

  if (*v23 < 2u)
  {
    v25 = 1;
    goto LABEL_28;
  }

LABEL_84:
  *a2 = 0;
  *(a2 + 1) = 0;
  v46 = *(a2 + 3);
  if (v46 && v17)
  {
    (*(*v46 + 16))(v46, v19);
  }

  v25 = 0;
LABEL_28:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v50);
  v26 = v51;
  if (v51)
  {
    if (!*a2)
    {
LABEL_41:
      *a1 = 0;
      a1[8] = 0;
      if (v50)
      {
        CFRelease(v50);
      }

      goto LABEL_43;
    }

LABEL_30:
    if (v8 > 0xFF && (v11 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v16 & 0x100000000) != 0 && (v24 & 0x100000000) != 0 && (v25 & 1) != 0 && (v26 & 1) != 0)
    {
      cf = v50;
      WebCore::FETurbulence::create();
      v27 = v49;
      v49 = 0;
      *a1 = v27;
      a1[8] = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v49, v28);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    __break(1u);
    goto LABEL_41;
  }

  v32 = *a2;
  v33 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v34 = *(a2 + 3);
  if (v34)
  {
    if (v33)
    {
      v47 = v26;
      (*(*v34 + 16))(v34, v32);
      v26 = v47;
      if (*a2)
      {
        goto LABEL_30;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
LABEL_43:
  v29 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v30 = *(a2 + 3);
  if (v30 && v29)
  {
    v31 = *(*v30 + 16);

    v31();
  }
}

void sub_19D7775A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::SourceAlpha,WTF::RawPtrTraits<WebCore::SourceAlpha>,WTF::DefaultRefDerefTraits<WebCore::SourceAlpha>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::SourceAlpha,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::Decoder::decode<WTF::Ref<WebCore::SourceGraphic,WTF::RawPtrTraits<WebCore::SourceGraphic>,WTF::DefaultRefDerefTraits<WebCore::SourceGraphic>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::SourceGraphic,void>::decode(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::AppleVisualEffectData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 2));
  if (*(a2 + 52))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 52))
    {
      return IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(a1, (a2 + 4));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::AppleVisualEffect>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::Decoder::decode<WebCore::AppleVisualEffect>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v8 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v8;
        v1 = v8[1];
LABEL_9:
        *v8 = 0;
        v8[1] = 0;
        v7 = v8[3];
        if (v7)
        {
          if (v1)
          {
            (*(*v7 + 16))(v7, v3);
            a1 = v8;
            v3 = *v8;
            v1 = v8[1];
            goto LABEL_12;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        a1 = v8;
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v8 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 0x12)
  {
    return v4 | 0x100;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v1)
    {
      (*(*result + 16))(result, v3);
    }

    return 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::SourceBufferEvictionData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = a2[1];
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[2]);
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
}

uint64_t IPC::ArgumentCoder<WebCore::SourceBufferEvictionData,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(this + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_28;
    }

    v10 = *v5;
    v11 = 1;
    goto LABEL_8;
  }

  while (1)
  {
    *this = 0;
    *(this + 1) = 0;
    v27 = *(this + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_28:
    *this = 0;
    *(this + 1) = 0;
    v28 = *(this + 3);
    if (v28 && v4)
    {
      (*(*v28 + 16))(v28);
    }

    v11 = 0;
    v10 = 0;
LABEL_8:
    result = IPC::Decoder::decode<long long>(this);
    v14 = v13;
    v4 = *(this + 1);
    v15 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = *this;
    v17 = v15 - *this;
    v7 = v4 >= v17;
    v18 = v4 - v17;
    if (!v7 || v18 <= 7)
    {
      v37 = result;
      v40 = v14;
      *this = 0;
      *(this + 1) = 0;
      v29 = *(this + 3);
      if (!v29)
      {
        v4 = 0;
LABEL_32:
        v16 = 0;
        goto LABEL_33;
      }

      if (!v4)
      {
        goto LABEL_32;
      }

      (*(*v29 + 16))(v29);
      v16 = *this;
      v4 = *(this + 1);
LABEL_33:
      *this = 0;
      *(this + 1) = 0;
      v30 = *(this + 3);
      if (v30)
      {
        if (v4)
        {
          (*(*v30 + 16))(v30, v16);
          v21 = 0;
          v20 = 0;
          v22 = *this;
          v4 = *(this + 1);
          v16 = *this;
          goto LABEL_36;
        }

        v22 = 0;
      }

      else
      {
        v22 = 0;
        v4 = 0;
      }

      v16 = 0;
      v21 = 0;
      v20 = 0;
LABEL_36:
      result = v37;
      v14 = v40;
      goto LABEL_15;
    }

    *(this + 2) = v15 + 1;
    if (!v15)
    {
      v37 = result;
      v40 = v14;
      goto LABEL_33;
    }

    v20 = *v15;
    v21 = 1;
    v22 = v16;
LABEL_15:
    v23 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v4 < v23 - v16 || v4 - (v23 - v16) <= 7)
    {
      break;
    }

    *(this + 2) = v23 + 1;
    if (!v23)
    {
      goto LABEL_41;
    }

    v24 = *v23;
    v25 = 1;
    if (!v16)
    {
      goto LABEL_42;
    }

LABEL_19:
    if (v11 & 1) != 0 && (v14 & 1) != 0 && (v21 & 1) != 0 && (v25)
    {
      *a2 = v10;
      *(a2 + 8) = result;
      v26 = 1;
      *(a2 + 16) = v20;
      *(a2 + 24) = v24;
      goto LABEL_24;
    }

    __break(1u);
  }

  v35 = v21;
  v33 = v20;
  v38 = result;
  v41 = v14;
  *this = 0;
  *(this + 1) = 0;
  v31 = *(this + 3);
  if (!v31)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (v4)
  {
    (*(*v31 + 16))(v31, v22);
    v22 = *this;
    v4 = *(this + 1);
  }

  else
  {
LABEL_39:
    v22 = 0;
  }

  result = v38;
  v14 = v41;
  v20 = v33;
  v21 = v35;
LABEL_41:
  *this = 0;
  *(this + 1) = 0;
  v32 = *(this + 3);
  if (v32)
  {
    if (v4)
    {
      v39 = result;
      v42 = v14;
      v34 = v20;
      v36 = v21;
      (*(*v32 + 16))(v32, v22);
      v21 = v36;
      v20 = v34;
      result = v39;
      v14 = v42;
      v25 = 0;
      v24 = 0;
      if (*this)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_42:
  v26 = 0;
  *a2 = 0;
LABEL_24:
  *(a2 + 32) = v26;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::MediaSourceConfiguration,void>::decode(void *a1)
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
        goto LABEL_10;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_10:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7)
    {
      goto LABEL_21;
    }

    v1 = 0;
    goto LABEL_12;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v9 = a1;
    goto LABEL_10;
  }

  LODWORD(v2) = *v2;
  if (v2 >= 2)
  {
    v9 = a1;
    while (1)
    {
      *v9 = 0;
      v9[1] = 0;
      v8 = v9[3];
      if (!v8 || !v1)
      {
        break;
      }

      v7 = (*(*v8 + 16))(v8, v3);
      v2 = *v9;
      if (!*v9)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_21:
      if (v1)
      {
        (*(*v7 + 16))(v7, v3);
        v3 = *v9;
        v1 = v9[1];
      }

      else
      {
LABEL_12:
        v3 = 0;
      }
    }

    LODWORD(v2) = 0;
LABEL_16:
    v4 = 0;
  }

  else
  {
    v4 = v3 != 0;
    if (!v3)
    {
      LODWORD(v2) = 0;
    }
  }

  return v2 | (v4 << 8);
}

uint64_t IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2);
  v5 = *(a2 + 16) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = (*(a2 + 16) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v7 = (*(a2 + 16) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v8 = (*(a2 + 16) & 8) != 0;
  return IPC::Encoder::operator<<<BOOL>(a1, &v8);
}

uint64_t IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v9);
  if ((v11 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v4 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  v5 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  v6 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  result = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  if (*a1)
  {
    if (v11)
    {
      *&v8 = v9;
      BYTE8(v8) = v10;
      if ((v4 & 0x100) != 0 && (v5 & 0x100) != 0 && (v6 & 0x100) != 0 && (result & 0x100) != 0)
      {
        *a2 = v8;
        *(a2 + 16) = ((2 * v5) & 0x72 | v4 & 0xF1 | (4 * v6) & 0x77) + 8 * result;
        *(a2 + 24) = 1;
        return result;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::Cursor::CustomCursorIPCData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Image,void>::encode(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::Cursor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  if (*a2 == 44)
  {
    if ((*(**(a2 + 8) + 176))(*(a2 + 8), 0) <= 0.0 || v4 <= 0.0)
    {
      LOBYTE(v9[0]) = 0;
      v10 = 0;
      v7 = 1;
    }

    else
    {
      v5 = *(a2 + 8);
      ++*(v5 + 16);
      v6 = *(a2 + 16);
      v9[0] = v5;
      v9[1] = v6;
      v7 = 1;
      v10 = 1;
    }
  }

  else
  {
    v7 = 0;
    LOBYTE(v9[0]) = *a2;
  }

  v11 = v7;
  v12 = v7;
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>>(a1, v9, v12);
  return mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(v9);
}

void sub_19D777FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(va);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 24) != 255 && *(a1 + 16) == 1)
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
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::Cursor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>>(a1, v5);
  if (*a1)
  {
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    result = WebCore::Cursor::fromIPCData(v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }

  if (v6 == 1)
  {
    return mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(v5);
  }

  return result;
}

void sub_19D7780C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(&a10);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
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

void sub_19D778154(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    mpark::variant<WebCore::PlatformCursorType,std::optional<WebCore::Cursor::CustomCursorIPCData>>::~variant(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::Cursor::fromIPCData@<X0>(IntPoint *a1@<X0>, uint64_t a2@<X8>)
{
  if (LOBYTE(a1[3].m_x) == 1)
  {
    if (a1[2].m_x)
    {
      v7 = a1 + 1;
      v6 = *a1;
    }

    else
    {
      v6 = WebCore::Image::nullImage(a1);
      v12 = 0;
      v7 = &v12;
    }

    result = WebCore::Cursor::Cursor(v13, v6, v7);
    v8 = v13[0];
    v9 = v14;
    *(a2 + 16) = v15;
    *a2 = v8;
    *(a2 + 8) = v9;
LABEL_16:
    v5 = 1;
    goto LABEL_17;
  }

  if (LOBYTE(a1[3].m_x))
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = LOBYTE(a1->m_x);
  if (result != 44 && result != 0)
  {
    v10 = WebCore::Cursor::fromType();
    result = WebCore::Cursor::platformCursor(v10);
    *a2 = *v10;
    v11 = *(v10 + 8);
    if (v11)
    {
      ++*(v11 + 16);
    }

    *(a2 + 8) = v11;
    *(a2 + 16) = *(v10 + 16);
    goto LABEL_16;
  }

  v5 = 0;
  *a2 = 0;
LABEL_17:
  *(a2 + 32) = v5;
  return result;
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::LightSource,void>::encode(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if (v4 == 2)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 2);
    IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(v3, (a2 + 16));
    IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(v3, (a2 + 28));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v3, *(a2 + 52));
    v5 = *(a2 + 56);
LABEL_9:

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v3, v5);
  }

  if (v4 != 1)
  {
    if (*(a2 + 12))
    {
      return result;
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v3, *(a2 + 16));
    v5 = *(a2 + 20);
    goto LABEL_9;
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);

  return IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(v3, (a2 + 16));
}

uint64_t IPC::ArgumentCoder<WebCore::LightSource,void>::encode(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if (v4 == 2)
  {
    if (*(result + 8))
    {
      **result = 2;
      v17 = *(result + 8);
      if (!v17)
      {
        goto LABEL_27;
      }

      ++*result;
      *(result + 8) = v17 - 1;
    }

    else
    {
      *result = 0;
      *(result + 8) = 0;
    }

    IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(result, (a2 + 16));
    result = IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(v3, (a2 + 28));
    v18 = -*v3;
    v19 = v18 & 3 | 4;
    if (*(v3 + 8) < v19)
    {
      goto LABEL_28;
    }

    *(*v3 + (v18 & 3)) = *(a2 + 52);
    v20 = *(v3 + 8);
    v21 = v20 - v19;
    if (v20 < v19)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *v3 + v19;
    *v3 = v11;
    *(v3 + 8) = v21;
    v12 = -v11 & 3 | 4;
    if (v21 >= v12)
    {
      v13 = -v11 & 3;
      v14 = *(a2 + 56);
      goto LABEL_23;
    }

LABEL_28:
    *v3 = 0;
    *(v3 + 8) = 0;
    return result;
  }

  if (v4 == 1)
  {
    if (*(result + 8))
    {
      **result = 1;
      v15 = *(result + 8);
      if (!v15)
      {
        goto LABEL_27;
      }

      ++*result;
      *(result + 8) = v15 - 1;
    }

    else
    {
      *result = 0;
      *(result + 8) = 0;
    }

    v16 = (a2 + 16);

    return IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(result, v16);
  }

  if (*(a2 + 12))
  {
    return result;
  }

  if (!*(result + 8))
  {
    goto LABEL_28;
  }

  **result = 0;
  v5 = *(result + 8);
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5 - 1;
  v7 = *result + 1;
  *result = v7;
  *(result + 8) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 < v8)
  {
    goto LABEL_28;
  }

  *(v7 + (-v7 & 3)) = *(a2 + 16);
  v9 = *(result + 8);
  v10 = v9 - v8;
  if (v9 < v8)
  {
    goto LABEL_27;
  }

  v11 = *result + v8;
  *result = v11;
  *(result + 8) = v10;
  v12 = -v11 & 3 | 4;
  if (v10 < v12)
  {
    goto LABEL_28;
  }

  v13 = -v11 & 3;
  v14 = *(a2 + 20);
LABEL_23:
  *(v11 + v13) = v14;
  v22 = *(v3 + 8);
  v23 = v22 >= v12;
  v24 = v22 - v12;
  if (!v23)
  {
    goto LABEL_27;
  }

  *v3 += v12;
  *(v3 + 8) = v24;
  return result;
}

WTF *IPC::ArgumentCoder<WebCore::Image,void>::encode(IPC::Encoder *a1, WebCore::Image *this)
{
  WebCore::Image::toShareableBitmap(&v5, this);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(a1, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v3);
  }

  return result;
}

void sub_19D778564(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::Image,void>::decode(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(a2, &v6);
  if (*a2)
  {
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::Image::create();
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
  }

  if (v7 == 1)
  {
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v5, v4);
    }
  }
}

void sub_19D778600(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, char a10)
{
  if (a10 == 1)
  {
    if (a9)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::Length,void>::encode(IPC::Encoder *a1, WebCore::Length *this)
{
  v3 = WebCore::Length::ipcData(this);
  v4 = BYTE4(v3);
  v8 = v3;
  *v9 = v5;
  v6 = BYTE4(v5);
  v10 = BYTE4(v5);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v10);
  if (v10 > 1u)
  {
    switch(v10)
    {
      case 4u:
        if (v6 == 4)
        {
          v11 = v4;
          IPC::Encoder::operator<<<BOOL>(a1, &v11);
          IPC::ArgumentCoder<mpark::variant<float,int>,void>::encode<IPC::Encoder,mpark::variant<float,int> const&>(a1, &v8, v11);
          return IPC::Encoder::operator<<<BOOL>(a1, v9);
        }

        goto LABEL_16;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_16;
        }

        break;
      case 3u:
        if (v6 != 3)
        {
          goto LABEL_16;
        }

        break;
      default:
        return IPC::ArgumentCoder<mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,0ul,1ul,2ul,3ul,4ul>(a1, &v8, v10);
    }

    return IPC::ArgumentCoder<WebCore::Length::RelativeData,void>::encode(a1, &v8);
  }

  if (!v10)
  {
    if (!v6)
    {
      return result;
    }

LABEL_16:
    mpark::throw_bad_variant_access(result);
  }

  if (v10 != 1)
  {
    return IPC::ArgumentCoder<mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Length::AutoData,WebCore::Length::NormalData,WebCore::Length::RelativeData,WebCore::Length::PercentData,WebCore::Length::FixedData,WebCore::Length::IntrinsicData,WebCore::Length::MinIntrinsicData,WebCore::Length::MinContentData,WebCore::Length::MaxContentData,WebCore::Length::FillAvailableData,WebCore::Length::FitContentData,WebCore::Length::ContentData,WebCore::Length::UndefinedData>,0ul,1ul,2ul,3ul,4ul>(a1, &v8, v10);
  }

  if (v6 != 1)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::Length::RelativeData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 4);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<float,int>,void>::encode<IPC::Encoder,mpark::variant<float,int> const&>(a1, a2, v5);
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
}

IPC::Encoder *IPC::Encoder::operator<<<mpark::variant<float,int> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 4);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<float,int>,void>::encode<IPC::Encoder,mpark::variant<float,int> const&>(a1, a2, v5);
  return a1;
}

unint64_t IPC::Decoder::decode<mpark::variant<float,int>>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *a1;
  if (v2 <= v3 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v2)
      {
        (*(*v13 + 16))(v13);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_22;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_22:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14 && v2)
    {
      (*(*v14 + 16))(v14);
    }

    goto LABEL_6;
  }

  if (*v3 > 1u)
  {
    goto LABEL_6;
  }

  if (!*v3)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = ((v3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    if (v2 >= v10 - v4 && v2 - (v10 - v4) > 3)
    {
      *(a1 + 2) = v9 + 8;
      if (v10)
      {
        v5 = *v10;
        v12 = v5 >> 8;
        return v5 | (v12 << 8);
      }

      v15 = v2;
      v16 = v4;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v17 = *(a1 + 3);
      if (v17)
      {
        (*(*v17 + 16))(v17);
        v16 = *a1;
        v15 = *(a1 + 1);
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18 && v15)
    {
      (*(*v18 + 16))(v18, v16, v15);
    }

    goto LABEL_6;
  }

  v5 = IPC::Decoder::decode<float>(a1);
  if ((v5 & 0x100000000) != 0)
  {
    v12 = (v5 >> 8) & 0x1FFFFFF;
    return v5 | (v12 << 8);
  }

LABEL_6:
  v6 = *a1;
  v7 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v7)
    {
      (*(*result + 16))(result, v6);
    }

    return 0;
  }

  return result;
}

void IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v12);
  IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v10, a1);
  IPC::Decoder::decode<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v8);
  if (*a1)
  {
    if ((v13 & 1) == 0 || (v11 & 1) == 0 || (v9 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk(v7, &v12, &v10, v8);
    _ZNSt3__127__optional_copy_assign_baseIN7WebCore36OrganizationStorageAccessPromptQuirkELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a2, v7);
    WebCore::OrganizationStorageAccessPromptQuirk::~OrganizationStorageAccessPromptQuirk(v7, v5);
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }

  if (v9 == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
  }

  if (v11 == 1 && v10)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v10, v4);
  }

  if (v13 == 1)
  {
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }
  }
}

void sub_19D778AD8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  WebCore::OrganizationStorageAccessPromptQuirk::~OrganizationStorageAccessPromptQuirk(&a10, a2);
  if (a16 == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, v18);
  }

  if (*(v16 - 40) == 1)
  {
    v19 = *(v16 - 48);
    if (v19)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v19, v18);
    }
  }

  if (*(v16 - 24) == 1)
  {
    v20 = *(v16 - 32);
    *(v16 - 32) = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl **IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(_BYTE *a1, WTF::StringImpl **this)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(this, a1);
  if ((a1[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D778BA8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::URL,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D778C0C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::OrganizationStorageAccessPromptQuirk::~OrganizationStorageAccessPromptQuirk(WebCore::OrganizationStorageAccessPromptQuirk *this, void *a2)
{
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 20);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v18);
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    v11 = v5 + 1;
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v12 = *v5 | 0x100000000;
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  while (1)
  {
    IPC::Decoder::markInvalid(a1);
LABEL_28:
    IPC::Decoder::markInvalid(a1);
    v12 = 0;
    v4 = *(a1 + 1);
    v11 = *(a1 + 2);
    v6 = *a1;
LABEL_8:
    v13 = ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v8 = v4 >= v13 - v6;
    v14 = v4 - (v13 - v6);
    if (v8 && v14 > 3)
    {
      *(a1 + 2) = v13 + 1;
      if (v13)
      {
        v16 = *v13 | 0x100000000;
        goto LABEL_15;
      }
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
    }

    IPC::Decoder::markInvalid(a1);
    v16 = 0;
    v6 = *a1;
LABEL_15:
    if (!v6)
    {
      goto LABEL_25;
    }

    if ((v12 & 0x100000000) != 0 && (v16 & 0x100000000) != 0)
    {
      if (__CFADD__(v12, v16))
      {
        __break(0xC471u);
        return;
      }

      if (v20)
      {
        break;
      }
    }

    __break(1u);
  }

  if (v19 >= (v16 + v12))
  {
    WebCore::ShareableResourceHandle::ShareableResourceHandle();
    WTF::MachSendRight::MachSendRight();
    *(a2 + 8) = *&v17[8];
    *(a2 + 24) = 1;
    WTF::MachSendRight::~MachSendRight(v17);
    goto LABEL_22;
  }

LABEL_25:
  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_22:
  if (v20 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v18);
  }
}

void sub_19D778E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::RetainPtr<DDScannerResult>>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<DDScannerResult>,void>::decode<DDScannerResult,DDScannerResult*>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
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

void sub_19D778EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShareableBitmapConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if ((*(a2 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_14;
    }

    IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 8));
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }

  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 28));
  if (*(a2 + 32))
  {
    goto LABEL_14;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  if (*(a2 + 40))
  {
    __break(0xC471u);
    JUMPOUT(0x19D779014);
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  if (*(a2 + 48))
  {
LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19D77900CLL);
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  v4 = *(a2 + 56);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::Encoder::addAttachment(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));

  return IPC::ArgumentCoder<WebCore::ShareableBitmapConfiguration,void>::encode(a1, a2 + 16);
}

void IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v65);
  v5 = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v7 = v5;
  v73 = v5;
  v74 = v6;
  if (!*a1)
  {
    goto LABEL_74;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_76;
  }

  if (v5 < 1 || SHIDWORD(v5) < 1)
  {
LABEL_74:
    LOBYTE(v53) = 0;
    v64 = 0;
    goto LABEL_75;
  }

  IPC::ArgumentCoder<std::optional<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(a1, &v70);
  if ((v72 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v8 = *(a1 + 1);
  v9 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = *a1;
  v11 = v9 - *a1;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v12 && v13 > 3)
  {
    *(a1 + 2) = v9 + 1;
    if (v9)
    {
      v14 = *v9 | 0x100000000;
      goto LABEL_12;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  v14 = 0;
  v10 = *a1;
LABEL_12:
  if (v10)
  {
    v15 = v10;
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    v15 = *a1;
  }

  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  if (v16 <= &v17[-v15])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_92;
  }

  v18 = v17 + 1;
  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_92:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_93;
  }

  if (*v17 >= 2u)
  {
LABEL_93:
    IPC::Decoder::markInvalid(a1);
    v19 = 0;
    v16 = *(a1 + 1);
    v18 = *(a1 + 2);
    v15 = *a1;
    goto LABEL_18;
  }

  v19 = 1;
LABEL_18:
  v20 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = v16 >= v20 - v15;
  v21 = v16 - (v20 - v15);
  if (!v12 || v21 <= 3)
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_82;
  }

  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_82:
    IPC::Decoder::markInvalid(a1);
    v22 = 0;
    v15 = *a1;
    goto LABEL_23;
  }

  v22 = *v20 | 0x100000000;
LABEL_23:
  if (!v15)
  {
    goto LABEL_87;
  }

  if ((v22 & 0x100000000) == 0)
  {
    goto LABEL_76;
  }

  if ((v22 - 1) >= 0x10)
  {
    goto LABEL_87;
  }

  v23 = *(a1 + 1);
  v24 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v23 < v24 - v15 || v23 - (v24 - v15) <= 3)
  {
    IPC::Decoder::markInvalid(a1);
LABEL_86:
    IPC::Decoder::markInvalid(a1);
    if (*a1)
    {
      goto LABEL_76;
    }

    goto LABEL_87;
  }

  *(a1 + 2) = v24 + 1;
  if (!v24)
  {
    goto LABEL_86;
  }

  v25 = *v24;
  if ((*v24 - 1) >= 8)
  {
    goto LABEL_87;
  }

  v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v23 < v26 - v15 || v23 - (v26 - v15) <= 3)
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_86;
  }

  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
    goto LABEL_86;
  }

  v2 = *v26;
  if (v25 * v7 > *v26)
  {
    goto LABEL_87;
  }

  v27 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v28 = v27 - v15;
  v12 = v23 >= v28;
  v29 = v23 - v28;
  if (v12 && v29 > 3)
  {
    *(a1 + 2) = v27 + 1;
    if (v27)
    {
      v30 = *v27 | 0x100000000;
      goto LABEL_39;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  if (!*a1)
  {
LABEL_87:
    v37 = 0;
    v36 = 0;
    v38 = 0;
    LOBYTE(v53) = 0;
    v64 = 0;
    goto LABEL_54;
  }

  v30 = 0;
LABEL_39:
  if ((v72 & 1) == 0)
  {
    goto LABEL_76;
  }

  LOBYTE(v68) = 0;
  v69 = 0;
  if (v71 == 1)
  {
    v31 = v70;
    v70 = 0;
    v68 = v31;
    v69 = 1;
  }

  if (!v10 || (v19 & 1) == 0 || (v30 & 0x100000000) == 0)
  {
    goto LABEL_76;
  }

  WebCore::ShareableBitmapConfiguration::ShareableBitmapConfiguration();
  v53 = v43;
  LOBYTE(v54) = 0;
  v55 = 0;
  LOBYTE(v7) = v45;
  if (v45 == 1)
  {
    v32 = cf;
    cf = 0;
    v54 = v32;
    v55 = 1;
  }

  v56 = v46;
  v57 = BYTE4(v46);
  v58 = v47 != 0;
  v59 = v48;
  v60 = v49 != 0;
  v61 = v50;
  LOBYTE(v2) = v51 == 0;
  v62 = v51 != 0;
  v33 = v52;
  v63 = v52;
  v64 = 1;
  if (v45)
  {
    v34 = cf;
    cf = 0;
    if (v34)
    {
      CFRelease(v34);
      v33 = v52;
    }
  }

  if (v69 == 1)
  {
    v35 = v68;
    v68 = 0;
    if (v35)
    {
      v42 = v33;
      CFRelease(v35);
      v33 = v42;
    }
  }

  v36 = v33;
  v37 = v43 >> 32;
  v38 = 1;
LABEL_54:
  if (v72 == 1 && v71 == 1)
  {
    v39 = v70;
    v70 = 0;
    if (v39)
    {
      CFRelease(v39);
    }
  }

  if ((v38 & 1) == 0)
  {
LABEL_75:
    IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
      *a2 = 0;
      a2[80] = 0;
      goto LABEL_71;
    }

    goto LABEL_76;
  }

  if (!*a1 || (v2 & 1) == 0 || (v37 * v36) >> 32)
  {
LABEL_77:
    *a2 = 0;
    a2[80] = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  if ((v67 & 1) == 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v66 < v37 * v36)
  {
    goto LABEL_77;
  }

  WebCore::ShareableBitmapHandle::ShareableBitmapHandle();
  WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a2, &v43);
  a2[80] = 1;
  if (v47 == 1)
  {
    v40 = v46;
    v46 = 0;
    if (v40)
    {
      CFRelease(v40);
    }
  }

  WTF::MachSendRight::~MachSendRight(&v43);
  if (v64 & 1) != 0 && (v55)
  {
LABEL_69:
    v41 = v54;
    v54 = 0;
    if (v41)
    {
      CFRelease(v41);
    }
  }

LABEL_71:
  if (v67 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v65);
  }
}

void sub_19D7795B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (*(v35 - 112) == 1 && *(v35 - 120) == 1)
  {
    v37 = *(v35 - 128);
    *(v35 - 128) = 0;
    if (v37)
    {
      CFRelease(v37);
    }
  }

  if (a35 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a31);
  }

  _Unwind_Resume(exception_object);
}

WTF::MachSendRight *IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::encode(IPC::Encoder *a1, WebCore::ShareableBitmap *this)
{
  WebCore::ShareableBitmap::createReadOnlyHandle(v4, this);
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(a1, v4);
  return std::optional<WebCore::ShareableBitmapHandle>::~optional(v4);
}

void sub_19D7796C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::ShareableBitmapHandle>::~optional(va);
  _Unwind_Resume(a1);
}

WTF::MachSendRight *std::optional<WebCore::ShareableBitmapHandle>::~optional(WTF::MachSendRight *this)
{
  if (*(this + 80) == 1)
  {
    if (*(this + 32) == 1)
    {
      v2 = *(this + 3);
      *(this + 3) = 0;
      if (v2)
      {
        CFRelease(v2);
      }
    }

    WTF::MachSendRight::~MachSendRight(this);
  }

  return this;
}

void IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WebCore::ShareableBitmapHandle>>(a1, v5);
  if (*a1)
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::ShareableBitmap::createReadOnly();
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }

  if (v9 == 1 && v8 == 1)
  {
    if (v7 == 1)
    {
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }
    }

    WTF::MachSendRight::~MachSendRight(v5);
  }
}

void sub_19D7797C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a21 == 1 && a19 == 1)
  {
    if (a13 == 1)
    {
      v24 = cf;
      cf = 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a9);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::ShareableBitmapHandle>>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[88] & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
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

void sub_19D779880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 80) == 1)
  {
    if (*(v1 + 32) == 1)
    {
      v3 = *(v1 + 24);
      *(v1 + 24) = 0;
      if (v3)
      {
        CFRelease(v3);
      }
    }

    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::DataDetectorElementInfo,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RetainPtr<DDScannerResult>>(a1, &v8);
  IPC::Decoder::decode<WebCore::IntRect>(a1, &v6);
  if (*a1)
  {
    if (v9 & 1) != 0 && (v7)
    {
      v4 = v8;
      *(a2 + 8) = v6;
      *a2 = v4;
      *(a2 + 24) = 1;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v9)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
    }
  }
}

void sub_19D779960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14)
{
  if (a14)
  {
    if (a13)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SerializedPlatformDataCueValue,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v83[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56)
    {
      if (v4)
      {
        (*(*v56 + 16))(v56);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_143;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_143:
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (v57)
    {
      if (v4)
      {
        (*(*v57 + 16))(v57);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_146;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_146:
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (v58 && v4)
    {
      (*(*v58 + 16))(v58, v6);
    }

    goto LABEL_147;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_146;
  }

  if (!v7)
  {
    LOBYTE(v63[0]) = 0;
    v67 = 0;
    v68 = 1;
    goto LABEL_90;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v81);
  IPC::Decoder::decode<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, &v79);
  IPC::Decoder::decode<WTF::String>(a1, &v77);
  v8 = objc_opt_class();
  v83[0] = v8;
  if (v8)
  {
    v9 = v8;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v74, v83, 1);
  IPC::decodeObjectDirectlyRequiringAllowedClasses<NSLocale>(a1, v63);
  v12 = LOBYTE(v63[1]);
  if (LOBYTE(v63[1]) == 1)
  {
    v13 = v63[0];
    if (v63[0])
    {
      v14 = v63[0];
    }
  }

  else
  {
    v13 = 0;
  }

  if (v74)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v74, v10);
  }

  v15 = v83[0];
  v83[0] = 0;
  if (v15)
  {
  }

  v16 = *(a1 + 1);
  if ((v12 & 1) == 0)
  {
    v53 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v16)
      {
        (*(*v54 + 16))(v54, v53);
        v16 = *(a1 + 1);
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_134;
  }

LABEL_17:
  v17 = *a1;
  v15 = *(a1 + 2);
  v11 = &v15[-*a1];
  if (v16 <= v11)
  {
    v62 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v62)
    {
      if (v16)
      {
        (*(*v62 + 16))();
        v16 = *(a1 + 1);
      }
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_134;
  }

  LOBYTE(v11) = v15 + 1;
  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_134:
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55 && v16)
    {
      (*(*v55 + 16))();
    }

    goto LABEL_20;
  }

  LODWORD(v15) = *v15;
  if (v15 >= 5)
  {
    goto LABEL_20;
  }

  switch(v15)
  {
    case 0:
      LOBYTE(v11) = 0;
      v74 = 0;
      v75 = 0;
      v20 = 1;
      v76 = 1;
      LOBYTE(v15) = 1;
      goto LABEL_36;
    case 1:
      IPC::Decoder::decode<WTF::RetainPtr<NSString>>(a1, v63);
      LOBYTE(v15) = v63[1];
      if (LOBYTE(v63[1]) == 1)
      {
        LOBYTE(v15) = 0;
        v74 = v63[0];
        v20 = 1;
        v75 = 1;
        v76 = 1;
        LOBYTE(v11) = 1;
        goto LABEL_36;
      }

      break;
    case 2:
      IPC::Decoder::decode<WTF::RetainPtr<NSDate>>(a1, v63);
      LOBYTE(v15) = v63[1];
      if (LOBYTE(v63[1]) == 1)
      {
        LOBYTE(v15) = 0;
        v74 = v63[0];
        LOBYTE(v11) = 2;
LABEL_35:
        v75 = v11;
        v20 = 1;
        v76 = 1;
        goto LABEL_36;
      }

      break;
    case 3:
      IPC::Decoder::decode<WTF::RetainPtr<NSNumber>>(a1, v63);
      LOBYTE(v15) = v63[1];
      if (LOBYTE(v63[1]) == 1)
      {
        LOBYTE(v15) = 0;
        v74 = v63[0];
        LOBYTE(v11) = 3;
        goto LABEL_35;
      }

      break;
    default:
      IPC::Decoder::decode<WTF::RetainPtr<NSData>>(a1, v63);
      LOBYTE(v15) = v63[1];
      if (LOBYTE(v63[1]) == 1)
      {
        LOBYTE(v15) = 0;
        v74 = v63[0];
        LOBYTE(v11) = 4;
        goto LABEL_35;
      }

      break;
  }

LABEL_20:
  LOBYTE(v74) = 0;
  v76 = 0;
  v17 = *a1;
  v18 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v19 = *(a1 + 3);
  if (v19 && v18)
  {
    (*(*v19 + 16))(v19, v17);
  }

  v20 = 0;
LABEL_36:
  v21 = *a1;
  if (*a1)
  {
    if ((v82 & 1) == 0)
    {
      goto LABEL_127;
    }

    v22 = v81;
    v81 = 0;
    if ((v80 & 1) == 0)
    {
      goto LABEL_127;
    }

    v23 = v79;
    v79 = 0;
    if ((v78 & 1) == 0)
    {
      goto LABEL_127;
    }

    v24 = v77;
    v77 = 0;
    if ((v12 & 1) == 0 || (v20 & 1) == 0)
    {
      goto LABEL_127;
    }

    if (v15)
    {
      v25 = 0;
    }

    else
    {
      v25 = v74;
      v74 = 0;
    }

    v65 = v25;
    v66 = v11;
    v69[0] = v22;
    v69[1] = v23;
    *v63 = 0u;
    *v64 = 0u;
    v70[0] = v24;
    v70[1] = v13;
    if (v15)
    {
      v25 = 0;
    }

    else
    {
      v65 = 0;
    }

    v71 = v25;
    v72 = v11;
    v73 = 1;
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&v65);
    v27 = v64[1];
    v64[1] = 0;
    if (v27)
    {
    }

    v28 = v64[0];
    v64[0] = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }

    if (v63[1])
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v63[1], v26);
    }

    v29 = v63[0];
    v63[0] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v26);
    }

    v13 = 0;
  }

  else
  {
    LOBYTE(v69[0]) = 0;
    v73 = 0;
    if (!v20)
    {
      goto LABEL_60;
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&v74);
LABEL_60:
  if (v13 && v12)
  {
  }

  if (v78 == 1)
  {
    v30 = v77;
    v77 = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v17);
      }
    }
  }

  if (v80 == 1 && v79)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v79, v17);
  }

  if (v82 == 1 && (v31 = v81, v81 = 0, v31) && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v17);
    if (v21)
    {
      goto LABEL_74;
    }
  }

  else if (v21)
  {
    goto LABEL_74;
  }

  v50 = *a1;
  v51 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v52 = *(a1 + 3);
  if (v52 && v51)
  {
    (*(*v52 + 16))(v52, v50);
  }

LABEL_74:
  if (v73 == 1)
  {
    v32 = *v69;
    v33 = *v70;
    *v69 = 0u;
    *v70 = 0u;
    *v63 = v32;
    *v64 = v33;
    LOBYTE(v65) = 0;
    v66 = -1;
    if (v72)
    {
      if (v72 == 255)
      {
LABEL_80:
        v67 = 1;
        v68 = 1;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&v71);
        v36 = v70[1];
        v70[1] = 0;
        if (v36)
        {
        }

        v37 = v70[0];
        v70[0] = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v35);
        }

        if (v69[1])
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v69[1], v35);
        }

        v38 = v69[0];
        v69[0] = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v35);
        }

        goto LABEL_90;
      }

      v34 = v71;
      v71 = 0;
    }

    else
    {
      v34 = 0;
    }

    v65 = v34;
    v66 = v72;
    goto LABEL_80;
  }

LABEL_147:
  LOBYTE(v63[0]) = 0;
  v68 = 0;
  v59 = *a1;
  v60 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v61 = *(a1 + 3);
  if (v61 && v60)
  {
    (*(*v61 + 16))(v61, v59);
  }

LABEL_90:
  if (!*a1)
  {
LABEL_128:
    *a2 = 0;
    a2[56] = 0;
    goto LABEL_110;
  }

  if ((v68 & 1) == 0)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  LOBYTE(v69[0]) = 0;
  v73 = 0;
  if (v67 != 1)
  {
    goto LABEL_99;
  }

  v39 = *v63;
  v40 = *v64;
  *v63 = 0u;
  *v64 = 0u;
  *v69 = v39;
  *v70 = v40;
  LOBYTE(v71) = 0;
  v72 = -1;
  if (!v66)
  {
    v41 = 0;
    goto LABEL_97;
  }

  if (v66 != 255)
  {
    v41 = v65;
    v65 = 0;
LABEL_97:
    v71 = v41;
    v72 = v66;
  }

  v73 = 1;
LABEL_99:
  std::__optional_move_base<WebCore::SerializedPlatformDataCueValue::Data,false>::__optional_move_base[abi:sn200100](a2, v69);
  a2[56] = 1;
  if (v73 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&v71);
    v43 = v70[1];
    v70[1] = 0;
    if (v43)
    {
    }

    v44 = v70[0];
    v70[0] = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v42);
    }

    if (v69[1])
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v69[1], v42);
    }

    v45 = v69[0];
    v69[0] = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v42);
    }
  }

LABEL_110:
  if (v68 == 1 && v67 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&v65);
    v47 = v64[1];
    v64[1] = 0;
    if (v47)
    {
    }

    v48 = v64[0];
    v64[0] = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v46);
    }

    if (v63[1])
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v63[1], v46);
    }

    v49 = v63[0];
    v63[0] = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v46);
      }
    }
  }
}

void sub_19D77A248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl **a10, WTF::StringImpl *a11, void *a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a17 == 1 && a15 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,(mpark::detail::Trait)1>::~move_constructor(&a13);
    if (a12)
    {
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v28);
    }

    if (a10)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a10, v28);
    }

    if (a9)
    {
      if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a9, v28);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SerializedPlatformDataCueValue::Data,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::encodeObjectDirectly<NSLocale>(a1, *(a2 + 24));
  v4 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v4);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDate>,WTF::RetainPtr<NSNumber>,WTF::RetainPtr<NSData>> const&>(a1, a2 + 32, v4);
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D77A458(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(IPC::Encoder *a1, WebCore::FragmentedSharedBuffer *this)
{
  v7 = *MEMORY[0x1E69E9840];
  WebCore::FragmentedSharedBuffer::toIPCData(v5, this);
  v3 = v6;
  IPC::Encoder::operator<<<BOOL>(a1, &v3);
  IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v5, v3);
  if (v6 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(&v4, v5);
  }
}

void IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v5, a1);
  if (*a1)
  {
    if ((v7 & 1) == 0)
    {
      __break(1u);
    }

    WebCore::FragmentedSharedBuffer::fromIPCData();
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }

  if (v7 == 1 && v6 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(&v4, v5);
  }
}

void sub_19D77A5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, WTF *a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, int a18, __int16 a19, char a20, char a21)
{
  if (a19 == 1 && a17 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(&a13, &a14);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<mpark::variant<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[32] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D77A678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (*(v13 + 32) == 1)
  {
    if (*(v13 + 24) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<std::optional<WebCore::SharedMemoryHandle>,WTF::Vector<std::span<unsigned char const,18446744073709551615ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(&a13, v13);
    }

    *(v13 + 24) = -1;
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PublicSuffix,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v6);
  if (*a2)
  {
    if (v7)
    {
      *a1 = v6;
      *(a1 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WrappedCryptoKey,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  for (i = 0; i != 24; ++i)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + i));
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 24), *(a2 + 36));
  v5 = 0;
  v6 = a2 + 40;
  do
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v6 + v5++));
  }

  while (v5 != 16);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WrappedCryptoKey,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = *a1;
  if (v15 <= &v16[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v90 = *(a1 + 3);
    if (v90)
    {
      if (v15)
      {
        (*(*v90 + 16))(v90);
        v15 = *(a1 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_98;
  }

  v18 = v16 + 1;
  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
LABEL_98:
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91 && v15)
    {
      (*(*v91 + 16))(v91);
    }

    goto LABEL_92;
  }

  if (v15 <= v18 - v17)
  {
    goto LABEL_89;
  }

  v19 = *v16;
  v20 = v16 + 2;
  *(a1 + 2) = v16 + 2;
  if (v16 == -1)
  {
    goto LABEL_94;
  }

  if (v15 <= v20 - v17)
  {
    goto LABEL_89;
  }

  v8 = *v18;
  v21 = v16 + 3;
  *(a1 + 2) = v16 + 3;
  if (v16 == -2)
  {
    goto LABEL_94;
  }

  if (v15 <= v21 - v17)
  {
    goto LABEL_89;
  }

  v9 = *v20;
  v22 = v16 + 4;
  *(a1 + 2) = v16 + 4;
  if (v16 == -3)
  {
    goto LABEL_94;
  }

  if (v15 <= v22 - v17)
  {
    goto LABEL_89;
  }

  v10 = *v21;
  v23 = v16 + 5;
  *(a1 + 2) = v16 + 5;
  if (v16 == -4)
  {
    goto LABEL_94;
  }

  if (v15 <= v23 - v17)
  {
    goto LABEL_89;
  }

  v24 = *v22;
  v25 = v16 + 6;
  *(a1 + 2) = v16 + 6;
  if (v16 == -5)
  {
    goto LABEL_94;
  }

  if (v15 <= v25 - v17)
  {
    goto LABEL_89;
  }

  v26 = *v23;
  v27 = v16 + 7;
  *(a1 + 2) = v16 + 7;
  if (v16 == -6)
  {
    goto LABEL_94;
  }

  if (v15 <= v27 - v17)
  {
    goto LABEL_89;
  }

  v28 = *v25;
  v29 = v16 + 8;
  *(a1 + 2) = v16 + 8;
  if (v16 == -7)
  {
    goto LABEL_94;
  }

  if (v15 <= v29 - v17)
  {
    goto LABEL_89;
  }

  v11 = *v27;
  v30 = v16 + 9;
  *(a1 + 2) = v16 + 9;
  if (v16 == -8)
  {
    goto LABEL_94;
  }

  if (v15 <= v30 - v17)
  {
    goto LABEL_89;
  }

  v31 = *v29;
  v32 = v16 + 10;
  *(a1 + 2) = v16 + 10;
  if (v16 == -9)
  {
    goto LABEL_94;
  }

  if (v15 <= v32 - v17)
  {
    goto LABEL_89;
  }

  v33 = *v30;
  v34 = v16 + 11;
  *(a1 + 2) = v16 + 11;
  if (v16 == -10)
  {
    goto LABEL_94;
  }

  if (v15 <= v34 - v17)
  {
    goto LABEL_89;
  }

  v35 = *v32;
  v36 = v16 + 12;
  *(a1 + 2) = v16 + 12;
  if (v16 == -11)
  {
    goto LABEL_94;
  }

  if (v15 <= v36 - v17)
  {
    goto LABEL_89;
  }

  v37 = *v34;
  v38 = v16 + 13;
  *(a1 + 2) = v16 + 13;
  if (v16 == -12)
  {
    goto LABEL_94;
  }

  if (v15 <= v38 - v17)
  {
    goto LABEL_89;
  }

  a2 = *v36;
  v39 = v16 + 14;
  *(a1 + 2) = v16 + 14;
  if (v16 == -13)
  {
    goto LABEL_94;
  }

  if (v15 <= v39 - v17)
  {
    goto LABEL_89;
  }

  v12 = *v38;
  v40 = v16 + 15;
  *(a1 + 2) = v16 + 15;
  if (v16 == -14)
  {
    goto LABEL_94;
  }

  if (v15 <= v40 - v17)
  {
    goto LABEL_89;
  }

  a3 = *v39;
  v41 = v16 + 16;
  *(a1 + 2) = v16 + 16;
  if (v16 == -15)
  {
    goto LABEL_94;
  }

  if (v15 <= v41 - v17)
  {
    goto LABEL_89;
  }

  a4 = *v40;
  v42 = v16 + 17;
  *(a1 + 2) = v16 + 17;
  if (v16 == -16)
  {
    goto LABEL_94;
  }

  if (v15 <= v42 - v17)
  {
    goto LABEL_89;
  }

  a5 = *v41;
  v43 = v16 + 18;
  *(a1 + 2) = v16 + 18;
  if (v16 == -17)
  {
    goto LABEL_94;
  }

  if (v15 <= v43 - v17)
  {
    goto LABEL_89;
  }

  a6 = *v42;
  v44 = v16 + 19;
  *(a1 + 2) = v16 + 19;
  if (v16 == -18)
  {
    goto LABEL_94;
  }

  if (v15 <= v44 - v17)
  {
    goto LABEL_89;
  }

  v7 = *v43;
  v45 = v16 + 20;
  *(a1 + 2) = v16 + 20;
  if (v16 == -19)
  {
    goto LABEL_94;
  }

  if (v15 <= v45 - v17)
  {
    goto LABEL_89;
  }

  v97 = *v44;
  v46 = v16 + 21;
  *(a1 + 2) = v16 + 21;
  if (v16 == -20)
  {
    goto LABEL_94;
  }

  if (v15 <= v46 - v17)
  {
    goto LABEL_89;
  }

  v96 = *v45;
  v47 = v16 + 22;
  *(a1 + 2) = v16 + 22;
  if (v16 == -21)
  {
    goto LABEL_94;
  }

  if (v15 <= v47 - v17)
  {
    goto LABEL_89;
  }

  v95 = *v46;
  v48 = v16 + 23;
  *(a1 + 2) = v16 + 23;
  if (v16 == -22)
  {
    goto LABEL_94;
  }

  if (v15 <= v48 - v17)
  {
    goto LABEL_89;
  }

  v99 = v7;
  v7 = *v47;
  *(a1 + 2) = v16 + 24;
  if (v16 == -23)
  {
LABEL_94:
    v81 = v15;
    v82 = v17;
    goto LABEL_91;
  }

  v100 = a6;
  v101 = a5;
  v102 = a4;
  v103 = a3;
  v104 = a2;
  v105 = v37;
  v106 = v35;
  v107 = v33;
  v108 = v31;
  v109 = v28;
  v110 = v26;
  v111 = v24;
  v112 = v19;
  v98 = *v48;
  for (i = 1; ; i = 0)
  {
    IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v113);
    v50 = *(a1 + 1);
    v51 = *(a1 + 2);
    v52 = *a1;
    if (v50 <= &v51[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92 || !v50)
      {
        v88 = 0;
        v89 = 0;
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v53 = v51 + 1;
    *(a1 + 2) = v51 + 1;
    if (!v51)
    {
      goto LABEL_95;
    }

    if (v50 <= v53 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v54 = *v51;
    v55 = v51 + 2;
    *(a1 + 2) = v51 + 2;
    if (v51 == -1)
    {
      goto LABEL_95;
    }

    if (v50 <= v55 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v56 = *v53;
    v57 = v51 + 3;
    *(a1 + 2) = v51 + 3;
    if (v51 == -2)
    {
      goto LABEL_95;
    }

    if (v50 <= v57 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v58 = *v55;
    v59 = v51 + 4;
    *(a1 + 2) = v51 + 4;
    if (v51 == -3)
    {
      goto LABEL_95;
    }

    if (v50 <= v59 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v60 = *v57;
    v61 = v51 + 5;
    *(a1 + 2) = v51 + 5;
    if (v51 == -4)
    {
      goto LABEL_95;
    }

    if (v50 <= v61 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v62 = *v59;
    v63 = v51 + 6;
    *(a1 + 2) = v51 + 6;
    if (v51 == -5)
    {
      goto LABEL_95;
    }

    if (v50 <= v63 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v64 = *v61;
    v65 = v51 + 7;
    *(a1 + 2) = v51 + 7;
    if (v51 == -6)
    {
      goto LABEL_95;
    }

    if (v50 <= v65 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v66 = *v63;
    v67 = v51 + 8;
    *(a1 + 2) = v51 + 8;
    if (v51 == -7)
    {
      goto LABEL_95;
    }

    if (v50 <= v67 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v68 = *v65;
    v69 = v51 + 9;
    *(a1 + 2) = v51 + 9;
    if (v51 == -8)
    {
      goto LABEL_95;
    }

    if (v50 <= v69 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    v70 = *v67;
    v71 = v51 + 10;
    *(a1 + 2) = v51 + 10;
    if (v51 == -9)
    {
      goto LABEL_95;
    }

    if (v50 <= v71 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    result = *v69;
    v73 = v51 + 11;
    *(a1 + 2) = v51 + 11;
    if (v51 == -10)
    {
      goto LABEL_95;
    }

    if (v50 <= v73 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    a2 = *v71;
    v74 = v51 + 12;
    *(a1 + 2) = v51 + 12;
    if (v51 == -11)
    {
      goto LABEL_95;
    }

    if (v50 <= v74 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    a3 = *v73;
    v75 = v51 + 13;
    *(a1 + 2) = v51 + 13;
    if (v51 == -12)
    {
      goto LABEL_95;
    }

    if (v50 <= v75 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    a4 = *v74;
    v76 = v51 + 14;
    *(a1 + 2) = v51 + 14;
    if (v51 == -13)
    {
      goto LABEL_95;
    }

    if (v50 <= v76 - v52)
    {
      v88 = 0;
      v89 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v92 = *(a1 + 3);
      if (!v92)
      {
        goto LABEL_132;
      }

      goto LABEL_149;
    }

    a5 = *v75;
    v77 = v51 + 15;
    *(a1 + 2) = v51 + 15;
    if (v51 == -14)
    {
      goto LABEL_95;
    }

    if (v50 <= v77 - v52)
    {
      break;
    }

    a6 = *v76;
    *(a1 + 2) = v51 + 16;
    if (v51 == -15)
    {
LABEL_95:
      v88 = v50;
      v89 = v52;
      goto LABEL_132;
    }

    v78 = *v77;
    v79 = 1;
    if (!v52)
    {
      goto LABEL_134;
    }

LABEL_83:
    if (i & 1) != 0 && (v115 & 1) != 0 && (v79)
    {
      *(a7 + 40) = v54;
      *(a7 + 41) = v56;
      *(a7 + 42) = v58;
      *(a7 + 43) = v60;
      *(a7 + 44) = v62;
      *(a7 + 45) = v64;
      *(a7 + 46) = v66;
      *(a7 + 47) = v68;
      *(a7 + 48) = v70;
      *(a7 + 49) = result;
      *(a7 + 50) = a2;
      v80 = v113;
      *(a7 + 51) = a3;
      *(a7 + 52) = a4;
      *(a7 + 53) = a5;
      *(a7 + 54) = a6;
      *(a7 + 55) = v78;
      *a7 = v112;
      *(a7 + 1) = v8;
      *(a7 + 2) = v9;
      *(a7 + 3) = v10;
      *(a7 + 4) = v111;
      *(a7 + 5) = v110;
      *(a7 + 6) = v109;
      *(a7 + 7) = v11;
      *(a7 + 8) = v108;
      *(a7 + 9) = v107;
      *(a7 + 10) = v106;
      *(a7 + 11) = v105;
      *(a7 + 12) = v104;
      *(a7 + 13) = v12;
      *(a7 + 14) = v103;
      *(a7 + 15) = v102;
      *(a7 + 16) = v101;
      *(a7 + 17) = v100;
      *(a7 + 18) = v99;
      *(a7 + 19) = v97;
      *(a7 + 20) = v96;
      *(a7 + 21) = v95;
      *(a7 + 22) = v7;
      *(a7 + 23) = v98;
      *(a7 + 24) = v80;
      *(a7 + 32) = v114;
      *(a7 + 56) = 1;
      return result;
    }

    __break(1u);
LABEL_89:
    v81 = 0;
    v82 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v83 = *(a1 + 3);
    if (v83)
    {
      (*(*v83 + 16))(v83);
      v82 = *a1;
      v81 = *(a1 + 1);
    }

LABEL_91:
    *a1 = 0;
    *(a1 + 1) = 0;
    v84 = *(a1 + 3);
    if (v84 && v81)
    {
      (*(*v84 + 16))(v84, v82, v81, a2, a3, a4, a5, a6);
    }

LABEL_92:
    v85 = *a1;
    v86 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v87 = *(a1 + 3);
    if (v87)
    {
      if (v86)
      {
        (*(*v87 + 16))(v87, v85, v86, a2, a3, a4, a5, a6);
      }
    }

    v112 = 0;
  }

  v88 = 0;
  v89 = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
  v92 = *(a1 + 3);
  if (!v92)
  {
    goto LABEL_132;
  }

LABEL_149:
  (*(*v92 + 16))(v92);
  v89 = *a1;
  v88 = *(a1 + 1);
LABEL_132:
  *a1 = 0;
  *(a1 + 1) = 0;
  v93 = *(a1 + 3);
  if (v93 && v88)
  {
    (*(*v93 + 16))(v93, v89, v88);
  }

  v52 = *a1;
  v94 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v94)
    {
      result = (*(*result + 16))(result, v52);
      v79 = 0;
      v54 = 0;
      v52 = *a1;
      if (*a1)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_134:
  *a7 = 0;
  *(a7 + 56) = 0;
  if (v115)
  {
    result = v113;
    if (v113)
    {
      v113 = 0;
      LODWORD(v114) = 0;
      return WTF::fastFree(result, v52);
    }
  }

  return result;
}

void sub_19D77B38C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, int a20, char a21)
{
  if (a21)
  {
    if (a18)
    {
      WTF::fastFree(a18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *IPC::ArgumentCoder<WebCore::OwnerPermissionsPolicyData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v21 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v21);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v21);
  WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(&v22, (a2 + 32));
  if (v22)
  {
    v4 = *(v22 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v6 = v22;
  if (!v22)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_31;
  }

  v7 = *(v22 - 1);
  v8 = &v22[v7];
  if (!*(v22 - 3))
  {
LABEL_31:
    v9 = v8;
    v8 = &v22[v7];
    goto LABEL_10;
  }

  if (!v7)
  {
    v10 = 0;
    v9 = v22;
    goto LABEL_12;
  }

  v9 = v22;
  while (*v9 >= 0xFEu)
  {
    ++v9;
    if (!--v7)
    {
      v9 = v8;
      break;
    }
  }

LABEL_10:
  if (v22)
  {
    v10 = *(v22 - 1);
LABEL_12:
    v11 = &v22[v10];
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  if (v9 != v11)
  {
    do
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *v9++);
      if (v9 != v8)
      {
        while (*v9 >= 0xFEu)
        {
          if (++v9 == v8)
          {
            v9 = v8;
            break;
          }
        }
      }
    }

    while (v9 != v11);
    v6 = v22;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v5);
  }

  v14 = *(a2 + 40);
  v13 = (a2 + 40);
  v12 = v14;
  if (v14)
  {
    v15 = *(v12 - 12);
  }

  else
  {
    v15 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v15);
  result = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::begin(v13);
  v17 = result;
  v19 = v18;
  if (*v13)
  {
    v20 = &(*v13)[24 * *(*v13 - 1)];
  }

  else
  {
    v20 = 0;
  }

  if (v20 != result)
  {
    do
    {
      result = IPC::Encoder::operator<<<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist> const&>(a1, v17);
      do
      {
        v17 += 24;
      }

      while (v17 != v19 && *v17 >= 0xFEu);
    }

    while (v17 != v20);
  }

  return result;
}

void sub_19D77B580(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::fastFree((a10 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ImageBufferResourceLimits,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[6]);
  v4 = a2[7];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebCore::ImageBufferResourceLimits,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    result[2] = v3 + 1;
    if (v3)
    {
      v9 = *v3;
      v10 = 1;
      v11 = v4;
      goto LABEL_8;
    }

    v34 = result;
    v127 = a2;
    goto LABEL_53;
  }

  while (1)
  {
    v127 = a2;
    *result = 0;
    result[1] = 0;
    v34 = result;
    v35 = result[3];
    if (!v35)
    {
      v2 = 0;
LABEL_52:
      v4 = 0;
      goto LABEL_53;
    }

    if (!v2)
    {
      goto LABEL_52;
    }

    (*(*v35 + 16))(v35, v4);
    v4 = *v34;
    v2 = v34[1];
LABEL_53:
    *v34 = 0;
    v34[1] = 0;
    v36 = v34[3];
    if (!v36)
    {
      v11 = 0;
      v2 = 0;
LABEL_55:
      v4 = 0;
      v10 = 0;
      v9 = 0;
      a2 = v127;
      result = v34;
      goto LABEL_8;
    }

    if (!v2)
    {
      v11 = 0;
      goto LABEL_55;
    }

    (*(*v36 + 16))(v36, v4);
    v10 = 0;
    v9 = 0;
    result = v34;
    v11 = *v34;
    v2 = v34[1];
    v4 = *v34;
    a2 = v127;
LABEL_8:
    v12 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v12 - v4 || v2 - (v12 - v4) <= 7)
    {
      v119 = v10;
      v112 = v9;
      v128 = a2;
      *result = 0;
      result[1] = 0;
      v37 = result;
      v38 = result[3];
      if (!v38)
      {
        v2 = 0;
LABEL_58:
        v11 = 0;
        goto LABEL_59;
      }

      if (!v2)
      {
        goto LABEL_58;
      }

      (*(*v38 + 16))(v38, v11);
      v11 = *v37;
      v2 = v37[1];
LABEL_59:
      *v37 = 0;
      v37[1] = 0;
      v39 = v37[3];
      if (v39)
      {
        if (v2)
        {
          (*(*v39 + 16))(v39, v11);
          v15 = 0;
          v14 = 0;
          result = v37;
          v11 = *v37;
          v2 = v37[1];
          v4 = *v37;
          a2 = v128;
          goto LABEL_62;
        }

        v11 = 0;
      }

      else
      {
        v11 = 0;
        v2 = 0;
      }

      v4 = 0;
      v15 = 0;
      v14 = 0;
      a2 = v128;
      result = v37;
LABEL_62:
      v9 = v112;
      v10 = v119;
      goto LABEL_15;
    }

    result[2] = v12 + 1;
    if (!v12)
    {
      v119 = v10;
      v112 = v9;
      v37 = result;
      v128 = a2;
      goto LABEL_59;
    }

    v14 = *v12;
    v15 = 1;
LABEL_15:
    v16 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v16 - v4 || v2 - (v16 - v4) <= 7)
    {
      v105 = v15;
      v99 = v14;
      v120 = v10;
      v113 = v9;
      v129 = a2;
      *result = 0;
      result[1] = 0;
      v40 = result;
      v41 = result[3];
      if (v41)
      {
        if (v2)
        {
          (*(*v41 + 16))(v41, v11);
          v11 = *v40;
          v2 = v40[1];
LABEL_66:
          *v40 = 0;
          v40[1] = 0;
          v42 = v40[3];
          if (v42)
          {
            if (v2)
            {
              (*(*v42 + 16))(v42, v11);
              v18 = 0;
              v17 = 0;
              result = v40;
              v11 = *v40;
              v2 = v40[1];
              v4 = *v40;
              a2 = v129;
              goto LABEL_69;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v2 = 0;
          }

          v4 = 0;
          v18 = 0;
          v17 = 0;
          a2 = v129;
          result = v40;
LABEL_69:
          v9 = v113;
          v10 = v120;
          v14 = v99;
          v15 = v105;
          goto LABEL_19;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      goto LABEL_66;
    }

    result[2] = v16 + 1;
    if (!v16)
    {
      v105 = v15;
      v99 = v14;
      v120 = v10;
      v113 = v9;
      v40 = result;
      v129 = a2;
      goto LABEL_66;
    }

    v17 = *v16;
    v18 = 1;
LABEL_19:
    v19 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v19 - v4 || v2 - (v19 - v4) <= 7)
    {
      v93 = v18;
      v87 = v17;
      v106 = v15;
      v100 = v14;
      v121 = v10;
      v114 = v9;
      v130 = a2;
      *result = 0;
      result[1] = 0;
      v43 = result;
      v44 = result[3];
      if (v44)
      {
        if (v2)
        {
          (*(*v44 + 16))(v44, v11);
          v11 = *v43;
          v2 = v43[1];
LABEL_73:
          *v43 = 0;
          v43[1] = 0;
          v45 = v43[3];
          if (v45)
          {
            if (v2)
            {
              (*(*v45 + 16))(v45, v11);
              v21 = 0;
              v20 = 0;
              result = v43;
              v11 = *v43;
              v2 = v43[1];
              v4 = *v43;
              a2 = v130;
              goto LABEL_76;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v2 = 0;
          }

          v4 = 0;
          v21 = 0;
          v20 = 0;
          a2 = v130;
          result = v43;
LABEL_76:
          v9 = v114;
          v10 = v121;
          v14 = v100;
          v15 = v106;
          v17 = v87;
          v18 = v93;
          goto LABEL_23;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      goto LABEL_73;
    }

    result[2] = v19 + 1;
    if (!v19)
    {
      v93 = v18;
      v87 = v17;
      v106 = v15;
      v100 = v14;
      v121 = v10;
      v114 = v9;
      v43 = result;
      v130 = a2;
      goto LABEL_73;
    }

    v20 = *v19;
    v21 = 1;
LABEL_23:
    v22 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v22 - v4 || v2 - (v22 - v4) <= 7)
    {
      v82 = v21;
      v77 = v20;
      v94 = v18;
      v88 = v17;
      v107 = v15;
      v101 = v14;
      v122 = v10;
      v115 = v9;
      v131 = a2;
      *result = 0;
      result[1] = 0;
      v46 = result;
      v47 = result[3];
      if (v47)
      {
        if (v2)
        {
          (*(*v47 + 16))(v47, v11);
          v11 = *v46;
          v2 = v46[1];
LABEL_80:
          *v46 = 0;
          v46[1] = 0;
          v48 = v46[3];
          if (v48)
          {
            if (v2)
            {
              (*(*v48 + 16))(v48, v11);
              v24 = 0;
              v23 = 0;
              result = v46;
              v11 = *v46;
              v2 = v46[1];
              v4 = *v46;
              a2 = v131;
              goto LABEL_83;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v2 = 0;
          }

          v4 = 0;
          v24 = 0;
          v23 = 0;
          a2 = v131;
          result = v46;
LABEL_83:
          v9 = v115;
          v10 = v122;
          v14 = v101;
          v15 = v107;
          v17 = v88;
          v18 = v94;
          v20 = v77;
          v21 = v82;
          goto LABEL_27;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      goto LABEL_80;
    }

    result[2] = v22 + 1;
    if (!v22)
    {
      v82 = v21;
      v77 = v20;
      v94 = v18;
      v88 = v17;
      v107 = v15;
      v101 = v14;
      v122 = v10;
      v115 = v9;
      v46 = result;
      v131 = a2;
      goto LABEL_80;
    }

    v23 = *v22;
    v24 = 1;
LABEL_27:
    v25 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v25 - v4 || v2 - (v25 - v4) <= 7)
    {
      v73 = v24;
      v69 = v23;
      v83 = v21;
      v78 = v20;
      v95 = v18;
      v89 = v17;
      v108 = v15;
      v102 = v14;
      v123 = v10;
      v116 = v9;
      v132 = a2;
      *result = 0;
      result[1] = 0;
      v49 = result;
      v50 = result[3];
      if (v50)
      {
        if (v2)
        {
          (*(*v50 + 16))(v50, v11);
          v11 = *v49;
          v2 = v49[1];
LABEL_87:
          *v49 = 0;
          v49[1] = 0;
          v51 = v49[3];
          if (v51)
          {
            if (v2)
            {
              (*(*v51 + 16))(v51, v11);
              v27 = 0;
              v26 = 0;
              result = v49;
              v11 = *v49;
              v2 = v49[1];
              v4 = *v49;
              a2 = v132;
              goto LABEL_90;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v2 = 0;
          }

          v4 = 0;
          v27 = 0;
          v26 = 0;
          a2 = v132;
          result = v49;
LABEL_90:
          v9 = v116;
          v10 = v123;
          v14 = v102;
          v15 = v108;
          v17 = v89;
          v18 = v95;
          v20 = v78;
          v21 = v83;
          v23 = v69;
          v24 = v73;
          goto LABEL_31;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      goto LABEL_87;
    }

    result[2] = v25 + 1;
    if (!v25)
    {
      v73 = v24;
      v69 = v23;
      v83 = v21;
      v78 = v20;
      v95 = v18;
      v89 = v17;
      v108 = v15;
      v102 = v14;
      v123 = v10;
      v116 = v9;
      v49 = result;
      v132 = a2;
      goto LABEL_87;
    }

    v26 = *v25;
    v27 = 1;
LABEL_31:
    v28 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v28 - v4 || v2 - (v28 - v4) <= 7)
    {
      v63 = v27;
      v60 = v26;
      v74 = v24;
      v70 = v23;
      v84 = v21;
      v79 = v20;
      v96 = v18;
      v90 = v17;
      v109 = v15;
      v103 = v14;
      v124 = v10;
      v117 = v9;
      v133 = a2;
      *result = 0;
      result[1] = 0;
      v52 = result;
      v53 = result[3];
      if (v53)
      {
        if (v2)
        {
          (*(*v53 + 16))(v53, v11);
          v11 = *v52;
          v2 = v52[1];
LABEL_94:
          *v52 = 0;
          v52[1] = 0;
          v66 = v52;
          v54 = v52[3];
          if (v54)
          {
            if (v2)
            {
              (*(*v54 + 16))(v54, v11);
              v30 = 0;
              v29 = 0;
              result = v66;
              v11 = *v66;
              v2 = v66[1];
              v4 = *v66;
              a2 = v133;
              goto LABEL_97;
            }

            v11 = 0;
          }

          else
          {
            v11 = 0;
            v2 = 0;
          }

          v4 = 0;
          v30 = 0;
          v29 = 0;
          a2 = v133;
          result = v66;
LABEL_97:
          v9 = v117;
          v10 = v124;
          v14 = v103;
          v15 = v109;
          v17 = v90;
          v18 = v96;
          v20 = v79;
          v21 = v84;
          v23 = v70;
          v24 = v74;
          v26 = v60;
          v27 = v63;
          goto LABEL_35;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      goto LABEL_94;
    }

    result[2] = v28 + 1;
    if (!v28)
    {
      v63 = v27;
      v60 = v26;
      v74 = v24;
      v70 = v23;
      v84 = v21;
      v79 = v20;
      v96 = v18;
      v90 = v17;
      v109 = v15;
      v103 = v14;
      v124 = v10;
      v117 = v9;
      v52 = result;
      v133 = a2;
      goto LABEL_94;
    }

    v29 = *v28;
    v30 = 1;
LABEL_35:
    v31 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v31 - v4 || v2 - (v31 - v4) <= 7)
    {
      break;
    }

    result[2] = v31 + 1;
    if (!v31)
    {
      goto LABEL_102;
    }

    result = *v31;
    v32 = 1;
    if (!v4)
    {
      goto LABEL_103;
    }

LABEL_39:
    if (v10 & 1) != 0 && (v15 & 1) != 0 && (v18 & 1) != 0 && (v21 & 1) != 0 && (v24 & 1) != 0 && (v27 & 1) != 0 && (v30 & 1) != 0 && (v32)
    {
      *a2 = v9;
      *(a2 + 8) = v14;
      *(a2 + 16) = v17;
      *(a2 + 24) = v20;
      *(a2 + 32) = v23;
      *(a2 + 40) = v26;
      v33 = 1;
      *(a2 + 48) = v29;
      *(a2 + 56) = result;
      goto LABEL_48;
    }

    __break(1u);
  }

  v58 = v29;
  v61 = v26;
  v64 = v27;
  v75 = v24;
  v71 = v23;
  v85 = v21;
  v80 = v20;
  v97 = v18;
  v91 = v17;
  v110 = v15;
  v104 = v14;
  v125 = v10;
  v118 = v9;
  v134 = a2;
  *result = 0;
  result[1] = 0;
  v67 = result;
  v55 = result[3];
  if (!v55)
  {
    v2 = 0;
    goto LABEL_100;
  }

  if (v2)
  {
    (*(*v55 + 16))(v55, v11);
    result = v67;
    v11 = *v67;
    v2 = v67[1];
    a2 = v134;
  }

  else
  {
LABEL_100:
    v11 = 0;
    result = v67;
  }

  v9 = v118;
  v10 = v125;
  v14 = v104;
  v15 = v110;
  v17 = v91;
  v18 = v97;
  v20 = v80;
  v21 = v85;
  v23 = v71;
  v24 = v75;
  v29 = v58;
  v26 = v61;
  v27 = v64;
LABEL_102:
  *result = 0;
  result[1] = 0;
  v68 = result;
  result = result[3];
  if (result)
  {
    if (v2)
    {
      v59 = v29;
      v65 = v27;
      v135 = a2;
      v56 = v9;
      v126 = v10;
      v57 = v14;
      v111 = v15;
      v92 = v17;
      v98 = v18;
      v81 = v20;
      v86 = v21;
      v72 = v23;
      v76 = v24;
      v62 = v26;
      (*(*result + 16))(result, v11);
      v29 = v59;
      v26 = v62;
      v27 = v65;
      v24 = v76;
      v23 = v72;
      v21 = v86;
      v20 = v81;
      v18 = v98;
      v17 = v92;
      v15 = v111;
      v14 = v57;
      v10 = v126;
      v9 = v56;
      a2 = v135;
      v32 = 0;
      result = 0;
      v4 = *v68;
      if (*v68)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_103:
  v33 = 0;
  *a2 = 0;
LABEL_48:
  *(a2 + 64) = v33;
  return result;
}