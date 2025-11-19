WTF::StringImpl *IPC::ArgumentCoder<WebCore::ControlPart,void>::encode(WTF::StringImpl *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  if ((v4 - 5) <= 3)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    **result = 0;
LABEL_4:
    v5 = *(result + 1);
    if (v5)
    {
      v7 = v5 - 1;
      v6 = v5 == 1;
      v8 = (*result + 1);
      *result = v8;
      *(result + 1) = v7;
      if (!v6)
      {
        v9 = *(a2 + 12);
        goto LABEL_7;
      }

LABEL_96:
      *result = 0;
      *(result + 1) = 0;
      return result;
    }

    goto LABEL_95;
  }

  if (*(a2 + 12) <= 0xCu)
  {
    if (v4 == 10)
    {
      if (!*(result + 1))
      {
        goto LABEL_96;
      }

      v8 = *result;
      v9 = 4;
      goto LABEL_7;
    }

    if (v4 == 11)
    {
      if (!*(result + 1))
      {
        goto LABEL_96;
      }

      v8 = *result;
      v9 = 3;
      goto LABEL_7;
    }

    if (v4 != 12)
    {
      goto LABEL_32;
    }

    if (!*(result + 1))
    {
      goto LABEL_97;
    }

    **result = 5;
    v13 = *(result + 1);
    if (!v13)
    {
      goto LABEL_95;
    }

    v14 = v13 - 1;
    v6 = v13 == 1;
    v15 = (*result + 1);
    *result = v15;
    *(result + 1) = v14;
    if (v6)
    {
LABEL_97:
      *result = 0;
      *(result + 1) = 0;
    }

    else
    {
      *v15 = *(a2 + 40);
      v16 = *(result + 1);
      if (!v16)
      {
        goto LABEL_95;
      }

      ++*result;
      *(result + 1) = v16 - 1;
    }

    v46 = *(a2 + 48);
    IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(result, &v46, 1);
    v46 = *(a2 + 56);
    IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(v3, &v46, 1);
    v17 = *(a2 + 64);
    goto LABEL_40;
  }

  if (*(a2 + 12) <= 0x15u)
  {
    if (v4 != 13)
    {
      if (v4 == 16)
      {
        if (!*(result + 1))
        {
          goto LABEL_96;
        }

        v8 = *result;
        v9 = 7;
LABEL_7:
        *v8 = v9;
        v10 = *(result + 1);
        if (v10)
        {
          v11 = v10 - 1;
          v12 = *result + 1;
LABEL_9:
          *result = v12;
          *(result + 1) = v11;
          return result;
        }

        goto LABEL_95;
      }

      goto LABEL_32;
    }

    if (*(result + 1))
    {
      **result = 6;
      v20 = *(result + 1);
      if (!v20)
      {
        goto LABEL_95;
      }

      ++*result;
      *(result + 1) = v20 - 1;
    }

    else
    {
      *result = 0;
      *(result + 1) = 0;
    }

    v46 = *(a2 + 40);
    IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(result, &v46, 1);
    v17 = *(a2 + 48);
LABEL_40:
    v46 = v17;
    return IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(v3, &v46, 1);
  }

  if (v4 == 26)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v8 = *result;
    v9 = 2;
    goto LABEL_7;
  }

  if (v4 == 22)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v8 = *result;
    v9 = 1;
    goto LABEL_7;
  }

LABEL_32:
  if ((v4 - 29) <= 1)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v18 = *result;
    v19 = 8;
    goto LABEL_35;
  }

  if (v4 == 31)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v8 = *result;
    v9 = 9;
    goto LABEL_7;
  }

  if ((v4 & 0xFE) == 0xE)
  {
    if (!*(result + 1))
    {
      goto LABEL_99;
    }

    **result = 11;
    v21 = *(result + 1);
    if (!v21)
    {
      goto LABEL_95;
    }

    v22 = v21 - 1;
    v6 = v21 == 1;
    v23 = (*result + 1);
    *result = v23;
    *(result + 1) = v22;
    if (v6)
    {
LABEL_99:
      *result = 0;
      *(result + 1) = 0;
    }

    else
    {
      *v23 = *(a2 + 12);
      v24 = *(result + 1);
      if (!v24)
      {
        goto LABEL_95;
      }

      ++*result;
      *(result + 1) = v24 - 1;
    }

    v46 = *(a2 + 40);
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(result, &v46);
    v25 = *(a2 + 56);
    v46 = *(a2 + 48);
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v3, &v46);
    v46 = v25;
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v3, &v46);
    IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v3, *(a2 + 64), *(a2 + 76));
    v17 = *(a2 + 80);
    goto LABEL_40;
  }

  if ((v4 & 0xFE) == 0x20)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v18 = *result;
    v19 = 10;
    goto LABEL_35;
  }

  if (*(a2 + 12) <= 0x14u)
  {
    if (v4 == 9 || v4 == 20)
    {
      if (!*(result + 1))
      {
        goto LABEL_96;
      }

      v18 = *result;
      v19 = 14;
      goto LABEL_35;
    }
  }

  else
  {
    switch(v4)
    {
      case 21:
        if (!*(result + 1))
        {
          goto LABEL_96;
        }

        v8 = *result;
        v9 = 15;
        goto LABEL_7;
      case 36:
        if (!*(result + 1))
        {
          goto LABEL_96;
        }

        v26 = *result;
        v27 = 13;
        goto LABEL_72;
      case 35:
        if (!*(result + 1))
        {
          goto LABEL_96;
        }

        v26 = *result;
        v27 = 12;
LABEL_72:
        *v26 = v27;
        v28 = *(result + 1);
        if (v28)
        {
          v29 = v28 - 1;
          v6 = v28 == 1;
          v30 = (*result + 1);
          *result = v30;
          *(result + 1) = v29;
          if (v6)
          {
            goto LABEL_96;
          }

          *v30 = *(a2 + 40);
          v31 = *(result + 1);
          if (v31)
          {
            v32 = v31 - 1;
            v33 = *result + 1;
            *result = v33;
            *(result + 1) = v32;
            v34 = -v33 & 3 | 4;
            if (v32 >= v34)
            {
              *(v33 + (-v33 & 3)) = *(a2 + 44);
              v35 = *(result + 1);
              v36 = v35 >= v34;
              v11 = v35 - v34;
              if (v36)
              {
                v12 = *result + v34;
                goto LABEL_9;
              }

              goto LABEL_95;
            }

            goto LABEL_96;
          }
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
    }
  }

  if ((v4 - 3) <= 1)
  {
    if (!*(result + 1))
    {
      goto LABEL_96;
    }

    v18 = *result;
    v19 = 16;
LABEL_35:
    *v18 = v19;
    goto LABEL_4;
  }

  if (v4 == 17)
  {
    if (!*(result + 1))
    {
      goto LABEL_100;
    }

    **result = 17;
    v37 = *(result + 1);
    if (!v37)
    {
      goto LABEL_95;
    }

    v38 = v37 - 1;
    v6 = v37 == 1;
    v39 = (*result + 1);
    *result = v39;
    *(result + 1) = v38;
    if (v6)
    {
      goto LABEL_100;
    }

    *v39 = *(a2 + 40);
    v40 = *(result + 1);
    if (!v40)
    {
      goto LABEL_95;
    }

    v41 = v40 - 1;
    v6 = v40 == 1;
    v42 = (*result + 1);
    *result = v42;
    *(result + 1) = v41;
    if (v6)
    {
LABEL_100:
      *result = 0;
      *(result + 1) = 0;
    }

    else
    {
      *v42 = *(a2 + 41);
      v43 = *(result + 1);
      if (!v43)
      {
        goto LABEL_95;
      }

      ++*result;
      *(result + 1) = v43 - 1;
    }

    v44 = *(a2 + 48);
    if (v44)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    v46 = v44;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(result, &v46);
    result = v46;
    v46 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v45);
      }
    }
  }

  return result;
}

