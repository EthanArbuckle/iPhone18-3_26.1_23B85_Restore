uint64_t IPC::ArgumentCoder<WebCore::TimingFunction,void>::encode(IPC::Encoder *a1, double *a2)
{
  if ((*(*a2 + 24))(a2))
  {
    if ((*(*a2 + 24))(a2) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);

      return IPC::ArgumentCoder<WebCore::CubicBezierTimingFunction,void>::encode(a1, a2);
    }

    else if ((*(*a2 + 24))(a2) == 2)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);

      return IPC::ArgumentCoder<WebCore::StepsTimingFunction,void>::encode(a1, a2);
    }

    else
    {
      result = (*(*a2 + 24))(a2);
      if (result == 3)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);

        return IPC::ArgumentCoder<API::Rect,void>::encode(a1, a2);
      }
    }
  }

  else
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);

    return IPC::VectorArgumentCoder<false,WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::TimingFunction,void>::decode(uint64_t result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    goto LABEL_134;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_137;
  }

  v7 = *v4;
  if (v7 >= 4)
  {
    goto LABEL_140;
  }

  v8 = v7 | 0x100;
  if (!v5)
  {
LABEL_21:
    *v3 = 0;
    v3[8] = 0;
    return result;
  }

  while (1)
  {
    if (v8 >= 0x100 && v8 == 0)
    {
      v13 = *(a2 + 1);
      v14 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v13 < v14 - v5 || v13 - (v14 - v5) <= 7)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v68 = *(a2 + 3);
        if (v68)
        {
          if (v13)
          {
            (*(*v68 + 16))(v68);
            v5 = *a2;
            v13 = *(a2 + 1);
            goto LABEL_125;
          }
        }

        else
        {
          v13 = 0;
        }

        v5 = 0;
LABEL_125:
        *a2 = 0;
        *(a2 + 1) = 0;
        v69 = *(a2 + 3);
        if (v69 && v13)
        {
          (*(*v69 + 16))(v69, v5);
        }

        goto LABEL_126;
      }

      *(a2 + 2) = v14 + 8;
      if (!v14)
      {
        goto LABEL_125;
      }

      v16 = *v14;
      v94 = 0;
      v95 = 0;
      if (v16 >= 0x10000)
      {
        v60 = 0;
        LODWORD(v18) = 0;
        do
        {
          result = IPC::Decoder::decode<WebCore::LinearTimingFunction::Point>(&v92, a2);
          if ((v93 & 1) == 0)
          {
            goto LABEL_87;
          }

          if (v18 == v95)
          {
            result = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v94, v18 + 1, &v92);
            v61 = HIDWORD(v95);
            v60 = v94;
            *(v94 + HIDWORD(v95)) = *result;
          }

          else
          {
            *(v60 + v18) = v92;
            v61 = HIDWORD(v95);
          }

          v18 = (v61 + 1);
          HIDWORD(v95) = v61 + 1;
          --v16;
        }

        while (v16);
        if (v95 <= v18)
        {
          goto LABEL_49;
        }

        if (v61 == -1)
        {
LABEL_116:
          v94 = 0;
          LODWORD(v95) = 0;
LABEL_117:
          WTF::fastFree(v60, v5);
          LODWORD(v18) = HIDWORD(v95);
          goto LABEL_49;
        }

        if (v18 >> 28)
        {
          __break(0xC471u);
          return result;
        }

        v62 = WTF::fastMalloc((16 * v18));
        LODWORD(v95) = v18;
        v94 = v62;
        if (v62 == v60)
        {
          goto LABEL_116;
        }

        v63 = 0;
        do
        {
          *(v62 + v63) = *(v60 + v63);
          v63 += 16;
        }

        while (16 * v18 != v63);
        if (v60)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v16)
        {
          v17 = WTF::fastMalloc((16 * v16));
          LODWORD(v18) = 0;
          LODWORD(v95) = v16;
          v94 = v17;
          while (1)
          {
            IPC::Decoder::decode<WebCore::LinearTimingFunction::Point>(&v92, a2);
            if ((v93 & 1) == 0)
            {
              break;
            }

            if (v18 == v95)
            {
              v19 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v94, v18 + 1, &v92);
              v20 = HIDWORD(v95);
              v17 = v94;
              *(v94 + HIDWORD(v95)) = *v19;
            }

            else
            {
              *(v17 + v18) = v92;
              v20 = HIDWORD(v95);
            }

            LODWORD(v18) = v20 + 1;
            HIDWORD(v95) = v20 + 1;
            if (!--v16)
            {
              goto LABEL_49;
            }
          }

LABEL_87:
          v38 = 0;
          LOBYTE(v88) = 0;
          v91 = 0;
LABEL_88:
          if (v94)
          {
            WTF::fastFree(v94, v5);
          }

          if (v38)
          {
            if (*a2)
            {
              result = WebCore::LinearTimingFunction::create(&v88, &v92);
              v65 = v92;
              if (v91)
              {
                result = v88;
                if (v88)
                {
                  v88 = 0;
                  v89 = 0;
                  result = WTF::fastFree(result, v64);
                }
              }

              v66 = 1;
              goto LABEL_96;
            }

            if (v88)
            {
              WTF::fastFree(v88, 0);
            }

LABEL_127:
            v6 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            result = *(a2 + 3);
            if (result && v6)
            {
              result = (*(*result + 16))(result);
            }

            v65 = 0;
            v66 = 0;
LABEL_96:
            if (!*a2)
            {
              *v3 = 0;
              v3[8] = 0;
              if (!v65)
              {
                v66 = 0;
              }

              if (v66 == 1)
              {
                if (v65[2] == 1)
                {
                  return (*(*v65 + 16))(v65);
                }

                else
                {
                  --v65[2];
                }
              }

              return result;
            }

            if (v66)
            {
              *v3 = v65;
              goto LABEL_99;
            }

            goto LABEL_133;
          }

LABEL_126:
          v70 = *a2;
          v71 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v72 = *(a2 + 3);
          if (v72)
          {
            if (v71)
            {
              (*(*v72 + 16))(v72, v70);
              if (*a2)
              {
                goto LABEL_133;
              }
            }
          }

          goto LABEL_127;
        }

        LODWORD(v18) = 0;
      }

LABEL_49:
      v37 = v94;
      v94 = 0;
      v88 = v37;
      v89 = v95;
      v90 = v18;
      v38 = 1;
      v91 = 1;
      goto LABEL_88;
    }

    if (v8 < 0x100 || v8 != 1)
    {
      break;
    }

    v21 = *(a2 + 1);
    v22 = *(a2 + 2);
    if (v21 <= v22 - v5)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v75 = *(a2 + 3);
      if (v75)
      {
        if (v21)
        {
          (*(*v75 + 16))(v75);
          v5 = *a2;
          v21 = *(a2 + 1);
LABEL_147:
          *a2 = 0;
          *(a2 + 1) = 0;
          v76 = *(a2 + 3);
          if (v76)
          {
            if (v21)
            {
              (*(*v76 + 16))(v76, v5);
              v5 = *a2;
              v21 = *(a2 + 1);
LABEL_150:
              *a2 = 0;
              *(a2 + 1) = 0;
              v77 = *(a2 + 3);
              if (v77 && v21)
              {
                (*(*v77 + 16))(v77, v5);
              }

              v24 = 0;
              goto LABEL_41;
            }
          }

          else
          {
            v21 = 0;
          }

          v5 = 0;
          goto LABEL_150;
        }
      }

      else
      {
        v21 = 0;
      }

      v5 = 0;
      goto LABEL_147;
    }

    *(a2 + 2) = v22 + 1;
    if (!v22)
    {
      goto LABEL_147;
    }

    v23 = *v22;
    if (v23 >= 5)
    {
      goto LABEL_150;
    }

    v24 = v23 | 0x100;
LABEL_41:
    v25 = IPC::Decoder::decode<unsigned long long>(a2);
    v27 = v26;
    v28 = IPC::Decoder::decode<unsigned long long>(a2);
    v30 = v29;
    v31 = IPC::Decoder::decode<unsigned long long>(a2);
    v33 = v32;
    v34 = IPC::Decoder::decode<unsigned long long>(a2);
    if (!*a2)
    {
      goto LABEL_108;
    }

    if (v24 > 0xFF && (v27 & 1) != 0 && (v30 & 1) != 0 && (v33 & 1) != 0 && (v35 & 1) != 0)
    {
      v36 = v34;
      result = WTF::fastMalloc(0x38);
      *(result + 8) = 1;
      *result = &unk_1F10E7DD8;
      *(result + 16) = v25;
      *(result + 24) = v28;
      *(result + 32) = v31;
      *(result + 40) = v36;
      *(result + 48) = v24;
      goto LABEL_67;
    }

LABEL_133:
    __break(1u);
LABEL_134:
    *a2 = 0;
    *(a2 + 1) = 0;
    v73 = *(a2 + 3);
    if (!v73)
    {
      v6 = 0;
LABEL_136:
      v5 = 0;
      goto LABEL_137;
    }

    if (!v6)
    {
      goto LABEL_136;
    }

    (*(*v73 + 16))(v73);
    v5 = *a2;
    v6 = *(a2 + 1);
LABEL_137:
    *a2 = 0;
    *(a2 + 1) = 0;
    v74 = *(a2 + 3);
    if (!v74)
    {
      v6 = 0;
LABEL_139:
      v5 = 0;
      goto LABEL_140;
    }

    if (!v6)
    {
      goto LABEL_139;
    }

    (*(*v74 + 16))(v74, v5);
    v5 = *a2;
    v6 = *(a2 + 1);
LABEL_140:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v6)
      {
        result = (*(*result + 16))(result, v5);
        v8 = 0;
        v5 = *a2;
        if (*a2)
        {
          continue;
        }
      }
    }

    goto LABEL_21;
  }

  if (v8 >= 0x100 && v8 == 2)
  {
    v39 = IPC::Decoder::decode<float>(a2);
    v6 = *(a2 + 1);
    v40 = *(a2 + 2);
    v41 = *a2;
    if (v6 <= &v40[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v78 = *(a2 + 3);
      if (v78)
      {
        if (v6)
        {
          (*(*v78 + 16))(v78);
          v6 = *(a2 + 1);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v42 = v40 + 1;
      *(a2 + 2) = v40 + 1;
      if (v40)
      {
        if (*v40 < 2u)
        {
          if (!*v40)
          {
            v45 = 0;
            LOWORD(v43) = 0;
            v44 = 0x10000;
            if (!v41)
            {
              goto LABEL_70;
            }

            goto LABEL_58;
          }

          if (v6 <= v42 - v41)
          {
            v81 = 0;
            v82 = 0;
            *a2 = 0;
            *(a2 + 1) = 0;
            v83 = *(a2 + 3);
            if (v83)
            {
              (*(*v83 + 16))(v83);
              v82 = *a2;
              v81 = *(a2 + 1);
            }
          }

          else
          {
            *(a2 + 2) = v40 + 2;
            if (v40 != -1)
            {
              v43 = *v42;
              if (v43 < 6)
              {
                v44 = 0x10000;
                v45 = 256;
                if (!v41)
                {
                  goto LABEL_70;
                }

LABEL_58:
                if ((v39 & 0x100000000) != 0 && (v44 | v45) >> 16)
                {
                  v46 = v43 | v45;
                  result = WTF::fastMalloc(0x18);
                  *(result + 8) = 1;
                  *(result + 12) = v39;
                  *result = &unk_1F10E7E10;
                  *(result + 16) = v46;
                  goto LABEL_67;
                }

                goto LABEL_133;
              }

              goto LABEL_165;
            }

            v81 = v6;
            v82 = v41;
          }

          *a2 = 0;
          *(a2 + 1) = 0;
          v84 = *(a2 + 3);
          if (v84 && v81)
          {
            (*(*v84 + 16))(v84, v82, v81);
            v41 = *a2;
            v6 = *(a2 + 1);
          }

          else
          {
            v6 = 0;
            v41 = 0;
          }

LABEL_165:
          *a2 = 0;
          *(a2 + 1) = 0;
          v85 = *(a2 + 3);
          if (v85 && v6)
          {
            (*(*v85 + 16))(v85, v41);
          }

          v45 = 256;
          goto LABEL_167;
        }

LABEL_159:
        *a2 = 0;
        *(a2 + 1) = 0;
        v80 = *(a2 + 3);
        if (v80 && v6)
        {
          (*(*v80 + 16))(v80, v41);
        }

        v45 = 0;
LABEL_167:
        v86 = *a2;
        v87 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (!result || !v87)
        {
          goto LABEL_21;
        }

        (*(*result + 16))(result, v86);
        LOWORD(v43) = 0;
        v44 = 0;
        if (!*a2)
        {
LABEL_70:
          v6 = *(a2 + 1);
          result = *(a2 + 3);
          *a2 = 0;
          *(a2 + 1) = 0;
          if (!result)
          {
            goto LABEL_21;
          }

          if (v6)
          {
            v59 = *(*result + 16);
            goto LABEL_111;
          }

LABEL_112:
          if (!*a2)
          {
            goto LABEL_21;
          }

          goto LABEL_133;
        }

        goto LABEL_58;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v79 = *(a2 + 3);
    if (v79)
    {
      if (v6)
      {
        (*(*v79 + 16))(v79);
        v41 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_159;
      }
    }

    else
    {
      v6 = 0;
    }

    v41 = 0;
    goto LABEL_159;
  }

  if (v8 < 0x100 || v8 != 3)
  {
    goto LABEL_21;
  }

  v47 = IPC::Decoder::decode<unsigned long long>(a2);
  v49 = v48;
  v50 = IPC::Decoder::decode<unsigned long long>(a2);
  v52 = v51;
  v53 = IPC::Decoder::decode<unsigned long long>(a2);
  v55 = v54;
  v56 = IPC::Decoder::decode<unsigned long long>(a2);
  if (!*a2)
  {
LABEL_108:
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      goto LABEL_21;
    }

    if (v6)
    {
      v59 = *(*result + 16);
LABEL_111:
      result = v59();
    }

    goto LABEL_112;
  }

  if ((v49 & 1) == 0 || (v52 & 1) == 0 || (v55 & 1) == 0 || (v57 & 1) == 0)
  {
    goto LABEL_133;
  }

  v58 = v56;
  result = WTF::fastMalloc(0x30);
  *(result + 8) = 1;
  *result = &unk_1F10E7E48;
  *(result + 16) = v47;
  *(result + 24) = v50;
  *(result + 32) = v53;
  *(result + 40) = v58;
LABEL_67:
  if (*a2)
  {
    *v3 = result;
LABEL_99:
    v3[8] = 1;
    return result;
  }

  *v3 = 0;
  v3[8] = 0;
  if (*(result + 8) == 1)
  {
    v67 = *(*result + 16);

    return v67();
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

void sub_19D730F18(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16)
{
  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::TransformOperation,void>::encode(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if (v4 <= 0x12)
  {
    if (((1 << v4) & 0x6007) != 0)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 16));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 24));
      v5 = *(a2 + 32);
      goto LABEL_7;
    }

    if (((1 << v4) & 0x18038) != 0)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);
      LODWORD(v13) = 0;
      BYTE6(v13) = 0;
      WORD2(v13) = *(a2 + 20);
      BYTE7(v13) = *(a2 + 23);
      if (BYTE4(v13) - 2 >= 9)
      {
        if (BYTE4(v13) == 11)
        {
          LODWORD(v13) = *(a2 + 16);
          WebCore::Length::ref(&v13);
        }
      }

      else
      {
        BYTE6(v13) = *(a2 + 22);
        LODWORD(v13) = *(a2 + 16);
      }

      IPC::ArgumentCoder<WebCore::Length,void>::encode(v3, &v13);
      if (BYTE4(v13) == 11)
      {
        WebCore::Length::deref(&v13);
      }

      LODWORD(v13) = 0;
      BYTE6(v13) = 0;
      WORD2(v13) = *(a2 + 28);
      BYTE7(v13) = *(a2 + 31);
      if (BYTE4(v13) - 2 >= 9)
      {
        if (BYTE4(v13) == 11)
        {
          LODWORD(v13) = *(a2 + 24);
          WebCore::Length::ref(&v13);
        }
      }

      else
      {
        BYTE6(v13) = *(a2 + 30);
        LODWORD(v13) = *(a2 + 24);
      }

      IPC::ArgumentCoder<WebCore::Length,void>::encode(v3, &v13);
      if (BYTE4(v13) == 11)
      {
        WebCore::Length::deref(&v13);
      }

      LODWORD(v13) = 0;
      BYTE6(v13) = 0;
      WORD2(v13) = *(a2 + 36);
      BYTE7(v13) = *(a2 + 39);
      if (BYTE4(v13) - 2 >= 9)
      {
        if (BYTE4(v13) == 11)
        {
          LODWORD(v13) = *(a2 + 32);
          WebCore::Length::ref(&v13);
        }
      }

      else
      {
        BYTE6(v13) = *(a2 + 38);
        LODWORD(v13) = *(a2 + 32);
      }

      IPC::ArgumentCoder<WebCore::Length,void>::encode(v3, &v13);
      if (BYTE4(v13) == 11)
      {
        WebCore::Length::deref(&v13);
      }

      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 12));
    }

    if (((1 << v4) & 0x601C0) != 0)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 2);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 16));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 24));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 32));
      v5 = *(a2 + 40);
LABEL_7:
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, v5);
      v6 = *(a2 + 12);
      result = v3;
