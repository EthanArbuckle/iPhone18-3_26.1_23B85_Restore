void sub_19D766D6C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedFace,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16 && v15 != 0)
    {
      (*(*v16 + 16))(v16, v14);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  if ((v8 & 1) == 0)
  {
    v13 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v12)
      {
        v18 = v8;
        result = (*(*result + 16))(result, v13);
        v8 = v18;
      }
    }
  }

  if (!*a1)
  {
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, 0);
    }

    result = IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v21, a1);
    if (!*a1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v21, a1);
  if (!*a1)
  {
LABEL_17:
    *a2 = 0;
    a2[40] = 0;
    goto LABEL_10;
  }

  *&v19 = v4;
  *(&v19 + 1) = v9;
  if ((v22 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  std::__optional_move_base<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v20, v21);
  *a2 = v19;
  result = std::__optional_move_base<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a2 + 16), v20);
  a2[40] = 1;
  if (v20[16] == 1)
  {
    result = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v8);
  }

LABEL_10:
  if (v22 == 1 && v21[16] == 1)
  {
    return WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v8);
  }

  return result;
}

void sub_19D766F6C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 == 1)
  {
    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 + 16, a2);
  }

  if (a22 == 1 && a20 == 1)
  {
    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v6)
      {
        (*(*v34 + 16))(v34);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_67;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_67:
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (v35)
    {
      if (v6)
      {
        (*(*v35 + 16))(v35, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_70;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_70:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_60;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_67;
  }

  if (*v4 >= 2u)
  {
    goto LABEL_70;
  }

  if (*v4)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFFF8;
    v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v6 < v8 - v5 || v6 - (v8 - v5) <= 7)
    {
      v28 = 0;
      v29 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v30 = *(a2 + 3);
      if (v30)
      {
        (*(*v30 + 16))(v30);
        v29 = *a2;
        v28 = *(a2 + 1);
      }

      goto LABEL_57;
    }

    *(a2 + 2) = v7 + 16;
    if (!v8)
    {
      v28 = v6;
      v29 = v5;
LABEL_57:
      *a2 = 0;
      *(a2 + 1) = 0;
      v31 = *(a2 + 3);
      if (v31 && v28)
      {
        (*(*v31 + 16))(v31, v29, v28);
      }

      LOBYTE(v37[0]) = 0;
      v38 = 0;
LABEL_59:
      v32 = *a2;
      v33 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v33 || (result = (*(*result + 16))(result, v32), (v38 & 1) == 0))
      {
LABEL_60:
        *a1 = 0;
        a1[24] = 0;
        goto LABEL_50;
      }

LABEL_47:
      result = std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, v37);
      a1[24] = 1;
      if (v38)
      {
        v18 = v37;
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v10 = *v8;
    v44 = 0;
    v45 = 0;
    if (v10 >= 0xAAAA)
    {
      while (1)
      {
        result = IPC::Decoder::decode<WebCore::ShapeDetection::Landmark>(&v39, a2);
        v19 = v43;
        if (v43)
        {
          if (HIDWORD(v45) == v45)
          {
            result = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::Landmark>(&v44, &v39);
          }

          else
          {
            v20 = v44 + 24 * HIDWORD(v45);
            *v20 = 0;
            *(v20 + 8) = 0;
            v21 = v39;
            v39 = 0;
            *v20 = v21;
            *(v20 + 8) = v40;
            LODWORD(v21) = v41;
            v41 = 0;
            *(v20 + 12) = v21;
            *(v20 + 16) = v42;
            ++HIDWORD(v45);
          }
        }

        if (v43 == 1)
        {
          result = v39;
          if (v39)
          {
            v39 = 0;
            v40 = 0;
            result = WTF::fastFree(result, v11);
          }
        }

        if ((v19 & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          LOBYTE(v37[0]) = 0;
          v38 = 0;
          v22 = HIDWORD(v45);
          if (v45 <= HIDWORD(v45))
          {
            goto LABEL_24;
          }

          v23 = v44;
          v36 = v44;
          if (HIDWORD(v45))
          {
            if (HIDWORD(v45) >= 0xAAAAAAB)
            {
              __break(0xC471u);
              return result;
            }

            v24 = 24 * HIDWORD(v45);
            v25 = WTF::fastMalloc((24 * HIDWORD(v45)));
            v23 = v36;
            LODWORD(v45) = v24 / 0x18;
            v44 = v25;
            if (v25 != v36)
            {
              WTF::VectorMover<false,WebCore::ShapeDetection::Landmark>::move(v36, (v36 + 24 * v22), v25);
              v23 = v36;
            }
          }

          if (v23)
          {
            if (v44 == v23)
            {
              v44 = 0;
              LODWORD(v45) = 0;
            }

            WTF::fastFree(v36, v11);
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
      if (!v10)
      {
LABEL_24:
        std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v37, &v44);
        goto LABEL_46;
      }

      LODWORD(v45) = 24 * v10 / 0x18u;
      v44 = WTF::fastMalloc((24 * v10));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ShapeDetection::Landmark>(&v39, a2);
        v12 = v43;
        if (v43)
        {
          if (HIDWORD(v45) == v45)
          {
            WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::Landmark>(&v44, &v39);
          }

          else
          {
            v13 = v44 + 24 * HIDWORD(v45);
            *v13 = 0;
            *(v13 + 8) = 0;
            v14 = v39;
            v39 = 0;
            *v13 = v14;
            *(v13 + 8) = v40;
            LODWORD(v14) = v41;
            v41 = 0;
            *(v13 + 12) = v14;
            *(v13 + 16) = v42;
            ++HIDWORD(v45);
          }
        }

        if (v43 == 1)
        {
          v15 = v39;
          if (v39)
          {
            v39 = 0;
            v40 = 0;
            WTF::fastFree(v15, v11);
          }
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          LOBYTE(v37[0]) = 0;
          v38 = 0;
          goto LABEL_24;
        }
      }
    }

    LOBYTE(v37[0]) = 0;
    v38 = 0;
LABEL_46:
    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v11);
    if (v38)
    {
      goto LABEL_47;
    }

    goto LABEL_59;
  }

  LOBYTE(v39) = 0;
  v42 = 0;
  result = std::__optional_move_base<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, &v39);
  a1[24] = 1;
  if (v42 == 1)
  {
    v18 = &v39;
LABEL_49:
    result = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v17);
  }

LABEL_50:
  if ((a1[24] & 1) == 0)
  {
    v26 = *a2;
    v27 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v27)
      {
        return (*(*result + 16))(result, v26);
      }
    }
  }

  return result;
}

void sub_19D7674E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF *a13, int a14, int a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12 == 1)
  {
    WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedText,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::VectorArgumentCoder<false,WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedText,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21 && v20 != 0)
    {
      (*(*v21 + 16))(v21, v19);
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = result;
  if ((v8 & 1) == 0)
  {
    v17 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v16)
      {
        v18 = v8;
        result = (*(*result + 16))(result, v17);
        v8 = v18;
      }
    }
  }

  v10 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v8 & 1) == 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFF00;
    v4 = v4;
  }

  else
  {
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, 0);
    }

    v4 = 0;
    v11 = 0;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v25);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::FloatPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v23, a1);
  if (*a1)
  {
    if (v10)
    {
      if (v26)
      {
        v12 = v25;
        v25 = 0;
        if (v24)
        {
          v13 = v23[0];
          *a2 = v11 | v4;
          *(a2 + 8) = v9;
          *(a2 + 16) = v12;
          *(a2 + 24) = v13;
          *(a2 + 32) = v23[1];
          *(a2 + 40) = 1;
          goto LABEL_12;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  *a2 = 0;
  *(a2 + 40) = 0;
  if (v24)
  {
    result = v23[0];
    if (v23[0])
    {
      result = WTF::fastFree(v23[0], v8);
    }
  }

LABEL_12:
  if (v26 == 1)
  {
    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19D7677D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::FaceDetectorOptions,void>::encode(void *a1, __int16 *a2)
{
  v6 = *a2;
  result = IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, &v6, 1);
  if (!a1[1])
  {
    goto LABEL_6;
  }

  **a1 = *(a2 + 2);
  v5 = a1[1];
  if (!v5)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  ++*a1;
  a1[1] = v5 - 1;
  return result;
}

unint64_t IPC::ArgumentCoder<WebCore::ShapeDetection::FaceDetectorOptions,void>::decode(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 1)
  {
    v8 = (v2 + 1);
    a1[2] = v2 + 1;
    if (!v2)
    {
      v23 = a1;
      goto LABEL_20;
    }

    v9 = *v2 | 0x10000;
    goto LABEL_8;
  }

  while (1)
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1;
    v15 = a1[3];
    if (v15)
    {
      if (v1)
      {
        (*(*v15 + 16))(v15);
        v3 = *v23;
        v1 = v23[1];
        goto LABEL_20;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_20:
    *v23 = 0;
    v23[1] = 0;
    v16 = v23[3];
    if (!v16 || !v1)
    {
      v22 = 0;
      v17 = 0;
      v3 = 0;
      goto LABEL_22;
    }

    (*(*v16 + 16))(v16, v3);
    v9 = 0;
    a1 = v23;
    v3 = *v23;
    v1 = v23[1];
    v8 = v23[2];
LABEL_8:
    if (v1 <= &v8[-v3])
    {
      break;
    }

    a1[2] = v8 + 1;
    if (!v8)
    {
      v22 = v9;
      v23 = a1;
      v17 = v1;
      goto LABEL_22;
    }

    v10 = *v8;
    if (v10 >= 2)
    {
      v21 = *v8;
      v22 = v9;
      v23 = a1;
      goto LABEL_25;
    }

    v11 = 1;
    if (!v3)
    {
      goto LABEL_26;
    }

LABEL_12:
    if (v9 & 0x10000) != 0 && (v11)
    {
      v12 = v9 | ((v10 != 0) << 16);
      v13 = 1;
      return v12 | (v13 << 32);
    }

    __break(1u);
  }

  v22 = v9;
  v17 = 0;
  v20 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  v23 = a1;
  if (v20 && v1)
  {
    (*(*v20 + 16))(v20);
    v3 = *v23;
    v17 = v23[1];
  }

  else
  {
    v3 = 0;
  }

LABEL_22:
  *v23 = 0;
  v23[1] = 0;
  v18 = v23[3];
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v3, v17);
    v21 = 0;
    v3 = *v23;
    v1 = v23[1];
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v21 = 0;
  }

LABEL_25:
  *v23 = 0;
  v23[1] = 0;
  v19 = v23[3];
  if (v19)
  {
    if (v1)
    {
      a1 = (*(*v19 + 16))(v19, v3);
      v11 = 0;
      v10 = v21;
      v9 = v22;
      if (*v23)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_26:
  v13 = 0;
  v12 = 0;
  return v12 | (v13 << 32);
}

uint64_t IPC::ArgumentCoder<WebCore::TextExtraction::Editable,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 17));
}

uint64_t IPC::ArgumentCoder<WebCore::TextExtraction::TextItemData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));

  return IPC::ArgumentCoder<std::optional<WebCore::TextExtraction::Editable>,void>::encode<IPC::Encoder,std::optional<WebCore::TextExtraction::Editable> const&>(a1, a2 + 48);
}

uint64_t IPC::ArgumentCoder<WebCore::TextExtraction::Item,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData> const&>(a1, a2, v5);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 88));
  return IPC::VectorArgumentCoder<false,WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 104));
}