unsigned int *IPC::ArgumentCoder<WebCore::ControlPart,void>::decode@<X0>(unsigned int *result@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = result;
  v5 = *(result + 1);
  v6 = *(result + 2);
  v7 = *result;
  if (v5 <= &v6[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v66 = *(result + 3);
    if (v66)
    {
      if (v5)
      {
        (*(*v66 + 16))(v66);
        v5 = *(v3 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_187;
  }

  *(result + 2) = v6 + 1;
  if (!v6)
  {
LABEL_187:
    *v3 = 0;
    *(v3 + 1) = 0;
    v67 = *(v3 + 3);
    if (v67)
    {
      if (v5)
      {
        (*(*v67 + 16))(v67);
        v7 = *v3;
        v5 = *(v3 + 1);
        goto LABEL_190;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_190:
    *v3 = 0;
    *(v3 + 1) = 0;
    result = *(v3 + 3);
    if (!result)
    {
      goto LABEL_246;
    }

    if (!v5)
    {
      goto LABEL_246;
    }

    result = (*(*result + 16))(result, v7);
    v9 = 0;
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_246;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if (v8 >= 0x12)
  {
    goto LABEL_190;
  }

  v9 = v8 | 0x100;
  if (!v7)
  {
LABEL_246:
    *a2 = 0;
    a2[8] = 0;
    return result;
  }

LABEL_5:
  if (v9 >= 0x100 && v9 == 0)
  {
    v24 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
    if (!*v3 || v24 < 0x100u || (v24 - 5) > 3u)
    {
      goto LABEL_243;
    }

    v25 = WTF::fastMalloc(0x28);
    result = WebCore::ControlPart::ControlPart();
    v26 = &unk_1F10E7FB8;
    goto LABEL_45;
  }

  if (v9 >= 0x100 && v9 == 1)
  {
    v25 = WTF::fastMalloc(0x28);
    result = WebCore::ControlPart::ControlPart();
    v26 = &unk_1F10E8198;
LABEL_45:
    *v25 = v26;
    goto LABEL_46;
  }

  if (v9 >= 0x100 && v9 == 2)
  {
    v25 = WTF::fastMalloc(0x28);
    result = WebCore::ControlPart::ControlPart();
    v26 = &unk_1F10E8008;
    goto LABEL_45;
  }

  if (v9 >= 0x100 && v9 == 3)
  {
    v25 = WTF::fastMalloc(0x28);
    result = WebCore::ControlPart::ControlPart();
    v26 = &unk_1F10E8030;
    goto LABEL_45;
  }

  if (v9 >= 0x100 && v9 == 4)
  {
    v25 = WTF::fastMalloc(0x28);
    result = WebCore::ControlPart::ControlPart();
    v26 = &unk_1F10E8058;
    goto LABEL_45;
  }

  if (v9 < 0x100 || v9 != 5)
  {
    if (v9 >= 0x100 && v9 == 6)
    {
      v27 = IPC::Decoder::decode<unsigned long long>(v3);
      v29 = v28;
      result = IPC::Decoder::decode<WTF::Seconds>(v3);
      v89 = result;
      LOBYTE(v90) = v30;
      if (*v3)
      {
        if (v29 & 1) != 0 && (v30)
        {
          WebCore::ProgressBarPart::create(v92, &v89, *&v27, *v3);
          result = v92[0];
          goto LABEL_56;
        }

        goto LABEL_245;
      }

      goto LABEL_243;
    }

    if (v9 >= 0x100 && v9 == 7)
    {
      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E8080;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 8)
    {
      v31 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
      if (!*v3 || v31 < 0x100u || (v31 - 29) > 1u)
      {
        goto LABEL_243;
      }

      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E80D0;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 9)
    {
      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E80F8;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 10)
    {
      v32 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
      if (!*v3 || v32 < 0x100u || (v32 & 0xFE) != 0x20)
      {
        goto LABEL_243;
      }

      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E80A8;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 11)
    {
      v33 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
      if (!*v3 || v33 < 0x100u || (v33 & 0xFE) != 0xE)
      {
        goto LABEL_243;
      }

      v34 = IPC::Decoder::decode<WebCore::IntSize>(v3);
      v36 = v35;
      v94 = v34;
      v95 = v35;
      IPC::Decoder::decode<WebCore::IntRect>(v3, v92);
      IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v3, &v89);
      result = IPC::Decoder::decode<unsigned long long>(v3);
      v38 = *v3;
      if (*v3)
      {
        if ((v36 & 1) == 0 || (v93 & 1) == 0 || (v91 & 1) == 0 || (v37 & 1) == 0)
        {
          goto LABEL_245;
        }

        result = WebCore::SliderTrackPart::create();
        v25 = v88;
      }

      else
      {
        v25 = 0;
      }

      if (v91 == 1)
      {
        result = v89;
        if (v89)
        {
          v89 = 0;
          v90 = 0;
          result = WTF::fastFree(result, v37);
        }
      }

      if (!v38)
      {
LABEL_243:
        v81 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        result = *(v3 + 3);
        if (result && v81)
        {
          result = (*(*result + 16))(result, a3);
        }

        if (!*v3)
        {
          goto LABEL_246;
        }

        goto LABEL_245;
      }

      if (*v3)
      {
LABEL_47:
        *a2 = v25;
LABEL_48:
        a2[8] = 1;
        return result;
      }

      *a2 = 0;
      a2[8] = 0;
LABEL_93:
      if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25 + 2);
        return (*(*v25 + 8))(v25);
      }

      return result;
    }

    if (v9 >= 0x100 && v9 == 12)
    {
      v40 = *(v3 + 1);
      v41 = *(v3 + 2);
      if (v40 > v41 - v7)
      {
        *(v3 + 2) = v41 + 1;
        if (v41)
        {
          v42 = *v41;
          if (v42 < 2)
          {
            v43 = 1;
            goto LABEL_106;
          }

LABEL_220:
          *v3 = 0;
          *(v3 + 1) = 0;
          result = *(v3 + 3);
          if (result)
          {
            if (v40)
            {
              result = (*(*result + 16))(result, v7);
              v43 = 0;
              v7 = *v3;
              v40 = *(v3 + 1);
LABEL_106:
              if (v42)
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = ((*(v3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              if (v40 < v45 - v7 || v40 - (v45 - v7) <= 3)
              {
                *v3 = 0;
                *(v3 + 1) = 0;
                v77 = *(v3 + 3);
                if (v77)
                {
                  if (v40)
                  {
                    (*(*v77 + 16))(v77);
                    v7 = *v3;
                    v40 = *(v3 + 1);
                    goto LABEL_235;
                  }
                }

                else
                {
                  v40 = 0;
                }

                v7 = 0;
              }

              else
              {
                *(v3 + 2) = v45 + 4;
                if (v45)
                {
                  v46 = *v45 | 0x100000000;
                  if (!v7)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_113;
                }
              }

LABEL_235:
              *v3 = 0;
              *(v3 + 1) = 0;
              v78 = *(v3 + 3);
              if (!v78)
              {
                goto LABEL_243;
              }

              if (!v40)
              {
                goto LABEL_243;
              }

              result = (*(*v78 + 16))(v78, v7);
              v46 = 0;
              if (!*v3)
              {
                goto LABEL_243;
              }

LABEL_113:
              if ((v46 & 0x100000000) == 0)
              {
                goto LABEL_243;
              }

              a3.n128_u32[0] = v46;
              if (*&v46 < 0.0 || *&v46 > 1.0)
              {
                goto LABEL_243;
              }

              if (v43)
              {
                v25 = WTF::fastMalloc(0x30);
                result = WebCore::ControlPart::ControlPart();
                v47 = &unk_1F10E81C0;
LABEL_136:
                *v25 = v47;
                *(v25 + 40) = v44;
                v25[11] = v46;
LABEL_46:
                if (!*v3)
                {
                  *a2 = 0;
                  a2[8] = 0;
                  if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v25 + 2);
                    v39 = *(*v25 + 8);

                    return v39(v25);
                  }

                  return result;
                }

                goto LABEL_47;
              }

              goto LABEL_245;
            }

            v7 = 0;
          }

          else
          {
            v7 = 0;
            v40 = 0;
          }

          v43 = 0;
          goto LABEL_106;
        }

LABEL_217:
        *v3 = 0;
        *(v3 + 1) = 0;
        v74 = *(v3 + 3);
        if (v74)
        {
          if (v40)
          {
            (*(*v74 + 16))(v74, v7);
            v42 = 0;
            v7 = *v3;
            v40 = *(v3 + 1);
            goto LABEL_220;
          }
        }

        else
        {
          v40 = 0;
        }

        v7 = 0;
        v42 = 0;
        goto LABEL_220;
      }

      *v3 = 0;
      *(v3 + 1) = 0;
      v73 = *(v3 + 3);
      if (v73)
      {
        if (v40)
        {
          (*(*v73 + 16))(v73);
          v7 = *v3;
          v40 = *(v3 + 1);
          goto LABEL_217;
        }
      }

      else
      {
        v40 = 0;
      }

      v7 = 0;
      goto LABEL_217;
    }

    if (v9 >= 0x100 && v9 == 13)
    {
      v48 = *(v3 + 1);
      v49 = *(v3 + 2);
      if (v48 > v49 - v7)
      {
        *(v3 + 2) = v49 + 1;
        if (v49)
        {
          v50 = *v49;
          if (v50 < 2)
          {
            v51 = 1;
            goto LABEL_124;
          }

LABEL_229:
          *v3 = 0;
          *(v3 + 1) = 0;
          result = *(v3 + 3);
          if (result)
          {
            if (v48)
            {
              result = (*(*result + 16))(result, v7);
              v51 = 0;
              v7 = *v3;
              v48 = *(v3 + 1);
LABEL_124:
              if (v50)
              {
                v44 = v51;
              }

              else
              {
                v44 = 0;
              }

              v52 = ((*(v3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              if (v48 < v52 - v7 || v48 - (v52 - v7) <= 3)
              {
                *v3 = 0;
                *(v3 + 1) = 0;
                v79 = *(v3 + 3);
                if (v79)
                {
                  if (v48)
                  {
                    (*(*v79 + 16))(v79);
                    v7 = *v3;
                    v48 = *(v3 + 1);
                    goto LABEL_242;
                  }
                }

                else
                {
                  v48 = 0;
                }

                v7 = 0;
              }

              else
              {
                *(v3 + 2) = v52 + 4;
                if (v52)
                {
                  v46 = *v52 | 0x100000000;
                  if (!v7)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_131;
                }
              }

LABEL_242:
              *v3 = 0;
              *(v3 + 1) = 0;
              v80 = *(v3 + 3);
              if (!v80)
              {
                goto LABEL_243;
              }

              if (!v48)
              {
                goto LABEL_243;
              }

              result = (*(*v80 + 16))(v80, v7);
              v46 = 0;
              if (!*v3)
              {
                goto LABEL_243;
              }

LABEL_131:
              if ((v46 & 0x100000000) == 0)
              {
                goto LABEL_243;
              }

              a3.n128_u32[0] = v46;
              if (*&v46 < 0.0 || *&v46 > 1.0)
              {
                goto LABEL_243;
              }

              if (v51)
              {
                v25 = WTF::fastMalloc(0x30);
                result = WebCore::ControlPart::ControlPart();
                v47 = &unk_1F10E81E8;
                goto LABEL_136;
              }

LABEL_245:
              __break(1u);
              goto LABEL_246;
            }

            v7 = 0;
          }

          else
          {
            v7 = 0;
            v48 = 0;
          }

          v51 = 0;
          goto LABEL_124;
        }

LABEL_226:
        *v3 = 0;
        *(v3 + 1) = 0;
        v76 = *(v3 + 3);
        if (v76)
        {
          if (v48)
          {
            (*(*v76 + 16))(v76, v7);
            v50 = 0;
            v7 = *v3;
            v48 = *(v3 + 1);
            goto LABEL_229;
          }
        }

        else
        {
          v48 = 0;
        }

        v7 = 0;
        v50 = 0;
        goto LABEL_229;
      }

      *v3 = 0;
      *(v3 + 1) = 0;
      v75 = *(v3 + 3);
      if (v75)
      {
        if (v48)
        {
          (*(*v75 + 16))(v75);
          v7 = *v3;
          v48 = *(v3 + 1);
          goto LABEL_226;
        }
      }

      else
      {
        v48 = 0;
      }

      v7 = 0;
      goto LABEL_226;
    }

    if (v9 >= 0x100 && v9 == 14)
    {
      v53 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
      if (!*v3)
      {
        goto LABEL_243;
      }

      v54 = v53 == 9 || v53 == 20;
      v55 = v54;
      if (v53 < 0x100u || !v55)
      {
        goto LABEL_243;
      }

      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E8120;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 15)
    {
      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E8148;
      goto LABEL_45;
    }

    if (v9 >= 0x100 && v9 == 16)
    {
      v56 = IPC::Decoder::decode<WebCore::StyleAppearance>(v3);
      if (!*v3 || v56 < 0x100u || (v56 - 3) > 1u)
      {
        goto LABEL_243;
      }

      v25 = WTF::fastMalloc(0x28);
      result = WebCore::ControlPart::ControlPart();
      v26 = &unk_1F10E8170;
      goto LABEL_45;
    }

    if (v9 < 0x100 || v9 != 17)
    {
      goto LABEL_246;
    }

    v57 = *(v3 + 1);
    v58 = *(v3 + 2);
    if (v57 <= v58 - v7)
    {
      *v3 = 0;
      *(v3 + 1) = 0;
      v82 = *(v3 + 3);
      if (v82)
      {
        if (v57)
        {
          (*(*v82 + 16))(v82);
          v7 = *v3;
          v57 = *(v3 + 1);
          goto LABEL_256;
        }
      }

      else
      {
        v57 = 0;
      }

      v7 = 0;
    }

    else
    {
      v59 = v58 + 1;
      *(v3 + 2) = v58 + 1;
      if (v58)
      {
        v60 = *v58;
        if (v60 < 0xF)
        {
          v61 = v60 | 0x100;
          goto LABEL_167;
        }

        goto LABEL_259;
      }
    }

LABEL_256:
    *v3 = 0;
    *(v3 + 1) = 0;
    v83 = *(v3 + 3);
    if (v83)
    {
      if (v57)
      {
        (*(*v83 + 16))(v83, v7);
        v7 = *v3;
        v57 = *(v3 + 1);
        goto LABEL_259;
      }
    }

    else
    {
      v57 = 0;
    }

    v7 = 0;
LABEL_259:
    *v3 = 0;
    *(v3 + 1) = 0;
    v84 = *(v3 + 3);
    if (!v84)
    {
      v61 = 0;
      goto LABEL_261;
    }

    if (!v57)
    {
      v61 = 0;
      goto LABEL_262;
    }

    (*(*v84 + 16))(v84, v7);
    v61 = 0;
    v7 = *v3;
    v57 = *(v3 + 1);
    v59 = *(v3 + 2);
LABEL_167:
    if (v57 > v59 - v7)
    {
      *(v3 + 2) = v59 + 1;
      if (v59)
      {
        v62 = *v59;
        if (v62 < 3)
        {
          v63 = v62 | 0x100;
LABEL_171:
          result = IPC::Decoder::decode<WTF::String>(v3, &v89);
          v65 = *v3;
          if (*v3)
          {
            if (v61 <= 0xFF || v63 <= 0xFF || (v90 & 1) == 0)
            {
              goto LABEL_245;
            }

            result = WebCore::ApplePayButtonPart::create();
            v25 = v92[0];
          }

          else
          {
            v25 = 0;
          }

          if (v90 == 1)
          {
            result = v89;
            v89 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v64);
              }
            }
          }

          if (v65)
          {
            if (*v3)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v68 = *v3;
            v69 = *(v3 + 1);
            *v3 = 0;
            *(v3 + 1) = 0;
            result = *(v3 + 3);
            if (result && v69)
            {
              result = (*(*result + 16))(result, v68);
            }

            if (*v3)
            {
              goto LABEL_245;
            }
          }

          *a2 = 0;
          a2[8] = 0;
          if (!v65)
          {
            return result;
          }

          goto LABEL_93;
        }

LABEL_266:
        *v3 = 0;
        *(v3 + 1) = 0;
        v86 = *(v3 + 3);
        if (v86 && v57)
        {
          (*(*v86 + 16))(v86, v7);
        }

        v63 = 0;
        goto LABEL_171;
      }

LABEL_263:
      *v3 = 0;
      *(v3 + 1) = 0;
      v85 = *(v3 + 3);
      if (v85)
      {
        if (v57)
        {
          (*(*v85 + 16))(v85, v7);
          v7 = *v3;
          v57 = *(v3 + 1);
          goto LABEL_266;
        }
      }

      else
      {
        v57 = 0;
      }

      v7 = 0;
      goto LABEL_266;
    }

    v87 = *(v3 + 3);
    *v3 = 0;
    *(v3 + 1) = 0;
    if (!v57)
    {
LABEL_262:
      v7 = 0;
      goto LABEL_263;
    }

    if (v87)
    {
      (*(*v87 + 16))(v87);
      v7 = *v3;
      v57 = *(v3 + 1);
      goto LABEL_263;
    }

LABEL_261:
    v57 = 0;
    goto LABEL_262;
  }

  v15 = *(v3 + 1);
  v16 = *(v3 + 2);
  if (v15 <= v16 - v7)
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    v70 = *(v3 + 3);
    if (v70)
    {
      if (v15)
      {
        (*(*v70 + 16))(v70);
        v7 = *v3;
        v15 = *(v3 + 1);
LABEL_201:
        *v3 = 0;
        *(v3 + 1) = 0;
        v71 = *(v3 + 3);
        if (v71)
        {
          if (v15)
          {
            (*(*v71 + 16))(v71, v7);
            v7 = *v3;
            v15 = *(v3 + 1);
            goto LABEL_204;
          }
        }

        else
        {
          v15 = 0;
        }

        v7 = 0;
        goto LABEL_204;
      }
    }

    else
    {
      v15 = 0;
    }

    v7 = 0;
    goto LABEL_201;
  }

  *(v3 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_201;
  }

  v17 = *v16;
  if (v17 < 3)
  {
    v18 = v17 | 0x100;
    goto LABEL_31;
  }

LABEL_204:
  *v3 = 0;
  *(v3 + 1) = 0;
  v72 = *(v3 + 3);
  if (v72 && v15)
  {
    (*(*v72 + 16))(v72, v7);
  }

  v18 = 0;
LABEL_31:
  IPC::Decoder::decode<unsigned long long>(v3);
  v20 = v19;
  IPC::Decoder::decode<unsigned long long>(v3);
  v22 = v21;
  result = IPC::Decoder::decode<unsigned long long>(v3);
  if (!*v3)
  {
    goto LABEL_243;
  }

  if (v18 <= 0xFF || (v20 & 1) == 0 || (v22 & 1) == 0 || (v23 & 1) == 0)
  {
    goto LABEL_245;
  }

  WebCore::MeterPart::create();
  result = v89;
LABEL_56:
  if (*v3)
  {
    *a2 = result;
    goto LABEL_48;
  }

  *a2 = 0;
  a2[8] = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D73CE94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, char a14)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::StyleAppearance>(void *a1)
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
  if (v4 < 0x25 && ((0x1FFFFFFFFBuLL >> v4) & 1) != 0)
  {
    v5 = byte_19E703091[v4];
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

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ApplePayButtonPart,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 41));
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v7 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::MeterPart,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  v4 = *(a2 + 64);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::SliderTrackPart,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 44);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v7 = *(a2 + 48);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, &v7);
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 64), *(a2 + 76));
  v5 = *(a2 + 80);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v5);
}

unint64_t IPC::Decoder::decode<WebCore::FloatPoint3D>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v8 = *v2 | 0x100000000;
      v9 = v3;
      goto LABEL_8;
    }

    v26 = a1;
    goto LABEL_34;
  }

  while (1)
  {
    *a1 = 0;
    a1[1] = 0;
    v26 = a1;
    v16 = a1[3];
    if (!v16)
    {
      v1 = 0;
LABEL_26:
      v3 = 0;
      goto LABEL_34;
    }

    if (!v1)
    {
      goto LABEL_26;
    }

    (*(*v16 + 16))(v16, v3);
    v3 = *v26;
    v1 = v26[1];
LABEL_34:
    *v26 = 0;
    v26[1] = 0;
    v19 = v26[3];
    if (!v19)
    {
      v9 = 0;
      v1 = 0;
LABEL_36:
      v3 = 0;
      v8 = 0;
      a1 = v26;
      goto LABEL_8;
    }

    if (!v1)
    {
      v9 = 0;
      goto LABEL_36;
    }

    (*(*v19 + 16))(v19, v3);
    v8 = 0;
    a1 = v26;
    v9 = *v26;
    v1 = v26[1];
    v3 = *v26;
LABEL_8:
    v10 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v1 < v10 - v3 || v1 - (v10 - v3) <= 3)
    {
      v24 = v8;
      v27 = a1;
      *a1 = 0;
      a1[1] = 0;
      v17 = a1[3];
      if (!v17)
      {
        v1 = 0;
LABEL_29:
        v9 = 0;
        goto LABEL_38;
      }

      if (!v1)
      {
        goto LABEL_29;
      }

      (*(*v17 + 16))(v17, v9);
      v9 = *v27;
      v1 = v27[1];
LABEL_38:
      *v27 = 0;
      v27[1] = 0;
      v20 = v27[3];
      if (v20)
      {
        if (v1)
        {
          (*(*v20 + 16))(v20, v9);
          v12 = 0;
          a1 = v27;
          v9 = *v27;
          v1 = v27[1];
          v3 = *v27;
          goto LABEL_41;
        }

        v9 = 0;
      }

      else
      {
        v9 = 0;
        v1 = 0;
      }

      v3 = 0;
      v12 = 0;
      a1 = v27;
LABEL_41:
      v8 = v24;
      goto LABEL_15;
    }

    a1[2] = v10 + 1;
    if (!v10)
    {
      v24 = v8;
      v27 = a1;
      goto LABEL_38;
    }

    v12 = *v10 | 0x100000000;
LABEL_15:
    v13 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v1 < v13 - v3 || v1 - (v13 - v3) <= 3)
    {
      v29 = v12;
      v25 = v8;
      v28 = a1;
      *a1 = 0;
      a1[1] = 0;
      v18 = a1[3];
      if (v18)
      {
        if (v1)
        {
          (*(*v18 + 16))(v18, v9);
          v9 = *v28;
          v1 = v28[1];
          goto LABEL_43;
        }
      }

      else
      {
        v1 = 0;
      }

      v9 = 0;
    }

    else
    {
      a1[2] = v13 + 1;
      if (v13)
      {
        v14 = *v13 | 0x100000000;
        if (!v3)
        {
          goto LABEL_45;
        }

        goto LABEL_19;
      }

      v29 = v12;
      v25 = v8;
      v28 = a1;
    }

LABEL_43:
    *v28 = 0;
    v28[1] = 0;
    v21 = v28[3];
    if (!v21 || !v1)
    {
      break;
    }

    (*(*v21 + 16))(v21, v9);
    v14 = 0;
    v8 = v25;
    a1 = v28;
    v9 = *v28;
    v12 = v29;
    if (!*v28)
    {
      goto LABEL_45;
    }

LABEL_19:
    if ((v8 & 0x100000000) != 0 && (v12 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
    {
      return v8 | (v12 << 32);
    }

    __break(1u);
  }

  v9 = 0;
  a1 = v28;
  LODWORD(v12) = v29;
LABEL_45:
  v22 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v23 = a1[3];
  if (v23)
  {
    v30 = v12;
    if (v22)
    {
      (*(*v23 + 16))(v23, v9);
    }

    LODWORD(v8) = 0;
    LODWORD(v12) = v30;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  return v8 | (v12 << 32);
}

void IPC::ArgumentCoder<WebCore::FEBlend,void>::encode(WTF *a1, uint64_t a2)
{
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = *(a2 + 64);
  v2 = *(a1 + 1);
  if (!v2)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_4;
  }

  ++*a1;
  *(a1 + 1) = v2 - 1;
LABEL_4:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

atomic_uchar ***WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(atomic_uchar ***a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    do
    {
      v4 = v3[1];
      if ((v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v3[1], a2);
        return a1;
      }

      v5 = v3[1];
      atomic_compare_exchange_strong_explicit(v3 + 1, &v5, (v4 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      (*(*v3 + 1))(v3);
    }
  }

  return a1;
}

void IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 72), *(a2 + 84));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::encode(WTF *a1, uint64_t a2)
{
  if (*(a1 + 1))
  {
    **a1 = *(a2 + 64);
    v4 = *(a1 + 1);
    if (v4)
    {
      ++*a1;
      *(a1 + 1) = v4 - 1;
      goto LABEL_4;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_4:
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, *(a2 + 72), *(a2 + 84));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEColorMatrix,void>::decode(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_22;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_22:
    IPC::Decoder::markInvalid(this);
    goto LABEL_23;
  }

  if (*v4 < 5u)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_23:
  IPC::Decoder::markInvalid(this);
  v5 = 1;
LABEL_5:
  IPC::Decoder::decode<WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v16, this);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(this, &v14);
  v7 = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*this)
  {
    while (v5 || (v18 & 1) == 0 || (v7 & 1) == 0)
    {
      __break(1u);
LABEL_19:
      IPC::Decoder::markInvalid(this);
      if (!*this)
      {
        *a1 = 0;
        a1[8] = 0;
        goto LABEL_12;
      }
    }

    cf = v14;
    WebCore::FEColorMatrix::create();
    v8 = v13;
    v13 = 0;
    *a1 = v8;
    a1[8] = 1;
    WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v13, v9);
    v10 = cf;
    if (!cf)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *a1 = 0;
  a1[8] = 0;
  v10 = v14;
  if (v14)
  {
LABEL_11:
    CFRelease(v10);
  }

LABEL_12:
  if (v18 == 1)
  {
    v11 = v16;
    if (v16)
    {
      v16 = 0;
      v17 = 0;
      WTF::fastFree(v11, v6);
    }
  }
}