LABEL_8:

      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, v6);
    }
  }

  if (v4 - 9 <= 2)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 3);
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 16));
    v5 = *(a2 + 24);
    goto LABEL_7;
  }

  if (*(a2 + 12) <= 0x13u)
  {
    if (v4 == 12)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 4);
      v11 = *(a2 + 32);
      v13 = *(a2 + 16);
      v14 = 0uLL;
      v15 = v11;
      v16 = 0uLL;
      v17 = xmmword_19E703070;
      v18 = unk_19E703080;
      v19 = *(a2 + 48);
      v20 = xmmword_19E702FF0;
    }

    else
    {
      if (v4 != 19)
      {
        return result;
      }

      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 5);
      v7 = *(a2 + 96);
      v17 = *(a2 + 80);
      v18 = v7;
      v8 = *(a2 + 128);
      v19 = *(a2 + 112);
      v20 = v8;
      v9 = *(a2 + 32);
      v13 = *(a2 + 16);
      v14 = v9;
      v10 = *(a2 + 64);
      v15 = *(a2 + 48);
      v16 = v10;
    }

    return IPC::ArgumentCoder<WebCore::TransformationMatrix,void>::encode(v3, &v13);
  }

  if (v4 != 20)
  {
    if (v4 != 21)
    {
      return result;
    }

    v6 = 7;
    goto LABEL_8;
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 6);
  LOBYTE(v13) = 0;
  BYTE8(v13) = 0;
  if (*(a2 + 24) == 1)
  {
    LODWORD(v13) = 0;
    BYTE6(v13) = 0;
    WORD2(v13) = *(a2 + 20);
    BYTE7(v13) = *(a2 + 23);
    if (BYTE4(v13) - 2 >= 9)
    {
      if (BYTE4(v13) == 11)
      {
        LODWORD(v13) = *(a2 + 16);
        WebCore::Length::ref(&v13);
      }
    }

    else
    {
      BYTE6(v13) = *(a2 + 22);
      LODWORD(v13) = *(a2 + 16);
    }

    BYTE8(v13) = 1;
    v21 = 1;
    IPC::Encoder::operator<<<BOOL>(v3, &v21);
    if ((BYTE8(v13) & 1) == 0)
    {
      v12 = std::__throw_bad_optional_access[abi:sn200100]();
      if (BYTE8(v13) == 1 && BYTE4(v13) == 11)
      {
        WebCore::Length::deref(&v13);
      }

      _Unwind_Resume(v12);
    }

    result = IPC::ArgumentCoder<WebCore::Length,void>::encode(v3, &v13);
  }

  else
  {
    v21 = 0;
    result = IPC::Encoder::operator<<<BOOL>(v3, &v21);
  }

  if (BYTE8(v13) == 1 && BYTE4(v13) == 11)
  {
    return WebCore::Length::deref(&v13);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::TransformOperation,void>::decode(uint64_t result, const WebCore::TransformationMatrix **a2)
{
  v4 = result;
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  if (v7 <= v5 - v6)
  {
    *a2 = 0;
    a2[1] = 0;
    v46 = a2[3];
    if (v46)
    {
      if (v7)
      {
        (*(*v46 + 16))(v46);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_126;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_126:
    *a2 = 0;
    a2[1] = 0;
    v47 = a2[3];
    if (v47)
    {
      if (v7)
      {
        (*(*v47 + 16))(v47, v6);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_129;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_129:
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v7)
      {
        result = (*(*result + 16))(result, v6);
        LODWORD(v9) = 0;
        v6 = *a2;
        if (*a2)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_130:
    *v4 = 0;
    v4[8] = 0;
    return result;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_126;
  }

  v8 = *v5;
  if (v8 >= 8)
  {
    goto LABEL_129;
  }

  LODWORD(v9) = v8 | 0x100;
  if (!v6)
  {
    goto LABEL_130;
  }

LABEL_5:
  if (v9 >= 0x100 && v9 == 0)
  {
    IPC::Decoder::decode<WebCore::Length>(&v58, a2);
    IPC::Decoder::decode<WebCore::Length>(&v62, a2);
    IPC::Decoder::decode<WebCore::Length>(v56, a2);
    result = IPC::Decoder::decode<WebCore::TransformOperationType>(a2);
    if (*a2)
    {
      v15 = result;
      LODWORD(v9) = result;
      if (result <= 0xFFu)
      {
        goto LABEL_87;
      }

      v16 = 0;
      result = 0;
      if (v15 <= 0x10u)
      {
        v2 = 98360;
        if (((1 << v15) & 0x18038) != 0)
        {
          LODWORD(v9) = v59;
          if ((v59 & 1) == 0)
          {
            goto LABEL_87;
          }

          LODWORD(v9) = v63;
          if ((v63 & 1) == 0)
          {
            goto LABEL_87;
          }

          LODWORD(v9) = v57;
          if ((v57 & 1) == 0)
          {
            goto LABEL_87;
          }

          WebCore::TranslateTransformOperation::create();
          result = v55;
          v16 = 1;
        }
      }
    }

    else
    {
      result = 0;
      v16 = 0;
    }

    if (v57 == 1 && v56[4] == 11)
    {
      v39 = result;
      WebCore::Length::deref(v56);
      result = v39;
    }

    if (v63 == 1 && BYTE4(v62) == 11)
    {
      v40 = result;
      WebCore::Length::deref(&v62);
      result = v40;
    }

    if (v59 == 1 && BYTE4(v58) == 11)
    {
      v41 = result;
      WebCore::Length::deref(&v58);
      result = v41;
      if (v16)
      {
LABEL_47:
        if (*a2)
        {
          goto LABEL_78;
        }

LABEL_48:
        *v4 = 0;
        v4[8] = 0;
        if (result)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (v17 != 1)
        {
          return result;
        }

        goto LABEL_108;
      }
    }

    else if (v16)
    {
      goto LABEL_47;
    }

    v6 = *a2;
    v42 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v43 = a2[3];
    if (v43 && v42)
    {
      v45 = result;
      (*(*v43 + 16))(a2[3], v6);
      result = v45;
    }

    v9 = *a2;
    if (*a2)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_78:
      *v4 = result;
LABEL_79:
      v4[8] = 1;
      return result;
    }

    goto LABEL_48;
  }

  if (v9 >= 0x100 && v9 == 1)
  {
    IPC::Decoder::decode<unsigned long long>(a2);
    v19 = v18;
    IPC::Decoder::decode<unsigned long long>(a2);
    v21 = v20;
    IPC::Decoder::decode<unsigned long long>(a2);
    v23 = v22;
    result = IPC::Decoder::decode<WebCore::TransformOperationType>(a2);
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_85;
    }

    LODWORD(v9) = result;
    if (result <= 0xFFu)
    {
      goto LABEL_87;
    }

    if (result > 0xEu)
    {
      goto LABEL_85;
    }

    LODWORD(v9) = 1 << result;
    if (((1 << result) & 0x6007) == 0)
    {
      goto LABEL_85;
    }

    if ((v19 & 1) == 0 || (v21 & 1) == 0 || (v23 & 1) == 0)
    {
      goto LABEL_87;
    }

    WebCore::ScaleTransformOperation::create();
  }

  else
  {
    if (v9 < 0x100 || v9 != 2)
    {
      if (v9 < 0x100 || v9 != 3)
      {
        if (v9 >= 0x100 && v9 == 4)
        {
          result = IPC::Decoder::decode<WebCore::TransformationMatrix>(&v58, a2);
          v6 = *a2;
          if (*a2)
          {
            LODWORD(v9) = v61;
            if ((v61 & 1) == 0)
            {
              goto LABEL_87;
            }

            WebCore::MatrixTransformOperation::create(&v62, &v58, v6);
            goto LABEL_84;
          }
        }

        else
        {
          if (v9 < 0x100 || v9 != 5)
          {
            goto LABEL_88;
          }

          result = IPC::Decoder::decode<WebCore::TransformationMatrix>(&v58, a2);
          v6 = *a2;
          if (*a2)
          {
            LODWORD(v9) = v61;
            if (v61)
            {
              WebCore::Matrix3DTransformOperation::create(&v62, &v58, v6);
LABEL_84:
              result = v62;
              goto LABEL_77;
            }

            while (1)
            {
LABEL_87:
              __break(1u);
LABEL_88:
              if (v9 < 0x100 || v9 != 6)
              {
                if (v9 < 0x100 || v9 != 7)
                {
                  goto LABEL_130;
                }

                result = WebCore::IdentityTransformOperation::create(&v58, result);
                v59 = 1;
                if (*a2)
                {
                  *v4 = v58;
                  goto LABEL_79;
                }

                *v4 = 0;
                v4[8] = 0;
                result = v58;
                v58 = 0;
                if (!result)
                {
                  return result;
                }

                goto LABEL_108;
              }

              v37 = a2[1];
              v9 = a2[2];
              if (v37 <= v9 - v6)
              {
                *a2 = 0;
                a2[1] = 0;
                v48 = a2[3];
                if (!v48)
                {
                  v37 = 0;
                  goto LABEL_136;
                }

                if (v37)
                {
                  (*(*v48 + 16))(v48);
                  v6 = *a2;
                  v37 = a2[1];
                }

                else
                {
LABEL_136:
                  v6 = 0;
                }

LABEL_137:
                *a2 = 0;
                a2[1] = 0;
                v49 = a2[3];
                if (!v49)
                {
                  v37 = 0;
                  goto LABEL_139;
                }

                if (v37)
                {
                  (*(*v49 + 16))(v49, v6);
                  v6 = *a2;
                  v37 = a2[1];
                }

                else
                {
LABEL_139:
                  v6 = 0;
                }

LABEL_140:
                *a2 = 0;
                a2[1] = 0;
                v50 = a2[3];
                if (v50 && v37)
                {
                  (*(*v50 + 16))(v50, v6);
                }

LABEL_141:
                LOBYTE(v58) = 0;
                v60 = 0;
                v6 = *a2;
                v51 = a2[1];
                *a2 = 0;
                a2[1] = 0;
                result = a2[3];
                if (result && v51)
                {
                  result = (*(*result + 16))(result, v6);
                }

                v38 = 0;
                goto LABEL_143;
              }

              a2[2] = (v9 + 1);
              if (!v9)
              {
                goto LABEL_137;
              }

              LODWORD(v9) = *v9;
              if (v9 >= 2)
              {
                goto LABEL_140;
              }

              if (v9)
              {
                break;
              }

              LOBYTE(v58) = 0;
              v59 = 0;
              v38 = 1;
              v60 = 1;
LABEL_143:
              v52 = *a2;
              if (*a2)
              {
                if (v38)
                {
                  result = WebCore::PerspectiveTransformOperation::create();
                  v53 = v62;
                  if ((v60 & 1) != 0 && (v59 & 1) != 0 && BYTE4(v58) == 11)
                  {
                    result = WebCore::Length::deref(&v58);
                  }

                  goto LABEL_149;
                }
              }

              else
              {
                if (v38 & 1) != 0 && (v2 & v9)
                {
                  WebCore::Length::deref(&v58);
                  v6 = *a2;
                }

                else
                {
                  v6 = *a2;
                }

                v54 = a2[1];
                *a2 = 0;
                a2[1] = 0;
                result = a2[3];
                if (result && v54)
                {
                  result = (*(*result + 16))(result, v6);
                }

                v53 = 0;
LABEL_149:
                v9 = *a2;
                if (!*a2)
                {
                  *v4 = 0;
                  v4[8] = 0;
                  if (!v52 || !v53)
                  {
                    return result;
                  }

                  if (v53[2] != 1)
                  {
                    --v53[2];
                    return result;
                  }

                  v44 = *(*v53 + 8);
                  return v44();
                }

                if (v52)
                {
                  *v4 = v53;
                  goto LABEL_79;
                }
              }
            }

            result = IPC::Decoder::decode<WebCore::Length>(&v62, a2);
            LODWORD(v9) = v63;
            if (v63 != 1)
            {
              goto LABEL_141;
            }

            LODWORD(v58) = 0;
            BYTE4(v58) = BYTE4(v62);
            *(&v58 + 5) = BYTE5(v62);
            HIBYTE(v58) = HIBYTE(v62);
            if (BYTE4(v62) - 2 >= 9)
            {
              if (BYTE4(v62) != 11)
              {
                goto LABEL_105;
              }
            }

            else
            {
              BYTE6(v58) = BYTE6(v62);
              if (BYTE6(v62) == 1)
              {
                LODWORD(v58) = v62;
LABEL_105:
                LODWORD(v9) = 1;
                v59 = 1;
                v60 = 1;
                v2 = BYTE4(v62) == 11;
                v38 = 1;
                goto LABEL_143;
              }
            }

            LODWORD(v58) = v62;
            goto LABEL_105;
          }
        }

        goto LABEL_85;
      }

      IPC::Decoder::decode<unsigned long long>(a2);
      v33 = v32;
      IPC::Decoder::decode<unsigned long long>(a2);
      v35 = v34;
      result = IPC::Decoder::decode<WebCore::TransformOperationType>(a2);
      v6 = *a2;
      if (*a2)
      {
        LODWORD(v9) = result;
        if (result <= 0xFFu)
        {
          goto LABEL_87;
        }

        LODWORD(v9) = (result - 9);
        if (v9 <= 2)
        {
          if ((v33 & 1) == 0 || (v35 & 1) == 0)
          {
            goto LABEL_87;
          }

          WebCore::SkewTransformOperation::create();
          goto LABEL_76;
        }
      }

LABEL_85:
      v36 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (result && v36)
      {
        result = (*(*result + 16))(result);
      }

      v9 = *a2;
      if (*a2)
      {
        goto LABEL_87;
      }

      goto LABEL_130;
    }

    IPC::Decoder::decode<unsigned long long>(a2);
    v25 = v24;
    IPC::Decoder::decode<unsigned long long>(a2);
    v27 = v26;
    IPC::Decoder::decode<unsigned long long>(a2);
    v29 = v28;
    IPC::Decoder::decode<unsigned long long>(a2);
    v31 = v30;
    result = IPC::Decoder::decode<WebCore::TransformOperationType>(a2);
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_85;
    }

    LODWORD(v9) = result;
    if (result <= 0xFFu)
    {
      goto LABEL_87;
    }

    if (result > 0x12u)
    {
      goto LABEL_85;
    }

    LODWORD(v9) = 1 << result;
    if (((1 << result) & 0x601C0) == 0)
    {
      goto LABEL_85;
    }

    if ((v25 & 1) == 0 || (v27 & 1) == 0 || (v29 & 1) == 0 || (v31 & 1) == 0)
    {
      goto LABEL_87;
    }

    WebCore::RotateTransformOperation::create();
  }

LABEL_76:
  result = v58;
LABEL_77:
  if (*a2)
  {
    goto LABEL_78;
  }

  *v4 = 0;
  v4[8] = 0;
  if (!result)
  {
    return result;
  }

LABEL_108:
  if (*(result + 8) == 1)
  {
    v44 = *(*result + 8);
    return v44();
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

void sub_19D731D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, char a15, __int16 a16, char a17, char a18, __int16 a19, char a20, char a21, __int16 a22, char a23, char a24, __int16 a25, char a26, char a27, __int16 a28, char a29, char a30)
{
  if (a29 == 1 && a26 == 1 && a23 == 11)
  {
    WebCore::Length::deref(&a20);
  }

  _Unwind_Resume(exception_object);
}

mpark *_ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(IPC::Encoder *a1, uint64_t a2)
{
  if (BYTE6(a2) == 2)
  {
    v3 = 0;
  }

  else if (BYTE6(a2) == 1)
  {
    v3 = a2 | 0x100000000;
  }

  else
  {
    v3 = a2;
  }

  v4 = HIDWORD(v3);
  v6 = BYTE4(v3);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (v6 == 1)
  {
    if (v4 == 1)
    {
      return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *&v3);
    }

LABEL_12:
    mpark::throw_bad_variant_access(result);
  }

  if (v6)
  {
    return result;
  }

  if (v4)
  {
    goto LABEL_12;
  }

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *&v3);
}

void _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedArrayINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEELm2EEEEENSt3__18optionalIT_EEv(_BYTE *a1, uint64_t *a2)
{
  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v38, a2);
  if (v39 != 1)
  {
    v35[0] = 0;
    v37 = 0;
    goto LABEL_35;
  }

  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v40, a2);
  if (v41 != 1)
  {
    v35[0] = 0;
    v37 = 0;
LABEL_31:
    if ((v39 & 1) != 0 && v38 != -1 && (v38 & 0xFE000000000000) != 0)
    {
      v42 = v38 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v42);
    }

LABEL_35:
    if ((v37 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_36;
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_65;
  }

  if (v38 == -1)
  {
    v42 = -1;
    goto LABEL_10;
  }

  v45 = &v42;
  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v38), v38, &v45);
  v38 = -1;
  if (v41)
  {
LABEL_10:
    if (v40 == -1)
    {
      v43 = -1;
    }

    else
    {
      v44 = &v43;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v40), v40, &v44);
    }

    v4 = 0;
    v40 = -1;
    v5 = v35;
    v6 = &v42;
    do
    {
      v7 = v4;
      v8 = *v6;
      if (*v6 == -1)
      {
        *v5 = -1;
      }

      else
      {
        v44 = v5;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v8), v8, &v44);
      }

      *v6 = -1;
      v4 = 1;
      v6 = &v43;
      v5 = &v36;
    }

    while ((v7 & 1) == 0);
    v37 = 1;
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v42 + i);
      if (v10 != -1 && (v10 & 0xFE000000000000) != 0)
      {
        v45 = (v10 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v45);
      }
    }

    if ((v41 & 1) != 0 && v40 != -1 && (v40 & 0xFE000000000000) != 0)
    {
      v42 = v40 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v42);
    }

    goto LABEL_31;
  }

  do
  {
LABEL_65:
    __break(1u);
LABEL_66:
    v29 = *a2;
    v30 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v29);
    }

LABEL_36:
    if (!*a2)
    {
      *a1 = 0;
      a1[16] = 0;
      goto LABEL_55;
    }
  }

  while (v37 != 1);
  v13 = 0;
  v14 = v35;
  v15 = &v42;
  do
  {
    v16 = v13;
    v17 = *v14;
    if (*v14 == -1)
    {
      *v15 = -1;
    }

    else
    {
      v38 = v15;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v17), v17, &v38);
    }

    *v14 = -1;
    v13 = 1;
    v15 = &v43;
    v14 = &v36;
  }

  while ((v16 & 1) == 0);
  v18 = 0;
  v19 = 0;
  v20 = &v42;
  do
  {
    v21 = v18;
    v22 = *v20;
    if (*v20 == -1)
    {
      *&a1[8 * v19] = -1;
    }

    else
    {
      v38 = &a1[8 * v19];
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v22), v22, &v38);
    }

    *v20 = -1;
    v18 = 1;
    v20 = &v43;
    v19 = 1;
  }

  while ((v21 & 1) == 0);
  a1[16] = 1;
  for (j = 8; j != -8; j -= 8)
  {
    v24 = *(&v42 + j);
    if (v24 != -1 && (v24 & 0xFE000000000000) != 0)
    {
      v40 = v24 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v40);
    }
  }