void IPC::ArgumentCoder<WebCore::TextExtraction::Item,void>::decode(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v188[2] = *MEMORY[0x1E69E9840];
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (v8 <= v9 - *a1)
  {
    *a1 = 0;
    a1[1] = 0;
    v96 = a1[3];
    if (v96)
    {
      if (!v8)
      {
        goto LABEL_168;
      }

      (*(*v96 + 16))(v96);
LABEL_287:
      v8 = a1[1];
      goto LABEL_168;
    }

LABEL_167:
    v8 = 0;
    goto LABEL_168;
  }

  v11 = (v9 + 1);
  a1[2] = v9 + 1;
  if (!v9)
  {
    goto LABEL_168;
  }

  v12 = *v9;
  if (v12 >= 4)
  {
    goto LABEL_4;
  }

  if (*v9)
  {
    if (v12 == 1)
    {
      v16 = v9 & 0xFFFFFFFFFFFFFFF8;
      v17 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v8 >= v17 - v10 && v8 - (v17 - v10) > 7)
      {
        a1[2] = v16 + 16;
        if (v17)
        {
          v19 = *v17;
          v172 = 0;
          v173 = 0;
          if (v19 < 0x4924)
          {
            if (v19)
            {
              LODWORD(v173) = 56 * v19 / 0x38u;
              v172 = WTF::fastMalloc((56 * v19));
              do
              {
                IPC::Decoder::decode<std::pair<WTF::URL,WebCore::CharacterRange>>(v160, a1);
                v20 = v164;
                if (v164)
                {
                  if (HIDWORD(v173) == v173)
                  {
                    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::URL,WebCore::CharacterRange>>(&v172, v160);
                  }

                  else
                  {
                    WTF::URL::URL(v172 + 56 * HIDWORD(v173), v160);
                    *(v21 + 40) = v163;
                    ++HIDWORD(v173);
                  }
                }

                if (v164 == 1 && (v22 = v160[0], v160[0] = 0, v22) && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v10);
                  if ((v20 & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }

                else if ((v20 & 1) == 0)
                {
                  goto LABEL_29;
                }

                --v19;
              }

              while (v19);
            }

LABEL_131:
            v169 = v172;
            v68 = v173;
            v172 = 0;
            v173 = 0;
            v170 = v68;
            v171 = 1;
            WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v172, v10);
LABEL_132:
            v3 = &v174;
            v69 = a1[1];
            v70 = a1[2];
            v71 = *a1;
            if (v69 <= &v70[-*a1])
            {
              *a1 = 0;
              a1[1] = 0;
              v106 = a1[3];
              if (v106)
              {
                if (v69)
                {
                  (*(*v106 + 16))(v106);
                  v69 = a1[1];
                }
              }

              else
              {
                v69 = 0;
              }
            }

            else
            {
              a1[2] = v70 + 1;
              if (v70)
              {
                v72 = *v70;
                if (v72 < 2)
                {
                  if (!v72)
                  {
                    v75 = 0;
                    v73 = 0;
                    v74 = 1;
                    goto LABEL_190;
                  }

                  IPC::Decoder::decode<WebCore::CharacterRange>(a1, v160);
                  if (v161 == 1)
                  {
                    v73 = v160[0];
                    v188[0] = *(v160 + 1);
                    *(v188 + 7) = v160[1];
                    v74 = 1;
LABEL_189:
                    v75 = 1;
LABEL_190:
                    IPC::Decoder::decode<WTF::String>(a1, &v167);
                    v113 = a1[1];
                    v114 = a1[2];
                    v115 = *a1;
                    if (v113 <= &v114[-*a1])
                    {
                      *a1 = 0;
                      a1[1] = 0;
                      v135 = a1[3];
                      if (v135)
                      {
                        if (v113)
                        {
                          (*(*v135 + 16))(v135);
                          v113 = a1[1];
                        }
                      }

                      else
                      {
                        v113 = 0;
                      }
                    }

                    else
                    {
                      a1[2] = v114 + 1;
                      if (v114)
                      {
                        v116 = *v114;
                        if (v116 < 2)
                        {
                          if (!v116)
                          {
                            v123 = 0;
                            LOBYTE(v5) = 1;
                            goto LABEL_217;
                          }

                          IPC::Decoder::decode<WTF::String>(a1, v160);
                          IPC::Decoder::decode<WTF::String>(a1, &v172);
                          v117 = a1[1];
                          v118 = a1[2];
                          v115 = *a1;
                          if (v117 <= &v118[-*a1])
                          {
                            *a1 = 0;
                            a1[1] = 0;
                            v137 = a1[3];
                            if (v137)
                            {
                              if (v117)
                              {
                                (*(*v137 + 16))(v137);
                                v117 = a1[1];
                              }
                            }

                            else
                            {
                              v117 = 0;
                            }
                          }

                          else
                          {
                            v119 = v118 + 1;
                            a1[2] = v118 + 1;
                            if (v118)
                            {
                              v120 = *v118;
                              if (v120 < 2)
                              {
                                v4 = 1;
                                goto LABEL_198;
                              }

LABEL_262:
                              *a1 = 0;
                              a1[1] = 0;
                              v139 = a1[3];
                              if (!v139 || !v117)
                              {
                                v140 = 0;
                                v4 = 0;
                                v141 = 0;
                                v115 = 0;
                                goto LABEL_264;
                              }

                              (*(*v139 + 16))(v139, v115);
                              v4 = 0;
                              v115 = *a1;
                              v117 = a1[1];
                              v119 = a1[2];
LABEL_198:
                              if (v120)
                              {
                                v121 = v4;
                              }

                              else
                              {
                                v121 = 0;
                              }

                              if (v117 <= v119 - v115)
                              {
                                v140 = v121;
                                v141 = 0;
                                v145 = a1[3];
                                *a1 = 0;
                                a1[1] = 0;
                                if (v117 && v145)
                                {
                                  (*(*v145 + 16))(v145);
                                  v115 = *a1;
                                  v141 = a1[1];
                                }

                                else
                                {
                                  v115 = 0;
                                }
                              }

                              else
                              {
                                a1[2] = v119 + 1;
                                if (v119)
                                {
                                  v5 = *v119;
                                  if (v5 < 2)
                                  {
                                    v122 = 1;
                                    if (v115)
                                    {
LABEL_205:
                                      if ((v160[1] & 1) == 0)
                                      {
                                        goto LABEL_246;
                                      }

                                      v123 = v160[0];
                                      v160[0] = 0;
                                      if ((v173 & 1) == 0 || (v4 & 1) == 0 || (v122 & 1) == 0)
                                      {
                                        goto LABEL_246;
                                      }

                                      v4 = v172;
                                      v6 = v121 | ((v5 != 0) << 8);
                                      v124 = 1;
LABEL_210:
                                      if (LOBYTE(v160[1]) == 1)
                                      {
                                        v125 = v160[0];
                                        v160[0] = 0;
                                        if (v125)
                                        {
                                          if (atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            WTF::StringImpl::destroy(v125, v115);
                                          }
                                        }
                                      }

                                      if (v124)
                                      {
                                        v116 = 0;
                                        LOBYTE(v5) = 0;
                                        goto LABEL_217;
                                      }

                                      goto LABEL_304;
                                    }

LABEL_268:
                                    if (v173)
                                    {
                                      v144 = v172;
                                      v172 = 0;
                                      if (v144)
                                      {
                                        if (atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                        {
                                          WTF::StringImpl::destroy(v144, v115);
                                        }
                                      }
                                    }

                                    v124 = 0;
                                    v123 = 0;
                                    goto LABEL_210;
                                  }

                                  v140 = v121;
LABEL_267:
                                  *a1 = 0;
                                  a1[1] = 0;
                                  v143 = a1[3];
                                  if (v143)
                                  {
                                    if (v117)
                                    {
                                      (*(*v143 + 16))(v143, v115);
                                      v122 = 0;
                                      v115 = *a1;
                                      v121 = v140;
                                      if (*a1)
                                      {
                                        goto LABEL_205;
                                      }
                                    }
                                  }

                                  goto LABEL_268;
                                }

                                v140 = v121;
                                v141 = v117;
                              }

LABEL_264:
                              *a1 = 0;
                              a1[1] = 0;
                              v142 = a1[3];
                              if (v142 && v141)
                              {
                                (*(*v142 + 16))(v142, v115, v141);
                                v5 = 0;
                                v115 = *a1;
                                v117 = a1[1];
                              }

                              else
                              {
                                v117 = 0;
                                v115 = 0;
                                v5 = 0;
                              }

                              goto LABEL_267;
                            }
                          }

                          *a1 = 0;
                          a1[1] = 0;
                          v138 = a1[3];
                          if (v138)
                          {
                            if (v117)
                            {
                              (*(*v138 + 16))(v138);
                              v120 = 0;
                              v115 = *a1;
                              v117 = a1[1];
                              goto LABEL_262;
                            }
                          }

                          else
                          {
                            v117 = 0;
                          }

                          v115 = 0;
                          v120 = 0;
                          goto LABEL_262;
                        }

LABEL_305:
                        *a1 = 0;
                        a1[1] = 0;
                        v146 = a1[3];
                        if (v146 && v113)
                        {
                          (*(*v146 + 16))(v146, v115);
                          v115 = *a1;
                          v147 = a1[1];
                          v148 = a1[3];
                          *a1 = 0;
                          a1[1] = 0;
                          if (v148)
                          {
                            if (v147)
                            {
                              (*(*v148 + 16))(v148, v115);
                            }

                            v123 = 0;
                            v116 = 1;
LABEL_217:
                            if (*a1)
                            {
                              if ((v171 & 1) == 0)
                              {
                                goto LABEL_246;
                              }

                              v126 = v169;
                              v127 = v170;
                              v169 = 0;
                              v170 = 0;
                              if ((v74 & 1) == 0)
                              {
                                goto LABEL_246;
                              }

                              LOBYTE(v161) = v73;
                              *(&v161 + 1) = v188[0];
                              *(&v161 + 1) = *(v188 + 7);
                              LOBYTE(v162) = v75;
                              if ((v168 & 1) == 0)
                              {
                                goto LABEL_246;
                              }

                              v128 = v167;
                              v167 = 0;
                              *&v163 = v128;
                              if (v116)
                              {
                                goto LABEL_246;
                              }

                              BYTE8(v163) = 0;
                              v166 = 0;
                              if (v5)
                              {
                                v129 = v4;
                              }

                              else
                              {
                                v129 = 0;
                                *(&v163 + 1) = v123;
                                v164 = v4;
                                v165 = v6;
                                v166 = 1;
                                v123 = 0;
                              }

                              *&v112 = 0;
                              *v160 = v112;
                              v174 = v126;
                              v175 = v127;
                              v176 = v161;
                              v177 = v162;
                              v178 = v128;
                              LOBYTE(v179) = 0;
                              v182 = 0;
                              if ((v5 & 1) == 0)
                              {
                                v179 = *(&v163 + 1);
                                v180 = v4;
                                v181 = v6;
                                v182 = 1;
                                *(&v163 + 1) = 0;
                                v164 = 0;
                              }

                              v130 = 1;
                              v183 = 1;
                              *&v163 = 0;
                              WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v160, v115);
                              LOBYTE(v116) = 0;
                              if (v5)
                              {
                                goto LABEL_235;
                              }

LABEL_228:
                              if ((v116 & 1) == 0)
                              {
                                if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v129, v115);
                                }

                                if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v123, v115);
                                }
                              }

LABEL_235:
                              if (v168 == 1)
                              {
                                v131 = v167;
                                v167 = 0;
                                if (v131)
                                {
                                  if (atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v131, v115);
                                  }
                                }
                              }

                              if (v171 == 1)
                              {
                                WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v169, v115);
                              }

                              if ((v130 & 1) == 0)
                              {
                                goto LABEL_247;
                              }

                              goto LABEL_242;
                            }

LABEL_308:
                            v130 = 0;
                            LOBYTE(v174) = 0;
                            v183 = 0;
                            v129 = v4;
                            if (v5)
                            {
                              goto LABEL_235;
                            }

                            goto LABEL_228;
                          }

                          v123 = 0;
                        }

                        else
                        {
                          v123 = 0;
                          *a1 = 0;
                          a1[1] = 0;
                        }

                        LOBYTE(v116) = 1;
                        goto LABEL_308;
                      }
                    }

                    *a1 = 0;
                    a1[1] = 0;
                    v136 = a1[3];
                    if (v136)
                    {
                      if (v113)
                      {
                        (*(*v136 + 16))(v136);
LABEL_304:
                        v115 = *a1;
                        v113 = a1[1];
                        goto LABEL_305;
                      }
                    }

                    else
                    {
                      v113 = 0;
                    }

                    v115 = 0;
                    goto LABEL_305;
                  }

LABEL_187:
                  v109 = *a1;
                  v110 = a1[1];
                  *a1 = 0;
                  a1[1] = 0;
                  v111 = a1[3];
                  if (v111 && v110)
                  {
                    (*(*v111 + 16))(v111, v109);
                  }

                  v74 = 0;
                  v73 = 0;
                  goto LABEL_189;
                }

                goto LABEL_186;
              }
            }

            *a1 = 0;
            a1[1] = 0;
            v107 = a1[3];
            if (v107)
            {
              if (v69)
              {
                (*(*v107 + 16))(v107);
                v71 = *a1;
                v69 = a1[1];
                goto LABEL_186;
              }
            }

            else
            {
              v69 = 0;
            }

            v71 = 0;
LABEL_186:
            *a1 = 0;
            a1[1] = 0;
            v108 = a1[3];
            if (v108 && v69)
            {
              (*(*v108 + 16))(v108, v71);
            }

            goto LABEL_187;
          }

          while (1)
          {
            IPC::Decoder::decode<std::pair<WTF::URL,WebCore::CharacterRange>>(v160, a1);
            v61 = v164;
            if (v164)
            {
              if (HIDWORD(v173) == v173)
              {
                WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::URL,WebCore::CharacterRange>>(&v172, v160);
              }

              else
              {
                WTF::URL::URL(v172 + 56 * HIDWORD(v173), v160);
                *(v62 + 40) = v163;
                ++HIDWORD(v173);
              }
            }

            if (v164 == 1)
            {
              v63 = v160[0];
              v160[0] = 0;
              if (v63)
              {
                if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v63, v10);
                }
              }
            }

            if ((v61 & 1) == 0)
            {
              break;
            }

            if (!--v19)
            {
              v64 = HIDWORD(v173);
              if (v173 > HIDWORD(v173))
              {
                v65 = v172;
                if (HIDWORD(v173))
                {
                  if (HIDWORD(v173) >= 0x4924925)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19D76906CLL);
                  }

                  v66 = 56 * HIDWORD(v173);
                  v67 = WTF::fastMalloc((56 * HIDWORD(v173)));
                  LODWORD(v173) = v66 / 0x38;
                  v172 = v67;
                  if (v67 != v65)
                  {
                    WTF::VectorMover<false,std::pair<WTF::URL,WebCore::CharacterRange>>::move(v65, (v65 + 56 * v64), v67);
                  }
                }

                if (v65)
                {
                  if (v172 == v65)
                  {
                    v172 = 0;
                    LODWORD(v173) = 0;
                  }

                  WTF::fastFree(v65, v10);
                }
              }

              goto LABEL_131;
            }
          }

LABEL_29:
          LOBYTE(v169) = 0;
          v171 = 0;
          WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v172, v10);
LABEL_30:
          v23 = *a1;
          v24 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          v25 = a1[3];
          if (v25 && v24)
          {
            (*(*v25 + 16))(v25, v23);
          }

          goto LABEL_132;
        }

        v98 = v8;
        v99 = v10;
      }

      else
      {
        v98 = 0;
        v99 = 0;
        *a1 = 0;
        a1[1] = 0;
        v100 = a1[3];
        if (v100)
        {
          (*(*v100 + 16))(v100);
          v99 = *a1;
          v98 = a1[1];
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v101 = a1[3];
      if (v101 && v98)
      {
        (*(*v101 + 16))(v101, v99, v98);
      }

      LOBYTE(v169) = 0;
      v171 = 0;
      goto LABEL_30;
    }

    if (v12 != 2)
    {
      IPC::Decoder::decode<WTF::String>(a1, &v174);
      IPC::Decoder::decode<WTF::String>(a1, v160);
      v30 = *a1;
      if (*a1)
      {
        if ((v175 & 1) == 0)
        {
          goto LABEL_246;
        }

        v31 = v174;
        v174 = 0;
        if ((v160[1] & 1) == 0)
        {
          goto LABEL_246;
        }

        v2 = v160[0];
      }

      else
      {
        if (v160[1])
        {
          v79 = v160[0];
          v160[0] = 0;
          if (v79)
          {
            if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v79, v29);
            }
          }
        }

        v31 = 0;
      }

      if (v175 == 1)
      {
        v32 = v174;
        v174 = 0;
        if (v32)
        {
          if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v29);
          }
        }
      }

      if (!v30)
      {
        v80 = *a1;
        v81 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v82 = a1[3];
        if (v82 && v81)
        {
          (*(*v82 + 16))(v82, v80);
        }

        goto LABEL_4;
      }

      v150 = v31;
      v151 = v2;
      v28 = 3;
      goto LABEL_51;
    }

    v26 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
    if (*a1)
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_246;
      }

      v150 = v26;
      v28 = 2;
LABEL_51:
      v158 = v28;
      goto LABEL_52;
    }

    v76 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v77 = a1[3];
    if (v77 && v76)
    {
      v78 = *(*v77 + 16);
LABEL_171:
      v78();
      goto LABEL_4;
    }

    goto LABEL_4;
  }

  if (v8 <= v11 - v10)
  {
    v102 = 0;
    v103 = 0;
    *a1 = 0;
    a1[1] = 0;
    v104 = a1[3];
    if (v104)
    {
      (*(*v104 + 16))(v104);
      v103 = *a1;
      v102 = a1[1];
    }

LABEL_178:
    *a1 = 0;
    a1[1] = 0;
    v105 = a1[3];
    if (v105 && v102)
    {
      (*(*v105 + 16))(v105, v103, v102);
      goto LABEL_287;
    }

    goto LABEL_167;
  }

  a1[2] = v9 + 2;
  if (v9 == -1)
  {
    v102 = v8;
    v103 = v10;
    goto LABEL_178;
  }

  if (*v11 < 9u)
  {
    LOBYTE(v150) = *v11;
    v158 = 0;
LABEL_52:
    v159 = 1;
    goto LABEL_53;
  }

LABEL_168:
  *a1 = 0;
  a1[1] = 0;
  v97 = a1[3];
  if (v97 && v8)
  {
    v78 = *(*v97 + 16);
    goto LABEL_171;
  }

LABEL_4:
  LOBYTE(v150) = 0;
  v159 = 0;
  v13 = *a1;
  v14 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
  if (v15 && v14)
  {
    (*(*v15 + 16))(v15, v13);
  }

  while (1)
  {
LABEL_53:
    v33 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    v3 = v34;
    if ((v34 & 1) == 0)
    {
      v93 = *a1;
      v94 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v95 = a1[3];
      if (v95)
      {
        if (v94)
        {
          (*(*v95 + 16))(v95, v93);
        }
      }
    }

    v36 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    if ((v35 & 1) == 0)
    {
      v86 = *a1;
      v85 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v87 = a1[3];
      if (v87)
      {
        if (v85)
        {
          v88 = v35;
          (*(*v87 + 16))(v87, v86);
          v35 = v88;
        }
      }
    }

    v37 = *a1;
    if (*a1)
    {
      if ((v3 & 1) == 0 || (v35 & 1) == 0)
      {
        goto LABEL_246;
      }

      v38 = v33 & 0xFFFFFFFFFFFFFF00;
      v39 = v33;
      v40 = *a1;
    }

    else
    {
      v83 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v84 = a1[3];
      if (v84 && v83)
      {
        (*(*v84 + 16))(v84, 0);
        v39 = 0;
        v38 = 0;
        v40 = *a1;
      }

      else
      {
        v40 = 0;
        v39 = 0;
        v38 = 0;
      }
    }

    v41 = a1[1];
    v42 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v41 < v42 - v40 || v41 - (v42 - v40) <= 7)
    {
      *a1 = 0;
      a1[1] = 0;
      v89 = a1[3];
      if (!v89)
      {
        v41 = 0;
LABEL_157:
        v40 = 0;
        goto LABEL_158;
      }

      if (!v41)
      {
        goto LABEL_157;
      }

      (*(*v89 + 16))(v89);
      v40 = *a1;
      v41 = a1[1];
    }

    else
    {
      a1[2] = v42 + 1;
      if (v42)
      {
        v3 = *v42;
        v169 = 0;
        v170 = 0;
        if (v3 >= 0x2222)
        {
          v54 = v161;
          do
          {
            IPC::Decoder::decode<WebCore::TextExtraction::Item>(&v174, a1);
            v55 = v187;
            if (v187)
            {
              if (HIDWORD(v170) == v170)
              {
                WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextExtraction::Item>(&v169, &v174);
              }

              else
              {
                v56 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(v169 + 120 * HIDWORD(v170), &v174);
                *(v56 + 88) = v184;
                *(v56 + 104) = 0;
                *(v56 + 112) = 0;
                v57 = v185;
                v185 = 0;
                *(v56 + 104) = v57;
                LODWORD(v57) = v186;
                LODWORD(v186) = 0;
                *(v56 + 112) = v57;
                LODWORD(v57) = HIDWORD(v186);
                HIDWORD(v186) = 0;
                *(v56 + 116) = v57;
                ++HIDWORD(v170);
              }
            }

            else
            {
              v54 = 0;
            }

            if (v187 == 1)
            {
              WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v40);
              if (v183 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v172, &v174);
              }
            }

            if ((v55 & 1) == 0)
            {
              LOBYTE(v160[0]) = 0;
              LOBYTE(v161) = v54;
              goto LABEL_77;
            }

            --v3;
          }

          while (v3);
          LOBYTE(v160[0]) = 0;
          LOBYTE(v161) = v54;
          v58 = HIDWORD(v170);
          if (v170 > HIDWORD(v170))
          {
            v59 = v169;
            if (HIDWORD(v170))
            {
              if (HIDWORD(v170) >= 0x2222223)
              {
                __break(0xC471u);
                JUMPOUT(0x19D769064);
              }

              v3 = 120 * HIDWORD(v170);
              v60 = WTF::fastMalloc(v3);
              LODWORD(v170) = v3 / 0x78;
              v169 = v60;
              if (v60 != v59)
              {
                WTF::VectorMover<false,WebCore::TextExtraction::Item>::move(v59, v59 + 120 * v58, v60);
              }
            }

            if (v59)
            {
              if (v169 == v59)
              {
                v169 = 0;
                LODWORD(v170) = 0;
              }

              WTF::fastFree(v59, v40);
            }
          }
        }

        else if (v3)
        {
          v43 = WTF::fastMalloc((120 * v3));
          LODWORD(v170) = 120 * v3 / 0x78u;
          v169 = v43;
          v44 = v161;
          while (1)
          {
            IPC::Decoder::decode<WebCore::TextExtraction::Item>(&v174, a1);
            v45 = v187;
            if (v187)
            {
              if (HIDWORD(v170) == v170)
              {
                WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextExtraction::Item>(&v169, &v174);
              }

              else
              {
                v46 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(v169 + 120 * HIDWORD(v170), &v174);
                *(v46 + 88) = v184;
                *(v46 + 104) = 0;
                *(v46 + 112) = 0;
                v47 = v185;
                v185 = 0;
                *(v46 + 104) = v47;
                LODWORD(v47) = v186;
                LODWORD(v186) = 0;
                *(v46 + 112) = v47;
                LODWORD(v47) = HIDWORD(v186);
                HIDWORD(v186) = 0;
                *(v46 + 116) = v47;
                ++HIDWORD(v170);
              }
            }

            else
            {
              v44 = 0;
            }

            if (v187 == 1)
            {
              WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v40);
              if (v183 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v172, &v174);
              }
            }

            if ((v45 & 1) == 0)
            {
              break;
            }

            if (!--v3)
            {
              goto LABEL_75;
            }
          }

          LOBYTE(v160[0]) = 0;
          LOBYTE(v161) = v44;