void sub_19D73D894(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, int a16, char a17)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a17 == 1)
  {
    if (a14)
    {
      WTF::fastFree(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *IPC::Decoder::decode<WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, v9);
  if ((v10 & 1) == 0)
  {
    result = IPC::Decoder::markInvalid(a2);
    if ((v10 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      return IPC::Decoder::markInvalid(a2);
    }
  }

  v5 = v9[0];
  v6 = v9[1];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  if (!v6)
  {
LABEL_6:
    *(a1 + 16) = 1;
    return result;
  }

  if (!(v6 >> 30))
  {
    v7 = 4 * v6;
    result = WTF::fastMalloc((4 * v6));
    *(a1 + 8) = v6;
    *a1 = result;
    do
    {
      v8 = *v5++;
      *result++ = v8;
      v7 -= 4;
    }

    while (v7);
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

atomic_uchar ***WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(atomic_uchar ***result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    do
    {
      v3 = v2[1];
      if ((v3 & 1) == 0)
      {
        v5 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v2[1], a2);
        return v5;
      }

      v4 = v2[1];
      atomic_compare_exchange_strong_explicit(v2 + 1, &v4, (v3 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 != 3)
    {
      return result;
    }

    v5 = result;
    (*(*v2 + 1))(v2);
    return v5;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  v4 = *(a2 + 24);
  v5 = *(a2 + 36);

  return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v4, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    goto LABEL_17;
  }

  **a1 = *a2;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2 - 1;
  v4 = *a1 + 1;
  *a1 = v4;
  *(a1 + 8) = v3;
  v5 = -v4 & 3 | 4;
  if (v3 < v5)
  {
    goto LABEL_17;
  }

  *(v4 + (-v4 & 3)) = *(a2 + 4);
  v6 = *(a1 + 8);
  v7 = v6 - v5;
  if (v6 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  *(a1 + 8) = v7;
  v9 = -v8 & 3 | 4;
  if (v7 < v9)
  {
LABEL_17:
    *a1 = 0;
    *(a1 + 8) = 0;
    return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, *(a2 + 24), *(a2 + 36));
  }

  *(v8 + (-v8 & 3)) = *(a2 + 8);
  v10 = *(a1 + 8);
  v11 = v10 - v9;
  if (v10 < v9)
  {
    goto LABEL_16;
  }

  v12 = *a1 + v9;
  *a1 = v12;
  *(a1 + 8) = v11;
  v13 = -v12 & 3 | 4;
  if (v11 < v13)
  {
    goto LABEL_17;
  }

  *(v12 + (-v12 & 3)) = *(a2 + 12);
  v14 = *(a1 + 8);
  v15 = v14 - v13;
  if (v14 < v13)
  {
    goto LABEL_16;
  }

  v16 = *a1 + v13;
  *a1 = v16;
  *(a1 + 8) = v15;
  v17 = -v16 & 3 | 4;
  if (v15 < v17)
  {
    goto LABEL_17;
  }

  *(v16 + (-v16 & 3)) = *(a2 + 16);
  v18 = *(a1 + 8);
  v19 = v18 - v17;
  if (v18 < v17)
  {
    goto LABEL_16;
  }

  v20 = *a1 + v17;
  *a1 = v20;
  *(a1 + 8) = v19;
  v21 = -v20 & 3 | 4;
  if (v19 < v21)
  {
    goto LABEL_17;
  }

  *(v20 + (-v20 & 3)) = *(a2 + 20);
  v22 = *(a1 + 8);
  v23 = v22 >= v21;
  v24 = v22 - v21;
  if (!v23)
  {
    goto LABEL_16;
  }

  *a1 += v21;
  *(a1 + 8) = v24;
  return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, *(a2 + 24), *(a2 + 36));
}

void IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 88);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v5 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v5, v4);
  }

  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 128);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v7 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v7, v6);
  }

  v12 = *(a2 + 144);
  v13 = *(a2 + 160);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 168);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v9 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v9, v8);
  }

  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 208);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v11 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v11, v10);
  }

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void sub_19D73DD60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13)
{
  if (a12)
  {
    WTF::fastFree(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::FEComponentTransfer,void>::encode(WTF *a1, uint64_t a2)
{
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 88);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v5 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v5, v4);
  }

  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 128);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v7 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v7, v6);
  }

  v12 = *(a2 + 144);
  v13 = *(a2 + 160);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 168);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v9 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v9, v8);
  }

  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v14, a2 + 208);
  IPC::ArgumentCoder<WebCore::ComponentTransferFunction,void>::encode(a1, &v12);
  v11 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v11, v10);
  }

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void sub_19D73DED8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13)
{
  if (a12)
  {
    WTF::fastFree(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WebCore::ComponentTransferFunction>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29, v6);
        v6 = *a2;
        v4 = *(a2 + 1);
LABEL_55:
        *a2 = 0;
        *(a2 + 1) = 0;
        v30 = *(a2 + 3);
        if (v30)
        {
          if (v4)
          {
            (*(*v30 + 16))(v30, v6);
            v6 = *a2;
            v4 = *(a2 + 1);
            goto LABEL_58;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_55;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_55;
  }

  v7 = *v5;
  if (v7 < 6)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_58:
  *a2 = 0;
  *(a2 + 1) = 0;
  v31 = *(a2 + 3);
  if (!v31)
  {
    v4 = 0;
LABEL_60:
    v6 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (!v4)
  {
    goto LABEL_60;
  }

  (*(*v31 + 16))(v31, v6);
  v8 = 0;
  v6 = *a2;
  v4 = *(a2 + 1);
LABEL_5:
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
    v32 = *(a2 + 3);
    if (!v32)
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

    (*(*v32 + 16))(v32, v6);
    v6 = *a2;
    v4 = *(a2 + 1);
  }

LABEL_66:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (!v33)
  {
    v12 = 0;
    v4 = 0;
LABEL_68:
    v6 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_68;
  }

  (*(*v33 + 16))(v33, v6);
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
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_72;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_72:
  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = *(a2 + 3);
  if (v35)
  {
    if (v4)
    {
      (*(*v35 + 16))(v35, v12);
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
    v36 = *(a2 + 3);
    if (v36)
    {
      if (v4)
      {
        (*(*v36 + 16))(v36, v12);
        v12 = *a2;
        v4 = *(a2 + 1);
        goto LABEL_78;
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

LABEL_78:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (v37)
  {
    if (v4)
    {
      (*(*v37 + 16))(v37, v12);
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
  if (v4 < v18 - v6 || v4 - (v18 - v6) <= 3)
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
        goto LABEL_84;
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
    *(a2 + 2) = v18 + 1;
    if (v18)
    {
      v19 = *v18 | 0x100000000;
      goto LABEL_27;
    }
  }

LABEL_84:
  *a2 = 0;
  *(a2 + 1) = 0;
  v39 = *(a2 + 3);
  if (v39)
  {
    if (v4)
    {
      (*(*v39 + 16))(v39, v12);
      v19 = 0;
      v12 = *a2;
      v4 = *(a2 + 1);
      v6 = *a2;
      goto LABEL_27;
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
LABEL_27:
  v20 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = v20 - v6;
  v22 = v4 >= v21;
  v23 = v4 - v21;
  if (!v22 || v23 <= 3)
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
        goto LABEL_90;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_90;
  }

  *(a2 + 2) = v20 + 1;
  if (v20)
  {
    v24 = *v20 | 0x100000000;
    goto LABEL_32;
  }

LABEL_90:
  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41 && v4)
  {
    (*(*v41 + 16))(v41, v12);
  }

  v24 = 0;
LABEL_32:
  result = IPC::Decoder::decode<WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v46, a2);
  if (!*a2)
  {
LABEL_48:
    *a1 = 0;
    *(a1 + 40) = 0;
    goto LABEL_42;
  }

  if (v8 <= 0xFF || (LOBYTE(v42) = v8, (v11 & 0x100000000) == 0) || (DWORD1(v42) = v11, (v15 & 0x100000000) == 0) || (DWORD2(v42) = v15, (v17 & 0x100000000) == 0) || (HIDWORD(v42) = v17, (v19 & 0x100000000) == 0) || (LODWORD(v43) = v19, (v24 & 0x100000000) == 0) || (HIDWORD(v43) = v24, (v48 & 1) == 0))
  {
    __break(1u);
    goto LABEL_48;
  }

  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v44, &v46);
  *a1 = v42;
  *(a1 + 16) = v43;
  WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 24), &v44);
  *(a1 + 40) = 1;
  result = v44;
  if (v44)
  {
    v44 = 0;
    v45 = 0;
    result = WTF::fastFree(result, v26);
  }

LABEL_42:
  if (v48 == 1)
  {
    result = v46;
    if (v46)
    {
      v46 = 0;
      v47 = 0;
      result = WTF::fastFree(result, v26);
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
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
  }

  return result;
}

void sub_19D73E590(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, WTF *a14, int a15, int a16, char a17)
{
  if (*(v17 + 40) == 1)
  {
    v19 = *(v17 + 24);
    if (v19)
    {
      *(v17 + 24) = 0;
      *(v17 + 32) = 0;
      WTF::fastFree(v19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 80));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEComposite,void>::encode(WTF *a1, uint64_t a2)
{
  if (!*(a1 + 1))
  {
    goto LABEL_15;
  }

  **a1 = *(a2 + 64);
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2 - 1;
  v4 = *a1 + 1;
  *a1 = v4;
  *(a1 + 1) = v3;
  v5 = -v4 & 3 | 4;
  if (v3 < v5)
  {
    goto LABEL_15;
  }

  *(v4 + (-v4 & 3)) = *(a2 + 68);
  v6 = *(a1 + 1);
  v7 = v6 - v5;
  if (v6 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  *(a1 + 1) = v7;
  v9 = -v8 & 3 | 4;
  if (v7 < v9)
  {
LABEL_15:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_13;
  }

  *(v8 + (-v8 & 3)) = *(a2 + 72);
  v10 = *(a1 + 1);
  v11 = v10 - v9;
  if (v10 < v9)
  {
    goto LABEL_14;
  }

  v12 = *a1 + v9;
  *a1 = v12;
  *(a1 + 1) = v11;
  v13 = -v12 & 3 | 4;
  if (v11 < v13)
  {
    goto LABEL_15;
  }

  *(v12 + (-v12 & 3)) = *(a2 + 76);
  v14 = *(a1 + 1);
  v15 = v14 - v13;
  if (v14 < v13)
  {
    goto LABEL_14;
  }

  v16 = *a1 + v13;
  *a1 = v16;
  *(a1 + 1) = v15;
  v17 = -v16 & 3 | 4;
  if (v15 < v17)
  {
    goto LABEL_15;
  }

  *(v16 + (-v16 & 3)) = *(a2 + 80);
  v18 = *(a1 + 1);
  v19 = v18 >= v17;
  v20 = v18 - v17;
  if (!v19)
  {
    goto LABEL_14;
  }

  *a1 += v17;
  *(a1 + 1) = v20;
LABEL_13:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  v5 = *(a2 + 84);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  v6 = *(a2 + 96);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6);
  v7 = *(a2 + 100);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 104), *(a2 + 116));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEConvolveMatrix,void>::encode(WTF *a1, uint64_t a2)
{
  v15 = *(a2 + 64);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, &v15);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (*(a1 + 1) < v5)
  {
    goto LABEL_19;
  }

  *(*a1 + (v4 & 3)) = *(a2 + 72);
  v6 = *(a1 + 1);
  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_16;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  *(a1 + 1) = v7;
  v9 = -v8 & 3 | 4;
  if (v7 < v9)
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  else
  {
    *(v8 + (-v8 & 3)) = *(a2 + 76);
    v10 = *(a1 + 1);
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_16;
    }

    *a1 += v9;
    *(a1 + 1) = v12;
  }

  v15 = *(a2 + 80);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, &v15);
  if (!*(a1 + 1))
  {
    goto LABEL_17;
  }

  **a1 = *(a2 + 88);
  v13 = *(a1 + 1);
  if (v13)
  {
    ++*a1;
    *(a1 + 1) = v13 - 1;
    goto LABEL_10;
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    *a1 = 0;
    *(a1 + 1) = 0;
LABEL_10:
    v15 = *(a2 + 92);
    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, &v15);
    if (!*(a1 + 1))
    {
      break;
    }

    **a1 = *(a2 + 100);
    v14 = *(a1 + 1);
    if (v14)
    {
      ++*a1;
      *(a1 + 1) = v14 - 1;
      goto LABEL_13;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_13:
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(a1, *(a2 + 104), *(a2 + 116));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<WebCore::LightSource,void>::encode(a1, *(a2 + 96));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEDiffuseLighting,void>::encode(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (a1[1] < v5)
  {
    goto LABEL_15;
  }

  *(*a1 + (v4 & 3)) = *(a2 + 72);
  v6 = a1[1];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_14;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  a1[1] = v7;
  v9 = -v8 & 3 | 4;
  if (v7 >= v9)
  {
    *(v8 + (-v8 & 3)) = *(a2 + 76);
    v10 = a1[1];
    v11 = v10 - v9;
    if (v10 < v9)
    {
      goto LABEL_14;
    }

    v12 = *a1 + v9;
    *a1 = v12;
    a1[1] = v11;
    v13 = -v12 & 3 | 4;
    if (v11 < v13)
    {
      goto LABEL_15;
    }

    *(v12 + (-v12 & 3)) = *(a2 + 88);
    v14 = a1[1];
    v15 = v14 - v13;
    if (v14 < v13)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v16 = *a1 + v13;
    *a1 = v16;
    a1[1] = v15;
    v17 = -v16 & 3 | 4;
    if (v15 >= v17)
    {
      *(v16 + (-v16 & 3)) = *(a2 + 92);
      v18 = a1[1];
      v19 = v18 >= v17;
      v20 = v18 - v17;
      if (v19)
      {
        *a1 += v17;
        a1[1] = v20;
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  *a1 = 0;
  a1[1] = 0;
LABEL_11:
  IPC::ArgumentCoder<WebCore::LightSource,void>::encode(a1, *(a2 + 96));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

_DWORD *IPC::Decoder::decode<WTF::Ref<WebCore::LightSource,WTF::RawPtrTraits<WebCore::LightSource>,WTF::DefaultRefDerefTraits<WebCore::LightSource>>>(WebCore::DistantLightSource *a1, uint64_t *a2)
{
  v4 = a1;
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    a2[1] = 0;
    v37 = a2[3];
    if (v37)
    {
      if (v7)
      {
        (*(*v37 + 16))(v37);
        v6 = *a2;
        v7 = a2[1];
        goto LABEL_68;
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
    a2[2] = (v5 + 1);
    if (v5)
    {
      v8 = *v5;
      if (v8 < 3)
      {
        v9 = v8 | 0x100;
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_5;
      }

      goto LABEL_71;
    }
  }

LABEL_68:
  *a2 = 0;
  a2[1] = 0;
  v38 = a2[3];
  if (v38)
  {
    if (v7)
    {
      (*(*v38 + 16))(v38, v6);
      v6 = *a2;
      v7 = a2[1];
      goto LABEL_71;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
LABEL_71:
  *a2 = 0;
  a2[1] = 0;
  v39 = a2[3];
  if (!v39)
  {
    goto LABEL_17;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  a1 = (*(*v39 + 16))(v39, v6);
  v9 = 0;
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v9 >= 0x100 && v9 == 0)
  {
    v16 = a2[1];
    v17 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v16 >= v17 - v6 && v16 - (v17 - v6) > 3)
    {
      a2[2] = (v17 + 1);
      if (v17)
      {
        v2 = *v17 | 0x100000000;
        goto LABEL_30;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v40 = a2[3];
      if (v40)
      {
        if (v16)
        {
          (*(*v40 + 16))(v40);
          v6 = *a2;
          v16 = a2[1];
          goto LABEL_78;
        }
      }

      else
      {
        v16 = 0;
      }

      v6 = 0;
    }

LABEL_78:
    *a2 = 0;
    a2[1] = 0;
    a1 = a2[3];
    if (!a1)
    {
      v6 = 0;
      v19 = 0;
      v16 = 0;
LABEL_80:
      v2 = 0;
      goto LABEL_31;
    }

    if (!v16)
    {
      v6 = 0;
      v19 = 0;
      goto LABEL_80;
    }

    a1 = (*(*a1 + 16))(a1, v6);
    v2 = 0;
    v6 = *a2;
    v16 = a2[1];
LABEL_30:
    v19 = v6;
LABEL_31:
    v20 = (a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v16 >= v20 - v6 && v16 - (v20 - v6) > 3)
    {
      a2[2] = v20 + 4;
      if (v20)
      {
        v21 = *v20 | 0x100000000;
        if (!v6)
        {
          goto LABEL_87;
        }

        goto LABEL_35;
      }

      goto LABEL_84;
    }

    *a2 = 0;
    a2[1] = 0;
    v41 = a2[3];
    if (v41)
    {
      if (v16)
      {
        (*(*v41 + 16))(v41, v19);
        v19 = *a2;
        v16 = a2[1];
        goto LABEL_84;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = 0;
LABEL_84:
    *a2 = 0;
    a2[1] = 0;
    v42 = a2[3];
    if (v42 && v16)
    {
      a1 = (*(*v42 + 16))(v42, v19);
      v21 = 0;
      if (!*a2)
      {
        goto LABEL_87;
      }

LABEL_35:
      if ((v2 & 0x100000000) == 0 || (v21 & 0x100000000) == 0)
      {
        goto LABEL_91;
      }

      WebCore::DistantLightSource::create(&v54, a1, *&v2, *&v21);
      result = v54;
      goto LABEL_55;
    }

LABEL_17:
    *v4 = 0;
    *(v4 + 8) = 0;
    goto LABEL_18;
  }

  if (v9 < 0x100 || v9 != 1)
  {
    if (v9 < 0x100 || v9 != 2)
    {
      goto LABEL_17;
    }

    v23 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    v2 = v24;
    v54 = v23;
    v55 = v24;
    v56 = BYTE4(v24);
    IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    v20 = v25;
    v16 = a2[1];
    v26 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = *a2;
    v27 = v26 - *a2;
    v28 = v16 >= v27;
    v29 = v16 - v27;
    if (!v28 || v29 <= 3)
    {
      goto LABEL_92;
    }

    a2[2] = (v26 + 1);
    if (!v26)
    {
      v50 = v25;
      goto LABEL_99;
    }

    v30 = *v26 | 0x100000000;
    v31 = v21;
    while (1)
    {
      v32 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if (v16 < v32 - v21 || v16 - (v32 - v21) <= 3)
      {
        v49 = v30;
        v51 = v20;
        *a2 = 0;
        a2[1] = 0;
        v46 = a2[3];
        if (v46)
        {
          if (v16)
          {
            (*(*v46 + 16))(v46, v31);
            v31 = *a2;
            v16 = a2[1];
            goto LABEL_104;
          }
        }

        else
        {
          v16 = 0;
        }

        v31 = 0;
      }

      else
      {
        a2[2] = (v32 + 1);
        if (v32)
        {
          v33 = *v32 | 0x100000000;
          if (!v21)
          {
            goto LABEL_87;
          }

          goto LABEL_50;
        }

        v49 = v30;
        v51 = v20;
      }

LABEL_104:
      *a2 = 0;
      a2[1] = 0;
      v48 = a2[3];
      if (!v48 || !v16)
      {
        *a2 = 0;
        a2[1] = 0;
        goto LABEL_17;
      }

      (*(*v48 + 16))(v48, v31);
      v33 = 0;
      v30 = v49;
      v20 = v51;
      if (!*a2)
      {
LABEL_87:
        v43 = a2[1];
        v44 = a2[3];
        *a2 = 0;
        a2[1] = 0;
        if (!v44 || !v43)
        {
          goto LABEL_17;
        }

        v36 = *(*v44 + 16);
LABEL_90:
        v36();
        v21 = *a2;
        if (!*a2)
        {
          goto LABEL_17;
        }

        goto LABEL_91;
      }

LABEL_50:
      if ((v2 & 0x100000000) != 0 && (v20 & 0x100000000) != 0 && (v30 & 0x100000000) != 0 && (v33 & 0x100000000) != 0)
      {
        WebCore::SpotLightSource::create();
        result = v52;
        goto LABEL_55;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      v50 = v20;
      *a2 = 0;
      a2[1] = 0;
      v45 = a2[3];
      if (!v45)
      {
        v16 = 0;
LABEL_94:
        v21 = 0;
        goto LABEL_99;
      }

      if (!v16)
      {
        goto LABEL_94;
      }

      (*(*v45 + 16))(v45, v21);
      v21 = *a2;
      v16 = a2[1];
LABEL_99:
      *a2 = 0;
      a2[1] = 0;
      v47 = a2[3];
      if (!v47)
      {
        v31 = 0;
        v16 = 0;
LABEL_101:
        v21 = 0;
        v30 = 0;
        goto LABEL_102;
      }

      if (!v16)
      {
        v31 = 0;
        goto LABEL_101;
      }

      (*(*v47 + 16))(v47, v21);
      v30 = 0;
      v31 = *a2;
      v16 = a2[1];
      v21 = *a2;
LABEL_102:
      v20 = v50;
    }
  }

  v54 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
  v55 = v22;
  v56 = BYTE4(v22);
  v21 = *a2;
  if (!*a2)
  {
    v34 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v35 = a2[3];
    if (v35 && v34)
    {
      v36 = *(*v35 + 16);
      goto LABEL_90;
    }

    goto LABEL_17;
  }

  if ((v22 & 0x100000000) == 0)
  {
    goto LABEL_91;
  }

  WebCore::PointLightSource::create();
  result = v53;
LABEL_55:
  if (*a2)
  {
    *v4 = result;
    *(v4 + 8) = 1;
    return result;
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      (*(*result + 8))(result);
    }

    else
    {
      --result[2];
    }
  }

LABEL_18:
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v13)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

void IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 65));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEDisplacementMap,void>::encode(uint64_t *a1, uint64_t a2)
{
  if (!a1[1])
  {
    goto LABEL_11;
  }

  **a1 = *(a2 + 64);
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v2 - 1;
  v3 = v2 == 1;
  v5 = (*a1 + 1);
  *a1 = v5;
  a1[1] = v4;
  if (v3)
  {
    goto LABEL_11;
  }

  *v5 = *(a2 + 65);
  v6 = a1[1];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6 - 1;
  v8 = *a1 + 1;
  *a1 = v8;
  a1[1] = v7;
  v9 = -v8 & 3 | 4;
  if (v7 < v9)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_9;
  }

  *(v8 + (-v8 & 3)) = *(a2 + 68);
  v10 = a1[1];
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (!v11)
  {
    goto LABEL_10;
  }

  *a1 += v9;
  a1[1] = v12;
LABEL_9:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 80));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 88));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEDropShadow,void>::encode(uint64_t *a1, uint64_t a2)
{
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (a1[1] < v5)
  {
    goto LABEL_19;
  }

  *(*a1 + (v4 & 3)) = *(a2 + 64);
  v6 = a1[1];
  v7 = v6 - v5;
  if (v6 >= v5)
  {
    v8 = *a1 + v5;
    *a1 = v8;
    a1[1] = v7;
    v9 = -v8 & 3 | 4;
    if (v7 < v9)
    {
      goto LABEL_19;
    }

    *(v8 + (-v8 & 3)) = *(a2 + 68);
    v10 = a1[1];
    v11 = v10 - v9;
    if (v10 >= v9)
    {
      v12 = *a1 + v9;
      *a1 = v12;
      a1[1] = v11;
      v13 = -v12 & 3 | 4;
      if (v11 < v13)
      {
        goto LABEL_19;
      }

      *(v12 + (-v12 & 3)) = *(a2 + 72);
      v14 = a1[1];
      v15 = v14 - v13;
      if (v14 >= v13)
      {
        v16 = *a1 + v13;
        *a1 = v16;
        a1[1] = v15;
        v17 = -v16 & 3 | 4;
        if (v15 < v17)
        {
          goto LABEL_19;
        }

        *(v16 + (-v16 & 3)) = *(a2 + 76);
        v18 = a1[1];
        v19 = v18 >= v17;
        v20 = v18 - v17;
        if (v19)
        {
          *a1 += v17;
          a1[1] = v20;
          goto LABEL_11;
        }
      }
    }
  }

  while (1)
  {
    __break(1u);
LABEL_19:
    *a1 = 0;
    a1[1] = 0;
LABEL_11:
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 80));
    v21 = -*a1;
    v22 = v21 & 3 | 4;
    if (a1[1] < v22)
    {
      break;
    }

    *(*a1 + (v21 & 3)) = *(a2 + 88);
    v23 = a1[1];
    v19 = v23 >= v22;
    v24 = v23 - v22;
    if (v19)
    {
      *a1 += v22;
      a1[1] = v24;
      goto LABEL_15;
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_15:

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEFlood,void>::encode(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (a1[1] >= v5)
  {
    *(*a1 + (v4 & 3)) = *(a2 + 72);
    v6 = a1[1];
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (v7)
    {
      *a1 += v5;
      a1[1] = v8;
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_5:

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 72));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::encode(WTF *a1, uint64_t a2)
{
  v2 = -*a1;
  v3 = v2 & 3 | 4;
  if (*(a1 + 1) < v3)
  {
    goto LABEL_10;
  }

  *(*a1 + (v2 & 3)) = *(a2 + 64);
  v4 = *(a1 + 1);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_9;
  }

  v6 = *a1 + v3;
  *a1 = v6;
  *(a1 + 1) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 < v7)
  {
    goto LABEL_10;
  }

  *(v6 + (-v6 & 3)) = *(a2 + 68);
  v8 = *(a1 + 1);
  v10 = v8 - v7;
  v9 = v8 == v7;
  if (v8 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = (*a1 + v7);
  *a1 = v11;
  *(a1 + 1) = v10;
  if (v9)
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_8;
  }

  *v11 = *(a2 + 72);
  v12 = *(a1 + 1);
  if (!v12)
  {
    goto LABEL_9;
  }

  ++*a1;
  *(a1 + 1) = v12 - 1;
LABEL_8:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEGaussianBlur,void>::decode(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    v11 = v5 + 1;
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v12 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v12 = 0;
  v4 = *(this + 1);
  v11 = *(this + 2);
  v6 = *this;
LABEL_8:
  v13 = ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = v13 - v6;
  v8 = v4 >= v14;
  v15 = v4 - v14;
  if (v8 && v15 > 3)
  {
    *(this + 2) = v13 + 1;
    if (v13)
    {
      v17 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v17 = 0;
LABEL_15:
  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(this);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(this, &v26);
  v19 = v27;
  if (v27 != 1)
  {
    goto LABEL_29;
  }

  if (*this)
  {
    while ((v12 & 0x100000000) == 0 || (v17 & 0x100000000) == 0 || Options <= 0xFFu || (v19 & 1) == 0)
    {
      __break(1u);
LABEL_29:
      v23 = v19;
      IPC::Decoder::markInvalid(this);
      v19 = v23;
      if (!*this)
      {
        *a1 = 0;
        a1[8] = 0;
        return;
      }
    }

    cf = v26;
    WebCore::FEGaussianBlur::create();
    v20 = v25;
    v25 = 0;
    *a1 = v20;
    a1[8] = 1;
    WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v25, v21);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
    v22 = v26;
    if (v26)
    {

      CFRelease(v22);
    }
  }
}

void sub_19D73F8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FEImage,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = WebCore::SourceImage::imageIdentifier((a2 + 64));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  v7 = *(a2 + 104);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  v5 = *(a2 + 121);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::FEImage,void>::encode(uint64_t a1, uint64_t a2)
{
  result = WebCore::SourceImage::imageIdentifier((a2 + 64));
  v5 = -*a1;
  v6 = v5 & 7 | 8;
  if (*(a1 + 8) < v6)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *(*a1 + (v5 & 7)) = result;
    v7 = *(a1 + 8);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      goto LABEL_11;
    }

    *a1 += v6;
    *(a1 + 8) = v9;
  }

  v15 = *(a2 + 104);
  result = IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(a1, &v15);
  if (!*(a1 + 8))
  {
    goto LABEL_12;
  }

  **a1 = *(a2 + 120);
  v10 = *(a1 + 8);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v10 - 1;
  v11 = v10 == 1;
  v13 = (*a1 + 1);
  *a1 = v13;
  *(a1 + 8) = v12;
  if (v11)
  {
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = 0;
    return result;
  }

  *v13 = *(a2 + 121);
  v14 = *(a1 + 8);
  if (!v14)
  {
    goto LABEL_11;
  }

  ++*a1;
  *(a1 + 8) = v14 - 1;
  return result;
}

void IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEMorphology,void>::encode(WTF *a1, uint64_t a2)
{
  if (!*(a1 + 1))
  {
    goto LABEL_11;
  }

  **a1 = *(a2 + 64);
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2 - 1;
  v4 = *a1 + 1;
  *a1 = v4;
  *(a1 + 1) = v3;
  v5 = -v4 & 3 | 4;
  if (v3 < v5)
  {
    goto LABEL_11;
  }

  *(v4 + (-v4 & 3)) = *(a2 + 68);
  v6 = *(a1 + 1);
  v7 = v6 - v5;
  if (v6 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *a1 + v5;
  *a1 = v8;
  *(a1 + 1) = v7;
  v9 = -v8 & 3 | 4;
  if (v7 < v9)
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_9;
  }

  *(v8 + (-v8 & 3)) = *(a2 + 72);
  v10 = *(a1 + 1);
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (!v11)
  {
    goto LABEL_10;
  }

  *a1 += v9;
  *(a1 + 1) = v12;
LABEL_9:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEOffset,void>::encode(WTF *a1, uint64_t a2)
{
  v2 = -*a1;
  v3 = v2 & 3 | 4;
  if (*(a1 + 1) < v3)
  {
    goto LABEL_9;
  }

  *(*a1 + (v2 & 3)) = *(a2 + 64);
  v4 = *(a1 + 1);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_8;
  }

  v6 = *a1 + v3;
  *a1 = v6;
  *(a1 + 1) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 < v7)
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 1) = 0;
    goto LABEL_7;
  }

  *(v6 + (-v6 & 3)) = *(a2 + 68);
  v8 = *(a1 + 1);
  v9 = v8 >= v7;
  v10 = v8 - v7;
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *a1 += v7;
  *(a1 + 1) = v10;
LABEL_7:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FEOffset,void>::decode(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    v11 = v5 + 1;
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v12 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v12 = 0;
  v4 = *(this + 1);
  v11 = *(this + 2);
  v6 = *this;
LABEL_8:
  v13 = ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = v13 - v6;
  v8 = v4 >= v14;
  v15 = v4 - v14;
  if (v8 && v15 > 3)
  {
    *(this + 2) = v13 + 1;
    if (v13)
    {
      v17 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v17 = 0;
LABEL_15:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(this, &v25);
  v18 = v26;
  if (v26 != 1)
  {
    goto LABEL_28;
  }

  if (*this)
  {
    while ((v12 & 0x100000000) == 0 || (v17 & 0x100000000) == 0 || (v18 & 1) == 0)
    {
      __break(1u);
LABEL_28:
      v22 = v18;
      IPC::Decoder::markInvalid(this);
      v18 = v22;
      if (!*this)
      {
        *a1 = 0;
        a1[8] = 0;
        return;
      }
    }

    cf = v25;
    WebCore::FEOffset::create();
    v19 = v24;
    v24 = 0;
    *a1 = v19;
    a1[8] = 1;
    WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v24, v20);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
    v21 = v25;
    if (v25)
    {

      CFRelease(v21);
    }
  }
}

void sub_19D73FDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<WebCore::LightSource,void>::encode(a1, *(a2 + 96));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FESpecularLighting,void>::encode(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 64));
  v4 = IPC::StreamConnectionEncoder::operator<<<float const&>(a1, *(a2 + 72));
  v5 = IPC::StreamConnectionEncoder::operator<<<float const&>(v4, *(a2 + 80));
  v6 = IPC::StreamConnectionEncoder::operator<<<float const&>(v5, *(a2 + 84));
  v7 = IPC::StreamConnectionEncoder::operator<<<float const&>(v6, *(a2 + 88));
  v8 = IPC::StreamConnectionEncoder::operator<<<float const&>(v7, *(a2 + 92));
  IPC::ArgumentCoder<WebCore::LightSource,void>::encode(v8, *(a2 + 96));

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  v4 = *(a2 + 84);
  IPC::Encoder::operator<<<BOOL>(a1, &v4);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::FETurbulence,void>::encode(WTF *a1, uint64_t a2)
{
  if (!*(a1 + 1))
  {
    goto LABEL_11;
  }

  **a1 = *(a2 + 64);
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_10;
  }

  ++*a1;
  for (*(a1 + 1) = v3 - 1; ; *(a1 + 1) = 0)
  {
    v4 = IPC::StreamConnectionEncoder::operator<<<float const&>(a1, *(a2 + 68));
    v5 = IPC::StreamConnectionEncoder::operator<<<float const&>(v4, *(a2 + 72));
    v6 = IPC::StreamConnectionEncoder::operator<<<int>(v5, *(a2 + 76));
    a1 = IPC::StreamConnectionEncoder::operator<<<float const&>(v6, *(a2 + 80));
    if (!*(a1 + 1))
    {
      break;
    }

    **a1 = *(a2 + 84);
    v7 = *(a1 + 1);
    if (v7)
    {
      ++*a1;
      *(a1 + 1) = v7 - 1;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    *a1 = 0;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
LABEL_7:

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 56));
}

void IPC::ArgumentCoder<WebCore::SourceAlpha,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &cf);
  if (v9 == 1)
  {
    if (*a2)
    {
      WebCore::SourceAlpha::create();
      v4 = v7;
      v7 = 0;
      *a1 = v4;
      *(a1 + 8) = 1;
      WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v7, v5);
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a2);
    if (*a2)
    {
      __break(1u);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_19D74010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, char a12)
{
  if (a12 == 1)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::SourceGraphic,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a2, &v9);
  if (v10 == 1)
  {
    if (*a2)
    {
      cf = v9;
      WebCore::SourceGraphic::create();
      v4 = v8;
      v8 = 0;
      *a1 = v4;
      *(a1 + 8) = 1;
      WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(&v8, v5);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      v6 = v9;
      if (v9)
      {

        CFRelease(v6);
      }
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a2);
    if (*a2)
    {
      __break(1u);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_19D740210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FilterEffectGeometry,void>::encode(uint64_t result, uint64_t a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_13;
  }

  v4 = *(a2 + 4);
  *(*result + (v2 & 3)) = *a2;
  v5 = *(result + 8);
  v6 = v5 - v3;
  if (v5 < v3)
  {
    goto LABEL_12;
  }

  v7 = *result + v3;
  *result = v7;
  *(result + 8) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 >= v8)
  {
    *(v7 + (-v7 & 3)) = v4;
    v9 = *(result + 8);
    v10 = v9 - v8;
    if (v9 < v8)
    {
      goto LABEL_12;
    }

    v11 = *result + v8;
    *result = v11;
    *(result + 8) = v10;
    v12 = -v11 & 3 | 4;
    if (v10 < v12)
    {
      goto LABEL_13;
    }

    v13 = *(a2 + 12);
    *(v11 + (-v11 & 3)) = *(a2 + 8);
    v14 = *(result + 8);
    v15 = v14 - v12;
    if (v14 < v12)
    {
      goto LABEL_12;
    }

    v16 = *result + v12;
    *result = v16;
    *(result + 8) = v15;
    v17 = -v16 & 3 | 4;
    if (v15 < v17)
    {
      goto LABEL_13;
    }

    *(v16 + (-v16 & 3)) = v13;
    v18 = *(result + 8);
    v20 = v18 - v17;
    v19 = v18 == v17;
    if (v18 < v17)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v21 = (*result + v17);
    *result = v21;
    *(result + 8) = v20;
    if (!v19)
    {
      *v21 = *(a2 + 16);
      v22 = *(result + 8);
      if (v22)
      {
        ++*result;
        *(result + 8) = v22 - 1;
        return result;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::FilterEffectGeometry::Flags>>(void *a1)
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
  if (v4 < 0x10)
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

IPC::Encoder *IPC::ArgumentCoder<WebCore::SVGFilterExpressionTerm,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::ArgumentCoder<std::optional<WebCore::FilterEffectGeometry>,void>::encode<IPC::Encoder,std::optional<WebCore::FilterEffectGeometry> const&>(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebCore::SVGFilterExpressionTerm,void>::decode(uint64_t result, IPC::Decoder *this)
{
  v3 = result;
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    v11 = v5 + 1;
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v12 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  result = IPC::Decoder::markInvalid(this);
  v12 = 0;
  v4 = *(this + 1);
  v11 = *(this + 2);
  v6 = *this;
LABEL_8:
  v13 = ((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    v15 = v13 + 1;
    *(this + 2) = v13 + 1;
    if (v13)
    {
      v16 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  result = IPC::Decoder::markInvalid(this);
  v16 = 0;
  v4 = *(this + 1);
  v15 = *(this + 2);
  v6 = *this;
LABEL_15:
  if (v4 <= &v15[-v6])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_33;
  }

  *(this + 2) = v15 + 1;
  if (!v15)
  {
LABEL_33:
    IPC::Decoder::markInvalid(this);
    goto LABEL_34;
  }

  v17 = *v15;
  if (v17 >= 2)
  {
LABEL_34:
    IPC::Decoder::markInvalid(this);
LABEL_35:
    result = IPC::Decoder::markInvalid(this);
    v19 = 0;
    LOBYTE(v17) = 0;
    goto LABEL_36;
  }

  if (!*v15)
  {
    v18 = 0;
    v19 = 1;
    goto LABEL_20;
  }

  result = IPC::Decoder::decode<WebCore::FilterEffectGeometry>(&v21, this);
  if (v23 != 1)
  {
    goto LABEL_35;
  }

  LOBYTE(v17) = v21;
  *v24 = *v22;
  *&v24[15] = *&v22[15];
  v19 = 1;
LABEL_36:
  v18 = 1;
LABEL_20:
  if (!*this)
  {
LABEL_27:
    v20 = 0;
    *v3 = 0;
    goto LABEL_25;
  }

  if ((v12 & 0x100000000) == 0 || (v16 & 0x100000000) == 0 || (v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v3 + 8) = v17;
  *(v3 + 9) = *v24;
  *(v3 + 24) = *&v24[15];
  *(v3 + 28) = v18;
  *v3 = v12;
  *(v3 + 4) = v16;
  v20 = 1;
LABEL_25:
  *(v3 + 32) = v20;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GamepadEffectParameters,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, a2[4]);
  v4 = a2[5];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::GamepadEffectParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = IPC::Decoder::decode<unsigned long long>(a1);
  v5 = v4;
  v20 = IPC::Decoder::decode<unsigned long long>(a1);
  v7 = v6;
  v8 = IPC::Decoder::decode<unsigned long long>(a1);
  v10 = v9;
  v11 = IPC::Decoder::decode<unsigned long long>(a1);
  v13 = v12;
  v14 = IPC::Decoder::decode<unsigned long long>(a1);
  v16 = v15;
  result = IPC::Decoder::decode<unsigned long long>(a1);
  v19 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0 || (v7 & 1) == 0 || (v10 & 1) == 0 || (v13 & 1) == 0 || (v16 & 1) == 0 || (v18 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    *a2 = 0;
    goto LABEL_9;
  }

  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  LOBYTE(v19) = 1;
  *(a2 + 32) = v14;
  *(a2 + 40) = result;
LABEL_9:
  *(a2 + 48) = v19;
  return result;
}

void *IPC::ArgumentCoder<WebCore::StorageEstimate,void>::decode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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
    goto LABEL_23;
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
LABEL_22:
      v4 = 0;
      goto LABEL_23;
    }

    if (!v2)
    {
      goto LABEL_22;
    }

    (*(*v17 + 16))(v17);
    v4 = *v27;
    v2 = v27[1];
LABEL_23:
    *v27 = 0;
    v27[1] = 0;
    v18 = v27[3];
    if (!v18)
    {
      v11 = 0;
      v2 = 0;
LABEL_25:
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
      goto LABEL_25;
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
      break;
    }

    result[2] = v12 + 1;
    if (!v12)
    {
      goto LABEL_30;
    }

    v14 = *v12;
    v15 = 1;
    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (v10 & 1) != 0 && (v15)
    {
      *a2 = v9;
      *(a2 + 8) = v14;
      v16 = 1;
      goto LABEL_18;
    }

    __break(1u);
  }

  v22 = v10;
  v20 = v9;
  v25 = a2;
  *result = 0;
  result[1] = 0;
  v28 = result;
  v19 = result[3];
  if (!v19)
  {
    v2 = 0;
    goto LABEL_28;
  }

  if (v2)
  {
    (*(*v19 + 16))(v19, v11);
    result = v28;
    v11 = *v28;
    v2 = v28[1];
    a2 = v25;
  }

  else
  {
LABEL_28:
    v11 = 0;
    result = v28;
  }

  v9 = v20;
  v10 = v22;
LABEL_30:
  *result = 0;
  result[1] = 0;
  v29 = result;
  result = result[3];
  if (result)
  {
    if (v2)
    {
      v26 = a2;
      v21 = v9;
      v23 = v10;
      result = (*(*result + 16))(result, v11);
      v10 = v23;
      v9 = v21;
      a2 = v26;
      v15 = 0;
      v14 = 0;
      if (*v29)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_31:
  v16 = 0;
  *a2 = 0;
LABEL_18:
  *(a2 + 16) = v16;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RunJavaScriptParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  v5 = *(a2 + 56);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 64);
  v6 = *(a2 + 88);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v7 = *(a2 + 89);
  return IPC::Encoder::operator<<<BOOL>(a1, &v7);
}

void IPC::ArgumentCoder<WebKit::RunJavaScriptParameters,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v28);
  PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a1);
  IPC::Decoder::decode<WTF::URL>(a1, &v24);
  v5 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v22, a1);
  v6 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a1);
  v7 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a1);
  if (*a1)
  {
    if ((v29 & 1) == 0 || (v9 = v28, v28 = 0, v15 = v9, PartyWebsiteDataRemoval <= 0xFFu) || (v16 = PartyWebsiteDataRemoval, (v27 & 1) == 0) || (v10 = v24, v24 = 0, v17 = v10, v18 = v25, v19 = v26, LODWORD(v25) = v25 & 0xFFFFFFFE, v5 <= 0xFFu) || (v20 = v5, (v23 & 1) == 0) || (v11 = v7, std::__optional_move_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v21, v22), v6 <= 0xFFu) || (v21[24] = v6, v11 <= 0xFFu))
    {
      __break(1u);
      return;
    }

    v21[25] = v11;
    _ZNSt3__127__optional_copy_assign_baseIN6WebKit23RunJavaScriptParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a2, &v15);
    WebKit::RunJavaScriptParameters::~RunJavaScriptParameters(&v15, v12);
  }

  else
  {
    *a2 = 0;
    a2[96] = 0;
  }

  if (v23 == 1 && v22[16] == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v8);
  }

  if (v27 == 1)
  {
    v13 = v24;
    v24 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }
    }
  }

  if (v29 == 1)
  {
    v14 = v28;
    v28 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v8);
      }
    }
  }
}