LABEL_55:
  if (v37 == 1)
  {
    for (k = 8; k != -8; k -= 8)
    {
      v27 = *&v35[k];
      if (v27 != -1 && (v27 & 0xFE000000000000) != 0)
      {
        v42 = v27 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v42);
      }
    }
  }

  if ((a1[16] & 1) == 0)
  {
    v32 = *a2;
    v33 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v34 = a2[3];
    if (v34)
    {
      if (v33)
      {
        (*(*v34 + 16))(v34, v32);
      }
    }
  }
}

void sub_19D7322A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(v20 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v23 = *(v20 + i);
      if (v23 != -1 && (v23 & 0xFE000000000000) != 0)
      {
        a9 = v23 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a9);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
  {
    goto LABEL_36;
  }

  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_39;
  }

  v7 = *v4;
  if (v7 <= 1)
  {
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v15 = v6 >= v13 - v5 && v6 - (v13 - v5) > 3;
    if (v7)
    {
      if (v15)
      {
        a2[2] = v12 + 8;
        if (v13)
        {
          v16 = *v13 | 0x100000000;
          if (v5)
          {
LABEL_21:
            if ((v16 & 0x100000000) == 0)
            {
              goto LABEL_35;
            }

            v17 = v16 & 0x1FFFFFF00;
            goto LABEL_28;
          }

LABEL_52:
          v6 = a2[1];
          v20 = a2[3];
          *a2 = 0;
          a2[1] = 0;
          if (v20)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }

        v21 = v6;
        v22 = v5;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        *a2 = 0;
        a2[1] = 0;
        v23 = a2[3];
        if (v23)
        {
          (*(*v23 + 16))(v23);
          v22 = *a2;
          v21 = a2[1];
        }
      }

      *a2 = 0;
      a2[1] = 0;
      v24 = a2[3];
      if (!v24 || !v21)
      {
        goto LABEL_4;
      }

      (*(*v24 + 16))(v24, v22, v21);
      v16 = 0;
      v5 = *a2;
      if (*a2)
      {
        goto LABEL_21;
      }

      goto LABEL_52;
    }

    if (v15)
    {
      a2[2] = v12 + 8;
      if (v13)
      {
        v16 = *v13 | 0x100000000;
        if (!v5)
        {
          goto LABEL_52;
        }

LABEL_26:
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_35;
        }

        v17 = v16 & 0xFFFFFF00;
LABEL_28:
        if (HIDWORD(v17))
        {
          v18 = v17 & 0xFFFFFF00 | v16 | 0x1000000000000;
        }

        else
        {
          v18 = v17 & 0xFFFFFF00 | v16;
        }

        v29 = a1;
        result = _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(HIWORD(v18), v18, &v29);
        *(a1 + 8) = 1;
        return result;
      }

      v25 = v6;
      v26 = v5;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      *a2 = 0;
      a2[1] = 0;
      v27 = a2[3];
      if (v27)
      {
        (*(*v27 + 16))(v27);
        v26 = *a2;
        v25 = a2[1];
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v28 = a2[3];
    if (!v28 || !v25)
    {
      goto LABEL_4;
    }

    (*(*v28 + 16))(v28, v26, v25);
    v16 = 0;
    v5 = *a2;
    if (!*a2)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  while (1)
  {
LABEL_4:
    v8 = *a2;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (!result)
    {
      v9 = 0;
      goto LABEL_6;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

    (*(*result + 16))(result, v8);
    if (!*a2)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_39:
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20)
    {
LABEL_53:
      if (v6)
      {
        (*(*v20 + 16))(v20, v5);
      }
    }
  }

  v9 = a2[1];
  result = a2[3];
LABEL_6:
  *a1 = 0;
  *(a1 + 8) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v9)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

void _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(_BYTE *a1, uint64_t *a2)
{
  _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedArrayINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEELm2EEEEENSt3__18optionalIT_EEv(v25, a2);
  if (*a2)
  {
    if (v27 != 1)
    {
      __break(1u);
LABEL_32:
      v20 = *a2;
      v21 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v22 = a2[3];
      if (v22)
      {
        if (v21)
        {
          (*(*v22 + 16))(v22, v20);
        }
      }

      return;
    }

    v4 = 0;
    v5 = v25;
    v6 = v23;
    do
    {
      v7 = v4;
      v8 = *v5;
      if (*v5 == -1)
      {
        *v6 = -1;
      }

      else
      {
        v28 = v6;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v8), v8, &v28);
      }

      *v5 = -1;
      v4 = 1;
      v6 = &v24;
      v5 = &v26;
    }

    while ((v7 & 1) == 0);
    v9 = 0;
    v10 = 0;
    v11 = v23;
    do
    {
      v12 = v9;
      v13 = *v11;
      if (*v11 == -1)
      {
        *&a1[8 * v10] = -1;
      }

      else
      {
        v28 = &a1[8 * v10];
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v13), v13, &v28);
      }

      *v11 = -1;
      v9 = 1;
      v11 = &v24;
      v10 = 1;
    }

    while ((v12 & 1) == 0);
    a1[16] = 1;
    for (i = 1; i != -1; --i)
    {
      v15 = v23[i];
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        v29 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v29);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
  }

  if (v27 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v18 = *&v25[j];
      if (v18 != -1 && (v18 & 0xFE000000000000) != 0)
      {
        v23[0] = v18 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v23);
      }
    }
  }

  if ((a1[16] & 1) == 0)
  {
    goto LABEL_32;
  }
}

void sub_19D732A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v19 = *(v16 + i);
      if (v19 != -1 && (v19 & 0xFE000000000000) != 0)
      {
        a12 = v19 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a12);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::Style::Position>::optional[abi:sn200100]<WebCore::Style::Position,0>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = *(a2 + 8 * v5);
    if (v7 == -1)
    {
      *(a1 + 8 * v5) = -1;
    }

    else
    {
      v9 = (a1 + 8 * v5);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v9);
    }

    *(a2 + 8 * v5) = -1;
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D732C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    v15 = v10 - 8;
    do
    {
      v16 = *(v15 + v14);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3IPC7Decoder6decodeIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS4_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS3_IJNS4_8ConstantILNS4_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEEEENSt3__18optionalIT_EEv(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

  v7 = v4 + 1;
  a2[2] = (v4 + 1);
  if (!v4)
  {
LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    v9 = a2[3];
    if (v9 && v6)
    {
      (*(*v9 + 16))(v9, v5);
    }

    goto LABEL_15;
  }

  if (*v4 < 2u)
  {
    if (*v4)
    {
      if (v6 <= &v7[-v5])
      {
        v15 = 0;
        v16 = 0;
        *a2 = 0;
        a2[1] = 0;
        v17 = a2[3];
        if (v17)
        {
          (*(*v17 + 16))(v17);
          v16 = *a2;
          v15 = a2[1];
        }
      }

      else
      {
        a2[2] = (v4 + 2);
        if (v4 != -1)
        {
          v8 = *v7;
          if (v8 <= 3)
          {
            if (v8 == 2)
            {
              result = IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(a2);
              v13 = 2;
            }

            else if (v8 == 1)
            {
              result = IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(a2);
              v13 = 1;
            }

            else if (*v7)
            {
              result = IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(a2);
              v13 = 3;
            }

            else
            {
              result = IPC::Decoder::decode<WebCore::Constant<(WebCore::CSSValueID)711>>(a2);
              v13 = 0;
            }

            if ((result & 0xFF00) != 0)
            {
              *a1 = v13 << 8;
              *(a1 + 8) = 1;
LABEL_29:
              *(a1 + 16) = 1;
              return result;
            }
          }

          goto LABEL_8;
        }

        v15 = v6;
        v16 = v5;
      }

      *a2 = 0;
      a2[1] = 0;
      v18 = a2[3];
      if (v18 && v15)
      {
        (*(*v18 + 16))(v18, v16, v15);
      }

LABEL_8:
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_9;
    }

    result = _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v19, a2);
    if (v20 == 1)
    {
      if (v19 == -1)
      {
        *a1 = -1;
      }

      else
      {
        v21 = a1;
        result = _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v19), v19, &v21);
      }

      *(a1 + 8) = 0;
      goto LABEL_29;
    }
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 16) = 0;
  v11 = *a2;
  v12 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v12)
    {
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

void sub_19D732F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (*(v11 + 16) == 1)
  {
    _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v11);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::Style::Position>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_27:
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_31;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    IPC::Decoder::decode<WebCore::Style::Position>(v20, a2);
    if (v21 == 1)
    {
      std::optional<WebCore::Style::Position>::optional[abi:sn200100]<WebCore::Style::Position,0>(a1, v20);
      a1[24] = 1;
      if (v21)
      {
        for (i = 8; i != -8; i -= 8)
        {
          v9 = *&v20[i];
          if (v9 != -1 && (v9 & 0xFE000000000000) != 0)
          {
            v22 = v9 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
          }
        }
      }

      goto LABEL_32;
    }

LABEL_31:
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_32;
  }

  v20[0] = 0;
  v21 = 0;
  std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](a1, v20);
  a1[24] = 1;
  if (v21 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v12 = *&v20[j];
      if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
      {
        v22 = v12 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
      }
    }
  }

LABEL_32:
  if ((a1[24] & 1) == 0)
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D7331D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (*(v12 + 24) == 1 && *(v12 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v15 = *(v12 + i);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a9 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a9);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v28 = a1;
    v17 = a1[3];
    if (v17)
    {
      if (v1)
      {
        (*(*v17 + 16))(v17);
        v3 = *v28;
        v1 = v28[1];
LABEL_35:
        *v28 = 0;
        v28[1] = 0;
        v18 = v28[3];
        if (v18)
        {
          if (v1)
          {
            (*(*v18 + 16))(v18, v3);
            v3 = *v28;
            v1 = v28[1];
LABEL_39:
            *v28 = 0;
            v28[1] = 0;
            v19 = v28[3];
            if (v19 && v1)
            {
              (*(*v19 + 16))(v19, v3);
            }

            v7 = 0;
            v5 = 0;
            a1 = v28;
            goto LABEL_24;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_35;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v28 = a1;
    goto LABEL_35;
  }

  if (*v2 >= 2u)
  {
    v28 = a1;
    goto LABEL_39;
  }

  if (!*v2)
  {
    v7 = 0;
    v5 = 0;
LABEL_14:
    v6 = 0x1000000;
    return v6 + (v5 | v7);
  }

  if (v1 <= &v4[-v3])
  {
    v20 = 0;
    v21 = 0;
    *a1 = 0;
    a1[1] = 0;
    v29 = a1;
    v22 = a1[3];
    if (v22)
    {
      (*(*v22 + 16))(v22);
      v21 = *v29;
      v20 = v29[1];
    }

    goto LABEL_43;
  }

  a1[2] = v2 + 2;
  if (v2 == -1)
  {
    v29 = a1;
    v20 = v1;
    v21 = v3;
LABEL_43:
    *v29 = 0;
    v29[1] = 0;
    v23 = v29[3];
    if (v23 && v20)
    {
      (*(*v23 + 16))(v23, v21, v20);
    }

    v7 = 0;
    a1 = v29;
    goto LABEL_22;
  }

  if (*v4 <= 1u)
  {
    if (*v4)
    {
      if (v3)
      {
        v5 = 0x10000;
        v6 = 0x1000000;
        v7 = 256;
        return v6 + (v5 | v7);
      }

      *a1 = 0;
      a1[1] = 0;
      v9 = a1[3];
      if (v9)
      {
        v26 = a1;
        (*(*v9 + 16))(v9, 0);
        a1 = v26;
      }

      v7 = 256;
      goto LABEL_22;
    }

    if (v3)
    {
      v7 = 0;
      v5 = 0x10000;
      goto LABEL_14;
    }

    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      v27 = a1;
      (*(*v10 + 16))(v10, 0);
      a1 = v27;
    }
  }

  v7 = 0;
LABEL_22:
  v11 = *a1;
  v12 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v13 = a1[3];
  if (v13)
  {
    v31 = v7;
    v25 = a1;
    if (v12)
    {
      (*(*v13 + 16))(v13, v11);
    }

    v5 = 0x10000;
    a1 = v25;
    v7 = v31;
  }

  else
  {
    v5 = 0x10000;
  }

LABEL_24:
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16)
  {
    v24 = v5;
    v30 = v7;
    if (v15)
    {
      (*(*v16 + 16))(v16, v14);
    }

    v6 = 0;
    v7 = v30;
    v5 = v24;
  }

  else
  {
    v6 = 0;
  }

  return v6 + (v5 | v7);
}

void IPC::Decoder::decode<WebCore::Style::Position>(_BYTE *a1, uint64_t *a2)
{
  _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(v20, a2);
  if (*a2)
  {
    if (v22 != 1)
    {
      __break(1u);
LABEL_27:
      v15 = *a2;
      v16 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v17 = a2[3];
      if (v17)
      {
        if (v16)
        {
          (*(*v17 + 16))(v17, v15);
        }
      }

      return;
    }

    v4 = 0;
    v5 = v20;
    v6 = v18;
    do
    {
      v7 = v4;
      v8 = *v5;
      if (*v5 == -1)
      {
        *v6 = -1;
      }

      else
      {
        v23 = v6;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v8), v8, &v23);
      }

      *v5 = -1;
      v4 = 1;
      v6 = &v19;
      v5 = &v21;
    }

    while ((v7 & 1) == 0);
    std::optional<WebCore::Style::Position>::optional[abi:sn200100]<WebCore::Style::Position,0>(a1, v18);
    for (i = 1; i != -1; --i)
    {
      v10 = v18[i];
      if (v10 != -1 && (v10 & 0xFE000000000000) != 0)
      {
        v24 = v10 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v24);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
  }

  if (v22 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v13 = *&v20[j];
      if (v13 != -1 && (v13 & 0xFE000000000000) != 0)
      {
        v18[0] = v13 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v18);
      }
    }
  }

  if ((a1[16] & 1) == 0)
  {
    goto LABEL_27;
  }
}

void sub_19D733804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v19 = *(v16 + i);
      if (v19 != -1 && (v19 & 0xFE000000000000) != 0)
      {
        a12 = v19 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a12);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::Style::RelativeControlPoint,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  for (i = 0; i != 16; i += 8)
  {
    _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(a1, *(a2 + i));
  }

  return IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>> const&>(a1, a2 + 16);
}

uint64_t IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>>>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v31 = a1;
    v19 = a1[3];
    if (v19)
    {
      if (v1)
      {
        (*(*v19 + 16))(v19);
        v3 = *v31;
        v1 = v31[1];
LABEL_41:
        *v31 = 0;
        v31[1] = 0;
        v20 = v31[3];
        if (v20)
        {
          if (v1)
          {
            (*(*v20 + 16))(v20, v3);
            v3 = *v31;
            v1 = v31[1];
LABEL_45:
            *v31 = 0;
            v31[1] = 0;
            v21 = v31[3];
            if (v21 && v1)
            {
              (*(*v21 + 16))(v21, v3);
            }

            v8 = 0;
            v6 = 0;
            a1 = v31;
            goto LABEL_24;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_41;
  }

  v4 = v2 + 1;
  a1[2] = v2 + 1;
  if (!v2)
  {
    v31 = a1;
    goto LABEL_41;
  }

  if (*v2 >= 2u)
  {
    v31 = a1;
    goto LABEL_45;
  }

  if (!*v2)
  {
    v8 = 0;
    v6 = 0;
LABEL_15:
    v7 = 0x1000000;
    return v7 + (v6 | v8);
  }

  if (v1 <= &v4[-v3])
  {
    v22 = 0;
    v23 = 0;
    *a1 = 0;
    a1[1] = 0;
    v32 = a1;
    v24 = a1[3];
    if (v24)
    {
      (*(*v24 + 16))(v24);
      v23 = *v32;
      v22 = v32[1];
    }

    goto LABEL_49;
  }

  a1[2] = v2 + 2;
  if (v2 == -1)
  {
    v32 = a1;
    v22 = v1;
    v23 = v3;
LABEL_49:
    *v32 = 0;
    v32[1] = 0;
    v25 = v32[3];
    if (v25 && v22)
    {
      (*(*v25 + 16))(v25, v23, v22);
    }

    v8 = 0;
    a1 = v32;
    goto LABEL_22;
  }

  v5 = *v4;
  if (v5 <= 2)
  {
    if (*v4)
    {
      if (v5 == 1)
      {
        if (v3)
        {
          v6 = 0x10000;
          v7 = 0x1000000;
          v8 = 256;
          return v7 + (v6 | v8);
        }

        *a1 = 0;
        a1[1] = 0;
        v17 = a1[3];
        if (v17)
        {
          v29 = a1;
          (*(*v17 + 16))(v17, 0);
          a1 = v29;
        }

        v8 = 256;
      }

      else
      {
        if (v3)
        {
          v6 = 0x10000;
          v7 = 0x1000000;
          v8 = 512;
          return v7 + (v6 | v8);
        }

        *a1 = 0;
        a1[1] = 0;
        v18 = a1[3];
        if (v18)
        {
          v30 = a1;
          (*(*v18 + 16))(v18, 0);
          a1 = v30;
        }

        v8 = 512;
      }

      goto LABEL_22;
    }

    if (v3)
    {
      v8 = 0;
      v6 = 0x10000;
      goto LABEL_15;
    }

    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      v28 = a1;
      (*(*v10 + 16))(v10, 0);
      a1 = v28;
    }
  }

  v8 = 0;
LABEL_22:
  v11 = *a1;
  v12 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v13 = a1[3];
  if (v13)
  {
    v34 = v8;
    v27 = a1;
    if (v12)
    {
      (*(*v13 + 16))(v13, v11);
    }

    v6 = 0x10000;
    a1 = v27;
    v8 = v34;
  }

  else
  {
    v6 = 0x10000;
  }

LABEL_24:
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16)
  {
    v26 = v6;
    v33 = v8;
    if (v15)
    {
      (*(*v16 + 16))(v16, v14);
    }

    v7 = 0;
    v8 = v33;
    v6 = v26;
  }

  else
  {
    v7 = 0;
  }

  return v7 + (v6 | v8);
}

uint64_t std::optional<WebCore::Style::RelativeControlPoint>::optional[abi:sn200100]<WebCore::Style::RelativeControlPoint,0>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = *(a2 + 8 * v5);
    if (v7 == -1)
    {
      *(a1 + 8 * v5) = -1;
    }

    else
    {
      v10 = (a1 + 8 * v5);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v10);
    }

    *(a2 + 8 * v5) = -1;
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  v8 = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 16) = v8;
  *(a1 + 24) = 1;
  return a1;
}