LABEL_77:
          WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v169, v40);
          if (v161)
          {
            goto LABEL_78;
          }

          goto LABEL_160;
        }

LABEL_75:
        v160[0] = v169;
        v48 = v170;
        v169 = 0;
        v170 = 0;
        v160[1] = v48;
        LOBYTE(v161) = 1;
        goto LABEL_77;
      }
    }

LABEL_158:
    *a1 = 0;
    a1[1] = 0;
    v90 = a1[3];
    if (v90 && v41)
    {
      (*(*v90 + 16))(v90, v40);
    }

    LOBYTE(v160[0]) = 0;
    LOBYTE(v161) = 0;
LABEL_160:
    v49 = *a1;
    v91 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v92 = a1[3];
    if (v92 && v91)
    {
      (*(*v92 + 16))(v92, v49);
    }

LABEL_78:
    if (!*a1)
    {
      *a2 = 0;
      a2[120] = 0;
      goto LABEL_84;
    }

    if (v159)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(&v174, &v150);
      if (v37)
      {
        *&v184 = v38 | v39;
        *(&v184 + 1) = v36;
        if (v161)
        {
          break;
        }
      }
    }

LABEL_246:
    __break(1u);
LABEL_247:
    v115 = *a1;
    v133 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v134 = a1[3];
    if (v134 && v133)
    {
      (*(*v134 + 16))(v134, v115);
    }

LABEL_242:
    if (v183 != 1)
    {
      goto LABEL_4;
    }

    v150 = v174;
    v132 = v175;
    v174 = 0;
    v175 = 0;
    v151 = v132;
    v152 = *(v3 + 16);
    v153 = v177;
    v154 = v178;
    LOBYTE(v155) = 0;
    v157 = 0;
    if (v182 == 1)
    {
      v155 = *(v3 + 48);
      v156 = v181;
      v157 = 1;
      v179 = 0;
      v180 = 0;
    }

    v158 = 1;
    v159 = 1;
    v178 = 0;
    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v174, v115);
  }

  v185 = v160[0];
  v50 = v160[1];
  v160[0] = 0;
  v160[1] = 0;
  v186 = v50;
  v51 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1>::move_constructor(a2, &v174);
  *(v51 + 88) = v184;
  *(v51 + 104) = v185;
  v52 = v186;
  v185 = 0;
  v186 = 0;
  *(v51 + 112) = v52;
  *(v51 + 120) = 1;
  WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v185, v53);
  if (v183 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v169, &v174);
  }

LABEL_84:
  if (v161 == 1)
  {
    WTF::Vector<WebCore::TextExtraction::Item,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v160, v49);
  }

  if (v159 == 1 && v158 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::TextExtraction::ContainerType,WebCore::TextExtraction::TextItemData,WebCore::TextExtraction::ScrollableItemData,WebCore::TextExtraction::ImageItemData>,(mpark::detail::Trait)1> &>(&v174, &v150);
  }
}

void sub_19D769078(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, WTF::StringImpl *a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, WTF::StringImpl *a38, char a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, WTF::StringImpl *a46, char a47, WTF::StringImpl *a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a47 == 1)
  {
    v64 = a46;
    a46 = 0;
    if (v64)
    {
      if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, a2);
      }
    }
  }

  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if ((a39 & 1) != 0 && a38 && atomic_fetch_add_explicit(a38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a38, a2);
  }

  if (a45 == 1)
  {
    WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a41, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 17);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::UUID>(a1, v7);
  v4 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a1);
  result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

  LOBYTE(v6) = v8;
  if ((v8 & 1) == 0 || (v4 & 0x100) == 0 || (result & 0x100) == 0)
  {
    __break(1u);
LABEL_8:
    *a2 = 0;
    goto LABEL_6;
  }

  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 17) = result;
  LOBYTE(v6) = 1;
LABEL_6:
  *(a2 + 32) = v6;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, a2);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(a1, a2 + 2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[7]);
  v4 = a2[8];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v12);
  IPC::Decoder::decode<WebCore::AttributedString>(a1, v7);
  result = IPC::Decoder::decode<WebCore::CharacterRange>(a1, &v5);
  if (*a1)
  {
    if (v13)
    {
      v9 = v12;
      if (v8)
      {
        result = WebCore::AttributedString::AttributedString();
        if (v6)
        {
          v11 = v5;
          *a2 = v9;
          WebCore::AttributedString::AttributedString();
          *(a2 + 56) = v11;
          *(a2 + 80) = 1;
          result = MEMORY[0x19EB065D0](&v10);
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 80) = 0;
LABEL_6:
  if (v8 == 1)
  {
    return MEMORY[0x19EB065D0](v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::TextSuggestion,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  v4 = *(a2 + 40);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::WritingTools::TextSuggestion,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::UUID>(a1, &v12);
  IPC::Decoder::decode<WebCore::CharacterRange>(a1, &v10);
  IPC::Decoder::decode<WTF::String>(a1, &v8);
  result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  if (*a1)
  {
    if (v13 & 1) != 0 && (v11)
    {
      v7 = v10;
      if ((v9 & 1) != 0 && (result & 0x100) != 0)
      {
        v6 = v8;
        *a2 = v12;
        *(a2 + 16) = v7;
        *(a2 + 32) = v6;
        *(a2 + 40) = result;
        *(a2 + 48) = 1;
        return result;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
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

void sub_19D7696F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  if ((a15 & 1) != 0 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::CaptureSourceError,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 9);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::CaptureSourceError,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v7);
  v4 = IPC::Decoder::decode<WebCore::InputMode>(a1);
  result = IPC::Decoder::decode<WebCore::MediaConstraintType>(a1);
  if (*a1)
  {
    if ((v8 & 1) != 0 && (v4 & 0x100) != 0 && (result & 0x100) != 0)
    {
      *a2 = v7;
      *(a2 + 8) = v4 | (result << 8);
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v8)
  {
    result = v7;
    v7 = 0;
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

void sub_19D769834(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::MediaConstraintType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::MediaConstraintType,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::MediaSettingsRange,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 16);

  return IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 32);
}

uint64_t IPC::ArgumentCoder<WebCore::PhotoCapabilities,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::MediaSettingsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::MediaSettingsRange> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WebCore::MediaSettingsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::MediaSettingsRange> const&>(a1, (a2 + 64));

  return IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 120));
}

WTF *IPC::ArgumentCoder<WebCore::PhotoCapabilities,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v4)
      {
        (*(*v35 + 16))(v35);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_77:
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_80:
        *a1 = 0;
        *(a1 + 1) = 0;
        v37 = *(a1 + 3);
        if (v37 && v4)
        {
          (*(*v37 + 16))(v37, v6);
        }

        v10 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_80;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_77;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_80;
  }

  if (!*v5)
  {
    v10 = 0;
    LOWORD(v8) = 0;
    v9 = 0x10000;
    goto LABEL_10;
  }

  if (v4 <= v7 - v6)
  {
    v40 = 0;
    v41 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      (*(*v42 + 16))(v42);
      v41 = *a1;
      v40 = *(a1 + 1);
    }
  }

  else
  {
    *(a1 + 2) = v5 + 2;
    if (v5 != -1)
    {
      v8 = *v7;
      if (v8 < 3)
      {
        v9 = 0x10000;
        v10 = 256;
        goto LABEL_10;
      }

      goto LABEL_94;
    }

    v40 = v4;
    v41 = v6;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v40)
  {
    (*(*v43 + 16))(v43, v41, v40);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_94:
  *a1 = 0;
  *(a1 + 1) = 0;
  v44 = *(a1 + 3);
  if (v44 && v4)
  {
    (*(*v44 + 16))(v44, v6);
  }

  v10 = 256;
LABEL_96:
  v45 = *a1;
  v46 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (v47 && v46)
  {
    (*(*v47 + 16))(v47, v45);
  }

  LOWORD(v8) = 0;
  v9 = 0;
LABEL_10:
  IPC::Decoder::decode<std::optional<WebCore::MediaSettingsRange>>(v63, a1);
  IPC::Decoder::decode<std::optional<WebCore::MediaSettingsRange>>(v60, a1);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *a1;
  if (v11 <= v12 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v11)
      {
        (*(*v38 + 16))(v38);
        v11 = *(a1 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_84;
  }

  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
LABEL_84:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v11)
      {
        (*(*v39 + 16))(v39);
        v13 = *a1;
        v11 = *(a1 + 1);
        goto LABEL_87;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_87:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v11)
    {
      result = (*(*result + 16))(result, v13);
    }

    goto LABEL_71;
  }

  if (*v12 >= 2u)
  {
    goto LABEL_87;
  }

  if (!*v12)
  {
    v48[0] = 0;
    v48[16] = 0;
    result = std::__optional_move_base<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v56, v48);
    v59 = 1;
    if (v48[16] != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v11 < v15 - v13 || v11 - (v15 - v13) <= 7)
  {
    v30 = 0;
    v31 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      (*(*v32 + 16))(v32);
      v31 = *a1;
      v30 = *(a1 + 1);
    }

    goto LABEL_68;
  }

  *(a1 + 2) = v14 + 16;
  if (!v15)
  {
    v30 = v11;
    v31 = v13;
LABEL_68:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v30)
    {
      (*(*v33 + 16))(v33, v31, v30);
    }

    v48[0] = 0;
    v48[16] = 0;
    goto LABEL_70;
  }

  v16 = *v15;
  v67 = 0;
  v68 = 0;
  if (v16 >= 0x100000)
  {
    v17 = 0;
    LODWORD(v27) = 0;
    while (1)
    {
      v28 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
      v66 = v28;
      if (v28 < 0x100u)
      {
        break;
      }

      if (v27 == v68)
      {
        v29 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v67, v27 + 1, &v66);
        LODWORD(v27) = HIDWORD(v68);
        v17 = v67;
        *(v67 + HIDWORD(v68)) = *v29;
      }

      else
      {
        *(v17 + v27) = v28;
      }

      v27 = (v27 + 1);
      HIDWORD(v68) = v27;
      v16 = (v16 - 1);
      if (!v16)
      {
        if (v68 > v27)
        {
          if (v27)
          {
            LODWORD(v68) = v27;
            v67 = WTF::fastRealloc(v17, v27);
          }

          else
          {
            v67 = 0;
            LODWORD(v68) = 0;
            WTF::fastFree(v17, v20);
          }
        }

        goto LABEL_25;
      }
    }

    v48[0] = 0;
    v48[16] = 0;
    if (v17)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v16)
    {
      v17 = WTF::fastMalloc(v16);
      v18 = 0;
      LODWORD(v68) = v16;
      v67 = v17;
      while (1)
      {
        v19 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
        v66 = v19;
        if (v19 < 0x100u)
        {
          break;
        }

        if (v18 == v68)
        {
          v21 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v67, v18 + 1, &v66);
          v18 = HIDWORD(v68);
          v17 = v67;
          *(v67 + HIDWORD(v68)) = *v21;
        }

        else
        {
          *(v17 + v18) = v19;
        }

        HIDWORD(v68) = ++v18;
        v16 = (v16 - 1);
        if (!v16)
        {
          goto LABEL_25;
        }
      }

      v48[0] = 0;
      v48[16] = 0;
      goto LABEL_30;
    }

LABEL_25:
    std::optional<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v48, &v67);
    v17 = v67;
    if (v67)
    {
LABEL_30:
      v67 = 0;
      LODWORD(v68) = 0;
      WTF::fastFree(v17, v20);
    }
  }

  if (v48[16])
  {
    goto LABEL_32;
  }

LABEL_70:
  v13 = *a1;
  v34 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result || !v34 || (result = (*(*result + 16))(result, v13), (v48[16] & 1) == 0))
  {
LABEL_71:
    LOBYTE(v56) = 0;
    v59 = 0;
    goto LABEL_35;
  }

LABEL_32:
  result = std::optional<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v56, v48);
  v59 = 1;
  if ((v48[16] & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  result = *v48;
  if (*v48)
  {
    *v48 = 0;
    *&v48[8] = 0;
    result = WTF::fastFree(result, v13);
  }

LABEL_35:
  if ((v59 & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 144) = 0;
      goto LABEL_44;
    }

    if ((v10 | v9) >> 16)
    {
      *v48 = v8 | v10;
      if (v65)
      {
        *&v48[8] = v63[0];
        *&v48[24] = v63[1];
        *&v48[40] = v63[2];
        v48[56] = v64;
        if (v62)
        {
          v49 = v60[0];
          v50 = v60[1];
          v51 = v60[2];
          v52 = v61;
          if (v59)
          {
            break;
          }
        }
      }
    }

    __break(1u);
LABEL_50:
    v13 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v26)
    {
      result = (*(*result + 16))(result, v13);
    }
  }

  std::__optional_move_base<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v53, &v56);
  v23 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v23;
  *(a2 + 96) = v51;
  *(a2 + 112) = v52;
  v24 = *&v48[16];
  *a2 = *v48;
  *(a2 + 16) = v24;
  v25 = *&v48[48];
  *(a2 + 32) = *&v48[32];
  *(a2 + 48) = v25;
  result = std::__optional_move_base<WTF::Vector<WebCore::FillLightMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a2 + 120, &v53);
  *(a2 + 144) = 1;
  if (v55 == 1)
  {
    result = v53;
    if (v53)
    {
      v53 = 0;
      v54 = 0;
      result = WTF::fastFree(result, v13);
    }
  }

LABEL_44:
  if (v59 == 1 && v58 == 1)
  {
    result = v56;
    if (v56)
    {
      v56 = 0;
      v57 = 0;
      return WTF::fastFree(result, v13);
    }
  }

  return result;
}

void sub_19D76A174(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF *a26, int a27, int a28, char a29, uint64_t a30, int a31, int a32, char a33, int a34, __int16 a35, char a36, char a37)
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

IPC::Decoder *IPC::Decoder::decode<std::optional<WebCore::MediaSettingsRange>>(IPC::Decoder *result, IPC::Decoder *a2)
{
  v3 = result;
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_38:
        *a2 = 0;
        *(a2 + 1) = 0;
        v24 = *(a2 + 3);
        if (v24)
        {
          if (v6)
          {
            (*(*v24 + 16))(v24, v5);
            v6 = *(a2 + 1);
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_38;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_38;
  }

  v7 = *v4;
  if (v7 < 2)
  {
    if (!v7)
    {
      *result = 0;
      *(result + 48) = 0;
      goto LABEL_14;
    }

    IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v32);
    if ((v34 & 1) == 0)
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (v12)
      {
        if (v11)
        {
          (*(*v12 + 16))(v12, v10);
        }
      }
    }

    IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v29);
    if ((v31 & 1) == 0)
    {
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

    result = IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a2, &v26);
    if ((v28 & 1) == 0)
    {
      v16 = *a2;
      v17 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result)
      {
        if (v17)
        {
          result = (*(*result + 16))(result, v16);
        }
      }
    }

    if (*a2)
    {
      if (v34 & 1) != 0 && (v31)
      {
        v8 = v33;
        *(&v37 + 7) = v29;
        HIBYTE(v37) = v30;
        if (v28)
        {
          HIBYTE(v36) = v27;
          *(&v36 + 7) = v26;
          v35 = v37;
          v9 = v37;
          *v3 = v32;
          *(v3 + 1) = v8;
          *(v3 + 9) = v9;
          *(v3 + 25) = v36;
          *(v3 + 48) = 1;
LABEL_14:
          *(v3 + 56) = 1;
          return result;
        }
      }

      __break(1u);
    }

    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19 && v18)
    {
      v22 = *(*v19 + 16);
LABEL_34:
      v22();
      goto LABEL_27;
    }

    goto LABEL_27;
  }

LABEL_40:
  *a2 = 0;
  *(a2 + 1) = 0;
  v25 = *(a2 + 3);
  if (v25 && v6)
  {
    v22 = *(*v25 + 16);
    goto LABEL_34;
  }

LABEL_27:
  *v3 = 0;
  *(v3 + 56) = 0;
  v20 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v20)
  {
    v21 = *(*result + 16);

    return v21();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PhotoSettings,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, (a2 + 24));

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 40);
}

uint64_t IPC::ArgumentCoder<WebCore::PhotoSettings,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_29:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      if (v4)
      {
        (*(*v20 + 16))(v20);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_32:
        *a1 = 0;
        *(a1 + 1) = 0;
        v21 = *(a1 + 3);
        if (v21 && v4)
        {
          (*(*v21 + 16))(v21, v6);
        }

        v10 = 0;
        v9 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_32;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_32;
  }

  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0x10000;
    goto LABEL_11;
  }

  v8 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  if ((v8 & 0xFF00) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 256;
  if (v8 > 0xFFu)
  {
    v11 = (v8 << 8) & 0xFF0000;
    goto LABEL_11;
  }

LABEL_34:
  v22 = *a1;
  v23 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v24 = *(a1 + 3);
  if (v24 && v23)
  {
    (*(*v24 + 16))(v24, v22);
  }

  v11 = 0;
LABEL_11:
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v28);
  if ((v30 & 1) == 0)
  {
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v14)
      {
        (*(*v15 + 16))(v15, v13);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v25);
  if ((v27 & 1) == 0)
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
      }
    }
  }

  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (*a1)
  {
    if ((v9 | v10 | v11) >> 16)
    {
      if (v30)
      {
        *&v32[6] = v28;
        v32[14] = v29;
        if (v27)
        {
          *(&v31 + 7) = v25;
          HIBYTE(v31) = v26;
          if ((result & 0x10000) != 0)
          {
            *a2 = v9 | v10;
            *(a2 + 2) = *v32;
            *(a2 + 9) = *&v32[7];
            *(a2 + 17) = v31;
            *(a2 + 40) = result;
            *(a2 + 48) = 1;
            return result;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::CookieStoreGetOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v10);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v9)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_5:
  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
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

void sub_19D76A9C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::CookieChangeSubscription,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v10);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v11 & 1) != 0 && (v9)
    {
      v6 = v10;
      v10 = 0;
      v7 = v8;
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 1;
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_5:
  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
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

void sub_19D76AACC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::InspectorOverlayLabel::Content,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));

  return IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 24));
}