void sub_19D740CC8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  WebKit::RunJavaScriptParameters::~RunJavaScriptParameters(&a9, a2);
  if (a25 == 1 && a23 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v35);
  }

  if (a33 == 1)
  {
    v36 = a28;
    a28 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v35);
      }
    }
  }

  if (*(v33 - 72) == 1)
  {
    v37 = *(v33 - 80);
    *(v33 - 80) = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v35);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D740E04(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1 && *(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RunJavaScriptParameters::~RunJavaScriptParameters(WebKit::RunJavaScriptParameters *this, void *a2)
{
  if (*(this + 80) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

uint64_t IPC::ArgumentCoder<WebCore::TextList,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 20));
}

uint64_t IPC::ArgumentCoder<WebCore::FontAttributes,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,void>::encode<IPC::Encoder,WebCore::Font>(a1, a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::FontShadow,void>::encode(a1, a2 + 24);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));
  IPC::VectorArgumentCoder<false,WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 56);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 72));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 73));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 74));
}

void IPC::ArgumentCoder<WebCore::FontAttributes,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v62 = *(a1 + 3);
    if (v62)
    {
      if (v4)
      {
        (*(*v62 + 16))(v62);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_121;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_121:
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63)
    {
      if (v4)
      {
        (*(*v63 + 16))(v63);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_124;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_124:
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64 && v4)
    {
      (*(*v64 + 16))(v64, v6);
    }

    goto LABEL_125;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_124;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_8;
  }

  IPC::ArgumentCoder<WebCore::Font,void>::decode(&v89, a1);
  if (v90 == 1)
  {
    v8 = v89;
    v89 = 0;
    WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v89);
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

LABEL_125:
  v65 = *a1;
  v66 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v67 = *(a1 + 3);
  if (v67 && v66)
  {
    (*(*v67 + 16))(v67, v65);
  }

  v9 = 0;
  v8 = 0;
LABEL_9:
  v88 = v9;
  IPC::Decoder::decode<WebCore::Color>(a1, &v107);
  IPC::Decoder::decode<WebCore::Color>(a1, &v105);
  IPC::Decoder::decode<WebCore::FontShadow>(&v102, a1);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *a1;
  if (v11 <= &v12[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v68 = *(a1 + 3);
    if (v68)
    {
      if (v11)
      {
        (*(*v68 + 16))(v68);
        v11 = *(a1 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_131:
    *a1 = 0;
    *(a1 + 1) = 0;
    v69 = *(a1 + 3);
    if (v69)
    {
      if (v11)
      {
        (*(*v69 + 16))(v69);
        v13 = *a1;
        v11 = *(a1 + 1);
        goto LABEL_134;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    goto LABEL_134;
  }

  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_131;
  }

  v14 = *v12;
  if (v14 < 3)
  {
    v87 = v14 | 0x100;
    goto LABEL_13;
  }

LABEL_134:
  *a1 = 0;
  *(a1 + 1) = 0;
  v70 = *(a1 + 3);
  if (!v70)
  {
    v13 = 0;
    v87 = 0;
    v11 = 0;
    goto LABEL_136;
  }

  if (!v11)
  {
    v13 = 0;
    v87 = 0;
LABEL_136:
    *a1 = 0;
    *(a1 + 1) = 0;
    v71 = *(a1 + 3);
    if (v71)
    {
      if (v11)
      {
        (*(*v71 + 16))(v71, v13);
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    goto LABEL_138;
  }

  (*(*v70 + 16))(v70, v13);
  v87 = 0;
  v13 = *a1;
  v11 = *(a1 + 1);
LABEL_13:
  v15 = *(a1 + 2);
  if (v11 <= v15 - v13)
  {
    goto LABEL_136;
  }

  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_138:
    *a1 = 0;
    *(a1 + 1) = 0;
    v72 = *(a1 + 3);
    if (v72)
    {
      if (v11)
      {
        (*(*v72 + 16))(v72, v13);
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    goto LABEL_140;
  }

  v16 = *v15;
  if (v16 < 5)
  {
    v17 = v16 | 0x100;
    goto LABEL_17;
  }

LABEL_140:
  *a1 = 0;
  *(a1 + 1) = 0;
  v73 = *(a1 + 3);
  if (v73)
  {
    if (v11)
    {
      (*(*v73 + 16))(v73, v13);
      v17 = 0;
      v13 = *a1;
      v11 = *(a1 + 1);
    }

    else
    {
      v13 = 0;
      v17 = 0;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v17 = 0;
  }

LABEL_17:
  v18 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v11 < v18 - v13 || v11 - (v18 - v13) <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60)
    {
      if (v11)
      {
        (*(*v60 + 16))(v60);
        v13 = *a1;
        v11 = *(a1 + 1);
LABEL_116:
        *a1 = 0;
        *(a1 + 1) = 0;
        v61 = *(a1 + 3);
        if (v61 && v11)
        {
          (*(*v61 + 16))(v61, v13);
        }

        LOBYTE(v99) = 0;
        v101 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    goto LABEL_116;
  }

  *(a1 + 2) = v18 + 8;
  if (!v18)
  {
    goto LABEL_116;
  }

  v19 = *v18;
  v109 = 0;
  v110 = 0;
  if (v19 >= 0xAAAA)
  {
    v29 = v101;
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextList>(&v89, a1);
      v31 = v92;
      if (v92)
      {
        if (HIDWORD(v110) == v110)
        {
          WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextList>(&v109, &v89);
        }

        else
        {
          v32 = v109 + 24 * HIDWORD(v110);
          *v32 = v89;
          v33 = v90;
          v90 = 0;
          *(v32 + 8) = v33;
          LODWORD(v33) = v91;
          *(v32 + 20) = BYTE4(v91);
          *(v32 + 16) = v33;
          ++HIDWORD(v110);
        }
      }

      else
      {
        v29 = 0;
      }

      if (v92 == 1)
      {
        v34 = v90;
        v90 = 0;
        if (v34)
        {
          if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v30);
          }
        }
      }

      if ((v31 & 1) == 0)
      {
        break;
      }

      if (!--v19)
      {
        WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v109, HIDWORD(v110));
        goto LABEL_52;
      }
    }

    LOBYTE(v99) = 0;
    v101 = v29;
    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v30);
    if (v29)
    {
      goto LABEL_53;
    }

LABEL_36:
    v26 = *a1;
    v27 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28 && v27)
    {
      (*(*v28 + 16))(v28, v26);
    }

    goto LABEL_53;
  }

  if (!v19)
  {
LABEL_52:
    v99 = v109;
    v35 = v110;
    v109 = 0;
    v110 = 0;
    v100 = v35;
    v101 = 1;
    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v13);
    v9 = v88;
    goto LABEL_53;
  }

  v20 = WTF::fastMalloc((24 * v19));
  LODWORD(v110) = 24 * v19 / 0x18u;
  v109 = v20;
  v21 = v101;
  while (1)
  {
    IPC::Decoder::decode<WebCore::TextList>(&v89, a1);
    v22 = v92;
    if (v92)
    {
      if (HIDWORD(v110) == v110)
      {
        WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextList>(&v109, &v89);
      }

      else
      {
        v23 = v109 + 24 * HIDWORD(v110);
        *v23 = v89;
        v24 = v90;
        v90 = 0;
        *(v23 + 8) = v24;
        LODWORD(v24) = v91;
        *(v23 + 20) = BYTE4(v91);
        *(v23 + 16) = v24;
        ++HIDWORD(v110);
      }
    }

    else
    {
      v21 = 0;
    }

    if (v92 == 1)
    {
      v25 = v90;
      v90 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_32:
    if (!--v19)
    {
      goto LABEL_52;
    }
  }

  WTF::StringImpl::destroy(v25, v13);
  if (v22)
  {
    goto LABEL_32;
  }

LABEL_35:
  LOBYTE(v99) = 0;
  v101 = v21;
  WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v13);
  v9 = v88;
  if ((v21 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_53:
  v36 = *(a1 + 1);
  v37 = *(a1 + 2);
  v38 = *a1;
  if (v36 <= &v37[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v74 = *(a1 + 3);
    if (v74)
    {
      if (v36)
      {
        (*(*v74 + 16))(v74);
        v36 = *(a1 + 1);
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v39 = v37 + 1;
    *(a1 + 2) = v37 + 1;
    if (v37)
    {
      v40 = *v37;
      if (v40 < 2)
      {
        v41 = 1;
        goto LABEL_57;
      }

      goto LABEL_155;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v75 = *(a1 + 3);
  if (v75)
  {
    if (v36)
    {
      (*(*v75 + 16))(v75);
      v40 = 0;
      v38 = *a1;
      v36 = *(a1 + 1);
      goto LABEL_155;
    }
  }

  else
  {
    v36 = 0;
  }

  v38 = 0;
  v40 = 0;
LABEL_155:
  *a1 = 0;
  *(a1 + 1) = 0;
  v76 = *(a1 + 3);
  if (!v76 || !v36)
  {
    v86 = 0;
    v41 = 0;
    v77 = 0;
    v38 = 0;
LABEL_157:
    *a1 = 0;
    *(a1 + 1) = 0;
    v78 = *(a1 + 3);
    if (v78 && v77)
    {
      (*(*v78 + 16))(v78, v38, v77);
      v44 = 0;
      v38 = *a1;
      v36 = *(a1 + 1);
    }

    else
    {
      v36 = 0;
      v38 = 0;
      v44 = 0;
    }

    goto LABEL_160;
  }

  (*(*v76 + 16))(v76, v38);
  v41 = 0;
  v38 = *a1;
  v36 = *(a1 + 1);
  v39 = *(a1 + 2);
  v9 = v88;
LABEL_57:
  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (v36 <= v39 - v38)
  {
    v86 = v42;
    v77 = 0;
    v83 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v83 && v36)
    {
      (*(*v83 + 16))(v83);
      v38 = *a1;
      v77 = *(a1 + 1);
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_157;
  }

  v43 = v39 + 1;
  *(a1 + 2) = v39 + 1;
  if (!v39)
  {
    v86 = v42;
    v77 = v36;
    goto LABEL_157;
  }

  v44 = *v39;
  if (v44 < 2)
  {
    v45 = 1;
    goto LABEL_64;
  }

  v86 = v42;
LABEL_160:
  *a1 = 0;
  *(a1 + 1) = 0;
  v79 = *(a1 + 3);
  if (!v79 || !v36)
  {
    v85 = 0;
    v45 = 0;
    v80 = 0;
    v38 = 0;
LABEL_162:
    *a1 = 0;
    *(a1 + 1) = 0;
    v81 = *(a1 + 3);
    if (v81 && v80)
    {
      (*(*v81 + 16))(v81, v38, v80);
      v47 = 0;
      v38 = *a1;
      v36 = *(a1 + 1);
    }

    else
    {
      v36 = 0;
      v38 = 0;
      v47 = 0;
    }

    goto LABEL_165;
  }

  (*(*v79 + 16))(v79, v38);
  v45 = 0;
  v38 = *a1;
  v36 = *(a1 + 1);
  v43 = *(a1 + 2);
  v42 = v86;
  v9 = v88;
LABEL_64:
  if (v44)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v36 <= v43 - v38)
  {
    v85 = v46;
    v86 = v42;
    v80 = 0;
    v84 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v84 && v36)
    {
      (*(*v84 + 16))(v84);
      v38 = *a1;
      v80 = *(a1 + 1);
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_162;
  }

  *(a1 + 2) = v43 + 1;
  if (!v43)
  {
    v85 = v46;
    v86 = v42;
    v80 = v36;
    goto LABEL_162;
  }

  v47 = *v43;
  if (v47 < 2)
  {
    v48 = 1;
    goto LABEL_71;
  }

  v85 = v46;
  v86 = v42;
LABEL_165:
  *a1 = 0;
  *(a1 + 1) = 0;
  v82 = *(a1 + 3);
  v9 = v88;
  if (!v82 || !v36)
  {
    goto LABEL_166;
  }

  (*(*v82 + 16))(v82, v38);
  v48 = 0;
  v38 = *a1;
  v46 = v85;
  v42 = v86;
  v9 = v88;
LABEL_71:
  v49 = v47 ? v48 : 0;
  if (!v38)
  {
LABEL_166:
    *a2 = 0;
    *(a2 + 80) = 0;
    goto LABEL_88;
  }

  if ((v9 & 1) == 0 || (v108 & 1) == 0 || (v50 = v107, v107 = 0, v90 = v50, (v106 & 1) == 0) || (v51 = v105, v105 = 0, v91 = v51, (v104 & 1) == 0) || (v52 = v102, v102 = 0, v92 = v52, v10 = v103, v93 = v103, v87 <= 0xFF) || (LOBYTE(v94) = v87, v17 <= 0xFF) || (HIBYTE(v94) = v17, (v101 & 1) == 0) || (v53 = v99, v10.n128_u64[0] = v100, v99 = 0, v100 = 0, (v41 & 1) == 0) || (LOBYTE(v97) = v42, (v45 & 1) == 0) || (HIBYTE(v97) = v46, (v48 & 1) == 0))
  {
    __break(1u);
    goto LABEL_104;
  }

  v98 = v49;
  v89 = 0;
  *a2 = v8;
  *(a2 + 8) = 0;
  if (&v89 == a2)
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    *(a2 + 8) = v50;
    *(a2 + 16) = v51;
    v92 = 0;
    *(a2 + 24) = v52;
  }

  *(a2 + 32) = v103;
  *(a2 + 48) = v94;
  v95 = 0;
  v96 = 0;
  *(a2 + 56) = v53;
  *(a2 + 64) = v10.n128_u64[0];
  *(a2 + 72) = v97;
  *(a2 + 74) = v98;
  *(a2 + 80) = 1;
  WebCore::FontAttributes::~FontAttributes(&v89, v38);
  v8 = 0;
LABEL_88:
  if (v101 == 1)
  {
    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v38);
  }

  if (v104 == 1 && (v102 & 0x8000000000000) != 0)
  {
    v59 = (v102 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v102 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v59);
      WTF::fastFree(v59, v38);
    }
  }

  if (v106 == 1 && (v105 & 0x8000000000000) != 0)
  {
    v57 = (v105 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v105 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v57);
      WTF::fastFree(v57, v38);
    }
  }

  if (v108 == 1 && (v107 & 0x8000000000000) != 0)
  {
    v58 = (v107 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v107 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v58);
      WTF::fastFree(v58, v38);
    }
  }

  if (v8)
  {
    v54 = v9;
  }

  else
  {
    v54 = 0;
  }

  if (v54 == 1)
  {
    if (*v8 != 1)
    {
      --*v8;
      return;
    }

LABEL_104:
    v55 = MEMORY[0x19EB0DCB0](v8, v10);
    WTF::fastFree(v55, v56);
  }
}

void sub_19D741C64(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a24 == 1)
  {
    WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a22, a2);
  }

  if (a28 == 1 && (a25 & 0x8000000000000) != 0)
  {
    v38 = (a25 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a25 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v38);
      WTF::fastFree(v38, a2);
    }
  }

  if (*(v29 - 128) == 1)
  {
    v31 = *(v29 - 136);
    if ((v31 & 0x8000000000000) != 0)
    {
      v37 = (v31 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v31 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v37);
        WTF::fastFree(v37, a2);
      }
    }
  }

  if (*(v29 - 112) == 1)
  {
    v32 = *(v29 - 120);
    if ((v32 & 0x8000000000000) != 0)
    {
      v36 = (v32 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v36);
        WTF::fastFree(v36, a2);
      }
    }
  }

  if (!v28)
  {
    a11 = 0;
  }

  if (a11 == 1)
  {
    if (*v28 == 1)
    {
      v34 = MEMORY[0x19EB0DCB0](v28);
      WTF::fastFree(v34, v35);
    }

    else
    {
      --*v28;
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *IPC::Decoder::decode<WebCore::FontShadow>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::Color>(a2, &v11);
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v6 = v5;
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v12 & 1) != 0 && (v6 & 1) != 0 && (v8)
    {
      *a1 = v11;
      *(a1 + 8) = v4;
      *(a1 + 16) = result;
      *(a1 + 24) = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if ((v12 & 1) != 0 && (v11 & 0x8000000000000) != 0)
  {
    result = (v11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v8);
    }
  }

LABEL_6:
  if ((*(a1 + 24) & 1) == 0)
  {
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        v10 = *(*result + 16);

        return v10();
      }
    }
  }

  return result;
}

