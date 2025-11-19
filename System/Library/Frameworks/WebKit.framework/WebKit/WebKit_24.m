void sub_19D6F98C0(_Unwind_Exception *a1, void *a2)
{
  if (LOBYTE(STACK[0x278]) == 1 && LOBYTE(STACK[0x270]) == 1)
  {
    v7 = STACK[0x260];
    if (STACK[0x260])
    {
      STACK[0x260] = 0;
      LODWORD(STACK[0x268]) = 0;
      WTF::fastFree(v7, a2);
    }
  }

  if (LOBYTE(STACK[0x2A0]) == 1)
  {
    v3 = STACK[0x298];
    STACK[0x298] = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    v4 = STACK[0x2A8];
    STACK[0x2A8] = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2C0]) == 1)
  {
    v5 = STACK[0x2B8];
    STACK[0x2B8] = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2D0]) == 1)
  {
    v6 = STACK[0x2C8];
    STACK[0x2C8] = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::AtomString>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::AtomString,void>::decode(a1, a2);
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

WTF *IPC::Decoder::decode<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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

void sub_19D6F9E50(_Unwind_Exception *exception_object, void *a2)
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

void IPC::Decoder::decode<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::decode<IPC::Decoder,WebCore::SerializedScriptValue>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

void sub_19D6F9EFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_38;
    }

    v8 = *v4;
    v33 = 0;
    v34 = 0;
    if (v8 < 0x20000)
    {
      if (!v8)
      {
LABEL_19:
        *a1 = v33;
        v17 = v34;
        v33 = 0;
        v34 = 0;
        *(a1 + 8) = v17;
        *(a1 + 16) = 1;
        return WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v5);
      }

      LODWORD(v34) = v8;
      v33 = WTF::fastMalloc((8 * v8));
      while (1)
      {
        IPC::Decoder::decode<WTF::AtomString>(a2, &v31);
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }

        v9 = HIDWORD(v34);
        if (HIDWORD(v34) != v34)
        {
          break;
        }

        v10 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v33, HIDWORD(v34) + 1, &v31);
        v11 = HIDWORD(v34);
        v12 = HIDWORD(v34) + 1;
        v13 = v33;
        v14 = *v10;
        *v10 = 0;
        *(v13 + 8 * v11) = v14;
        HIDWORD(v34) = v12;
        if (v32)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v15 = v31;
      v31 = 0;
      *(v33 + 8 * HIDWORD(v34)) = v15;
      HIDWORD(v34) = v9 + 1;
LABEL_15:
      v16 = v31;
      v31 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v5);
      }

      goto LABEL_18;
    }

    while (1)
    {
      IPC::Decoder::decode<WTF::AtomString>(a2, &v31);
      if ((v32 & 1) == 0)
      {
LABEL_30:
        *a1 = 0;
        *(a1 + 16) = 0;
        WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v5);
        goto LABEL_31;
      }

      v19 = HIDWORD(v34);
      if (HIDWORD(v34) != v34)
      {
        break;
      }

      v20 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v33, HIDWORD(v34) + 1, &v31);
      v21 = HIDWORD(v34);
      v22 = HIDWORD(v34) + 1;
      v23 = v33;
      v24 = *v20;
      *v20 = 0;
      *(v23 + 8 * v21) = v24;
      HIDWORD(v34) = v22;
      if (v32)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (!--v8)
      {
        WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v33, HIDWORD(v34));
        goto LABEL_19;
      }
    }

    v25 = v31;
    v31 = 0;
    *(v33 + 8 * HIDWORD(v34)) = v25;
    HIDWORD(v34) = v19 + 1;
LABEL_25:
    v26 = v31;
    v31 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v5);
    }

    goto LABEL_28;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (v29)
  {
    if (v6)
    {
      (*(*v29 + 16))(v29);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_38;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_38:
  *a2 = 0;
  *(a2 + 1) = 0;
  v30 = *(a2 + 3);
  if (v30 && v6)
  {
    (*(*v30 + 16))(v30, v5);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_31:
  v27 = *a2;
  v28 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v28)
    {
      return (*(*result + 16))(result, v27);
    }
  }

  return result;
}

void sub_19D6FA1EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::TextAnimationData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 32));

  return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 48));
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::TextAnimationData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v5 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v16);
  IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, v14);
  result = IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, v12);
  if (!*a1)
  {
    goto LABEL_10;
  }

  if ((v4 & 0x100) == 0 || (v5 & 0x100) == 0 || (v17 & 1) == 0 || (*&v11[14] = v16, (v15 & 1) == 0) || (v13 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    *a2 = 0;
    *(a2 + 64) = 0;
    return result;
  }

  v7 = v14[0];
  v8 = v14[1];
  v9 = v12[0];
  v10 = v12[1];
  *a2 = v4;
  *(a2 + 1) = v5;
  *(a2 + 2) = *v11;
  *(a2 + 16) = *&v11[14];
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::TextRecognitionWordData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, (a2 + 8));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 40));
}

uint64_t IPC::Decoder::decode<WebCore::FloatQuad>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FloatQuad,void>::decode(a1, a2);
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

uint64_t IPC::ArgumentCoder<WebCore::TextRecognitionLineData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 48));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 49));
}

void IPC::ArgumentCoder<WebCore::TextRecognitionResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 16);
  IPC::VectorArgumentCoder<false,WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 32));
  v4 = *(a2 + 48);

  IPC::encodeObjectDirectly<NSData>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::TextRecognitionResult,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5;
      v110 = 0;
      v111 = 0;
      if (v11 >= 0x4924)
      {
        do
        {
          IPC::Decoder::decode<WebCore::TextRecognitionLineData>(v116, a1);
          v32 = v118;
          if (v118)
          {
            if (HIDWORD(v111) == v111)
            {
              WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionLineData>(&v110, v116);
            }

            else
            {
              v33 = v110 + 56 * HIDWORD(v111);
              v34 = *&v116[16];
              *v33 = *v116;
              *(v33 + 1) = v34;
              *(v33 + 4) = 0;
              *(v33 + 5) = 0;
              v35 = *&v116[32];
              *&v116[32] = 0;
              *(v33 + 4) = v35;
              LODWORD(v35) = v117;
              LODWORD(v117) = 0;
              *(v33 + 10) = v35;
              LODWORD(v35) = DWORD1(v117);
              DWORD1(v117) = 0;
              *(v33 + 11) = v35;
              *(v33 + 24) = WORD4(v117);
              ++HIDWORD(v111);
            }
          }

          if (v118 == 1)
          {
            WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116[32], v6);
          }

          if ((v32 & 1) == 0)
          {
            goto LABEL_58;
          }

          --v11;
        }

        while (v11);
        v36 = HIDWORD(v111);
        if (v111 > HIDWORD(v111))
        {
          v37 = v110;
          if (HIDWORD(v111))
          {
            if (HIDWORD(v111) >= 0x4924925)
            {
              __break(0xC471u);
              goto LABEL_182;
            }

            v38 = 56 * HIDWORD(v111);
            v39 = WTF::fastMalloc((56 * HIDWORD(v111)));
            LODWORD(v111) = v38 / 0x38;
            v110 = v39;
            if (v39 != v37)
            {
              WTF::VectorMover<false,WebCore::TextRecognitionLineData>::move(v37, v37 + 56 * v36, v39);
            }
          }

          if (v37)
          {
            if (v110 == v37)
            {
              v110 = 0;
              LODWORD(v111) = 0;
            }

            WTF::fastFree(v37, v6);
          }
        }
      }

      else if (v11)
      {
        LODWORD(v111) = 56 * v11 / 0x38u;
        v110 = WTF::fastMalloc((56 * v11));
        while (1)
        {
          IPC::Decoder::decode<WebCore::TextRecognitionLineData>(v116, a1);
          v12 = v118;
          if (v118)
          {
            if (HIDWORD(v111) == v111)
            {
              WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionLineData>(&v110, v116);
            }

            else
            {
              v13 = v110 + 56 * HIDWORD(v111);
              v14 = *&v116[16];
              *v13 = *v116;
              *(v13 + 1) = v14;
              *(v13 + 4) = 0;
              *(v13 + 5) = 0;
              v15 = *&v116[32];
              *&v116[32] = 0;
              *(v13 + 4) = v15;
              LODWORD(v15) = v117;
              LODWORD(v117) = 0;
              *(v13 + 10) = v15;
              LODWORD(v15) = DWORD1(v117);
              DWORD1(v117) = 0;
              *(v13 + 11) = v15;
              *(v13 + 24) = WORD4(v117);
              ++HIDWORD(v111);
            }
          }

          if (v118 == 1)
          {
            WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116[32], v6);
          }

          if ((v12 & 1) == 0)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_18;
          }
        }

LABEL_58:
        LOBYTE(v113) = 0;
        v115 = 0;
        WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v6);
        goto LABEL_59;
      }

LABEL_18:
      v113 = v110;
      v16 = v111;
      v110 = 0;
      v111 = 0;
      v114 = v16;
      v115 = 1;
      WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v6);
      goto LABEL_19;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v98 = *(a1 + 3);
    if (v98)
    {
      if (v4)
      {
        (*(*v98 + 16))(v98);
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
  v99 = *(a1 + 3);
  if (v99 && v4)
  {
    (*(*v99 + 16))(v99);
  }

  LOBYTE(v113) = 0;
  v115 = 0;
LABEL_59:
  v40 = *a1;
  v41 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v42 = *(a1 + 3);
  if (v42 && v41)
  {
    (*(*v42 + 16))(v42, v40);
  }

LABEL_19:
  v17 = *(a1 + 1);
  v18 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = *a1;
  v20 = v18 - *a1;
  v8 = v17 >= v20;
  v21 = v17 - v20;
  if (!v8 || v21 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v100 = *(a1 + 3);
    if (v100)
    {
      if (v17)
      {
        (*(*v100 + 16))(v100);
        v17 = *(a1 + 1);
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_157;
  }

  *(a1 + 2) = v18 + 1;
  if (!v18)
  {
LABEL_157:
    *a1 = 0;
    *(a1 + 1) = 0;
    v101 = *(a1 + 3);
    if (v101 && v17)
    {
      (*(*v101 + 16))(v101);
    }

    LOBYTE(v110) = 0;
    v112 = 0;
LABEL_159:
    v102 = *a1;
    v103 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v104 = *(a1 + 3);
    if (v104 && v103)
    {
      (*(*v104 + 16))(v104, v102);
    }

    goto LABEL_85;
  }

  v23 = *v18;
  v107 = 0;
  v108 = 0;
  if (v23 >= 0xAAAA)
  {
    v24 = v112;
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextRecognitionDataDetector>(v116, a1);
      v43 = v116[24];
      if (v116[24])
      {
        if (HIDWORD(v108) == v108)
        {
          WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionDataDetector>(&v107, v116);
        }

        else
        {
          v44 = v107 + 24 * HIDWORD(v108);
          v45 = *v116;
          *v116 = 0;
          *(v44 + 1) = 0;
          *(v44 + 2) = 0;
          *v44 = v45;
          v46 = *&v116[8];
          *&v116[8] = 0;
          *(v44 + 1) = v46;
          LODWORD(v46) = *&v116[16];
          *&v116[16] = 0;
          *(v44 + 4) = v46;
          LODWORD(v46) = *&v116[20];
          *&v116[20] = 0;
          *(v44 + 5) = v46;
          ++HIDWORD(v108);
        }
      }

      else
      {
        v24 = 0;
      }

      if (v116[24] == 1)
      {
        v47 = *&v116[8];
        if (*&v116[8])
        {
          *&v116[8] = 0;
          *&v116[16] = 0;
          WTF::fastFree(v47, v19);
        }

        v48 = *v116;
        *v116 = 0;
        if (v48)
        {
        }
      }

      if ((v43 & 1) == 0)
      {
        break;
      }

      if (!--v23)
      {
        v49 = HIDWORD(v108);
        if (v108 > HIDWORD(v108))
        {
          v50 = v107;
          if (HIDWORD(v108))
          {
            if (HIDWORD(v108) >= 0xAAAAAAB)
            {
              __break(0xC471u);
              JUMPOUT(0x19D6FB118);
            }

            v51 = v107;
            v52 = 24 * HIDWORD(v108);
            v53 = WTF::fastMalloc((24 * HIDWORD(v108)));
            v50 = v51;
            LODWORD(v108) = v52 / 0x18;
            v107 = v53;
            if (v53 != v51)
            {
              WTF::VectorMover<false,WebCore::TextRecognitionDataDetector>::move(v51, v51 + 24 * v49, v53);
              v50 = v51;
            }
          }

          if (v50)
          {
            if (v107 == v50)
            {
              v107 = 0;
              LODWORD(v108) = 0;
            }

            WTF::fastFree(v50, v19);
          }
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (!v23)
    {
LABEL_40:
      v110 = v107;
      v31 = v108;
      v107 = 0;
      v108 = 0;
      v111 = v31;
      v112 = 1;
      WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v19);
      goto LABEL_85;
    }

    LODWORD(v108) = 24 * v23 / 0x18u;
    v107 = WTF::fastMalloc((24 * v23));
    v24 = v112;
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextRecognitionDataDetector>(v116, a1);
      v25 = v116[24];
      if (v116[24])
      {
        if (HIDWORD(v108) == v108)
        {
          WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextRecognitionDataDetector>(&v107, v116);
        }

        else
        {
          v26 = v107 + 24 * HIDWORD(v108);
          v27 = *v116;
          *v116 = 0;
          *(v26 + 1) = 0;
          *(v26 + 2) = 0;
          *v26 = v27;
          v28 = *&v116[8];
          *&v116[8] = 0;
          *(v26 + 1) = v28;
          LODWORD(v28) = *&v116[16];
          *&v116[16] = 0;
          *(v26 + 4) = v28;
          LODWORD(v28) = *&v116[20];
          *&v116[20] = 0;
          *(v26 + 5) = v28;
          ++HIDWORD(v108);
        }
      }

      else
      {
        v24 = 0;
      }

      if (v116[24] == 1)
      {
        v29 = *&v116[8];
        if (*&v116[8])
        {
          *&v116[8] = 0;
          *&v116[16] = 0;
          WTF::fastFree(v29, v19);
        }

        v30 = *v116;
        *v116 = 0;
        if (v30)
        {
        }
      }

      if ((v25 & 1) == 0)
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_40;
      }
    }
  }

  LOBYTE(v110) = 0;
  v112 = v24;
  WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_159;
  }

LABEL_85:
  v54 = *(a1 + 1);
  v55 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v56 = *a1;
  v57 = v55 - *a1;
  v8 = v54 >= v57;
  v58 = v54 - v57;
  if (!v8 || v58 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v105 = *(a1 + 3);
    if (v105)
    {
      if (v54)
      {
        (*(*v105 + 16))(v105);
        v54 = *(a1 + 1);
      }
    }

    else
    {
      v54 = 0;
    }

    goto LABEL_164;
  }

  *(a1 + 2) = v55 + 1;
  if (!v55)
  {
LABEL_164:
    *a1 = 0;
    *(a1 + 1) = 0;
    v106 = *(a1 + 3);
    if (v106 && v54)
    {
      (*(*v106 + 16))(v106);
    }

    LOBYTE(v107) = 0;
    v109 = 0;
LABEL_108:
    v71 = *a1;
    v72 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73 && v72)
    {
      (*(*v73 + 16))(v73, v71);
    }

    goto LABEL_134;
  }

  v60 = *v55;
  v119 = 0;
  v120 = 0;
  if (v60 < 0x6666)
  {
    if (v60)
    {
      v61 = WTF::fastMalloc((40 * v60));
      LODWORD(v120) = 40 * v60 / 0x28u;
      v119 = v61;
      v62 = v109;
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextRecognitionBlockData>(v116, a1);
        v63 = v117;
        if (v117)
        {
          v64 = HIDWORD(v120);
          if (HIDWORD(v120) == v120)
          {
            v65 = WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v119, HIDWORD(v120) + 1, v116);
            v64 = HIDWORD(v120);
            v66 = v119 + 40 * HIDWORD(v120);
            v67 = *v65;
            *v65 = 0;
            *v66 = v67;
            v68 = *(v65 + 8);
            *(v66 + 24) = *(v65 + 24);
          }

          else
          {
            v66 = v119 + 40 * HIDWORD(v120);
            v69 = *v116;
            *v116 = 0;
            *v66 = v69;
            v68 = *&v116[8];
            *(v66 + 24) = *&v116[24];
          }

          *(v66 + 8) = v68;
          HIDWORD(v120) = v64 + 1;
        }

        else
        {
          v62 = 0;
        }

        if (v117 == 1 && (v70 = *v116, *v116 = 0, v70) && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v56);
          if ((v63 & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        else if ((v63 & 1) == 0)
        {
          goto LABEL_107;
        }

        if (!--v60)
        {
          goto LABEL_133;
        }
      }
    }

    goto LABEL_133;
  }

  v62 = v109;
  do
  {
    IPC::Decoder::decode<WebCore::TextRecognitionBlockData>(v116, a1);
    v74 = v117;
    if (v117)
    {
      v75 = HIDWORD(v120);
      if (HIDWORD(v120) == v120)
      {
        v76 = WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v119, HIDWORD(v120) + 1, v116);
        v75 = HIDWORD(v120);
        v77 = v119 + 40 * HIDWORD(v120);
        v78 = *v76;
        *v76 = 0;
        *v77 = v78;
        v79 = *(v76 + 8);
        *(v77 + 24) = *(v76 + 24);
      }

      else
      {
        v77 = v119 + 40 * HIDWORD(v120);
        v80 = *v116;
        *v116 = 0;
        *v77 = v80;
        v79 = *&v116[8];
        *(v77 + 24) = *&v116[24];
      }

      *(v77 + 8) = v79;
      HIDWORD(v120) = v75 + 1;
    }

    else
    {
      v62 = 0;
    }

    if (v117 == 1)
    {
      v81 = *v116;
      *v116 = 0;
      if (v81)
      {
        if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v81, v56);
        }
      }
    }

    if ((v74 & 1) == 0)
    {
LABEL_107:
      LOBYTE(v107) = 0;
      v109 = v62;
      WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v119, v56);
      if (v62)
      {
        goto LABEL_134;
      }

      goto LABEL_108;
    }

    --v60;
  }

  while (v60);
  v82 = HIDWORD(v120);
  if (v120 <= HIDWORD(v120))
  {
    goto LABEL_133;
  }

  v83 = v119;
  if (!HIDWORD(v120))
  {
    goto LABEL_129;
  }

  if (HIDWORD(v120) >= 0x6666667)
  {
    __break(0xC471u);
LABEL_181:
    __break(1u);
LABEL_182:
    JUMPOUT(0x19D6FB110);
  }

  v84 = v119;
  v85 = WTF::fastMalloc((40 * HIDWORD(v120)));
  v83 = v84;
  LODWORD(v120) = 40 * v82 / 0x28;
  v119 = v85;
  if (v85 != v84)
  {
    WTF::VectorTypeOperations<WebCore::TextRecognitionBlockData>::move(v84, (v84 + 40 * v82), v85);
    v83 = v84;
  }