uint64_t IPC::ArgumentCoder<WebCore::InspectorOverlayLabel,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  v4 = *(a2 + 33);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(a1, a2 + 2);
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 10));
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 14));
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 18));
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 22));
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 26));

  return IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 30));
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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

void sub_19D76ACC8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_46:
        *a2 = 0;
        *(a2 + 1) = 0;
        v22 = *(a2 + 3);
        if (v22 && v6)
        {
          (*(*v22 + 16))(v22, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_48:
        v23 = *a2;
        v24 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v24)
          {
            return (*(*result + 16))(result, v23);
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
    goto LABEL_46;
  }

  *(a2 + 2) = v4 + 8;
  if (!v4)
  {
    goto LABEL_46;
  }

  v8 = *v4;
  v32 = 0;
  v33 = 0;
  if (v8 >= 0x6666)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayLabel>(&v25, a2);
      v14 = v31;
      if (v31)
      {
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel>(&v32, &v25);
        }

        else
        {
          v15 = v32 + 40 * HIDWORD(v33);
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v25;
          v25 = 0;
          *v15 = v16;
          LODWORD(v16) = v26;
          v26 = 0;
          *(v15 + 8) = v16;
          LODWORD(v16) = v27;
          v27 = 0;
          *(v15 + 12) = v16;
          *(v15 + 16) = v28;
          *(v15 + 24) = 0;
          if (v15 != &v25)
          {
            v17 = v29;
            v29 = 0;
            *(v15 + 24) = v17;
          }

          *(v15 + 32) = v30;
          ++HIDWORD(v33);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v31 == 1)
      {
        if ((v29 & 0x8000000000000) != 0)
        {
          v18 = (v29 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v5);
          }
        }

        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v32, HIDWORD(v33));
        goto LABEL_40;
      }
    }
  }

  else if (v8)
  {
    LODWORD(v33) = 40 * v8 / 0x28u;
    v32 = WTF::fastMalloc((40 * v8));
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayLabel>(&v25, a2);
      v9 = v31;
      if (v31)
      {
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayLabel>(&v32, &v25);
        }

        else
        {
          v10 = v32 + 40 * HIDWORD(v33);
          *v10 = 0;
          *(v10 + 8) = 0;
          v11 = v25;
          v25 = 0;
          *v10 = v11;
          LODWORD(v11) = v26;
          v26 = 0;
          *(v10 + 8) = v11;
          LODWORD(v11) = v27;
          v27 = 0;
          *(v10 + 12) = v11;
          *(v10 + 16) = v28;
          *(v10 + 24) = 0;
          if (v10 != &v25)
          {
            v12 = v29;
            v29 = 0;
            *(v10 + 24) = v12;
          }

          *(v10 + 32) = v30;
          ++HIDWORD(v33);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v31 == 1)
      {
        if ((v29 & 0x8000000000000) != 0)
        {
          v13 = (v29 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, v5);
          }
        }

        WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v5);
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    *a1 = v32;
    v19 = v33;
    v32 = 0;
    v33 = 0;
    *(a1 + 8) = v19;
    *(a1 + 16) = 1;
  }

  result = WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_48;
  }

  return result;
}

void sub_19D76B08C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 16) == 1)
  {
    WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));
  IPC::VectorArgumentCoder<false,WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 5);

  return IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 7));
}

uint64_t IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[40]);
  IPC::VectorArgumentCoder<false,WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 48));
  IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 64));
  IPC::VectorArgumentCoder<false,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 80));

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 96);
}

void IPC::ArgumentCoder<WebCore::InspectorOverlayHighlight,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::Color>(a1, &v96);
  IPC::Decoder::decode<WebCore::Color>(a1, &v94);
  IPC::Decoder::decode<WebCore::Color>(a1, &v92);
  IPC::Decoder::decode<WebCore::Color>(a1, &v90);
  IPC::Decoder::decode<WebCore::Color>(a1, &v88);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73)
    {
      if (v4)
      {
        (*(*v73 + 16))(v73);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_144:
    *a1 = 0;
    *(a1 + 1) = 0;
    v74 = *(a1 + 3);
    if (v74)
    {
      if (v4)
      {
        (*(*v74 + 16))(v74);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_147;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_147;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_144;
  }

  v7 = *v5;
  if (v7 < 4)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_147:
  *a1 = 0;
  *(a1 + 1) = 0;
  v75 = *(a1 + 3);
  if (v75 && v4)
  {
    (*(*v75 + 16))(v75, v6);
  }

  v8 = 0;
LABEL_5:
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatQuad,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v85, a1);
  v9 = *(a1 + 1);
  v10 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *a1;
  v12 = v10 - *a1;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (!v13 || v14 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63)
    {
      if (v9)
      {
        (*(*v63 + 16))(v63);
        v9 = *(a1 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_129;
  }

  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_129:
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64 && v9)
    {
      (*(*v64 + 16))(v64);
    }

    LOBYTE(v82) = 0;
    LOBYTE(v84) = 0;
LABEL_131:
    v65 = *a1;
    v66 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v67 = *(a1 + 3);
    if (v67 && v66)
    {
      (*(*v67 + 16))(v67, v65);
    }

    goto LABEL_46;
  }

  v15 = *v10;
  v79 = 0;
  v80 = 0;
  if (v15 >= 0x38E3)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(&v98, a1);
      v21 = BYTE8(v103);
      if (BYTE8(v103))
      {
        if (HIDWORD(v80) == v80)
        {
          WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(&v79, &v98);
        }

        else
        {
          WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay((v79 + 72 * HIDWORD(v80)), &v98);
          ++HIDWORD(v80);
        }
      }

      else
      {
        LOBYTE(v82) = 0;
        LOBYTE(v84) = 0;
      }

      if (BYTE8(v103) == 1)
      {
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102 + 8, v11);
        WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v22);
        v23 = *(&v99 + 1);
        if (*(&v99 + 1))
        {
          *(&v99 + 1) = 0;
          LODWORD(v100) = 0;
          WTF::fastFree(v23, v11);
        }

        v24 = *(&v98 + 1);
        if (*(&v98 + 1))
        {
          *(&v98 + 1) = 0;
          LODWORD(v99) = 0;
          WTF::fastFree(v24, v11);
        }

        if ((v98 & 0x8000000000000) != 0)
        {
          v25 = (v98 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v98 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v25);
            WTF::fastFree(v25, v11);
          }
        }
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (!--v15)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v79, HIDWORD(v80));
        goto LABEL_44;
      }
    }
  }

  else if (v15)
  {
    LODWORD(v80) = 72 * v15 / 0x48u;
    v79 = WTF::fastMalloc((72 * v15));
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(&v98, a1);
      v16 = BYTE8(v103);
      if (BYTE8(v103))
      {
        if (HIDWORD(v80) == v80)
        {
          WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::GridHighlightOverlay>(&v79, &v98);
        }

        else
        {
          WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay((v79 + 72 * HIDWORD(v80)), &v98);
          ++HIDWORD(v80);
        }
      }

      else
      {
        LOBYTE(v82) = 0;
        LOBYTE(v84) = 0;
      }

      if (BYTE8(v103) == 1)
      {
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102 + 8, v11);
        WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v17);
        v18 = *(&v99 + 1);
        if (*(&v99 + 1))
        {
          *(&v99 + 1) = 0;
          LODWORD(v100) = 0;
          WTF::fastFree(v18, v11);
        }

        v19 = *(&v98 + 1);
        if (*(&v98 + 1))
        {
          *(&v98 + 1) = 0;
          LODWORD(v99) = 0;
          WTF::fastFree(v19, v11);
        }

        if ((v98 & 0x8000000000000) != 0)
        {
          v20 = (v98 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v98 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20);
            WTF::fastFree(v20, v11);
          }
        }
      }

      if ((v16 & 1) == 0)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
LABEL_44:
    v82 = v79;
    v26 = v80;
    v79 = 0;
    v80 = 0;
    v83 = v26;
    LOBYTE(v84) = 1;
  }

  WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v11);
  if ((v84 & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_46:
  v27 = *(a1 + 1);
  v28 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v29 = *a1;
  v30 = v28 - *a1;
  v13 = v27 >= v30;
  v31 = v27 - v30;
  if (!v13 || v31 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v68 = *(a1 + 3);
    if (v68)
    {
      if (v27)
      {
        (*(*v68 + 16))(v68);
        v27 = *(a1 + 1);
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_136;
  }

  *(a1 + 2) = v28 + 1;
  if (!v28)
  {
LABEL_136:
    *a1 = 0;
    *(a1 + 1) = 0;
    v69 = *(a1 + 3);
    if (v69 && v27)
    {
      (*(*v69 + 16))(v69);
    }

    LOBYTE(v79) = 0;
    v81 = 0;
LABEL_138:
    v70 = *a1;
    v71 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v72 = *(a1 + 3);
    if (v72 && v71)
    {
      (*(*v72 + 16))(v72, v70);
    }

    goto LABEL_77;
  }

  v33 = *v28;
  v107 = 0;
  v108 = 0;
  if (v33 >> 1 >= 0xF0F)
  {
    v35 = v81;
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(&v98, a1);
      v38 = v106;
      if (v106)
      {
        if (HIDWORD(v108) == v108)
        {
          WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(&v107, &v98);
        }

        else
        {
          WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v107 + 136 * HIDWORD(v108), &v98);
          ++HIDWORD(v108);
        }
      }

      else
      {
        v35 = 0;
      }

      if (v106 == 1)
      {
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(&v98, v29);
      }

      if ((v38 & 1) == 0)
      {
        break;
      }

      if (!--v33)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v107, HIDWORD(v108));
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (!v33)
    {
LABEL_64:
      v79 = v107;
      v37 = v108;
      v107 = 0;
      v108 = 0;
      v80 = v37;
      v81 = 1;
      WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v29);
      goto LABEL_77;
    }

    v34 = WTF::fastMalloc((136 * v33));
    LODWORD(v108) = 136 * v33 / 0x88u;
    v107 = v34;
    v35 = v81;
    while (1)
    {
      IPC::Decoder::decode<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(&v98, a1);
      v36 = v106;
      if (v106)
      {
        if (HIDWORD(v108) == v108)
        {
          WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::InspectorOverlayHighlight::FlexHighlightOverlay>(&v107, &v98);
        }

        else
        {
          WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v107 + 136 * HIDWORD(v108), &v98);
          ++HIDWORD(v108);
        }
      }

      else
      {
        v35 = 0;
      }

      if (v106 == 1)
      {
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(&v98, v29);
      }

      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!--v33)
      {
        goto LABEL_64;
      }
    }
  }

  LOBYTE(v79) = 0;
  v81 = v35;
  WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v29);
  if ((v35 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_77:
  v39 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = *a1;
  if (v39 <= &v40[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v76 = *(a1 + 3);
    if (v76)
    {
      if (v39)
      {
        (*(*v76 + 16))(v76);
        v39 = *(a1 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_153:
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77)
    {
      if (v39)
      {
        (*(*v77 + 16))(v77);
        v42 = 0;
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_156;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
    v42 = 0;
    goto LABEL_156;
  }

  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_153;
  }

  v42 = *v40;
  if (v42 < 2)
  {
    v43 = 1;
    goto LABEL_81;
  }

LABEL_156:
  *a1 = 0;
  *(a1 + 1) = 0;
  v78 = *(a1 + 3);
  if (!v78 || !v39)
  {
LABEL_157:
    *a2 = 0;
    *(a2 + 104) = 0;
    goto LABEL_98;
  }

  (*(*v78 + 16))(v78, v41);
  v43 = 0;
  v41 = *a1;
LABEL_81:
  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (!v41)
  {
    goto LABEL_157;
  }

  if ((v97 & 1) == 0 || (v45 = v96, v96 = 0, *&v98 = v45, (v95 & 1) == 0) || (v46 = v94, v94 = 0, *(&v98 + 1) = v46, (v93 & 1) == 0) || (v47 = v92, v92 = 0, *&v99 = v47, (v91 & 1) == 0) || (v48 = v90, v90 = 0, *(&v99 + 1) = v48, (v89 & 1) == 0) || (v49 = v88, v88 = 0, v100 = v49, v8 <= 0xFF) || (v101[0] = v8, (v87 & 1) == 0) || (v50 = v85, *&v102 = v85, v51 = v86, DWORD2(v102) = v86, v85 = 0, v86 = 0, (v84 & 1) == 0) || (v52 = v82, v53 = v83, v82 = 0, v83 = 0, (v81 & 1) == 0) || (v54 = v79, v55 = v80, v79 = 0, v80 = 0, (v43 & 1) == 0))
  {
    __break(1u);
LABEL_117:
    v58 = (v44 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v44 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v58);
      WTF::fastFree(v58, v41);
    }

    goto LABEL_107;
  }

  v105 = v44;
  *a2 = 0;
  v56 = 0uLL;
  if (&v98 == a2)
  {
    *(a2 + 24) = 0uLL;
    *(a2 + 8) = 0uLL;
  }

  else
  {
    *a2 = v45;
    *(a2 + 8) = v46;
    v98 = 0uLL;
    v99 = 0uLL;
    *(a2 + 16) = v47;
    *(a2 + 24) = v48;
    v100 = 0;
    *(a2 + 32) = v49;
  }

  *&v56 = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v50;
  *(a2 + 56) = v51;
  v102 = v56;
  v103 = v56;
  *(a2 + 64) = v52;
  *(a2 + 72) = v53;
  v104 = v56;
  *(a2 + 80) = v54;
  *(a2 + 88) = v55;
  *(a2 + 96) = v44;
  *(a2 + 104) = 1;
  WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(&v98, v41);
LABEL_98:
  if (v81 == 1)
  {
    WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v41);
  }

  if (v84 == 1)
  {
    WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v41);
  }

  if (v87 == 1)
  {
    v57 = v85;
    if (v85)
    {
      v85 = 0;
      LODWORD(v86) = 0;
      WTF::fastFree(v57, v41);
    }
  }

  if (v89 == 1)
  {
    v44 = v88;
    if ((v88 & 0x8000000000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_107:
  if (v91 == 1 && (v90 & 0x8000000000000) != 0)
  {
    v59 = (v90 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v90 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v59);
      WTF::fastFree(v59, v41);
    }
  }

  if (v93 == 1 && (v92 & 0x8000000000000) != 0)
  {
    v60 = (v92 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v92 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v60);
      WTF::fastFree(v60, v41);
    }
  }

  if (v95 == 1 && (v94 & 0x8000000000000) != 0)
  {
    v61 = (v94 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v94 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v61);
      WTF::fastFree(v61, v41);
    }
  }

  if (v97 == 1 && (v96 & 0x8000000000000) != 0)
  {
    v62 = (v96 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v96 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v62);
      WTF::fastFree(v62, v41);
    }
  }
}

void sub_19D76BCD4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, WTF *a19, int a20, int a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, WTF *a34, int a35, WTF *a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a12)
  {
    WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  if (a18 == 1)
  {
    WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  }

  if (a22 == 1)
  {
    v51 = a19;
    if (a19)
    {
      a19 = 0;
      a20 = 0;
      WTF::fastFree(v51, a2);
    }
  }

  if (a24 == 1 && (a23 & 0x8000000000000) != 0)
  {
    v56 = (a23 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v56);
      WTF::fastFree(v56, a2);
    }
  }

  if (a26 == 1 && (a25 & 0x8000000000000) != 0)
  {
    v55 = (a25 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a25 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v55);
      WTF::fastFree(v55, a2);
    }
  }

  if (a28 == 1 && (a27 & 0x8000000000000) != 0)
  {
    v54 = (a27 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v54);
      WTF::fastFree(v54, a2);
    }
  }

  if (a30 == 1 && (a29 & 0x8000000000000) != 0)
  {
    v53 = (a29 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v53);
      WTF::fastFree(v53, a2);
    }
  }

  if (a32 == 1 && (a31 & 0x8000000000000) != 0)
  {
    v52 = (a31 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a31 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v52);
      WTF::fastFree(v52, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DiagnosticLoggingDictionary,void>::decode@<X0>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, &v6);
  if (*a1)
  {
    if (v7)
    {
      *a2 = v6;
      *(a2 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (v7)
    {
      result = v6;
      if (v6)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v5);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>@<X0>(WTF::StringImpl *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
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

void sub_19D76C02C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FontCachePrewarmInformation,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v15);
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
  if (*a1)
  {
    if (v17)
    {
      v7 = v15;
      v8 = v16;
      v15 = 0;
      v16 = 0;
      if (v14)
      {
        *&v6 = 0;
        v9 = v13;
        v12 = v6;
        v13 = v6;
        *a2 = v7;
        *(a2 + 8) = v8;
        v11 = v6;
        *(a2 + 16) = v9;
        *(a2 + 32) = 1;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v5);
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v10);
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_5:
  if (v14 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v5);
  }

  if (v17 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v5);
  }

  return result;
}

void sub_19D76C138(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 - 24))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 - 40, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::PrewarmInformation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);
}