void sub_19D733E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    v15 = v10 - 8;
    do
    {
      v16 = *(v15 + v14);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::Style::AbsoluteControlPoint>::optional[abi:sn200100]<WebCore::Style::AbsoluteControlPoint,0>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = *(a2 + 8 * v5);
    if (v7 == -1)
    {
      *(a1 + 8 * v5) = -1;
    }

    else
    {
      v10 = (a1 + 8 * v5);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v10);
    }

    *(a2 + 8 * v5) = -1;
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  v8 = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 16) = v8;
  *(a1 + 24) = 1;
  return a1;
}

void sub_19D733EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    v15 = v10 - 8;
    do
    {
      v16 = *(v15 + v14);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v65 = a2[3];
    if (v65)
    {
      if (v6)
      {
        (*(*v65 + 16))(v65);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_108;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_108:
    *a2 = 0;
    a2[1] = 0;
    v66 = a2[3];
    if (v66 && v6)
    {
      (*(*v66 + 16))(v66, v5);
    }

    goto LABEL_4;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_108;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
LABEL_4:
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_89;
  }

  if (!v7)
  {
    IPC::Decoder::decode<WebCore::Style::Position>(v72, a2);
    if (*a2)
    {
      if (v74 != 1)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v32 = 0;
      v33 = v72;
      v34 = &v70;
      do
      {
        v35 = v32;
        v36 = *v33;
        if (*v33 == -1)
        {
          *v34 = -1;
        }

        else
        {
          v75 = v34;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v36), v36, &v75);
        }

        *v33 = -1;
        v32 = 1;
        v34 = &v71;
        v33 = &v73;
      }

      while ((v35 & 1) == 0);
      v37 = 0;
      v38 = v67;
      v39 = &v70;
      do
      {
        v40 = v37;
        v41 = *v39;
        if (*v39 == -1)
        {
          *v38 = -1;
        }

        else
        {
          v75 = v38;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v41), v41, &v75);
        }

        *v39 = -1;
        v37 = 1;
        v39 = &v71;
        v38 = &v68;
      }

      while ((v40 & 1) == 0);
      v69 = 1;
      for (i = 1; i != -1; --i)
      {
        v43 = (&v70)[i];
        if (v43 != -1 && (v43 & 0xFE000000000000) != 0)
        {
          v76 = v43 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v76);
        }
      }
    }

    else
    {
      v67[0] = 0;
      v69 = 0;
    }

    if (v74 == 1)
    {
      for (j = 1; j != -1; --j)
      {
        v46 = v72[j];
        if (v46 != -1 && (v46 & 0xFE000000000000) != 0)
        {
          v70 = (v46 & 0xFF00FFFFFFFFFFFFLL);
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v70);
        }
      }
    }

    if (v69 != 1)
    {
      v62 = *a2;
      v63 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v64 = a2[3];
      if (!v64)
      {
        goto LABEL_4;
      }

      if (!v63)
      {
        goto LABEL_4;
      }

      (*(*v64 + 16))(v64, v62);
      if ((v69 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v48 = 0;
    v49 = 0;
    v50 = v67;
    do
    {
      v51 = v48;
      v52 = *v50;
      if (*v50 == -1)
      {
        *&a1[8 * v49] = -1;
      }

      else
      {
        v70 = &a1[8 * v49];
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v52), v52, &v70);
      }

      *v50 = -1;
      v48 = 1;
      v50 = &v68;
      v49 = 1;
    }

    while ((v51 & 1) == 0);
    a1[16] = 0;
    a1[24] = 1;
    if (v69)
    {
      for (k = 8; k != -8; k -= 8)
      {
        v54 = *&v67[k];
        if (v54 != -1 && (v54 & 0xFE000000000000) != 0)
        {
          v72[0] = v54 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v72);
        }
      }
    }

    goto LABEL_89;
  }

  _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(v72, a2);
  if (*a2)
  {
    if (v74 == 1)
    {
      v8 = 0;
      v9 = v72;
      v10 = &v70;
      do
      {
        v11 = v8;
        v12 = *v9;
        if (*v9 == -1)
        {
          *v10 = -1;
        }

        else
        {
          v75 = v10;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v12), v12, &v75);
        }

        *v9 = -1;
        v8 = 1;
        v10 = &v71;
        v9 = &v73;
      }

      while ((v11 & 1) == 0);
      v13 = 0;
      v14 = v67;
      v15 = &v70;
      do
      {
        v16 = v13;
        v17 = *v15;
        if (*v15 == -1)
        {
          *v14 = -1;
        }

        else
        {
          v75 = v14;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v17), v17, &v75);
        }

        *v15 = -1;
        v13 = 1;
        v15 = &v71;
        v14 = &v68;
      }

      while ((v16 & 1) == 0);
      v69 = 1;
      for (m = 1; m != -1; --m)
      {
        v19 = (&v70)[m];
        if (v19 != -1 && (v19 & 0xFE000000000000) != 0)
        {
          v76 = v19 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v76);
        }
      }

      goto LABEL_25;
    }

    goto LABEL_94;
  }

LABEL_95:
  v67[0] = 0;
  v69 = 0;
LABEL_25:
  if (v74 == 1)
  {
    for (n = 1; n != -1; --n)
    {
      v22 = v72[n];
      if (v22 != -1 && (v22 & 0xFE000000000000) != 0)
      {
        v70 = (v22 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v70);
      }
    }
  }

  if (v69 != 1)
  {
    v59 = *a2;
    v60 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v61 = a2[3];
    if (!v61)
    {
      goto LABEL_4;
    }

    if (!v60)
    {
      goto LABEL_4;
    }

    (*(*v61 + 16))(v61, v59);
    if ((v69 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = v67;
  do
  {
    v27 = v24;
    v28 = *v26;
    if (*v26 == -1)
    {
      *&a1[8 * v25] = -1;
    }

    else
    {
      v70 = &a1[8 * v25];
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v28), v28, &v70);
    }

    *v26 = -1;
    v24 = 1;
    v26 = &v68;
    v25 = 1;
  }

  while ((v27 & 1) == 0);
  a1[16] = 1;
  a1[24] = 1;
  if (v69)
  {
    for (ii = 8; ii != -8; ii -= 8)
    {
      v30 = *&v67[ii];
      if (v30 != -1 && (v30 & 0xFE000000000000) != 0)
      {
        v72[0] = v30 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v72);
      }
    }
  }

LABEL_89:
  if ((a1[24] & 1) == 0)
  {
    v56 = *a2;
    v57 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v58 = a2[3];
    if (v58)
    {
      if (v57)
      {
        (*(*v58 + 16))(v58, v56);
      }
    }
  }
}

void sub_19D734534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a11 == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v20 = *(&a9 + i);
      if (v20 != -1 && (v20 & 0xFE000000000000) != 0)
      {
        a14 = v20 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a14);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::Style::AbsoluteControlPoint>(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::Style::Position>(v23, a2);
  v4 = IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>>>(a2);
  if (!*a2)
  {
    goto LABEL_27;
  }

  if (v25 != 1)
  {
    goto LABEL_26;
  }

  v5 = v4;
  v6 = 0;
  v7 = v23;
  v8 = &v20;
  do
  {
    v9 = v6;
    v10 = *v7;
    if (*v7 == -1)
    {
      *v8 = -1;
    }

    else
    {
      v26 = v8;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v10), v10, &v26);
    }

    *v7 = -1;
    v6 = 1;
    v8 = v21;
    v7 = &v24;
  }

  while ((v9 & 1) == 0);
  if ((v5 & 0xFFFF000000) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_16;
  }

  v21[4] = v5;
  v22 = BYTE2(v5);
  std::optional<WebCore::Style::AbsoluteControlPoint>::optional[abi:sn200100]<WebCore::Style::AbsoluteControlPoint,0>(a1, &v20);
  for (i = 4; i != -4; i -= 4)
  {
    v12 = *&v21[i - 4];
    if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
    {
      v27 = v12 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v27);
    }
  }

LABEL_16:
  if (v25 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v15 = *&v23[j];
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        v20 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v20);
      }
    }
  }

  if ((a1[24] & 1) == 0)
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D734AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v19 = *(v16 + i);
      if (v19 != -1 && (v19 & 0xFE000000000000) != 0)
      {
        a12 = v19 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a12);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::Style::AbsoluteControlPoint>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_27:
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_31;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    IPC::Decoder::decode<WebCore::Style::AbsoluteControlPoint>(v20, a2);
    if (v21 == 1)
    {
      std::optional<WebCore::Style::AbsoluteControlPoint>::optional[abi:sn200100]<WebCore::Style::AbsoluteControlPoint,0>(a1, v20);
      a1[32] = 1;
      if (v21)
      {
        for (i = 8; i != -8; i -= 8)
        {
          v9 = *&v20[i];
          if (v9 != -1 && (v9 & 0xFE000000000000) != 0)
          {
            v22 = v9 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
          }
        }
      }

      goto LABEL_32;
    }

LABEL_31:
    *a1 = 0;
    a1[32] = 0;
    goto LABEL_32;
  }

  v20[0] = 0;
  v21 = 0;
  std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](a1, v20);
  a1[32] = 1;
  if (v21 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v12 = *&v20[j];
      if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
      {
        v22 = v12 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
      }
    }
  }

LABEL_32:
  if ((a1[32] & 1) == 0)
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D734DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (*(v14 + 32) == 1 && *(v14 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v17 = *(v14 + i);
      if (v17 != -1 && (v17 & 0xFE000000000000) != 0)
      {
        a10 = v17 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::Style::RelativeControlPoint>(_BYTE *a1, uint64_t *a2)
{
  _ZN3IPC7Decoder6decodeIN7WebCore19SpaceSeparatedPointINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(v23, a2);
  v4 = IPC::Decoder::decode<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)502>,WebCore::Constant<(WebCore::CSSValueID)503>,WebCore::Constant<(WebCore::CSSValueID)812>>>>(a2);
  if (!*a2)
  {
    goto LABEL_27;
  }

  if (v25 != 1)
  {
    goto LABEL_26;
  }

  v5 = v4;
  v6 = 0;
  v7 = v23;
  v8 = &v20;
  do
  {
    v9 = v6;
    v10 = *v7;
    if (*v7 == -1)
    {
      *v8 = -1;
    }

    else
    {
      v26 = v8;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v10), v10, &v26);
    }

    *v7 = -1;
    v6 = 1;
    v8 = v21;
    v7 = &v24;
  }

  while ((v9 & 1) == 0);
  if ((v5 & 0xFFFF000000) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_16;
  }

  v21[4] = v5;
  v22 = BYTE2(v5);
  std::optional<WebCore::Style::RelativeControlPoint>::optional[abi:sn200100]<WebCore::Style::RelativeControlPoint,0>(a1, &v20);
  for (i = 4; i != -4; i -= 4)
  {
    v12 = *&v21[i - 4];
    if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
    {
      v27 = v12 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v27);
    }
  }

LABEL_16:
  if (v25 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v15 = *&v23[j];
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        v20 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v20);
      }
    }
  }

  if ((a1[24] & 1) == 0)
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D7350B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v19 = *(v16 + i);
      if (v19 != -1 && (v19 & 0xFE000000000000) != 0)
      {
        a12 = v19 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a12);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::Style::RelativeControlPoint>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_27:
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_31;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    IPC::Decoder::decode<WebCore::Style::RelativeControlPoint>(v20, a2);
    if (v21 == 1)
    {
      std::optional<WebCore::Style::RelativeControlPoint>::optional[abi:sn200100]<WebCore::Style::RelativeControlPoint,0>(a1, v20);
      a1[32] = 1;
      if (v21)
      {
        for (i = 8; i != -8; i -= 8)
        {
          v9 = *&v20[i];
          if (v9 != -1 && (v9 & 0xFE000000000000) != 0)
          {
            v22 = v9 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
          }
        }
      }

      goto LABEL_32;
    }

LABEL_31:
    *a1 = 0;
    a1[32] = 0;
    goto LABEL_32;
  }

  v20[0] = 0;
  v21 = 0;
  std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](a1, v20);
  a1[32] = 1;
  if (v21 == 1)
  {
    for (j = 8; j != -8; j -= 8)
    {
      v12 = *&v20[j];
      if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
      {
        v22 = v12 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v22);
      }
    }
  }

LABEL_32:
  if ((a1[32] & 1) == 0)
  {
    v17 = *a2;
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v18)
      {
        (*(*v19 + 16))(v19, v17);
      }
    }
  }
}

void sub_19D73540C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (*(v14 + 32) == 1 && *(v14 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v17 = *(v14 + i);
      if (v17 != -1 && (v17 & 0xFE000000000000) != 0)
      {
        a10 = v17 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3IPC7Decoder6decodeIN7WebCore5Style5AngleIXtlNS2_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEdEEEENSt3__18optionalIT_EEv(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (*a1)
  {
    if (v3)
    {
      return result;
    }

    __break(1u);
  }

  else
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      return result;
    }
  }

  if (v4)
  {
    (*(*result + 16))(result, 0);
  }

  return 0;
}

void _ZN3IPC7Decoder6decodeIN7WebCore38MinimallySerializingSpaceSeparatedSizeINS2_5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEEEENSt3__18optionalIT_EEv(_BYTE *a1, uint64_t *a2)
{
  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v59, a2);
  j = &v57;
  if (v60 != 1)
  {
    LOBYTE(v56[0]) = 0;
    v58 = 0;
    goto LABEL_35;
  }

  _ZN3IPC7Decoder6decodeIN7WebCore5Style16LengthPercentageIXtlNS2_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEEEENSt3__18optionalIT_EEv(&v61, a2);
  if (v62 != 1)
  {
    LOBYTE(v56[0]) = 0;
    v58 = 0;
LABEL_31:
    if ((v60 & 1) != 0 && v59 != -1 && (v59 & 0xFE000000000000) != 0)
    {
      v63 = v59 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v63);
    }

LABEL_35:
    if ((v58 & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_36;
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v59 == -1)
  {
    v63 = -1;
    goto LABEL_10;
  }

  v66 = &v63;
  _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v59), v59, &v66);
  v59 = -1;
  if (v62)
  {
LABEL_10:
    if (v61 == -1)
    {
      v64 = -1;
    }

    else
    {
      v65 = &v64;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v61), v61, &v65);
    }

    v5 = 0;
    v61 = -1;
    v6 = v56;
    v7 = &v63;
    do
    {
      v8 = v5;
      v9 = *v7;
      if (*v7 == -1)
      {
        *v6 = -1;
      }

      else
      {
        v65 = v6;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v9), v9, &v65);
      }

      *v7 = -1;
      v5 = 1;
      v7 = &v64;
      v6 = &v57;
    }

    while ((v8 & 1) == 0);
    v58 = 1;
    for (i = 8; i != -8; i -= 8)
    {
      v11 = *(&v63 + i);
      if (v11 != -1 && (v11 & 0xFE000000000000) != 0)
      {
        v66 = (v11 & 0xFF00FFFFFFFFFFFFLL);
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v66);
      }
    }

    if ((v62 & 1) != 0 && v61 != -1 && (v61 & 0xFE000000000000) != 0)
    {
      v63 = v61 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v63);
    }

    goto LABEL_31;
  }

  while (1)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    v44 = *a2;
    v45 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v46 = a2[3];
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v44);
    }

LABEL_36:
    if (!*a2)
    {
      v53[0] = 0;
      v55 = 0;
      goto LABEL_55;
    }

    if (v58 == 1)
    {
      v14 = 0;
      v15 = v56;
      v16 = &v63;
      do
      {
        v17 = v14;
        v18 = *v15;
        if (*v15 == -1)
        {
          *v16 = -1;
        }

        else
        {
          v59 = v16;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v18), v18, &v59);
        }

        *v15 = -1;
        v14 = 1;
        v16 = &v64;
        v15 = j;
      }

      while ((v17 & 1) == 0);
      v19 = 0;
      v20 = v53;
      v21 = &v63;
      do
      {
        v22 = v19;
        v23 = *v21;
        if (*v21 == -1)
        {
          *v20 = -1;
        }

        else
        {
          v59 = v20;
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v23), v23, &v59);
        }

        *v21 = -1;
        v19 = 1;
        v21 = &v64;
        v20 = &v54;
      }

      while ((v22 & 1) == 0);
      v55 = 1;
      for (j = 8; j != -8; j -= 8)
      {
        v24 = *(&v63 + j);
        if (v24 != -1 && (v24 & 0xFE000000000000) != 0)
        {
          v61 = v24 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v61);
        }
      }

LABEL_55:
      if (v58 == 1)
      {
        for (j = 8; j != -8; j -= 8)
        {
          v26 = *(v56 + j);
          if (v26 != -1 && (v26 & 0xFE000000000000) != 0)
          {
            v63 = v26 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v63);
          }
        }
      }

      if ((v55 & 1) == 0)
      {
        v47 = *a2;
        v48 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v49 = a2[3];
        if (v49)
        {
          if (v48)
          {
            (*(*v49 + 16))(v49, v47);
          }
        }
      }

      if (!*a2)
      {
        *a1 = 0;
        a1[16] = 0;
        goto LABEL_83;
      }

      if (v55 == 1)
      {
        break;
      }
    }
  }

  v28 = 0;
  v29 = v53;
  v30 = v56;
  do
  {
    v31 = v28;
    v32 = *v29;
    if (*v29 == -1)
    {
      *v30 = -1;
    }

    else
    {
      v61 = v30;
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v32), v32, &v61);
    }

    *v29 = -1;
    v28 = 1;
    v30 = &v57;
    v29 = &v54;
  }

  while ((v31 & 1) == 0);
  v33 = 0;
  v34 = 0;
  v35 = v56;
  do
  {
    v36 = v33;
    v37 = *v35;
    if (*v35 == -1)
    {
      *&a1[8 * v34] = -1;
    }

    else
    {
      v61 = &a1[8 * v34];
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v37), v37, &v61);
    }

    *v35 = -1;
    v33 = 1;
    v35 = &v57;
    v34 = 1;
  }

  while ((v36 & 1) == 0);
  a1[16] = 1;
  for (k = 1; k != -1; --k)
  {
    v39 = v56[k];
    if (v39 != -1 && (v39 & 0xFE000000000000) != 0)
    {
      v63 = v39 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v63);
    }
  }