LABEL_129:
  if (v83)
  {
    if (v119 == v83)
    {
      v119 = 0;
      LODWORD(v120) = 0;
    }

    WTF::fastFree(v83, v56);
  }

LABEL_133:
  v107 = v119;
  v86 = v120;
  v119 = 0;
  v120 = 0;
  v108 = v86;
  v109 = 1;
  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v119, v56);
LABEL_134:
  IPC::Decoder::decode<WTF::RetainPtr<NSData>>(a1, &v119);
  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_140;
  }

  if ((v115 & 1) == 0)
  {
    goto LABEL_181;
  }

  v88 = v113;
  v89 = v114;
  v113 = 0;
  v114 = 0;
  if ((v112 & 1) == 0)
  {
    goto LABEL_181;
  }

  v90 = v110;
  v91 = v111;
  v110 = 0;
  v111 = 0;
  if ((v109 & 1) == 0)
  {
    goto LABEL_181;
  }

  v92 = v107;
  v93 = v108;
  v107 = 0;
  v108 = 0;
  if ((v120 & 1) == 0)
  {
    goto LABEL_181;
  }

  v94 = v119;
  v119 = 0;
  *v116 = 0;
  *a2 = v88;
  *&v116[8] = 0u;
  *(a2 + 8) = v89;
  *(a2 + 16) = v90;
  *&v116[24] = 0u;
  *(a2 + 24) = v91;
  *(a2 + 32) = v92;
  v117 = 0u;
  *(a2 + 40) = v93;
  *(a2 + 48) = v94;
  *(a2 + 56) = 1;
  WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116[32], v87);
  WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116[16], v95);
  WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v116, v96);
LABEL_140:
  if (v120 == 1)
  {
    v97 = v119;
    v119 = 0;
    if (v97)
    {
    }
  }

  if (v109 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v87);
  }

  if (v112 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110, v87);
  }

  if (v115 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v113, v87);
  }
}

void sub_19D6FB124(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, WTF::StringImpl *a25, WTF *a26, int a27, int a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  if (a18 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  }

  if (a24 == 1)
  {
    WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::RetainPtr<NSData>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<NSData>,void>::decode<NSData,NSData*>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

void sub_19D6FB2E8(_Unwind_Exception *exception_object)
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

uint64_t IPC::ArgumentCoder<WebKit::URLSchemeTaskParameters,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 2));
  WebCore::ResourceRequestBase::httpBody(&v7, (a2 + 2));
  v4 = v7;
  v7 = 0;
  v8 = v4;
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(a1, &v8);
  if (v4)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v4);
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v5);
  }

  return IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, (a2 + 28));
}

void sub_19D6FB3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::RefCountedBase *a9)
{
  if (v9)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v9);
  }

  if (a9)
  {
    WTF::RefCounted<WebCore::FormData>::deref(a9);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::URLSchemeTaskParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = v8;
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v39);
  if (v46 == 1)
  {
    IPC::Decoder::decode<IPC::FormDataReference>(a1, &v47);
    if (BYTE8(v47) == 1)
    {
      v10 = v46;
      if ((v46 & 1) == 0)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        ++*v10;
        goto LABEL_19;
      }

      v11 = v47;
      *&v47 = 0;
      v73 = v11;
      WebCore::ResourceRequestBase::setHTTPBody();
      v12 = v73;
      v73 = 0;
      if (v12)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v12);
      }

      if (BYTE8(v47))
      {
        v13 = v47;
        *&v47 = 0;
        if (v13)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v13);
        }
      }
    }
  }

  IPC::Decoder::decode<WebKit::FrameInfoData>(a1, &v73);
  v10 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 576) = 0;
    goto LABEL_32;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_50;
  }

  v10 = v46;
  if ((v46 & 1) == 0)
  {
    goto LABEL_50;
  }

  v10 = v92;
  if ((v92 & 1) == 0)
  {
    goto LABEL_50;
  }

  *&v47 = v4;
  *(&v47 + 1) = v7;
  v7 = &v47;
  WebCore::ResourceRequestBase::RequestData::RequestData(&v48, v39);
  v15 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
  }

  *&v49 = v15;
  v16 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
  }

  *(&v49 + 1) = v16;
  v10 = v42;
  if (v42)
  {
    goto LABEL_51;
  }

LABEL_19:
  v50 = v10;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  if (v45)
  {
    v17 = v45;
  }

  v54 = v73;
  WebCore::ResourceRequestBase::RequestData::RequestData(v55, v74);
  v18 = v75;
  v75 = 0uLL;
  v56 = v18;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v19 = v79;
  v76 = 0;
  v79 = 0;
  v60 = v19;
  LOBYTE(v61) = 0;
  v63 = -1;
  if (!v82)
  {
    v20 = v80;
    v80 = 0uLL;
    v61 = v20;
    v62 = v81;
LABEL_23:
    v63 = v82;
    goto LABEL_24;
  }

  if (v82 != 255)
  {
    v61 = v80;
    goto LABEL_23;
  }

LABEL_24:
  v21 = cf;
  v64 = v83;
  v68 = v87;
  v65 = v84;
  v66 = v85;
  v67 = v86;
  v83 = 0;
  cf = 0;
  v69 = v21;
  v70 = v89;
  v71 = v90;
  v72 = v91;
  *a2 = v47;
  WebCore::ResourceRequestBase::RequestData::RequestData(a2 + 16, (v7 + 1));
  v22 = v51;
  v23 = v53;
  *(a2 + 184) = v50;
  *(a2 + 192) = v22;
  *(a2 + 200) = v52;
  v24 = v49;
  v49 = 0uLL;
  *(a2 + 168) = v24;
  v50 = 0;
  v53 = 0;
  *(a2 + 208) = v23;
  *(a2 + 224) = v54;
  WebCore::ResourceRequestBase::RequestData::RequestData(a2 + 232, v55);
  v25 = v58;
  v26 = v60;
  *(a2 + 400) = v57;
  *(a2 + 408) = v25;
  *(a2 + 416) = v59;
  v27 = v56;
  v56 = 0uLL;
  *(a2 + 384) = v27;
  v57 = 0;
  v60 = 0;
  *(a2 + 424) = v26;
  *(a2 + 432) = 0;
  *(a2 + 456) = -1;
  v28 = v63;
  if (v63)
  {
    if (v63 == 255)
    {
      goto LABEL_27;
    }

    *(a2 + 432) = v61;
  }

  else
  {
    v29 = v61;
    v61 = 0uLL;
    *(a2 + 432) = v29;
    *(a2 + 448) = v62;
  }

  *(a2 + 456) = v28;
LABEL_27:
  v30 = v69;
  *(a2 + 464) = v64;
  v31 = v66;
  *(a2 + 472) = v65;
  *(a2 + 488) = v31;
  *(a2 + 504) = v67;
  *(a2 + 520) = v68;
  *(a2 + 528) = v30;
  v32 = v71;
  *(a2 + 536) = v70;
  *(a2 + 552) = v32;
  *(a2 + 568) = v72;
  *(a2 + 576) = 1;
  v69 = 0;
  v64 = 0;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v61);
  v33 = v60;
  v60 = 0;
  if (v33)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v55);
  v34 = v53;
  v53 = 0;
  if (v34)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v7 + 1));
LABEL_32:
  if (v92 == 1)
  {
    v35 = cf;
    cf = 0;
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = v83;
    v83 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v14);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v80);
    v37 = v79;
    v79 = 0;
    if (v37)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v74);
  }

  if (v46 == 1)
  {
    v38 = v45;
    v45 = 0;
    if (v38)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v39);
  }
}

void sub_19D6FB87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36)
{
  v37 = STACK[0x310];
  STACK[0x310] = 0;
  if (v37)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v37);
  }

  if (a36 == 1)
  {
    v38 = a35;
    a35 = 0;
    if (v38)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v38);
    }
  }

  if (a34 == 1)
  {
    v39 = a33;
    a33 = 0;
    if (v39)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(char *a1, IPC::Decoder *this)
{
  result = IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(this, this, a1);
  if ((a1[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D6FBA44(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::UserContentControllerParameters::~UserContentControllerParameters(WebKit::UserContentControllerParameters *this, WTF::StringImpl *a2)
{
  WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, a2);
  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v3);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v4);
  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 6, v5);
  WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 8, v6);
}

void IPC::ArgumentCoder<WebKit::WebCompiledContentRuleListData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v38);
  v4 = v39;
  if ((v39 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
  }

  IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v36, a1);
  v5 = v4 ^ 1;
  if (((v4 ^ 1) & 1) == 0 && (v37 & 1) == 0)
  {
    v5 = 1;
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
  }

  v31 = IPC::Decoder::decode<unsigned long long>(a1);
  v34 = v6;
  if (((v5 | v6) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
    v5 = 1;
  }

  v30 = IPC::Decoder::decode<unsigned long long>(a1);
  v33 = v7;
  if (((v5 | v7) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 3);
    v5 = 1;
  }

  v29 = IPC::Decoder::decode<unsigned long long>(a1);
  v32 = v8;
  if (((v5 | v8) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 4);
    v5 = 1;
  }

  v28 = IPC::Decoder::decode<unsigned long long>(a1);
  v10 = v9;
  if (((v5 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 5);
    v5 = 1;
  }

  v27 = IPC::Decoder::decode<unsigned long long>(a1);
  v12 = v11;
  if (((v5 | v11) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 6);
    v5 = 1;
  }

  v26 = IPC::Decoder::decode<unsigned long long>(a1);
  v14 = v13;
  if (((v5 | v13) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 7);
    v5 = 1;
  }

  v15 = IPC::Decoder::decode<unsigned long long>(a1);
  v17 = v16;
  if (((v5 | v16) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 8);
    v5 = 1;
  }

  v19 = IPC::Decoder::decode<unsigned long long>(a1);
  v20 = v18;
  if (((v18 | v5) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 9);
  }

  if (*a1)
  {
    if ((v39 & 1) == 0 || (v37 & 1) == 0 || (v34 & 1) == 0 || (v33 & 1) == 0 || (v32 & 1) == 0 || (v10 & 1) == 0 || (v12 & 1) == 0 || (v14 & 1) == 0 || (v17 & 1) == 0 || (v20 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebKit::WebCompiledContentRuleListData::WebCompiledContentRuleListData(v35, &v38, v36, v31, v30, v29, v28, v27, v26, v15, v19);
    v21 = v35[0];
    v22 = v35[1];
    v35[0] = 0uLL;
    *a2 = v21;
    *(a2 + 16) = v22;
    v23 = v35[3];
    *(a2 + 32) = v35[2];
    *(a2 + 48) = v23;
    *(a2 + 64) = v35[4];
    *(a2 + 80) = 1;
    WebKit::WebCompiledContentRuleListData::~WebCompiledContentRuleListData(v35, v24);
  }

  else
  {
    *a2 = 0;
    *(a2 + 80) = 0;
  }

  if (v37 == 1 && v36[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v36);
  }

  if (v39 == 1)
  {
    v25 = v38;
    v38 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v18);
      }
    }
  }
}

void sub_19D6FBD9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 112) == 1 && *(v2 - 120) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v2 - 136));
  }

  if (*(v2 - 96) == 1)
  {
    v4 = *(v2 - 104);
    *(v2 - 104) = 0;
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

void WebKit::WebCompiledContentRuleListData::~WebCompiledContentRuleListData(WebKit::WebCompiledContentRuleListData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

uint64_t IPC::ArgumentCoder<WebKit::ViewWindowCoordinates,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v43 = *a1;
    v44 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45 && v44 != 0)
    {
      (*(*v45 + 16))(v45, v43);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  v11 = v10;
  if ((v10 & 1) == 0)
  {
    v36 = *a1;
    v37 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v37)
      {
        result = (*(*result + 16))(result, v36);
      }
    }
  }

  v12 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v11 & 1) == 0)
    {
      goto LABEL_26;
    }

    v54 = v4 & 0xFFFFFFFFFFFFFF00;
    v13 = v4;
  }

  else
  {
    v30 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, 0);
    }

    v13 = 0;
    v54 = 0;
  }

  v14 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v16 = v15;
  if ((v15 & 1) == 0)
  {
    v47 = *a1;
    v48 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49)
    {
      if (v48)
      {
        (*(*v49 + 16))(v49, v47);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v8 = result;
  v18 = v17;
  if ((v17 & 1) == 0)
  {
    v38 = *a1;
    v39 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v39)
      {
        v40 = v8;
        result = (*(*result + 16))(result, v38);
        v8 = v40;
      }
    }
  }

  v19 = *a1;
  v55 = v9;
  v56 = v12;
  v53 = v8;
  if (*a1)
  {
    if ((v16 & 1) == 0 || (v18 & 1) == 0)
    {
      goto LABEL_26;
    }

    v20 = v14 & 0xFFFFFFFFFFFFFF00;
    v21 = v14;
  }

  else
  {
    v32 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v32)
    {
      (*(*v33 + 16))(v33, 0);
    }

    v21 = 0;
    v20 = 0;
  }

  v22 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v24 = v23;
  if ((v23 & 1) == 0)
  {
    v50 = *a1;
    v51 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52)
    {
      if (v51)
      {
        (*(*v52 + 16))(v52, v50);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v26 = result;
  if ((v25 & 1) == 0)
  {
    v8 = *a1;
    v41 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v41)
      {
        v42 = v25;
        result = (*(*result + 16))(result, v8);
        v25 = v42;
      }
    }
  }

  v27 = *a1;
  if (*a1)
  {
    if ((v24 & 1) == 0 || (v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v22 & 0xFFFFFFFFFFFFFF00;
    v22 = v22;
  }

  else
  {
    v34 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v34)
    {
      (*(*v35 + 16))(v35, 0);
    }

    v28 = 0;
    v22 = 0;
  }

  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v8 = *a1;
  if (!*a1)
  {
LABEL_27:
    *a2 = 0;
    goto LABEL_25;
  }

  LOBYTE(v8) = v56;
  if (!v56 || !v19 || !v27 || (v29 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *a2 = v54 | v13;
  *(a2 + 8) = v55;
  *(a2 + 16) = v20 | v21;
  *(a2 + 24) = v53;
  *(a2 + 32) = v22 | v28;
  *(a2 + 40) = v26;
  *(a2 + 48) = result;
  LOBYTE(v8) = 1;
LABEL_25:
  *(a2 + 56) = v8;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::VisibleContentRectUpdateInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 64));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 80));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 96));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 112));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 168));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 176));
  v9 = *(a2 + 177);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = *(a2 + 178);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v7 = *(a2 + 179);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<WebCore::VelocityData,void>::encode(a1, a2 + 128);
  v4 = *(a2 + 152);
  v5 = *(a2 + 160);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v5);
}