uint64_t IPC::ArgumentCoder<WebCore::PrewarmInformation,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::FontCachePrewarmInformation>(a1, &v13);
  if (*a1)
  {
    if ((v15 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    *&v6 = 0;
    v7 = v13;
    v8 = v14;
    v13 = v6;
    v14 = v6;
    *a2 = v7;
    v11 = v6;
    v12 = v6;
    *(a2 + 16) = v8;
    *(a2 + 32) = 1;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v5);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v9);
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  if (v15 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v5);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FontCachePrewarmInformation>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FontCachePrewarmInformation,void>::decode(a1, a2);
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

uint64_t IPC::ArgumentCoder<WebCore::RemoteUserInputEventData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::ArgumentCoder<WebCore::RemoteUserInputEventData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = v4;
  *(a2 + 8) = result;
  LOBYTE(v9) = 1;
LABEL_5:
  *(a2 + 16) = v9;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::LinkDecorationFilteringData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v13);
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (*a1)
  {
    if (v14 & 1) != 0 && (v12 & 1) != 0 && (v10)
    {
      v6 = v13;
      v13 = 0;
      v7 = v11;
      v11 = 0;
      v8 = v9;
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      *(a2 + 24) = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v10)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_6:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
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

void sub_19D76C4C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::InspectorFrontendClientSaveData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 24));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::InspectorFrontendClientSaveData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v21);
  IPC::Decoder::decode<WTF::String>(a1, &v19);
  result = IPC::Decoder::decode<WTF::String>(a1, &v17);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_24;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_26;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    v16 = *v6;
    goto LABEL_30;
  }

  for (i = 1; ; i = 0)
  {
    v10 = v8 ? i : 0;
    if (!v7)
    {
      break;
    }

    if (v22)
    {
      v11 = v21;
      v21 = 0;
      if (v20)
      {
        v12 = v19;
        v19 = 0;
        if (v18 & 1) != 0 && (i)
        {
          v13 = v17;
          *a2 = v11;
          *(a2 + 8) = v12;
          *(a2 + 16) = v13;
          *(a2 + 24) = v10;
          *(a2 + 32) = 1;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v5)
      {
        (*(*v15 + 16))(v15);
        v16 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v16 = 0;
LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v7 = *a1;
    v8 = v16;
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v18)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_14:
  if (v20 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v22 == 1)
  {
    result = v21;
    v21 = 0;
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

void sub_19D76C7BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (*(v14 - 24) == 1)
  {
    v16 = *(v14 - 32);
    *(v14 - 32) = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformTextTrackData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 25));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 26));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 28));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
}

uint64_t IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  v13 = *(a2 + 98) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v13);
  v12 = (*(a2 + 98) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  v11 = (*(a2 + 98) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v11);
  v10 = (*(a2 + 98) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v10);
  v9 = (*(a2 + 98) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = (*(a2 + 98) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v7 = (*(a2 + 98) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v6 = *(a2 + 98) >> 7;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 99));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  if (*(a2 + 120))
  {
    v15 = 1;
    v5 = IPC::Encoder::operator<<<BOOL>(a1, &v15);
    return IPC::ArgumentCoder<WebCore::AdditionalNetworkLoadMetricsForWebInspector,void>::encode(v5, *(a2 + 120));
  }

  else
  {
    v14 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v77 = v4;
  v110 = v4;
  v107 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v76 = v5;
  v108 = v5;
  v105 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v75 = v6;
  v106 = v6;
  v103 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v74 = v7;
  v104 = v7;
  v101 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v73 = v8;
  v102 = v8;
  v99 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v72 = v9;
  v100 = v9;
  v97 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v71 = v10;
  v98 = v10;
  v95 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v70 = v11;
  v96 = v11;
  v93 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v69 = v12;
  v94 = v12;
  v91 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v68 = v13;
  v92 = v13;
  v89 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v67 = v14;
  v90 = v14;
  IPC::Decoder::decode<WTF::String>(a1, &v87);
  v16 = *(a1 + 1);
  v17 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v18 = *a1;
  v19 = v17 - *a1;
  v20 = v16 >= v19;
  v21 = v16 - v19;
  if (v20 && v21 > 1)
  {
    v22 = (v17 + 1);
    *(a1 + 2) = v17 + 1;
    if (v17)
    {
      v78 = *v17 | 0x10000;
      goto LABEL_6;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  v78 = 0;
  v16 = *(a1 + 1);
  v22 = *(a1 + 2);
  v18 = *a1;
LABEL_6:
  if (v16 <= &v22[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_104;
  }

  v23 = v22 + 1;
  *(a1 + 2) = v22 + 1;
  if (!v22)
  {
LABEL_104:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_105;
  }

  v24 = *v22;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_10;
  }

LABEL_105:
  IPC::Decoder::markInvalid(a1);
  v25 = 0;
  v16 = *(a1 + 1);
  v23 = *(a1 + 2);
  v18 = *a1;
LABEL_10:
  v66 = v25;
  if (v16 <= &v23[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_107;
  }

  v26 = v23 + 1;
  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_107:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_108;
  }

  v27 = *v23;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_14;
  }

LABEL_108:
  IPC::Decoder::markInvalid(a1);
  v28 = 0;
  v16 = *(a1 + 1);
  v26 = *(a1 + 2);
  v18 = *a1;
LABEL_14:
  v65 = v28;
  if (v16 <= &v26[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_110;
  }

  v29 = v26 + 1;
  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_110:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_111;
  }

  v30 = *v26;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_18;
  }

LABEL_111:
  IPC::Decoder::markInvalid(a1);
  v31 = 0;
  v16 = *(a1 + 1);
  v29 = *(a1 + 2);
  v18 = *a1;
LABEL_18:
  v64 = v31;
  if (v16 <= &v29[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_113;
  }

  v32 = v29 + 1;
  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_113:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_114;
  }

  v33 = *v29;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_22;
  }

LABEL_114:
  IPC::Decoder::markInvalid(a1);
  v34 = 0;
  v16 = *(a1 + 1);
  v32 = *(a1 + 2);
  v18 = *a1;
LABEL_22:
  v63 = v34;
  if (v16 <= &v32[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_116;
  }

  v35 = v32 + 1;
  *(a1 + 2) = v32 + 1;
  if (!v32)
  {
LABEL_116:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_117;
  }

  v36 = *v32;
  if (v36 < 2)
  {
    v37 = 1;
    goto LABEL_26;
  }

LABEL_117:
  IPC::Decoder::markInvalid(a1);
  v37 = 0;
  v16 = *(a1 + 1);
  v35 = *(a1 + 2);
  v18 = *a1;
LABEL_26:
  v62 = v37;
  if (v16 <= &v35[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_119;
  }

  v38 = v35 + 1;
  *(a1 + 2) = v35 + 1;
  if (!v35)
  {
LABEL_119:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_120;
  }

  v39 = *v35;
  if (v39 < 2)
  {
    v40 = 1;
    goto LABEL_30;
  }

LABEL_120:
  IPC::Decoder::markInvalid(a1);
  v40 = 0;
  v16 = *(a1 + 1);
  v38 = *(a1 + 2);
  v18 = *a1;
LABEL_30:
  v61 = v40;
  if (v16 <= &v38[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_122;
  }

  v41 = v38 + 1;
  *(a1 + 2) = v38 + 1;
  if (!v38)
  {
LABEL_122:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_123;
  }

  v42 = *v38;
  if (v42 < 2)
  {
    v43 = 1;
    goto LABEL_34;
  }

LABEL_123:
  IPC::Decoder::markInvalid(a1);
  v43 = 0;
  v16 = *(a1 + 1);
  v41 = *(a1 + 2);
  v18 = *a1;
LABEL_34:
  v60 = v43;
  if (v16 <= &v41[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_125;
  }

  v44 = v41 + 1;
  *(a1 + 2) = v41 + 1;
  if (!v41)
  {
LABEL_125:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_126;
  }

  if (*v41 < 2u)
  {
    v45 = 1;
    goto LABEL_38;
  }

LABEL_126:
  IPC::Decoder::markInvalid(a1);
  v45 = 0;
  v16 = *(a1 + 1);
  v44 = *(a1 + 2);
  v18 = *a1;
LABEL_38:
  if (v16 <= &v44[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_128;
  }

  v46 = v44 + 1;
  *(a1 + 2) = v44 + 1;
  if (!v44)
  {
LABEL_128:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_129;
  }

  if (*v44 >= 6u)
  {
LABEL_129:
    IPC::Decoder::markInvalid(a1);
    v16 = *(a1 + 1);
    v46 = *(a1 + 2);
    v47 = 1;
    v18 = *a1;
    goto LABEL_42;
  }

  v47 = 0;
LABEL_42:
  v48 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 < v48 - v18 || v16 - (v48 - v18) <= 7)
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_97;
  }

  v49 = v48 + 8;
  *(a1 + 2) = v48 + 8;
  if (!v48)
  {
LABEL_97:
    IPC::Decoder::markInvalid(a1);
    v50 = 0;
    v16 = *(a1 + 1);
    v49 = *(a1 + 2);
    v18 = *a1;
    goto LABEL_46;
  }

  v50 = 1;
LABEL_46:
  v51 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 < v51 - v18 || v16 - (v51 - v18) <= 7)
  {
    IPC::Decoder::markInvalid(a1);
  }

  else
  {
    v52 = (v51 + 8);
    *(a1 + 2) = v51 + 8;
    if (v51)
    {
      v53 = 1;
      goto LABEL_50;
    }
  }

  IPC::Decoder::markInvalid(a1);
  v53 = 0;
  v16 = *(a1 + 1);
  v52 = *(a1 + 2);
  v18 = *a1;
LABEL_50:
  if (v16 <= &v52[-v18])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_131;
  }

  *(a1 + 2) = v52 + 1;
  if (!v52)
  {
LABEL_131:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_132;
  }

  if (*v52 >= 2u)
  {
LABEL_132:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v85) = 0;
    v86 = 0;
    goto LABEL_92;
  }

  if (*v52)
  {
    goto LABEL_91;
  }

  v85 = 0;
LABEL_55:
  v86 = 1;
  if (*a1)
  {
    for (i = 1; (v77 & 1) == 0 || (v76 & 1) == 0 || (v75 & 1) == 0 || (v74 & 1) == 0 || (v73 & 1) == 0 || (v72 & 1) == 0 || (v71 & 1) == 0 || (v70 & 1) == 0 || (v69 & 1) == 0 || (v68 & 1) == 0 || (v67 & 1) == 0 || (v88 & 1) == 0 || (v78 & 0x10000) == 0 || (v66 & 1) == 0 || (v65 & 1) == 0 || (v64 & 1) == 0 || (v63 & 1) == 0 || (v62 & 1) == 0 || (v61 & 1) == 0 || (v60 & 1) == 0 || (v45 & 1) == 0 || v47 || (v50 & 1) == 0 || (v53 & 1) == 0 || (i & 1) == 0; i = 0)
    {
      __break(1u);
LABEL_91:
      IPC::ArgumentCoder<WebCore::AdditionalNetworkLoadMetricsForWebInspector,void>::decode(v79, a1);
      LOBYTE(v85) = 0;
      v86 = 0;
      if (BYTE8(v79[0]) == 1)
      {
        v85 = *&v79[0];
        goto LABEL_55;
      }

LABEL_92:
      result = IPC::Decoder::markInvalid(a1);
      if (!*a1)
      {
        *a2 = 0;
        *(a2 + 128) = 0;
        goto LABEL_85;
      }
    }

    result = WebCore::NetworkLoadMetrics::NetworkLoadMetrics();
    v56 = v79[3];
    *(a2 + 32) = v79[2];
    *(a2 + 48) = v56;
    *(a2 + 64) = v79[4];
    v57 = v79[1];
    *a2 = v79[0];
    *(a2 + 16) = v57;
    v58 = v81;
    *(a2 + 80) = v80;
    *(a2 + 88) = v58;
    *(a2 + 96) = v82;
    v59 = v84;
    *(a2 + 112) = v83;
    *(a2 + 120) = v59;
    *(a2 + 128) = 1;
    if ((v86 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }

  result = v85;
  v85 = 0;
  if (result)
  {
    result = WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(result, v15);
  }

LABEL_85:
  if (v88 == 1)
  {
    result = v87;
    v87 = 0;
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

void sub_19D76D2FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, WTF::StringImpl *a56, char a57)
{
  if (a57 == 1 && a56 && atomic_fetch_add_explicit(a56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a56, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::AdditionalNetworkLoadMetricsForWebInspector,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 40);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 56);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 88));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 96));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::AdditionalNetworkLoadMetricsForWebInspector,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v6)
      {
        (*(*v31 + 16))(v31);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_79:
        *a2 = 0;
        *(a2 + 1) = 0;
        v32 = *(a2 + 3);
        if (v32)
        {
          if (v6)
          {
            (*(*v32 + 16))(v32, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_82:
            *a2 = 0;
            *(a2 + 1) = 0;
            v33 = *(a2 + 3);
            if (v33 && v6)
            {
              (*(*v33 + 16))(v33, v5);
            }

            v8 = 0;
            goto LABEL_5;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_79;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_79;
  }

  v7 = *v4;
  if (v7 >= 4)
  {
    goto LABEL_82;
  }

  v8 = v7 | 0x100;
LABEL_5:
  v51 = v8;
  IPC::Decoder::decode<WTF::String>(a2, &v49);
  IPC::Decoder::decode<WTF::String>(a2, &v47);
  IPC::Decoder::decode<WTF::String>(a2, &v45);
  IPC::Decoder::decode<WTF::String>(a2, &v43);
  result = IPC::Decoder::decode<WebCore::HTTPHeaderMap>(v40, a2);
  v10 = *(a2 + 1);
  v11 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *a2;
  v13 = v11 - *a2;
  v14 = v10 >= v13;
  v15 = v10 - v13;
  if (!v14 || v15 <= 7)
  {
    goto LABEL_54;
  }

  *(a2 + 2) = v11 + 8;
  if (!v11)
  {
    goto LABEL_57;
  }

  v16 = 1;
  v17 = v12;
  while (1)
  {
    v18 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 < v18 - v12 || v10 - (v18 - v12) <= 7)
    {
      v37 = v16;
      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26)
      {
        if (v10)
        {
          (*(*v26 + 16))(v26, v17);
          v17 = *a2;
          v10 = *(a2 + 1);
LABEL_63:
          *a2 = 0;
          *(a2 + 1) = 0;
          result = *(a2 + 3);
          if (result)
          {
            if (v10)
            {
              result = (*(*result + 16))(result, v17);
              v19 = 0;
              v17 = *a2;
              v10 = *(a2 + 1);
              v12 = *a2;
              goto LABEL_66;
            }

            v17 = 0;
          }

          else
          {
            v17 = 0;
            v10 = 0;
          }

          v12 = 0;
          v19 = 0;
LABEL_66:
          v16 = v37;
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 0;
      }

      v17 = 0;
      goto LABEL_63;
    }

    *(a2 + 2) = v18 + 8;
    if (!v18)
    {
      v37 = v16;
      goto LABEL_63;
    }

    v19 = 1;
LABEL_14:
    v20 = (*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 < v20 - v12 || v10 - (v20 - v12) <= 7)
    {
      v36 = v19;
      v38 = v16;
      *a2 = 0;
      *(a2 + 1) = 0;
      v27 = *(a2 + 3);
      if (!v27)
      {
        v10 = 0;
LABEL_69:
        v17 = 0;
        goto LABEL_70;
      }

      if (!v10)
      {
        goto LABEL_69;
      }

      (*(*v27 + 16))(v27, v17);
      v17 = *a2;
      v10 = *(a2 + 1);
    }

    else
    {
      v21 = (v20 + 8);
      *(a2 + 2) = v20 + 8;
      if (v20)
      {
        v22 = 1;
        goto LABEL_18;
      }

      v36 = v19;
      v38 = v16;
    }

LABEL_70:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (!v28 || !v10)
    {
      v35 = 0;
      v29 = 0;
      v17 = 0;
LABEL_72:
      *a2 = 0;
      *(a2 + 1) = 0;
      v30 = *(a2 + 3);
      if (v30 && v29)
      {
        (*(*v30 + 16))(v30, v17, v29);
        v17 = *a2;
        v10 = *(a2 + 1);
      }

      else
      {
        v10 = 0;
        v17 = 0;
      }

      goto LABEL_74;
    }

    result = (*(*v28 + 16))(v28, v17);
    v22 = 0;
    v12 = *a2;
    v10 = *(a2 + 1);
    v21 = *(a2 + 2);
    v17 = *a2;
    v16 = v38;
    v19 = v36;
LABEL_18:
    if (v10 <= &v21[-v12])
    {
      v35 = v22;
      v36 = v19;
      v38 = v16;
      v29 = 0;
      v34 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      if (v34 && v10)
      {
        (*(*v34 + 16))(v34, v17);
        v17 = *a2;
        v29 = *(a2 + 1);
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_72;
    }

    *(a2 + 2) = v21 + 1;
    if (!v21)
    {
      v35 = v22;
      v36 = v19;
      v38 = v16;
      v29 = v10;
      goto LABEL_72;
    }

    if (*v21 < 2u)
    {
      v23 = 1;
      goto LABEL_22;
    }

    v35 = v22;
    v36 = v19;
    v38 = v16;
LABEL_74:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v10)
    {
      break;
    }

    result = (*(*result + 16))(result, v17);
    v23 = 0;
    v12 = *a2;
    v16 = v38;
    v19 = v36;
    v22 = v35;
LABEL_22:
    if (!v12)
    {
      break;
    }

    v12 = HIBYTE(v51);
    if ((v51 & 0x100) != 0)
    {
      v12 = v50;
      if (v50)
      {
        v12 = v48;
        if (v48)
        {
          v12 = v46;
          if (v46)
          {
            v12 = v44;
            if (v44)
            {
              v12 = v42;
              if (v42 & 1) != 0 && (v16 & 1) != 0 && (v19 & 1) != 0 && (v22 & 1) != 0 && (v23)
              {
                result = WebCore::AdditionalNetworkLoadMetricsForWebInspector::create();
                *a1 = v39;
                *(a1 + 8) = 1;
                goto LABEL_34;
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_54:
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (!v25)
    {
      v10 = 0;
LABEL_56:
      v12 = 0;
      goto LABEL_57;
    }

    if (!v10)
    {
      goto LABEL_56;
    }

    (*(*v25 + 16))(v25, v12);
    v12 = *a2;
    v10 = *(a2 + 1);
LABEL_57:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      v17 = 0;
      v10 = 0;
      goto LABEL_59;
    }

    if (v10)
    {
      result = (*(*result + 16))(result, v12);
      v16 = 0;
      v17 = *a2;
      v10 = *(a2 + 1);
      v12 = *a2;
    }

    else
    {
      v17 = 0;
LABEL_59:
      v12 = 0;
      v16 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_34:
  if (v42 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v41, v17);
    result = WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v40, v24);
  }

  if (v44 == 1)
  {
    result = v43;
    v43 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v46 == 1)
  {
    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v48 == 1)
  {
    result = v47;
    v47 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v50 == 1)
  {
    result = v49;
    v49 = 0;
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

void sub_19D76DB7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&a21, a2);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&a19, v25);
  }

  if (*(v23 - 80) == 1)
  {
    v26 = *(v23 - 88);
    *(v23 - 88) = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }
    }
  }

  if (*(v23 - 64) == 1)
  {
    v27 = *(v23 - 72);
    *(v23 - 72) = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, a2);
      }
    }
  }

  if (*(v23 - 48) == 1)
  {
    v28 = *(v23 - 56);
    *(v23 - 56) = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }
    }
  }

  if (*(v23 - 32) == 1)
  {
    v29 = *(v23 - 40);
    *(v23 - 40) = 0;
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

WTF *IPC::ArgumentCoder<WebCore::NowPlayingInfoArtwork,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));

  return IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, (a2 + 16));
}