LABEL_83:
  if (v55 == 1)
  {
    for (m = 8; m != -8; m -= 8)
    {
      v42 = *&v53[m];
      if (v42 != -1 && (v42 & 0xFE000000000000) != 0)
      {
        v56[0] = v42 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v56);
      }
    }
  }

  if ((a1[16] & 1) == 0)
  {
    v50 = *a2;
    v51 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v52 = a2[3];
    if (v52)
    {
      if (v51)
      {
        (*(*v52 + 16))(v52, v50);
      }
    }
  }
}

void sub_19D735AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, unint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v24 = *(v21 + i);
      if (v24 != -1 && (v24 & 0xFE000000000000) != 0)
      {
        a13 = v24 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a13);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::TransformOperationData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  if (*(a2 + 80))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if ((*(a2 + 80) & 1) == 0)
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::optional<WebCore::Path>>(v5);
    }

    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(a1, (a2 + 16));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 84));
}

atomic_uint *IPC::Decoder::decode<std::optional<WebCore::Path>>(uint64_t a1, IPC::Decoder *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_24:
        *a2 = 0;
        *(a2 + 1) = 0;
        v12 = *(a2 + 3);
        if (v12)
        {
          if (v6)
          {
            (*(*v12 + 16))(v12, v5);
LABEL_29:
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_30:
            *a2 = 0;
            *(a2 + 1) = 0;
            v13 = *(a2 + 3);
            if (v13 && v6)
            {
              (*(*v13 + 16))(v13, v5);
            }

            *a1 = 0;
            *(a1 + 72) = 0;
LABEL_32:
            v14 = *a2;
            v15 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            result = *(a2 + 3);
            if (result)
            {
              if (v15)
              {
                return (*(*result + 16))(result, v14);
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
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_24;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_24;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    result = IPC::ArgumentCoder<WebCore::Path,void>::decode(a2, v5, v16);
    if (v19)
    {
      *a1 = 0;
      *(a1 + 56) = -1;
      v9 = v18;
      if (v18 == 2)
      {
        *a1 = *&v16[0];
        v9 = 2;
      }

      else if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_9;
        }

        v10 = v16[1];
        *a1 = v16[0];
        *(a1 + 16) = v10;
        *(a1 + 32) = v16[2];
        *(a1 + 48) = v17;
      }

      *(a1 + 56) = v9;
LABEL_9:
      *(a1 + 64) = 1;
      *(a1 + 72) = 1;
      return result;
    }

    goto LABEL_29;
  }

  LOBYTE(v16[0]) = 0;
  v19 = 0;
  result = std::__optional_move_base<WebCore::Path,false>::__optional_move_base[abi:sn200100](a1, v16);
  *(a1 + 72) = 1;
  if (v19 == 1 && v18 >= 2u && v18 != 255)
  {
    result = *&v16[0];
    *&v16[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    goto LABEL_32;
  }

  return result;
}

void sub_19D73622C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 72) == 1 && *(v20 + 64) == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::CSSBoxType>(void *a1)
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
  if (v4 < 8)
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

mpark *IPC::ArgumentCoder<WebCore::PathOperation,void>::encode(mpark *result, uint64_t a2)
{
  v3 = result;
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  if (v4 <= 1)
  {
    if (*(a2 + 12))
    {
      if (v4 != 1)
      {
        return result;
      }

      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 1);
      v28 = *(a2 + 112);
      v5 = IPC::Encoder::operator<<<BOOL>(v3, &v28);
      v6 = a2 + 16;
      if (v28 <= 2u)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            if (*(a2 + 112) == 1)
            {
              v23 = 32;
              do
              {
                v30[0] = *(v6 + 8);
                IPC::Encoder::operator<<<BOOL>(v3, v30);
                _ZN3IPC13ArgumentCoderIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS2_IJNS3_8ConstantILNS3_10CSSValueIDE711EEENS9_ILSA_710EEENS9_ILSA_713EEENS9_ILSA_712EEEEEEEEEvE6encodeINS_7EncoderERKSG_JEEEvRT_OT0_NSt3__116integer_sequenceImJXspT1_EEEEm(v3, v6, v30[0]);
                v6 += 16;
                v23 -= 16;
              }

              while (v23);
              IPC::ArgumentCoder<std::optional<WebCore::Style::Position>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::Position> const&>(v3, a2 + 48);
              return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
            }

            goto LABEL_145;
          }

          if (v28 == 2)
          {
            if (*(a2 + 112) == 2)
            {
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 16));
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 24));
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 32));
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 40));
              for (i = 0; i != 16; i += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 48 + i));
              }

              for (j = 0; j != 16; j += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 64 + j));
              }

              for (k = 0; k != 16; k += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 96 + k));
              }

              for (m = 0; m != 16; m += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 80 + m));
              }

              return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
            }

LABEL_145:
            mpark::throw_bad_variant_access(v5);
          }
        }

        else
        {
          if (*(a2 + 112))
          {
            goto LABEL_145;
          }

          v30[0] = *(a2 + 24);
          IPC::Encoder::operator<<<BOOL>(v3, v30);
          _ZN3IPC13ArgumentCoderIN5mpark7variantIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS2_IJNS3_8ConstantILNS3_10CSSValueIDE711EEENS9_ILSA_710EEENS9_ILSA_713EEENS9_ILSA_712EEEEEEEEEvE6encodeINS_7EncoderERKSG_JEEEvRT_OT0_NSt3__116integer_sequenceImJXspT1_EEEEm(v3, a2 + 16, v30[0]);
          IPC::ArgumentCoder<std::optional<WebCore::Style::Position>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::Position> const&>(v3, a2 + 32);
        }

        return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
      }

      if (v28 == 3)
      {
        if (*(a2 + 112) != 3)
        {
          goto LABEL_145;
        }

        IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>> const&>(v3, a2 + 16);
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, *(*(a2 + 32) + 8), *(*(a2 + 32) + 20));
        IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v3, *(a2 + 40));
        return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
      }

      if (v28 == 4)
      {
        if (*(a2 + 112) == 4)
        {
          IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>> const&>(v3, a2 + 16);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v3, *(a2 + 36));
          v24 = *(a2 + 36);
          if (v24)
          {
            v25 = *(a2 + 24);
            v26 = v25 + 16 * v24;
            do
            {
              for (n = 0; n != 16; n += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v25 + n));
              }

              v25 += 16;
            }

            while (v25 != v26);
          }

          return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
        }

        goto LABEL_145;
      }

      if (v28 != 5)
      {
        return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
      }

      if (*(a2 + 112) != 5)
      {
        goto LABEL_145;
      }

      IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::Constant<(WebCore::CSSValueID)731>,WebCore::Constant<(WebCore::CSSValueID)732>>> const&>(v3, a2 + 16);
      for (ii = 0; ii != 16; ii += 8)
      {
        _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(a2 + 24 + ii));
      }

      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v3, *(a2 + 52));
      v14 = *(a2 + 52);
      if (!v14)
      {
        return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
      }

      v15 = *(a2 + 40);
      v16 = v15 + 88 * v14;
      while (1)
      {
        v29 = *(v15 + 80);
        v5 = IPC::Encoder::operator<<<BOOL>(v3, &v29);
        if (v29 <= 2u)
        {
          if (!v29)
          {
            if (*(v15 + 80))
            {
              goto LABEL_145;
            }

LABEL_68:
            v30[0] = *(v15 + 16);
            IPC::Encoder::operator<<<BOOL>(v3, v30);
            IPC::ArgumentCoder<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair> const&>(v3, v15, v30[0]);
            goto LABEL_105;
          }

          if (v29 == 1)
          {
            if (*(v15 + 80) != 1)
            {
              goto LABEL_145;
            }

            goto LABEL_68;
          }

          if (v29 != 2)
          {
LABEL_69:
            if (v29 == 7 && *(v15 + 80) != 7)
            {
              goto LABEL_145;
            }

            goto LABEL_105;
          }

          if (*(v15 + 80) != 2)
          {
            goto LABEL_145;
          }

          v30[0] = *(v15 + 8);
          v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
          v18 = *v15;
          if (v30[0] == 1)
          {
            if (*(v15 + 8) != 1)
            {
              goto LABEL_145;
            }

            goto LABEL_104;
          }

          if (!v30[0])
          {
            if (*(v15 + 8))
            {
              goto LABEL_145;
            }

LABEL_104:
            _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, v18);
          }
        }

        else if (v29 > 4u)
        {
          if (v29 == 5)
          {
            if (*(v15 + 80) != 5)
            {
              goto LABEL_145;
            }

            v30[0] = *(v15 + 48);
            v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
            if (v30[0] == 1)
            {
              if (*(v15 + 48) != 1)
              {
                goto LABEL_145;
              }

              for (jj = 0; jj != 16; jj += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v15 + jj));
              }

              goto LABEL_83;
            }

            if (!v30[0])
            {
              if (*(v15 + 48))
              {
                goto LABEL_145;
              }

              for (kk = 0; kk != 16; kk += 8)
              {
                _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v15 + kk));
              }

LABEL_83:
              IPC::ArgumentCoder<std::optional<WebCore::Style::AbsoluteControlPoint>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::AbsoluteControlPoint> const&>(v3, v15 + 16);
            }
          }

          else
          {
            if (v29 != 6)
            {
              goto LABEL_69;
            }

            if (*(v15 + 80) != 6)
            {
              goto LABEL_145;
            }

            v30[0] = *(v15 + 16);
            IPC::Encoder::operator<<<BOOL>(v3, v30);
            IPC::ArgumentCoder<mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,void>::encode<IPC::Encoder,mpark::variant<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair> const&>(v3, v15, v30[0]);
            for (mm = 24; mm != 40; mm += 8)
            {
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v15 + mm));
            }

            v30[0] = *(v15 + 41);
            v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
            if (v30[0])
            {
              if (v30[0] == 1 && *(v15 + 41) != 1)
              {
                goto LABEL_145;
              }
            }

            else if (*(v15 + 41))
            {
              goto LABEL_145;
            }

            v30[0] = *(v15 + 43);
            v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
            if (v30[0])
            {
              if (v30[0] == 1 && *(v15 + 43) != 1)
              {
                goto LABEL_145;
              }
            }

            else if (*(v15 + 43))
            {
              goto LABEL_145;
            }

            IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(v15 + 48));
          }
        }

        else if (v29 == 3)
        {
          if (*(v15 + 80) != 3)
          {
            goto LABEL_145;
          }

          v30[0] = *(v15 + 8);
          v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
          v18 = *v15;
          if (v30[0] == 1)
          {
            if (*(v15 + 8) != 1)
            {
              goto LABEL_145;
            }

            goto LABEL_104;
          }

          if (!v30[0])
          {
            if (*(v15 + 8))
            {
              goto LABEL_145;
            }

            goto LABEL_104;
          }
        }

        else
        {
          if (v29 != 4)
          {
            goto LABEL_69;
          }

          if (*(v15 + 80) != 4)
          {
            goto LABEL_145;
          }

          v30[0] = *(v15 + 72);
          v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
          if (v30[0] == 1)
          {
            if (*(v15 + 72) != 1)
            {
              goto LABEL_145;
            }

            for (nn = 0; nn != 16; nn += 8)
            {
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v15 + nn));
            }

            goto LABEL_49;
          }

          if (!v30[0])
          {
            if (*(v15 + 72))
            {
              goto LABEL_145;
            }

            for (i1 = 0; i1 != 16; i1 += 8)
            {
              _ZN3IPC13ArgumentCoderIN7WebCore5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEvE6encodeERNS_7EncoderERKS6_(v3, *(v15 + i1));
            }

LABEL_49:
            IPC::ArgumentCoder<WebCore::Style::RelativeControlPoint,void>::encode(v3, v15 + 16);
            IPC::ArgumentCoder<std::optional<WebCore::Style::AbsoluteControlPoint>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::AbsoluteControlPoint> const&>(v3, v15 + 40);
          }
        }

LABEL_105:
        v15 += 88;
        if (v15 == v16)
        {
          return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, *(a2 + 13));
        }
      }
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 0);
    std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100](v30, a2 + 96);
    if ((v32 & 1) == 0)
    {
      v29 = 0;
      result = IPC::Encoder::operator<<<BOOL>(v3, &v29);
      goto LABEL_112;
    }

    v29 = 1;
    IPC::Encoder::operator<<<BOOL>(v3, &v29);
    if (v32)
    {
      result = IPC::ArgumentCoder<WebCore::Path,void>::encode(v3, v30);
LABEL_112:
      if (v32 == 1 && v31 >= 2u && v31 != 255)
      {
        result = *v30;
        *v30 = 0;
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

    goto LABEL_126;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      return result;
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 3);
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 16));
    v30[0] = *(a2 + 25);
    v5 = IPC::Encoder::operator<<<BOOL>(v3, v30);
    v11 = *(a2 + 25);
    if (v30[0] > 1u)
    {
      if (v30[0] == 2)
      {
        if (v11 != 2)
        {
          goto LABEL_145;
        }

LABEL_124:
        if ((*(a2 + 27) & 1) == 0)
        {
LABEL_127:
          v30[0] = 0;
          IPC::Encoder::operator<<<BOOL>(v3, v30);
          return IPC::ArgumentCoder<std::optional<WebCore::Style::Position>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::Position> const&>(v3, a2 + 32);
        }

        v30[0] = 1;
        IPC::Encoder::operator<<<BOOL>(v3, v30);
        if (*(a2 + 27))
        {
          return IPC::ArgumentCoder<std::optional<WebCore::Style::Position>,void>::encode<IPC::Encoder,std::optional<WebCore::Style::Position> const&>(v3, a2 + 32);
        }

LABEL_126:
        std::__throw_bad_optional_access[abi:sn200100]();
        goto LABEL_127;
      }

      if (v30[0] == 3)
      {
        if (v11 != 3)
        {
          goto LABEL_145;
        }

        goto LABEL_124;
      }
    }

    else
    {
      if (!v30[0])
      {
        if (*(a2 + 25))
        {
          goto LABEL_145;
        }

        goto LABEL_124;
      }

      if (v30[0] == 1)
      {
        if (v11 != 1)
        {
          goto LABEL_145;
        }

        goto LABEL_124;
      }
    }

    if (v30[0] == 4 && v11 != 4)
    {
      goto LABEL_145;
    }

    goto LABEL_124;
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 2);
  v12 = *(a2 + 13);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v3, v12);
}

void sub_19D736CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, int a19, __int16 a20, char a21, char a22)
{
  if (a20 == 1 && a18 >= 2u && a18 != 255 && a11 && atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a11 + 2);
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 8);
  IPC::VectorArgumentCoder<false,WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  IPC::VectorArgumentCoder<false,WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 40);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 57));

  return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v52);
  IPC::Decoder::decode<WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v49, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v46, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v43, a1);
  v4 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v5 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v8 = *(a1 + 1);
  v9 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1;
  v11 = v9 - *a1;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v8)
      {
        (*(*v34 + 16))(v34);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_62;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_62:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v8)
    {
      (*(*v35 + 16))(v35);
    }

    goto LABEL_27;
  }

  v15 = *v9;
  v36 = 0;
  v37 = 0;
  if (v15 >= 0x100000)
  {
    v16 = 0;
    LODWORD(v22) = 0;
    while (1)
    {
      v23 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
      v54 = v23;
      if ((v23 & 0x100) == 0)
      {
        break;
      }

      if (v22 == v37)
      {
        v24 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, v22 + 1, &v54);
        LODWORD(v22) = HIDWORD(v37);
        v16 = v36;
        *(v36 + HIDWORD(v37)) = *v24;
      }

      else
      {
        *(v16 + v22) = v23;
      }

      v22 = (v22 + 1);
      HIDWORD(v37) = v22;
      v15 = (v15 - 1);
      if (!v15)
      {
        if (v37 > v22)
        {
          if (v22)
          {
            LODWORD(v37) = v22;
            v36 = WTF::fastRealloc(v16, v22);
          }

          else
          {
            v36 = 0;
            LODWORD(v37) = 0;
            WTF::fastFree(v16, v10);
          }
        }

        goto LABEL_15;
      }
    }

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (!v15)
    {
LABEL_15:
      result = v36;
      v6 = v37;
      v21 = 1;
      goto LABEL_29;
    }

    v16 = WTF::fastMalloc(v15);
    v17 = 0;
    LODWORD(v37) = v15;
    v36 = v16;
    while (1)
    {
      v18 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
      v54 = v18;
      if ((v18 & 0x100) == 0)
      {
        break;
      }

      if (v17 == v37)
      {
        v19 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, v17 + 1, &v54);
        v17 = HIDWORD(v37);
        v16 = v36;
        *(v36 + HIDWORD(v37)) = *v19;
      }

      else
      {
        *(v16 + v17) = v18;
      }

      HIDWORD(v37) = ++v17;
      v15 = (v15 - 1);
      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  WTF::fastFree(v16, v10);