uint64_t IPC::ArgumentCoder<WebKit::VisibleContentRectUpdateInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v9 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v11 = v10;
  if ((v10 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v12 = *a1;
  if (*a1)
  {
    if ((v8 & 1) == 0 || (v11 & 1) == 0)
    {
      goto LABEL_110;
    }

    v3 = v6 & 0xFFFFFFFFFFFFFF00;
    v6 = v6;
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    v6 = 0;
    v3 = 0;
  }

  v8 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v2 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v16 = v15;
  if ((v15 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v87 = *a1;
  if (*a1)
  {
    if ((v14 & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_110;
    }

    v78 = v8 & 0xFFFFFFFFFFFFFF00;
    v8 = v8;
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    v8 = 0;
    v78 = 0;
  }

  IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v95);
  v85 = v96;
  if ((v96 & 1) == 0)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v86 = v12;
    v17 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v19 = v18;
    if ((v18 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v20 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v12 = v21;
    v77 = v20;
    if ((v21 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v84 = *a1;
    if (*a1)
    {
      if ((v19 & 1) == 0 || (v12 & 1) == 0)
      {
        goto LABEL_110;
      }

      v73 = v17 & 0xFFFFFFFFFFFFFF00;
      v17 = v17;
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
      v17 = 0;
      v73 = 0;
    }

    v74 = v2;
    v22 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v12 = v23;
    if ((v23 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v24 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v2 = v25;
    v72 = v24;
    if ((v25 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v83 = *a1;
    if (*a1)
    {
      if ((v12 & 1) == 0 || (v2 & 1) == 0)
      {
        goto LABEL_110;
      }

      v68 = v22 & 0xFFFFFFFFFFFFFF00;
      v22 = v22;
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
      v22 = 0;
      v68 = 0;
    }

    v69 = v3;
    v12 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v2 = v26;
    if ((v26 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v27 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v3 = v28;
    v67 = v27;
    if ((v28 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v82 = *a1;
    if (*a1)
    {
      if ((v2 & 1) == 0 || (v3 & 1) == 0)
      {
        goto LABEL_110;
      }

      v3 = v12 & 0xFFFFFFFFFFFFFF00;
      v12 = v12;
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
      v12 = 0;
      v3 = 0;
    }

    IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v93);
    v81 = v94;
    if ((v94 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v91);
    v80 = v92;
    if ((v92 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
    }

    v62 = IPC::Decoder::decode<unsigned long long>(a1);
    v79 = v29;
    v30 = *(a1 + 1);
    v31 = *(a1 + 2);
    v32 = *a1;
    if (v30 <= &v31[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_118:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_119;
    }

    v33 = v31 + 1;
    *(a1 + 2) = v31 + 1;
    if (!v31)
    {
      goto LABEL_118;
    }

    v34 = *v31;
    if (v34 < 0x20)
    {
      v76 = v34 | 0x100;
      goto LABEL_50;
    }

LABEL_119:
    IPC::Decoder::markInvalid(a1);
    v76 = 0;
    v30 = *(a1 + 1);
    v33 = *(a1 + 2);
    v32 = *a1;
LABEL_50:
    v64 = v8;
    v65 = v6;
    v66 = v9;
    if (v30 <= &v33[-v32])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_121:
      IPC::Decoder::markInvalid(a1);
      v36 = 0;
      goto LABEL_122;
    }

    v35 = v33 + 1;
    *(a1 + 2) = v33 + 1;
    if (!v33)
    {
      goto LABEL_121;
    }

    v36 = *v33;
    if (v36 < 2)
    {
      v37 = 1;
      goto LABEL_54;
    }

LABEL_122:
    IPC::Decoder::markInvalid(a1);
    v37 = 0;
    v30 = *(a1 + 1);
    v35 = *(a1 + 2);
    v32 = *a1;
LABEL_54:
    v75 = v37;
    if (!v36)
    {
      v37 = 0;
    }

    v61 = v37;
    if (v30 <= &v35[-v32])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_124:
      IPC::Decoder::markInvalid(a1);
      v39 = 0;
      goto LABEL_125;
    }

    v38 = v35 + 1;
    *(a1 + 2) = v35 + 1;
    if (!v35)
    {
      goto LABEL_124;
    }

    v39 = *v35;
    if (v39 < 2)
    {
      v40 = 1;
      goto LABEL_60;
    }

LABEL_125:
    IPC::Decoder::markInvalid(a1);
    v40 = 0;
    v30 = *(a1 + 1);
    v38 = *(a1 + 2);
    v32 = *a1;
LABEL_60:
    v71 = v40;
    if (!v39)
    {
      v40 = 0;
    }

    v60 = v40;
    if (v30 <= &v38[-v32])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_127:
      IPC::Decoder::markInvalid(a1);
      v42 = 0;
      goto LABEL_128;
    }

    v41 = v38 + 1;
    *(a1 + 2) = v38 + 1;
    if (!v38)
    {
      goto LABEL_127;
    }

    v42 = *v38;
    if (v42 < 2)
    {
      v43 = 1;
      goto LABEL_66;
    }

LABEL_128:
    IPC::Decoder::markInvalid(a1);
    v43 = 0;
    v30 = *(a1 + 1);
    v41 = *(a1 + 2);
    v32 = *a1;
LABEL_66:
    if (v42)
    {
      v9 = v43;
    }

    else
    {
      v9 = 0;
    }

    v44 = ((v41 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v70 = v43;
    if (v30 < v44 - v32 || v30 - (v44 - v32) <= 3)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_130:
      IPC::Decoder::markInvalid(a1);
      v6 = 0;
      v30 = *(a1 + 1);
      v45 = *(a1 + 2);
      v32 = *a1;
      goto LABEL_73;
    }

    v45 = v44 + 1;
    *(a1 + 2) = v44 + 1;
    if (!v44)
    {
      goto LABEL_130;
    }

    v6 = *v44 | 0x100000000;
LABEL_73:
    v46 = ((v45 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v30 < v46 - v32 || v30 - (v46 - v32) <= 3)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_132:
      IPC::Decoder::markInvalid(a1);
      v88 = 0;
      v30 = *(a1 + 1);
      v47 = *(a1 + 2);
      v32 = *a1;
      goto LABEL_77;
    }

    v47 = v46 + 1;
    *(a1 + 2) = v46 + 1;
    if (!v46)
    {
      goto LABEL_132;
    }

    v88 = *v46 | 0x100000000;
LABEL_77:
    v48 = ((v47 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v49 = v48 - v32;
    v50 = v30 >= v49;
    v51 = v30 - v49;
    if (v50 && v51 > 3)
    {
      *(a1 + 2) = v48 + 1;
      if (v48)
      {
        v2 = *v48 | 0x100000000;
        goto LABEL_82;
      }
    }

    else
    {
      IPC::Decoder::markInvalid(a1);
    }

    IPC::Decoder::markInvalid(a1);
    v2 = 0;
LABEL_82:
    v52 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
    v8 = *a1;
    v63 = v12;
    v59 = v9;
    v58 = v52;
    if (*a1)
    {
      if ((v6 & 0x100000000) == 0 || (v88 & 0x100000000) == 0 || (v2 & 0x100000000) == 0 || (v53 & 1) == 0)
      {
        goto LABEL_110;
      }

      v12 = v3;
      v3 = v17;
      v9 = v6 & 0xFFFFFF00;
      v6 = v6;
    }

    else
    {
      v12 = v3;
      v3 = v17;
      IPC::Decoder::markInvalid(a1);
      v9 = 0;
      v6 = 0;
    }

    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode(a1, &v89);
    v55 = v90;
    if ((v90 & 1) == 0)
    {
      result = IPC::Decoder::markInvalid(a1);
    }

    v56 = *a1;
    if (!*a1)
    {
      break;
    }

    if (v86 && v87 && (v85 & 1) != 0 && v84 && v83 && v82 && (v81 & 1) != 0 && (v80 & 1) != 0 && (v79 & 1) != 0 && v76 > 0xFF && (v75 & 1) != 0 && (v71 & 1) != 0 && (v70 & 1) != 0 && v8 && (v55 & 1) != 0)
    {
      *(a2 + 32) = v95;
      v57 = v91;
      *(a2 + 96) = v93;
      *(a2 + 112) = v57;
      *(a2 + 128) = v6 | v9;
      *(a2 + 132) = v88;
      *(a2 + 136) = v2;
      *(a2 + 144) = v58;
      *a2 = v69 | v65;
      *(a2 + 8) = v66;
      *(a2 + 16) = v78 | v64;
      *(a2 + 24) = v74;
      *(a2 + 48) = v68 | v22;
      *(a2 + 56) = v72;
      *(a2 + 64) = v73 | v3;
      *(a2 + 72) = v77;
      *(a2 + 80) = v12 | v63;
      *(a2 + 88) = v67;
      *(a2 + 152) = v89;
      *(a2 + 168) = v62;
      *(a2 + 176) = v76;
      *(a2 + 177) = v61;
      *(a2 + 178) = v60;
      LOBYTE(v56) = 1;
      *(a2 + 179) = v59;
      goto LABEL_107;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    IPC::Decoder::markInvalid(a1);
  }

  *a2 = 0;
LABEL_107:
  *(a2 + 184) = v56;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::MediaTime,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = v4;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 2));
    v7 = *(a2 + 12);

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::MediaTime,void>::encode(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  result = IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(a1, &v12, 1);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (*(a1 + 8) < v6)
  {
    goto LABEL_8;
  }

  *(*a1 + (v5 & 3)) = *(a2 + 2);
  v7 = *(a1 + 8);
  v9 = v7 - v6;
  v8 = v7 == v6;
  if (v7 < v6)
  {
    goto LABEL_7;
  }

  v10 = (*a1 + v6);
  *a1 = v10;
  *(a1 + 8) = v9;
  if (v8)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 8) = 0;
    return result;
  }

  *v10 = *(a2 + 12);
  v11 = *(a1 + 8);
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  ++*a1;
  *(a1 + 8) = v11 - 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WTF::MediaTime,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<long long>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    v14 = (v8 + 1);
    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      v30 = result;
      v31 = v6;
      goto LABEL_38;
    }

    v15 = *v8 | 0x100000000;
    goto LABEL_8;
  }

  while (1)
  {
    v30 = result;
    v31 = v6;
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v7)
      {
        (*(*v25 + 16))(v25);
        v9 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_38;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_38:
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26 && v7)
    {
      (*(*v26 + 16))(v26, v9);
      v15 = 0;
      v9 = *a1;
      v7 = *(a1 + 1);
      v14 = *(a1 + 2);
      result = v30;
      v6 = v31;
LABEL_8:
      if (v7 <= &v14[-v9])
      {
        v29 = v15;
        v30 = result;
        v31 = v6;
        v27 = 0;
        v28 = *(a1 + 3);
        *a1 = 0;
        *(a1 + 1) = 0;
        if (v28 && v7)
        {
          (*(*v28 + 16))(v28);
          v9 = *a1;
          v27 = *(a1 + 1);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        *(a1 + 2) = v14 + 1;
        if (v14)
        {
          v16 = *v14;
          v17 = 1;
          if (!v9)
          {
            goto LABEL_41;
          }

          goto LABEL_11;
        }

        v29 = v15;
        v30 = result;
        v31 = v6;
        v27 = v7;
      }
    }

    else
    {
      v29 = 0;
      v27 = 0;
      v9 = 0;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v27 || ((*(*result + 16))(result, v9, v27), v15 = v29, result = v30, v6 = v31, v16 = 0, v17 = 0, !*a1))
    {
LABEL_41:
      v24 = 0;
      *a2 = 0;
      goto LABEL_33;
    }

LABEL_11:
    if (v6 & 1) != 0 && (v15 & 0x100000000) != 0 && (v17)
    {
      break;
    }

    __break(1u);
  }

  v19 = (v16 & 1) == 0 || v15 != 0;
  if (result >= 0)
  {
    v20 = 5;
  }

  else
  {
    v20 = 9;
  }

  v21 = !v19;
  if (v19)
  {
    v22 = v16;
  }

  else
  {
    v22 = v20;
  }

  if (v21)
  {
    v23 = result >> 63;
  }

  else
  {
    v23 = result;
  }

  *a2 = v23;
  if (v21)
  {
    LODWORD(v15) = 1;
  }

  *(a2 + 8) = v15;
  *(a2 + 12) = v22;
  v24 = 1;
LABEL_33:
  *(a2 + 16) = v24;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::AtomString,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  v6 = *a1;
  if (*a1)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = v9;
    v9 = 0;
    if (v8)
    {
      v11 = v8;
      v7 = v8;
      if ((*(v8 + 16) & 0x10) == 0)
      {
        WTF::AtomStringImpl::addSlowCase();
        result = v11;
        v7 = v12;
        v11 = 0;
        v12 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }

    *a2 = v7;
    LOBYTE(v6) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  if (v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6FCF38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::JSONImpl::Value,void>::encode(IPC::Encoder *a1, WTF::JSONImpl::Value *this)
{
  WTF::JSONImpl::Value::toJSONString(&v5, this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v5);
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

void IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::takeLastAttachment(a1, v10);
  IPC::Decoder::decode<WTF::FixedVector<unsigned char,WTF::FastMalloc>>(a1, &v8);
  if (!*a1)
  {
    goto LABEL_12;
  }

  if ((v11 & 1) == 0 || (WTF::MachSendRight::MachSendRight(), (v9 & 1) == 0))
  {
    __break(1u);
LABEL_12:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_5;
  }

  v7 = v8;
  v8 = 0;
  WTF::MachSendRight::MachSendRight();
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  v7 = 0;
  WTF::MachSendRight::~MachSendRight(v6);
LABEL_5:
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      WTF::fastFree(v5, v4);
    }
  }

  if (v11 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v10);
  }
}

void sub_19D6FD0C4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, WTF *a11, WTF *a12, char a13)
{
  v15 = a11;
  a11 = 0;
  if (v15)
  {
    WTF::fastFree(v15, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a10);
  if (a13 == 1)
  {
    v17 = a12;
    a12 = 0;
    if (v17)
    {
      WTF::fastFree(v17, v16);
    }
  }

  if (*(v13 - 20) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v13 - 24));
  }

  _Unwind_Resume(a1);
}

void *IPC::Decoder::decode<WTF::FixedVector<unsigned char,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::FixedVectorArgumentCoder<true,unsigned char>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

void sub_19D6FD198(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheInfo,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
}

uint64_t IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheInfos,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v40 = a1[3];
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_62:
    *a1 = 0;
    a1[1] = 0;
    v41 = a1[3];
    if (v41 && v4)
    {
      (*(*v41 + 16))(v41);
    }

    LOBYTE(v43) = 0;
    v45 = 0;
LABEL_23:
    v18 = *a1;
    v19 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v19)
    {
      result = (*(*result + 16))(result, v18);
    }

    goto LABEL_47;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_62;
  }

  v11 = *v5;
  v49 = 0;
  v50 = 0;
  if (v11 >= 0xAAAA)
  {
    do
    {
      result = IPC::Decoder::decode<WebCore::DOMCacheEngine::CacheInfo>(&v46, a1);
      v21 = v48;
      if (v48)
      {
        if (HIDWORD(v50) == v50)
        {
          result = WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v49, HIDWORD(v50) + 1, &v46);
          v22 = v49 + 24 * HIDWORD(v50);
          *v22 = *result;
          v23 = (result + 16);
        }

        else
        {
          v22 = v49 + 24 * HIDWORD(v50);
          *v22 = v46;
          v23 = &v47;
        }

        v24 = *v23;
        *v23 = 0;
        *(v22 + 2) = v24;
        ++HIDWORD(v50);
      }

      if (v48 == 1)
      {
        result = v47;
        v47 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      if ((v21 & 1) == 0)
      {
LABEL_22:
        LOBYTE(v43) = 0;
        v45 = 0;
        WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v6);
        goto LABEL_23;
      }

      --v11;
    }

    while (v11);
    v25 = HIDWORD(v50);
    if (v50 > HIDWORD(v50))
    {
      v26 = v49;
      if (HIDWORD(v50))
      {
        if (HIDWORD(v50) >= 0xAAAAAAB)
        {
          __break(0xC471u);
          goto LABEL_79;
        }

        v27 = 24 * HIDWORD(v50);
        v28 = WTF::fastMalloc((24 * HIDWORD(v50)));
        LODWORD(v50) = v27 / 0x18;
        v49 = v28;
        if (v28 != v26)
        {
          WTF::VectorTypeOperations<WebKit::WebScriptMessageHandlerData>::move(v26, (v26 + 24 * v25), v28);
        }
      }

      if (v26)
      {
        if (v49 == v26)
        {
          v49 = 0;
          LODWORD(v50) = 0;
        }

        WTF::fastFree(v26, v6);
      }
    }
  }

  else if (v11)
  {
    LODWORD(v50) = 24 * v11 / 0x18u;
    v49 = WTF::fastMalloc((24 * v11));
    do
    {
      IPC::Decoder::decode<WebCore::DOMCacheEngine::CacheInfo>(&v46, a1);
      v12 = v48;
      if (v48)
      {
        if (HIDWORD(v50) == v50)
        {
          v13 = WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v49, HIDWORD(v50) + 1, &v46);
          v14 = v49 + 24 * HIDWORD(v50);
          *v14 = *v13;
          v15 = (v13 + 1);
        }

        else
        {
          v14 = v49 + 24 * HIDWORD(v50);
          *v14 = v46;
          v15 = &v47;
        }

        v16 = *v15;
        *v15 = 0;
        *(v14 + 2) = v16;
        ++HIDWORD(v50);
      }

      if (v48 == 1 && (v17 = v47, v47 = 0, v17) && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v6);
        if ((v12 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_22;
      }

      --v11;
    }

    while (v11);
  }

  v43 = v49;
  v29 = v50;
  v49 = 0;
  v50 = 0;
  v44 = v29;
  v45 = 1;
  result = WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v6);
LABEL_47:
  v30 = a1[1];
  v31 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = *a1;
  v33 = v31 - *a1;
  v8 = v30 >= v33;
  v34 = v30 - v33;
  if (!v8 || v34 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (v42)
    {
      if (v30)
      {
        (*(*v42 + 16))(v42);
        v32 = *a1;
        v30 = a1[1];
        goto LABEL_67;
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = 0;
LABEL_67:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result)
    {
      goto LABEL_68;
    }

    if (!v30)
    {
      goto LABEL_68;
    }

    result = (*(*result + 16))(result);
    v37 = 0;
    v36 = 0;
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_68;
    }

    goto LABEL_54;
  }

  a1[2] = (v31 + 1);
  if (!v31)
  {
    goto LABEL_67;
  }

  v36 = *v31;
  v37 = 1;
  if (v32)
  {
LABEL_54:
    if (v45)
    {
      v38 = v43;
      v39 = v44;
      v43 = 0;
      v44 = 0;
      if (v37)
      {
        v47 = v36;
        v46 = 0uLL;
        *a2 = v38;
        *(a2 + 8) = v39;
        *(a2 + 16) = v36;
        *(a2 + 24) = 1;
        result = WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v32);
        goto LABEL_57;
      }
    }

LABEL_79:
    __break(1u);
    return result;
  }

LABEL_68:
  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_57:
  if (v45 == 1)
  {
    return WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v32);
  }

  return result;
}

void sub_19D6FD774(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a12)
  {
    WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
}

uint64_t IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v15);
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_14;
  }

  a1[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    v14 = *v6;
    goto LABEL_20;
  }

  for (i = 1; ; i = 0)
  {
    v10 = v8 ? i : 0;
    if (!v7)
    {
      break;
    }

    if (v16 & 1) != 0 && (i)
    {
      *a2 = v15;
      *(a2 + 16) = v10;
      v11 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_14:
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v5)
      {
        (*(*v12 + 16))(v12);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v5)
      {
        (*(*v13 + 16))(v13);
        v14 = 0;
        v7 = *a1;
        v5 = a1[1];
        goto LABEL_20;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v14 = 0;
LABEL_20:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v7 = *a1;
    v8 = v14;
  }

  v11 = 0;
  *a2 = 0;
LABEL_12:
  *(a2 + 24) = v11;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::DOMCacheEngine::CrossThreadRecord,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(a1, a2 + 224);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 272));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 280));
  IPC::ArgumentCoder<WebCore::ResourceResponseData,void>::encode(a1, a2 + 288);
  v5 = *(a2 + 592);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>> const&>(a1, a2 + 584, v5);
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 600));
}