void sub_19D741F08(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1 && (a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

uint64_t IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 8, v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 58));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 59));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 60));
  IPC::ArgumentCoder<std::optional<WebCore::ResourceRequestRequester>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceRequestRequester> const&>(a1, (a2 + 61));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 63));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v28);
  if ((v29 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }

  IPC::Decoder::decode<WTF::String>(a2, &v26);
  IPC::Decoder::decode<WTF::String>(a2, &v24);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *a2;
  v22 = a1;
  if (v4 <= &v5[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_53;
  }

  v7 = v5 + 1;
  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_53:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_54;
  }

  if (*v5 < 2u)
  {
    v8 = 1;
    goto LABEL_7;
  }

LABEL_54:
  IPC::Decoder::markInvalid(a2);
  v8 = 0;
  v4 = *(a2 + 1);
  v7 = *(a2 + 2);
  v6 = *a2;
LABEL_7:
  if (v4 <= &v7[-v6])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_56;
  }

  v9 = v7 + 1;
  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_56:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_57;
  }

  if (*v7 < 2u)
  {
    v10 = 1;
    goto LABEL_11;
  }

LABEL_57:
  IPC::Decoder::markInvalid(a2);
  v10 = 0;
  v4 = *(a2 + 1);
  v9 = *(a2 + 2);
  v6 = *a2;