LABEL_27:
  v10 = *a1;
  v25 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v25)
    {
      (*(*result + 16))(result, v10);
    }

    v21 = 0;
    result = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_29:
  if (*a1)
  {
    if (v53)
    {
      v26 = v52;
      v52 = 0;
      v36 = v26;
      if (v51)
      {
        v27 = v49;
        v37 = v49;
        *&v7 = v50;
        LODWORD(v38) = v50;
        v49 = 0;
        v50 = 0;
        if (v48)
        {
          v28 = v46;
          v29 = v47;
          v46 = 0;
          v47 = 0;
          if (v45)
          {
            v30 = v43;
            v31 = v44;
            v43 = 0;
            v44 = 0;
            if (v4 > 0xFFu)
            {
              LOBYTE(v41) = v4;
              if (v5 > 0xFFu)
              {
                HIBYTE(v41) = v5;
                if (v21)
                {
                  v38 = 0;
                  v36 = 0;
                  v37 = 0;
                  *a2 = v26;
                  *(a2 + 8) = v27;
                  *(a2 + 16) = v7;
                  *&v7 = 0;
                  v39 = v7;
                  *(a2 + 24) = v28;
                  *(a2 + 32) = v29;
                  v40 = v7;
                  *(a2 + 40) = v30;
                  *(a2 + 48) = v31;
                  *(a2 + 56) = v41;
                  v42 = v7;
                  *(a2 + 64) = result;
                  *(a2 + 72) = v6;
                  *(a2 + 80) = 1;
                  WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v10);
                  WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v32);
                  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v33);
                  result = v36;
                  v36 = 0;
                  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    result = WTF::StringImpl::destroy(result, v10);
                  }

                  goto LABEL_40;
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 80) = 0;
  if (!result)
  {
    v21 = 0;
  }

  if (v21)
  {
    result = WTF::fastFree(result, v10);
  }

LABEL_40:
  if (v45 == 1)
  {
    result = WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v10);
  }

  if (v48 == 1)
  {
    result = WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v10);
  }

  if (v51 == 1)
  {
    result = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v10);
  }

  if (v53 == 1)
  {
    result = v52;
    v52 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

void sub_19D737244(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a21 == 1)
  {
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, a2);
  }

  if (a27 == 1)
  {
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a23, a2);
  }

  if (*(v27 - 96) == 1)
  {
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27 - 112, a2);
  }

  if (*(v27 - 80) == 1)
  {
    v29 = *(v27 - 88);
    *(v27 - 88) = 0;
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

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v26 = a2[3];
    if (v26)
    {
      if (v6)
      {
        (*(*v26 + 16))(v26);
        v5 = *a2;
        v6 = a2[1];
LABEL_55:
        *a2 = 0;
        a2[1] = 0;
        v27 = a2[3];
        if (v27 && v6)
        {
          (*(*v27 + 16))(v27, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_57:
        v28 = *a2;
        v29 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v29)
          {
            return (*(*result + 16))(result, v28);
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
    goto LABEL_55;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_55;
  }

  v8 = *v4;
  v35 = 0;
  v36 = 0;
  if (v8 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::CDMMediaCapability>(&v31, a2);
      v15 = v34;
      if (v34)
      {
        if (HIDWORD(v36) == v36)
        {
          WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CDMMediaCapability>(&v35, &v31);
        }

        else
        {
          v16 = v35 + 24 * HIDWORD(v36);
          v17 = v31;
          v31 = 0;
          *v16 = v17;
          v18 = v32;
          v32 = 0;
          *(v16 + 8) = v18;
          *(v16 + 16) = v33;
          ++HIDWORD(v36);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v34 == 1)
      {
        v19 = v32;
        v32 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v5);
        }

        v20 = v31;
        v31 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v5);
        }
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v21 = HIDWORD(v36);
        if (v36 <= HIDWORD(v36))
        {
          goto LABEL_49;
        }

        result = v35;
        if (HIDWORD(v36))
        {
          v30 = v35;
          if (HIDWORD(v36) >= 0xAAAAAAB)
          {
            __break(0xC471u);
            return result;
          }

          v23 = 24 * HIDWORD(v36);
          v24 = WTF::fastMalloc((24 * HIDWORD(v36)));
          result = v30;
          LODWORD(v36) = v23 / 0x18;
          v35 = v24;
          if (v24 != v30)
          {
            WTF::VectorMover<false,WebCore::CDMMediaCapability>::move(v30, (v30 + 24 * v21), v24);
            result = v30;
          }
        }

        if (result)
        {
          if (v35 == result)
          {
            v35 = 0;
            LODWORD(v36) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_49;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v36) = 24 * v8 / 0x18u;
      v35 = WTF::fastMalloc((24 * v8));
      do
      {
        IPC::Decoder::decode<WebCore::CDMMediaCapability>(&v31, a2);
        v9 = v34;
        if (v34)
        {
          if (HIDWORD(v36) == v36)
          {
            WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CDMMediaCapability>(&v35, &v31);
          }

          else
          {
            v10 = v35 + 24 * HIDWORD(v36);
            v11 = v31;
            v31 = 0;
            *v10 = v11;
            v12 = v32;
            v32 = 0;
            *(v10 + 8) = v12;
            *(v10 + 16) = v33;
            ++HIDWORD(v36);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v34 != 1)
        {
          goto LABEL_21;
        }

        v13 = v32;
        v32 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v5);
        }

        v14 = v31;
        v31 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v5);
          if ((v9 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
LABEL_21:
          if ((v9 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        --v8;
      }

      while (v8);
    }

LABEL_49:
    *a1 = v35;
    v25 = v36;
    v35 = 0;
    v36 = 0;
    *(a1 + 8) = v25;
    *(a1 + 16) = 1;
  }

LABEL_50:
  result = WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_57;
  }

  return result;
}

void sub_19D7376C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 16) == 1)
  {
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::VideoConfiguration>>(uint64_t result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v51 = *(a2 + 3);
    if (v51)
    {
      if (v6)
      {
        (*(*v51 + 16))(v51);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_83:
        *a2 = 0;
        *(a2 + 1) = 0;
        v52 = *(a2 + 3);
        if (v52)
        {
          if (v6)
          {
            (*(*v52 + 16))(v52, v5);
            goto LABEL_158;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
LABEL_159:
        *a2 = 0;
        *(a2 + 1) = 0;
        v85 = *(a2 + 3);
        if (v85 && v6)
        {
          (*(*v85 + 16))(v85, v5);
        }

        *v3 = 0;
        *(v3 + 48) = 0;
        v86 = *a2;
        v87 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v87)
          {
            return (*(*result + 16))(result, v86);
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
    goto LABEL_83;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_83;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_159;
  }

  if (v7)
  {
    IPC::Decoder::decode<WTF::String>(a2, &v136);
    v8 = *(a2 + 1);
    v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = *a2;
    v11 = v9 - *a2;
    v12 = v8 >= v11;
    v13 = v8 - v11;
    if (v12 && v13 > 3)
    {
      *(a2 + 2) = v9 + 1;
      if (v9)
      {
        v15 = *v9 | 0x100000000;
        v16 = v10;
        goto LABEL_12;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v47 = *(a2 + 3);
      if (v47)
      {
        if (v8)
        {
          (*(*v47 + 16))(v47, v10);
          v10 = *a2;
          v8 = *(a2 + 1);
          goto LABEL_71;
        }
      }

      else
      {
        v8 = 0;
      }

      v10 = 0;
    }

LABEL_71:
    *a2 = 0;
    *(a2 + 1) = 0;
    v48 = *(a2 + 3);
    if (v48)
    {
      if (v8)
      {
        (*(*v48 + 16))(v48, v10);
        v15 = 0;
        v16 = *a2;
        v8 = *(a2 + 1);
        v10 = *a2;
        goto LABEL_12;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v8 = 0;
    }

    v10 = 0;
    v15 = 0;
LABEL_12:
    v17 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 >= v17 - v10 && v8 - (v17 - v10) > 3)
    {
      *(a2 + 2) = v17 + 4;
      if (v17)
      {
        v18 = *v17 | 0x100000000;
        goto LABEL_16;
      }

LABEL_77:
      *a2 = 0;
      *(a2 + 1) = 0;
      v50 = *(a2 + 3);
      if (v50)
      {
        if (v8)
        {
          (*(*v50 + 16))(v50, v16);
          v18 = 0;
          v16 = *a2;
          v8 = *(a2 + 1);
          v10 = *a2;
LABEL_16:
          v19 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
          v20 = (v19 - v10);
          v12 = v8 >= v20;
          v21 = v8 - v20;
          if (!v12 || v21 <= 7)
          {
            goto LABEL_63;
          }

          *(a2 + 2) = v19 + 8;
          if (!v19)
          {
            goto LABEL_66;
          }

          v22 = *v19;
          for (i = 1; ; i = 0)
          {
            v24 = IPC::Decoder::decode<unsigned long long>(a2);
            v26 = v25;
            result = IPC::Decoder::decode<std::optional<BOOL>>(a2);
            v8 = *(a2 + 1);
            v27 = *(a2 + 2);
            v16 = *a2;
            if (v8 <= &v27[-*a2])
            {
              v123 = result;
              *a2 = 0;
              *(a2 + 1) = 0;
              v53 = *(a2 + 3);
              if (v53)
              {
                if (v8)
                {
                  (*(*v53 + 16))(v53);
                  v16 = *a2;
                  v8 = *(a2 + 1);
LABEL_89:
                  *a2 = 0;
                  *(a2 + 1) = 0;
                  v54 = *(a2 + 3);
                  if (v54)
                  {
                    if (v8)
                    {
                      (*(*v54 + 16))(v54, v16);
                      v16 = *a2;
                      v8 = *(a2 + 1);
LABEL_93:
                      *a2 = 0;
                      *(a2 + 1) = 0;
                      v55 = *(a2 + 3);
                      if (v55 && v8)
                      {
                        (*(*v55 + 16))(v55, v16);
                      }

                      v34 = 0;
                      goto LABEL_114;
                    }
                  }

                  else
                  {
                    v8 = 0;
                  }

                  v16 = 0;
                  goto LABEL_93;
                }
              }

              else
              {
                v8 = 0;
              }

              v16 = 0;
              goto LABEL_89;
            }

            v28 = v27 + 1;
            *(a2 + 2) = v27 + 1;
            if (!v27)
            {
              v123 = result;
              goto LABEL_89;
            }

            v29 = *v27;
            if (v29 >= 2)
            {
              v123 = result;
              goto LABEL_93;
            }

            if (!*v27)
            {
              LOWORD(v31) = 0;
              v32 = 0x10000;
              goto LABEL_31;
            }

            if (v8 <= v28 - v16)
            {
              break;
            }

            v30 = v27 + 2;
            *(a2 + 2) = v27 + 2;
            if (v27 == -1)
            {
              v124 = result;
              v56 = v8;
              v57 = v16;
LABEL_97:
              *a2 = 0;
              *(a2 + 1) = 0;
              v59 = *(a2 + 3);
              if (v59 && v56)
              {
                (*(*v59 + 16))(v59, v57, v56);
                v16 = *a2;
                v8 = *(a2 + 1);
              }

              else
              {
                v8 = 0;
                v16 = 0;
              }

              LODWORD(result) = v124;
              goto LABEL_100;
            }

            v31 = *v28;
            if (v31 < 3)
            {
              v32 = 0x10000;
              v29 = 256;
              v28 = v30;
              goto LABEL_31;
            }

LABEL_100:
            *a2 = 0;
            *(a2 + 1) = 0;
            v60 = *(a2 + 3);
            if (v60)
            {
              v123 = result;
              if (v8)
              {
                (*(*v60 + 16))(v60, v16);
              }

              v34 = 256;
LABEL_114:
              LODWORD(result) = v123;
              goto LABEL_102;
            }

            v34 = 256;
LABEL_102:
            v61 = *a2;
            v62 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v63 = *(a2 + 3);
            if (!v63)
            {
              v16 = 0;
              goto LABEL_104;
            }

            v112 = v34;
            v125 = result;
            if (!v62)
            {
              v63 = 0;
              v16 = 0;
LABEL_104:
              v33 = v34;
LABEL_105:
              *a2 = 0;
              *(a2 + 1) = 0;
              v64 = *(a2 + 3);
              if (v64)
              {
                v103 = v33;
                v114 = v34;
                v127 = result;
                if (v63)
                {
                  (*(*v64 + 16))(v64, v16, v63);
                  v16 = *a2;
                  v8 = *(a2 + 1);
                }

                else
                {
                  v8 = 0;
                  v16 = 0;
                }

                v34 = v114;
                LODWORD(result) = v127;
                v33 = v103;
              }

              else
              {
                v8 = 0;
                v16 = 0;
              }

              goto LABEL_107;
            }

            (*(*v63 + 16))(v63, v61);
            LOWORD(v31) = 0;
            v32 = 0;
            v16 = *a2;
            v8 = *(a2 + 1);
            v28 = *(a2 + 2);
            v29 = v112;
            result = v125;
LABEL_31:
            v33 = v31 | v29;
            v34 = v32 | v29;
            if (v8 <= v28 - v16)
            {
              v110 = v33;
              v121 = v34;
              v134 = result;
              v63 = 0;
              v88 = *(a2 + 3);
              *a2 = 0;
              *(a2 + 1) = 0;
              if (v8 && v88)
              {
                (*(*v88 + 16))(v88);
                v16 = *a2;
                v63 = *(a2 + 1);
              }

              else
              {
                v16 = 0;
              }

              v34 = v121;
              LODWORD(result) = v134;
              v33 = v110;
              goto LABEL_105;
            }

            v35 = v28 + 1;
            *(a2 + 2) = v28 + 1;
            if (!v28)
            {
              v63 = v8;
              goto LABEL_105;
            }

            v36 = *v28;
            if (v36 < 2)
            {
              if (!*v28)
              {
                LOWORD(v38) = 0;
                v39 = 0x10000;
                goto LABEL_40;
              }

              if (v8 <= v35 - v16)
              {
                v104 = v33;
                v115 = v34;
                v128 = result;
                v66 = 0;
                v67 = 0;
                *a2 = 0;
                *(a2 + 1) = 0;
                v68 = *(a2 + 3);
                if (v68)
                {
                  (*(*v68 + 16))(v68);
                  v67 = *a2;
                  v66 = *(a2 + 1);
                }
              }

              else
              {
                v37 = v28 + 2;
                *(a2 + 2) = v28 + 2;
                if (v28 != -1)
                {
                  v38 = *v35;
                  if (v38 < 3)
                  {
                    v39 = 0x10000;
                    v36 = 256;
                    v35 = v37;
                    goto LABEL_40;
                  }

                  goto LABEL_126;
                }

                v104 = v33;
                v115 = v34;
                v128 = result;
                v66 = v8;
                v67 = v16;
              }

              *a2 = 0;
              *(a2 + 1) = 0;
              v69 = *(a2 + 3);
              if (v69 && v66)
              {
                (*(*v69 + 16))(v69, v67, v66);
                v16 = *a2;
                v8 = *(a2 + 1);
              }

              else
              {
                v8 = 0;
                v16 = 0;
              }

              v34 = v115;
              LODWORD(result) = v128;
              v33 = v104;
LABEL_126:
              *a2 = 0;
              *(a2 + 1) = 0;
              v70 = *(a2 + 3);
              if (v70)
              {
                v102 = v33;
                v113 = v34;
                v126 = result;
                if (v8)
                {
                  (*(*v70 + 16))(v70, v16);
                }

                v41 = 256;
LABEL_145:
                v34 = v113;
                LODWORD(result) = v126;
                v33 = v102;
                goto LABEL_128;
              }

              v41 = 256;
              goto LABEL_128;
            }

LABEL_107:
            *a2 = 0;
            *(a2 + 1) = 0;
            v65 = *(a2 + 3);
            if (v65)
            {
              v102 = v33;
              v113 = v34;
              v126 = result;
              if (v8)
              {
                (*(*v65 + 16))(v65, v16);
              }

              v41 = 0;
              goto LABEL_145;
            }

            v41 = 0;
LABEL_128:
            v71 = *a2;
            v72 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v73 = *(a2 + 3);
            if (!v73)
            {
              v16 = 0;
              v40 = v41;
              goto LABEL_130;
            }

            v96 = v41;
            v105 = v33;
            v116 = v34;
            v129 = result;
            if (!v72)
            {
              v73 = 0;
              v16 = 0;
              v40 = v41;
LABEL_130:
              *a2 = 0;
              *(a2 + 1) = 0;
              v74 = *(a2 + 3);
              if (v74)
              {
                v92 = v40;
                v98 = v41;
                v107 = v33;
                v118 = v34;
                v131 = result;
                if (v73)
                {
                  (*(*v74 + 16))(v74, v16, v73);
                  v16 = *a2;
                  v8 = *(a2 + 1);
                }

                else
                {
                  v8 = 0;
                  v16 = 0;
                }

                v34 = v118;
                LODWORD(result) = v131;
                v41 = v98;
                v33 = v107;
                v40 = v92;
              }

              else
              {
                v8 = 0;
                v16 = 0;
              }

              goto LABEL_132;
            }

            (*(*v73 + 16))(v73, v71);
            LOWORD(v38) = 0;
            v39 = 0;
            v16 = *a2;
            v8 = *(a2 + 1);
            v35 = *(a2 + 2);
            v34 = v116;
            result = v129;
            v36 = v96;
            v33 = v105;
LABEL_40:
            v40 = v38 | v36;
            v41 = v39 | v36;
            if (v8 <= v35 - v16)
            {
              v95 = v40;
              v101 = v41;
              v111 = v33;
              v122 = v34;
              v135 = result;
              v73 = 0;
              v89 = *(a2 + 3);
              *a2 = 0;
              *(a2 + 1) = 0;
              if (v8 && v89)
              {
                (*(*v89 + 16))(v89);
                v16 = *a2;
                v73 = *(a2 + 1);
              }

              else
              {
                v16 = 0;
              }

              v34 = v122;
              LODWORD(result) = v135;
              v41 = v101;
              v33 = v111;
              v40 = v95;
              goto LABEL_130;
            }

            v42 = v35 + 1;
            *(a2 + 2) = v35 + 1;
            if (!v35)
            {
              v73 = v8;
              goto LABEL_130;
            }

            v43 = *v35;
            if (v43 < 2)
            {
              if (!*v35)
              {
                LOWORD(v7) = 0;
                v44 = 0x10000;
                if (!v16)
                {
                  goto LABEL_154;
                }

                goto LABEL_50;
              }

              if (v8 <= v42 - v16)
              {
                v93 = v40;
                v99 = v41;
                v108 = v33;
                v119 = v34;
                v132 = result;
                v77 = 0;
                v78 = 0;
                *a2 = 0;
                *(a2 + 1) = 0;
                v79 = *(a2 + 3);
                if (v79)
                {
                  (*(*v79 + 16))(v79);
                  v78 = *a2;
                  v77 = *(a2 + 1);
                }
              }

              else
              {
                *(a2 + 2) = v35 + 2;
                if (v35 != -1)
                {
                  v7 = *v42;
                  if (v7 < 3)
                  {
                    v44 = 0x10000;
                    v43 = 256;
                    if (!v16)
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_50;
                  }

                  goto LABEL_151;
                }

                v93 = v40;
                v99 = v41;
                v108 = v33;
                v119 = v34;
                v132 = result;
                v77 = v8;
                v78 = v16;
              }

              *a2 = 0;
              *(a2 + 1) = 0;
              v80 = *(a2 + 3);
              if (v80 && v77)
              {
                (*(*v80 + 16))(v80, v78, v77);
                v16 = *a2;
                v8 = *(a2 + 1);
              }

              else
              {
                v8 = 0;
                v16 = 0;
              }

              v34 = v119;
              LODWORD(result) = v132;
              v41 = v99;
              v33 = v108;
              v40 = v93;
LABEL_151:
              *a2 = 0;
              *(a2 + 1) = 0;
              v81 = *(a2 + 3);
              if (v81)
              {
                v91 = v40;
                v97 = v41;
                v106 = v33;
                v117 = v34;
                v130 = result;
                if (v8)
                {
                  (*(*v81 + 16))(v81, v16);
                }

                v76 = 256;
LABEL_171:
                v34 = v117;
                LODWORD(result) = v130;
                v41 = v97;
                v33 = v106;
                v40 = v91;
                goto LABEL_153;
              }

              v76 = 256;
              goto LABEL_153;
            }

LABEL_132:
            *a2 = 0;
            *(a2 + 1) = 0;
            v75 = *(a2 + 3);
            if (v75)
            {
              v91 = v40;
              v97 = v41;
              v106 = v33;
              v117 = v34;
              v130 = result;
              if (v8)
              {
                (*(*v75 + 16))(v75, v16);
              }

              v76 = 0;
              goto LABEL_171;
            }

            v76 = 0;
LABEL_153:
            v16 = *a2;
            v82 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v83 = *(a2 + 3);
            if (!v83 || !v82 || (v90 = v76, v94 = v40, v100 = v41, v109 = v33, v120 = v34, v133 = result, (*(*v83 + 16))(v83, v16), LOWORD(v7) = 0, v44 = 0, v16 = *a2, v34 = v120, result = v133, v41 = v100, v33 = v109, v43 = v90, v40 = v94, !*a2))
            {
LABEL_154:
              if (v137)
              {
                v84 = v136;
                v136 = 0;
                if (v84)
                {
                  if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v84, v16);
                  }
                }
              }

LABEL_158:
              v5 = *a2;
              v6 = *(a2 + 1);
              goto LABEL_159;
            }

LABEL_50:
            if ((v137 & 1) != 0 && (v15 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && (i & 1) != 0 && (v26 & 1) != 0 && (result & 0x10000) != 0 && HIWORD(v34) && HIWORD(v41) && (v44 | v43) >> 16)
            {
              *v3 = v136;
              *(v3 + 8) = v15;
              *(v3 + 12) = v18;
              *(v3 + 16) = v22;
              *(v3 + 24) = v24;
              *(v3 + 32) = result;
              *(v3 + 34) = v33;
              *(v3 + 36) = v40;
              *(v3 + 38) = v7 | v43;
              LOBYTE(v7) = 1;
              goto LABEL_60;
            }

            __break(1u);
LABEL_63:
            *a2 = 0;
            *(a2 + 1) = 0;
            v45 = *(a2 + 3);
            if (v45)
            {
              if (v8)
              {
                (*(*v45 + 16))(v45, v16);
                v16 = *a2;
                v8 = *(a2 + 1);
                goto LABEL_66;
              }
            }

            else
            {
              v8 = 0;
            }

            v16 = 0;
LABEL_66:
            *a2 = 0;
            *(a2 + 1) = 0;
            v46 = *(a2 + 3);
            if (v46 && v8)
            {
              (*(*v46 + 16))(v46, v16);
            }

            v22 = 0;
          }

          v124 = result;
          v56 = 0;
          v57 = 0;
          *a2 = 0;
          *(a2 + 1) = 0;
          v58 = *(a2 + 3);
          if (v58)
          {
            (*(*v58 + 16))(v58);
            v57 = *a2;
            v56 = *(a2 + 1);
          }

          goto LABEL_97;
        }

        v16 = 0;
      }

      else
      {
        v16 = 0;
        v8 = 0;
      }

      v10 = 0;
      v18 = 0;
      goto LABEL_16;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v49 = *(a2 + 3);
    if (v49)
    {
      if (v8)
      {
        (*(*v49 + 16))(v49, v16);
        v16 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_77;
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = 0;
    goto LABEL_77;
  }

  *result = 0;
LABEL_60:
  *(v3 + 40) = v7;
  *(v3 + 48) = 1;
  return result;
}

void sub_19D7384DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::AudioConfiguration>>(uint64_t result, IPC::Decoder *a2)
{
  v5 = result;
  v6 = *(a2 + 2);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 <= &v6[-v7])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v8)
      {
        (*(*v19 + 16))(v19);
        v7 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_37;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_37;
  }

  *(a2 + 2) = v6 + 1;
  if (v6)
  {
    v9 = *v6;
    if (v9 >= 2)
    {
      goto LABEL_22;
    }

    if (!v9)
    {
      *result = 0;
      *(result + 48) = 0;
      goto LABEL_18;
    }

    IPC::Decoder::decode<WTF::String>(a2, &v28);
    IPC::Decoder::decode<WTF::String>(a2, &v26);
    IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v23);
    v10 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
    v12 = v11;
    result = IPC::Decoder::decode<std::optional<BOOL>>(a2);
    v14 = *a2;
    if (*a2)
    {
      if (v29)
      {
        v15 = v28;
        v28 = 0;
        if (v27 & 1) != 0 && (v25)
        {
          v3 = v26;
          *&v22 = v23;
          BYTE8(v22) = v24;
          if (v12)
          {
            v2 = result;
            if ((result & 0x10000) != 0)
            {
              v21 = v22;
              goto LABEL_12;
            }
          }
        }
      }

      __break(1u);
    }

    if (v27)
    {
      result = v26;
      v26 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }
      }
    }

    v15 = 0;
LABEL_12:
    if (v29 == 1 && (result = v28, v28 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v13);
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else if (v14)
    {
LABEL_16:
      *v5 = v15;
      *(v5 + 8) = v3;
      *(v5 + 16) = v21;
      *(v5 + 32) = v10;
      *(v5 + 36) = BYTE4(v10);
      *(v5 + 40) = v2;
      *(v5 + 48) = 1;
LABEL_18:
      *(v5 + 56) = 1;
      return result;
    }

    goto LABEL_21;
  }

LABEL_37:
  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (v20)
  {
    if (v8)
    {
      (*(*v20 + 16))(v20, v7);
LABEL_21:
      v7 = *a2;
      v8 = *(a2 + 1);
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = 0;
LABEL_22:
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 3);
  if (v16 && v8)
  {
    (*(*v16 + 16))(v16, v7);
  }

  *v5 = 0;
  *(v5 + 56) = 0;
  v17 = *a2;
  v18 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v18)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

void sub_19D7387DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20)
{
  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaEncodingConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::VideoConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoConfiguration> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::AudioConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::AudioConfiguration> const&>(a1, a2 + 48);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 128);
  v5 = *(a2 + 152);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaEncodingConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<std::optional<WebCore::VideoConfiguration>>(&v44, a1);
  IPC::Decoder::decode<std::optional<WebCore::AudioConfiguration>>(&v40, v2);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v38, v2);
  result = IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v36, v2);
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  if (v5 <= v6 - *v2)
  {
    goto LABEL_65;
  }

  v2[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_67;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_70;
  }

  v9 = 0;
  v10 = v8 != 0;
  if (!v7)
  {
LABEL_71:
    *a2 = 0;
    a2[160] = 0;
    goto LABEL_44;
  }

  while (1)
  {
    if (v48)
    {
      LOBYTE(v19) = 0;
      v22 = 0;
      if (v47 == 1)
      {
        v11 = v44;
        v44 = 0;
        v19 = v11;
        v20 = v45;
        v21 = v46;
        v22 = 1;
      }

      if (v43)
      {
        LOBYTE(v23[0]) = 0;
        v25 = 0;
        if (v42 == 1)
        {
          v12 = v40;
          v40 = 0uLL;
          *v23 = v12;
          v24[0] = v41[0];
          *(v24 + 10) = *(v41 + 10);
          v25 = 1;
        }

        if (v39)
        {
          v2 = &v19;
          std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v26, v38);
          if (v37)
          {
            std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v27, v36);
            WebCore::MediaConfiguration::MediaConfiguration(v28, &v19);
            if (!v9)
            {
              break;
            }
          }
        }
      }
    }

    __break(1u);