void IPC::ArgumentCoder<WebCore::DOMCacheEngine::CrossThreadRecord,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5;
      v12 = 1;
      v13 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (!v48)
    {
      v4 = 0;
LABEL_78:
      v6 = 0;
      goto LABEL_79;
    }

    if (!v4)
    {
      goto LABEL_78;
    }

    (*(*v48 + 16))(v48, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v49 = *(a1 + 3);
  if (!v49)
  {
    v13 = 0;
    v4 = 0;
LABEL_81:
    v6 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v13 = 0;
    goto LABEL_81;
  }

  (*(*v49 + 16))(v49, v6);
  v12 = 0;
  v11 = 0;
  v13 = *a1;
  v4 = *(a1 + 1);
  v6 = *a1;
LABEL_8:
  v14 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = (v14 - v6);
  v8 = v4 >= v15;
  v16 = v4 - v15;
  if (v8 && v16 > 7)
  {
    *(a1 + 2) = v14 + 1;
    if (v14)
    {
      v18 = *v14;
      v19 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (!v50)
    {
      v4 = 0;
LABEL_84:
      v13 = 0;
      goto LABEL_85;
    }

    if (!v4)
    {
      goto LABEL_84;
    }

    (*(*v50 + 16))(v50, v13);
    v13 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_85:
  *a1 = 0;
  *(a1 + 1) = 0;
  v51 = *(a1 + 3);
  if (v51 && v4)
  {
    (*(*v51 + 16))(v51, v13);
  }

  v19 = 0;
  v18 = 0;
LABEL_15:
  v20 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v74);
  IPC::Decoder::decode<WebCore::FetchOptions>(v77, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v72);
  v21 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  IPC::Decoder::decode<WebCore::ResourceResponseData>(v70, a1);
  v22 = *(a1 + 1);
  v23 = *(a1 + 2);
  if (v22 <= &v23[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v22)
      {
        (*(*v54 + 16))(v54);
        v22 = *(a1 + 1);
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_94;
  }

  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_94:
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55 && v22)
    {
      (*(*v55 + 16))(v55);
    }

    goto LABEL_18;
  }

  v24 = *v23;
  if (v24 < 3)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        IPC::ArgumentCoder<WebCore::FormData,void>::decode(&v60, a1);
        if ((BYTE8(v60) & 1) == 0)
        {
          goto LABEL_73;
        }

        v67 = v60;
        v68 = 1;
      }

      else
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v60);
        if (BYTE8(v60) != 1)
        {
          goto LABEL_18;
        }

        v67 = v60;
        v68 = 2;
      }
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    v69 = 1;
    goto LABEL_29;
  }

  while (1)
  {
LABEL_18:
    LOBYTE(v67) = 0;
    v69 = 0;
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

LABEL_29:
    v28 = *(a1 + 1);
    v29 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v30 = *a1;
    v31 = v29 - *a1;
    v8 = v28 >= v31;
    v32 = v28 - v31;
    if (v8 && v32 > 7)
    {
      *(a1 + 2) = v29 + 1;
      if (v29)
      {
        v33 = *v29;
        v34 = 1;
        if (!v30)
        {
          goto LABEL_91;
        }

        goto LABEL_34;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v52 = *(a1 + 3);
      if (v52)
      {
        if (v28)
        {
          (*(*v52 + 16))(v52);
          v30 = *a1;
          v28 = *(a1 + 1);
          goto LABEL_90;
        }
      }

      else
      {
        v28 = 0;
      }

      v30 = 0;
    }

LABEL_90:
    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (!v53 || !v28 || ((*(*v53 + 16))(v53), v34 = 0, v33 = 0, (v30 = *a1) == 0))
    {
LABEL_91:
      *a2 = 0;
      a2[608] = 0;
      goto LABEL_55;
    }

LABEL_34:
    if (v12 & 1) != 0 && (v19 & 1) != 0 && v20 > 0xFFu && (v76 & 1) != 0 && (v81)
    {
      v56[0] = v77[0];
      *(v56 + 3) = *(v77 + 3);
      v35 = v78;
      v78 = 0;
      v57 = v35;
      v58 = v79;
      v59 = v80;
      if (v73 & 1) != 0 && v21 > 0xFFu && (v71 & 1) != 0 && (v69 & 1) != 0 && (v34)
      {
        break;
      }
    }

    __break(1u);
LABEL_73:
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

  WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(&v60, v11, v18, v20, v74, v56, &v72, v21, v70, &v67, v33);
  WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(a2, &v60);
  a2[608] = 1;
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v66);
  WebCore::ResourceResponseData::~ResourceResponseData(&v65, v36);
  v38 = v64;
  v64 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v37);
  }

  v39 = v63;
  v63 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v37);
  }

  v40 = v62;
  v62 = 0;
  if (v40)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&v61);
  v41 = v57;
  v57 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v30);
  }

LABEL_55:
  if (v69 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v67);
  }

  if (v71 == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(v70, v30);
  }

  if (v73 == 1)
  {
    v42 = v72;
    v72 = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v30);
      }
    }
  }

  if (v81 == 1)
  {
    v43 = v78;
    v78 = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v30);
      }
    }
  }

  if (v76 == 1)
  {
    v44 = v75;
    v75 = 0;
    if (v44)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v74);
  }
}

void sub_19D6FE120(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&STACK[0x2B8]);
  }

  if (LOBYTE(STACK[0x3F8]) == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(&STACK[0x2D0], a2);
  }

  if (LOBYTE(STACK[0x408]) == 1)
  {
    v4 = STACK[0x400];
    STACK[0x400] = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 112) == 1)
  {
    v5 = *(v2 - 152);
    *(v2 - 152) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x4D8]) == 1)
  {
    v6 = STACK[0x4D0];
    STACK[0x4D0] = 0;
    if (v6)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&STACK[0x410]);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::ResourceResponseData>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::URL>(a2, &v125);
  IPC::Decoder::decode<WTF::String>(a2, &v123);
  v4 = IPC::Decoder::decode<long long>(a2);
  v6 = v5;
  IPC::Decoder::decode<WTF::String>(a2, &v121);
  v66 = IPC::Decoder::decode<short>(a2);
  IPC::Decoder::decode<WTF::String>(a2, &v119);
  IPC::Decoder::decode<WTF::String>(a2, &v117);
  IPC::Decoder::decode<WebCore::HTTPHeaderMap>(&v112, a2);
  IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(a2, v104);
  if ((v111 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }

  v65 = IPC::Decoder::decode<WebCore::ResourceResponseSource>(a2);
  v64 = v6;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *a2;
  if (v7 <= &v8[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_110;
  }

  v10 = v8 + 1;
  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_110:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_111;
  }

  v11 = *v8;
  if (v11 < 6)
  {
    v63 = 0;
    goto LABEL_7;
  }

LABEL_111:
  IPC::Decoder::markInvalid(a2);
  LOBYTE(v11) = 0;
  v7 = *(a2 + 1);
  v10 = *(a2 + 2);
  v63 = 1;
  v9 = *a2;
LABEL_7:
  if (v7 <= &v10[-v9])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_113;
  }

  v12 = v10 + 1;
  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_113:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_114;
  }

  v13 = *v10;
  if (v13 < 4)
  {
    v59 = v13;
    v62 = 0;
    goto LABEL_11;
  }

LABEL_114:
  IPC::Decoder::markInvalid(a2);
  v59 = 0;
  v7 = *(a2 + 1);
  v12 = *(a2 + 2);
  v62 = 1;
  v9 = *a2;
LABEL_11:
  if (v7 <= &v12[-v9])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_116;
  }

  v14 = v12 + 1;
  *(a2 + 2) = v12 + 1;
  if (!v12)
  {
LABEL_116:
    IPC::Decoder::markInvalid(a2);
    v15 = 0;
    goto LABEL_117;
  }

  v15 = *v12;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_15;
  }

LABEL_117:
  IPC::Decoder::markInvalid(a2);
  v16 = 0;
  v7 = *(a2 + 1);
  v14 = *(a2 + 2);
  v9 = *a2;
LABEL_15:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v7 <= &v14[-v9])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_119;
  }

  v18 = v14 + 1;
  *(a2 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_119:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_120;
  }

  v19 = *v14;
  if (v19 < 2)
  {
    v20 = 0;
    goto LABEL_22;
  }

LABEL_120:
  IPC::Decoder::markInvalid(a2);
  IPC::Decoder::markInvalid(a2);
  LOBYTE(v19) = 0;
  v7 = *(a2 + 1);
  v18 = *(a2 + 2);
  v20 = 1;
  v9 = *a2;
LABEL_22:
  v58 = v17;
  v61 = v20;
  if (v7 <= &v18[-v9])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_122;
  }

  *(a2 + 2) = v18 + 1;
  if (!v18)
  {
LABEL_122:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_123;
  }

  v21 = *v18;
  if (v21 < 2)
  {
    v22 = 0;
    goto LABEL_26;
  }

LABEL_123:
  IPC::Decoder::markInvalid(a2);
  IPC::Decoder::markInvalid(a2);
  LOBYTE(v21) = 0;
  v22 = 1;
LABEL_26:
  IPC::Decoder::decode<WTF::String>(a2, &v102);
  v24 = *(a2 + 1);
  v25 = *(a2 + 2);
  v26 = *a2;
  v60 = a1;
  if (v24 <= &v25[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_125;
  }

  v27 = v25 + 1;
  *(a2 + 2) = v25 + 1;
  if (!v25)
  {
LABEL_125:
    IPC::Decoder::markInvalid(a2);
    v28 = 0;
    goto LABEL_126;
  }

  v28 = *v25;
  if (v28 < 2)
  {
    v29 = 1;
    goto LABEL_30;
  }

LABEL_126:
  IPC::Decoder::markInvalid(a2);
  v29 = 0;
  v24 = *(a2 + 1);
  v27 = *(a2 + 2);
  v26 = *a2;
LABEL_30:
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v24 <= &v27[-v26])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_128;
  }

  *(a2 + 2) = v27 + 1;
  if (!v27)
  {
LABEL_128:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_129;
  }

  v31 = *v27;
  if (v31 >= 2)
  {
LABEL_129:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_108;
  }

  if (!v31)
  {
    v32 = v4;
    v28 = 0;
    v57 = 0;
    v33 = 1;
    goto LABEL_38;
  }

  IPC::ArgumentCoder<WebCore::CertificateInfo,void>::decode(a2, &v69);
  if (v70 == 1)
  {
    v32 = v4;
    v57 = v69;
    v33 = 1;
    v28 = 1;
    goto LABEL_38;
  }

  IPC::Decoder::markInvalid(a2);
LABEL_108:
  IPC::Decoder::markInvalid(a2);
  v32 = v4;
  v33 = 0;
  v57 = 0;
LABEL_38:
  if (!*a2)
  {
LABEL_106:
    v45 = v60;
    *v60 = 0;
    v60[296] = 0;
    goto LABEL_62;
  }

  if ((v128 & 1) == 0 || (v124 & 1) == 0 || (v64 & 1) == 0 || (v122 & 1) == 0 || (v66 & 0x10000) == 0 || (v120 & 1) == 0 || (v118 & 1) == 0 || (v116 & 1) == 0 || (v111 & 1) == 0 || (v65 & 0x100) == 0 || v63 || v62 || (v16 & 1) == 0 || v61 || v22 || (v103 & 1) == 0 || (v29 & 1) == 0 || (v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_106;
  }

  LOBYTE(cf) = 0;
  v68 = 0;
  if (v28)
  {
    cf = v57;
    v68 = 1;
    v57 = 0;
  }

  v34 = v125;
  v125 = 0;
  v69 = v34;
  v70 = v126;
  v71 = v127;
  LODWORD(v126) = v126 & 0xFFFFFFFE;
  v35 = v123;
  v123 = 0;
  v72 = v35;
  v73 = v32;
  v36 = v121;
  v121 = 0;
  v74 = v36;
  v75 = v66;
  v37 = v119;
  v119 = 0;
  v38 = v117;
  v117 = 0;
  v76 = v37;
  v77 = v38;
  v39 = v112;
  v112 = 0;
  v78 = v39;
  v40 = v113;
  v113 = 0;
  v79 = v40;
  v41 = v114;
  v114 = 0;
  v80 = v41;
  v42 = v115;
  v115 = 0;
  v81 = v42;
  LOBYTE(v82) = 0;
  v92 = 0;
  if (v110 == 1)
  {
    v84 = v104[2];
    v85 = v104[3];
    v86 = v104[4];
    v82 = v104[0];
    v87 = v105;
    v83 = v104[1];
    v88 = v106;
    v89 = v107;
    v43 = v109;
    v106 = 0;
    v109 = 0;
    v90 = v108;
    v91 = v43;
    v92 = 1;
  }

  v93 = v65;
  v94 = v11;
  v95 = v59;
  v96 = v58;
  v97 = v19 & 1;
  v98 = v21 & 1;
  v44 = v102;
  v102 = 0;
  v99 = v44;
  v100 = v30;
  std::__optional_copy_base<WebCore::CertificateInfo,false>::__optional_copy_base[abi:sn200100](v101, &cf);
  v45 = v60;
  WebCore::ResourceResponseData::ResourceResponseData(v60, &v69);
  v60[296] = 1;
  WebCore::ResourceResponseData::~ResourceResponseData(&v69, v46);
  if (v68 == 1)
  {
    v56 = cf;
    cf = 0;
    if (v56)
    {
      CFRelease(v56);
    }
  }

LABEL_62:
  if ((v33 & v28) == 1 && v57)
  {
    CFRelease(v57);
  }

  if (v103 == 1)
  {
    v47 = v102;
    v102 = 0;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v23);
      }
    }
  }

  if (v111 == 1 && v110 == 1)
  {
    v48 = v109;
    v109 = 0;
    if (v48)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v48, v23);
    }

    v49 = v106;
    v106 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v23);
    }
  }

  if (v116 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v114, v23);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v112, v50);
  }

  if (v118 == 1)
  {
    v51 = v117;
    v117 = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v23);
      }
    }
  }

  if (v120 == 1)
  {
    v52 = v119;
    v119 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v23);
      }
    }
  }

  if (v122 == 1)
  {
    v53 = v121;
    v121 = 0;
    if (v53)
    {
      if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v23);
      }
    }
  }

  if (v124 == 1)
  {
    v54 = v123;
    v123 = 0;
    if (v54)
    {
      if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v23);
      }
    }
  }

  if (v128 == 1)
  {
    v55 = v125;
    v125 = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v23);
      }
    }
  }

  if ((v45[296] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D6FEA68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf, char a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, WTF::StringImpl *a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, WTF::StringImpl *a51, uint64_t a52, uint64_t a53, uint64_t a54, WTF::StringImpl *a55, char a56, int a57, __int16 a58, char a59, char a60)
{
  if (a56 == 1 && a55 && atomic_fetch_add_explicit(a55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a55, a2);
  }

  std::optional<std::optional<WebCore::NetworkLoadMetrics>>::~optional(&a58, a2);
  std::optional<WebCore::HTTPHeaderMap>::~optional(v60 - 240, v62);
  if (*(v60 - 192) == 1)
  {
    v64 = *(v60 - 200);
    *(v60 - 200) = 0;
    if (v64)
    {
      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v63);
      }
    }
  }

  if (*(v60 - 176) == 1)
  {
    v65 = *(v60 - 184);
    *(v60 - 184) = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v63);
      }
    }
  }

  if (*(v60 - 160) == 1)
  {
    v66 = *(v60 - 168);
    *(v60 - 168) = 0;
    if (v66)
    {
      if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v63);
      }
    }
  }

  if (*(v60 - 144) == 1)
  {
    v67 = *(v60 - 152);
    *(v60 - 152) = 0;
    if (v67)
    {
      if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v63);
      }
    }
  }

  if (*(v60 - 96) == 1)
  {
    v68 = *(v60 - 136);
    *(v60 - 136) = 0;
    if (v68)
    {
      if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v63);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::TransformationMatrix,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[6]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[7]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[8]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[9]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[10]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[11]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[12]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[13]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[14]);
  v4 = a2[15];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