WTF *IPC::ArgumentCoder<WebCore::NowPlayingMetadata,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 3);

  return IPC::ArgumentCoder<std::optional<WebCore::NowPlayingInfoArtwork>,void>::encode<IPC::Encoder,std::optional<WebCore::NowPlayingInfoArtwork> const&>(a1, (a2 + 4));
}

void IPC::ArgumentCoder<WebCore::NowPlayingMetadata,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  IPC::Decoder::decode<WTF::String>(v7, &v41);
  IPC::Decoder::decode<WTF::String>(v7, &v39);
  IPC::Decoder::decode<WTF::String>(v7, &v37);
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *v7;
  if (v9 <= &v10[-*v7])
  {
    *v7 = 0;
    *(v7 + 1) = 0;
    v29 = *(v7 + 3);
    if (v29)
    {
      if (v9)
      {
        (*(*v29 + 16))(v29);
        v9 = *(v7 + 1);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    *(v7 + 2) = v10 + 1;
    if (v10)
    {
      v12 = *v10;
      if (v12 >= 2)
      {
        goto LABEL_61;
      }

      if (!v12)
      {
        v15 = 0;
        v2 = 0;
        v6 = 1;
        goto LABEL_20;
      }

      IPC::Decoder::decode<WTF::String>(v7, v31);
      IPC::Decoder::decode<WTF::String>(v7, &v47);
      IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(v7, &v45);
      v3 = *v7;
      if (*v7)
      {
        if ((v31[1] & 1) == 0)
        {
          goto LABEL_64;
        }

        v2 = v31[0];
        v31[0] = 0;
        if ((v48 & 1) == 0)
        {
          goto LABEL_64;
        }

        v5 = v47;
        v47 = 0;
        if ((v46 & 1) == 0)
        {
          goto LABEL_64;
        }

        v4 = v45;
LABEL_10:
        if (v48 == 1)
        {
          v13 = v47;
          v47 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v11);
            }
          }
        }

        if (LOBYTE(v31[1]) == 1 && (v14 = v31[0], v31[0] = 0, v14) && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v11);
          if (v3)
          {
            goto LABEL_18;
          }
        }

        else if (v3)
        {
LABEL_18:
          v15 = 0;
          v6 = 0;
          goto LABEL_20;
        }

        goto LABEL_60;
      }

      if (v46)
      {
        v28 = v45;
        v45 = 0;
        if (v28)
        {
          if (*(v28 + 4) != 1)
          {
            v2 = 0;
            --*(v28 + 4);
            goto LABEL_10;
          }

          (*(*v28 + 8))(v28);
        }
      }

      v2 = 0;
      goto LABEL_10;
    }
  }

  *v7 = 0;
  *(v7 + 1) = 0;
  v30 = *(v7 + 3);
  if (v30)
  {
    if (v9)
    {
      (*(*v30 + 16))(v30);
LABEL_60:
      v11 = *v7;
      v9 = *(v7 + 1);
      goto LABEL_61;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
LABEL_61:
  *v7 = 0;
  *(v7 + 1) = 0;
  v25 = *(v7 + 3);
  if (v25 && v9)
  {
    (*(*v25 + 16))(v25, v11);
  }

  v11 = *v7;
  v26 = *(v7 + 1);
  *v7 = 0;
  *(v7 + 1) = 0;
  v27 = *(v7 + 3);
  if (v27 && v26)
  {
    (*(*v27 + 16))(v27, v11);
  }

  v2 = 0;
  v15 = 1;
LABEL_20:
  if (*v7)
  {
    if (v44)
    {
      v16 = v43;
      v43 = 0;
      if (v42)
      {
        v17 = v41;
        v41 = 0;
        if (v40)
        {
          v18 = v39;
          v39 = 0;
          if (v38)
          {
            v19 = v37;
            v37 = 0;
            if (!v15)
            {
              LOBYTE(v33) = 0;
              v36 = 0;
              if (v6)
              {
                v3 = v4;
                v7 = v5;
              }

              else
              {
                v3 = 0;
                v7 = 0;
                v33 = v2;
                v34 = v5;
                v35 = v4;
                v36 = 1;
                v2 = 0;
              }

              *a2 = v16;
              *(a2 + 8) = v17;
              *v31 = 0u;
              v32 = 0u;
              *(a2 + 16) = v18;
              *(a2 + 24) = v19;
              *(a2 + 32) = 0;
              *(a2 + 56) = 0;
              if ((v6 & 1) == 0)
              {
                v20 = v33;
                v33 = 0;
                v34 = 0;
                *(a2 + 32) = v20;
                *(a2 + 40) = v5;
                v35 = 0;
                *(a2 + 48) = v4;
                *(a2 + 56) = 1;
              }

              *(a2 + 64) = 1;
              WebCore::NowPlayingMetadata::~NowPlayingMetadata(v31, v11);
              goto LABEL_32;
            }
          }
        }
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *a2 = 0;
  *(a2 + 64) = 0;
  v3 = v4;
  v7 = v5;
LABEL_32:
  if ((v15 | v6))
  {
    goto LABEL_42;
  }

  if (!v3)
  {
LABEL_36:
    if (v7)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (*(v3 + 4) != 1)
  {
    --*(v3 + 4);
    goto LABEL_36;
  }

LABEL_65:
  (*(*v3 + 8))(v3);
  if (v7)
  {
LABEL_37:
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v11);
    }
  }

LABEL_39:
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v11);
  }

LABEL_42:
  if (v38 == 1)
  {
    v21 = v37;
    v37 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v11);
      }
    }
  }

  if (v40 == 1)
  {
    v22 = v39;
    v39 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v11);
      }
    }
  }

  if (v42 == 1)
  {
    v23 = v41;
    v41 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v11);
      }
    }
  }

  if (v44 == 1)
  {
    v24 = v43;
    v43 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v11);
      }
    }
  }
}

void sub_19D76E220(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20, WTF::StringImpl *a21, char a22, WTF::StringImpl *a23, char a24)
{
  if (*(v24 - 72))
  {
    v26 = *(v24 - 80);
    *(v24 - 80) = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }
    }
  }

  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if ((a18 & 1) != 0 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (a22 == 1 && a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a24 == 1 && a23 && atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a23, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::NowPlayingMetadata,void>::encode(a1, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaUniqueIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 96));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 104));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 105));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 106));
}

void IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::NowPlayingMetadata,void>::decode(a1, &v83);
  if ((v89 & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v4 = IPC::Decoder::decode<unsigned long long>(a1);
    v6 = v5;
    v7 = IPC::Decoder::decode<unsigned long long>(a1);
    v9 = v8;
    v10 = IPC::Decoder::decode<unsigned long long>(a1);
    v13 = v12;
    v14 = *(a1 + 1);
    v15 = *(a1 + 2);
    v16 = *a1;
    v74 = v4;
    v75 = v6;
    v72 = v7;
    v73 = v9;
    v70 = v10;
    v71 = v13;
    if (v14 <= &v15[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v50 = *(a1 + 3);
      if (v50)
      {
        if (v14)
        {
          (*(*v50 + 16))(v50);
          v14 = *(a1 + 1);
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v17 = v15 + 1;
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        v18 = *v15;
        if (v18 < 2)
        {
          v19 = 1;
          goto LABEL_6;
        }

        goto LABEL_66;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v51 = *(a1 + 3);
    if (!v51)
    {
      v14 = 0;
LABEL_65:
      v16 = 0;
      v18 = 0;
      goto LABEL_66;
    }

    if (!v14)
    {
      goto LABEL_65;
    }

    (*(*v51 + 16))(v51);
    v18 = 0;
    v16 = *a1;
    v14 = *(a1 + 1);
LABEL_66:
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52)
    {
      if (v14)
      {
        (*(*v52 + 16))(v52, v16);
        v16 = *a1;
        v14 = *(a1 + 1);
        goto LABEL_69;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
LABEL_69:
    v19 = 0;
    v17 = *(a1 + 2);
LABEL_6:
    v20 = v18 ? v19 : 0;
    if (v14 <= v17 - v16)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v53 = *(a1 + 3);
      if (v53)
      {
        if (v14)
        {
          (*(*v53 + 16))(v53);
          v16 = *a1;
          v14 = *(a1 + 1);
          goto LABEL_73;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
    }

    else
    {
      *(a1 + 2) = v17 + 1;
      if (v17)
      {
        v21 = *v17;
        if (v21 >= 2)
        {
          goto LABEL_123;
        }

        if (v21)
        {
          v22 = 0;
LABEL_15:
          v24 = 1;
          goto LABEL_16;
        }

        v22 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
        if (v23)
        {
          goto LABEL_15;
        }

        goto LABEL_122;
      }
    }

LABEL_73:
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (!v54)
    {
      v14 = 0;
LABEL_75:
      v16 = 0;
      goto LABEL_123;
    }

    if (!v14)
    {
      goto LABEL_75;
    }

    (*(*v54 + 16))(v54, v16);
LABEL_122:
    v16 = *a1;
    v14 = *(a1 + 1);
LABEL_123:
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66 && v14)
    {
      (*(*v66 + 16))(v66, v16);
    }

    v67 = *a1;
    v68 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v68)
      {
        (*(*v22 + 16))(v22, v67);
      }

      v22 = 0;
    }

    v24 = 0;
LABEL_16:
    v25 = *(a1 + 1);
    v26 = *(a1 + 2);
    v27 = *a1;
    if (v25 <= &v26[-*a1])
    {
      v69 = v22;
      *a1 = 0;
      *(a1 + 1) = 0;
      v55 = *(a1 + 3);
      if (v55)
      {
        if (v25)
        {
          (*(*v55 + 16))(v55);
          v27 = *a1;
          v25 = *(a1 + 1);
          goto LABEL_79;
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = 0;
    }

    else
    {
      v28 = v26 + 1;
      *(a1 + 2) = v26 + 1;
      if (v26)
      {
        v29 = *v26;
        if (v29 < 2)
        {
          v30 = 1;
          goto LABEL_20;
        }

        v69 = v22;
        goto LABEL_83;
      }

      v69 = v22;
    }

LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (!v56)
    {
      v25 = 0;
LABEL_81:
      v27 = 0;
      v29 = 0;
      goto LABEL_83;
    }

    if (!v25)
    {
      goto LABEL_81;
    }

    (*(*v56 + 16))(v56, v27);
    v29 = 0;
    v27 = *a1;
    v25 = *(a1 + 1);
LABEL_83:
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (!v57 || !v25)
    {
      v31 = 0;
      v30 = 0;
      v58 = 0;
      v27 = 0;
LABEL_85:
      *a1 = 0;
      *(a1 + 1) = 0;
      v59 = *(a1 + 3);
      if (v59 && v58)
      {
        (*(*v59 + 16))(v59, v27, v58);
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

      goto LABEL_88;
    }

    (*(*v57 + 16))(v57, v27);
    v30 = 0;
    v27 = *a1;
    v25 = *(a1 + 1);
    v28 = *(a1 + 2);
    v22 = v69;
LABEL_20:
    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v25 <= v28 - v27)
    {
      v69 = v22;
      v58 = 0;
      v64 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v64 && v25)
      {
        (*(*v64 + 16))(v64);
        v27 = *a1;
        v58 = *(a1 + 1);
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_85;
    }

    v32 = v28 + 1;
    *(a1 + 2) = v28 + 1;
    if (!v28)
    {
      v69 = v22;
      v58 = v25;
      goto LABEL_85;
    }

    v33 = *v28;
    if (v33 < 2)
    {
      v34 = 1;
      goto LABEL_27;
    }

    v69 = v22;
LABEL_88:
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (!v60 || !v25)
    {
      v35 = 0;
      v34 = 0;
      v61 = 0;
      v27 = 0;
LABEL_90:
      *a1 = 0;
      *(a1 + 1) = 0;
      v62 = *(a1 + 3);
      if (v62 && v61)
      {
        (*(*v62 + 16))(v62, v27, v61);
        v36 = 0;
        v27 = *a1;
        v25 = *(a1 + 1);
      }

      else
      {
        v25 = 0;
        v27 = 0;
        v36 = 0;
      }

      goto LABEL_93;
    }

    (*(*v60 + 16))(v60, v27);
    v34 = 0;
    v27 = *a1;
    v25 = *(a1 + 1);
    v32 = *(a1 + 2);
    v22 = v69;
LABEL_27:
    if (v33)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v25 <= v32 - v27)
    {
      v69 = v22;
      v61 = 0;
      v65 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v65 && v25)
      {
        (*(*v65 + 16))(v65);
        v27 = *a1;
        v61 = *(a1 + 1);
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_90;
    }

    *(a1 + 2) = v32 + 1;
    if (!v32)
    {
      v69 = v22;
      v61 = v25;
      goto LABEL_90;
    }

    v36 = *v32;
    if (v36 >= 2)
    {
      v69 = v22;
LABEL_93:
      *a1 = 0;
      *(a1 + 1) = 0;
      v63 = *(a1 + 3);
      if (!v63 || !v25)
      {
        goto LABEL_94;
      }

      (*(*v63 + 16))(v63, v27);
      v37 = 0;
      v27 = *a1;
      v22 = v69;
      goto LABEL_34;
    }

    v37 = 1;
LABEL_34:
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (!v27)
    {
LABEL_94:
      *a2 = 0;
      *(a2 + 112) = 0;
      goto LABEL_52;
    }

    v39 = v89;
    if (v89)
    {
      v40 = v83;
      v41 = v84;
      v83 = 0u;
      v84 = 0u;
      LOBYTE(v77) = 0;
      v80 = 0;
      v42 = v88;
      if (v88 == 1)
      {
        v43 = v85;
        v39 = v86;
        v85 = 0;
        v86 = 0;
        v77 = v43;
        v78 = v39;
        v11 = v87;
        v87 = 0;
        v79 = v11;
        v80 = 1;
      }

      if (v75)
      {
        *&v81 = v74;
        if (v73)
        {
          *(&v81 + 1) = v72;
          if (v71)
          {
            *v82 = v70;
            if (v19)
            {
              v82[8] = v20;
              if (v24)
              {
                *&v82[16] = v22;
                if (v30)
                {
                  v82[24] = v31;
                  if (v34)
                  {
                    v82[25] = v35;
                    if (v37)
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

    __break(1u);
LABEL_56:
    v46 = *a1;
    v47 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48)
    {
      v49 = v47 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (!v49)
    {
      (*(*v48 + 16))(v48, v46);
    }
  }

  v82[26] = v38;
  memset(v76, 0, sizeof(v76));
  *a2 = v40;
  *(a2 + 16) = v41;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  if (v42)
  {
    v44 = v77;
    v77 = 0;
    v78 = 0;
    *(a2 + 32) = v44;
    *(a2 + 40) = v39;
    v79 = 0;
    *(a2 + 48) = v11;
    *(a2 + 56) = 1;
  }

  v45 = *v82;
  *(a2 + 64) = v81;
  *(a2 + 80) = v45;
  *(a2 + 91) = *&v82[11];
  *(a2 + 112) = 1;
  WebCore::NowPlayingMetadata::~NowPlayingMetadata(v76, v27);
LABEL_52:
  if (v89 == 1)
  {
    WebCore::NowPlayingMetadata::~NowPlayingMetadata(&v83, v27);
  }
}

void sub_19D76EBC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 96) == 1)
  {
    WebCore::NowPlayingMetadata::~NowPlayingMetadata((v2 - 160), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 34));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 36));

  return IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 38));
}

uint64_t IPC::ArgumentCoder<WebCore::UserScript,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 48);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 64);
  v5 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 81);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 82));
}

void IPC::ArgumentCoder<WebCore::UserScript,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v33);
  v4 = v34;
  if ((v34 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
  }

  IPC::Decoder::decode<WTF::URL>(a1, v31);
  v5 = v4 ^ 1;
  if (((v4 ^ 1) & 1) == 0 && (v32 & 1) == 0)
  {
    v5 = 1;
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v29);
  if (((v5 | v30) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 2);
    v5 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v27);
  if (((v5 | v28) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 3);
    LOBYTE(v5) = 1;
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_50:
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v8 = *a1;
        v6 = *(a1 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_53;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_50;
  }

  v9 = *v7;
  if (v9 < 2)
  {
    v10 = v9 != 0;
    v11 = 1;
    goto LABEL_14;
  }

LABEL_53:
  *a1 = 0;
  *(a1 + 1) = 0;
  v22 = *(a1 + 3);
  if (v22)
  {
    if (v6)
    {
      (*(*v22 + 16))(v22, v8);
      v23 = *(a1 + 3);
      v24 = *a1;
      v25 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v23)
      {
        if (v25)
        {
          (*(*v23 + 16))(v23, v24);
        }
      }
    }
  }

  if (v5)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 4);
    v10 = 0;
    v11 = 0;
    LOBYTE(v5) = 1;
  }