LABEL_65:
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

LABEL_67:
    *v2 = 0;
    v2[1] = 0;
    v17 = v2[3];
    if (!v17)
    {
      v5 = 0;
LABEL_69:
      v7 = 0;
      goto LABEL_70;
    }

    if (!v5)
    {
      goto LABEL_69;
    }

    (*(*v17 + 16))(v17);
    v7 = *v2;
    v5 = v2[1];
LABEL_70:
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
        v18 = v2[1];
        *v2 = 0;
        v2[1] = 0;
        if (result)
        {
          if (v18)
          {
            result = (*(*result + 16))(result, v7);
            v10 = 0;
            v7 = *v2;
            v9 = 1;
            if (*v2)
            {
              continue;
            }
          }
        }
      }
    }

    goto LABEL_71;
  }

  v35 = v10;
  result = WebCore::MediaConfiguration::MediaConfiguration(a2, v28);
  a2[152] = v35;
  a2[160] = 1;
  if (v34[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v7);
  }

  if (v33[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v7);
  }

  if (v32 == 1)
  {
    v13 = v31;
    v31 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    result = v30;
    v30 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v29 == 1)
  {
    result = v28[0];
    v28[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v27[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v7);
  }

  if (v26[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v7);
  }

  if (v25 == 1)
  {
    v14 = v23[1];
    v23[1] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v7);
    }

    result = v23[0];
    v23[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v22 == 1)
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

LABEL_44:
  if (v37 == 1 && v36[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v7);
  }

  if (v39 == 1 && v38[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v7);
  }

  if (v43 == 1 && v42 == 1)
  {
    v15 = *(&v40 + 1);
    if (*(&v40 + 1) && atomic_fetch_add_explicit(*(&v40 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v7);
    }

    result = v40;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v48 == 1 && v47 == 1)
  {
    result = v44;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D738D5C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, WTF::StringImpl *a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, WTF::StringImpl *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, WTF::StringImpl *a35, WTF::StringImpl *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47)
{
  if (*(v47 - 216) == 1 && *(v47 - 224) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47 - 240, a2);
  }

  if (*(v47 - 184) == 1 && *(v47 - 192) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47 - 208, a2);
  }

  if (*(v47 - 120) == 1 && *(v47 - 128) == 1)
  {
    v49 = *(v47 - 168);
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, a2);
    }

    v50 = *(v47 - 176);
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, a2);
    }
  }

  if (*(v47 - 56) == 1 && *(v47 - 64) == 1)
  {
    v51 = *(v47 - 104);
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::MediaConfiguration::MediaConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    v5 = *(a2 + 1);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v6 = a2[6];
    a2[6] = 0;
    *(a1 + 48) = v6;
    v7 = a2[7];
    a2[7] = 0;
    *(a1 + 56) = v7;
    v8 = *(a2 + 4);
    *(a1 + 74) = *(a2 + 74);
    *(a1 + 64) = v8;
    *(a1 + 96) = 1;
  }

  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 104), (a2 + 13));
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 128), (a2 + 16));
  return a1;
}

void sub_19D739068(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 104, a2);
  }

  if (*(v2 + 96) == 1)
  {
    v4 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  if (*(v2 + 40) == 1)
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

uint64_t IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::VideoConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoConfiguration> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::AudioConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::AudioConfiguration> const&>(a1, a2 + 48);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 128);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 152));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 153));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<std::optional<WebCore::VideoConfiguration>>(&v49, a1);
  IPC::Decoder::decode<std::optional<WebCore::AudioConfiguration>>(&v45, v2);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v43, v2);
  result = IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v41, v2);
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  if (v5 <= v6 - *v2)
  {
    goto LABEL_74;
  }

  v2[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_76;
  }

  v8 = *v6;
  if (v8 >= 3)
  {
    goto LABEL_79;
  }

  v9 = v8 | 0x100;
LABEL_5:
  v10 = v2[2];
  if (v5 > v10 - v7)
  {
    v2[2] = (v10 + 1);
    if (v10)
    {
      v11 = *v10;
      if (v11 < 2)
      {
        v12 = 1;
        goto LABEL_9;
      }

      goto LABEL_87;
    }

    goto LABEL_84;
  }

  while (1)
  {
    *v2 = 0;
    v2[1] = 0;
    v22 = v2[3];
    if (!v22)
    {
      v5 = 0;
LABEL_83:
      v7 = 0;
      goto LABEL_84;
    }

    if (!v5)
    {
      goto LABEL_83;
    }

    (*(*v22 + 16))(v22, v7);
    v7 = *v2;
    v5 = v2[1];
LABEL_84:
    *v2 = 0;
    v2[1] = 0;
    v23 = v2[3];
    if (!v23)
    {
      v5 = 0;
LABEL_86:
      v7 = 0;
      v11 = 0;
      goto LABEL_87;
    }

    if (!v5)
    {
      goto LABEL_86;
    }

    (*(*v23 + 16))(v23, v7);
    v11 = 0;
    v7 = *v2;
    v5 = v2[1];
LABEL_87:
    *v2 = 0;
    v2[1] = 0;
    result = v2[3];
    if (!result || !v5)
    {
      goto LABEL_88;
    }

    result = (*(*result + 16))(result, v7);
    v12 = 0;
    v7 = *v2;
LABEL_9:
    v13 = v11 ? v12 : 0;
    if (!v7)
    {
LABEL_88:
      *a2 = 0;
      *(a2 + 160) = 0;
      goto LABEL_53;
    }

    if (v53)
    {
      LOBYTE(v24) = 0;
      v27 = 0;
      if (v52 == 1)
      {
        v14 = v49;
        v49 = 0;
        v24 = v14;
        v25 = v50;
        v26 = v51;
        v27 = 1;
      }

      if (v48)
      {
        LOBYTE(v28[0]) = 0;
        v30 = 0;
        if (v47 == 1)
        {
          v15 = v45;
          v45 = 0uLL;
          *v28 = v15;
          v29[0] = v46[0];
          *(v29 + 10) = *(v46 + 10);
          v30 = 1;
        }

        if (v44)
        {
          v2 = &v24;
          std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v31, v43);
          if (v42)
          {
            std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v32, v41);
            WebCore::MediaConfiguration::MediaConfiguration(v33, &v24);
            if (v9 > 0xFF)
            {
              LOBYTE(v40) = v9;
              if (v12)
              {
                break;
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_74:
    *v2 = 0;
    v2[1] = 0;
    v19 = v2[3];
    if (v19)
    {
      if (v5)
      {
        (*(*v19 + 16))(v19);
        v5 = v2[1];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_76:
    *v2 = 0;
    v2[1] = 0;
    v20 = v2[3];
    if (v20)
    {
      if (v5)
      {
        (*(*v20 + 16))(v20);
        v7 = *v2;
        v5 = v2[1];
        goto LABEL_79;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_79:
    *v2 = 0;
    v2[1] = 0;
    v21 = v2[3];
    if (v21)
    {
      if (v5)
      {
        result = (*(*v21 + 16))(v21, v7);
        v9 = 0;
        v7 = *v2;
        v5 = v2[1];
        goto LABEL_5;
      }

      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v5 = 0;
    }
  }

  HIBYTE(v40) = v13;
  result = WebCore::MediaConfiguration::MediaConfiguration(a2, v33);
  *(a2 + 152) = v40;
  *(a2 + 160) = 1;
  if (v39[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v7);
  }

  if (v38[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v7);
  }

  if (v37 == 1)
  {
    v16 = v36;
    v36 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v7);
    }

    result = v35;
    v35 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v34 == 1)
  {
    result = v33[0];
    v33[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v32[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v7);
  }

  if (v31[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v7);
  }

  if (v30 == 1)
  {
    v17 = v28[1];
    v28[1] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v7);
    }

    result = v28[0];
    v28[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v27 == 1)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_53:
  if (v42 == 1 && v41[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v7);
  }

  if (v44 == 1 && v43[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v7);
  }

  if (v48 == 1 && v47 == 1)
  {
    v18 = *(&v45 + 1);
    if (*(&v45 + 1) && atomic_fetch_add_explicit(*(&v45 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v7);
    }

    result = v45;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v53 == 1 && v52 == 1)
  {
    result = v49;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D739704(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, WTF::StringImpl *a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, WTF::StringImpl *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, WTF::StringImpl *a35, WTF::StringImpl *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47)
{
  if (*(v47 - 232) == 1 && *(v47 - 240) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47 - 256, a2);
  }

  if (*(v47 - 200) == 1 && *(v47 - 208) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47 - 224, a2);
  }

  if (*(v47 - 136) == 1 && *(v47 - 144) == 1)
  {
    v49 = *(v47 - 184);
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, a2);
    }

    v50 = *(v47 - 192);
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, a2);
    }
  }

  if (*(v47 - 72) == 1 && *(v47 - 80) == 1)
  {
    v51 = *(v47 - 120);
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::ResourceResponseData>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[304] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D739994(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 304) == 1 && *(v2 + 296) == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(IPC::Encoder *a1, WebCore::ResourceResponseBase *this)
{
  WebCore::ResourceResponseBase::getResponseData(v4, this);
  IPC::ArgumentCoder<std::optional<WebCore::ResourceResponseData>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponseData>>(a1, v4);
  if (v5 == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(v4, v3);
  }
}

void sub_19D739A14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a46 == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(&a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WebCore::ResourceResponseData>>(a1, v12);
  if (*a1)
  {
    if (v13)
    {
      MEMORY[0x19EB08ED0](v7, v12);
      WebCore::ResourceResponseBase::ResourceResponseBase(v8, v7);
      v10 = 0;
      v11 = 0;
      v9 = v9 & 0xF1 | 4;
      WebCore::ResourceResponseBase::ResourceResponseBase(a2, v8);
      *(a2 + 248) = v10;
      *(a2 + 256) = v11;
      *(a2 + 264) = 1;
      v10 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(v8, v5);
      WebCore::ResourceResponseBase::~ResourceResponseBase(v7, v6);
      goto LABEL_4;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 264) = 0;
LABEL_4:
  if (v13 == 1 && v12[296] == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(v12, v4);
  }
}

void sub_19D739B18(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  WebCore::ResourceResponse::~ResourceResponse(&a41, a2);
  WebCore::ResourceResponseBase::~ResourceResponseBase(&a10, v42);
  if (LOBYTE(STACK[0x338]) == 1 && LOBYTE(STACK[0x330]) == 1)
  {
    WebCore::ResourceResponseData::~ResourceResponseData(&STACK[0x208], v43);
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::ResourceResponseData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  v4 = *(a2 + 48);
  v5 = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v6 <= 7)
  {
    goto LABEL_8;
  }

  *v5 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 88);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::encode<IPC::Encoder,std::optional<WebCore::NetworkLoadMetrics> const&>(a1, a2 + 120);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 257));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 258));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 259));
  v7 = *(a2 + 260);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v8 = *(a2 + 261);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 264));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 272));
  if ((*(a2 + 288) & 1) == 0)
  {
    v10 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v10);
    return;
  }

  v9 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  if ((*(a2 + 288) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    __break(0xC471u);
    return;
  }

  IPC::ArgumentCoder<__SecTrust *,void>::encode(a1, *(a2 + 280));
}