void *IPC::ArgumentCoder<WebCore::CharacterRange,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

    v27 = result;
    v24 = a2;
    goto LABEL_24;
  }

  while (1)
  {
    v24 = a2;
    *result = 0;
    result[1] = 0;
    v27 = result;
    v17 = result[3];
    if (!v17)
    {
      v2 = 0;
LABEL_23:
      v4 = 0;
      goto LABEL_24;
    }

    if (!v2)
    {
      goto LABEL_23;
    }

    (*(*v17 + 16))(v17);
    v4 = *v27;
    v2 = v27[1];
LABEL_24:
    *v27 = 0;
    v27[1] = 0;
    v18 = v27[3];
    if (!v18)
    {
      v11 = 0;
      v2 = 0;
LABEL_26:
      v4 = 0;
      v10 = 0;
      v9 = 0;
      a2 = v24;
      result = v27;
      goto LABEL_8;
    }

    if (!v2)
    {
      v11 = 0;
      goto LABEL_26;
    }

    (*(*v18 + 16))(v18, v4);
    v10 = 0;
    v9 = 0;
    result = v27;
    v11 = *v27;
    v2 = v27[1];
    v4 = *v27;
    a2 = v24;
LABEL_8:
    v12 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v2 < v12 - v4 || v2 - (v12 - v4) <= 7)
    {
      v22 = v10;
      v20 = v9;
      v25 = a2;
      *result = 0;
      result[1] = 0;
      v28 = result;
      v19 = result[3];
      if (v19)
      {
        if (v2)
        {
          (*(*v19 + 16))(v19, v11);
          result = v28;
          v11 = *v28;
          v2 = v28[1];
          a2 = v25;
          goto LABEL_30;
        }
      }

      else
      {
        v2 = 0;
      }

      v11 = 0;
      result = v28;
LABEL_30:
      v9 = v20;
      v10 = v22;
      goto LABEL_31;
    }

    result[2] = v12 + 1;
    if (v12)
    {
      v14 = *v12;
      v15 = 1;
      if (!v4)
      {
        goto LABEL_32;
      }

      goto LABEL_15;
    }

LABEL_31:
    *result = 0;
    result[1] = 0;
    v29 = result;
    result = result[3];
    if (!result)
    {
      goto LABEL_32;
    }

    if (!v2)
    {
      goto LABEL_32;
    }

    v26 = a2;
    v21 = v9;
    v23 = v10;
    result = (*(*result + 16))(result, v11);
    v10 = v23;
    v9 = v21;
    a2 = v26;
    v15 = 0;
    v14 = 0;
    if (!*v29)
    {
      goto LABEL_32;
    }

LABEL_15:
    if (v10 & 1) != 0 && (v15)
    {
      break;
    }

    __break(1u);
  }

  if (!__CFADD__(v9, v14))
  {
    *a2 = v9;
    *(a2 + 8) = v14;
    v16 = 1;
    goto LABEL_19;
  }

LABEL_32:
  v16 = 0;
  *a2 = 0;
LABEL_19:
  *(a2 + 16) = v16;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::AffineTransform,void>::encode(uint64_t result, __int128 *a2)
{
  v2 = -*result;
  v3 = v2 & 7 | 0x30;
  if (*(result + 8) >= v3)
  {
    v4 = (*result + (v2 & 7));
    v5 = *a2;
    v6 = a2[2];
    v4[1] = a2[1];
    v4[2] = v6;
    *v4 = v5;
    v7 = *(result + 8);
    v8 = v7 >= v3;
    v9 = v7 - v3;
    if (v8)
    {
      *result += v3;
      *(result + 8) = v9;
      return result;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (!v6 || v7 <= 0x2F)
  {
    v13 = result;
    v10 = a2;
    IPC::Decoder::markInvalid(result);
    result = v13;
    a2 = v10;
LABEL_9:
    v12 = a2;
    v11 = result;
    result = IPC::Decoder::markInvalid(result);
    a2 = v12;
    if (*v11)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  *(result + 2) = v3 + 3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_11:
    v9 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  v8 = v3[1];
  *a2 = *v3;
  *(a2 + 16) = v8;
  *(a2 + 32) = v3[2];
  v9 = 1;
LABEL_7:
  *(a2 + 48) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_10;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_9;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 >= v11)
    {
      *(v10 + (-v10 & 3)) = a2[2];
      v12 = *(result + 8);
      v13 = v12 >= v11;
      v14 = v12 - v11;
      if (v13)
      {
        *result += v11;
        *(result + 8) = v14;
        return result;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FloatQuad,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v9 = v8;
  v10 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v12 = v11;
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v15 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  if ((v6 & 1) == 0 || (v9 & 1) == 0 || (v12 & 1) == 0 || (v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  LOBYTE(v15) = 1;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
LABEL_7:
  *(a2 + 32) = v15;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::IDBCursorRecord,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2 + 32);

  return IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(a1, a2 + 64);
}

uint64_t IPC::Decoder::decode<WebCore::IDBKeyData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::IDBKeyData,void>::decode();
  if ((*(a2 + 32) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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

void sub_19D6FF42C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 32) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 8, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::IDBValue>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::IDBValue,void>::decode(a2, a1);
  if ((*(a1 + 40) & 1) == 0)
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

uint64_t IPC::ArgumentCoder<WebCore::IDBCursorInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  *v6 = *a2;
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, v6);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v6[1]);
  *v6 = *(a2 + 16);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, v6);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v6[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  v4 = *(a2 + 48);
  v6[0] = *(a2 + 40);
  v6[1] = v4;
  v7 = v4;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, v6, v7);
  IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(a1, a2 + 56);
  LOBYTE(v6[0]) = *(a2 + 128);
  IPC::Encoder::operator<<<BOOL>(a1, v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 129));
  LOBYTE(v6[0]) = *(a2 + 130);
  return IPC::Encoder::operator<<<BOOL>(a1, v6);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBCursorInfo,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, v63);
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, v62);
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v6)
      {
        (*(*v12 + 16))(v12);
        v6 = a1[1];
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  a1[2] = (v7 + 1);
  if (!v7)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13 && v6)
    {
      (*(*v13 + 16))(v13);
    }

    goto LABEL_12;
  }

  v8 = *v7;
  if (v8 > 1)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v9)
    {
      i = 1;
      goto LABEL_14;
    }

LABEL_12:
    v14 = *a1;
    v15 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  for (i = 1; ; i = 0)
  {
LABEL_14:
    result = IPC::Decoder::decode<WebCore::IDBKeyRangeData>(v58, a1);
    v15 = a1[1];
    v17 = a1[2];
    v14 = *a1;
    if (v15 <= &v17[-*a1])
    {
      *a1 = 0;
      a1[1] = 0;
      v27 = a1[3];
      if (v27)
      {
        if (v15)
        {
          (*(*v27 + 16))(v27);
          v15 = a1[1];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      a1[2] = (v17 + 1);
      if (v17)
      {
        if (*v17 < 2u)
        {
          v18 = 0;
          goto LABEL_18;
        }

        goto LABEL_46;
      }
    }

    *a1 = 0;
    a1[1] = 0;
    v28 = a1[3];
    if (!v28)
    {
      v15 = 0;
LABEL_45:
      v14 = 0;
      goto LABEL_46;
    }

    if (!v15)
    {
      goto LABEL_45;
    }

    (*(*v28 + 16))(v28);
    v14 = *a1;
    v15 = a1[1];
LABEL_46:
    *a1 = 0;
    a1[1] = 0;
    v29 = a1[3];
    if (!v29)
    {
      v14 = 0;
      v15 = 0;
LABEL_48:
      v42 = 1;
      goto LABEL_49;
    }

    if (!v15)
    {
      v14 = 0;
      goto LABEL_48;
    }

    (*(*v29 + 16))(v29, v14);
    v14 = 0;
    v36 = a1[3];
    v37 = *a1;
    v38 = a1[1];
    v42 = 1;
    *a1 = 0;
    a1[1] = 0;
    v15 = 0;
    if (!v36 || !v38)
    {
      goto LABEL_49;
    }

    result = (*(*v36 + 16))(v36, v37, v38);
    v14 = *a1;
    v15 = a1[1];
    v18 = 1;
LABEL_18:
    v19 = a1[2];
    if (v15 <= v19 - v14)
    {
      v42 = v18;
LABEL_49:
      *a1 = 0;
      a1[1] = 0;
      v30 = a1[3];
      if (v30)
      {
        if (v15)
        {
          (*(*v30 + 16))(v30, v14);
          v14 = *a1;
          v15 = a1[1];
LABEL_52:
          *a1 = 0;
          a1[1] = 0;
          v31 = a1[3];
          if (v31)
          {
            if (v15)
            {
              (*(*v31 + 16))(v31, v14);
              v14 = *a1;
              v15 = a1[1];
              goto LABEL_55;
            }
          }

          else
          {
            v15 = 0;
          }

          v14 = 0;
LABEL_55:
          v18 = v42;
          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0;
      }

      v14 = 0;
      goto LABEL_52;
    }

    a1[2] = (v19 + 1);
    if (!v19)
    {
      v42 = v18;
      goto LABEL_52;
    }

    v20 = *v19;
    if (v20 < 4)
    {
      v21 = v20 | 0x100;
      goto LABEL_22;
    }

LABEL_56:
    *a1 = 0;
    a1[1] = 0;
    v32 = a1[3];
    if (!v32)
    {
      v14 = 0;
      v21 = 0;
      v15 = 0;
      goto LABEL_58;
    }

    v43 = v18;
    if (!v15)
    {
      break;
    }

    result = (*(*v32 + 16))(v32, v14);
    v21 = 0;
    v14 = *a1;
    v15 = a1[1];
    v18 = v43;
LABEL_22:
    v22 = a1[2];
    if (v15 <= v22 - v14)
    {
      goto LABEL_58;
    }

    a1[2] = (v22 + 1);
    if (!v22)
    {
      goto LABEL_60;
    }

    if (*v22 >= 2u)
    {
      goto LABEL_62;
    }

    v23 = 0;
    if (!v14)
    {
      goto LABEL_63;
    }

LABEL_26:
    if ((v63[16] & 1) != 0 && (v62[16] & 1) != 0 && (v5 & 1) != 0 && (i & 1) != 0 && (v61 & 1) != 0 && !v18 && v21 > 0xFF && !v23)
    {
      WebCore::IDBCursorInfo::IDBCursorInfo();
      *a2 = v47;
      *(a2 + 16) = v48;
      *(a2 + 32) = v49;
      *(a2 + 48) = v50;
      *(a2 + 56) = v51;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 64, v52);
      *(a2 + 88) = v53;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 96, v54);
      *(a2 + 120) = v55;
      *(a2 + 128) = v56;
      *(a2 + 130) = v57;
      *(a2 + 136) = 1;
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v54, v24);
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v52, v25);
      goto LABEL_35;
    }

    __break(1u);
LABEL_39:
    if (v15)
    {
      (*(*result + 16))(result, v14);
    }

LABEL_13:
    ;
  }

  v14 = 0;
  v21 = 0;
LABEL_58:
  *a1 = 0;
  a1[1] = 0;
  v33 = a1[3];
  if (v33)
  {
    v41 = v21;
    v46 = v18;
    if (v15)
    {
      (*(*v33 + 16))(v33, v14);
      v14 = *a1;
      v15 = a1[1];
    }

    else
    {
      v14 = 0;
    }

    v18 = v46;
    v21 = v41;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

LABEL_60:
  *a1 = 0;
  a1[1] = 0;
  v34 = a1[3];
  if (v34)
  {
    v40 = v21;
    v45 = v18;
    if (v15)
    {
      (*(*v34 + 16))(v34, v14);
      v14 = *a1;
      v15 = a1[1];
    }

    else
    {
      v14 = 0;
    }

    v18 = v45;
    v21 = v40;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

LABEL_62:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v15)
    {
      v39 = v21;
      v44 = v18;
      (*(*result + 16))(result, v14);
      result = a1[3];
      v14 = *a1;
      v35 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (result)
      {
        if (v35)
        {
          result = (*(*result + 16))(result, v14);
          v14 = *a1;
          v23 = 1;
          v18 = v44;
          v21 = v39;
          if (*a1)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_63:
  *a2 = 0;
  *(a2 + 136) = 0;
LABEL_35:
  if (v61 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v60, v14);
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v59, v26);
  }

  return result;
}

void sub_19D6FFCA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a38 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a34, a2);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a30, v39);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::IDBResourceIdentifier>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::IDBResourceIdentifier,void>::decode(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::IDBKeyRangeData>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::decode(a2, a1);
  if ((*(a1 + 72) & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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

void sub_19D6FFE00(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 72) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 40, a2);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 8, v4);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBError,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<std::optional<WebCore::ExceptionCode>>(a1);
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v4 & 0x10000) == 0 || (v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_5;
  }

  result = WebCore::IDBError::IDBError();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
LABEL_5:
  if (v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void sub_19D6FFEE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::ExceptionCode>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::ExceptionCode>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
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
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::ArgumentCoder<WebCore::IDBGetAllRecordsData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(a1, a2);
  v5 = *(a2 + 72);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 76);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  return IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 96);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBGetAllRecordsData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::IDBKeyRangeData>(&v35, a1);
  v4 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  v5 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v7 = v6;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v10 = v9;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a1;
  v26 = result;
  if (v11 <= &v12[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18)
    {
      if (v11)
      {
        (*(*v18 + 16))(v18);
        v11 = a1[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_10;
  }

  a1[2] = (v12 + 1);
  if (!v12)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19)
    {
      if (v11)
      {
        (*(*v19 + 16))(v19);
        v13 = *a1;
        v11 = a1[1];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_13:
    *a1 = 0;
    a1[1] = 0;
    v20 = a1[3];
    if (v20 && v11)
    {
      (*(*v20 + 16))(v20, v13);
    }

    goto LABEL_14;
  }

  v14 = *v12;
  if (v14 >= 2)
  {
    goto LABEL_13;
  }

  if (!v14)
  {
    v25 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    goto LABEL_16;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v13)
  {
    v15 = result & 0xFFFFFFFFFFFFFF00;
    v16 = result;
    v17 = 1;
    v25 = 1;
    goto LABEL_16;
  }

LABEL_14:
  v13 = *a1;
  v21 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result && v21)
  {
    result = (*(*result + 16))(result, v13);
  }

  v17 = 0;
  v15 = 0;
  v16 = 0;
LABEL_16:
  if (*a1)
  {
    if (v40)
    {
      v27 = v35;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v28, v36);
      v29 = v37;
      result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v30, v38);
      v31 = v39;
      if (v4 > 0xFFu)
      {
        LOBYTE(v32) = v4;
        if (v7)
        {
          DWORD1(v32) = v5;
          BYTE8(v32) = BYTE4(v5);
          if (v10)
          {
            *&v33 = v26;
            if (v17)
            {
              *(&v33 + 1) = v16 | v15;
              v34 = v25;
              *a2 = v27;
              mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v28);
              *(a2 + 32) = v29;
              mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 40, v30);
              *(a2 + 64) = v31;
              *(a2 + 72) = v32;
              *(a2 + 88) = v33;
              *(a2 + 104) = v34;
              *(a2 + 112) = 1;
              mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v30, v22);
              result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v28, v23);
              goto LABEL_23;
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 112) = 0;
LABEL_23:
  if (v40 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v38, v13);
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v36, v24);
  }

  return result;
}

void sub_19D700314(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a31, a2);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a27, v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBGetResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2 + 40);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2 + 72);
  IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(a1, a2);
  IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&>(a1, a2 + 104);
  IPC::VectorArgumentCoder<false,WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 136);
  v5 = *(a2 + 152);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::Decoder::decode<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[32] & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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