LABEL_14:
  v12 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  if (v12 > 0xFFu)
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  if ((v13 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 5);
    LOBYTE(v5) = 1;
  }

  v15 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  if (v15 > 0xFFu)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  if ((v16 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 6);
  }

  if (*a1)
  {
    if ((v34 & 1) != 0 && (v32 & 1) != 0 && (v30 & 1) != 0 && (v28 & 1) != 0 && (v11 & 1) != 0 && v12 > 0xFFu && v15 > 0xFFu)
    {
      MEMORY[0x19EB02F10](v26, &v33, v31, v29, v27, v10, v12 & 1, v15);
      WebCore::UserScript::UserScript(a2, v26);
      a2[88] = 1;
      WebCore::UserScript::~UserScript(v26, v17);
      goto LABEL_33;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[88] = 0;
LABEL_33:
  if (v28 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v14);
  }

  if (v30 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v14);
  }

  if (v32 == 1)
  {
    v18 = v31[0];
    v31[0] = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v14);
      }
    }
  }

  if (v34 == 1)
  {
    v19 = v33;
    v33 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v14);
      }
    }
  }
}

void sub_19D76F0D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a23 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  }

  if (a29 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a25, a2);
  }

  if (*(v29 - 88) == 1)
  {
    v31 = *(v29 - 128);
    *(v29 - 128) = 0;
    if (v31)
    {
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, a2);
      }
    }
  }

  if (*(v29 - 72) == 1)
  {
    v32 = *(v29 - 80);
    *(v29 - 80) = 0;
    if (v32)
    {
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::optional[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  return a1;
}

void sub_19D76F1EC(_Unwind_Exception *exception_object, void *a2)
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

WTF *IPC::ArgumentCoder<WebCore::DragImage,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    ++*v4;
  }

  v7 = v4;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(a1, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v5);
  }

  return IPC::ArgumentCoder<std::optional<WebCore::Path>,void>::encode<IPC::Encoder,std::optional<WebCore::Path> const&>(a1, (a2 + 16));
}

void sub_19D76F280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::TextIndicator *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::DragItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::DragImage,void>::encode(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 96));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 116));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 128));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 136));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 176));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 192));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 200));

  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 208));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DragItem,void>::decode@<X0>(WTF *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>(a1, v63);
  IPC::Decoder::decode<std::optional<WebCore::Path>>(&v87, a1);
  if (!*a1)
  {
    goto LABEL_72;
  }

  if ((v63[1] & 1) == 0)
  {
    goto LABEL_71;
  }

  v4 = v63[0];
  v63[0] = 0;
  if ((v93 & 1) == 0)
  {
    goto LABEL_71;
  }

  v70[0] = 0;
  v70[1] = v4;
  std::__optional_move_base<WebCore::Path,false>::__optional_move_base[abi:sn200100](v71, &v87);
  WebCore::DragImage::DragImage();
  v86 = 1;
  MEMORY[0x19EB0FB20](v70);
  while (1)
  {
    if (v93 == 1 && v92 == 1 && v91 >= 2u && v91 != 255)
    {
      v5 = v87;
      v87 = 0;
      if (v5)
      {
        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }
      }
    }

    if (LOBYTE(v63[1]) == 1)
    {
      v6 = v63[0];
      v63[0] = 0;
      if (v6)
      {
        WTF::RefCounted<WebCore::TextIndicator>::deref(v6);
      }
    }

    if ((v86 & 1) == 0)
    {
      v40 = *a1;
      v41 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v42 = *(a1 + 3);
      if (v42)
      {
        if (v41)
        {
          (*(*v42 + 16))(v42, v40);
        }
      }
    }

    v7 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
    v9 = v8;
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *a1;
    if (v10 <= &v11[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v44 = *(a1 + 3);
      if (v44)
      {
        if (v10)
        {
          (*(*v44 + 16))(v44);
          v10 = *(a1 + 1);
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_82:
      *a1 = 0;
      *(a1 + 1) = 0;
      v45 = *(a1 + 3);
      if (v45)
      {
        if (v10)
        {
          (*(*v45 + 16))(v45);
          v12 = *a1;
          v10 = *(a1 + 1);
LABEL_85:
          *a1 = 0;
          *(a1 + 1) = 0;
          v46 = *(a1 + 3);
          if (v46 && v10)
          {
            (*(*v46 + 16))(v46, v12);
          }

          v16 = 0;
          goto LABEL_100;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
      goto LABEL_85;
    }

    v13 = v11 + 1;
    *(a1 + 2) = v11 + 1;
    if (!v11)
    {
      goto LABEL_82;
    }

    if (*v11 >= 2u)
    {
      goto LABEL_85;
    }

    if (!*v11)
    {
      v16 = 0;
      LOWORD(v14) = 0;
      v15 = 0x10000;
      goto LABEL_26;
    }

    if (v10 <= &v13[-v12])
    {
      v50 = 0;
      v51 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v52 = *(a1 + 3);
      if (v52)
      {
        (*(*v52 + 16))(v52);
        v51 = *a1;
        v50 = *(a1 + 1);
      }
    }

    else
    {
      *(a1 + 2) = v11 + 2;
      if (v11 != -1)
      {
        v14 = *v13;
        if ((v14 - 1) <= 0x3F && ((1 << (v14 - 1)) & 0x800000008000808BLL) != 0)
        {
          v15 = 0x10000;
          v16 = 256;
          goto LABEL_26;
        }

        goto LABEL_98;
      }

      v50 = v10;
      v51 = v12;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v53 = *(a1 + 3);
    if (v53 && v50)
    {
      (*(*v53 + 16))(v53, v51, v50);
      v12 = *a1;
      v10 = *(a1 + 1);
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

LABEL_98:
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54 && v10)
    {
      (*(*v54 + 16))(v54, v12);
    }

    v16 = 256;
LABEL_100:
    v55 = *a1;
    v56 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v57 = *(a1 + 3);
    if (v57 && v56)
    {
      (*(*v57 + 16))(v57, v55);
    }

    LOWORD(v14) = 0;
    v15 = 0;
LABEL_26:
    v17 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
    v62 = v18;
    v19 = v17;
    v60 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
    v61 = v20;
    v59 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
    v22 = v21;
    IPC::Decoder::decode<WTF::String>(a1, &v68);
    IPC::Decoder::decode<WTF::URL>(a1, &v87);
    IPC::Decoder::decode<WebCore::IntRect>(a1, &v66);
    v23 = v9;
    v24 = *(a1 + 1);
    v25 = *(a1 + 2);
    v26 = *a1;
    v58 = a2;
    v27 = v7;
    if (v24 <= &v25[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v47 = *(a1 + 3);
      if (v47)
      {
        if (v24)
        {
          (*(*v47 + 16))(v47);
          v24 = *(a1 + 1);
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v25 + 1;
      if (v25)
      {
        v28 = *v25;
        if (v28 < 2)
        {
          a2 = 1;
          goto LABEL_30;
        }

        goto LABEL_92;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (!v48)
    {
      v24 = 0;
LABEL_91:
      v26 = 0;
      v28 = 0;
      goto LABEL_92;
    }

    if (!v24)
    {
      goto LABEL_91;
    }

    (*(*v48 + 16))(v48);
    v28 = 0;
    v26 = *a1;
    v24 = *(a1 + 1);
LABEL_92:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49 && v24)
    {
      (*(*v49 + 16))(v49, v26);
    }

    a2 = 0;
LABEL_30:
    if (v28)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    result = IPC::ArgumentCoder<WebCore::PromisedAttachmentInfo,void>::decode(a1, v63);
    if ((v65 & 1) == 0)
    {
      v31 = *a1;
      v43 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v43)
        {
          result = (*(*result + 16))(result, v31);
        }
      }
    }

    if (!*a1)
    {
      *v58 = 0;
      v58[392] = 0;
      goto LABEL_56;
    }

    if (v86)
    {
      WebCore::DragImage::DragImage();
      if (v23)
      {
        v72 = v27;
        if ((v16 | v15) >> 16)
        {
          v73 = v14 | v16;
          if (v62)
          {
            v74 = v19;
            if (v61)
            {
              v75 = v60;
              if (v22)
              {
                v76 = v59;
                if (v69)
                {
                  v32 = v68;
                  v68 = 0;
                  v77 = v32;
                  if (v90)
                  {
                    v33 = v87;
                    v87 = 0;
                    v78 = v33;
                    v79 = v88;
                    v80 = v89;
                    LODWORD(v88) = v88 & 0xFFFFFFFE;
                    if (v67)
                    {
                      v81 = v66;
                      if (a2)
                      {
                        v82 = v29;
                        if (v65)
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
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v85[0] = 0;
    v86 = 0;
  }

  v34 = *v63;
  v63[0] = 0;
  v63[1] = 0;
  *v83 = v34;
  *&v34 = v64;
  v64 = 0;
  v83[2] = v34;
  WebCore::PasteboardWriterData::PasteboardWriterData(v84);
  *(WebCore::DragItem::DragItem(v58, v70) + 392) = 1;
  WebCore::PasteboardWriterData::~PasteboardWriterData(v84);
  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83[1], v35);
  v37 = v83[0];
  v83[0] = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v36);
  }

  v38 = v78;
  v78 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v36);
  }

  v39 = v77;
  v77 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v36);
  }

  result = MEMORY[0x19EB0FB20](v70);
LABEL_56:
  if (v65 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63[1], v31);
    result = v63[0];
    v63[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  if (v90 == 1)
  {
    result = v87;
    v87 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  if (v69 == 1)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  if (v86 == 1)
  {
    return MEMORY[0x19EB0FB20](v85);
  }

  return result;
}

void sub_19D76FBAC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, char a24)
{
  if (*(v24 - 144) == 1)
  {
    v26 = *(v24 - 184);
    *(v24 - 184) = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }
    }
  }

  if (a24 == 1 && a23 && atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a23, a2);
  }

  if (LOBYTE(STACK[0x260]) == 1)
  {
    MEMORY[0x19EB0FB20](&STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::Filter,void>::encode(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 48) == 1)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);

    return IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(v3, a2);
  }

  else if (!*(a2 + 48))
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);

    return IPC::ArgumentCoder<WebCore::CSSFilter,void>::encode(v3, a2);
  }

  return result;
}

WTF *IPC::ArgumentCoder<WebCore::Filter,void>::encode(WTF *a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    if (!*(a1 + 1))
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 1) = 0;
      return IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(a1, a2);
    }

    **a1 = 1;
    v2 = *(a1 + 1);
    if (v2)
    {
      ++*a1;
      *(a1 + 1) = v2 - 1;
      return IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(a1, a2);
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(a2 + 48))
  {
    if (*(a1 + 1))
    {
      **a1 = 0;
      v3 = *(a1 + 1);
      if (!v3)
      {
        goto LABEL_12;
      }

      ++*a1;
      *(a1 + 1) = v3 - 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
    }

    return IPC::ArgumentCoder<WebCore::CSSFilter,void>::encode(a1, a2);
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::Filter,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<IPC::WebCore_Filter_Subclass>(a1);
  if (!*a1)
  {
    goto LABEL_17;
  }

  if ((result & 0x100) != 0 && !result)
  {
    result = IPC::Decoder::decode<WTF::Ref<WebCore::CSSFilter,WTF::RawPtrTraits<WebCore::CSSFilter>,WTF::DefaultRefDerefTraits<WebCore::CSSFilter>>>(a1, &v9);
    if (*a1)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }

      v8 = v9;
      v9 = 0;
      *a2 = v8;
      *(a2 + 8) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    return WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v9, v7);
  }

  if ((result & 0x100) == 0 || result != 1)
  {
    goto LABEL_17;
  }

  IPC::ArgumentCoder<WebCore::SVGFilter,void>::decode(a1, &v9);
  if (v10 != 1)
  {
    result = IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
LABEL_17:
      *a2 = 0;
      *(a2 + 8) = 0;
      return result;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *a1;
  if (*a1)
  {
    v6 = v9;
    v9 = 0;
    *a2 = v6;
    LOBYTE(v6) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  return WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v9, v5);
}

uint64_t IPC::Decoder::decode<IPC::WebCore_Filter_Subclass>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::PathRoundedRect::Strategy,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::CSSFilter,WTF::RawPtrTraits<WebCore::CSSFilter>,WTF::DefaultRefDerefTraits<WebCore::CSSFilter>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
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
    v51 = *(a1 + 3);
    if (v51)
    {
      if (v4)
      {
        (*(*v51 + 16))(v51);
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
    v52 = *(a1 + 3);
    if (v52 && v4)
    {
      (*(*v52 + 16))(v52);
    }

    LOBYTE(v62[0]) = 0;
    v63 = 0;
LABEL_26:
    v27 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v27);
    }

    goto LABEL_27;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_60;
  }

  v11 = *v5;
  v59 = 0;
  v60 = 0;
  if (v11 < 0x20000)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    LODWORD(v60) = v11;
    v59 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>>(&v64, a1);
      if ((v65 & 1) == 0)
      {
        goto LABEL_25;
      }

      v12 = HIDWORD(v60);
      if (HIDWORD(v60) == v60)
      {
        v13 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v59, HIDWORD(v60) + 1, &v64);
        v14 = HIDWORD(v60);
        v15 = HIDWORD(v60) + 1;
        v16 = v59;
        v17 = *v13;
        *v13 = 0;
        *(v16 + v14) = v17;
        HIDWORD(v60) = v15;
        if ((v65 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = v64;
        v64 = 0;
        *(v59 + HIDWORD(v60)) = v18;
        HIDWORD(v60) = v12 + 1;
      }

      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v64, v6);
LABEL_16:
      if (!--v11)
      {
        goto LABEL_17;
      }
    }
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>>(&v64, a1);
    if ((v65 & 1) == 0)
    {
LABEL_25:
      LOBYTE(v62[0]) = 0;
      v63 = 0;
      WTF::Vector<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v6);
      goto LABEL_26;
    }

    v20 = HIDWORD(v60);
    if (HIDWORD(v60) != v60)
    {
      v26 = v64;
      v64 = 0;
      *(v59 + HIDWORD(v60)) = v26;
      HIDWORD(v60) = v20 + 1;
LABEL_22:
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v64, v6);
      goto LABEL_23;
    }

    v21 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v59, HIDWORD(v60) + 1, &v64);
    v22 = HIDWORD(v60);
    v23 = HIDWORD(v60) + 1;
    v24 = v59;
    v25 = *v21;
    *v21 = 0;
    *(v24 + v22) = v25;
    HIDWORD(v60) = v23;
    if (v65)
    {
      goto LABEL_22;
    }

LABEL_23:
    --v11;
  }

  while (v11);
  if (v60 > HIDWORD(v60))
  {
    v46 = v59;
    if (HIDWORD(v60))
    {
      LODWORD(v60) = HIDWORD(v60);
      v59 = WTF::fastRealloc(v59, (8 * HIDWORD(v60)));
    }

    else if (v59)
    {
      v59 = 0;
      LODWORD(v60) = 0;
      WTF::fastFree(v46, v6);
    }
  }

LABEL_17:
  v62[0] = v59;
  v19 = v60;
  v59 = 0;
  v60 = 0;
  v62[1] = v19;
  v63 = 1;
  WTF::Vector<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v6);
LABEL_27:
  v30 = IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterRenderingMode>>(a1);
  v31 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v33 = v32;
  v64 = v31;
  v65 = v32;
  v34 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v36 = v35;
  if ((v35 & 1) == 0)
  {
    v53 = *a1;
    v54 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55)
    {
      if (v54)
      {
        (*(*v55 + 16))(v55, v53);
      }
    }
  }

  v37 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v38 & 1) == 0)
  {
    v49 = *a1;
    v48 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (v50)
    {
      if (v48)
      {
        v56 = v38;
        v57 = v37;
        (*(*v50 + 16))(v50, v49);
        v38 = v56;
        v37 = v57;
      }
    }
  }

  v39 = *a1;
  if (*a1)
  {
    if (v36 & 1) != 0 && (v38)
    {
      v59 = v34;
      v60 = v37;
      v61 = 1;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LOBYTE(v59) = 0;
  v61 = 0;
  v47 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v47 && (result = (*(*result + 16))(result, 0), v39 = 0, *a1))
  {
LABEL_33:
    if ((v63 & 1) == 0 || v30 <= 0xFFu || (v33 & 1) == 0 || !v39)
    {
      goto LABEL_42;
    }

    WebCore::CSSFilter::create();
    v40 = v58;
    v58 = 0;
    *a2 = v40;
    v41 = 1;
    *(a2 + 8) = 1;
    result = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v58, v42);
  }

  else
  {
    v41 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  if (v63 == 1)
  {
    result = WTF::Vector<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v62, v38);
  }

  if ((v41 & 1) == 0)
  {
LABEL_43:
    v44 = *a1;
    v45 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v45)
      {
        return (*(*result + 16))(result, v44);
      }
    }
  }

  return result;
}