uint64_t IPC::Decoder::decode<short>(IPC::Decoder *this)
{
  v2 = *(this + 1);
  v3 = ((*(this + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v4 = v3 - *this;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (v5 && v6 > 1)
  {
    *(this + 2) = v3 + 1;
    if (v3)
    {
      return *v3 | 0x10000u;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  return 0;
}

uint64_t IPC::Decoder::decode<WebCore::ResourceResponseSource>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::ResourceResponseSource,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t std::optional<std::optional<WebCore::NetworkLoadMetrics>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 136) == 1 && *(a1 + 128) == 1)
  {
    v3 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v3)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v3, a2);
    }

    v4 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

void *IPC::ArgumentCoder<WebCore::ArchiveResource,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = a2[40];
  if (v4)
  {
    atomic_fetch_add(v4 + 2, 1u);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }
  }

  atomic_fetch_add(v4 + 2, 1u);
  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(a1, v4);
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 41);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 42);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 43);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, (a2 + 7));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 44);
}

void sub_19D739F40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

WTF *IPC::ArgumentCoder<WebCore::LegacyWebArchive,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  ++*(v4 + 8);
  IPC::ArgumentCoder<WebCore::ArchiveResource,void>::encode(a1, v4);
  if (*(v4 + 8) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  else
  {
    --*(v4 + 8);
  }

  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v7, a2 + 56);
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, &v7);
  result = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_19D73A0A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebCore::LegacyWebArchive,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>(&v42, a1);
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

LABEL_62:
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36 && v4)
    {
      (*(*v36 + 16))(v36);
    }

    LOBYTE(v40[0]) = 0;
    v41 = 0;
LABEL_33:
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v28);
    }

    goto LABEL_42;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_62;
  }

  v11 = *v5;
  v37 = 0;
  v38 = 0;
  if (v11 < 0x20000)
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    LODWORD(v38) = v11;
    v37 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>(&v44, a1);
      if ((v45 & 1) == 0)
      {
        goto LABEL_32;
      }

      v12 = HIDWORD(v38);
      if (HIDWORD(v38) != v38)
      {
        break;
      }

      v13 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, HIDWORD(v38) + 1, &v44);
      v14 = HIDWORD(v38);
      v15 = HIDWORD(v38) + 1;
      v16 = v37;
      v17 = *v13;
      *v13 = 0;
      *(v16 + v14) = v17;
      HIDWORD(v38) = v15;
      if (v45)
      {
        goto LABEL_15;
      }

LABEL_18:
      if (!--v11)
      {
        goto LABEL_41;
      }
    }

    v18 = v44;
    v44 = 0;
    *(v37 + HIDWORD(v38)) = v18;
    HIDWORD(v38) = v12 + 1;
LABEL_15:
    v19 = v44;
    v44 = 0;
    if (v19)
    {
      if (v19[2] == 1)
      {
        (*(*v19 + 8))(v19);
      }

      else
      {
        --v19[2];
      }
    }

    goto LABEL_18;
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>(&v44, a1);
    if ((v45 & 1) == 0)
    {
LABEL_32:
      LOBYTE(v40[0]) = 0;
      v41 = 0;
      WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v6);
      goto LABEL_33;
    }

    v20 = HIDWORD(v38);
    if (HIDWORD(v38) == v38)
    {
      v21 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, HIDWORD(v38) + 1, &v44);
      v22 = HIDWORD(v38);
      v23 = HIDWORD(v38) + 1;
      v24 = v37;
      v25 = *v21;
      *v21 = 0;
      *(v24 + v22) = v25;
      HIDWORD(v38) = v23;
      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v26 = v44;
      v44 = 0;
      *(v37 + HIDWORD(v38)) = v26;
      HIDWORD(v38) = v20 + 1;
    }

    v27 = v44;
    v44 = 0;
    if (v27)
    {
      if (v27[2] == 1)
      {
        (*(*v27 + 8))(v27);
      }

      else
      {
        --v27[2];
      }
    }

LABEL_28:
    --v11;
  }

  while (v11);
  if (v38 > HIDWORD(v38))
  {
    v31 = v37;
    if (HIDWORD(v38))
    {
      LODWORD(v38) = HIDWORD(v38);
      v37 = WTF::fastRealloc(v37, (8 * HIDWORD(v38)));
    }

    else if (v37)
    {
      v37 = 0;
      LODWORD(v38) = 0;
      WTF::fastFree(v31, v6);
    }
  }

LABEL_41:
  v40[0] = v37;
  v32 = v38;
  v37 = 0;
  v38 = 0;
  v40[1] = v32;
  v41 = 1;
  WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v6);
LABEL_42:
  result = IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v37, a1);
  if (!*a1)
  {
    *a2 = 0;
    a2[8] = 0;
    goto LABEL_47;
  }

  if ((v43 & 1) == 0 || (v41 & 1) == 0 || (v39 & 1) == 0)
  {
    __break(1u);
    return (*(*result + 8))(result);
  }

  result = WebCore::LegacyWebArchive::create();
  *a2 = v44;
  a2[8] = 1;
LABEL_47:
  if (v39 == 1)
  {
    result = v37;
    if (v37)
    {
      v37 = 0;
      LODWORD(v38) = 0;
      result = WTF::fastFree(result, v34);
    }
  }

  if (v41 == 1)
  {
    result = WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v34);
  }

  if (v43 == 1)
  {
    result = v42;
    v42 = 0;
    if (result)
    {
      if (*(result + 2) != 1)
      {
        --*(result + 2);
        return result;
      }

      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D73A52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, _DWORD *a19, char a20)
{
  if (a20 == 1 && a19)
  {
    if (a19[2] == 1)
    {
      (*(*a19 + 8))(a19);
    }

    else
    {
      --a19[2];
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>(a2, &v29);
  IPC::Decoder::decode<WTF::URL>(a2, &v27);
  IPC::Decoder::decode<WTF::String>(a2, &v25);
  IPC::Decoder::decode<WTF::String>(a2, &v23);
  IPC::Decoder::decode<WTF::String>(a2, &v21);
  IPC::Decoder::decode<WebCore::ResourceResponse>(a2, v18);
  IPC::Decoder::decode<WTF::String>(a2, &v16);
  if (!*a2)
  {
    goto LABEL_41;
  }

  if ((v30 & 1) == 0 || (v28 & 1) == 0 || (v26 & 1) == 0 || (v24 & 1) == 0 || (v22 & 1) == 0 || (v20 & 1) == 0 || (v17 & 1) == 0)
  {
    __break(1u);
LABEL_41:
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_10;
  }

  WebCore::ArchiveResource::createWithData();
  *a1 = v15;
  a1[8] = 1;
LABEL_10:
  if (v17 == 1)
  {
    v5 = v16;
    v16 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  if (v20 == 1)
  {
    v6 = v19;
    v19 = 0;
    if (v6)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v18, v4);
  }

  if (v22 == 1)
  {
    v7 = v21;
    v21 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }

  if (v24 == 1)
  {
    v8 = v23;
    v23 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

  if (v26 == 1)
  {
    v9 = v25;
    v25 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }
    }
  }

  if (v28 == 1)
  {
    v10 = v27;
    v27 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v4);
      }
    }
  }

  if (v30 == 1)
  {
    v11 = v29;
    v29 = 0;
    if (v11)
    {
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        (*(*v11 + 8))(v11);
      }
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v12)
      {
        v14 = *(*v13 + 16);

        v14();
      }
    }
  }
}

void sub_19D73A904(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, char a49)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a49 == 1)
  {
    v51 = a47;
    a47 = 0;
    if (v51)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&a14, a2);
  }

  if (*(v49 - 136) == 1)
  {
    v52 = *(v49 - 144);
    *(v49 - 144) = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, a2);
      }
    }
  }

  if (*(v49 - 120) == 1)
  {
    v53 = *(v49 - 128);
    *(v49 - 128) = 0;
    if (v53)
    {
      if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, a2);
      }
    }
  }

  if (*(v49 - 104) == 1)
  {
    v54 = *(v49 - 112);
    *(v49 - 112) = 0;
    if (v54)
    {
      if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, a2);
      }
    }
  }

  if (*(v49 - 56) == 1)
  {
    v55 = *(v49 - 96);
    *(v49 - 96) = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, a2);
      }
    }
  }

  if (*(v49 - 40) == 1)
  {
    v56 = *(v49 - 48);
    *(v49 - 48) = 0;
    if (v56)
    {
      if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v56 + 2);
        (*(*v56 + 8))(v56);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 2));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 5));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 6));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 16));

  return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 32));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::FetchOptions,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  Options = IPC::Decoder::decode<WebCore::FetchOptionsDestination>(a1);
  v4 = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a1);
  v5 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(a1);
  v6 = IPC::Decoder::decode<WebCore::FetchOptionsCache>(a1);
  v7 = *(a1 + 2);
  if (*(a1 + 1) <= &v7[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_35;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_35:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_36;
  }

  v8 = *v7;
  if (v8 < 3)
  {
    v9 = 0;
    goto LABEL_5;
  }

LABEL_36:
  IPC::Decoder::markInvalid(a1);
  LOBYTE(v8) = 0;
  v9 = 1;
LABEL_5:
  v10 = IPC::Decoder::decode<WebCore::ReferrerPolicy>(a1);
  v11 = *(a1 + 2);
  if (*(a1 + 1) <= &v11[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_38;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_38:
    IPC::Decoder::markInvalid(a1);
    v12 = 0;
    goto LABEL_39;
  }

  v12 = *v11;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_39:
  IPC::Decoder::markInvalid(a1);
  v13 = 0;
LABEL_9:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v23);
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::decode<IPC::Decoder>(a1, v27);
  if ((v28 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::decode<IPC::Decoder>(a1, v25);
  if ((v26 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a1);
  }

  if (*a1)
  {
    if (Options > 0xFFu && v4 > 0xFFu && (v5 & 0x100) != 0 && (v6 & 0x100) != 0 && !v9 && v10 > 0xFFu && (v13 & 1) != 0 && (v24 & 1) != 0 && (v28 & 1) != 0 && (v26 & 1) != 0)
    {
      v17 = v27[0];
      v18 = v27[1];
      v19 = v25[0];
      v20 = v25[1];
      v21 = v23;
      *a2 = Options;
      *(a2 + 1) = v4;
      *(a2 + 2) = v5;
      *(a2 + 3) = v6;
      *(a2 + 4) = v8;
      *(a2 + 5) = v10;
      *(a2 + 6) = v14;
      *(a2 + 8) = v21;
      *(a2 + 16) = v17;
      *(a2 + 32) = v19;
      *(a2 + 40) = v20;
      *(a2 + 24) = v18;
      *(a2 + 48) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  if (v24)
  {
    result = v23;
    v23 = 0;
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

uint64_t IPC::Decoder::decode<WebCore::FetchOptionsDestination>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 0x16)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::Decoder::decode<WebCore::FetchOptionsMode>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 4)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::Decoder::decode<WebCore::FetchOptionsCache>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::PixelFormat,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::ReferrerPolicy>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 9)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::ArgumentCoder<WebCore::ControlStyle,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 24));

  return IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 32));
}

uint64_t IPC::ArgumentCoder<WebCore::ControlStyle,void>::encode(uint64_t *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::StreamConnectionEncoder>(a1, *a2);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (a1[1] < v5)
  {
    goto LABEL_11;
  }

  *(*a1 + (v4 & 3)) = a2[1];
  v6 = a1[1];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_10;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  a1[1] = v7;
  v9 = -v8 & 3 | 4;
  if (v7 >= v9)
  {
    *(v8 + (-v8 & 3)) = a2[2];
    v10 = a1[1];
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (v11)
    {
      *a1 += v9;
      a1[1] = v12;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
  }

LABEL_11:
  *a1 = 0;
  a1[1] = 0;
LABEL_7:
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 4));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 6));

  return IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::encode(a1, a2 + 8);
}

unsigned int *IPC::ArgumentCoder<WebCore::ControlStyle,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_44;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v4)
      {
        (*(*v28 + 16))(v28);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_46;
  }

  v11 = *v5;
  if (!(v11 >> 18))
  {
    v12 = 0;
    v13 = v11 & 0x3FF00;
    v14 = v11;
    goto LABEL_9;
  }

LABEL_46:
  *a1 = 0;
  *(a1 + 1) = 0;
  v29 = *(a1 + 3);
  if (v29)
  {
    if (v4)
    {
      (*(*v29 + 16))(v29);
      v13 = 0;
      v14 = 0;
      v6 = *a1;
      v4 = *(a1 + 1);
      goto LABEL_49;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
  v13 = 0;
  v14 = 0;
LABEL_49:
  v12 = 1;
LABEL_9:
  v15 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v15 - v6 && v4 - (v15 - v6) > 3)
  {
    *(a1 + 2) = v15 + 4;
    if (v15)
    {
      v17 = *v15 | 0x100000000;
      v18 = v6;
      goto LABEL_16;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (v30)
    {
      if (v4)
      {
        (*(*v30 + 16))(v30);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_55;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_55:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (v31)
  {
    if (v4)
    {
      (*(*v31 + 16))(v31, v6);
      v17 = 0;
      v18 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_16;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
    v4 = 0;
  }

  v6 = 0;
  v17 = 0;
LABEL_16:
  v19 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 < v19 - v6 || v4 - (v19 - v6) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32, v18);
        v18 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_61;
      }
    }

    else
    {
      v4 = 0;
    }

    v18 = 0;
    goto LABEL_61;
  }

  *(a1 + 2) = v19 + 4;
  if (v19)
  {
    v20 = *v19 | 0x100000000;
    goto LABEL_20;
  }

LABEL_61:
  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33 && v4)
  {
    (*(*v33 + 16))(v33, v18);
  }

  v20 = 0;
LABEL_20:
  IPC::Decoder::decode<WebCore::Color>(a1, &v39);
  IPC::Decoder::decode<WebCore::Color>(a1, &v37);
  result = IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v35);
  v23 = v36;
  if ((v36 & 1) == 0)
  {
    v22 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v26)
      {
        v34 = v23;
        result = (*(*result + 16))(result, v22);
        v23 = v34;
      }
    }
  }

  if (*a1)
  {
    if (!v12 && (v17 & 0x100000000) != 0 && (v20 & 0x100000000) != 0 && (v40 & 1) != 0)
    {
      v24 = v39;
      v39 = 0;
      if (v38 & 1) != 0 && (v23)
      {
        v25 = v37;
        *(a2 + 32) = v35;
        *a2 = v14 | v13;
        *(a2 + 4) = v17;
        *(a2 + 8) = v20;
        *(a2 + 16) = v24;
        *(a2 + 24) = v25;
        *(a2 + 48) = 1;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  if ((v38 & 1) != 0 && (v37 & 0x8000000000000) != 0)
  {
    result = (v37 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v37 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v22);
    }
  }

LABEL_29:
  if (v40 == 1 && (v39 & 0x8000000000000) != 0)
  {
    result = (v39 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v39 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v22);
    }
  }

  return result;
}

void sub_19D73B52C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
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

IPC::Encoder *IPC::ArgumentCoder<WebCore::ControlPart,void>::encode(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if ((v4 - 5) <= 3)
  {
    v5 = 0;
LABEL_3:
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, v5);
    v6 = *(a2 + 12);
    result = v3;
LABEL_4:

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, v6);
  }

  if (*(a2 + 12) <= 0xCu)
  {
    switch(v4)
    {
      case 10:
        v6 = 4;
        goto LABEL_4;
      case 11:
        v6 = 3;
        goto LABEL_4;
      case 12:
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 5);

        return IPC::ArgumentCoder<WebCore::MeterPart,void>::encode(v3, a2);
    }
  }

  else if (*(a2 + 12) > 0x15u)
  {
    if (v4 == 26)
    {
      v6 = 2;
      goto LABEL_4;
    }

    if (v4 == 22)
    {
      v6 = 1;
      goto LABEL_4;
    }
  }

  else
  {
    if (v4 == 13)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 6);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, *(a2 + 40));
      v7 = *(a2 + 48);

      return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v3, v7);
    }

    if (v4 == 16)
    {
      v6 = 7;
      goto LABEL_4;
    }
  }

  if ((v4 - 29) <= 1)
  {
    v5 = 8;
    goto LABEL_3;
  }

  if (v4 == 31)
  {
    v6 = 9;
    goto LABEL_4;
  }

  if ((v4 & 0xFE) == 0xE)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 11);

    return IPC::ArgumentCoder<WebCore::SliderTrackPart,void>::encode(v3, a2);
  }

  else
  {
    if ((v4 & 0xFE) == 0x20)
    {
      v5 = 10;
      goto LABEL_3;
    }

    if (*(a2 + 12) <= 0x14u)
    {
      if (v4 == 9 || v4 == 20)
      {
        v5 = 14;
        goto LABEL_3;
      }
    }

    else
    {
      switch(v4)
      {
        case 21:
          v6 = 15;
          goto LABEL_4;
        case 36:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 13);
          v10 = *(a2 + 40);
          v8 = &v10;
          goto LABEL_47;
        case 35:
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 12);
          v9 = *(a2 + 40);
          v8 = &v9;
LABEL_47:
          IPC::Encoder::operator<<<BOOL>(v3, v8);
          return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v3, *(a2 + 44));
      }
    }

    if ((v4 - 3) <= 1)
    {
      v5 = 16;
      goto LABEL_3;
    }

    if (v4 == 17)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(result, 17);

      return IPC::ArgumentCoder<WebCore::ApplePayButtonPart,void>::encode(v3, a2);
    }
  }

  return result;
}