void sub_19D700470(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 32) == 1 && *(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::IDBGetAllResult,void>::encode(IPC::Encoder *a1, WebCore::IDBGetAllResult *a2)
{
  v4 = a2 + 40;
  v8 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v5 = WebCore::IDBGetAllResult::keys(a2);
  IPC::VectorArgumentCoder<false,WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v5);
  v6 = WebCore::IDBGetAllResult::values(a2);
  IPC::VectorArgumentCoder<false,WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
  return IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&>(a1, v4);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = a2[1];
LABEL_43:
        *a2 = 0;
        a2[1] = 0;
        v18 = a2[3];
        if (v18 && v6)
        {
          (*(*v18 + 16))(v18, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_45:
        v19 = *a2;
        v20 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v20)
          {
            return (*(*result + 16))(result, v19);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_43;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_43;
  }

  v8 = *v4;
  v25 = 0;
  v26 = 0;
  if (v8 >= 0x8000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::IDBKeyData>(a2, &v22);
      v13 = v24;
      if (v24)
      {
        if (HIDWORD(v26) == v26)
        {
          WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBKeyData>(&v25, &v22);
        }

        else
        {
          v14 = (v25 + 32 * HIDWORD(v26));
          *v14 = v22;
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor((v14 + 4), v23);
          ++HIDWORD(v26);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v24 == 1)
      {
        mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v23, v5);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v15 = HIDWORD(v26);
        if (v26 <= HIDWORD(v26))
        {
          goto LABEL_19;
        }

        result = v25;
        if (HIDWORD(v26))
        {
          v21 = v25;
          if (HIDWORD(v26) >> 27)
          {
            __break(0xC471u);
            return result;
          }

          v16 = WTF::fastMalloc((32 * HIDWORD(v26)));
          result = v21;
          LODWORD(v26) = v15;
          v25 = v16;
          if (v16 != v21)
          {
            WTF::VectorMover<false,WebCore::IDBKeyData>::move(v21, v21 + 4 * v15, v16);
            result = v21;
          }
        }

        if (result)
        {
          if (v25 == result)
          {
            v25 = 0;
            LODWORD(v26) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_19;
      }
    }
  }

  else if (v8)
  {
    LODWORD(v26) = v8;
    v25 = WTF::fastMalloc((32 * v8));
    while (1)
    {
      IPC::Decoder::decode<WebCore::IDBKeyData>(a2, &v22);
      v9 = v24;
      if (v24)
      {
        if (HIDWORD(v26) == v26)
        {
          WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBKeyData>(&v25, &v22);
        }

        else
        {
          v10 = (v25 + 32 * HIDWORD(v26));
          *v10 = v22;
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor((v10 + 4), v23);
          ++HIDWORD(v26);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v24 == 1)
      {
        mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v23, v5);
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    *a1 = v25;
    v11 = v26;
    v25 = 0;
    v26 = 0;
    *(a1 + 8) = v11;
    *(a1 + 16) = 1;
  }

  result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_45;
  }

  return result;
}

void sub_19D700814(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 16) == 1)
  {
    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBDatabaseInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));

  return IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 24));
}

uint64_t IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 65));
}

uint64_t IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, &v31);
  result = IPC::Decoder::decode<WebCore::IDBKeyData>(v2, &v28);
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  if (v5 <= &v6[-*v2])
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  v2[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_29;
  }

  v9 = *v6;
  if (v9 < 2)
  {
    v10 = 1;
    goto LABEL_5;
  }

  while (1)
  {
    *v2 = 0;
    v2[1] = 0;
    v18 = v2[3];
    if (!v18 || !v5)
    {
      v11 = 0;
      v22 = 0;
      v19 = 0;
      v7 = 0;
LABEL_34:
      *v2 = 0;
      v2[1] = 0;
      v20 = v2[3];
      if (v20 && v19)
      {
        (*(*v20 + 16))(v20, v7, v19);
        v12 = 0;
        v7 = *v2;
        v5 = v2[1];
      }

      else
      {
        v5 = 0;
        v7 = 0;
        v12 = 0;
      }

      goto LABEL_37;
    }

    result = (*(*v18 + 16))(v18, v7);
    v10 = 0;
    v7 = *v2;
    v5 = v2[1];
    v8 = v2[2];
LABEL_5:
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v5 <= v8 - v7)
    {
      v22 = v10;
      v19 = 0;
      v21 = v2[3];
      *v2 = 0;
      v2[1] = 0;
      if (v21 && v5)
      {
        (*(*v21 + 16))(v21);
        v7 = *v2;
        v19 = v2[1];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_34;
    }

    v2[2] = (v8 + 1);
    if (!v8)
    {
      v22 = v10;
      v19 = v5;
      goto LABEL_34;
    }

    v12 = *v8;
    if (v12 < 2)
    {
      v13 = 1;
      goto LABEL_12;
    }

    v22 = v10;
LABEL_37:
    *v2 = 0;
    v2[1] = 0;
    result = v2[3];
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v13 = 0;
    v7 = *v2;
    v10 = v22;
LABEL_12:
    v2 = v12 ? v13 : 0;
    if (!v7)
    {
      break;
    }

    if (v33 & 1) != 0 && (v30 & 1) != 0 && (v10 & 1) != 0 && (v13)
    {
      v23 = v31;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v24, v32);
      v25 = v28;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v26, v29);
      LOBYTE(v27) = v11;
      HIBYTE(v27) = v2;
      *a2 = v23;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v24);
      *(a2 + 32) = v25;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 40, v26);
      *(a2 + 64) = v27;
      *(a2 + 72) = 1;
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v26, v14);
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v24, v15);
      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    *v2 = 0;
    v2[1] = 0;
    v16 = v2[3];
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v5 = v2[1];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_29:
    *v2 = 0;
    v2[1] = 0;
    v17 = v2[3];
    if (!v17)
    {
      v5 = 0;
      goto LABEL_31;
    }

    if (v5)
    {
      (*(*v17 + 16))(v17);
      v9 = 0;
      v7 = *v2;
      v5 = v2[1];
    }

    else
    {
LABEL_31:
      v7 = 0;
      v9 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 72) = 0;
LABEL_21:
  if (v30 == 1)
  {
    result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v29, v7);
  }

  if (v33 == 1)
  {
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v32, v7);
  }

  return result;
}

void sub_19D700C84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a20, a2);
  }

  if (*(v23 - 40) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v23 - 64, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 17));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 32);

  return IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBDatabaseInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBDatabaseInfo> const&>(a1, (a2 + 48));
}

WTF::StringImpl ***IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v39);
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v4)
      {
        (*(*v21 + 16))(v21);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v7 = *v5;
      if (v7 < 3)
      {
        v8 = v7 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_38;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v22 = a1[3];
  if (v22)
  {
    if (v4)
    {
      (*(*v22 + 16))(v22);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_38;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_38:
  *a1 = 0;
  a1[1] = 0;
  v23 = a1[3];
  if (!v23)
  {
    v6 = 0;
    v8 = 0;
    v4 = 0;
    goto LABEL_40;
  }

  if (!v4)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_40;
  }

  (*(*v23 + 16))(v23, v6);
  v8 = 0;
  v6 = *a1;
  v4 = a1[1];
LABEL_5:
  v9 = a1[2];
  if (v4 > &v9[-v6])
  {
    a1[2] = (v9 + 1);
    if (v9)
    {
      v10 = *v9;
      if (v10 < 3)
      {
        v11 = v10 | 0x100;
        goto LABEL_9;
      }

      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_40:
  *a1 = 0;
  a1[1] = 0;
  v24 = a1[3];
  if (v24)
  {
    if (v4)
    {
      (*(*v24 + 16))(v24, v6);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_43;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_43:
  *a1 = 0;
  a1[1] = 0;
  v25 = a1[3];
  if (v25)
  {
    if (v4)
    {
      (*(*v25 + 16))(v25, v6);
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_46;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_46:
  *a1 = 0;
  a1[1] = 0;
  v26 = a1[3];
  if (v26)
  {
    if (v4)
    {
      (*(*v26 + 16))(v26, v6);
      v11 = 0;
      v6 = *a1;
      v4 = a1[1];
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
  v11 = 0;
LABEL_9:
  v12 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v4 < v12 - v6 || v4 - (v12 - v6) <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_31;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_31;
  }

  a1[2] = (v12 + 1);
  if (v12)
  {
    v13 = *v12;
    v14 = 1;
    goto LABEL_13;
  }

LABEL_31:
  *a1 = 0;
  a1[1] = 0;
  v20 = a1[3];
  if (v20 && v4)
  {
    (*(*v20 + 16))(v20, v6);
  }

  v14 = 0;
  v13 = 0;
LABEL_13:
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v36);
  result = IPC::Decoder::decode<std::unique_ptr<WebCore::IDBDatabaseInfo>>(&v34, a1);
  if (*a1)
  {
    if (v40 & 1) != 0 && v8 > 0xFF && v11 > 0xFF && (v14 & 1) != 0 && (v38 & 1) != 0 && (v35)
    {
      v33 = v34;
      v34 = 0;
      v28 = v39;
      v29 = v8;
      v30 = v11;
      v31 = v13;
      v32[0] = v36;
      v17 = v37;
      v36 = 0;
      v37 = 0;
      v32[1] = v17;
      v27 = 0;
      WebCore::IDBTransactionInfo::IDBTransactionInfo(a2, &v28);
      a2[56] = 1;
      std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v33, 0);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v18);
      result = std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v27, 0);
      goto LABEL_21;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[56] = 0;
LABEL_21:
  if (v35 == 1)
  {
    result = std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v34, 0);
  }

  if (v38 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v16);
  }

  return result;
}

void sub_19D701180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl **a18, char a19, int a20, char a21, uint64_t a22, char a23)
{
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100]((v23 + 48), 0);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 32, v25);
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&a10, 0);
  if (a19 == 1)
  {
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&a18, 0);
  }

  if (a23 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v26);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl ***IPC::Decoder::decode<std::unique_ptr<WebCore::IDBDatabaseInfo>>(WTF::StringImpl ***result, IPC::Decoder *a2)
{
  v4 = result;
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v65 = *(a2 + 3);
    if (v65)
    {
      if (v7)
      {
        (*(*v65 + 16))(v65);
        v6 = *a2;
        v7 = *(a2 + 1);
LABEL_141:
        *a2 = 0;
        *(a2 + 1) = 0;
        v66 = *(a2 + 3);
        if (v66)
        {
          if (v7)
          {
            (*(*v66 + 16))(v66, v6);
            goto LABEL_107;
          }
        }

        else
        {
          v7 = 0;
        }

        v6 = 0;
LABEL_108:
        *a2 = 0;
        *(a2 + 1) = 0;
        v55 = *(a2 + 3);
        if (v55 && v7)
        {
          (*(*v55 + 16))(v55, v6);
        }

        *v4 = 0;
        *(v4 + 8) = 0;
        v56 = *a2;
        v57 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result && v57)
        {
          return ((*result)[2])(result, v56);
        }

        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_141;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_141;
  }

  v8 = *v5;
  if (v8 >= 2)
  {
    goto LABEL_108;
  }

  if (!v8)
  {
    *result = 0;
    *(result + 8) = 1;
    return result;
  }

  IPC::Decoder::decode<WTF::String>(a2, &v72);
  v9 = *(a2 + 1);
  v10 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *a2;
  v12 = v10 - *a2;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (v13 && v14 > 7)
  {
    *(a2 + 2) = v10 + 8;
    if (v10)
    {
      v68 = 1;
      v16 = v11;
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v59 = *(a2 + 3);
    if (v59)
    {
      if (v9)
      {
        (*(*v59 + 16))(v59);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v60 = *(a2 + 3);
  if (v60)
  {
    if (v9)
    {
      (*(*v60 + 16))(v60);
      v68 = 0;
      v16 = *a2;
      v9 = *(a2 + 1);
      v11 = *a2;
      goto LABEL_12;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
    v9 = 0;
  }

  v11 = 0;
  v68 = 0;
LABEL_12:
  v17 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v9 < v17 - v11 || v9 - (v17 - v11) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v61 = *(a2 + 3);
    if (v61)
    {
      if (v9)
      {
        (*(*v61 + 16))(v61, v16);
        v16 = *a2;
        v9 = *(a2 + 1);
        goto LABEL_130;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = 0;
  }

  else
  {
    *(a2 + 2) = v17 + 8;
    if (v17)
    {
      v67 = 1;
      goto LABEL_16;
    }
  }

LABEL_130:
  *a2 = 0;
  *(a2 + 1) = 0;
  v62 = *(a2 + 3);
  if (v62)
  {
    if (v9)
    {
      (*(*v62 + 16))(v62, v16);
      v67 = 0;
      v11 = *a2;
      v9 = *(a2 + 1);
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v67 = 0;
LABEL_16:
  v18 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9 < v18 - v11 || v9 - (v18 - v11) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v63 = *(a2 + 3);
    if (v63)
    {
      if (v9)
      {
        (*(*v63 + 16))(v63);
        v11 = *a2;
        v9 = *(a2 + 1);
LABEL_136:
        *a2 = 0;
        *(a2 + 1) = 0;
        v64 = *(a2 + 3);
        if (v64 && v9)
        {
          (*(*v64 + 16))(v64, v11);
        }

        LOBYTE(v70) = 0;
        v71 = 0;
        goto LABEL_85;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_136;
  }

  *(a2 + 2) = v18 + 4;
  if (!v18)
  {
    goto LABEL_136;
  }

  v19 = *v18;
  v81 = 0;
  if (!v19)
  {
    v58 = 0;
LABEL_89:
    v70 = v58;
    v51 = 1;
    v71 = 1;
    if (v11)
    {
      goto LABEL_90;
    }

    v51 = 0;
    v52 = 0;
    if (v58)
    {
LABEL_96:
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v58, v11);
    }

    goto LABEL_98;
  }

  v20 = 0;
  v2 = -1;
  while (1)
  {
    v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v22 & 1) == 0 || (v23 = v21, IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::decode(a2, &v74), (v80 & 1) == 0) && ((v22 = *a2, v48 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v49 = *(a2 + 3)) == 0) || !v48 || ((*(*v49 + 16))(v49, v22), (v80 & 1) == 0)))
    {
      LOBYTE(v70) = 0;
      v71 = 0;
      goto LABEL_83;
    }

    if (v23 - 1 >= 0xFFFFFFFFFFFFFFFELL)
    {
      LOBYTE(v70) = 0;
      v71 = 0;
      goto LABEL_76;
    }

    v24 = v81;
    if (!v81)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v81);
      v24 = v81;
    }

    v25 = *(v24 - 8);
    v26 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
    v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
    v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
    v29 = v25 & ((v28 >> 31) ^ v28);
    v30 = (v24 + 72 * v29);
    v31 = *v30;
    if (*v30)
    {
      break;
    }

LABEL_34:
    *v30 = v23;
    v34 = v75[0];
    v75[0] = 0;
    v82 = v74;
    v83 = v34;
    std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100](v84, &v75[1]);
    v86 = v78;
    v36 = v79;
    v79 = 0;
    v87 = v36;
    v30[1] = v82;
    v37 = v83;
    v83 = 0;
    v38 = v30[2];
    v30[2] = v37;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v35);
    }

    if (*(v30 + 48) == v85)
    {
      if (*(v30 + 48))
      {
        mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=((v30 + 3), v84);
      }
    }

    else
    {
      if (*(v30 + 48))
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v30 + 3), v35);
        v39 = 0;
      }

      else
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor((v30 + 3), v84);
        v39 = 1;
      }

      *(v30 + 48) = v39;
    }

    *(v30 + 56) = v86;
    v40 = v87;
    v87 = 0;
    v41 = v30[8];
    v30[8] = v40;
    if (v41)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v41, v35);
      if (v87)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v87, v35);
      }
    }

    if (v85 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v84, v35);
    }

    v42 = v83;
    v83 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v35);
    }

    v43 = v81;
    if (v81)
    {
      v44 = *(v81 - 12) + 1;
    }

    else
    {
      v44 = 1;
    }

    *(v81 - 12) = v44;
    v45 = (*(v43 - 16) + v44);
    v46 = *(v43 - 4);
    if (v46 > 0x400)
    {
      if (v46 > 2 * v45)
      {
        goto LABEL_58;
      }

LABEL_57:
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v81);
      goto LABEL_58;
    }

    if (3 * v46 <= 4 * v45)
    {
      goto LABEL_57;
    }

LABEL_58:
    if (v80 == 1)
    {
      if (v79)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v79, v35);
      }

      if (v77 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v75[1], v35);
      }

      v47 = v75[0];
      v75[0] = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v35);
      }
    }

    if (++v20 == v19)
    {
      v58 = v81;
      v11 = *a2;
      goto LABEL_89;
    }
  }

  v32 = 0;
  v33 = 1;
  while (v31 != v23)
  {
    if (v31 == -1)
    {
      v32 = v30;
    }

    v29 = (v29 + v33) & v25;
    v30 = (v24 + 72 * v29);
    v31 = *v30;
    ++v33;
    if (!*v30)
    {
      if (v32)
      {
        *v32 = 0;
        WTF::HashTraits<WebCore::IDBObjectStoreInfo>::emptyValue();
        --*(v81 - 16);
        v30 = v32;
      }

      goto LABEL_34;
    }
  }

  LOBYTE(v70) = 0;
  v71 = 0;
  if ((v80 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_76:
  if (v79)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v79, v22);
  }

  if (v77 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v75[1], v22);
  }

  v50 = v75[0];
  v75[0] = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v22);
  }