void sub_19D77050C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 56) == 1)
  {
    WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref((v6 - 64), a2);
  }

  WTF::Vector<WTF::Ref<WebCore::FilterFunction,WTF::RawPtrTraits<WebCore::FilterFunction>,WTF::DefaultRefDerefTraits<WebCore::FilterFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::CSSFilter,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  v4 = *(a2 + 92);
  if (v4)
  {
    v5 = *(a2 + 80);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      switch(*(*v5 + 48))
      {
        case 1:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
          IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(a1, v7);
          break;
        case 2:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);
          v9 = *(v7 + 64);
          v8 = a1;
          goto LABEL_24;
        case 3:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);
          IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(a1, v7);
          break;
        case 4:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);
          IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(a1, v7);
          break;
        case 5:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 4);
          IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(a1, v7);
          break;
        case 6:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 5);
          IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(a1, v7);
          break;
        case 7:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 6);
          IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(a1, v7);
          break;
        case 8:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 7);
          IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(a1, v7);
          break;
        case 9:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 8);
          IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(a1, v7);
          break;
        case 0xA:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 9);
          IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(a1, v7);
          break;
        case 0xB:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 10);
          IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(a1, v7);
          break;
        case 0xC:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 11);
          IPC::ArgumentCoder<WebCore::FEImage,void>::encode(a1, v7);
          break;
        case 0xD:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 12);
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v7 + 64));
          goto LABEL_25;
        case 0xE:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 13);
          IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(a1, v7);
          break;
        case 0xF:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 14);
          IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(a1, v7);
          break;
        case 0x10:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 15);
          IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(a1, v7);
          break;
        case 0x11:
          v8 = a1;
          v9 = 16;
          goto LABEL_24;
        case 0x12:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 17);
          IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(a1, v7);
          break;
        case 0x13:
          v8 = a1;
          v9 = 18;
          goto LABEL_24;
        case 0x14:
          v8 = a1;
          v9 = 19;
LABEL_24:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, v9);
LABEL_25:
          IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (v7 + 56));
          break;
        default:
          break;
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));
  v10 = *(a2 + 56);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v10);
  v12 = *(a2 + 60);
  return IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v12);
}

uint64_t IPC::ArgumentCoder<WebCore::CSSFilter,void>::encode(WTF *a1, uint64_t a2)
{
  v4 = -*a1;
  v5 = v4 & 7 | 8;
  if (*(a1 + 1) < v5)
  {
    v8 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  else
  {
    *(*a1 + (v4 & 7)) = *(a2 + 92);
    v6 = *(a1 + 1);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      goto LABEL_109;
    }

    *a1 += v5;
    *(a1 + 1) = v8;
  }

  v9 = *(a2 + 92);
  if (v9)
  {
    v10 = 8 * v9;
    v11 = *(a2 + 80);
    while (2)
    {
      v12 = *v11;
      switch(*(*v11 + 48))
      {
        case 1:
          if (*(a1 + 1))
          {
            **a1 = 0;
            v13 = *(a1 + 1);
            if (!v13)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v13 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(a1, v12);
          goto LABEL_85;
        case 2:
          if (*(a1 + 1))
          {
            **a1 = 1;
            v23 = *(a1 + 1);
            if (!v23)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v23 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEBlend,void>::encode(a1, v12);
          goto LABEL_85;
        case 3:
          if (*(a1 + 1))
          {
            **a1 = 2;
            v19 = *(a1 + 1);
            if (!v19)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v19 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(a1, v12);
          goto LABEL_85;
        case 4:
          if (*(a1 + 1))
          {
            **a1 = 3;
            v21 = *(a1 + 1);
            if (!v21)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v21 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(a1, v12);
          goto LABEL_85;
        case 5:
          if (*(a1 + 1))
          {
            **a1 = 4;
            v16 = *(a1 + 1);
            if (!v16)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v16 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(a1, v12);
          goto LABEL_85;
        case 6:
          if (*(a1 + 1))
          {
            **a1 = 5;
            v25 = *(a1 + 1);
            if (!v25)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v25 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(a1, v12);
          goto LABEL_85;
        case 7:
          if (*(a1 + 1))
          {
            **a1 = 6;
            v27 = *(a1 + 1);
            if (!v27)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v27 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(a1, v12);
          goto LABEL_85;
        case 8:
          if (*(a1 + 1))
          {
            **a1 = 7;
            v22 = *(a1 + 1);
            if (!v22)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v22 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(a1, v12);
          goto LABEL_85;
        case 9:
          if (*(a1 + 1))
          {
            **a1 = 8;
            v29 = *(a1 + 1);
            if (!v29)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v29 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(a1, v12);
          goto LABEL_85;
        case 0xA:
          if (*(a1 + 1))
          {
            **a1 = 9;
            v18 = *(a1 + 1);
            if (!v18)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v18 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(a1, v12);
          goto LABEL_85;
        case 0xB:
          if (*(a1 + 1))
          {
            **a1 = 10;
            v28 = *(a1 + 1);
            if (!v28)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v28 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(a1, v12);
          goto LABEL_85;
        case 0xC:
          if (*(a1 + 1))
          {
            **a1 = 11;
            v15 = *(a1 + 1);
            if (!v15)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v15 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEImage,void>::encode(a1, v12);
          goto LABEL_85;
        case 0xD:
          if (*(a1 + 1))
          {
            **a1 = 12;
            v17 = *(a1 + 1);
            if (!v17)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v17 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::StreamConnectionEncoder>(a1, *(v12 + 64));
          goto LABEL_84;
        case 0xE:
          if (*(a1 + 1))
          {
            **a1 = 13;
            v26 = *(a1 + 1);
            if (!v26)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v26 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(a1, v12);
          goto LABEL_85;
        case 0xF:
          if (*(a1 + 1))
          {
            **a1 = 14;
            v14 = *(a1 + 1);
            if (!v14)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v14 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(a1, v12);
          goto LABEL_85;
        case 0x10:
          if (*(a1 + 1))
          {
            **a1 = 15;
            v20 = *(a1 + 1);
            if (!v20)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v20 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(a1, v12);
          goto LABEL_85;
        case 0x11:
          if (!*(a1 + 1))
          {
            goto LABEL_87;
          }

          **a1 = 16;
          goto LABEL_82;
        case 0x12:
          if (*(a1 + 1))
          {
            **a1 = 17;
            v24 = *(a1 + 1);
            if (!v24)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v24 - 1;
          }

          else
          {
            *a1 = 0;
            *(a1 + 1) = 0;
          }

          IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(a1, v12);
          goto LABEL_85;
        case 0x13:
          if (!*(a1 + 1))
          {
            goto LABEL_87;
          }

          **a1 = 18;
          goto LABEL_82;
        case 0x14:
          if (*(a1 + 1))
          {
            **a1 = 19;
LABEL_82:
            v30 = *(a1 + 1);
            if (!v30)
            {
              goto LABEL_109;
            }

            ++*a1;
            *(a1 + 1) = v30 - 1;
          }

          else
          {
LABEL_87:
            *a1 = 0;
            *(a1 + 1) = 0;
          }

LABEL_84:
          IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (v12 + 56));
LABEL_85:
          ++v11;
          v10 -= 8;
          if (v10)
          {
            continue;
          }

          v8 = *(a1 + 1);
          break;
        default:
          goto LABEL_85;
      }

      break;
    }
  }

  if (!v8)
  {
    goto LABEL_110;
  }

  **a1 = *(a2 + 49);
  v31 = *(a1 + 1);
  if (!v31)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_108;
  }

  ++*a1;
  *(a1 + 1) = v31 - 1;
LABEL_108:
  *&v34 = *(a2 + 52);
  v32 = IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, &v34);
  v34 = *(a2 + 60);
  return IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(v32, &v34);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterRenderingMode>>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v4 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v4;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 8)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  return v2 | 0x100;
}

uint64_t IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v7 = *(a2 + 76);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::VectorArgumentCoder<false,WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SVGFilterExpressionTerm,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 96);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 112);
  v4 = *(a2 + 40);
  *&v7 = *(a2 + 32);
  BYTE8(v7) = v4;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));
  v5 = *(a2 + 56);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v5);
  v7 = *(a2 + 60);
  return IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v7);
}

uint64_t IPC::ArgumentCoder<WebCore::SVGFilter,void>::encode(WTF *a1, uint64_t a2)
{
  v69 = *(a2 + 76);
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(a1, &v69);
  if (*(a1 + 1))
  {
    **a1 = *(a2 + 92);
    v12 = *(a1 + 1);
    if (!v12)
    {
      goto LABEL_118;
    }

    v13 = v12 - 1;
    v14 = *a1 + 1;
    *a1 = v14;
    *(a1 + 1) = v12 - 1;
    v15 = (a2 + 96);
    v16 = (a2 + 108);
    v17 = -v14 & 7 | 8;
    if (v13 >= v17)
    {
      *(v14 + (-v14 & 7)) = *v16;
      v18 = *(a1 + 1);
      v19 = v18 - v17;
      if (v18 < v17)
      {
        goto LABEL_118;
      }

      v20 = *a1 + v17;
      *a1 = v20;
      *(a1 + 1) = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = (a2 + 96);
    v16 = (a2 + 108);
  }

  v19 = 0;
  v20 = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_6:
  v21 = *v16;
  if (!v21)
  {
    goto LABEL_18;
  }

  v2 = *v15;
  v3 = (*v15 + 28);
  v4 = 32 * v21;
  do
  {
    v22 = -*a1;
    v23 = v22 & 3 | 4;
    if (*(a1 + 1) < v23)
    {
      goto LABEL_126;
    }

    *(*a1 + (v22 & 3)) = *(v3 - 7);
    v24 = *(a1 + 1);
    v25 = v24 - v23;
    if (v24 < v23)
    {
      goto LABEL_118;
    }

    v26 = *a1 + v23;
    *a1 = v26;
    *(a1 + 1) = v25;
    v27 = -v26 & 3 | 4;
    if (v25 < v27)
    {
LABEL_126:
      *a1 = 0;
      *(a1 + 1) = 0;
      v11 = (v3 - 20);
      if ((*v3 & 1) == 0)
      {
LABEL_127:
        *a1 = 0;
        *(a1 + 1) = 0;
        goto LABEL_16;
      }

      v52 = v3;
      goto LABEL_131;
    }

    *(v26 + (-v26 & 3)) = *(v3 - 6);
    v28 = *(a1 + 1);
    if (v28 < v27)
    {
      goto LABEL_118;
    }

    v29 = (*a1 + v27);
    *a1 = v29;
    *(a1 + 1) = v28 - v27;
    v11 = (v3 - 20);
    if (*v3)
    {
      if (v28 != v27)
      {
        *v29 = 1;
        v51 = *(a1 + 1);
        if (!v51)
        {
          goto LABEL_118;
        }

        ++*a1;
        *(a1 + 1) = v51 - 1;
        v52 = v3;
        goto LABEL_59;
      }

      v11 = v2 + 8;
      v52 = (v2 + 28);
LABEL_131:
      *a1 = 0;
      *(a1 + 1) = 0;
LABEL_59:
      if ((*v52 & 1) == 0)
      {
        v67 = std::__throw_bad_optional_access[abi:sn200100]();
        return IPC::ArgumentCoder<WebCore::SVGFilter,void>::decode(v67, v68);
      }

      IPC::ArgumentCoder<WebCore::FilterEffectGeometry,void>::encode(a1, v11);
      goto LABEL_16;
    }

    if (v28 == v27)
    {
      goto LABEL_127;
    }

    *v29 = 0;
    v30 = *(a1 + 1);
    if (!v30)
    {
      goto LABEL_118;
    }

    ++*a1;
    *(a1 + 1) = v30 - 1;
LABEL_16:
    v2 += 32;
    v3 += 32;
    v4 -= 32;
  }

  while (v4);
  v20 = *a1;
  v19 = *(a1 + 1);
LABEL_18:
  v31 = -v20 & 7 | 8;
  if (v19 < v31)
  {
    v34 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
LABEL_22:
    v35 = *(a2 + 124);
    if (v35)
    {
      v2 = 8 * v35;
      LOBYTE(v3) = 1;
      v4 = *(a2 + 112);
      v5 = 9;
      v6 = 13;
      v7 = 17;
      v8 = 18;
      goto LABEL_24;
    }

    goto LABEL_46;
  }

  *(v20 + (-v20 & 7)) = *(a2 + 124);
  v32 = *(a1 + 1);
  v33 = v32 >= v31;
  v34 = v32 - v31;
  if (v33)
  {
    *a1 += v31;
    *(a1 + 1) = v34;
    goto LABEL_22;
  }

  while (1)
  {
LABEL_118:
    while (1)
    {
      __break(1u);
LABEL_119:
      *a1 = 0;
      *(a1 + 1) = 0;
LABEL_43:
      IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (v11 + 56));
      while (1)
      {
        v4 += 8;
        v2 -= 8;
        if (!v2)
        {
          break;
        }

LABEL_24:
        v11 = *v4;
        switch(*(*v4 + 48))
        {
          case 2:
            if (*(a1 + 1))
            {
              **a1 = 0;
              v54 = *(a1 + 1);
              if (!v54)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v54 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEBlend,void>::encode(a1, v11);
            continue;
          case 3:
            if (*(a1 + 1))
            {
              **a1 = v3;
              v36 = *(a1 + 1);
              if (!v36)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v36 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(a1, v11);
            continue;
          case 4:
            if (*(a1 + 1))
            {
              **a1 = 2;
              v55 = *(a1 + 1);
              if (!v55)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v55 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(a1, v11);
            continue;
          case 5:
            if (*(a1 + 1))
            {
              **a1 = 3;
              v56 = *(a1 + 1);
              if (!v56)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v56 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(a1, v11);
            continue;
          case 6:
            if (*(a1 + 1))
            {
              **a1 = 4;
              v57 = *(a1 + 1);
              if (!v57)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v57 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(a1, v11);
            continue;
          case 7:
            if (*(a1 + 1))
            {
              **a1 = 5;
              v58 = *(a1 + 1);
              if (!v58)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v58 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(a1, v11);
            continue;
          case 8:
            if (*(a1 + 1))
            {
              **a1 = 6;
              v59 = *(a1 + 1);
              if (!v59)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v59 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(a1, v11);
            continue;
          case 9:
            if (*(a1 + 1))
            {
              **a1 = 7;
              v60 = *(a1 + 1);
              if (!v60)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v60 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(a1, v11);
            continue;
          case 0xA:
            if (*(a1 + 1))
            {
              **a1 = 8;
              v61 = *(a1 + 1);
              if (!v61)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v61 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(a1, v11);
            continue;
          case 0xB:
            if (*(a1 + 1))
            {
              **a1 = v5;
              v37 = *(a1 + 1);
              if (!v37)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v37 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(a1, v11);
            continue;
          case 0xC:
            if (*(a1 + 1))
            {
              **a1 = 10;
              v62 = *(a1 + 1);
              if (!v62)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v62 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEImage,void>::encode(a1, v11);
            continue;
          case 0xD:
            if (*(a1 + 1))
            {
              **a1 = 11;
              v63 = *(a1 + 1);
              if (!v63)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v63 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::StreamConnectionEncoder::operator<<<WebCore::FEMerge const&>(a1, v11);
            continue;
          case 0xE:
            if (*(a1 + 1))
            {
              **a1 = 12;
              v64 = *(a1 + 1);
              if (!v64)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v64 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(a1, v11);
            continue;
          case 0xF:
            if (*(a1 + 1))
            {
              **a1 = v6;
              v38 = *(a1 + 1);
              if (!v38)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v38 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(a1, v11);
            continue;
          case 0x10:
            if (*(a1 + 1))
            {
              **a1 = 15;
              v65 = *(a1 + 1);
              if (!v65)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v65 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(a1, v11);
            continue;
          case 0x11:
            if (!*(a1 + 1))
            {
              goto LABEL_119;
            }

            **a1 = 14;
            goto LABEL_41;
          case 0x12:
            if (*(a1 + 1))
            {
              **a1 = 16;
              v66 = *(a1 + 1);
              if (!v66)
              {
                goto LABEL_118;
              }

              ++*a1;
              *(a1 + 1) = v66 - 1;
            }

            else
            {
              *a1 = 0;
              *(a1 + 1) = 0;
            }

            IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(a1, v11);
            break;
          case 0x13:
            if (!*(a1 + 1))
            {
              goto LABEL_119;
            }

            **a1 = v7;
            goto LABEL_41;
          case 0x14:
            if (!*(a1 + 1))
            {
              goto LABEL_119;
            }

            **a1 = v8;
LABEL_41:
            v39 = *(a1 + 1);
            if (!v39)
            {
              goto LABEL_118;
            }

            ++*a1;
            *(a1 + 1) = v39 - 1;
            goto LABEL_43;
          default:
            continue;
        }
      }

      v34 = *(a1 + 1);
LABEL_46:
      if ((*(a2 + 40) & 1) == 0)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_122;
      }

      v40 = *(a2 + 32);
      **a1 = 1;
      v41 = *(a1 + 1);
      if (v41)
      {
        v42 = v41 - 1;
        v43 = *a1 + 1;
        *a1 = v43;
        *(a1 + 1) = v41 - 1;
        v44 = -v43 & 7 | 8;
        if (v42 < v44)
        {
          goto LABEL_122;
        }

        *(v43 + (-v43 & 7)) = v40;
        v45 = *(a1 + 1);
        v33 = v45 >= v44;
        v46 = v45 - v44;
        if (v33)
        {
          goto LABEL_52;
        }
      }
    }

    if (!v34)
    {
      break;
    }

    **a1 = 0;
    v53 = *(a1 + 1);
    if (!v53)
    {
      continue;
    }

    v46 = v53 - 1;
    v44 = 1;
LABEL_52:
    v47 = (*a1 + v44);
    *a1 = v47;
    *(a1 + 1) = v46;
    if (!v46)
    {
      break;
    }

    *v47 = *(a2 + 49);
    v48 = *(a1 + 1);
    if (v48)
    {
      ++*a1;
      *(a1 + 1) = v48 - 1;
      goto LABEL_55;
    }
  }

LABEL_122:
  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_55:
  *&v69 = *(a2 + 52);
  v49 = IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, &v69);
  v69 = *(a2 + 60);
  return IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(v49, &v69);
}