LABEL_11:
  if (v4 <= &v9[-v6])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_59;
  }

  v11 = v9 + 1;
  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_59:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_60;
  }

  if (*v9 < 2u)
  {
    v12 = 1;
    goto LABEL_15;
  }

LABEL_60:
  IPC::Decoder::markInvalid(a2);
  v12 = 0;
  v4 = *(a2 + 1);
  v11 = *(a2 + 2);
  v6 = *a2;
LABEL_15:
  if (v4 <= &v11[-v6])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_62;
  }

  v13 = v11 + 1;
  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_62:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_63;
  }

  if (*v11 < 2u)
  {
    v14 = 1;
    goto LABEL_19;
  }

LABEL_63:
  IPC::Decoder::markInvalid(a2);
  v14 = 0;
  v4 = *(a2 + 1);
  v13 = *(a2 + 2);
  v6 = *a2;
LABEL_19:
  if (v4 <= &v13[-v6])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_65;
  }

  *(a2 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_65:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_66;
  }

  if (*v13 < 2u)
  {
    v15 = 1;
    goto LABEL_23;
  }

LABEL_66:
  IPC::Decoder::markInvalid(a2);
  v15 = 0;
LABEL_23:
  result = IPC::Decoder::decode<std::optional<BOOL>>(a2);
  v18 = result;
  v19 = *(a2 + 2);
  v20 = *a2;
  if (*(a2 + 1) <= &v19[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_68;
  }

  *(a2 + 2) = v19 + 1;
  if (!v19)
  {
LABEL_68:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_69;
  }

  if (*v19 < 2u)
  {
    v21 = 1;
    goto LABEL_27;
  }

LABEL_69:
  result = IPC::Decoder::markInvalid(a2);
  v21 = 0;
  v20 = *a2;
LABEL_27:
  if (!v20)
  {
LABEL_51:
    *v22 = 0;
    v22[8] = 0;
    goto LABEL_39;
  }

  if ((v29 & 1) == 0 || (v27 & 1) == 0 || (v25 & 1) == 0 || (v8 & 1) == 0 || (v10 & 1) == 0 || (v12 & 1) == 0 || (v14 & 1) == 0 || (v15 & 1) == 0 || (v18 & 0x10000) == 0 || (v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  result = WebCore::SecurityOrigin::create();
  *v22 = v23;
  v22[8] = 1;
LABEL_39:
  if (v25 == 1)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v27 == 1)
  {
    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v29 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v28);
  }

  return result;
}

void sub_19D742464(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a26 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::SameSiteInfo>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::decode(a1);
  if ((result & 0x1000000) == 0)
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

uint64_t IPC::ArgumentCoder<WebCore::FormData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  v5 = *(a2 + 24);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 40), *(a2 + 52));
}

WTF *IPC::ArgumentCoder<WebCore::FormData,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v13, a2);
  IPC::Decoder::decode<long long>(a2);
  v5 = v4;
  v6 = IPC::Decoder::decode<BOOL>(a2);
  result = IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v10);
  if (*a2)
  {
    if ((v14 & 1) == 0 || (v5 & 1) == 0 || (v6 & 0x100) == 0 || (v12 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    result = WebCore::FormData::create();
    *a1 = v9;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v12 == 1)
  {
    result = v10;
    if (v10)
    {
      v10 = 0;
      v11 = 0;
      result = WTF::fastFree(result, v8);
    }
  }

  if (v14 == 1)
  {
    return WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
  }

  return result;
}

void sub_19D7426E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12, int a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a14 == 1 && a11)
  {
    WTF::fastFree(a11, a2);
  }

  if (a20 == 1)
  {
    WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a16, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D742770(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::RequestedScrollData,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v6 = a2[12];
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize> const&>(a1, (a2 + 4), v6);
  v7 = a2[16];
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v8 = a2[17];
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v9 = a2[18];
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  if (a2[40])
  {
    v10 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v10);
    if (a2[40])
    {
      return IPC::ArgumentCoder<std::tuple<WebCore::ScrollRequestType,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,WebCore::ScrollType,WebCore::ScrollClamping>,void>::encode<IPC::Encoder,std::tuple<WebCore::ScrollRequestType,mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>,WebCore::ScrollType,WebCore::ScrollClamping> const&,0ul,1ul,2ul,3ul>(a1, a2 + 20);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>>(v5);
    }
  }

  else
  {
    v11 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v11);
  }
}

uint64_t IPC::Decoder::decode<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      if (v2)
      {
        (*(*v12 + 16))(v12);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_16;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_16:
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v2)
    {
      (*(*v13 + 16))(v13);
    }

    goto LABEL_4;
  }

  if (*v3 <= 1u)
  {
    if (*v3)
    {
      v8 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
      if (v9)
      {
        return v8;
      }
    }

    else
    {
      v8 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
      if (v11)
      {
        return v8;
      }
    }

    v4 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v4 = 0;
LABEL_5:
  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v7 = *(a1 + 3);
  if (v7 && v6)
  {
    (*(*v7 + 16))(v7, v5);
  }

  return v4;
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::VectorArgumentCoder<false,WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  IPC::VectorArgumentCoder<false,WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 40);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  v5 = *(a2 + 68);
  if (v5)
  {
    v6 = *(a2 + 56);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v24 = a2[3];
    if (v24)
    {
      if (v6)
      {
        (*(*v24 + 16))(v24);
        v5 = *a2;
        v6 = a2[1];
LABEL_49:
        *a2 = 0;
        a2[1] = 0;
        v25 = a2[3];
        if (v25 && v6)
        {
          (*(*v25 + 16))(v25, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_51:
        v26 = *a2;
        v27 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v27)
          {
            return (*(*result + 16))(result, v26);
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
    goto LABEL_49;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_49;
  }

  v8 = *v4;
  v35 = 0;
  v36 = 0;
  if (v8 >= 0x6666)
  {
    do
    {
      IPC::Decoder::decode<WebCore::SnapOffset<float>>(&v29, a2);
      v14 = v34;
      if (v34)
      {
        if (HIDWORD(v36) == v36)
        {
          WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SnapOffset<float>>(&v35, &v29);
        }

        else
        {
          v15 = v35 + 40 * HIDWORD(v36);
          v16 = v29;
          *(v15 + 16) = v30;
          *v15 = v16;
          *(v15 + 24) = 0;
          *(v15 + 32) = 0;
          v17 = v31;
          v31 = 0;
          *(v15 + 24) = v17;
          *(v15 + 32) = v32;
          LODWORD(v17) = v33;
          v33 = 0;
          *(v15 + 36) = v17;
          ++HIDWORD(v36);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v34 == 1 && (v18 = v31) != 0)
      {
        v31 = 0;
        v32 = 0;
        WTF::fastFree(v18, v5);
        if ((v14 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_44;
      }

      --v8;
    }

    while (v8);
    v19 = HIDWORD(v36);
    if (v36 > HIDWORD(v36))
    {
      result = v35;
      if (HIDWORD(v36))
      {
        v28 = v35;
        if (HIDWORD(v36) >= 0x6666667)
        {
          __break(0xC471u);
          return result;
        }

        v21 = 40 * HIDWORD(v36);
        v22 = WTF::fastMalloc((40 * HIDWORD(v36)));
        result = v28;
        LODWORD(v36) = v21 / 0x28;
        v35 = v22;
        if (v22 != v28)
        {
          WTF::VectorMover<false,WebCore::SnapOffset<float>>::move(v28, (v28 + 40 * v19), v22);
          result = v28;
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
    }
  }

  else if (v8)
  {
    LODWORD(v36) = 40 * v8 / 0x28u;
    v35 = WTF::fastMalloc((40 * v8));
    do
    {
      IPC::Decoder::decode<WebCore::SnapOffset<float>>(&v29, a2);
      v9 = v34;
      if (v34)
      {
        if (HIDWORD(v36) == v36)
        {
          WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SnapOffset<float>>(&v35, &v29);
        }

        else
        {
          v10 = v35 + 40 * HIDWORD(v36);
          v11 = v29;
          *(v10 + 16) = v30;
          *v10 = v11;
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          v12 = v31;
          v31 = 0;
          *(v10 + 24) = v12;
          *(v10 + 32) = v32;
          LODWORD(v12) = v33;
          v33 = 0;
          *(v10 + 36) = v12;
          ++HIDWORD(v36);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v34 == 1 && (v13 = v31) != 0)
      {
        v31 = 0;
        v32 = 0;
        WTF::fastFree(v13, v5);
        if ((v9 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v9 & 1) == 0)
      {
        goto LABEL_44;
      }

      --v8;
    }

    while (v8);
  }

  *a1 = v35;
  v23 = v36;
  v35 = 0;
  v36 = 0;
  *(a1 + 8) = v23;
  *(a1 + 16) = 1;
LABEL_44:
  result = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_51;
  }

  return result;
}

void sub_19D742DF4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, int a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 16) == 1)
  {
    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::SnapOffset<float>,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 4);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 5));
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  return IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 24), *(a2 + 36));
}

unint64_t IPC::Decoder::decode<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<true,unsigned long long,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D742F0C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::CDMMediaCapability,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));

  return IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, (a2 + 16));
}

uint64_t IPC::ArgumentCoder<WebCore::MediaSelectionOption,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaSelectionOption,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::MediaSelectionOption::MediaType>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v8);
  result = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v4 & 0x100) == 0 || (LOBYTE(v7) = v9, (v9 & 1) == 0) || (result & 0x100) == 0)
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    goto LABEL_8;
  }

  v7 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  LOBYTE(v7) = 1;
  *(a2 + 16) = result;