LABEL_83:
  if (v81)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v81, v22);
  }

LABEL_85:
  v11 = *a2;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v58 = *(a2 + 3);
  if (v58)
  {
    while (v9)
    {
      v58 = (*(*v58 + 16))(v58, v11);
      v51 = 0;
      if (!*a2)
      {
        goto LABEL_87;
      }

LABEL_90:
      if (v73 & 1) != 0 && (v68 & 1) != 0 && (v67 & 1) != 0 && (v51)
      {
        WebCore::IDBDatabaseInfo::IDBDatabaseInfo();
        v52 = v74;
        v69 = *v75;
        v2 = v76;
        if ((v71 & 1) == 0)
        {
          v51 = 1;
          goto LABEL_98;
        }

        v51 = 1;
        v58 = v70;
        if (!v70)
        {
          goto LABEL_98;
        }

        goto LABEL_96;
      }

      __break(1u);
    }
  }

  v51 = 0;
LABEL_87:
  v52 = 0;
LABEL_98:
  if (v73 != 1 || (v53 = v72, v72 = 0, !v53) || atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v51)
    {
      goto LABEL_102;
    }

LABEL_107:
    v6 = *a2;
    v7 = *(a2 + 1);
    goto LABEL_108;
  }

  WTF::StringImpl::destroy(v53, v11);
  if ((v51 & 1) == 0)
  {
    goto LABEL_107;
  }

LABEL_102:
  if (*MEMORY[0x1E69E2560])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2560], v11);
  }

  else
  {
    NonCompact = WebCore::IDBDatabaseInfo::operatorNewSlow(0x20);
  }

  *NonCompact = v52;
  *(NonCompact + 8) = v69;
  *(NonCompact + 24) = v2;
  v74 = 0;
  *v4 = NonCompact;
  *(v4 + 8) = 1;
  return std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v74, 0);
}

void sub_19D701AE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, WTF::StringImpl *a18, char a19, int a20, __int16 a21, char a22, char a23, WTF::StringImpl *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32)
{
  if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBGetRecordData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  result = IPC::Decoder::decode<WebCore::IDBKeyRangeData>(&v22, a1);
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  if (v5 <= &v6[-*v2])
  {
    goto LABEL_12;
  }

  v2[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v2 = (v8 != 0);
  if (v7)
  {
    while (1)
    {
      if (v27)
      {
        v16 = v22;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v17, v23);
        v18 = v24;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v19, v25);
        v20 = v26;
        if (!v9)
        {
          v21 = v2;
          *a2 = v16;
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v17);
          *(a2 + 32) = v18;
          mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 40, v19);
          *(a2 + 64) = v20;
          *(a2 + 72) = v21;
          *(a2 + 80) = 1;
          mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v19, v10);
          result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v17, v11);
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      *v2 = 0;
      v2[1] = 0;
      v13 = v2[3];
      if (v13)
      {
        if (v5)
        {
          (*(*v13 + 16))(v13);
          v5 = v2[1];
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_14:
      *v2 = 0;
      v2[1] = 0;
      v14 = v2[3];
      if (!v14)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_16;
      }

      (*(*v14 + 16))(v14);
      v7 = *v2;
      v5 = v2[1];
LABEL_17:
      *v2 = 0;
      v2[1] = 0;
      result = v2[3];
      if (result)
      {
        if (v5)
        {
          (*(*result + 16))(result, v7);
          result = v2[3];
          v7 = *v2;
          v15 = v2[1];
          *v2 = 0;
          v2[1] = 0;
          if (result)
          {
            if (v15)
            {
              result = (*(*result + 16))(result, v7);
              v7 = *v2;
              v2 = 0;
              v9 = 1;
              if (v7)
              {
                continue;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }

    v5 = 0;
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

LABEL_18:
  *a2 = 0;
  *(a2 + 80) = 0;
LABEL_8:
  if (v27 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v25, v7);
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v23, v12);
  }

  return result;
}

void sub_19D701E98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a28 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a24, a2);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a20, v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  v7 = *(a2 + 40);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 24, v7);
  v6 = *(a2 + 48);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v5 = *(a2 + 49);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v7 = v6;
  IPC::Decoder::decode<WTF::String>(a1, &v29);
  result = IPC::Decoder::decode<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v27);
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    goto LABEL_25;
  }

  v12 = v10 + 1;
  a1[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_27;
  }

  if (*v10 >= 2u)
  {
    goto LABEL_30;
  }

  v13 = 1;
LABEL_5:
  if (v9 <= v12 - v11)
  {
    v22 = v13;
    v19 = 0;
    v21 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v21 && v9)
    {
      (*(*v21 + 16))(v21);
      v11 = *a1;
      v19 = a1[1];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    a1[2] = (v12 + 1);
    if (v12)
    {
      if (*v12 < 2u)
      {
        v14 = 1;
        goto LABEL_9;
      }

      v22 = v13;
      goto LABEL_35;
    }

    v22 = v13;
    v19 = v9;
  }

  while (1)
  {
    *a1 = 0;
    a1[1] = 0;
    v20 = a1[3];
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v11, v19);
      v11 = *a1;
      v9 = a1[1];
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

LABEL_35:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result || !v9)
    {
      break;
    }

    result = (*(*result + 16))(result, v11);
    v14 = 0;
    v11 = *a1;
    v13 = v22;
LABEL_9:
    if (!v11)
    {
      break;
    }

    if (v5 & 1) != 0 && (v7 & 1) != 0 && (v30 & 1) != 0 && (v28 & 1) != 0 && (v13 & 1) != 0 && (v14)
    {
      WebCore::IDBIndexInfo::IDBIndexInfo();
      *a2 = v23;
      *(a2 + 16) = v24;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(a2 + 24, v25);
      *(a2 + 48) = v26;
      *(a2 + 56) = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v25, v15);
      result = 0;
      goto LABEL_17;
    }

    __break(1u);
LABEL_25:
    *a1 = 0;
    a1[1] = 0;
    v16 = a1[3];
    if (v16)
    {
      if (v9)
      {
        (*(*v16 + 16))(v16);
        v9 = a1[1];
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_27:
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17)
    {
      if (v9)
      {
        (*(*v17 + 16))(v17);
        v11 = *a1;
        v9 = a1[1];
        goto LABEL_30;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_30:
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18 && v9)
    {
      result = (*(*v18 + 16))(v18, v11);
      v13 = 0;
      v11 = *a1;
      v9 = a1[1];
      v12 = a1[2];
      goto LABEL_5;
    }

    v22 = 0;
    v19 = 0;
    v11 = 0;
  }

  *a2 = 0;
  *(a2 + 56) = 0;
LABEL_17:
  if (v28 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v27, v11);
  }

  if (v30 == 1)
  {
    result = v29;
    v29 = 0;
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

void sub_19D702338(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a19, a2);
  }

  if (*(v22 - 56) == 1)
  {
    v24 = *(v22 - 64);
    *(v22 - 64) = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D702420(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&>(a1, a2 + 16);
  v5 = *(a2 + 48);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 56));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  IPC::Decoder::decode<WTF::String>(a1, &v50);
  result = IPC::Decoder::decode<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v48, a1);
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  v45 = v5;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v43 = a1[3];
    if (v43)
    {
      if (v7)
      {
        (*(*v43 + 16))(v43);
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_90:
    *a1 = 0;
    a1[1] = 0;
    v44 = a1[3];
    if (v44)
    {
      if (v7)
      {
        (*(*v44 + 16))(v44);
        v9 = *a1;
        v7 = a1[1];
        goto LABEL_93;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    goto LABEL_93;
  }

  a1[2] = (v8 + 1);
  if (!v8)
  {
    goto LABEL_90;
  }

  if (*v8 < 2u)
  {
    v10 = 1;
    goto LABEL_5;
  }

LABEL_93:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (!result)
  {
    v7 = 0;
LABEL_95:
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  if (!v7)
  {
    goto LABEL_95;
  }

  result = (*(*result + 16))(result, v9);
  v10 = 0;
  v9 = *a1;
  v7 = a1[1];
LABEL_5:
  v11 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7 >= v11 - v9 && v7 - (v11 - v9) > 3)
  {
    a1[2] = (v11 + 1);
    if (!v11)
    {
      goto LABEL_86;
    }

    v13 = *v11;
    v58 = 0;
    if (!v13)
    {
      v40 = 0;
      goto LABEL_56;
    }

    v14 = 0;
    while (1)
    {
      v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v9 & 1) == 0)
      {
        goto LABEL_80;
      }

      v16 = v15;
      IPC::Decoder::decode<WebCore::IDBIndexInfo>(a1, v52);
      if ((v57 & 1) == 0)
      {
        goto LABEL_80;
      }

      if (v16 - 1 >= 0xFFFFFFFFFFFFFFFELL)
      {
        LOBYTE(v46) = 0;
        v47 = 0;
        goto LABEL_47;
      }

      v17 = v58;
      if (!v58)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v58);
        v17 = v58;
      }

      v18 = *(v17 - 8);
      v19 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
      v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
      v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
      v22 = v18 & ((v21 >> 31) ^ v21);
      v23 = (v17 + (v22 << 6));
      v24 = *v23;
      if (*v23)
      {
        v25 = 0;
        v26 = 1;
        while (v24 != v16)
        {
          if (v24 == -1)
          {
            v25 = v23;
          }

          v22 = (v22 + v26) & v18;
          v23 = (v17 + (v22 << 6));
          v24 = *v23;
          ++v26;
          if (!*v23)
          {
            if (v25)
            {
              *v25 = 0;
              WTF::HashTraits<WebCore::IDBIndexInfo>::emptyValue();
              --*(v58 - 16);
              v23 = v25;
            }

            goto LABEL_26;
          }
        }

        LOBYTE(v46) = 0;
        v47 = 0;
        if ((v57 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_47:
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v54, v9);
        v36 = v53;
        v53 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v9);
        }

        goto LABEL_50;
      }

LABEL_26:
      *v23 = v16;
      v59 = *v52;
      v27 = v53;
      v53 = 0;
      v60 = v27;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(v61, v54);
      v62 = v56;
      *(v23 + 1) = v59;
      v29 = v60;
      v60 = 0;
      v30 = v23[3];
      v23[3] = v29;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }

      mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=((v23 + 4), v61);
      *(v23 + 28) = v62;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v61, v31);
      result = v60;
      v60 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      v32 = v58;
      v33 = v58 ? *(v58 - 12) + 1 : 1;
      *(v58 - 12) = v33;
      v34 = (*(v32 - 16) + v33);
      v35 = *(v32 - 4);
      if (v35 <= 0x400)
      {
        break;
      }

      if (v35 <= 2 * v34)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (v57 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v54, v9);
        result = v53;
        v53 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v9);
          }
        }
      }

      if (++v14 == v13)
      {
        v40 = v58;
LABEL_56:
        v46 = v40;
        v47 = 1;
        goto LABEL_57;
      }
    }

    if (3 * v35 > 4 * v34)
    {
      goto LABEL_38;
    }

LABEL_37:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v58);
    goto LABEL_38;
  }

  *a1 = 0;
  a1[1] = 0;
  v41 = a1[3];
  if (!v41)
  {
    v7 = 0;
LABEL_85:
    v9 = 0;
    goto LABEL_86;
  }

  if (!v7)
  {
    goto LABEL_85;
  }

  (*(*v41 + 16))(v41);
  v9 = *a1;
  v7 = a1[1];
LABEL_86:
  *a1 = 0;
  a1[1] = 0;
  v42 = a1[3];
  if (v42 && v7)
  {
    (*(*v42 + 16))(v42, v9);
  }

  LOBYTE(v46) = 0;
  v47 = 0;
  while (1)
  {
    v9 = *a1;
    v37 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v37)
    {
      result = (*(*result + 16))(result, v9);
    }

LABEL_57:
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 64) = 0;
      goto LABEL_68;
    }

    if (v45 & 1) != 0 && (v51 & 1) != 0 && (v49 & 1) != 0 && (v10 & 1) != 0 && (v47)
    {
      break;
    }

    __break(1u);
LABEL_80:
    LOBYTE(v46) = 0;
    v47 = 0;
LABEL_50:
    if (v58)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v58, v9);
    }
  }

  WebCore::IDBObjectStoreInfo::IDBObjectStoreInfo();
  v38 = v52[1];
  v52[1] = 0;
  *a2 = v52[0];
  *(a2 + 8) = v38;
  std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100]((a2 + 16), &v53);
  *(a2 + 48) = v56;
  v39 = v57;
  v57 = 0;
  *(a2 + 56) = v39;
  *(a2 + 64) = 1;
  if (v55 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v53, v9);
  }

  result = v52[1];
  v52[1] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
  }

LABEL_68:
  if (v47 == 1)
  {
    result = v46;
    if (v46)
    {
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v46, v9);
    }
  }

  if (v49 == 1 && v48[24] == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v48, v9);
  }

  if (v51 == 1)
  {
    result = v50;
    v50 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void sub_19D702AFC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, WTF::StringImpl *a26, char a27, int a28, __int16 a29, char a30, char a31, WTF::StringImpl *a32, WTF::StringImpl *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38)
{
  if (a23 == 1 && a21 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a16, a2);
  }

  if (a27 == 1)
  {
    v39 = a26;
    a26 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBIterateCursorData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2 + 32);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  v5 = *(a2 + 68);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBIterateCursorData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, &v32);
  result = IPC::Decoder::decode<WebCore::IDBKeyData>(v2, &v29);
  v5 = v2[1];
  v6 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *v2;
  v8 = v6 - *v2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 3)
  {
    v2[2] = (v6 + 1);
    if (!v6)
    {
      goto LABEL_25;
    }

    v12 = *v6 | 0x100000000;
    goto LABEL_8;
  }

  while (1)
  {
    *v2 = 0;
    v2[1] = 0;
    v18 = v2[3];
    if (v18)
    {
      if (v5)
      {
        (*(*v18 + 16))(v18);
        v5 = v2[1];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_25:
    *v2 = 0;
    v2[1] = 0;
    v19 = v2[3];
    if (!v19)
    {
      v7 = 0;
      v12 = 0;
      v5 = 0;
      goto LABEL_27;
    }

    if (!v5)
    {
      break;
    }

    result = (*(*v19 + 16))(v19);
    v12 = 0;
    v7 = *v2;
    v5 = v2[1];
LABEL_8:
    v13 = v2[2];
    if (v5 <= v13 - v7)
    {
      goto LABEL_27;
    }

    v2[2] = (v13 + 1);
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = *v13;
    if (v14 >= 2)
    {
      goto LABEL_33;
    }

    v15 = 0;
    v2 = (v14 != 0);
    if (!v7)
    {
      goto LABEL_34;
    }

LABEL_12:
    if (v34)
    {
      v23 = v32;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v24, v33);
      if (v31)
      {
        v25 = v29;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v26, v30);
        if ((v12 & 0x100000000) != 0)
        {
          v27 = v12;
          if (!v15)
          {
            v28 = v2;
            *a2 = v23;
            mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v24);
            *(a2 + 32) = v25;
            mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 40, v26);
            *(a2 + 64) = v27;
            *(a2 + 68) = v28;
            *(a2 + 72) = 1;
            mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v26, v16);
            result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v24, v17);
            goto LABEL_17;
          }
        }
      }
    }

    __break(1u);
  }

  v7 = 0;
  v12 = 0;
LABEL_27:
  *v2 = 0;
  v2[1] = 0;
  v20 = v2[3];
  if (!v20)
  {
    v5 = 0;
LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v20 + 16))(v20, v7);
  v7 = *v2;
  v5 = v2[1];
LABEL_30:
  *v2 = 0;
  v2[1] = 0;
  v21 = v2[3];
  if (v21)
  {
    if (v5)
    {
      (*(*v21 + 16))(v21, v7);
      v7 = *v2;
      v5 = v2[1];
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_33:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result)
  {
    if (v5)
    {
      (*(*result + 16))(result, v7);
      result = v2[3];
      v7 = *v2;
      v22 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      if (result)
      {
        if (v22)
        {
          result = (*(*result + 16))(result, v7);
          v7 = *v2;
          v2 = 0;
          v15 = 1;
          if (v7)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_34:
  *a2 = 0;
  *(a2 + 72) = 0;
LABEL_17:
  if (v31 == 1)
  {
    result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v30, v7);
  }

  if (v34 == 1)
  {
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v33, v7);
  }

  return result;
}

void sub_19D703018(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a20, a2);
  }

  if (*(v23 - 56) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v23 - 80, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::ArgumentCoder<WebCore::IDBResourceIdentifier,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v5 = v4;
  result = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  result = WebCore::IDBResourceIdentifier::IDBResourceIdentifier();
  LOBYTE(v8) = 1;
LABEL_5:
  a2[16] = v8;
  return result;
}

unint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
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

unint64_t IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
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

uint64_t IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ThreadSafeDataBufferImpl,WTF::RawPtrTraits<WebCore::ThreadSafeDataBufferImpl>,WTF::DefaultRefDerefTraits<WebCore::ThreadSafeDataBufferImpl>>,void>::encode<IPC::Encoder,WebCore::ThreadSafeDataBufferImpl>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 8);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 24);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBValue,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ThreadSafeDataBuffer>(&v18, a1);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v16);
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v14);
  if (*a1)
  {
    if (v19 & 1) != 0 && (v17 & 1) != 0 && (v15)
    {
      WebCore::IDBValue::IDBValue();
      *&v6 = 0;
      *a2 = *v11;
      v7 = v12;
      v12 = 0;
      v11[1] = 0;
      *(a2 + 16) = v7;
      v8 = v13;
      v13 = v6;
      *(a2 + 24) = v8;
      *(a2 + 40) = 1;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v9);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11[1], v10);
      result = 0;
      goto LABEL_6;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_6:
  if (v15 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v5);
  }

  if (v17 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v5);
  }

  if (v19 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v5);
    }
  }

  return result;
}