LABEL_8:
  *(a2 + 24) = v7;
  if (v9 == 1)
  {
    result = v8;
    v8 = 0;
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

void sub_19D74309C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::MediaSelectionOption::MediaType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::MediaSelectionOption::MediaType,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(mpark *a1, uint64_t a2)
{
  if (*(a2 + 8) == 255)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3)
    {
      v4 = JSC::ArrayBuffer::span(*a2);
      v6 = v5;
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v4 = JSC::ArrayBufferView::baseAddress(*a2);
    v6 = JSC::ArrayBufferView::byteLength(v3);
    goto LABEL_8;
  }

  v4 = 0;
  v6 = 0;
LABEL_8:

  return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v4, v6);
}

uint64_t IPC::ArgumentCoder<WebCore::FontShadow,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

mpark *IPC::ArgumentCoder<WebCore::CompositionHighlight,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::encode<IPC::Encoder,std::optional<WebCore::Color> const&>(a1, (a2 + 2));

  return IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::encode<IPC::Encoder,std::optional<WebCore::Color> const&>(a1, (a2 + 6));
}

unsigned int *IPC::ArgumentCoder<WebCore::CompositionHighlight,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
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
  v24 = *(a1 + 3);
  if (!v24)
  {
    v12 = 0;
    v4 = 0;
LABEL_53:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_53;
  }

  (*(*v24 + 16))(v24);
  v11 = 0;
  v12 = *a1;
  v4 = *(a1 + 1);
  v6 = *a1;
LABEL_8:
  v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a1 + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (!v25)
    {
      v4 = 0;
LABEL_56:
      v12 = 0;
      goto LABEL_57;
    }

    if (!v4)
    {
      goto LABEL_56;
    }

    (*(*v25 + 16))(v25, v12);
    v12 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_57:
  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (v26 && v4)
  {
    (*(*v26 + 16))(v26, v12);
  }

  v15 = 0;
LABEL_15:
  IPC::Decoder::decode<std::optional<WebCore::Color>>(&v30, a1);
  result = IPC::Decoder::decode<std::optional<WebCore::Color>>(&v27, a1);
  if (!*a1)
  {
LABEL_42:
    *a2 = 0;
    a2[40] = 0;
    goto LABEL_34;
  }

  if ((v11 & 0x100000000) == 0 || (v15 & 0x100000000) == 0 || (v32 & 1) == 0 || (v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v18 = v31;
  if (v31 == 1)
  {
    v19 = v30;
    if ((v30 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v11 | (v15 << 32);
  v21 = v28;
  if (v28 == 1)
  {
    v22 = v27;
    if ((v27 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  else
  {
    v22 = 0;
  }

  *a2 = v20;
  a2[8] = 0;
  a2[16] = 0;
  if (v18)
  {
    *(a2 + 1) = v19;
    a2[16] = 1;
    v19 = 0;
  }

  a2[24] = 0;
  a2[32] = 0;
  if (v21)
  {
    *(a2 + 3) = v22;
    a2[32] = 1;
  }

  a2[40] = 1;
  if ((v19 & 0x8000000000000) != 0)
  {
    if (v18)
    {
      result = (v19 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v17);
      }
    }
  }

LABEL_34:
  if (v29 == 1 && v28 == 1 && (v27 & 0x8000000000000) != 0)
  {
    result = (v27 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v17);
    }
  }

  if (v32 == 1 && v31 == 1 && (v30 & 0x8000000000000) != 0)
  {
    result = (v30 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v17);
    }
  }

  return result;
}

void sub_19D7435E8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a15 & 1) != 0 && a13 == 1 && (a12 & 0x8000000000000) != 0)
  {
    v18 = (a12 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WebCore::Color>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::Color>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t std::optional<std::optional<WebCore::Color>>::~optional(uint64_t result, void *a2)
{
  if (*(result + 16) == 1 && *(result + 8) == 1 && (*result & 0x8000000000000) != 0)
  {
    v2 = (*result & 0xFFFFFFFFFFFFLL);
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(1u, v2);
      v4 = result;
      WTF::fastFree(v2, a2);
      return v4;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FontChanges,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 32);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 48));

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 50));
}

uint64_t IPC::ArgumentCoder<WebCore::FontChanges,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v21);
  IPC::Decoder::decode<WTF::String>(a1, &v19);
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, v17);
  if ((v18 & 1) == 0)
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }
  }

  result = IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, v15);
  if ((v16 & 1) == 0)
  {
    v5 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v10)
      {
        result = (*(*result + 16))(result, v5);
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (v17[8] == 1)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v15[8] == 1)
    {
LABEL_8:
      *a2 = 0;
      *(a2 + 56) = 0;
      goto LABEL_17;
    }
  }

  v6 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v22 & 1) == 0 || (v20 & 1) == 0 || (v18 & 1) == 0 || (v16 & 1) == 0 || (v6 & 0x10000) == 0 || (result & 0x10000) == 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  result = WebCore::FontChanges::FontChanges();
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = 1;
LABEL_17:
  if (v20 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
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
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D743980(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 56) == 1)
  {
    v4 = *(v2 - 64);
    *(v2 - 64) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 40) == 1)
  {
    v5 = *(v2 - 48);
    *(v2 - 48) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::FontAttributeChanges,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
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

LABEL_20:
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
LABEL_23:
        *a1 = 0;
        *(a1 + 1) = 0;
        v17 = *(a1 + 3);
        if (v17 && v4)
        {
          (*(*v17 + 16))(v17, v6);
        }

        v10 = 0;
        goto LABEL_90;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_23;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_20;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_23;
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

      goto LABEL_88;
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

LABEL_88:
  *a1 = 0;
  *(a1 + 1) = 0;
  v44 = *(a1 + 3);
  if (v44 && v4)
  {
    (*(*v44 + 16))(v44, v6);
  }

  v10 = 256;
LABEL_90:
  v45 = *a1;
  v46 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (v47)
  {
    v48 = v10;
    if (v46)
    {
      (*(*v47 + 16))(v47, v45);
    }

    LOWORD(v8) = 0;
    v9 = 0;
    v10 = v48;
  }

  else
  {
    LOWORD(v8) = 0;
    v9 = 0;
  }

LABEL_10:
  v79 = BYTE2(v9);
  v78 = v8 | v10 | v9;
  IPC::Decoder::decode<std::optional<WebCore::Color>>(&v75, a1);
  IPC::Decoder::decode<std::optional<WebCore::Color>>(&v72, a1);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *a1;
  if (v11 <= &v12[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v11)
      {
        (*(*v18 + 16))(v18);
        v11 = *(a1 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_27;
  }

  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
LABEL_27:
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v11)
      {
        (*(*v19 + 16))(v19);
        v13 = *a1;
        v11 = *(a1 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v11)
    {
      (*(*v20 + 16))(v20, v13);
    }

    goto LABEL_31;
  }

  v14 = *v12;
  if (v14 >= 2)
  {
    goto LABEL_30;
  }

  if (!v14)
  {
    LOBYTE(v68) = 0;
    v70 = 0;
    goto LABEL_17;
  }

  IPC::Decoder::decode<WebCore::FontShadow>(&v49, a1);
  if (v51 == 1)
  {
    v68 = v49;
    v69 = v50;
    v70 = 1;
LABEL_17:
    v71 = 1;
    goto LABEL_32;
  }

LABEL_31:
  LOBYTE(v68) = 0;
  v71 = 0;
  v21 = *a1;
  v22 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v23 = *(a1 + 3);
  if (v23 && v22)
  {
    (*(*v23 + 16))(v23, v21);
  }

LABEL_32:
  v24 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v66 = v24;
  v67 = BYTE2(v24);
  v25 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v64 = v25;
  v65 = BYTE2(v25);
  IPC::ArgumentCoder<WebCore::FontChanges,void>::decode(a1, &v61);
  if ((v63 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 136) = 0;
      goto LABEL_48;
    }

    if (v79 & 1) != 0 && (v77 & 1) != 0 && (v74 & 1) != 0 && (v71 & 1) != 0 && (v67 & 1) != 0 && (v65 & 1) != 0 && (v63)
    {
      break;
    }

    __break(1u);
LABEL_72:
    v26 = *a1;
    v35 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v26);
    }
  }

  WebCore::FontAttributeChanges::FontAttributeChanges();
  *a2 = v49;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (BYTE8(v50) == 1)
  {
    *(a2 + 8) = 0;
    if (&v49 != a2)
    {
      v33 = v50;
      *&v50 = 0;
      *(a2 + 8) = v33;
    }

    *(a2 + 16) = 1;
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v52 == 1)
  {
    *(a2 + 24) = 0;
    if (&v49 != a2)
    {
      v34 = v51;
      v51 = 0;
      *(a2 + 24) = v34;
    }

    *(a2 + 32) = 1;
  }

  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  if (v55 == 1)
  {
    *(a2 + 40) = 0;
    if (&v49 != a2)
    {
      v28 = v53;
      v53 = 0;
      *(a2 + 40) = v28;
    }

    *(a2 + 48) = v54;
    *(a2 + 64) = 1;
  }

  *(a2 + 72) = v56;
  v29 = v57;
  v30 = v58;
  v57 = 0uLL;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  *(a2 + 112) = v59;
  *(a2 + 128) = v60;
  *(a2 + 136) = 1;
  WebCore::FontAttributeChanges::~FontAttributeChanges(&v49, v27);
LABEL_48:
  if (v63 == 1)
  {
    v31 = v62;
    v62 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v26);
    }

    v32 = v61;
    v61 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v26);
    }
  }

  if (v71 == 1 && v70 == 1 && (v68 & 0x8000000000000) != 0)
  {
    v39 = (v68 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v68 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v39);
      WTF::fastFree(v39, v26);
    }
  }

  if (v74 == 1 && v73 == 1 && (v72 & 0x8000000000000) != 0)
  {
    v37 = (v72 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v72 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v37);
      WTF::fastFree(v37, v26);
    }
  }

  if (v77 == 1 && v76 == 1 && (v75 & 0x8000000000000) != 0)
  {
    v38 = (v75 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v75 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v38);
      WTF::fastFree(v38, v26);
    }
  }
}

void sub_19D744124(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28, WTF::StringImpl *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (*(v35 - 72) == 1 && *(v35 - 80) == 1)
  {
    v37 = *(v35 - 88);
    if ((v37 & 0x8000000000000) != 0)
    {
      v40 = (v37 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v37 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v40);
        WTF::fastFree(v40, a2);
      }
    }
  }

  if (*(v35 - 48) == 1 && *(v35 - 56) == 1)
  {
    v38 = *(v35 - 64);
    if ((v38 & 0x8000000000000) != 0)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v38 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v39);
        WTF::fastFree(v39, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

mpark *IPC::ArgumentCoder<WebCore::TextManipulationControllerExclusionRule,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = a2[24];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::encode<IPC::Encoder,mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule> const&>(a1, (a2 + 8), v5);
}

uint64_t IPC::ArgumentCoder<WebCore::TextManipulationControllerExclusionRule,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a1);
  result = IPC::Decoder::decode<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>>(a1, &v12);
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v4 & 0x100) == 0 || (v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    *(a2 + 32) = 0;
    goto LABEL_10;
  }

  LOBYTE(v10[0]) = 0;
  v11 = -1;
  v7 = v14;
  if (v14 == 255)
  {
    *a2 = v4;
    *(a2 + 8) = 0;
  }

  else
  {
    v8 = v12;
    v12 = 0;
    if (v14 == 1)
    {
      v9 = v13;
      v13 = 0;
      v10[1] = 0;
      *(a2 + 16) = v9;
    }

    v11 = v7;
    *a2 = v4;
    v10[0] = 0;
    *(a2 + 8) = v8;
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = 1;
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(v10, v6);
LABEL_10:
  if (v15 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(&v12, v6);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::GamepadHapticEffectType,void>::decode<IPC::Decoder>(a1);
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

IPC::Decoder *IPC::Decoder::decode<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
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

void sub_19D744488(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::TextManipulationControllerManipulationFailure,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::TextManipulationItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF *IPC::ArgumentCoder<WebCore::TextManipulationControllerManipulationResult,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v12);
  result = IPC::Decoder::decode<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v9);
  if (*a1)
  {
    if (v14)
    {
      v6 = v12;
      v12 = 0;
      v7 = v13;
      HIDWORD(v13) = 0;
      if (v11)
      {
        v8 = v9;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = v8;
        *(a2 + 24) = v10;
        *(a2 + 32) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v11)
  {
    result = v9;
    if (v9)
    {
      v9 = 0;
      LODWORD(v10) = 0;
      result = WTF::fastFree(result, v5);
    }
  }

LABEL_5:
  if (v14 == 1)
  {
    result = v12;
    if (v12)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_19D7445D8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, int a14, char a15)
{
  if (a15)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
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

void sub_19D744670(_Unwind_Exception *exception_object, void *a2)
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

uint64_t IPC::ArgumentCoder<WebCore::BackgroundFetchInformation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 49));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
}

uint64_t IPC::ArgumentCoder<WebCore::BackgroundFetchInformation,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::String>(a1, &v48);
  v7 = a1[1];
  v8 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 7)
  {
    a1[2] = (v8 + 1);
    if (v8)
    {
      v14 = *v8;
      v15 = 1;
      v16 = v9;
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  while (1)
  {
    *a1 = 0;
    a1[1] = 0;
    v33 = a1[3];
    if (!v33)
    {
      v7 = 0;
LABEL_46:
      v9 = 0;
      goto LABEL_47;
    }

    if (!v7)
    {
      goto LABEL_46;
    }

    (*(*v33 + 16))(v33, v9);
    v9 = *a1;
    v7 = a1[1];
LABEL_47:
    *a1 = 0;
    a1[1] = 0;
    v34 = a1[3];
    if (!v34)
    {
      v16 = 0;
      v7 = 0;
LABEL_49:
      v9 = 0;
      v15 = 0;
      v14 = 0;
      goto LABEL_8;
    }

    if (!v7)
    {
      v16 = 0;
      goto LABEL_49;
    }

    (*(*v34 + 16))(v34, v9);
    v15 = 0;
    v14 = 0;
    v16 = *a1;
    v7 = a1[1];
    v9 = *a1;
LABEL_8:
    v17 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v7 >= v17 - v9 && v7 - (v17 - v9) > 7)
    {
      a1[2] = (v17 + 1);
      if (v17)
      {
        v19 = *v17;
        v20 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      v35 = a1[3];
      if (v35)
      {
        if (v7)
        {
          (*(*v35 + 16))(v35, v16);
          v16 = *a1;
          v7 = a1[1];
          goto LABEL_53;
        }
      }

      else
      {
        v7 = 0;
      }

      v16 = 0;
    }

LABEL_53:
    *a1 = 0;
    a1[1] = 0;
    v36 = a1[3];
    if (v36)
    {
      if (v7)
      {
        (*(*v36 + 16))(v36, v16);
        v20 = 0;
        v19 = 0;
        v16 = *a1;
        v7 = a1[1];
        v9 = *a1;
        goto LABEL_15;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v7 = 0;
    }

    v9 = 0;
    v20 = 0;
    v19 = 0;
LABEL_15:
    v21 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v7 < v21 - v9 || v7 - (v21 - v9) <= 7)
    {
      *a1 = 0;
      a1[1] = 0;
      v37 = a1[3];
      if (v37)
      {
        if (v7)
        {
          (*(*v37 + 16))(v37, v16);
          v16 = *a1;
          v7 = a1[1];
          goto LABEL_59;
        }
      }

      else
      {
        v7 = 0;
      }

      v16 = 0;
    }

    else
    {
      a1[2] = (v21 + 1);
      if (v21)
      {
        v22 = *v21;
        v47 = 1;
        goto LABEL_19;
      }
    }

LABEL_59:
    *a1 = 0;
    a1[1] = 0;
    v38 = a1[3];
    if (v38)
    {
      if (v7)
      {
        (*(*v38 + 16))(v38, v16);
        v47 = 0;
        v22 = 0;
        v16 = *a1;
        v7 = a1[1];
        v9 = *a1;
        goto LABEL_19;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v7 = 0;
    }

    v9 = 0;
    v47 = 0;
    v22 = 0;
LABEL_19:
    v23 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23 - v9;
    v11 = v7 >= v24;
    v25 = v7 - v24;
    if (v11 && v25 > 7)
    {
      a1[2] = (v23 + 1);
      if (v23)
      {
        v45 = *v23;
        v46 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      v39 = a1[3];
      if (!v39)
      {
        v7 = 0;
LABEL_64:
        v16 = 0;
        goto LABEL_65;
      }

      if (!v7)
      {
        goto LABEL_64;
      }

      (*(*v39 + 16))(v39, v16);
      v16 = *a1;
      v7 = a1[1];
    }

LABEL_65:
    *a1 = 0;
    a1[1] = 0;
    v40 = a1[3];
    if (v40 && v7)
    {
      (*(*v40 + 16))(v40, v16);
    }

    v46 = 0;
    v45 = 0;
LABEL_24:
    v26 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
    result = IPC::Decoder::decode<WebCore::BackgroundFetchFailureReason>(a1);
    v44 = v22;
    v7 = a1[1];
    v28 = a1[2];
    v29 = *a1;
    v30 = v4;
    if (v7 <= &v28[-*a1])
    {
      v43 = result;
      *a1 = 0;
      a1[1] = 0;
      v41 = a1[3];
      if (v41)
      {
        if (v7)
        {
          (*(*v41 + 16))(v41);
          v29 = *a1;
          v7 = a1[1];
          goto LABEL_70;
        }
      }

      else
      {
        v7 = 0;
      }

      v29 = 0;
    }

    else
    {
      a1[2] = (v28 + 1);
      if (v28)
      {
        v4 = *v28;
        if (v4 < 2)
        {
          v9 = 1;
          goto LABEL_28;
        }

        v43 = result;
        goto LABEL_74;
      }

      v43 = result;
    }

LABEL_70:
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (!v42)
    {
      v7 = 0;
LABEL_72:
      v29 = 0;
      v4 = 0;
      goto LABEL_74;
    }

    if (!v7)
    {
      goto LABEL_72;
    }

    (*(*v42 + 16))(v42, v29);
    v4 = 0;
    v29 = *a1;
    v7 = a1[1];
LABEL_74:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result || !v7)
    {
      break;
    }

    (*(*result + 16))(result, v29);
    v9 = 0;
    v29 = *a1;
    result = v43;
LABEL_28:
    v31 = v4 ? v9 : 0;
    if (!v29)
    {
      break;
    }

    if (v6 & 1) != 0 && (v49 & 1) != 0 && (v15 & 1) != 0 && (v20 & 1) != 0 && (v47 & 1) != 0 && (v46 & 1) != 0 && v26 > 0xFFu && result > 0xFFu && (v9)
    {
      v32 = v48;
      *a2 = v30;
      *(a2 + 8) = v32;
      *(a2 + 16) = v14;
      *(a2 + 24) = v19;
      *(a2 + 32) = v44;
      *(a2 + 40) = v45;
      *(a2 + 48) = v26;
      *(a2 + 49) = result;
      *(a2 + 50) = v31;
      *(a2 + 56) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 56) = 0;
  if (v49)
  {
    result = v48;
    v48 = 0;
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

void sub_19D744CF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::BackgroundFetchRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(a1, a2 + 208);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 264);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 280);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 296));

  return IPC::ArgumentCoder<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>> const&>(a1, a2 + 304);
}