void sub_19D7033B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, a2);
  }

  if (*(v17 - 40) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17 - 56, a2);
  }

  if (*(v17 - 24) == 1)
  {
    v19 = *(v17 - 32);
    *(v17 - 32) = 0;
    if (v19)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WebCore::ThreadSafeDataBuffer>(WTF *result, IPC::Decoder *a2)
{
  v4 = result;
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v7)
      {
        (*(*v16 + 16))(v16);
        v6 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_36;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
  }

  else
  {
    *(a2 + 2) = v5 + 1;
    if (v5)
    {
      v8 = *v5;
      if (v8 < 2)
      {
        if (v8)
        {
          result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v19);
          v9 = *a2;
          if (*a2)
          {
            v10 = v21;
            if ((v21 & 1) == 0)
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            result = WTF::fastMalloc(0x18);
            v2 = result;
            *result = 1;
            v11 = v19;
            v19 = 0;
            *(result + 1) = v11;
            v12 = v20;
            HIDWORD(v20) = 0;
            *(result + 2) = v12;
          }

          else
          {
            v2 = 0;
          }

          if (v21 == 1)
          {
            result = v19;
            if (v19)
            {
              v19 = 0;
              LODWORD(v20) = 0;
              result = WTF::fastFree(result, v6);
            }
          }

          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v2 = 0;
        }

        v10 = 1;
        goto LABEL_14;
      }

      goto LABEL_39;
    }
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = *(a2 + 3);
  if (v17)
  {
    if (v7)
    {
      (*(*v17 + 16))(v17, v6);
      v6 = *a2;
      v7 = *(a2 + 1);
      goto LABEL_39;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
LABEL_39:
  *a2 = 0;
  *(a2 + 1) = 0;
  v18 = *(a2 + 3);
  if (v18 && v7)
  {
    (*(*v18 + 16))(v18, v6);
  }

LABEL_10:
  v6 = *a2;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    result = (*(*result + 16))(result, v6);
  }

  v10 = 0;
  v2 = 0;
LABEL_14:
  if (*a2)
  {
    if (v10)
    {
      *v4 = v2;
      *(v4 + 8) = 1;
      return result;
    }

    goto LABEL_20;
  }

LABEL_21:
  *v4 = 0;
  *(v4 + 8) = 0;
  if (!v2)
  {
    v10 = 0;
  }

  if (v10 != 1 || (result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v2, v6), (*(v4 + 8) & 1) == 0))
  {
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v14)
      {
        v15 = *(*result + 16);

        return v15();
      }
    }
  }

  return result;
}

void sub_19D7036A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::IDBDatabaseIdentifier,void>::encode(a1, a2 + 24);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  v4 = *(a2 + 112);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v62 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  result = IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(v2, &v36);
  if (!*v2)
  {
    goto LABEL_4;
  }

  v8 = v37;
  if ((v37 & 1) == 0)
  {
    goto LABEL_65;
  }

  if (v36 == 0)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 120) = 0;
    return result;
  }

  IPC::Decoder::decode<WTF::String>(v2, &v38);
  result = IPC::Decoder::decode<WebCore::ClientOrigin>(v2, v59);
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = *v2;
  v7 = &v10[-*v2];
  if (v9 <= v7)
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v34 = *(v2 + 3);
    if (v34)
    {
      if (v9)
      {
        (*(*v34 + 16))();
        v9 = *(v2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_80:
    *v2 = 0;
    *(v2 + 1) = 0;
    v35 = *(v2 + 3);
    if (v35)
    {
      if (v9)
      {
        (*(*v35 + 16))();
        v12 = 0;
        v11 = *v2;
        v9 = *(v2 + 1);
        goto LABEL_83;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_83;
  }

  v7 = (v10 + 1);
  *(v2 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_80;
  }

  v12 = *v10;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_83:
  *v2 = 0;
  *(v2 + 1) = 0;
  result = *(v2 + 3);
  if (!result || !v9)
  {
LABEL_84:
    v19 = 0;
    LOBYTE(v50) = 0;
    v58 = 0;
    goto LABEL_26;
  }

  result = (*(*result + 16))(result, v11);
  v13 = 0;
  v11 = *v2;
LABEL_9:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (!v11)
  {
    goto LABEL_84;
  }

  *&v42[8] = 0;
  *&v42[16] = 0;
  LOBYTE(v44) = 0;
  v43 = 0;
  BYTE8(v44) = 0;
  *&v40[16] = 0;
  v41 = 0;
  *&v40[8] = 0;
  v42[0] = 0;
  v8 = v39;
  if ((v39 & 1) == 0)
  {
    goto LABEL_65;
  }

  v15 = v38;
  v38 = 0;
  *v40 = v15;
  v8 = v61;
  if ((v61 & 1) == 0)
  {
    goto LABEL_65;
  }

  WebCore::SecurityOriginData::operator=(&v40[8]);
  WebCore::SecurityOriginData::operator=(&v42[8]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_65;
  }

  BYTE8(v44) = v14;
  v16 = *v40;
  *v40 = 0;
  v50 = v16;
  LOBYTE(v51) = 0;
  v53 = -1;
  if (!v42[0])
  {
    v17 = *&v40[8];
    *&v40[8] = 0;
    *&v40[16] = 0;
    v51 = v17;
    v52 = v41;
LABEL_18:
    v53 = v42[0];
    goto LABEL_19;
  }

  if (v42[0] != 255)
  {
    v51 = *&v40[8];
    goto LABEL_18;
  }

LABEL_19:
  LOBYTE(v54) = 0;
  v56 = -1;
  if (!v44)
  {
    v18 = *&v42[8];
    *&v42[8] = 0;
    *&v42[16] = 0;
    v54 = v18;
    v55 = v43;
LABEL_21:
    v56 = v44;
    goto LABEL_22;
  }

  if (v44 != 255)
  {
    v54 = *&v42[8];
    goto LABEL_21;
  }

LABEL_22:
  v57 = v14;
  v58 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v42[8]);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v40[8]);
  result = *v40;
  *v40 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v11);
  }

  v19 = 1;
LABEL_26:
  if (v61 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v60);
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v59);
  }

  if (v39 == 1)
  {
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  if ((v19 & 1) == 0)
  {
    v30 = *v2;
    v31 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (result)
    {
      if (v31)
      {
        result = (*(*result + 16))(result, v30);
      }
    }
  }

  v20 = *v2;
  if (!*v2)
  {
    goto LABEL_36;
  }

  v8 = v58;
  if ((v58 & 1) == 0)
  {
    goto LABEL_65;
  }

  if (v50 + 1 > 1)
  {
    v21 = *(v2 + 1);
    v22 = (*(v2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v21 >= v22 - v20 && v21 - (v22 - v20) > 7)
    {
      *(v2 + 2) = v22 + 8;
      if (v22)
      {
        v23 = 1;
        goto LABEL_41;
      }

LABEL_76:
      *v2 = 0;
      *(v2 + 1) = 0;
      v33 = *(v2 + 3);
      if (v33 && v21)
      {
        (*(*v33 + 16))(v33, v20);
      }

      v23 = 0;
LABEL_41:
      result = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(v2);
      v7 = *v2;
      if (!*v2)
      {
        goto LABEL_36;
      }

      if (v5)
      {
        v7 = v37;
        if (v37)
        {
          v7 = v58;
          if (v58 & 1) != 0 && (v23)
          {
            v8 = result;
            v7 = result;
            if (result > 0xFFu)
            {
              v2 = v40;
              WebCore::IDBOpenRequestData::IDBOpenRequestData();
              *a2 = *v40;
              v24 = v41;
              v41 = 0;
              *(a2 + 16) = *&v40[16];
              *(a2 + 24) = v24;
              *(a2 + 32) = 0;
              v7 = a2 + 32;
              *(a2 + 56) = -1;
              v8 = v43;
              if (!v43)
              {
                v25 = *v42;
                *v42 = 0uLL;
                *(a2 + 32) = v25;
                *(a2 + 48) = *&v42[16];
                goto LABEL_49;
              }

LABEL_66:
              if (v8 == 255)
              {
LABEL_50:
                *(a2 + 64) = 0;
                *(a2 + 88) = -1;
                v26 = v46;
                if (v46)
                {
                  if (v46 == 255)
                  {
                    goto LABEL_53;
                  }

                  *(a2 + 64) = v44;
                }

                else
                {
                  v27 = v44;
                  v44 = 0uLL;
                  *(a2 + 64) = v27;
                  *(a2 + 80) = v45;
                }

                *(a2 + 88) = v26;
LABEL_53:
                *(a2 + 96) = v47;
                *(a2 + 104) = v48;
                *(a2 + 112) = v49;
                *(a2 + 120) = 1;
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v44);
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 32);
                result = v41;
                v41 = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v28);
                }

                goto LABEL_56;
              }

              *v7 = *(v2 + 2);
LABEL_49:
              *(a2 + 56) = v8;
              goto LABEL_50;
            }
          }
        }
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v32 = *(v2 + 3);
    if (v32)
    {
      if (v21)
      {
        (*(*v32 + 16))(v32);
        v20 = *v2;
        v21 = *(v2 + 1);
        goto LABEL_76;
      }
    }

    else
    {
      v21 = 0;
    }

    v20 = 0;
    goto LABEL_76;
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 120) = 0;
LABEL_56:
  if (v58 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v54);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v51);
    result = v50;
    v50 = 0;
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

void sub_19D703D6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (*(v40 - 96) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v40 - 128);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v40 - 160);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::IDBResourceIdentifier> const&>(a1, a2 + 40);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 72));
  v5 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
}

unint64_t IPC::ArgumentCoder<WebCore::IDBRequestData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v5 = v4;
  result = IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v53);
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (v53 == 0)
  {
    goto LABEL_7;
  }

  result = IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v51);
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (v51 == 0)
  {
LABEL_7:
    *a2 = 0;
    a2[104] = 0;
    return result;
  }

  IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::decode<IPC::Decoder>(a1, v49);
  if ((v50 & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *a1;
    if (v7 <= &v8[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v30 = *(a1 + 3);
      if (v30)
      {
        if (v7)
        {
          (*(*v30 + 16))(v30);
          v7 = *(a1 + 1);
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_53:
      *a1 = 0;
      *(a1 + 1) = 0;
      v31 = *(a1 + 3);
      if (v31)
      {
        if (v7)
        {
          (*(*v31 + 16))(v31);
          v9 = *a1;
          v7 = *(a1 + 1);
          goto LABEL_56;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = 0;
LABEL_56:
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (v32 && v7)
      {
        (*(*v32 + 16))(v32, v9);
      }

      goto LABEL_57;
    }

    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      goto LABEL_53;
    }

    v10 = *v8;
    if (v10 >= 2)
    {
      goto LABEL_56;
    }

    if (v10 || (IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v11 & 1) != 0))
    {
      v48 = 1;
      goto LABEL_15;
    }

LABEL_57:
    v33 = *a1;
    v34 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v34)
    {
      (*(*v35 + 16))(v35, v33);
    }

    v48 = 0;
LABEL_15:
    v12 = *(a1 + 1);
    v13 = *(a1 + 2);
    v14 = *a1;
    if (v12 <= &v13[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v36 = *(a1 + 3);
      if (v36)
      {
        if (v12)
        {
          (*(*v36 + 16))(v36);
          v12 = *(a1 + 1);
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_63:
      *a1 = 0;
      *(a1 + 1) = 0;
      v37 = *(a1 + 3);
      if (v37)
      {
        if (v12)
        {
          (*(*v37 + 16))(v37);
          v14 = *a1;
          v12 = *(a1 + 1);
          goto LABEL_66;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = 0;
LABEL_66:
      *a1 = 0;
      *(a1 + 1) = 0;
      v38 = *(a1 + 3);
      if (v38 && v12)
      {
        (*(*v38 + 16))(v38, v14);
      }

      goto LABEL_67;
    }

    *(a1 + 2) = v13 + 1;
    if (!v13)
    {
      goto LABEL_63;
    }

    v15 = *v13;
    if (v15 >= 2)
    {
      goto LABEL_66;
    }

    if (v15 || (IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v16 & 1) != 0))
    {
      v17 = 1;
      goto LABEL_21;
    }

LABEL_67:
    v39 = *a1;
    v40 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (v41 && v40)
    {
      (*(*v41 + 16))(v41, v39);
    }

    v17 = 0;
LABEL_21:
    v18 = *(a1 + 1);
    v19 = *(a1 + 2);
    v20 = *a1;
    if (v18 <= &v19[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v42 = *(a1 + 3);
      if (v42)
      {
        if (v18)
        {
          (*(*v42 + 16))(v42);
          v18 = *(a1 + 1);
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v19 + 1;
      if (v19)
      {
        if (*v19 < 2u)
        {
          v21 = 0;
          goto LABEL_25;
        }

        goto LABEL_76;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43)
    {
      if (v18)
      {
        (*(*v43 + 16))(v43);
        v20 = *a1;
        v18 = *(a1 + 1);
        goto LABEL_76;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
LABEL_76:
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (!v44)
    {
      v18 = 0;
LABEL_78:
      v20 = 0;
      v21 = 1;
      goto LABEL_25;
    }

    if (!v18)
    {
      goto LABEL_78;
    }

    (*(*v44 + 16))(v44, v20);
    v18 = 0;
    v45 = *(a1 + 3);
    v46 = *a1;
    v47 = *(a1 + 1);
    v21 = 1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = 0;
    if (v45 && v47)
    {
      (*(*v45 + 16))(v45, v46, v47);
      v20 = *a1;
      v18 = *(a1 + 1);
    }

LABEL_25:
    v22 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v18 < v22 - v20 || v18 - (v22 - v20) <= 7)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v28 = *(a1 + 3);
      if (!v28)
      {
        v18 = 0;
LABEL_48:
        v20 = 0;
        goto LABEL_49;
      }

      if (!v18)
      {
        goto LABEL_48;
      }

      (*(*v28 + 16))(v28);
      v20 = *a1;
      v18 = *(a1 + 1);
    }

    else
    {
      *(a1 + 2) = v22 + 8;
      if (v22)
      {
        v23 = 1;
        goto LABEL_29;
      }
    }

LABEL_49:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29 && v18)
    {
      (*(*v29 + 16))(v29, v20);
    }

    v23 = 0;
LABEL_29:
    result = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
    v24 = *a1;
    if (!*a1)
    {
      break;
    }

    if ((v5 & 1) != 0 && (v54 & 1) != 0 && (v52 & 1) != 0 && (v50 & 1) != 0 && (v48 & 1) != 0 && (v17 & 1) != 0 && !v21 && (v23 & 1) != 0 && result > 0xFFu)
    {
      result = WebCore::IDBRequestData::IDBRequestData();
      LOBYTE(v24) = 1;
      goto LABEL_40;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
      }
    }
  }

  *a2 = 0;
LABEL_40:
  a2[104] = v24;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::IDBDatabaseIdentifier,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(a1, a2 + 8);

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 72));
}

mpark *IPC::Decoder::decode<WebCore::ClientOrigin>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, a2);
  if ((*(a2 + 64) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<WebCore::ClientOrigin>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 32);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1);
  }

  return a1;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBDatabaseNameAndVersion,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v15);
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    while (1)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v14 = *(a1 + 3);
      if (v14)
      {
        if (v5)
        {
          (*(*v14 + 16))(v14);
          v7 = *a1;
          v5 = *(a1 + 1);
          goto LABEL_16;
        }
      }

      else
      {
        v5 = 0;
      }

      v7 = 0;
LABEL_16:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (!result)
      {
        goto LABEL_17;
      }

      if (!v5)
      {
        goto LABEL_17;
      }

      result = (*(*result + 16))(result);
      v13 = 0;
      v12 = 0;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_17;
      }

LABEL_8:
      if (v16 & 1) != 0 && (v13)
      {
        *a2 = v15;
        *(a2 + 8) = v12;
        *(a2 + 16) = 1;
        return result;
      }

      __break(1u);
    }
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_16;
  }

  v12 = *v6;
  v13 = 1;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_17:
  *a2 = 0;
  *(a2 + 16) = 0;
  if (v16)
  {
    result = v15;
    v15 = 0;
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

void sub_19D704794(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 16));
  v5 = *(a2 + 24);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 40);
  IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBDatabaseInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBDatabaseInfo> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBTransactionInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBTransactionInfo> const&>(a1, (a2 + 64));
  IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBKeyData>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBKeyData> const&>(a1, (a2 + 72));
  IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBGetResult>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBGetResult> const&>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBGetAllResult>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBGetAllResult> const&>(a1, (a2 + 88));
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
}