void IPC::ArgumentCoder<WebCore::BackgroundFetchRequest,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v51);
  IPC::Decoder::decode<WebCore::FetchOptions>(v82, a1);
  v4 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  IPC::Decoder::decode<WebCore::HTTPHeaderMap>(&v48, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v46);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v5)
      {
        (*(*v38 + 16))(v38);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_50;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_50:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v5)
      {
        (*(*v39 + 16))(v39);
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_53:
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40 && v5)
    {
      (*(*v40 + 16))(v40, v7);
    }

LABEL_54:
    LOBYTE(v41) = 0;
    v45 = 0;
    goto LABEL_9;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 1;
    std::optional<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>>::optional[abi:sn200100]<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>,0>(&v41, &v61);
LABEL_6:
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v7);
    goto LABEL_9;
  }

  IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(&v61, a1);
  if (v65 != 1)
  {
    goto LABEL_54;
  }

  v58[0] = v61;
  v9 = v62;
  v61 = 0;
  v62 = 0;
  v58[1] = v9;
  v59 = v63;
  v60 = v64;
  std::optional<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>>::optional[abi:sn200100]<WTF::Markable<WebCore::ContentSecurityPolicyResponseHeaders,WTF::MarkableTraits<WebCore::ContentSecurityPolicyResponseHeaders>>,0>(&v41, v58);
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v10);
  if (v65)
  {
    goto LABEL_6;
  }

LABEL_9:
  if ((v45 & 1) == 0)
  {
    goto LABEL_44;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 336) = 0;
      goto LABEL_26;
    }

    if (v57)
    {
      WebCore::ResourceRequestBase::RequestData::RequestData(&v61, v51);
      v11 = v52;
      v52 = 0uLL;
      v66 = v11;
      v67 = v53;
      v68 = v54;
      v69 = v55;
      v12 = v56;
      v53 = 0;
      v56 = 0;
      v70 = v12;
      if (v86)
      {
        v71[0] = v82[0];
        *(v71 + 3) = *(v82 + 3);
        v13 = v83;
        v83 = 0;
        v72 = v13;
        *(&v14 + 1) = *(&v84 + 1);
        v73 = v84;
        v74 = v85;
        if (v4 > 0xFFu)
        {
          v75 = v4;
          if (v50)
          {
            *&v14 = 0;
            v76 = v48;
            v15 = v49;
            v48 = v14;
            v49 = v14;
            v77 = v15;
            if (v47)
            {
              v16 = v46;
              v46 = 0;
              *&v78 = v16;
              if (v45)
              {
                break;
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_44:
    v7 = *a1;
    v36 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37 && v36)
    {
      (*(*v37 + 16))(v37, v7);
    }
  }

  *(&v78 + 1) = v41;
  v17 = v42;
  v41 = 0;
  v42 = 0;
  v79 = v17;
  v80 = v43;
  v81 = v44;
  WebCore::ResourceRequestBase::RequestData::RequestData(a2, &v61);
  v18 = v66;
  v66 = 0u;
  v19 = v68;
  v20 = v70;
  *(a2 + 168) = v67;
  *(a2 + 176) = v19;
  *(a2 + 152) = v18;
  *(a2 + 184) = v69;
  v67 = 0;
  v70 = 0;
  *(a2 + 192) = v20;
  *(a2 + 208) = v71[0];
  *(a2 + 211) = *(v71 + 3);
  *(a2 + 216) = v72;
  v21 = v74;
  *(a2 + 224) = v73;
  *(a2 + 240) = v21;
  *(a2 + 256) = v75;
  v22 = v76;
  v72 = 0;
  *&v76 = 0;
  *(a2 + 264) = __PAIR128__(*(&v76 + 1), v22);
  *&v21 = v79;
  *(a2 + 288) = *(&v77 + 1);
  v23 = v78;
  v78 = 0u;
  *(&v76 + 1) = 0;
  v24 = v77;
  *&v77 = 0;
  *(a2 + 280) = v24;
  *(a2 + 296) = v23;
  *(&v77 + 1) = 0;
  v79 = 0;
  *(a2 + 312) = v21;
  LODWORD(v24) = v80;
  *(a2 + 324) = v81;
  *(a2 + 320) = v24;
  *(a2 + 336) = 1;
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78 + 8, v25);
  v27 = v78;
  *&v78 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v77, v26);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v76, v28);
  v30 = v72;
  v72 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v29);
  }

  v31 = v70;
  v70 = 0;
  if (v31)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&v61);
LABEL_26:
  if (v45 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v7);
  }

  if (v47 == 1)
  {
    v32 = v46;
    v46 = 0;
    if (v32)
    {
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v7);
      }
    }
  }

  if (v50 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v49, v7);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v48, v33);
  }

  if (v86 == 1)
  {
    v34 = v83;
    v83 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v7);
      }
    }
  }

  if (v57 == 1)
  {
    v35 = v56;
    v56 = 0;
    if (v35)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v51);
  }
}

void sub_19D745338(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, uint64_t a17, unsigned int a18, uint64_t a19, char a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a12 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
  }

  if (a14 == 1)
  {
    v49 = a13;
    a13 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, a2);
      }
    }
  }

  if (a20 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&a18, a2);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&a16, v50);
  }

  if (*(v47 - 96) == 1)
  {
    v51 = *(v47 - 136);
    *(v47 - 136) = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, a2);
      }
    }
  }

  if (a47 == 1)
  {
    v52 = a46;
    a46 = 0;
    if (v52)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a22);
  }

  _Unwind_Resume(a1);
}

void *IPC::ArgumentCoder<WebCore::BackgroundFetchRecordInformation,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(a1, a2 + 208);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 264);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 280);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 296));
}

void IPC::ArgumentCoder<WebCore::BackgroundFetchRecordInformation,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v49);
  IPC::Decoder::decode<WebCore::FetchOptions>(v56, a1);
  v7 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
  IPC::Decoder::decode<WebCore::HTTPHeaderMap>(&v46, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v44);
  if (!*a1)
  {
    goto LABEL_30;
  }

  if ((v6 & 1) == 0 || (v55 & 1) == 0 || (WebCore::ResourceRequestBase::RequestData::RequestData(v30, v49), v9 = v50, v50 = 0uLL, v31 = v9, v32 = v51, v33 = v52, v34 = v53, v10 = v54, v51 = 0, v54 = 0, v35 = v10, (v60 & 1) == 0) || (v36[0] = v56[0], *(v36 + 3) = *(v56 + 3), v11 = v57, v57 = 0, v37 = v11, *(&v12 + 1) = *(&v58 + 1), v38 = v58, v39 = v59, v7 <= 0xFFu) || (v40 = v7, (v48 & 1) == 0) || (*&v12 = 0, v41 = v46, v13 = v47, v46 = v12, v47 = v12, v42 = v13, (v45 & 1) == 0))
  {
    __break(1u);
LABEL_30:
    *a2 = 0;
    *(a2 + 304) = 0;
    goto LABEL_14;
  }

  v14 = v44;
  v44 = 0;
  v43 = v14;
  *a2 = v4;
  WebCore::ResourceRequestBase::RequestData::RequestData(a2 + 8, v30);
  v15 = v33;
  v16 = v35;
  *(a2 + 176) = v32;
  *(a2 + 184) = v15;
  *(a2 + 192) = v34;
  v17 = v31;
  v31 = 0uLL;
  *(a2 + 160) = v17;
  v32 = 0;
  v35 = 0;
  *(a2 + 200) = v16;
  *(a2 + 208) = v36[0];
  *(a2 + 211) = *(v36 + 3);
  *(a2 + 216) = v37;
  v18 = v39;
  *(a2 + 224) = v38;
  *(a2 + 240) = v18;
  *(a2 + 256) = v40;
  v19 = v41;
  v37 = 0;
  *&v41 = 0;
  *(a2 + 264) = v19;
  *&v17 = *(&v41 + 1);
  *(&v41 + 1) = 0;
  *(a2 + 272) = v17;
  v20 = v42;
  *&v42 = 0;
  *(a2 + 280) = v20;
  *&v17 = *(&v42 + 1);
  *(&v42 + 1) = 0;
  *(a2 + 288) = v17;
  *(a2 + 296) = v43;
  *(a2 + 304) = 1;
  v43 = 0;
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v42, v21);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v41, v22);
  v24 = v37;
  v37 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = v35;
  v35 = 0;
  if (v25)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v30);
LABEL_14:
  if (v45 == 1)
  {
    v26 = v44;
    v44 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v8);
      }
    }
  }

  if (v48 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v47, v8);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v46, v27);
  }

  if (v60 == 1)
  {
    v28 = v57;
    v57 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v8);
      }
    }
  }

  if (v55 == 1)
  {
    v29 = v54;
    v54 = 0;
    if (v29)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v49);
  }
}

void sub_19D74588C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, WTF::StringImpl *a46, uint64_t a47, WTF::StringImpl *a48, char a49, int a50, __int16 a51, uint64_t a52, unsigned int a53, uint64_t a54, char a55, int a56, __int16 a57)
{
  if (a46 && atomic_fetch_add_explicit(a46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a46, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v57 + 280), a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v57 + 264, v61);
  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v62);
  }

  if (a34)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v58 | 8));
  if (a49 == 1 && a48 && atomic_fetch_add_explicit(a48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a48, v63);
  }

  if (a55 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&a53, v63);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&a51, v64);
  }

  if (*(v59 - 80) == 1)
  {
    v65 = *(v59 - 120);
    *(v59 - 120) = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v63);
      }
    }
  }

  if (LOBYTE(STACK[0x238]) == 1)
  {
    v66 = STACK[0x230];
    STACK[0x230] = 0;
    if (v66)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a57);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::decode@<X0>(WTF::StringImpl **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v50 = a1[3];
    if (v50)
    {
      if (v4)
      {
        (*(*v50 + 16))(v50);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_80:
    *a1 = 0;
    a1[1] = 0;
    v51 = a1[3];
    if (v51 && v4)
    {
      (*(*v51 + 16))(v51);
    }

    LOBYTE(v54) = 0;
    v55 = 0;
LABEL_57:
    v36 = *a1;
    v37 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v38 = a1[3];
    if (v38 && v37)
    {
      (*(*v38 + 16))(v38, v36);
    }

LABEL_58:
    result = IPC::Decoder::decode<WTF::String>(a1, &v60);
    v40 = a1[1];
    v41 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v42 = *a1;
    v43 = (v41 - *a1);
    v8 = v40 >= v43;
    v44 = v40 - v43;
    if (v8 && v44 > 7)
    {
      a1[2] = (v41 + 1);
      if (v41)
      {
        v46 = *v41;
        v47 = 1;
        if (!v42)
        {
LABEL_86:
          *a2 = 0;
          *(a2 + 32) = 0;
LABEL_69:
          if (v61 == 1)
          {
            result = v60;
            v60 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v42);
              }
            }
          }

          if (v55 == 1)
          {
            return WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v42);
          }

          return result;
        }

LABEL_65:
        if ((v55 & 1) == 0)
        {
          goto LABEL_97;
        }

        if ((v61 & 1) == 0)
        {
          goto LABEL_97;
        }

        v48 = v60;
        v60 = 0;
        if ((v47 & 1) == 0)
        {
          goto LABEL_97;
        }

        *&v39 = 0;
        v49 = v54;
        v54 = v39;
        v58 = v46;
        v56 = 0;
        *a2 = v49;
        *v57 = 0u;
        *(a2 + 8) = *(&v49 + 1);
        *(a2 + 16) = v48;
        *(a2 + 24) = v46;
        *(a2 + 32) = 1;
        result = WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v42);
        goto LABEL_69;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      v52 = a1[3];
      if (v52)
      {
        if (v40)
        {
          (*(*v52 + 16))(v52);
          v42 = *a1;
          v40 = a1[1];
          goto LABEL_85;
        }
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
    }

LABEL_85:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result)
    {
      goto LABEL_86;
    }

    if (!v40)
    {
      goto LABEL_86;
    }

    result = (*(*result + 16))(result);
    v47 = 0;
    v46 = 0;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_86;
    }

    goto LABEL_65;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_80;
  }

  v11 = *v5;
  v60 = 0;
  v61 = 0;
  if (v11 < 0x8000)
  {
    if (v11)
    {
      LODWORD(v61) = v11;
      v60 = WTF::fastMalloc((32 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ImageResource>(&v56, a1);
        if ((v59 & 1) == 0)
        {
          goto LABEL_56;
        }

        if (HIDWORD(v61) != v61)
        {
          break;
        }

        WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ImageResource>(&v60, &v56);
        if (v59)
        {
          goto LABEL_15;
        }

LABEL_27:
        if (!--v11)
        {
          goto LABEL_28;
        }
      }

      v12 = HIDWORD(v61) + 1;
      v13 = (v60 + 32 * HIDWORD(v61));
      v14 = v56;
      v56 = 0;
      *v13 = v14;
      v15 = v57[0];
      v57[0] = 0;
      v13[1] = v15;
      v16 = v57[1];
      v57[1] = 0;
      v13[2] = v16;
      v17 = v58;
      v58 = 0;
      v13[3] = v17;
      HIDWORD(v61) = v12;
LABEL_15:
      v18 = v58;
      v58 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v6);
      }

      v19 = v57[1];
      v57[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }

      v20 = v57[0];
      v57[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v6);
      }

      v21 = v56;
      v56 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v6);
      }

      goto LABEL_27;
    }

LABEL_28:
    *&v54 = v60;
    v22 = v61;
    v60 = 0;
    v61 = 0;
    *(&v54 + 1) = v22;
    v55 = 1;
    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v6);
    goto LABEL_58;
  }

  do
  {
    IPC::Decoder::decode<WebCore::ImageResource>(&v56, a1);
    if ((v59 & 1) == 0)
    {
LABEL_56:
      LOBYTE(v54) = 0;
      v55 = 0;
      WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v6);
      goto LABEL_57;
    }

    if (HIDWORD(v61) == v61)
    {
      WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ImageResource>(&v60, &v56);
      if ((v59 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = HIDWORD(v61) + 1;
      v24 = (v60 + 32 * HIDWORD(v61));
      v25 = v56;
      v56 = 0;
      *v24 = v25;
      v26 = v57[0];
      v57[0] = 0;
      v24[1] = v26;
      v27 = v57[1];
      v57[1] = 0;
      v24[2] = v27;
      v28 = v58;
      v58 = 0;
      v24[3] = v28;
      HIDWORD(v61) = v23;
    }

    v29 = v58;
    v58 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v6);
    }

    v30 = v57[1];
    v57[1] = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v6);
    }

    v31 = v57[0];
    v57[0] = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v6);
    }

    v32 = v56;
    v56 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v6);
    }

LABEL_46:
    --v11;
  }

  while (v11);
  v33 = HIDWORD(v61);
  if (v61 <= HIDWORD(v61))
  {
    goto LABEL_28;
  }

  result = v60;
  if (!HIDWORD(v61))
  {
LABEL_52:
    if (result)
    {
      if (v60 == result)
      {
        v60 = 0;
        LODWORD(v61) = 0;
      }

      WTF::fastFree(result, v6);
    }

    goto LABEL_28;
  }

  v53 = v60;
  if (!(HIDWORD(v61) >> 27))
  {
    v35 = WTF::fastMalloc((32 * HIDWORD(v61)));
    result = v53;
    LODWORD(v61) = v33;
    v60 = v35;
    if (v35 != v53)
    {
      WTF::VectorMover<false,WebCore::ImageResource>::move(v53, (v53 + 32 * v33), v35);
      result = v53;
    }

    goto LABEL_52;
  }

  __break(0xC471u);
LABEL_97:
  __break(1u);
  return result;
}