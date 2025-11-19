void sub_407DFC(_Unwind_Exception *a1)
{
  *(v2 - 312) = v1;
  sub_7624C(**(v2 - 312));
  _Unwind_Resume(a1);
}

uint64_t sub_407ED0(uint64_t a1)
{
  sub_7624C(*(a1 + 32));
  sub_7624C(*(a1 + 8));
  return a1;
}

uint64_t sub_407F04(uint64_t a1)
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

uint64_t sub_407F84(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  sub_1C57E4(a1, a2, a3, a5);
  v10 = *(a5 + 24);
  if (!v10)
  {
    goto LABEL_9;
  }

  result = (*(*v10 + 48))(v10, a4, a3);
  if (!result)
  {
    return result;
  }

  v12 = *a3;
  *a3 = *a4;
  *a4 = v12;
  v13 = *(a5 + 24);
  if (!v13)
  {
    goto LABEL_9;
  }

  result = (*(*v13 + 48))(v13, a3, a2);
  if (!result)
  {
    return result;
  }

  v14 = *a2;
  *a2 = *a3;
  *a3 = v14;
  v15 = *(a5 + 24);
  if (!v15)
  {
LABEL_9:
    sub_46A74();
  }

  result = (*(*v15 + 48))(v15, a2, a1);
  if (result)
  {
    v16 = *a1;
    *a1 = *a2;
    *a2 = v16;
  }

  return result;
}

uint64_t sub_4080A8(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  sub_407F84(a1, a2, a3, a4, a6);
  v12 = *(a6 + 24);
  if (!v12)
  {
    goto LABEL_11;
  }

  result = (*(*v12 + 48))(v12, a5, a4);
  if (!result)
  {
    return result;
  }

  v14 = *a4;
  *a4 = *a5;
  *a5 = v14;
  v15 = *(a6 + 24);
  if (!v15)
  {
    goto LABEL_11;
  }

  result = (*(*v15 + 48))(v15, a4, a3);
  if (!result)
  {
    return result;
  }

  v16 = *a3;
  *a3 = *a4;
  *a4 = v16;
  v17 = *(a6 + 24);
  if (!v17)
  {
    goto LABEL_11;
  }

  result = (*(*v17 + 48))(v17, a3, a2);
  if (!result)
  {
    return result;
  }

  v18 = *a2;
  *a2 = *a3;
  *a3 = v18;
  v19 = *(a6 + 24);
  if (!v19)
  {
LABEL_11:
    sub_46A74();
  }

  result = (*(*v19 + 48))(v19, a2, a1);
  if (result)
  {
    v20 = *a1;
    *a1 = *a2;
    *a2 = v20;
  }

  return result;
}

BOOL sub_408218(int *a1, int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a3 + 24);
        if (!v7)
        {
LABEL_28:
          sub_46A74();
        }

        v8 = a2 - 1;
        if ((*(*v7 + 48))(v7, a2 - 1, a1))
        {
          v9 = *a1;
          *a1 = *v8;
          *v8 = v9;
        }

        return 1;
      }

      goto LABEL_12;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_1C57E4(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_407F84(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_4080A8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_12:
  v10 = a1 + 2;
  sub_1C57E4(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(a3 + 24);
    if (!v14)
    {
      goto LABEL_28;
    }

    if ((*(*v14 + 48))(v14, v11, v10))
    {
      v20 = *v11;
      v15 = v12;
      while (1)
      {
        *(a1 + v15 + 12) = *(a1 + v15 + 8);
        if (v15 == -8)
        {
          break;
        }

        v16 = *(a3 + 24);
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = (*(*v16 + 48))(v16, &v20, a1 + v15 + 4);
        v15 -= 4;
        if ((v17 & 1) == 0)
        {
          v18 = (a1 + v15 + 12);
          goto LABEL_22;
        }
      }

      v18 = a1;
LABEL_22:
      *v18 = v20;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 4;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_408450(uint64_t a1, unsigned int a2, void *a3)
{
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 8) = a1 + 16;
  *a1 = off_6D2030;
  *(a1 + 24) = 0;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v5 = *v3;
      v6 = a1 + 16;
      if (*(a1 + 8) == v3)
      {
        goto LABEL_8;
      }

      v7 = *v3;
      v8 = a1 + 16;
      if (v5)
      {
        do
        {
          v6 = v7;
          v7 = *(v7 + 8);
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = *(v8 + 16);
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *(v4 + 8);
      if (*(v6 + 32) < v10)
      {
LABEL_8:
        if (v5)
        {
          v11 = (v6 + 8);
        }

        else
        {
          v11 = (a1 + 16);
        }
      }

      else
      {
        v11 = (a1 + 16);
        if (v5)
        {
          v11 = (a1 + 16);
          while (1)
          {
            while (1)
            {
              v14 = v5;
              v15 = *(v5 + 32);
              if (v10 >= v15)
              {
                break;
              }

              v5 = *v14;
              v11 = v14;
              if (!*v14)
              {
                goto LABEL_12;
              }
            }

            if (v15 >= v10)
            {
              break;
            }

            v11 = v14 + 1;
            v5 = v14[1];
            if (!v5)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_12:
        operator new();
      }

      v12 = v4[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v4[2];
          v9 = *v13 == v4;
          v4 = v13;
        }

        while (!v9);
      }

      v4 = v13;
    }

    while (v13 != a3 + 1);
  }

  *(a1 + 40) = 0;
  v16 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  v17 = a3[3];
  if (v17 != a3 + 4)
  {
    do
    {
      v18 = *v16;
      v19 = a1 + 40;
      if (*(a1 + 32) == v16)
      {
        goto LABEL_35;
      }

      v20 = *v16;
      v21 = a1 + 40;
      if (v18)
      {
        do
        {
          v19 = v20;
          v20 = *(v20 + 8);
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = *(v21 + 16);
          v9 = *v19 == v21;
          v21 = v19;
        }

        while (v9);
      }

      v22 = *(v17 + 8);
      if (*(v19 + 32) < v22)
      {
LABEL_35:
        if (v18)
        {
          v23 = (v19 + 8);
        }

        else
        {
          v23 = (a1 + 40);
        }
      }

      else
      {
        v23 = (a1 + 40);
        if (v18)
        {
          v23 = (a1 + 40);
          while (1)
          {
            while (1)
            {
              v26 = v18;
              v27 = *(v18 + 32);
              if (v22 >= v27)
              {
                break;
              }

              v18 = *v26;
              v23 = v26;
              if (!*v26)
              {
                goto LABEL_39;
              }
            }

            if (v27 >= v22)
            {
              break;
            }

            v23 = v26 + 1;
            v18 = v26[1];
            if (!v18)
            {
              goto LABEL_39;
            }
          }
        }
      }

      if (!*v23)
      {
LABEL_39:
        operator new();
      }

      v24 = v17[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v17[2];
          v9 = *v25 == v17;
          v17 = v25;
        }

        while (!v9);
      }

      v17 = v25;
    }

    while (v25 != a3 + 4);
  }

  *(a1 + 56) = a2;
  sub_4074F4((a1 + 64), a2, a3);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = sub_46AC8C();
  if (!a2)
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "SubPortPolicy.cpp";
      v41 = 1024;
      v42 = 113;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_70:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!a3[2])
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "SubPortPolicy.cpp";
      v41 = 1024;
      v42 = 114;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_70;
  }

  if (!a3[5])
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "SubPortPolicy.cpp";
      v41 = 1024;
      v42 = 115;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_70;
  }

  sub_407078(*(a1 + 56));
  return a1;
}

void sub_4089CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  v14 = *v12;
  if (*v12)
  {
    *(a10 + 96) = v14;
    operator delete(v14);
  }

  sub_7624C(*(a10 + 72));
  sub_407ED0(v11);
  _Unwind_Resume(a1);
}

void sub_408A74(uint64_t a1, unsigned int **a2, int a3)
{
  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 56);
    sub_10898C(&v114, *a2, a2[1]);
    v9 = v114.__m_.__opaque[15] >= 0 ? &v114 : v114.__m_.__sig;
    *buf = 136315906;
    *&buf[4] = "SubPortPolicy.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 128;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 2080;
    *&buf[26] = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Setting sub-ports active on device %u: %s", buf, 0x22u);
    if (v114.__m_.__opaque[15] < 0)
    {
      operator delete(v114.__m_.__sig);
    }
  }

  if (a3)
  {
    v10 = 1768845428;
  }

  else
  {
    v10 = 1869968496;
  }

  inAddress.mSelector = 1936945763;
  inAddress.mScope = v10;
  inAddress.mElement = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(*(a1 + 56), &inAddress, 0, 0, &outDataSize);
  if (PropertyDataSize)
  {
    v68 = sub_5544(14);
    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(&v114);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = PropertyDataSize;
  }

  sub_128080(&outData, outDataSize >> 2);
  if (outDataSize)
  {
    PropertyData = AudioObjectGetPropertyData(*(a1 + 56), &inAddress, 0, 0, &outDataSize, outData);
    if (PropertyData)
    {
      v70 = sub_5544(14);
      if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(&v114);
      }

      v71 = __cxa_allocate_exception(0x10uLL);
      *v71 = &off_6DDDD0;
      v71[2] = PropertyData;
    }
  }

  v13 = outData;
  if (v75 - outData != a2[1] - *a2 || memcmp(outData, *a2, v75 - outData))
  {
    v14 = sub_5544(18);
    if (*(v14 + 8))
    {
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 56);
          sub_10898C(&v114, *a2, a2[1]);
          v17 = v114.__m_.__opaque[15] >= 0 ? &v114 : v114.__m_.__sig;
          *buf = 136315906;
          *&buf[4] = "SubPortPolicy.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 145;
          *&buf[18] = 1024;
          *&buf[20] = v16;
          *&buf[24] = 2080;
          *&buf[26] = v17;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting input data sources on device %u to %s.", buf, 0x22u);
          if (v114.__m_.__opaque[15] < 0)
          {
            operator delete(v114.__m_.__sig);
          }
        }
      }
    }

    v18 = *(a1 + 56);
    v19 = sub_5544(14);
    if ((*(v19 + 8) & 1) != 0 && *v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
    {
      v113.__cv_.__sig = *&inAddress.mSelector;
      *v113.__cv_.__opaque = inAddress.mElement;
      sub_22CE0(&v114);
    }

    *buf = inAddress;
    if (!AudioObjectHasProperty(v18, buf))
    {
      v24 = sub_5544(14);
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        v113.__cv_.__sig = *&inAddress.mSelector;
        *v113.__cv_.__opaque = inAddress.mElement;
        sub_22CE0(&v114);
      }

      goto LABEL_186;
    }

    memset(v114.__m_.__opaque, 0, sizeof(v114.__m_.__opaque));
    v114.__m_.__sig = 850045863;
    memset(v113.__cv_.__opaque, 0, sizeof(v113.__cv_.__opaque));
    v113.__cv_.__sig = 1018212795;
    v89 = 0;
    sub_745E8(v102, v18, &inAddress, &v113, &v114, &v89);
    *(&v98 + 4) = inAddress;
    LODWORD(v98) = v18;
    LODWORD(v99) = 0;
    *(&v99 + 1) = 0;
    *buf = inAddress;
    if (!sub_66E40(v18, buf))
    {
      v25 = sub_5544(14);
      LODWORD(v21) = 1852797029;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *__p = inAddress;
        sub_22CE0(&v108);
      }

      goto LABEL_134;
    }

    sub_40A538(&v108, &v98);
    if (v110)
    {
      goto LABEL_31;
    }

    v90 = 0uLL;
    v91 = 0;
    sub_46980(&v90, v108, v109, (v109 - v108) >> 2);
    v105 = 0uLL;
    v106 = 0;
    sub_46980(&v105, *a2, a2[1], a2[1] - *a2);
    v26 = v90;
    v27 = v105;
    v28 = *(&v90 + 1) - v90 == *(&v105 + 1) - v105 && memcmp(v90, v105, *(&v90 + 1) - v90) == 0;
    if (v27)
    {
      *(&v105 + 1) = v27;
      operator delete(v27);
    }

    if (v26)
    {
      *(&v90 + 1) = v26;
      operator delete(v26);
      if (v28)
      {
LABEL_55:
        v29 = sub_5544(14);
        if (*(v29 + 8))
        {
          v21 = *v29;
          if (!*v29)
          {
LABEL_60:
            LOBYTE(v23) = 0;
LABEL_61:
            if (v108)
            {
              operator delete(v108);
            }

            if (v23)
            {
              sub_40A538(&v108, &v98);
              if (v110)
              {
LABEL_65:
                v72 = 2000;
                while (1)
                {
                  sub_40A538(__p, &v98);
                  v30 = *__p;
                  if (*&__p[24])
                  {
                    v31 = 1;
                    LODWORD(v21) = *&__p[24];
                    if (!*__p)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_68;
                  }

                  v82 = 0;
                  v83 = 0;
                  v84 = 0;
                  sub_46980(&v82, *__p, *&__p[8], (*&__p[8] - *__p) >> 2);
                  v79 = 0;
                  v80 = 0;
                  v81 = 0;
                  sub_46980(&v79, *a2, a2[1], a2[1] - *a2);
                  v32 = v82;
                  v33 = v79;
                  if (&v83[-v82] == (v80 - v79))
                  {
                    break;
                  }

                  v34 = 0;
                  if (v79)
                  {
                    goto LABEL_75;
                  }

LABEL_76:
                  if (v32)
                  {
                    v83 = v32;
                    operator delete(v32);
                  }

                  if (v34)
                  {
                    v31 = 16;
                    if (!v30)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_68;
                  }

                  if (v72 > 0)
                  {
                    v35.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                    v36 = sub_5544(14);
                    if (*(v36 + 8))
                    {
                      v37 = *v36;
                      if (*v36)
                      {
                        if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136315906;
                          *&buf[4] = "HALPropertySynchronizer.h";
                          *&buf[12] = 1024;
                          *&buf[14] = 354;
                          *&buf[18] = 2080;
                          *&buf[20] = "with timeout";
                          *&buf[28] = 1024;
                          *&buf[30] = v18;
                          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
                        }
                      }
                    }

                    sub_27A4();
                    v111[0] = sub_2E6B08();
                    *buf = &v114;
                    buf[8] = 1;
                    std::mutex::lock(&v114);
                    v38.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                    while (1)
                    {
                      if ((v89 & 1) != 0 || v38.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
                      {
LABEL_103:
                        if (buf[8] == 1)
                        {
                          std::mutex::unlock(*buf);
                        }

                        sub_1DB4C4(v111);
                        v31 = 0;
                        v72 += (std::chrono::system_clock::now().__d_.__rep_ - v35.__d_.__rep_) / -1000;
                        if (!v30)
                        {
                          goto LABEL_69;
                        }

LABEL_68:
                        operator delete(v30);
                        goto LABEL_69;
                      }

                      v39.__d_.__rep_ = v38.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                      if (v39.__d_.__rep_ >= 1)
                      {
                        break;
                      }

LABEL_102:
                      if (std::chrono::steady_clock::now().__d_.__rep_ >= v38.__d_.__rep_)
                      {
                        goto LABEL_103;
                      }
                    }

                    std::chrono::steady_clock::now();
                    v40.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                    if (v40.__d_.__rep_)
                    {
                      if (v40.__d_.__rep_ < 1)
                      {
                        if (v40.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                        {
                          goto LABEL_97;
                        }

                        v41 = 0x8000000000000000;
                      }

                      else
                      {
                        if (v40.__d_.__rep_ > 0x20C49BA5E353F7)
                        {
                          v41 = 0x7FFFFFFFFFFFFFFFLL;
                          goto LABEL_98;
                        }

LABEL_97:
                        v41 = 1000 * v40.__d_.__rep_;
LABEL_98:
                        if (v41 > (v39.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                        {
                          v42.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_101:
                          std::condition_variable::__do_timed_wait(&v113, buf, v42);
                          std::chrono::steady_clock::now();
                          goto LABEL_102;
                        }
                      }
                    }

                    else
                    {
                      v41 = 0;
                    }

                    v42.__d_.__rep_ = v41 + v39.__d_.__rep_;
                    goto LABEL_101;
                  }

                  v43 = sub_5544(14);
                  if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
                  {
                    v88 = inAddress;
                    sub_22CE0(v111);
                  }

                  v31 = 1;
                  LODWORD(v21) = 2003329396;
                  if (v30)
                  {
                    goto LABEL_68;
                  }

LABEL_69:
                  if (v31)
                  {
                    if (v31 == 16)
                    {
                      v44 = sub_5544(14);
                      if ((*(v44 + 8) & 1) == 0)
                      {
                        goto LABEL_131;
                      }

                      v21 = *v44;
                      if (*v44)
                      {
                        if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
                        {
                          *v111 = inAddress;
                          sub_22CE0(__p);
                        }

                        goto LABEL_131;
                      }
                    }

                    goto LABEL_132;
                  }
                }

                v34 = memcmp(v82, v79, &v83[-v82]) == 0;
                if (!v33)
                {
                  goto LABEL_76;
                }

LABEL_75:
                v80 = v33;
                operator delete(v33);
                goto LABEL_76;
              }

              v92 = 0;
              v93 = 0;
              v94 = 0;
              sub_46980(&v92, v108, v109, (v109 - v108) >> 2);
              v85 = 0;
              v86 = 0;
              v87 = 0;
              sub_46980(&v85, *a2, a2[1], a2[1] - *a2);
              v45 = v92;
              v46 = v85;
              v47 = v93 - v92 == v86 - v85 && memcmp(v92, v85, v93 - v92) == 0;
              if (v46)
              {
                v86 = v46;
                operator delete(v46);
              }

              if (v45)
              {
                v93 = v45;
                operator delete(v45);
                if (!v47)
                {
                  goto LABEL_65;
                }
              }

              else if (!v47)
              {
                goto LABEL_65;
              }

              v48 = sub_5544(14);
              if ((*(v48 + 8) & 1) == 0)
              {
                goto LABEL_131;
              }

              v21 = *v48;
              if (*v48)
              {
                if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "HALPropertySynchronizer.h";
                  *&buf[12] = 1024;
                  *&buf[14] = 322;
                  *&buf[18] = 1024;
                  *&buf[20] = v18;
                  _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
                }

LABEL_131:
                LODWORD(v21) = 0;
              }

LABEL_132:
              if (v108)
              {
                operator delete(v108);
              }
            }

LABEL_134:
            sub_73C20(v102);
            std::condition_variable::~condition_variable(&v113);
            std::mutex::~mutex(&v114);
            if (!v21)
            {
              v49 = a2[1] - *a2;
              if (v75 - outData != v49)
              {
                memset(v111, 0, sizeof(v111));
                v79 = 0;
                v50 = sub_40A778(*(a1 + 56));
                v82 = 0x676C6F6273666D74;
                LODWORD(v83) = 0;
                v51 = sub_5544(14);
                if ((*(v51 + 8) & 1) != 0 && *v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
                {
                  v113.__cv_.__sig = v82;
                  *v113.__cv_.__opaque = v83;
                  sub_22CE0(&v114);
                }

                *buf = v82;
                *&buf[8] = v83;
                if (AudioObjectHasProperty(v50, buf))
                {
                  memset(v114.__m_.__opaque, 0, sizeof(v114.__m_.__opaque));
                  v114.__m_.__sig = 850045863;
                  memset(v113.__cv_.__opaque, 0, sizeof(v113.__cv_.__opaque));
                  v113.__cv_.__sig = 1018212795;
                  LOBYTE(v78) = 0;
                  sub_745E8(&v108, v50, &v82, &v113, &v114, &v78);
                  *(&v105 + 4) = v82;
                  LODWORD(v105) = v50;
                  HIDWORD(v105) = v83;
                  LODWORD(v106) = 0;
                  v107 = 0;
                  sub_40AA28(v102, &v105);
                  v52 = v49 >> 2;
                  if (!v104)
                  {
                    *buf = v102[0];
                    *&buf[16] = v102[1];
                    *&buf[32] = v103;
                    v98 = 0uLL;
                    *&v99 = 0;
                    DWORD2(v99) = 0;
                    HIDWORD(v99) = v49 >> 2;
                    v100 = 0;
                    if (sub_5FB04(buf, &v98))
                    {
                      v53 = sub_5544(14);
                      if (*(v53 + 8))
                      {
                        v54 = *v53;
                        if (*v53)
                        {
                          if (os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315650;
                            *&buf[4] = "HALPropertySynchronizer.h";
                            *&buf[12] = 1024;
                            *&buf[14] = 322;
                            *&buf[18] = 1024;
                            *&buf[20] = v50;
                            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
                          }
                        }
                      }

LABEL_185:
                      sub_73C20(&v108);
                      std::condition_variable::~condition_variable(&v113);
                      std::mutex::~mutex(&v114);
                      goto LABEL_186;
                    }
                  }

                  v73 = v50;
                  v55 = v79;
                  v56 = 2000;
LABEL_148:
                  sub_40AA28(&v98, &v105);
                  if (v101)
                  {
                    goto LABEL_185;
                  }

                  *buf = v98;
                  *&buf[16] = v99;
                  *&buf[32] = v100;
                  *__p = *v111;
                  *&__p[12] = *&v111[12];
                  v96 = v52;
                  v97 = v55;
                  if (sub_5FB04(buf, __p))
                  {
                    v66 = sub_5544(14);
                    if ((*(v66 + 8) & 1) != 0 && *v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_DEBUG))
                    {
                      *__p = v82;
                      *&__p[8] = v83;
                      sub_22CE0(&v98);
                    }

                    goto LABEL_185;
                  }

                  if (v56 <= 0)
                  {
                    v67 = sub_5544(14);
                    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
                    {
                      v85 = v82;
                      LODWORD(v86) = v83;
                      sub_22CE0(&v92);
                    }

                    goto LABEL_185;
                  }

                  v57.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                  v58 = sub_5544(14);
                  if (*(v58 + 8))
                  {
                    v59 = *v58;
                    if (*v58)
                    {
                      if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136315906;
                        *&buf[4] = "HALPropertySynchronizer.h";
                        *&buf[12] = 1024;
                        *&buf[14] = 354;
                        *&buf[18] = 2080;
                        *&buf[20] = "with timeout";
                        *&buf[28] = 1024;
                        *&buf[30] = v73;
                        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
                      }
                    }
                  }

                  sub_27A4();
                  __p[0] = sub_2E6B08();
                  *buf = &v114;
                  buf[8] = 1;
                  std::mutex::lock(&v114);
                  v60.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                  while (1)
                  {
                    if ((v78 & 1) != 0 || v60.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
                    {
LABEL_172:
                      if (buf[8] == 1)
                      {
                        std::mutex::unlock(*buf);
                      }

                      sub_1DB4C4(__p);
                      v56 += (std::chrono::system_clock::now().__d_.__rep_ - v57.__d_.__rep_) / -1000;
                      goto LABEL_148;
                    }

                    v61.__d_.__rep_ = v60.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                    if (v61.__d_.__rep_ >= 1)
                    {
                      break;
                    }

LABEL_171:
                    if (std::chrono::steady_clock::now().__d_.__rep_ >= v60.__d_.__rep_)
                    {
                      goto LABEL_172;
                    }
                  }

                  std::chrono::steady_clock::now();
                  v62.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                  if (!v62.__d_.__rep_)
                  {
                    v63 = 0;
                    goto LABEL_169;
                  }

                  if (v62.__d_.__rep_ < 1)
                  {
                    if (v62.__d_.__rep_ < 0xFFDF3B645A1CAC09)
                    {
                      v63 = 0x8000000000000000;
                      goto LABEL_169;
                    }
                  }

                  else if (v62.__d_.__rep_ > 0x20C49BA5E353F7)
                  {
                    v63 = 0x7FFFFFFFFFFFFFFFLL;
                    goto LABEL_167;
                  }

                  v63 = 1000 * v62.__d_.__rep_;
LABEL_167:
                  if (v63 > (v61.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v64.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_170:
                    std::condition_variable::__do_timed_wait(&v113, buf, v64);
                    std::chrono::steady_clock::now();
                    goto LABEL_171;
                  }

LABEL_169:
                  v64.__d_.__rep_ = v63 + v61.__d_.__rep_;
                  goto LABEL_170;
                }

                v65 = sub_5544(14);
                if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
                {
                  v113.__cv_.__sig = v82;
                  *v113.__cv_.__opaque = v83;
                  sub_22CE0(&v114);
                }
              }
            }

LABEL_186:
            if ((a1 + 88) != a2)
            {
              sub_16B928((a1 + 88), *a2, a2[1], a2[1] - *a2);
            }

            sub_407078(*(a1 + 56));
            v13 = outData;
            goto LABEL_189;
          }

          if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "HALPropertySynchronizer.h";
            *&buf[12] = 1024;
            *&buf[14] = 294;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
          }
        }

        LOBYTE(v23) = 0;
        LODWORD(v21) = 0;
        goto LABEL_61;
      }
    }

    else if (v28)
    {
      goto LABEL_55;
    }

LABEL_31:
    v20 = sub_5544(14);
    if ((*(v20 + 8) & 1) != 0 && *v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
    {
      *v111 = inAddress;
      sub_22CE0(__p);
    }

    *buf = inAddress;
    LODWORD(v21) = sub_1F79B8(v18, buf, *a2, a2[1]);
    if (!v21)
    {
      LOBYTE(v23) = 1;
      goto LABEL_61;
    }

    v22 = sub_5544(14);
    v23 = *v22;
    if (!*v22)
    {
      goto LABEL_61;
    }

    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v21);
      v88 = inAddress;
      sub_22CE0(v111);
    }

    goto LABEL_60;
  }

LABEL_189:
  if (v13)
  {
    v75 = v13;
    operator delete(v13);
  }
}

void sub_40A398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_73C20(&a66);
  std::condition_variable::~condition_variable((v66 - 216));
  std::mutex::~mutex((v66 - 168));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_40A538(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_40A738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_40A778(AudioObjectID a1)
{
  *&inAddress.mSelector = 0x696E707473746D23;
  inAddress.mElement = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(a1, &inAddress, 0, 0, &outDataSize);
  if (!outDataSize)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "SubPortPolicy.cpp";
      v17 = 1024;
      v18 = 92;
      v19 = 1024;
      LODWORD(v20) = outDataSize;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned input stream size of %u", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL returned input stream size of %u");
  }

  __chkstk_darwin(PropertyDataSize);
  v4 = (v12 - ((v3 + 15) & 0x1FFFFFFF0));
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &outDataSize, v4);
  if (PropertyData)
  {
    v7 = sub_5544(14);
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v12);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    *v8 = &off_6DDDD0;
    v8[2] = PropertyData;
  }

  return *v4;
}

__n128 sub_40AA28(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_2ADD84(&v14, a2, buf, v4, *(a2 + 24));
  v5 = v14;
  if (v14)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v13, v5);
        v10 = *v3;
        v11 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = v15;
  v18 = 0;
  v17 = 0u;
  *buf = 0u;
  if (!v15[40])
  {
    v7 = buf;
  }

  result = *v7;
  v9 = *(v7 + 1);
  *a1 = *v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v7 + 4);
  *(a1 + 40) = v5;
  return result;
}

void sub_40AC10(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_40AC30(void *result, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "SubPortPolicy.cpp";
      v17 = 1024;
      v18 = 165;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = *(a2 + 16);
  v3 = a2 + 16;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a3)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    v10 = *(v6 + 40);
    v11 = *(v6 + 48);

    return sub_46980(result, v10, v11, (v11 - v10) >> 2);
  }

  else
  {
LABEL_10:
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

BOOL sub_40ADD4(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (v3 == (a1 + 72))
  {
LABEL_13:
    v9 = sub_5544(18);
    if (*(v9 + 8))
    {
      v10 = *v9;
      if (*v9)
      {
        result = os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        sub_22170(__p, a2);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315650;
        v19 = "SubPortPolicy.cpp";
        v20 = 1024;
        v21 = 186;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Data source %s is not supported.", buf, 0x1Cu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v4 = v3[5];
      v5 = v3[6];
      if (v4 != v5)
      {
        while (*v4 != a2)
        {
          if (++v4 == v5)
          {
            goto LABEL_7;
          }
        }
      }

      if (v4 != v5)
      {
        break;
      }

LABEL_7:
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == (a1 + 72))
      {
        goto LABEL_13;
      }
    }

    v13 = sub_5544(18);
    if (*(v13 + 8))
    {
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, a2);
          v15 = v17 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v19 = "SubPortPolicy.cpp";
          v20 = 1024;
          v21 = 182;
          v22 = 2080;
          v23 = v15;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Data source %s is supported.", buf, 0x1Cu);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    return 1;
  }
}

uint64_t sub_40B018(_DWORD *a1)
{
  v1 = (a1[26] - 1);
  a1[26] = v1;
  if (a1 && !v1)
  {
    (*(*a1 + 8))(a1);
  }

  return v1;
}

uint64_t sub_40B070(uint64_t a1)
{
  v1 = (*(a1 + 104) + 1);
  *(a1 + 104) = v1;
  return v1;
}

void sub_40B088(uint64_t a1, int a2)
{
  sub_2820();
  sub_13ED28(*(a1 + 8));
  *(a1 + 8) = a2;
  if (a2)
  {
    sub_2820();

    sub_49670();
  }
}

void sub_40B0E8(uint64_t a1)
{
  sub_40B120(a1);

  operator delete();
}

uint64_t sub_40B120(uint64_t a1)
{
  *a1 = off_6D2050;
  if (byte_6F71D4 == 1)
  {
    strcpy(&inAddress, "resubolg");
    BYTE1(inAddress.mElement) = 0;
    HIWORD(inAddress.mElement) = 0;
    AudioObjectRemovePropertyListener(1u, &inAddress, sub_3C2D6C, 0);
    inAddress.mSelector = 1886221684;
    AudioObjectRemovePropertyListener(1u, &inAddress, sub_3C2D6C, 0);
    byte_6F71D4 = 0;
  }

  CFPlugInRemoveInstanceForFactory(*(a1 + 88));
  sub_3BE580(a1 + 88);

  return sub_13E5EC(a1);
}

void sub_40B224(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_40B3C0(v10, a1, 0x7461636Cu);
  v3 = *v10;
  if (*v10)
  {
    (*(**v10 + 72))(*v10);
  }

  if (*&v10[8])
  {
    sub_1A8C0(*&v10[8]);
  }

  if (!v3)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(29);
    v6 = 0;
    *v10 = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&v10[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_12:
    v9 = *v4;
    if (v9)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 136315394;
        *&v10[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&v10[12] = 1024;
        *&v10[14] = 790;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No matching Bluetooth profile", v10, 0x12u);
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_40B3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_40B3C0(void *a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    std::mutex::lock((a2 + 656));
    v6 = *(a2 + 640);
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = a2 + 640;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a2 + 640 && *(v7 + 32) <= a3)
    {
      v12 = *(v7 + 40);
      v11 = *(v7 + 48);
      *a1 = v12;
      a1[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_10:
      *a1 = 0;
      a1[1] = 0;
    }

    std::mutex::unlock((a2 + 656));
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_40B480(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v48 = a3[4];
  v49 = *a3;
  LODWORD(v52.__r_.__value_.__l.__data_) = v48;
  strcpy(buf, "spxebolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v6 = sub_147610(a1);
  if (v6)
  {
    v7 = v6;
    v8 = sub_5544(18);
    v9 = sub_5544(29);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_8:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&v52, 0x65787073u);
      v14 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
      v15 = v52.__r_.__value_.__r.__words[0];
      sub_22170(__p, v7);
      v16 = &v52;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v51 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 625;
      *&buf[18] = 2080;
      *&buf[20] = v16;
      *&buf[28] = 2080;
      *&buf[30] = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to set prop %s on BT. Error: %s", buf, 0x26u);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }
  }

  v18 = *(a2 + 8);
  if (v18 == a2)
  {
    v20 = 0;
  }

  else
  {
    do
    {
      sub_88A00(buf, (v18 + 16), "", 628);
      v19 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v20 = v19 == 1885892674;
      if (v19 == 1885892674)
      {
        break;
      }

      v18 = *(v18 + 8);
    }

    while (v18 != a2);
    v18 = *(a2 + 8);
  }

  if (v18 == a2)
  {
    v24 = 0;
  }

  else
  {
    do
    {
      sub_88A00(buf, (v18 + 16), "", 631);
      v21 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v21 == 1885892706 || v21 == 1886216820)
      {
        break;
      }

      v18 = *(v18 + 8);
    }

    while (v18 != a2);
    v24 = v21 == 1886216820 || v21 == 1885892706;
    v18 = *(a2 + 8);
  }

  if (v18 == a2)
  {
LABEL_50:
    v27 = 0;
  }

  else
  {
    while (1)
    {
      sub_88A00(buf, (v18 + 16), "", 633);
      v25 = *(*buf + 144);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v25 == 1886152041 || v25 == 1886152047)
      {
        break;
      }

      v18 = *(v18 + 8);
      if (v18 == a2)
      {
        goto LABEL_50;
      }
    }

    v27 = 1;
  }

  v28 = *(a2 + 16);
  if (v28)
  {
    v29 = v20;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    if (!v28)
    {
      v30 = 1919183219;
      goto LABEL_90;
    }

LABEL_79:
    v31 = v49;
    if (!v24)
    {
      goto LABEL_80;
    }

LABEL_61:
    if (v31 == 1920167273)
    {
      v32 = *(a2 + 8);
      if (v32 == a2)
      {
LABEL_67:
        v34 = sub_5544(18);
        v31 = 1918989668;
        v35 = *v34;
        if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&v52, 0x72736D69u);
          v36 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
          v37 = v52.__r_.__value_.__r.__words[0];
          sub_22170(__p, 0x72617564u);
          v38 = &v52;
          if (v36 < 0)
          {
            v38 = v37;
          }

          if (v51 >= 0)
          {
            v39 = __p;
          }

          else
          {
            v39 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 655;
          *&buf[18] = 2080;
          *&buf[20] = v38;
          *&buf[28] = 2080;
          *&buf[30] = v39;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device activation reason %s requested but no BT ports that support it. Using reason %s instead.", buf, 0x26u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          v31 = 1918989668;
        }
      }

      else
      {
        while (1)
        {
          sub_88A00(buf, (v32 + 16), "", 650);
          LOWORD(v52.__r_.__value_.__l.__data_) = 0;
          v33 = sub_34D04C(*buf, &v52);
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v33)
          {
            break;
          }

          v32 = *(v32 + 8);
          if (v32 == a2)
          {
            goto LABEL_67;
          }
        }

        v31 = 1920167273;
      }
    }

    strcpy(buf, "pshsbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v40 = sub_59410(a1);
    *(&v42 + 1) = v41;
    *&v42 = v40;
    v30 = sub_28B594(v31, ((v42 >> 32) & 0x1FFFFFFFFLL) == 0x100000001);
    goto LABEL_90;
  }

  v20 = 0;
  if (v24)
  {
    goto LABEL_79;
  }

  v31 = v49;
  if ((v27 & 1) == 0)
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      sub_8E920(&v52, a2, 1);
      v46 = (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v52 : v52.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 639;
      *&buf[18] = 2080;
      *&buf[20] = v46;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported Bluetooth profile for %s", buf, 0x1Cu);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported Bluetooth profile for %s");
  }

  if (v24)
  {
    goto LABEL_61;
  }

LABEL_80:
  if (v27)
  {
    if (v31 == 1919115628)
    {
LABEL_86:
      v30 = 2;
      goto LABEL_90;
    }

    if (v31 == 1936090482 || v31 == 1919117428)
    {
      if (!v48 || sub_346C5C(1886152041, a2))
      {
        goto LABEL_86;
      }

      v30 = 3;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 1918989668;
  }

LABEL_90:
  LOBYTE(__p[0]) = v20;
  BYTE1(__p[0]) = v24;
  BYTE2(__p[0]) = v27;
  HIDWORD(__p[0]) = v30;
  __p[1] = a3;
  v51 = a1;
  if (dispatch_get_specific("ProfileChangeQueueKey") == "ProfileChangeQueueKey")
  {
    sub_40BE70(__p);
  }

  else
  {
    v43 = *(a1 + 1136);
    v52.__r_.__value_.__r.__words[0] = __p;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_40C0D0;
    *&buf[24] = &unk_6D2308;
    *&buf[32] = &v52;
    dispatch_sync(v43, buf);
  }
}

void sub_40BBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_40BE70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 == 1)
  {
    v3 = *(a1 + 4);
    v4 = *(a1 + 16);
    v5 = 1952539500;
LABEL_18:
    sub_40C3C0(v4, v5, v3);
    goto LABEL_19;
  }

  if (*(a1 + 1) == 1)
  {
    v6 = atomic_load(v2 + 282);
    if (!v6 || v2[283] == 1919183219 || (v7 = atomic_load(v2 + 156), v7 != 1953719151) || *(*(a1 + 8) + 5) == 1)
    {
      v3 = *(a1 + 4);
      v4 = *(a1 + 16);
      v5 = 1953719151;
      goto LABEL_18;
    }
  }

  else if (*(a1 + 2) == 1)
  {
    sub_40B3C0(buf, v2, 0x6C656361u);
    v8 = *buf;
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v8)
    {
      v3 = *(a1 + 4);
      v4 = v2;
      v5 = 1818583905;
      goto LABEL_18;
    }

    sub_40B3C0(buf, v2, 0x746C6561u);
    v9 = *buf;
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v9)
    {
      v3 = *(a1 + 4);
      v4 = v2;
      v5 = 1953260897;
      goto LABEL_18;
    }
  }

LABEL_19:
  if ((*a1 & 1) != 0 || (*(a1 + 1) & 1) != 0 || *(a1 + 2) == 1)
  {
    atomic_fetch_add(v2 + 282, 1u);
  }

  else
  {
    atomic_fetch_add(v2 + 282, 0xFFFFFFFF);
    atomic_load(v2 + 282);
  }

  v10 = sub_5544(18);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = atomic_load(v2 + 156);
    sub_22170(__p, v12);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = atomic_load(v2 + 282);
    *buf = 136315906;
    *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 729;
    v18 = 2080;
    v19 = v13;
    v20 = 1024;
    v21 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth profile: %s, active count: %u", buf, 0x22u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_40C3C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  inQualifierData = a3;
  inData = a2;
  dispatch_assert_queue_V2(*(a1 + 1136));
  v5 = sub_5544(18);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 268);
    sub_22170(&v76, a2);
    v8 = v78;
    v9 = v76;
    sub_22170(&__p, inQualifierData);
    v10 = &v76;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v84 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 127;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = v10;
    *&buf[34] = 2080;
    *&buf[36] = p_p;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting profile for %u to %s (%s)", buf, 0x2Cu);
    if (SHIBYTE(v84) < 0)
    {
      operator delete(__p);
    }

    if (v78 < 0)
    {
      operator delete(v76);
    }
  }

  v12 = *(a1 + 268);
  strcpy(buf, "pcvabolg");
  buf[9] = 0;
  *&buf[10] = 0;
  if (!AudioObjectSetPropertyData(v12, buf, 4u, &inQualifierData, 4u, &inData))
  {
    v13 = *(a1 + 268);
    strcpy(buf, "pcvabolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v14 = sub_40D254(1, v13, buf, 4u, &inQualifierData, &inData, 3200);
    if (!v14)
    {
      v20 = inQualifierData;
      atomic_store(inData, (a1 + 624));
      *(a1 + 1132) = v20;
      v21 = sub_5544(18);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 268);
        sub_22170(&v76, inData);
        v24 = v78;
        v25 = v76;
        sub_22170(&__p, inQualifierData);
        v26 = &v76;
        if (v24 < 0)
        {
          v26 = v25;
        }

        if (v84 >= 0)
        {
          v27 = &__p;
        }

        else
        {
          v27 = __p;
        }

        *buf = 136316162;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 149;
        *&buf[18] = 1024;
        *&buf[20] = v23;
        *&buf[24] = 2080;
        *&buf[26] = v26;
        *&buf[34] = 2080;
        *&buf[36] = v27;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Done setting %u to %s (%s)", buf, 0x2Cu);
        if (SHIBYTE(v84) < 0)
        {
          operator delete(__p);
        }

        if (v78 < 0)
        {
          operator delete(v76);
        }
      }

      v28 = atomic_load((a1 + 624));
      sub_40B3C0(&v72, a1, v28);
      if (v72)
      {
        v29 = atomic_load((a1 + 624));
        v74 = v29;
        v30 = (v72 + 3);
        *buf = &v74;
        *&buf[8] = v72;
        if (atomic_load_explicit(v72 + 3, memory_order_acquire) != -1)
        {
          v76 = buf;
          valuePtr = &v76;
          std::__call_once(v30, &valuePtr, sub_38D51C);
        }
      }

      v31 = atomic_load((a1 + 624));
      if (v31 == 1953260897 || (v32 = atomic_load((a1 + 624)), v32 == 1818583905))
      {
        v33 = inQualifierData;
        LODWORD(valuePtr) = inQualifierData;
        dispatch_assert_queue_V2(*(a1 + 1136));
        v34 = sub_5544(21);
        v35 = *v34;
        if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(&v76, (a1 + 8));
          v36 = v78 >= 0 ? &v76 : v76;
          *buf = 136315906;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 309;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          *&buf[24] = 2080;
          *&buf[26] = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting BTLE content type %u on device %s", buf, 0x22u);
          if (v78 < 0)
          {
            operator delete(v76);
          }
        }

        strcpy(buf, "tcabbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v37 = sub_147610(a1);
        if (v37)
        {
          v38 = v37;
          v39 = sub_5544(18);
          v40 = sub_5544(29);
          v41 = 0;
          *buf = 0x100000002;
          v42 = *(v39 + 8);
          while (1)
          {
            v43 = *&buf[v41];
            if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
            {
              break;
            }

            v41 += 4;
            if (v41 == 8)
            {
              goto LABEL_78;
            }
          }

          if ((v42 & v43) == 0)
          {
            v39 = v40;
          }

LABEL_78:
          v57 = *v39;
          if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(&v76, 0x62616374u);
            v58 = v78;
            v59 = v76;
            sub_22170(&__p, v38);
            v60 = &v76;
            if (v58 < 0)
            {
              v60 = v59;
            }

            if (v84 >= 0)
            {
              v61 = &__p;
            }

            else
            {
              v61 = __p;
            }

            *buf = 136315906;
            *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 316;
            *&buf[18] = 2080;
            *&buf[20] = v60;
            *&buf[28] = 2080;
            *&buf[30] = v61;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to set property %s on BT. Error: %s", buf, 0x26u);
            if (SHIBYTE(v84) < 0)
            {
              operator delete(__p);
            }

            if (v78 < 0)
            {
              operator delete(v76);
            }
          }
        }
      }

      else if (*(a1 + 520) == 1)
      {
        if (_os_feature_enabled_impl())
        {
          v56 = atomic_load((a1 + 624));
          if (v56 == 1953719151)
          {
            sub_40DDC8(a1);
          }
        }
      }

      if (_os_feature_enabled_impl())
      {
        sub_2820();
        sub_26C0(&unk_6FCDC8);
        v62 = qword_6FCF00 ? *(*(*(qword_6FCEF8 + 24) + 16) + 16) : 0;
        sub_3174(&unk_6FCDC8);
        if (v62)
        {
          std::mutex::lock((v62 + 296));
          memset(buf, 0, 24);
          sub_1215C(buf, *(v62 + 360), *(v62 + 368), (*(v62 + 368) - *(v62 + 360)) >> 3);
          std::mutex::unlock((v62 + 296));
          v63 = *buf;
          v64 = *&buf[8];
          if (*buf != *&buf[8])
          {
            v65 = *(a1 + 1132);
            sub_88CE8(&__p, "Studio Mic Active");
            LODWORD(valuePtr) = v65 == 1634562153;
            cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            v76 = &__p;
            v77 = &dword_0 + 1;
            valuePtr = sub_69CE8(&v76);
            sub_A9D34(&valuePtr, v63, v64, 17, 5);
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (__p)
            {
              CFRelease(__p);
            }
          }

          if (v63)
          {
            operator delete(v63);
          }
        }
      }

      goto LABEL_111;
    }

    v15 = sub_5544(18);
    v16 = sub_5544(29);
    v17 = 0;
    *buf = 0x100000002;
    v18 = *(v15 + 8);
    while (1)
    {
      v19 = *&buf[v17];
      if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
      {
        break;
      }

      v17 += 4;
      if (v17 == 8)
      {
        goto LABEL_48;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_48:
    v44 = *v15;
    if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = &v76;
      sub_22170(&v76, v14);
      if (v78 < 0)
      {
        v45 = v76;
      }

      sub_22170(&__p, 0x61766370u);
      v46 = SHIBYTE(v84);
      v47 = __p;
      sub_22170(v70, inData);
      v48 = &__p;
      if (v46 < 0)
      {
        v48 = v47;
      }

      if (v71 >= 0)
      {
        v49 = v70;
      }

      else
      {
        v49 = v70[0];
      }

      *buf = 136316418;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 205;
      *&buf[18] = 1024;
      *&buf[20] = v14;
      *&buf[24] = 2080;
      *&buf[26] = v45;
      *&buf[34] = 2080;
      *&buf[36] = v48;
      v86 = 2080;
      *v87 = v49;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error %d ('%s'), while synchronizing on %s property setting it to %s.", buf, 0x36u);
      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(__p);
      }

      if (v78 < 0)
      {
        operator delete(v76);
      }
    }

    sub_40B3C0(&v72, a1, inData);
    v50 = v72;
    if (!v72)
    {
LABEL_111:
      if (v73)
      {
        sub_1A8C0(v73);
      }

      return;
    }

    v51 = (*(*v72 + 96))(v72);
    sub_DB458(&v76, v51);
    v52 = v50[2];
    if (v52)
    {
      v53 = std::__shared_weak_count::lock(v52);
      if (v53)
      {
        v54 = v53;
        v55 = v50[1];
        if (v55)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          memset(buf, 0, 24);
          strcpy(&buf[24], "cwdv");
          buf[32] = 0;
          *&buf[40] = 3;
          v88[0] = 0;
          v88[1] = 0;
          *&v87[2] = v88;
          v91 = 0;
          v92 = 0;
          v90 = 0;
          v89 = 44731050;
          sub_161C7C(&__p, v55, buf);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(v90);
          }

          sub_477A0(v88[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          sub_1A8C0(v54);
          sub_1A8C0(v54);
          goto LABEL_106;
        }

        sub_1A8C0(v53);
      }
    }

    __p = &__p;
    cf = &__p;
    v84 = 0;
LABEL_106:
    if (v81 < 0)
    {
      operator delete(v80);
    }

    sub_477A0(v79);
    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v66 = sub_809C0();
    sub_258778(v66, &__p, 1919971701);
    sub_65310(&__p);
    goto LABEL_111;
  }
}

uint64_t sub_40D254(int a1, AudioObjectID a2, uint64_t a3, UInt32 a4, const void *a5, _DWORD *a6, uint64_t a7)
{
  v13 = sub_5544(14);
  if ((*(v13 + 8) & 1) != 0 && *v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    v56.__cv_.__sig = *a3;
    *v56.__cv_.__opaque = *(a3 + 8);
    sub_22CE0(&v57);
  }

  buf = *a3;
  if (AudioObjectHasProperty(a2, &buf))
  {
    memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
    v57.__m_.__sig = 850045863;
    memset(v56.__cv_.__opaque, 0, sizeof(v56.__cv_.__opaque));
    v56.__cv_.__sig = 1018212795;
    v48 = 0;
    sub_745E8(v47, a2, a3, &v56, &v57, &v48);
    v42 = a2;
    v43 = *a3;
    v44 = *(a3 + 8);
    v45 = a4;
    v46 = a5;
    if (!a1)
    {
      buf = *a3;
      if (!sub_66E40(a2, &buf))
      {
        v30 = sub_5544(14);
        v18 = 1852797029;
        if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v39 = *a3;
          v40 = *(a3 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_59;
      }

      v19 = sub_40E6EC(&v42);
      if (!HIDWORD(v19) && *a6 == v19)
      {
        v20 = sub_5544(14);
        if ((*(v20 + 8) & 1) == 0)
        {
          goto LABEL_58;
        }

        v16 = *v20;
        if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_58;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v50 = 1024;
        v51 = 294;
        v52 = 1024;
        LODWORD(v53) = a2;
        goto LABEL_23;
      }

      v34 = sub_5544(14);
      if ((*(v34 + 8) & 1) != 0 && *v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
      {
        v39 = *a3;
        v40 = *(a3 + 8);
        sub_22CE0(__p);
      }

      buf = *a3;
      v18 = AudioObjectSetPropertyData(a2, &buf, a4, a5, 4u, a6);
      if (v18)
      {
        v35 = sub_5544(14);
        if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v18);
          v37 = *a3;
          v38 = *(a3 + 8);
          sub_22CE0(&v39);
        }

        goto LABEL_59;
      }
    }

    v14 = sub_40E6EC(&v42);
    if (!HIDWORD(v14) && *a6 == v14)
    {
      v15 = sub_5544(14);
      if ((*(v15 + 8) & 1) == 0)
      {
        goto LABEL_58;
      }

      v16 = *v15;
      if (!*v15 || !os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_58;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v50 = 1024;
      v51 = 322;
      v52 = 1024;
      LODWORD(v53) = a2;
LABEL_23:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_58:
      v18 = 0;
LABEL_59:
      sub_73C20(v47);
      std::condition_variable::~condition_variable(&v56);
      std::mutex::~mutex(&v57);
      return v18;
    }

LABEL_24:
    v21 = sub_40E6EC(&v42);
    v18 = HIDWORD(v21);
    if (HIDWORD(v21))
    {
      goto LABEL_59;
    }

    if (*a6 == v21)
    {
      v31 = sub_5544(14);
      if ((*(v31 + 8) & 1) != 0 && *v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v39 = *a3;
        v40 = *(a3 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_58;
    }

    if (a7 <= 0)
    {
      v33 = sub_5544(14);
      v18 = 2003329396;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        v39 = *a3;
        v40 = *(a3 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_59;
    }

    v22.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v23 = sub_5544(14);
    if (*(v23 + 8))
    {
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v50 = 1024;
          v51 = 354;
          v52 = 2080;
          v53 = "with timeout";
          v54 = 1024;
          v55 = a2;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v57;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v57);
    v25.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v48 & 1) != 0 || v25.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_48:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        a7 += (std::chrono::system_clock::now().__d_.__rep_ - v22.__d_.__rep_) / -1000;
        goto LABEL_24;
      }

      v26.__d_.__rep_ = v25.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v26.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_47:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v25.__d_.__rep_)
      {
        goto LABEL_48;
      }
    }

    std::chrono::steady_clock::now();
    v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v27.__d_.__rep_)
    {
      v28 = 0;
      goto LABEL_45;
    }

    if (v27.__d_.__rep_ < 1)
    {
      if (v27.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v28 = 0x8000000000000000;
        goto LABEL_45;
      }
    }

    else if (v27.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_43;
    }

    v28 = 1000 * v27.__d_.__rep_;
LABEL_43:
    if (v28 > (v26.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v29.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_46:
      std::condition_variable::__do_timed_wait(&v56, &buf, v29);
      std::chrono::steady_clock::now();
      goto LABEL_47;
    }

LABEL_45:
    v29.__d_.__rep_ = v28 + v26.__d_.__rep_;
    goto LABEL_46;
  }

  v17 = sub_5544(14);
  v18 = 2003332927;
  if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    v56.__cv_.__sig = *a3;
    *v56.__cv_.__opaque = *(a3 + 8);
    sub_22CE0(&v57);
  }

  return v18;
}

void sub_40DD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v17 - 216));
  std::mutex::~mutex((v17 - 168));
  _Unwind_Resume(a1);
}

void sub_40DDC8(uint64_t a1)
{
  if ((*(a1 + 520) & 1) == 0)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_BluetoothUnified_Aspen.cpp";
      v29 = 1024;
      v30 = 323;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  dispatch_assert_queue_V2(*(a1 + 1136));
  v2 = *(a1 + 1132) == 1634562153;
  v3 = sub_5544(21);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(inData, 0x61616965u);
    v5 = v27;
    v6 = inData[0];
    sub_23148(__p, (a1 + 8));
    v7 = inData;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if (v25 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    buf.mSelector = 136316162;
    *&buf.mScope = "Device_BluetoothUnified_Aspen.cpp";
    v29 = 1024;
    v30 = 330;
    v31 = 2080;
    v32 = v7;
    v33 = 1024;
    LODWORD(v34[0]) = v2;
    WORD2(v34[0]) = 2080;
    *(v34 + 6) = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting port property %s to %d on simulated device %s.", &buf, 0x2Cu);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(inData[0]);
    }
  }

  v9 = *(a1 + 268);
  LODWORD(inData[0]) = v2;
  strcpy(&buf, "eiaabolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v10 = AudioObjectSetPropertyData(v9, &buf, 0, 0, 4u, inData);
  if (v10)
  {
    v11 = sub_5544(18);
    v12 = sub_5544(29);
    v13 = 0;
    *&buf.mSelector = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *(&buf.mSelector + v13);
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_20;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_20:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(inData, 0x61616965u);
      v17 = v27;
      v18 = inData[0];
      sub_22170(__p, v10);
      v19 = inData;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v25 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      buf.mSelector = 136315906;
      *&buf.mScope = "Device_BluetoothUnified_Aspen.cpp";
      v29 = 1024;
      v30 = 337;
      v31 = 2080;
      v32 = v19;
      v33 = 2080;
      v34[0] = v20;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to set property %s on BT. Error: %s", &buf, 0x26u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(inData[0]);
      }
    }
  }

  sub_68E60();
  operator new();
}

void sub_40E19C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_40E1F0(uint64_t *a1)
{
  v1 = *a1;
  v16 = 1886216820;
  v18 = 0;
  v17 = 0uLL;
  sub_4625C(&v17, &v16, &v17, 1uLL);
  *v4 = v17;
  v5 = v18;
  strcpy(v6, "cwdv");
  v6[8] = 0;
  v7 = 3;
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v10 = 44739242;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_161C7C(&v14, v1, v4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v9[0]);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  for (i = v15; i != &v14; i = i[1])
  {
    sub_25704(&v17, i + 2, "", 342);
    v3 = v17;
    v19[0] = 1633773925;
    sub_1F2E44(v4, v19, 1);
    (*(*v3 + 416))(v3, v4);
    sub_4E0BC(v4);
    if (*(&v17 + 1))
    {
      sub_1A8C0(*(&v17 + 1));
    }
  }

  sub_65310(&v14);
  operator delete();
}

void sub_40E3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_46934(&a16);
  if (a2 == 3)
  {
    v33 = __cxa_begin_catch(exception_object);
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v33[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      *(v30 - 128) = 136316162;
      v37 = v30 - 160;
      *(v37 + 36) = "StandardUtilities.h";
      *(v30 - 116) = 1024;
      *(v37 + 46) = 660;
      *(v30 - 110) = 2080;
      *(v37 + 52) = p_p;
      *(v30 - 100) = 2080;
      *(v37 + 62) = "";
      *(v30 - 90) = 1024;
      *(v30 - 88) = 98;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", (v30 - 128), 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x40E388);
  }

  v38 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v39 = v38;
    v40 = sub_5544(14);
    v41 = *v40;
    if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v42 = (*(*v39 + 16))(v39);
    *(v30 - 128) = 136316162;
    v43 = v30 - 160;
    *(v43 + 36) = "StandardUtilities.h";
    *(v30 - 116) = 1024;
    *(v43 + 46) = 665;
    *(v30 - 110) = 2080;
    *(v43 + 52) = v42;
    *(v30 - 100) = 2080;
    *(v43 + 62) = "";
    *(v30 - 90) = 1024;
    *(v30 - 88) = 98;
    v44 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v45 = (v30 - 128);
    v46 = v41;
    v47 = 44;
  }

  else
  {
    v48 = sub_5544(14);
    v49 = *v48;
    if (!*v48 || !os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *(v30 - 128) = 136315906;
    v50 = v30 - 160;
    *(v50 + 36) = "StandardUtilities.h";
    *(v30 - 116) = 1024;
    *(v50 + 46) = 670;
    *(v30 - 110) = 2080;
    *(v50 + 52) = "";
    *(v30 - 100) = 1024;
    *(v50 + 62) = 98;
    v44 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v45 = (v30 - 128);
    v46 = v49;
    v47 = 34;
  }

  _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, v44, v45, v47);
  goto LABEL_17;
}

unint64_t sub_40E6EC(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_40E898(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_40E8B8(uint64_t a1, signed int a2)
{
  if (a2 <= 1886152040)
  {
    if (a2 == 1885892674)
    {
      return 0;
    }

    v2 = 1885892706;
  }

  else
  {
    if (a2 == 1886152041 || a2 == 1886216820)
    {
      return 0;
    }

    v2 = 1886152047;
  }

  if (a2 != v2)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(29);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_15;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_15:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v10 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      v18 = 1024;
      v19 = 608;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      v18 = 1024;
      v19 = 609;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_40EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_os_feature_enabled_impl())
  {
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a1;
    if (dispatch_get_specific("ProfileChangeQueueKey") == "ProfileChangeQueueKey")
    {
      sub_40EEC8(v7);
    }

    else
    {
      v6 = *(a1 + 1136);
      v8 = v7;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_40FDB0;
      block[3] = &unk_6D2370;
      block[4] = &v8;
      dispatch_sync(v6, block);
    }
  }
}

void sub_40EEC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v83[0] = off_6D2338;
  v83[3] = v83;
  sub_9C674(v71, (v3 + 16), v83);
  sub_85148(v83);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_5544(2);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = atomic_load((v2 + 624));
    sub_22170(&v84, v8);
    v9 = SHIBYTE(v86);
    v10 = v84;
    sub_22170(&__p, *(v2 + 1132));
    v11 = &v84;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v82 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 257;
    v88 = 2080;
    *v89 = v11;
    *&v89[8] = 2080;
    *&v89[10] = p_p;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current profile: %s, current activation reason: %s", buf, 0x26u);
    if (v82 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v86) < 0)
    {
      operator delete(v84);
    }
  }

  v13 = *v5;
  *buf = off_6D25B0;
  *&v89[4] = buf;
  sub_9C674(&v84, (v13 + 16), buf);
  sub_85148(buf);
  sub_4B4674(&__p, v2);
  v14 = v81;
  v78 = 0;
  v79 = 0;
  v77 = &v78;
  v15 = &v78;
  if (v81 != &__p)
  {
    do
    {
      sub_8470C(&v77, &v78, v14 + 2);
      v14 = v14[1];
    }

    while (v14 != &__p);
    v15 = v77;
  }

  v72[0] = v72;
  v72[1] = v72;
  v73 = 0;
  v75 = v15;
  v76 = v84;
  for (i = 0; v75 != &v78; v15 = v75)
  {
    v16 = v76;
    v76 = sub_272CA4(v76, &v85, v15 + 4);
    sub_4100A0(v76 == v16, &v76, &v75, v72, &i);
    if (v76 == &v85)
    {
      break;
    }

    v17 = v75;
    v75 = sub_272CA4(v75, &v78, v76 + 4);
    sub_4100A0(v75 == v17, &v76, &v75, v72, &i);
  }

  v18 = 0;
  v19 = *(v5 + 2);
  if (v19 > 1668313714)
  {
    if (v19 == 1668703084 || v19 == 1668576377)
    {
      goto LABEL_39;
    }

    v20 = 29299;
  }

  else
  {
    if (v19 == 1668301427 || v19 == 1668309362)
    {
      goto LABEL_26;
    }

    v20 = 29250;
  }

  if (v19 != (v20 | 0x63700000))
  {
    goto LABEL_56;
  }

LABEL_26:
  v18 = 0;
  v21 = *(v5 + 3);
  if (v21 > 1919776354)
  {
    if (v21 > 1987081832)
    {
      if (v21 == 1987081839)
      {
        goto LABEL_39;
      }

      v23 = 30313;
    }

    else
    {
      if (v21 == 1919776355)
      {
        goto LABEL_39;
      }

      v23 = 26467;
    }

    v22 = v23 | 0x76700000;
LABEL_38:
    if (v21 != v22)
    {
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  if (v21 > 1768779618)
  {
    if (v21 == 1768779619)
    {
      goto LABEL_39;
    }

    v22 = 1768781411;
    goto LABEL_38;
  }

  if (v21 != 1735222132)
  {
    v22 = 1768057203;
    goto LABEL_38;
  }

LABEL_39:
  if (*(v2 + 585) == 1)
  {
    v18 = 0;
    if (*(v2 + 1132) == 1919183219 && v86 && v73)
    {
      v24 = *v4;
      v25 = v4[1];
      if (*v4 == v25)
      {
        v18 = 1;
      }

      else
      {
        while (2)
        {
          for (j = *(v24 + 16); j != (v24 + 8); j = j[1])
          {
            v27 = j[3];
            if (!v27)
            {
              goto LABEL_55;
            }

            v28 = std::__shared_weak_count::lock(v27);
            if (!v28)
            {
              goto LABEL_55;
            }

            v29 = j[2];
            if (!v29)
            {
              sub_1A8C0(v28);
              goto LABEL_55;
            }

            v30 = *(v29 + 184);
            sub_1A8C0(v28);
            if ((v30 & 0x20) == 0)
            {
              goto LABEL_55;
            }
          }

          v24 += 56;
          v18 = 1;
          if (v24 != v25)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
LABEL_55:
    v18 = 0;
  }

LABEL_56:
  sub_65310(v72);
  sub_4B0F4(v78);
  sub_65310(&__p);
  sub_4B0F4(v85);
  if (!v18)
  {
    goto LABEL_120;
  }

  v31 = *(a1 + 8);
  if (*(v31 + 8) != 1668703084)
  {
    v33 = sub_102988(*(v31 + 12));
    if (*(v31 + 268) != 1)
    {
      v32 = v33;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (*(v31 + 268))
  {
LABEL_61:
    v32 = *(v31 + 264);
    goto LABEL_63;
  }

  v32 = 1919115628;
LABEL_63:
  strcpy(buf, "pshsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v34 = sub_59410(v2);
  *(&v36 + 1) = v35;
  *&v36 = v34;
  v37 = sub_28B594(v32, ((v36 >> 32) & 0x1FFFFFFFFLL) == 0x100000001);
  v38 = sub_5544(2);
  v39 = *v38;
  if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(&v84, 0x7473636Fu);
    v40 = SHIBYTE(v86);
    v41 = v84;
    sub_22170(&__p, v37);
    v42 = &v84;
    if (v40 < 0)
    {
      v42 = v41;
    }

    if (v82 >= 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    *buf = 136315906;
    *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 762;
    v88 = 2080;
    *v89 = v42;
    *&v89[8] = 2080;
    *&v89[10] = v43;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Upcoming profile: %s, upcoming activation reason: %s", buf, 0x26u);
    if (v82 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v86) < 0)
    {
      operator delete(v84);
    }
  }

  if (v37 != 1920364387)
  {
    v44 = atomic_load((v2 + 624));
    if (v44 != 1953719151 || *(v2 + 1132) != v37)
    {
      dispatch_assert_queue_V2(*(v2 + 1136));
      sub_40C3C0(v2, 0x7473636Fu, v37);
      v45 = sub_5544(18);
      v46 = *v45;
      if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v2 + 268);
        sub_22170(&__p, 0x7473636Fu);
        v48 = v82;
        v49 = __p;
        sub_22170(&v84, v37);
        v50 = &__p;
        if (v48 < 0)
        {
          v50 = v49;
        }

        if (v86 >= 0)
        {
          v51 = &v84;
        }

        else
        {
          v51 = v84;
        }

        *buf = 136316162;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        v88 = 1024;
        *v89 = v47;
        *&v89[4] = 2080;
        *&v89[6] = v50;
        *&v89[14] = 2080;
        *&v89[16] = v51;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-setting profile for %u to %s (%s)", buf, 0x2Cu);
        if (SHIBYTE(v86) < 0)
        {
          operator delete(v84);
        }

        if (v82 < 0)
        {
          operator delete(__p);
        }
      }

      sub_88CE8(buf, "profileType");
      LODWORD(__p) = 1953719151;
      *&buf[8] = CFNumberCreate(0, kCFNumberIntType, &__p);
      if (!*&buf[8])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      sub_88CE8(&buf[16], "Reason");
      LODWORD(__p) = v37;
      *&v89[4] = CFNumberCreate(0, kCFNumberIntType, &__p);
      if (!*&v89[4])
      {
        v70 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v70, "Could not construct");
      }

      v84 = buf;
      v85 = (&dword_0 + 2);
      v52 = sub_69CE8(&v84);
      v53 = 0;
      v72[0] = v52;
      do
      {
        v54 = *&v89[v53 + 4];
        if (v54)
        {
          CFRelease(v54);
        }

        v55 = *&buf[v53 + 16];
        if (v55)
        {
          CFRelease(v55);
        }

        v53 -= 16;
      }

      while (v53 != -32);
      LODWORD(v76) = 1;
      v56 = *(v2 + 268);
      strcpy(buf, "dbobbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v57 = sub_40D254(0, v56, buf, 8u, v52, &v76, 2000);
      if (v57)
      {
        v58 = sub_5544(18);
        v59 = sub_5544(29);
        v60 = 0;
        *buf = 0x100000002;
        v61 = *(v58 + 8);
        while (1)
        {
          v62 = *&buf[v60];
          if (((v61 & v62) != 0) != ((*(v59 + 8) & v62) != 0))
          {
            break;
          }

          v60 += 4;
          if (v60 == 8)
          {
            goto LABEL_103;
          }
        }

        if ((v61 & v62) == 0)
        {
          v58 = v59;
        }

LABEL_103:
        v63 = *v58;
        if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&v84, v57);
          if (v86 >= 0)
          {
            v64 = &v84;
          }

          else
          {
            v64 = v84;
          }

          sub_22170(&__p, 0x626F6264u);
          v65 = v82;
          v66 = __p;
          sub_22170(&v77, 0x7473636Fu);
          v67 = &__p;
          if (v65 < 0)
          {
            v67 = v66;
          }

          if (v79 >= 0)
          {
            v68 = &v77;
          }

          else
          {
            v68 = v77;
          }

          *buf = 136316418;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 247;
          v88 = 1024;
          *v89 = v57;
          *&v89[4] = 2080;
          *&v89[6] = v64;
          *&v89[14] = 2080;
          *&v89[16] = v67;
          v90 = 2080;
          v91 = v68;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error %d ('%s'), while synchronizing on %s property setting it to %s.", buf, 0x36u);
          if (SHIBYTE(v79) < 0)
          {
            operator delete(v77);
          }

          if (v82 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v86) < 0)
          {
            operator delete(v84);
          }
        }
      }

      CFRelease(v52);
    }
  }

LABEL_120:
  sub_4B0F4(v71[1]);
}

void sub_40F930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, int a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, char a42, char a43, int a44, __int16 a45, int a46, __int16 a47, __int16 a48, int a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (v51 < 0)
  {
    operator delete(v49);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  sub_4BA7C(&a13);
  if (a2 == 3)
  {
    v54 = __cxa_begin_catch(exception_object);
    v55 = sub_5544(14);
    v56 = *v55;
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&a19, v54[2]);
      v57 = a19;
      if (a24 >= 0)
      {
        v57 = &a19;
      }

      LODWORD(__p) = 136316162;
      *(v50 + 4) = "StandardUtilities.h";
      a37 = 1024;
      *(v50 + 14) = 660;
      a40 = 2080;
      *(v50 + 20) = v57;
      a45 = 2080;
      *(v50 + 30) = "";
      a48 = 1024;
      a49 = 248;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &__p, 0x2Cu);
      if (a24 < 0)
      {
        operator delete(a19);
      }
    }

LABEL_21:
    __cxa_end_catch();
    JUMPOUT(0x40F874);
  }

  v58 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v59 = v58;
    v60 = sub_5544(14);
    v61 = *v60;
    if (!*v60 || !os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v62 = (*(*v59 + 16))(v59);
    LODWORD(__p) = 136316162;
    *(v50 + 4) = "StandardUtilities.h";
    a37 = 1024;
    *(v50 + 14) = 665;
    a40 = 2080;
    *(v50 + 20) = v62;
    a45 = 2080;
    *(v50 + 30) = "";
    a48 = 1024;
    a49 = 248;
    v63 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v64 = v61;
    v65 = 44;
  }

  else
  {
    v66 = sub_5544(14);
    v67 = *v66;
    if (!*v66 || !os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LODWORD(__p) = 136315906;
    *(v50 + 4) = "StandardUtilities.h";
    a37 = 1024;
    *(v50 + 14) = 670;
    a40 = 2080;
    *(v50 + 20) = "";
    a45 = 1024;
    *(v50 + 30) = 248;
    v63 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v64 = v67;
    v65 = 34;
  }

  _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, v63, &__p, v65);
  goto LABEL_21;
}

uint64_t sub_4100A0(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      v5 = *a2;
      sub_652A0();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a5 = v6;
  return result;
}

unint64_t sub_4102B0(uint64_t a1)
{
  v1 = atomic_load((a1 + 624));
  sub_40B3C0(&v11, a1, v1);
  if (v11)
  {
    v2 = (*(*v11 + 88))(v11);
    v3 = v2 & 0xFF00000000;
    v4 = v2;
  }

  else
  {
    v5 = sub_5544(18);
    v6 = sub_5544(29);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_9;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_9:
    v4 = *v5;
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        v14 = 1024;
        v15 = 778;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile", buf, 0x12u);
      }

      v4 = 0;
    }

    v3 = 0x100000000;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }

  return v3 | v4;
}

void sub_41042C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_410718(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_410738(void *a1)
{
  v2 = a1[67];
  v3 = a1[69];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v3);
  }

  v4 = a1[142];
  operator new();
}

uint64_t *sub_4107DC(uint64_t *a1)
{
  v85 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (v4)
      {
        LODWORD(v93) = *(v4 + 268);
        inAddress = 0x676C6F6261766170;
        LODWORD(inAddress_8) = 0;
        sub_6A8C4(buf, &v93, &inAddress);
        v83 = v3;
        if ((buf[16] & 1) != 0 && (v5 = *&buf[8], (__p.__r_.__value_.__r.__words[0] = *&buf[8]) != 0))
        {
          sub_6AADC(&v87, *&buf[8]);
          CFRelease(v5);
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v89 = 0;
        }

        v13 = sub_5544(18);
        v14 = sub_5544(29);
        v15 = 0;
        *buf = 0x100000002;
        v16 = *(v13 + 8);
        while (1)
        {
          v17 = *&buf[v15];
          if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
          {
            break;
          }

          v15 += 4;
          if (v15 == 8)
          {
            goto LABEL_27;
          }
        }

        if ((v16 & v17) == 0)
        {
          v13 = v14;
        }

LABEL_27:
        v18 = *v13;
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(&inAddress, (v4 + 8));
          v19 = v92;
          v20 = inAddress;
          sub_10898C(&__p, v87, v88);
          p_inAddress = &inAddress;
          if (v19 < 0)
          {
            p_inAddress = v20;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 805;
          v96 = 2080;
          v97 = p_inAddress;
          v98 = 2080;
          v99 = p_p;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device (%s), new profiles: %s", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v92 < 0)
          {
            operator delete(inAddress);
          }
        }

        v23 = v87;
        v84 = v88;
        if (v87 != v88)
        {
          v24 = (v4 + 640);
          do
          {
            v25 = *v24;
            if (!*v24)
            {
              goto LABEL_48;
            }

            v26 = *v23;
            v27 = v4 + 640;
            do
            {
              v28 = *(v25 + 32);
              v29 = v28 >= v26;
              v30 = v28 < v26;
              if (v29)
              {
                v27 = v25;
              }

              v25 = *(v25 + 8 * v30);
            }

            while (v25);
            if (v27 == v24 || v26 < *(v27 + 32))
            {
LABEL_48:
              v31 = sub_5544(18);
              v32 = sub_5544(29);
              v33 = 0;
              *buf = 0x100000002;
              v34 = *(v31 + 8);
              while (1)
              {
                v35 = *&buf[v33];
                if (((v34 & v35) != 0) != ((*(v32 + 8) & v35) != 0))
                {
                  break;
                }

                v33 += 4;
                if (v33 == 8)
                {
                  goto LABEL_54;
                }
              }

              if ((v34 & v35) == 0)
              {
                v31 = v32;
              }

LABEL_54:
              v36 = *v31;
              if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(&inAddress, *v23);
                v37 = &inAddress;
                if (v92 < 0)
                {
                  v37 = inAddress;
                }

                *buf = 136315650;
                *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 818;
                v96 = 2080;
                v97 = v37;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profile added: %s", buf, 0x1Cu);
                if (v92 < 0)
                {
                  operator delete(inAddress);
                }
              }

              v38 = *v23;
              dispatch_assert_queue_V2(*(v4 + 1136));
              if (v38 > 1953260896)
              {
                if (v38 == 1953260897)
                {
LABEL_71:
                  v43 = *(v4 + 536);
                  v44 = *(v4 + 552);
                  if (v44)
                  {
                    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v44);
                  }

                  operator new();
                }

                if (v38 == 1953719151)
                {
                  v41 = *(v4 + 536);
                  v42 = *(v4 + 552);
                  if (v42)
                  {
                    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v42);
                  }

                  inAddress = v41;
                  inAddress_8 = v42;
                  operator new();
                }
              }

              else
              {
                if (v38 == 1818583905)
                {
                  goto LABEL_71;
                }

                if (v38 == 1952539500)
                {
                  v39 = *(v4 + 536);
                  v40 = *(v4 + 552);
                  if (v40)
                  {
                    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v40);
                  }

                  operator new();
                }
              }

              v45 = sub_5544(18);
              v46 = sub_5544(29);
              v47 = 0;
              *buf = 0x100000002;
              v48 = *(v45 + 8);
              while (1)
              {
                v49 = *&buf[v47];
                if (((v48 & v49) != 0) != ((*(v46 + 8) & v49) != 0))
                {
                  break;
                }

                v47 += 4;
                if (v47 == 8)
                {
                  goto LABEL_82;
                }
              }

              if ((v48 & v49) == 0)
              {
                v45 = v46;
              }

LABEL_82:
              v50 = *v45;
              if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(&inAddress, v38);
                v51 = &inAddress;
                if (v92 < 0)
                {
                  v51 = inAddress;
                }

                *buf = 136315650;
                *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 869;
                v96 = 2080;
                v97 = v51;
                _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unsupported Bluetooth profile %s", buf, 0x1Cu);
                if (v92 < 0)
                {
                  operator delete(inAddress);
                }
              }
            }

            ++v23;
          }

          while (v23 != v84);
          v23 = v87;
        }

        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
        v52 = *(v4 + 632);
        v53 = (v4 + 640);
        if (v52 != (v4 + 640))
        {
          v54 = v88;
          do
          {
            if (v23 == v54)
            {
LABEL_94:
              v56 = sub_5544(18);
              v57 = sub_5544(29);
              v58 = 0;
              *buf = 0x100000002;
              v59 = *(v56 + 8);
              while (1)
              {
                v60 = *&buf[v58];
                if (((v59 & v60) != 0) != ((*(v57 + 8) & v60) != 0))
                {
                  break;
                }

                v58 += 4;
                if (v58 == 8)
                {
                  goto LABEL_100;
                }
              }

              if ((v59 & v60) == 0)
              {
                v56 = v57;
              }

LABEL_100:
              v61 = *v56;
              if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(&inAddress, *(v52 + 8));
                v62 = &inAddress;
                if (v92 < 0)
                {
                  v62 = inAddress;
                }

                *buf = 136315650;
                *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 832;
                v96 = 2080;
                v97 = v62;
                _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profile removed: %s", buf, 0x1Cu);
                if (v92 < 0)
                {
                  operator delete(inAddress);
                }
              }

              sub_75788(&__p, *(v52 + 8));
            }

            else
            {
              v55 = v23;
              while (*(v52 + 8) != *v55)
              {
                if (++v55 == v54)
                {
                  goto LABEL_94;
                }
              }
            }

            v63 = v52[1];
            if (v63)
            {
              do
              {
                v64 = v63;
                v63 = *v63;
              }

              while (v63);
            }

            else
            {
              do
              {
                v64 = v52[2];
                v65 = *v64 == v52;
                v52 = v64;
              }

              while (!v65);
            }

            v52 = v64;
          }

          while (v64 != v53);
          v66 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
          {
            do
            {
              v67 = *(v66 + 28);
              dispatch_assert_queue_V2(*(v4 + 1136));
              sub_40B3C0(&v93, v4, v67);
              v68 = v93;
              if (v93)
              {
                buf[0] = 0;
                *&buf[8] = 0;
                atomic_fetch_add((sub_809C0() + 656), 1u);
                (*(*v68 + 24))(v68);
                sub_240CCC(buf);
                std::mutex::lock((v4 + 656));
                v69 = *v53;
                if (*v53)
                {
                  v70 = v4 + 640;
                  v71 = *v53;
                  do
                  {
                    v72 = *(v71 + 8);
                    v29 = v72 >= v67;
                    v73 = v72 < v67;
                    if (v29)
                    {
                      v70 = v71;
                    }

                    v71 = v71[v73];
                  }

                  while (v71);
                  if (v70 != v53 && v67 >= *(v70 + 32))
                  {
                    v74 = *(v70 + 8);
                    v75 = v70;
                    if (v74)
                    {
                      do
                      {
                        v76 = v74;
                        v74 = *v74;
                      }

                      while (v74);
                    }

                    else
                    {
                      do
                      {
                        v76 = v75[2];
                        v65 = *v76 == v75;
                        v75 = v76;
                      }

                      while (!v65);
                    }

                    if (*(v4 + 632) == v70)
                    {
                      *(v4 + 632) = v76;
                    }

                    --*(v4 + 648);
                    sub_75234(v69, v70);
                    v77 = *(v70 + 48);
                    if (v77)
                    {
                      sub_1A8C0(v77);
                    }

                    operator delete(v70);
                  }
                }

                std::mutex::unlock((v4 + 656));
              }

              else
              {
                v80 = sub_5544(18);
                v81 = *v80;
                if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_DEFAULT))
                {
                  sub_22170(&inAddress, v67);
                  v82 = v92 >= 0 ? &inAddress : inAddress;
                  *buf = 136315650;
                  *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 905;
                  v96 = 2080;
                  v97 = v82;
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profile %s not found", buf, 0x1Cu);
                  if (v92 < 0)
                  {
                    operator delete(inAddress);
                  }
                }
              }

              if (v94)
              {
                sub_1A8C0(v94);
              }

              v78 = *(v66 + 8);
              if (v78)
              {
                do
                {
                  v79 = v78;
                  v78 = v78->__r_.__value_.__r.__words[0];
                }

                while (v78);
              }

              else
              {
                do
                {
                  v79 = *(v66 + 16);
                  v65 = v79->__r_.__value_.__r.__words[0] == v66;
                  v66 = v79;
                }

                while (!v65);
              }

              v66 = v79;
            }

            while (v79 != &__p.__r_.__value_.__r.__words[1]);
            v23 = v87;
          }
        }

        sub_477A0(__p.__r_.__value_.__l.__size_);
        if (v23)
        {
          v88 = v23;
          operator delete(v23);
        }

        v3 = v83;
LABEL_18:
        sub_1A8C0(v3);
        return sub_8BE90(&v85);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = sub_5544(18);
  v7 = sub_5544(29);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_14;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_14:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 843;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profile updated for expired BT device, ignoring.", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_18;
  }

  return sub_8BE90(&v85);
}

void sub_411654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a10)
  {
    sub_1A8C0(a10);
  }

  sub_8BE90(&a16);
  _Unwind_Resume(a1);
}

void sub_411808(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D2500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4118A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D24C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_411940(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D23A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4119B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v22 = sub_5544(18);
    v23 = sub_5544(29);
    v24 = 0;
    *buf = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *&buf[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_43;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_43:
    v37 = *v22;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      v45 = 1024;
      v46 = 998;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d inNumberAddresses is 0.", buf, 0x12u);
    }
  }

  if (!a4)
  {
    v27 = sub_5544(18);
    v28 = sub_5544(29);
    v29 = 0;
    *buf = 0x100000002;
    v30 = *(v27 + 8);
    while (1)
    {
      v31 = *&buf[v29];
      if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
      {
        break;
      }

      v29 += 4;
      if (v29 == 8)
      {
        goto LABEL_48;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_48:
    v38 = *v27;
    if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      v45 = 1024;
      v46 = 999;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d inClientData is NULL.", buf, 0x12u);
    }
  }

  if (!a3)
  {
    v32 = sub_5544(18);
    v33 = sub_5544(29);
    v34 = 0;
    *buf = 0x100000002;
    v35 = *(v32 + 8);
    while (1)
    {
      v36 = *&buf[v34];
      if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
      {
        break;
      }

      v34 += 4;
      if (v34 == 8)
      {
        goto LABEL_53;
      }
    }

    if ((v35 & v36) == 0)
    {
      v32 = v33;
    }

LABEL_53:
    v39 = *v32;
    if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
      v45 = 1024;
      v46 = 1000;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d inAddresses is NULL.", buf, 0x12u);
    }
  }

  if (a3 && a2 && a4)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = a3 + 12 * v7;
      *buf = *v9;
      *&buf[8] = *(v9 + 8);
      if (sub_6FE08(a4 + 720, buf))
      {
        if (*v9 == 1987013732)
        {
          v10 = sub_5544(18);
          v11 = sub_5544(29);
          v12 = 0;
          *buf = 0x100000002;
          v13 = *(v10 + 8);
          while (1)
          {
            v14 = *&buf[v12];
            if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
            {
              break;
            }

            v12 += 4;
            if (v12 == 8)
            {
              goto LABEL_16;
            }
          }

          if ((v13 & v14) == 0)
          {
            v10 = v11;
          }

LABEL_16:
          v15 = *v10;
          if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v42, *(v9 + 4));
            v16 = v43;
            v17 = v42[0];
            v18 = *(v9 + 8);
            sub_22170(__p, HIDWORD(qword_6FC958));
            v19 = v42;
            if (v16 < 0)
            {
              v19 = v17;
            }

            v20 = __p;
            if (v41 < 0)
            {
              v20 = __p[0];
            }

            *buf = 136316418;
            *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
            v45 = 1024;
            v46 = 1020;
            v47 = 2080;
            v48 = v19;
            v49 = 1024;
            v50 = v18;
            v51 = 2080;
            v52 = v20;
            v53 = 1024;
            v54 = dword_6FC960;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received callback from HAL. (selector: kAudioDevicePropertyVolumeDecibels; scope: '%s'; element: %u) translated to (selector: kRegistrationDeviceInitiatedVolumeChangeAddress; scope: '%s'; element: %u).", buf, 0x32u);
            if (v41 < 0)
            {
              operator delete(__p[0]);
            }

            if (v43 < 0)
            {
              operator delete(v42[0]);
            }
          }
        }

        *buf = *v9;
        *&buf[8] = *(v9 + 8);
        sub_6FF5C(a4 + 720, buf);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t sub_4121FC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = sub_5544(18);
      v9 = sub_5544(29);
      v10 = 0;
      *buf = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_9;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_9:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v46, *(a3 + 12 * v6));
        v14 = SHIBYTE(v47);
        v15 = v46[0];
        sub_23148(__p, (a4 + 8));
        v16 = v46;
        if (v14 < 0)
        {
          v16 = v15;
        }

        v17 = __p;
        if (v43 < 0)
        {
          v17 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 961;
        *&buf[18] = 2080;
        *&buf[20] = v16;
        *&buf[28] = 2080;
        v51 = v17;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from bluetooth audio device with UID %s", buf, 0x26u);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46[0]);
        }
      }

      v18 = (a3 + 12 * v6);
      if (*v18 == 2004050279)
      {
        sub_40B3C0(&v44, a4, 0x7461636Cu);
        if (v44)
        {
          (*(*v44 + 80))(v44);
          v48 = 1885892674;
          v46[1] = 0;
          v47 = 0;
          v46[0] = 0;
          sub_4625C(v46, &v48, &v49, 1uLL);
          *buf = *v46;
          *&buf[16] = v47;
          strcpy(&buf[24], "cwdv");
          BYTE2(v51) = 0;
          v52 = 3;
          v54[0] = 0;
          v54[1] = 0;
          v53 = v54;
          v55 = 44739242;
          v57 = 0;
          v58 = 0;
          v56 = 0;
          sub_161C7C(__p, a4, buf);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v56);
          }

          sub_477A0(v54[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          sub_80C2C(v46, __p);
          sub_68E60();
          *buf = buf;
          *&buf[8] = buf;
          *&buf[16] = 0;
          v19 = v47;
          if (v47)
          {
            v21 = v46[0];
            v20 = v46[1];
            v22 = *(v46[0] + 1);
            v23 = *v46[1];
            *(v23 + 8) = v22;
            *v22 = v23;
            v24 = *buf;
            *(*buf + 8) = v20;
            *v20 = v24;
            v21[1] = buf;
            *buf = v21;
            *&buf[16] = v19;
            v47 = 0;
          }

          operator new();
        }

        if (v45)
        {
          sub_1A8C0(v45);
        }

        v25 = sub_5544(18);
        v26 = sub_5544(29);
        v27 = 0;
        *buf = 0x100000002;
        v28 = *(v25 + 8);
        while (1)
        {
          v29 = *&buf[v27];
          if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
          {
            break;
          }

          v27 += 4;
          if (v27 == 8)
          {
            goto LABEL_54;
          }
        }

        if ((v28 & v29) == 0)
        {
          v25 = v26;
        }

LABEL_54:
        v40 = *v25;
        if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 939;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No matching Bluetooth profile", buf, 0x12u);
        }
      }

      else
      {
        if (*v18 == 1635148144)
        {
          sub_410738(a4);
        }

        v30 = sub_5544(18);
        v31 = sub_5544(29);
        v32 = 0;
        *buf = 0x100000002;
        v33 = *(v30 + 8);
        while (1)
        {
          v34 = *&buf[v32];
          if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
          {
            break;
          }

          v32 += 4;
          if (v32 == 8)
          {
            goto LABEL_42;
          }
        }

        if ((v33 & v34) == 0)
        {
          v30 = v31;
        }

LABEL_42:
        v35 = *v30;
        if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v46, *v18);
          v36 = SHIBYTE(v47);
          v37 = v46[0];
          (*(*a4 + 128))(__p, a4);
          v38 = v46;
          if (v36 < 0)
          {
            v38 = v37;
          }

          v39 = __p;
          if (v43 < 0)
          {
            v39 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 976;
          *&buf[18] = 2080;
          *&buf[20] = v38;
          *&buf[28] = 2080;
          v51 = v39;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled notification (%s) from bluetooth audio device with UID %s", buf, 0x26u);
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v47) < 0)
          {
            operator delete(v46[0]);
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return 0;
}

void sub_41282C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_4128AC(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_65310(v1);
    operator delete();
  }

  return result;
}

uint64_t **sub_4128FC(uint64_t *a1)
{
  v8 = a1;
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[3];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = i[2];
        if (v6)
        {
          v9[0] = 2004050279;
          sub_1F2E44(v10, v9, 1);
          (*(*v6 + 416))(v6, v10);
          sub_4E0BC(v10);
        }

        sub_1A8C0(v5);
      }
    }
  }

  return sub_4128AC(&v8);
}

unsigned __int8 *sub_412CB4(unint64_t a1)
{
  v2 = sub_17D104();
  sub_4E5470(v2, a1 + 1064);
  sub_4E890();
  v3 = (*(*a1 + 120))(a1);
  sub_74D2C(v3, &qword_6FC968, sub_4119B4, a1);
  sub_4E890();
  v4 = (*(*a1 + 120))(a1);
  sub_74D2C(v4, &qword_6FC948, sub_4121FC, a1);
  sub_4E890();
  v5 = (*(*a1 + 120))(a1);
  sub_74D2C(v5, &qword_6FC938, sub_4121FC, a1);
  if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
  {
    operator new();
  }

  atomic_store(0, (a1 + 624));
  v12 = a1;
  if (dispatch_get_specific("ProfileChangeQueueKey") == "ProfileChangeQueueKey")
  {
    std::mutex::lock((a1 + 656));
    v7 = *(a1 + 632);
    if (v7 != (a1 + 640))
    {
      do
      {
        (*(*v7[5] + 24))(v7[5]);
        v8 = v7[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != (a1 + 640));
    }

    std::mutex::unlock((a1 + 656));
  }

  else
  {
    v6 = *(a1 + 1136);
    v13 = &v12;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_41325C;
    block[3] = &unk_6D22E8;
    block[4] = &v13;
    dispatch_sync(v6, block);
  }

  return sub_2EED4C(a1);
}

void sub_413210()
{
  __cxa_end_catch();
  if (v0)
  {
    sub_413624(v0);
  }

  JUMPOUT(0x412FB8);
}

void sub_41325C(uint64_t a1)
{
  v1 = ***(a1 + 32);
  std::mutex::lock((v1 + 656));
  v2 = *(v1 + 632);
  if (v2 != (v1 + 640))
  {
    do
    {
      (*(*v2[5] + 24))(v2[5]);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (v1 + 640));
  }

  std::mutex::unlock((v1 + 656));
}

void sub_413608(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_413624(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    dispatch_queue_set_specific(*a1, "VirtualAudioQueueKey", 0, 0);
  }

  operator delete();
}

BOOL sub_41368C(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (*&a2->mSelector == qword_6FC958 && a2->mElement == dword_6FC960)
  {
    v11 = v4;
    v12 = v5;
    v7 = *&a2->mSelector;
    mElement = a2->mElement;
    v9 = a3;
    v10 = a4;
    sub_185D3C((a1 + 720), &qword_6FC968, &v7);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_413720(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (*a2 == qword_6FC958 && a2[2] == dword_6FC960)
  {
    v11 = v4;
    v12 = v5;
    v7 = *a2;
    v8 = a2[2];
    v9 = a3;
    v10 = a4;
    sub_17C118((a1 + 720), &qword_6FC968, &v7);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_4137B4(unsigned int *a1, int *a2, uint64_t a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v32 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      v33 = a2[2];
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 561211770;
  }

  if (!a6)
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      v34 = a2[2];
      sub_22CE0(__p);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *a2;
      v35 = a2[2];
      sub_22CE0(__p);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 1852797029;
  }

  v12 = atomic_load(a1 + 156);
  sub_40B3C0(buf, a1, v12);
  v13 = *buf;
  if (*buf)
  {
    (*(**buf + 64))(*buf, a2, a3, a4, a5, a6);
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (!v13)
  {
    v14 = sub_5544(18);
    v15 = sub_5544(29);
    v16 = 0;
    *buf = 0x100000002;
    v17 = *(v14 + 8);
    while (1)
    {
      v18 = *&buf[v16];
      if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        goto LABEL_16;
      }
    }

    if ((v17 & v18) == 0)
    {
      v14 = v15;
    }

LABEL_16:
    v19 = *v14;
    if (v19)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 552;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile", buf, 0x12u);
      }
    }

    sub_2EEE68(a1, a2, a3, a4, a5, a6);
  }
}

void sub_413E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_413E58(unsigned int *a1, uint64_t a2, uint64_t a3, const void *a4, UInt32 *a5, int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v30 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v31 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      v32 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (*a2 == 1651794290)
  {
    v12 = a1[283];

    sub_5440C(v12, a5, a6);
  }

  else
  {
    v13 = atomic_load(a1 + 156);
    sub_40B3C0(buf, a1, v13);
    v14 = *buf;
    if (*buf)
    {
      (*(**buf + 56))(*buf, a2, a3, a4, a5, a6);
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (!v14)
    {
      v15 = sub_5544(18);
      v16 = sub_5544(29);
      v17 = 0;
      *buf = 0x100000002;
      v18 = *(v15 + 8);
      while (1)
      {
        v19 = *&buf[v17];
        if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
        {
          break;
        }

        v17 += 4;
        if (v17 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

LABEL_19:
      v20 = *v15;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 535;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile", buf, 0x12u);
      }

      sub_2F0868(a1, a2, a3, a4, a5, a6);
    }
  }
}

void sub_414408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_414428(unsigned int *a1, int *a2, uint64_t a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315394;
      *&v21[4] = "Device_BluetoothUnified_Aspen.cpp";
      *&v21[12] = 1024;
      *&v21[14] = 503;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a2 == 1651794290)
  {
    return 4;
  }

  v9 = atomic_load(a1 + 156);
  sub_40B3C0(v21, a1, v9);
  v10 = *v21;
  if (*v21)
  {
    v4 = (*(**v21 + 48))(*v21, a2, a3, a4);
  }

  if (*&v21[8])
  {
    sub_1A8C0(*&v21[8]);
  }

  if (!v10)
  {
    v11 = sub_5544(18);
    v12 = sub_5544(29);
    v13 = 0;
    *v21 = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&v21[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_15;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_15:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315394;
      *&v21[4] = "Device_BluetoothUnified_Aspen.cpp";
      *&v21[12] = 1024;
      *&v21[14] = 514;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile", v21, 0x12u);
    }

    return sub_2F1068(a1, a2, a3, a4);
  }

  return v4;
}

void sub_4146D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_414700(unsigned int *a1, int *a2)
{
  if ((*(*a1 + 16))(a1))
  {
    v5 = *a2 == 1651794290;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v2 = 0;
  }

  else
  {
    v6 = atomic_load(a1 + 156);
    sub_40B3C0(v15, a1, v6);
    v7 = *v15;
    if (*v15)
    {
      v2 = (*(**v15 + 40))(*v15, a2);
    }

    if (*&v15[8])
    {
      sub_1A8C0(*&v15[8]);
    }

    if (!v7)
    {
      v8 = sub_5544(18);
      v9 = sub_5544(29);
      v10 = 0;
      *v15 = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&v15[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_18;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_18:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136315394;
        *&v15[4] = "Device_BluetoothUnified_Aspen.cpp";
        *&v15[12] = 1024;
        *&v15[14] = 496;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile", v15, 0x12u);
      }

      v2 = sub_2F13C0(a1, a2);
    }
  }

  return v2 & 1;
}

void sub_4148E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_414900(uint64_t a1, unsigned int *a2)
{
  if (*a2 == 1651794290)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = a1;
    v4 = atomic_load((a1 + 624));
    sub_40B3C0(&v24, a1, v4);
    if (v24)
    {
      v5 = (*(*v24 + 32))(v24, a2);
    }

    else
    {
      v7 = 0;
      while (dword_5A47D0[v7] != *a2)
      {
        if (++v7 == 22)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v15 = sub_5544(18);
      v16 = sub_5544(29);
      v17 = 0;
      *buf = 0x100000002;
      v18 = *(v15 + 8);
      while (1)
      {
        v19 = *&buf[v17];
        if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
        {
          break;
        }

        v17 += 4;
        if (v17 == 8)
        {
          goto LABEL_34;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

LABEL_34:
      v20 = *v15;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, *a2);
        v21 = v23 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
        v27 = 1024;
        v28 = 467;
        v29 = 2080;
        v30 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile: calling Device::HasProperty(%s)", buf, 0x1Cu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v5 = sub_2F147C(v2, a2);
    }

    LOBYTE(v2) = v5;
    v6 = 0;
LABEL_11:
    if (v25)
    {
      sub_1A8C0(v25);
    }

    if (v6)
    {
      v8 = sub_5544(18);
      v9 = sub_5544(29);
      v10 = 0;
      *buf = 0x100000002;
      v11 = v8[1];
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_20;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_20:
      v2 = *v8;
      if (v2)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(__p, *a2);
          if (v23 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "Device_BluetoothUnified_Aspen.cpp";
          v27 = 1024;
          v28 = 474;
          v29 = 2080;
          v30 = v13;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No active Bluetooth profile: HasProperty(%s) = false", buf, 0x1Cu);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }

        LOBYTE(v2) = 0;
      }
    }
  }

  return v2 & 1;
}

void sub_414C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_414C5C(uint64_t a1)
{
  sub_414C94(a1);

  operator delete();
}

uint64_t sub_414C94(uint64_t a1)
{
  *a1 = off_6D20F8;
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 268);
    v7 = 136315650;
    v8 = "Device_BluetoothUnified_Aspen.cpp";
    v9 = 1024;
    v10 = 101;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling dtor for: %u", &v7, 0x18u);
  }

  sub_140514(a1 + 536);
  v5 = *(a1 + 1136);
  if (v5)
  {
    dispatch_release(v5);
  }

  sub_477A0(*(a1 + 1096));
  sub_477A0(*(a1 + 1072));
  sub_13A300(a1 + 720);
  std::mutex::~mutex((a1 + 656));
  sub_35EE28(*(a1 + 640));
  sub_2F2B90(a1);
  return a1;
}

void sub_414DC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_414DD4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (a4)
  {
    if (a3 == 3)
    {
      v5 = a4[67];
      v6 = a4[69];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v6);
      }

      v7 = a4[142];
      operator new();
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 136315394;
      *&v14[1] = "Device_BluetoothUnified_Aspen.cpp";
      v15 = 1024;
      v16 = 1083;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v14[0] = 136315394;
    *&v14[1] = "Device_BluetoothUnified_Aspen.cpp";
    v15 = 1024;
    v16 = 1082;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v14, 0x12u);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v10, "Precondition failure.");
}

uint64_t *sub_41502C(uint64_t *a1)
{
  v24 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (!v5)
      {
        goto LABEL_35;
      }

      v6 = sub_5544(18);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = atomic_load((v5 + 624));
        sub_22170(__p, v8);
        v9 = v26 >= 0 ? __p : __p[0];
        v10 = atomic_load((v5 + 1128));
        *buf = 136315906;
        v28 = "Device_BluetoothUnified_Aspen.cpp";
        v29 = 1024;
        v30 = 1091;
        v31 = 2080;
        v32 = v9;
        v33 = 1024;
        v34 = v10;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing %s route, active count: %u", buf, 0x22u);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (atomic_load((v5 + 1128)))
      {
        goto LABEL_35;
      }

      dispatch_assert_queue_V2(*(v5 + 1136));
      v12 = 1952539500;
      v13 = v5 + 640;
      v14 = *(v5 + 640);
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = v5 + 640;
      v16 = *(v5 + 640);
      do
      {
        v17 = *(v16 + 32);
        v18 = v17 >= 0x7461636C;
        v19 = v17 < 0x7461636C;
        if (v18)
        {
          v15 = v16;
        }

        v16 = *(v16 + 8 * v19);
      }

      while (v16);
      if (v15 == v13 || *(v15 + 32) > 0x7461636Cu)
      {
LABEL_20:
        v15 = v5 + 640;
      }

      if (!v14)
      {
        goto LABEL_29;
      }

      v20 = v5 + 640;
      do
      {
        v21 = *(v14 + 32);
        v18 = v21 >= 0x7473636F;
        v22 = v21 < 0x7473636F;
        if (v18)
        {
          v20 = v14;
        }

        v14 = *(v14 + 8 * v22);
      }

      while (v14);
      if (v20 == v13 || *(v20 + 32) > 0x7473636Fu)
      {
LABEL_29:
        v20 = v5 + 640;
      }

      if (v15 == v13)
      {
        if (v20 == v13)
        {
LABEL_35:
          sub_1A8C0(v4);
          return sub_8BE90(&v24);
        }

        v12 = 1953719151;
        sub_40C3C0(v5, 0x7473636Fu, 0x72646973u);
      }

      else
      {
        sub_40C3C0(v5, 0x7461636Cu, 0x72646973u);
      }

      atomic_store(v12, (v5 + 624));
      goto LABEL_35;
    }
  }

  return sub_8BE90(&v24);
}

void sub_415268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A8C0(v9);
  sub_8BE90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_41528C()
{
  qword_6FC978 = &qword_6FC978;
  qword_6FC980 = &qword_6FC978;
  qword_6FC988 = 0;
  result = sub_49BE8(&unk_6FC990);
  qword_6FCAB0 = 1;
  return result;
}

void sub_4152E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D25F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_415358(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = atomic_load((a1 + 81));
    if (v2)
    {
      sub_8BD14(&v9, *(a1 + 88), *(a1 + 96));
      v4 = v9;
      v3 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v3);
      }

      v5 = dispatch_time(0, 200000000);
      v6 = *(a1 + 72);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1174405120;
      v7[2] = sub_415454;
      v7[3] = &unk_6D2780;
      v7[4] = v4;
      v8 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_after(v5, v6, v7);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void sub_415454(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load((v5 + 81));
        if (v6)
        {
          v7 = atomic_load((v5 + 82));
          if (v7)
          {
            state64 = 0;
            notify_get_state(*(v5 + 40), &state64);
            *(v5 + 44) = state64 == 0;
            (*(*v5 + 232))(v5, 2884);
          }
        }

        (*(*v5 + 280))(v5, 0);
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_415550(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_415560(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_41557C(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 81));
  if (v2)
  {
    sub_8BD14(&v13, *(a1 + 88), *(a1 + 96));
    v6 = v13;
    v5 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v5);
    }

    if (a2)
    {
      v7 = 200000000;
    }

    else
    {
      v7 = 1000000000;
    }

    v8 = dispatch_time(0, v7);
    v9 = *(a1 + 72);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1174405120;
    v10[2] = sub_415688;
    v10[3] = &unk_6D2750;
    v10[4] = a1;
    v10[5] = v6;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = a2;
    dispatch_after(v8, v9, v10);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_415688(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = atomic_load((v6 + 81));
        if (v7)
        {
          if (*(a1 + 56) == 1)
          {
            v24 = 0;
            if (((*(*v3 + 200))(v3, 2757, &v24) & 1) == 0)
            {
              v8 = sub_5544(26);
              v9 = *v8;
              if (*v8)
              {
                if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v26 = "AncManagerV3.cpp";
                  v27 = 1024;
                  v28 = 183;
                  _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clp_primus_state", buf, 0x12u);
                }
              }
            }

            v10 = v24;
            if (v24 == 10)
            {
              *(v6 + 52) = 0;
              *(v6 + 80) = 1;
              atomic_store(1u, (v6 + 82));
            }

            else
            {
              v11 = *(v6 + 52) + 1;
              *(v6 + 52) = v11;
              HIDWORD(v12) = -858993459 * v11;
              LODWORD(v12) = -858993459 * v11;
              if ((v12 >> 1) <= 0x19999999)
              {
                v13 = sub_5544(26);
                v14 = *v13;
                if (*v13)
                {
                  if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v15) = v3[13];
                    *buf = 136315906;
                    v26 = "AncManagerV3.cpp";
                    v27 = 1024;
                    v28 = 197;
                    v29 = 2048;
                    v30 = v15 * 200.0 / 1000.0;
                    v31 = 1024;
                    v32 = v24;
                    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: ANC DSP program still not booted after %g seconds, clp_primus_state = 0x%x", buf, 0x22u);
                  }
                }
              }
            }

            (*(*v6 + 264))(v6, v10 != 10);
          }

          else
          {
            v24 = 0;
            if (((*(*v3 + 200))(v3, 2842, &v24) & 1) == 0)
            {
              v16 = sub_5544(26);
              v17 = *v16;
              if (*v16)
              {
                if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v26 = "AncManagerV3.cpp";
                  v27 = 1024;
                  v28 = 207;
                  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading cust_block_exec_count", buf, 0x12u);
                }
              }
            }

            if (v24 <= *(v6 + 48))
            {
              ++*(v6 + 52);
              v23 = 0;
              if (((*(*v3 + 200))(v3, 2757, &v23) & 1) == 0)
              {
                v18 = sub_5544(26);
                v19 = *v18;
                if (*v18)
                {
                  if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v26 = "AncManagerV3.cpp";
                    v27 = 1024;
                    v28 = 220;
                    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clp_primus_state", buf, 0x12u);
                  }
                }
              }

              v20 = sub_5544(26);
              v21 = *v20;
              if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v22) = v3[13];
                *buf = 136315906;
                v26 = "AncManagerV3.cpp";
                v27 = 1024;
                v28 = 221;
                v29 = 2048;
                v30 = v22 * 1000.0 / 1000.0;
                v31 = 1024;
                v32 = v23;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d ANC DSP detected to be not running for %g seconds, clp_primus_state = 0x%x", buf, 0x22u);
              }

              if (*(v6 + 52) >= 6u)
              {
                *(v6 + 80) = 0;
              }
            }

            else
            {
              *(v6 + 48) = v24;
              *(v6 + 52) = 0;
              *(v6 + 80) = 1;
            }

            (*(*v6 + 264))(v6, 0);
          }
        }
      }

      sub_1A8C0(v5);
    }
  }
}

void sub_415B84(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_415B94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_415BB0(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_286320();
}

void sub_415C74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_415C9C(uint64_t a1, CFMutableStringRef theString, int a3)
{
  if (theString)
  {
    v5 = *(a1 + 56);
    if (a3)
    {
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Voice mic trim:", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Ref mic trim:", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Error mic trim:", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Receiver trim:", *(a1 + 68));
      CFStringAppendFormat(theString, 0, @"%-20s ", "ANC DSP SW version:");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"Voice mic trim, %-.6f\n", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"Ref mic trim, %-.6f\n", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"Error mic trim, %-.6f\n", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"Receiver trim, %-.6f\n", *(a1 + 68));
      CFStringAppend(theString, @"ANC DSP SW version, ");
    }

    v7 = 0;
    if ((*(**(a1 + 16) + 104))(*(a1 + 16), 8388644, 1, 4, &v7, *(a1 + 24)))
    {
      CFStringAppend(theString, @"*** ERROR ***\n");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"0x%08x\n", v7);
    }
  }

  return theString != 0;
}

void sub_415F04(uint64_t a1)
{
  sub_415F3C(a1);

  operator delete();
}

void *sub_415F3C(uint64_t a1)
{
  *a1 = off_6D2630;
  v2 = *(a1 + 40);
  if (v2)
  {
    notify_cancel(v2);
  }

  dispatch_release(*(a1 + 72));
  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_1E89C0(a1);
}

uint64_t sub_415FB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_415FE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_416024(uint64_t a1)
{
  sub_4F140(a1);
  sub_1E6204((a1 + 1056));
  v2 = sub_4CF4(a1 + 856, 1, 0);
  v3 = v2;
  v4 = *(v2 + 16);
  v42 = *v2;
  v43 = v4;
  v44 = *(v2 + 32);
  if (!*(a1 + 1048))
  {
    sub_8FF68(buf, *(v2 + 160), 0);
    sub_5D7F4((a1 + 1080), buf);
    sub_5D988(buf);
    return;
  }

  sub_5AE74(*(v2 + 8), *(v2 + 192));
  v5 = *(v3 + 160);
  if (v5 && *v5)
  {
    sub_9001C(buf, &v42, v5[3]);
    sub_5D7F4((a1 + 1080), buf);
    goto LABEL_23;
  }

  v6 = BYTE12(v42);
  if ((BYTE12(v42) & 0x20) != 0)
  {
    v7 = HIDWORD(v43);
    if (!HIDWORD(v43))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = malloc_type_calloc(1uLL, (16 * v7) | 8, 0x10800404ACF7207uLL);
  if (v8)
  {
    *v8 = v7;
    v9 = v8 + 10;
    *buf = v8;
    *&buf[8] = 2;
    v10 = HIDWORD(v43);
    if ((v6 & 0x20) != 0)
    {
      v10 = 1;
    }

    v11 = (v7 + 3) & 0x1FFFFFFFCLL;
    v12 = vdupq_n_s64(v7 - 1);
    v13 = xmmword_5171E0;
    v14 = xmmword_5171F0;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v9 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v9 - 4) = v10;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v9 = v10;
        v9[4] = v10;
      }

      v13 = vaddq_s64(v13, v15);
      v14 = vaddq_s64(v14, v15);
      v9 += 16;
      v11 -= 4;
    }

    while (v11);
    goto LABEL_22;
  }

LABEL_21:
  *buf = 0;
  *&buf[8] = 0;
LABEL_22:
  sub_5D7F4((a1 + 1080), buf);
LABEL_23:
  sub_5D988(buf);
  v17 = *(a1 + 1040);
  if (v17 != a1 + 1032)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v18 = sub_617EC(*(v17 + 16), &v39);
    if (!v18)
    {
      if (DWORD2(v40))
      {
        v19 = *(*(v17 + 16) + 152);
        if (DWORD2(v42) != 1819304813 || DWORD2(v39) != 1819304813)
        {
          v21 = sub_5544(17);
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            sub_62260(__p, v19);
            v23 = (SBYTE7(v49) & 0x80u) == 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 452;
            *&buf[18] = 2080;
            *&buf[20] = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Chain Description: %s", buf, 0x1Cu);
            if (SBYTE7(v49) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v37 = 0;
          v38 = 0;
          v35 = 0;
          v36 = 0;
          v24 = sub_649C8(v19);
          v25 = sub_65088(v19);
          sub_5D734(buf, &v42, &v39, &v37, &v35, v24, v25, v19);
          v26 = sub_5544(17);
          if ((*(v26 + 8) & 1) != 0 && *v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
          {
            sub_618A4(&v47);
          }

          sub_65234(&v34, *(v17 + 16) + 120);
          v54 = v68;
          v55 = v69;
          v56 = v70;
          v57 = v71;
          v50 = v64;
          v51 = v65;
          v52 = v66;
          v53 = v67;
          *__p = *buf;
          v49 = *&buf[16];
          v58 = 0;
          v59 = 0;
          sub_5D7F4(&v58, &v72);
          v60 = 0;
          v61 = 0;
          sub_5D7F4(&v60, v73);
          v62 = v73[1];
          memset(v33, 0, sizeof(v33));
          v45 = v33;
          LOBYTE(v46) = 0;
          operator new();
        }

        sub_65A70(a1, 1, *(*(v17 + 16) + 152), &v39, &v42);
      }

      v30 = sub_5544(14);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 434;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VirtualStream::GetCurrentHALIOProcFormat() returned mBytesPerFrame of 0.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "VirtualStream::GetCurrentHALIOProcFormat() returned mBytesPerFrame of 0.");
    }

    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 433;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: VirtualStream::GetCurrentHALIOProcFormat() returned an error.", buf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = &off_6DDDD0;
    v29[2] = v18;
  }
}

void sub_416F80(caulk::build::detail *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  kind = caulk::build::detail::get_kind(a1);
  if ((kind & 1) != 0 || (caulk::build::detail::get_kind(kind) & 2) != 0)
  {
    sub_66930(v16, a1, a2);
    *a3 = *&v16[0];
    v18 = 0;
    v7 = sub_4CF4(a1 + 856, 1, 0);
    v8 = *(v7 + 16);
    v16[0] = *v7;
    v16[1] = v8;
    v17 = *(v7 + 32);
    v15[0] = a3;
    v15[1] = a2;
    v15[2] = v16;
    v9 = *(a1 + 83);
    if (*(a1 + 84) == v9)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "AggregateDevice_BroadcastFanout.cpp";
        v21 = 1024;
        v22 = 559;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Expected at least one output stream.  Found 0.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Expected at least one output stream.  Found 0.");
    }

    sub_4171A4(v15, *v9, &v18);
    v10 = (a1 + 1032);
    for (i = *(a1 + 130); i != v10; i = i[1])
    {
      sub_4171A4(v15, i[2], &v18);
    }
  }
}

void sub_417130(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4171A4(uint64_t **a1, uint64_t a2, int *a3)
{
  sub_65234(v23, a2 + 120);
  if (v23[2])
  {
    v6 = *a1[1];
    if ((v6 & 4) != 0)
    {
      v7 = sub_5544(17);
      v8 = sub_5544(41);
      v9 = 0;
      *buf = 0x100000002;
      v10 = *(v7 + 8);
      while (1)
      {
        v11 = *&buf[v9];
        if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
        {
          break;
        }

        v9 += 4;
        if (v9 == 8)
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }
      }

      if ((v10 & v11) == 0)
      {
        v7 = v8;
      }

      if (*(v7 + 8))
      {
LABEL_11:
        v12 = *v7;
        if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 539;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for secondary ouput streams", buf, 0x12u);
        }
      }

LABEL_14:
      v13 = **a1;
      v14 = *a3;
      *buf = 1;
      *&buf[8] = 1;
      *&buf[12] = v14;
      if (v13)
      {
        (*(*v13 + 16))(v13, buf, a1[2], v23);
      }

      v6 = *a1[1];
    }

    if ((v6 & 2) != 0)
    {
      v27 = 0;
      memset(buf, 0, sizeof(buf));
      sub_617EC(a2, buf);
      v15 = sub_5544(17);
      v16 = sub_5544(41);
      v17 = 0;
      *v24 = 0x100000002;
      v18 = *(v15 + 8);
      while (1)
      {
        v19 = *&v24[v17];
        if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
        {
          break;
        }

        v17 += 4;
        if (v17 == 8)
        {
          if ((v18 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_26;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

      if (*(v15 + 8))
      {
LABEL_26:
        v20 = *v15;
        if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v24 = 136315394;
          *&v24[4] = "AggregateDevice_BroadcastFanout.cpp";
          LOWORD(v25[0]) = 1024;
          *(v25 + 2) = 547;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for primary ouput streams", v24, 0x12u);
        }
      }

LABEL_29:
      v21 = **a1;
      v22 = *a3;
      *v24 = 1;
      *&v24[8] = 2;
      v25[0] = v22;
      if (v21)
      {
        (*(*v21 + 16))(v21, v24, buf, v23);
      }
    }
  }

  ++*a3;
  sub_65310(v23);
}

void sub_4174B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4174DC(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 0);
  v3 = (*(*a1 + 88))(a1, 1);
  if (v2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "AggregateDevice_BroadcastFanout.cpp";
      v14 = 1024;
      v15 = 341;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): The helper function InitializeStreamUsage() handles only zero-stream AggregateDevice_BroadcastFanout instances, and this one has %u input streams.", &v12, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "The helper function InitializeStreamUsage() handles only zero-stream AggregateDevice_BroadcastFanout instances, and this one has %u input streams.");
  }

  if (!v3)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AggregateDevice_BroadcastFanout.cpp";
      v14 = 1024;
      v15 = 342;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): The helper function InitializeStreamUsage() requires at least one output stream.", &v12, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(v11, "The helper function InitializeStreamUsage() requires at least one output stream.");
  }

  (*(*a1 + 616))(a1, 0, 0, 0);
  v4 = *(*a1 + 616);

  return v4(a1, 1, 0, 1);
}

void sub_417798(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_5544(17);
  v8 = sub_5544(23);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_7:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = a4 ? "En" : "Dis";
    v14 = a2 ? "output" : "input";
    sub_53E8(__p, v14);
    v15 = SHIBYTE(v70) >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
    v72 = 1024;
    v73 = 353;
    v74 = 2080;
    v75 = v13;
    v76 = 2080;
    v77 = v15;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %sabling %s stream on aggregate.", buf, 0x26u);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = sub_5544(17);
  if (*(v16 + 8))
  {
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = a2 ? "output" : "input";
        sub_53E8(__p, v18);
        v19 = SHIBYTE(v70) >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        v72 = 1024;
        v73 = 354;
        v74 = 2080;
        v75 = v19;
        v76 = 1024;
        LODWORD(v77) = a4;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d inDirection: %s; inIsUsed: %u.", buf, 0x22u);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v20 = (*(*a1 + 120))(a1);
  sub_10852C(__p, a2, v20, a1[67]);
  v21 = 123;
  if (a2)
  {
    v21 = 126;
  }

  v22 = &a1[v21];
  if (v22[1] - *v22 != *(v70 + 2))
  {
    v23 = sub_5544(17);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        sub_1197BC(&v68, __p);
        v25 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        v72 = 1024;
        v73 = 359;
        v74 = 2080;
        v75 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d streamUsage: %s.", buf, 0x1Cu);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v22[1] - *v22 != *(v70 + 2))
  {
    v26 = sub_5544(17);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        sub_36E9DC(&v68, *v22, v22[1]);
        v28 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        v72 = 1024;
        v73 = 360;
        v74 = 2080;
        v75 = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d usageMask: %s.", buf, 0x1Cu);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v29 = *(v70 + 2);
  if (v22[1] - *v22 != v29)
  {
    v55 = sub_5544(14);
    v56 = *v55;
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
      v72 = 1024;
      v73 = 361;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL aggregate device reported a different number of streams than our internal usage template.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL aggregate device reported a different number of streams than our internal usage template.");
LABEL_114:
  }

  if (v29)
  {
    goto LABEL_54;
  }

  if ((*(*a1 + 88))(a1, a2))
  {
    v58 = sub_5544(14);
    v59 = *v58;
    if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
      v72 = 1024;
      v73 = 362;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL aggregate device reported no streams, yet we have one.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL aggregate device reported no streams, yet we have one.");
    goto LABEL_114;
  }

  if (!*(v70 + 2) && a4)
  {
    v60 = sub_5544(14);
    v61 = *v60;
    if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
      v72 = 1024;
      v73 = 363;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Attempt to enable stream when there aren't any.", buf, 0x12u);
    }

    v62 = __cxa_allocate_exception(0x10uLL);
    *v62 = &off_6DDDD0;
    v62[2] = 1852797029;
  }

LABEL_54:
  v30 = sub_5544(17);
  if (*(v30 + 8))
  {
    v31 = *v30;
    if (*v30)
    {
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
      {
        sub_1197BC(&v68, __p);
        v32 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        v72 = 1024;
        v73 = 365;
        v74 = 2080;
        v75 = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Before modifying our stream usage data structure: %s", buf, 0x1Cu);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (*(v70 + 2))
  {
    v33 = *v22;
    v34 = v22[1] - *v22;
    if (v34)
    {
      v35 = 0;
      v36 = v70 + 12;
      do
      {
        v37 = v33[v35];
        if (v37 == 1)
        {
          v38 = a4;
        }

        else
        {
          v38 = 0;
        }

        if (v37 == 2)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        *&v36[4 * v35++] = v39;
      }

      while (v34 > v35);
    }

    v40 = sub_5544(17);
    if (*(v40 + 8))
    {
      v41 = *v40;
      if (*v40)
      {
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
        {
          sub_1197BC(&v68, __p);
          v42 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
          v72 = 1024;
          v73 = 383;
          v74 = 2080;
          v75 = v42;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Before updating stream usage on the HAL: %s", buf, 0x1Cu);
          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    sub_14B410(a1, a2, a4, *v22, v22[1]);
    v43 = sub_10834C(__p);
    if (v43)
    {
      v52 = sub_5544(14);
      v53 = *v52;
      if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
        v72 = 1024;
        v73 = 388;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: VAStreamUsage::Set() failed.", buf, 0x12u);
      }

      v54 = __cxa_allocate_exception(0x10uLL);
      *v54 = &off_6DDDD0;
      v54[2] = v43;
    }

    sub_14AEA8(a1, a2, a4, *v22, v22[1]);
  }

  v44 = sub_5544(17);
  v45 = *v44;
  if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
  {
    v67 = *(a1 + 276);
    sub_68108(&v68, &v67);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v68;
    }

    else
    {
      v46 = v68.__r_.__value_.__r.__words[0];
    }

    sub_1197BC(v65, __p);
    v47 = v66;
    v48 = v65[0];
    if (a2)
    {
      v49 = "output";
    }

    else
    {
      v49 = "input";
    }

    sub_53E8(v63, v49);
    v50 = v65;
    if (v47 < 0)
    {
      v50 = v48;
    }

    if (v64 >= 0)
    {
      v51 = v63;
    }

    else
    {
      v51 = v63[0];
    }

    *buf = 136316162;
    *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
    v72 = 1024;
    v73 = 392;
    v74 = 2080;
    v75 = v46;
    v76 = 2080;
    v77 = v50;
    v78 = 2080;
    v79 = v51;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VA Stream usage for %s is %s for direction %s", buf, 0x30u);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }
  }

  free(v70);
}

void sub_4181F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25)
{
  __cxa_free_exception(v25);
  free(a25);
  _Unwind_Resume(a1);
}

uint64_t sub_418290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, double *a7, uint64_t a8)
{
  v12 = *(a1 + 576);
  if (!v12)
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59)
    {
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_BroadcastFanout.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 645;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The client IO proc must exist for IO to run.", &buf, 0x12u);
      }
    }
  }

  v62 = sub_4CF4(a1 + 856, 1, 0);
  v13 = a6[3];
  v14 = *(v62 + 64);
  v15 = *(a1 + 1080);
  v16 = *(a1 + 880);
  v17 = *(v16 + 160);
  v70 = *(v16 + 176);
  outOutputData = v17;
  v18 = v13 / v14;
  inInputData = v15;
  v19 = sub_5AE74(*(v62 + 8), *(v62 + 192));
  if (v19)
  {
    sub_A5B24(v15, *(v62 + 24) * v18);
    sub_A5B24(&outOutputData->mNumberBuffers, *(v62 + 104) * v18);
    sub_A5B24(&v70->mNumberBuffers, *(v62 + 144) * v18);
  }

  else
  {
    *(v15 + 16) = *(a6 + 2);
    *(v15 + 12) = v13;
  }

  v20 = v19;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 88) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    *(a1 + 104) = 0;
  }

  mDataByteSize = inInputData->mBuffers[0].mDataByteSize;
  v21 = *(a1 + 584);
  v12(a8, a3, 0, a5);
  v22 = *(a1 + 1048) != 0;
  if ((*(*a1 + 480))(a1))
  {
    v23 = v62;
  }

  else
  {
    v23 = v62;
    if (*a6)
    {
      v24 = 0;
      v25 = (a6 + 4);
      do
      {
        bzero(*v25, *(v25 - 1));
        ++v24;
        v25 += 2;
      }

      while (v24 < *a6);
    }

    v22 = 0;
    v20 = 0;
  }

  v26 = *(v23 + 192);
  if (v26)
  {
    v27 = (*(*v26 + 80))(*(v23 + 192)) ^ 1;
  }

  else
  {
    v27 = 1;
  }

  p_mNumberBuffers = &inInputData->mNumberBuffers;
  if (!(*(*a1 + 480))(a1) || inInputData->mBuffers[0].mDataByteSize)
  {
    *(a1 + 796) = 0;
    v29 = v62;
    goto LABEL_19;
  }

  v46 = *(a1 + 796);
  if (v46 >> 6 > 0x176)
  {
    v47 = v27;
  }

  else
  {
    v47 = 0;
  }

  if (v47 != 1)
  {
    v48 = v46 + v18;
LABEL_60:
    *(a1 + 796) = v48;
    goto LABEL_61;
  }

  if (v46 <= v18 + 24000)
  {
    sub_6AD0C(v26);
    for (i = *(a1 + 1064); i != a1 + 1056; i = *(i + 8))
    {
      v50 = sub_4CF4(i + 16, 1, 0);
      sub_6AD0C(*(v50 + 192));
    }

    v22 = 0;
    v20 = 0;
    v48 = *(a1 + 796) + 2 * v18;
    p_mNumberBuffers = &inInputData->mNumberBuffers;
    goto LABEL_60;
  }

  v22 = 0;
  v20 = 0;
LABEL_61:
  v29 = v62;
  if (v20 || v22)
  {
    sub_A5B24(p_mNumberBuffers, mDataByteSize);
    v56 = *p_mNumberBuffers;
    if (v56)
    {
      v57 = 0;
      v58 = (p_mNumberBuffers + 4);
      do
      {
        if (*v58)
        {
          bzero(*v58, *(v58 - 1));
          v56 = *p_mNumberBuffers;
        }

        ++v57;
        v58 += 2;
      }

      while (v57 < v56);
    }
  }

  else
  {
    if ((*(a1 + 80) & 4) != 0)
    {
      sub_A5B24(p_mNumberBuffers, mDataByteSize);
      v51 = *p_mNumberBuffers;
      if (v51)
      {
        v52 = 0;
        v53 = (p_mNumberBuffers + 4);
        do
        {
          if (*v53)
          {
            bzero(*v53, *(v53 - 1));
            v51 = *p_mNumberBuffers;
          }

          ++v52;
          v53 += 2;
        }

        while (v52 < v51);
      }
    }

    if (*a6)
    {
      v54 = 0;
      v55 = (a6 + 4);
      do
      {
        bzero(*v55, *(v55 - 1));
        ++v54;
        v55 += 2;
      }

      while (v54 < *a6);
    }

    v22 = 0;
    v20 = 0;
  }

LABEL_19:
  if (*(v29 + 8) == 1819304813)
  {
    v30 = *(a1 + 88);
    *&buf.mNumberBuffers = xmmword_517330;
    if (v30)
    {
      sub_475310(v30, &buf, p_mNumberBuffers, v18, *a7);
      v29 = v62;
      p_mNumberBuffers = &inInputData->mNumberBuffers;
    }

    sub_5AEC0(a1 + 144, *(v29 + 200), p_mNumberBuffers, v18, a7);
    v66 = 1;
  }

  else
  {
    v66 = 0;
  }

  v31 = (a6 + 2);
  if (v20)
  {
    sub_90828(*(v26 + 584), v18, inInputData, outOutputData);
    if ((*(*a1 + 656))(a1))
    {
      v32 = sub_134404(*(a1 + 808), *(a1 + 816), 0);
      *&buf.mNumberBuffers = 1;
      buf.mBuffers[0] = *(a4 + 16 * v32 + 8);
      *&v72.mNumberBuffers = outOutputData;
      *&v72.mBuffers[0].mNumberChannels = &buf;
      (*(*v26 + 168))(v26, a7, v18, 2, &v72, 1, &v70);
    }

    else
    {
      (*(*v26 + 168))(v26, a7, v18, 1, &outOutputData, 1, &v70);
      sub_A5870(v26, a7);
      sub_A5BC0(*(v26 + 376), a7);
    }

    *&buf.mNumberBuffers = 1;
    buf.mBuffers[0] = *v31;
    sub_90828(*(v26 + 672), v18, v70, &buf);
    sub_5AEC0(a1 + 144, *(v62 + 204), &buf, v18, a7);
  }

  if (v22 && *a6 >= 2)
  {
    v33 = (a1 + 1064);
    v34 = (a6 + 8);
    v35 = 1;
    do
    {
      v36 = *v33;
      memset(&buf, 0, sizeof(buf));
      sub_5DB28(&buf, v36[2], v36[3], 0x4EC4EC4EC4EC4EC5 * ((v36[3] - v36[2]) >> 4));
      memset(v74, 0, sizeof(v74));
      sub_5DB28(v74, v36[5], v36[6], 0x4EC4EC4EC4EC4EC5 * ((v36[6] - v36[5]) >> 4));
      v75 = 0;
      v76 = 0;
      sub_5D7F4(&v75, (v36 + 8));
      v77 = 0;
      v78 = 0;
      sub_5D7F4(&v77, (v36 + 10));
      v37 = sub_4CF4(&buf, 1, 0);
      if (sub_5AE74(*(v37 + 8), *(v37 + 192)))
      {
        v38 = *(v74[0] + 160);
        v68 = *(v74[0] + 176);
        v69 = v38;
        sub_A5B24(&v38->mNumberBuffers, *(v37 + 104) * v18);
        sub_A5B24(&v68->mNumberBuffers, *(v37 + 144) * v18);
        v39 = *(a1 + 88);
        *&v72.mNumberBuffers = 1;
        v72.mBuffers[0].mNumberChannels = 1;
        v72.mBuffers[0].mDataByteSize = v66;
        if (v39)
        {
          sub_475310(v39, &v72, v69, v18, *a7);
        }

        sub_90828(*(*(v37 + 192) + 584), v18, inInputData, v69);
        (*(**(v37 + 192) + 168))(*(v37 + 192), a7, v18, 1, &v69, 1, &v68);
        *&v72.mNumberBuffers = 1;
        v72.mBuffers[0] = *(v34 - 1);
        sub_90828(*(*(v37 + 192) + 672), v18, v68, &v72);
        sub_5AEC0(a1 + 144, *(v37 + 204), &v72, v18, a7);
        ++v66;
      }

      else
      {
        memcpy(*v34, inInputData->mBuffers[0].mData, inInputData->mBuffers[0].mDataByteSize);
      }

      sub_5D988(&v77);
      sub_5D988(&v75);
      *&v72.mNumberBuffers = v74;
      sub_5DD9C(&v72);
      *&v72.mNumberBuffers = &buf;
      sub_5DD9C(&v72);
      ++v35;
      v33 = (v36 + 1);
      v34 += 2;
    }

    while (v35 < *a6);
  }

  if (*(v62 + 8) == 1819304813)
  {
    v40 = *a6;
    if (v40)
    {
      for (j = 0; j < v40; ++j)
      {
        v42 = *(a1 + 88);
        *&buf.mNumberBuffers = 1;
        buf.mBuffers[0].mNumberChannels = 2;
        buf.mBuffers[0].mDataByteSize = j;
        if (v42)
        {
          sub_475148(v42, &buf, v31, v18);
          v40 = *a6;
        }

        ++v31;
      }
    }
  }

  if (*(a1 + 484) == 1 && *a6)
  {
    v43 = 0;
    v44 = (a6 + 4);
    do
    {
      bzero(*v44, *(v44 - 1));
      ++v43;
      v44 += 2;
    }

    while (v43 < *a6);
  }

  return 0;
}

void sub_418B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_36E720(va);
  _Unwind_Resume(a1);
}

unint64_t sub_418BF8(uint64_t a1, _DWORD *a2)
{
  v4 = a2[36];
  v5 = sub_5544(17);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, v4);
    v7 = v17 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *v19 = "AggregateDevice_BroadcastFanout.cpp";
    *&v19[8] = 1024;
    *&v19[10] = 607;
    v20 = 2080;
    v21 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Looking for stream for port %s", buf, 0x1Cu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_1FC630(a1, a2);
  if ((v9 & 1) == 0)
  {
    v10 = a1 + 1032;
    v11 = *(a1 + 1040);
    if (v11 == v10)
    {
LABEL_12:
      v12 = sub_5544(17);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v4);
        if (v17 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 136315650;
        *v19 = "AggregateDevice_BroadcastFanout.cpp";
        *&v19[8] = 1024;
        *&v19[10] = 624;
        v20 = 2080;
        v21 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stream for port %s not found in primary or secondary streams", buf, 0x1Cu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return v8 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      while (1)
      {
        sub_65234(__p, *(v11 + 16) + 120);
        sub_76388(buf, __p);
        sub_65310(__p);
        __p[0] = a2;
        if (buf != sub_15D650(*&v19[4], buf, __p))
        {
          break;
        }

        sub_87980(buf);
        v11 = *(v11 + 8);
        if (v11 == v10)
        {
          goto LABEL_12;
        }
      }

      v8 = *(v11 + 16);
      sub_87980(buf);
    }
  }

  return v8;
}

void sub_418E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_418E70(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[36];
  v7 = sub_5544(17);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, v6);
    v9 = v23 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *v25 = "AggregateDevice_BroadcastFanout.cpp";
    *&v25[8] = 1024;
    *&v25[10] = 578;
    v26 = 2080;
    v27 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Looking for Software command for port %s", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_15D3B8(a1, a2, a3);
  v10 = a3[1];
  if (v10)
  {
    if (v10->__shared_owners_ != -1)
    {
      return;
    }

    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = sub_5544(17);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 1048);
    *buf = 136315650;
    *v25 = "AggregateDevice_BroadcastFanout.cpp";
    *&v25[8] = 1024;
    *&v25[10] = 586;
    v26 = 1024;
    LODWORD(v27) = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Looking for software command in secondary streams (%u)", buf, 0x18u);
  }

  v14 = a1 + 1032;
  v15 = *(a1 + 1040);
  if (v15 == v14)
  {
LABEL_17:
    v16 = sub_5544(17);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, v6);
      if (v23 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315650;
      *v25 = "AggregateDevice_BroadcastFanout.cpp";
      *&v25[8] = 1024;
      *&v25[10] = 598;
      v26 = 2080;
      v27 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software command for port %s not found in primary or secondary streams", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      sub_65234(__p, *(v15 + 16) + 120);
      sub_76388(buf, __p);
      sub_65310(__p);
      __p[0] = a2;
      if (buf != sub_15D650(*&v25[4], buf, __p))
      {
        break;
      }

      sub_87980(buf);
      v15 = *(v15 + 8);
      if (v15 == v14)
      {
        goto LABEL_17;
      }
    }

    v19 = *(v15 + 16);
    v21 = *(v19 + 168);
    v20 = *(v19 + 176);
    *a3 = v21;
    a3[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
    }

    sub_87980(buf);
  }
}

void sub_419164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_419180(uint64_t a1)
{
  sub_1E612C(a1);

  operator delete();
}

void sub_4191BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7)
{
  if (*(a2 + 16))
  {
    v36 = &v36;
    v37 = &v36;
    v38 = 0;
    v7 = *(a2 + 8);
    if (v7 != a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7[8] - v7[7]) >> 3) >= 2)
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10)
        {
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            sub_F89AC(&__p, (v7 + 2));
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            buf = 136315650;
            buf_4 = "AggregateDevice_BroadcastFanout.cpp";
            v42 = 1024;
            v43 = 217;
            v44 = 2080;
            *v45 = p_p;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: AggregateDevice_BroadcastFanout does not support multiple ports: %s", &buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      sub_5659C(&__p, v7 + 2, "", 219);
      v9 = __p.__r_.__value_.__r.__words[0];
      if ((*(*__p.__r_.__value_.__l.__data_ + 192))(__p.__r_.__value_.__r.__words[0]))
      {
        v46 = v9;
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        }

        sub_22CB30(&buf, &v46, 1);
        operator new();
      }

      v46 = v9;
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      }

      sub_22CB30(&buf, &v46, 1);
      operator new();
    }

    v13 = sub_5544(17);
    v14 = *v13;
    v15 = a1;
    v16 = a2;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      buf = 136315394;
      buf_4 = "AggregateDevice_BroadcastFanout.cpp";
      v42 = 1024;
      v43 = 232;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Built topology for broadcast fanout aggregate device:", &buf, 0x12u);
    }

    v17 = v37;
    if (v37 != &v36)
    {
      v18 = 0;
      do
      {
        v19 = sub_5544(17);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          buf = 136315650;
          buf_4 = "AggregateDevice_BroadcastFanout.cpp";
          v42 = 1024;
          v43 = 238;
          v44 = 1024;
          *v45 = v18;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Stack %u:", &buf, 0x18u);
        }

        for (i = v17[3]; ; i = i[1])
        {
          v16 = a2;
          if (i == v17 + 2)
          {
            break;
          }

          sub_5659C(&v46, i + 2, "", 243);
          v22 = sub_5544(17);
          v23 = *v22;
          if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
          {
            v24 = v46;
            v25 = (*(*&v46->_os_unfair_lock_opaque + 120))(v46);
            sub_23148(&__p, v24 + 2);
            v26 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            buf = 136315906;
            buf_4 = "AggregateDevice_BroadcastFanout.cpp";
            v42 = 1024;
            v43 = 246;
            v44 = 1024;
            *v45 = v25;
            *&v45[4] = 2080;
            *&v45[6] = v26;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d   - PhysicalDevice ID %u: %s", &buf, 0x22u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v15 = a1;
          }

          if (size)
          {
            sub_1A8C0(size);
          }
        }

        ++v18;
        v17 = v17[1];
      }

      while (v17 != &v36);
    }

    sub_36AF80(v15, &v36, v16, a3, a4, a5, a6, a7);
  }

  v27 = sub_5544(14);
  v28 = *v27;
  if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    buf_4 = "AggregateDevice_BroadcastFanout.cpp";
    v42 = 1024;
    v43 = 211;
    v44 = 1024;
    *v45 = 1;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): AggregateDevice_BroadcastFanout has fewer than %u output devices", &buf, 0x18u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "AggregateDevice_BroadcastFanout has fewer than %u output devices");
}

void sub_41987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_128368(va);
  _Unwind_Resume(a1);
}

BOOL sub_419948(uint64_t a1, uint64_t *a2)
{
  sub_88A00(&v4, a2, "", 315);
  v2 = *(v4 + 144);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return v2 == 1886613611;
}

void sub_419A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5544(17);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = "input";
    *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
    *buf = 136315650;
    if (a2)
    {
      v7 = "output";
    }

    *&buf[12] = 1024;
    *&buf[14] = 64;
    v27 = 2080;
    v28 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Building StreamUsageMask for %s.", buf, 0x1Cu);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  for (i = *(a3 + 8); i != a3; i = *(v22 + 8))
  {
    v9 = i + 16;
    v22 = i;
    for (j = *(i + 24); j != v9; j = *(j + 8))
    {
      sub_5659C(buf, (j + 16), "", 72);
      v11 = *buf;
      v12 = (*(**buf + 88))(*buf, a2);
      if (v12)
      {
        v13 = 0;
        while ((*(*v11 + 192))(v11))
        {
          if ((a2 & 1) == 0)
          {
            if (v13)
            {
              (*(*v11 + 312))(v11);
              LOBYTE(v24[0]) = 0;
            }

            else
            {
              LOBYTE(v24[0]) = 2;
            }

LABEL_16:
            sub_35AD58(a1, v24);
            goto LABEL_21;
          }

          LOBYTE(v24[0]) = 1;
          sub_35AD58(a1, v24);
LABEL_21:
          if (v12 == ++v13)
          {
            goto LABEL_22;
          }
        }

        if (a2)
        {
          LOBYTE(v24[0]) = 2;
        }

        else
        {
          LOBYTE(v24[0]) = 0;
        }

        goto LABEL_16;
      }

LABEL_22:
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }
    }
  }

  v14 = sub_5544(17);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v16 = "output";
    }

    else
    {
      v16 = "input";
    }

    sub_53E8(v24, v16);
    v17 = v25;
    v18 = v24[0];
    sub_36FFE4(&__p, *a1, *(a1 + 8));
    v19 = v24;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "AggregateDevice_BroadcastFanout.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 111;
    v27 = 2080;
    v28 = v19;
    v29 = 2080;
    v30 = p_p;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Built StreamUsageMask for %s: %s.", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_419DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_419E40(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_419E5C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_419E70(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  v5 = [[NSMutableString alloc] initWithString:@"Car DND status:"];
  if (v12)
  {
    [v5 appendFormat:@"ERROR fetching DND state: %@", v12];
  }

  else
  {
    v6 = @"Not active";
    if (a2)
    {
      v6 = @"Active";
    }

    [v5 appendFormat:@"  %@ DND Assertion ", v6];
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v7 = v5;
  v8 = [v5 cStringUsingEncoding:{+[NSString defaultCStringEncoding](NSString, "defaultCStringEncoding")}];
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v9;
  if (v9)
  {
    memmove(&__dst, v8, v9);
  }

  *(&__dst + v10) = 0;
  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 71) < 0)
  {
    operator delete(*(v11 + 48));
  }

  *(v11 + 48) = __dst;
  *(v11 + 64) = v14;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_41A038(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(25);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 735) < 0)
    {
      sub_54A0(__p, *(a2 + 712), *(a2 + 720));
    }

    else
    {
      *__p = *(a2 + 712);
      v14 = *(a2 + 728);
    }

    v6 = SHIBYTE(v14);
    v7 = __p[0];
    v15 = 0;
    v8 = (*(*a2 + 48))(a2, 0, &v15);
    v9 = __p;
    if (v6 < 0)
    {
      v9 = v7;
    }

    v10 = atomic_load((a1 + 8));
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v15;
    }

    *buf = 136316162;
    v17 = "AnalyticsManager.cpp";
    v18 = 1024;
    v19 = 137;
    v20 = 2080;
    v21 = v9;
    if (v10)
    {
      v12 = "running";
    }

    else
    {
      v12 = "stopped";
    }

    v22 = 2048;
    v23 = v11;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Finalize requested on analytics for DSPChain '%s' (%lu) with IO %s", buf, 0x30u);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_41A204(uint64_t a1, uint64_t a2)
{
  if ((atomic_exchange((a1 + 8), 0) & 1) == 0)
  {
    v3 = sub_5544(25);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 735) < 0)
        {
          sub_54A0(__p, *(a2 + 712), *(a2 + 720));
        }

        else
        {
          *__p = *(a2 + 712);
          v18 = *(a2 + 728);
        }

        v5 = SHIBYTE(v18);
        v6 = __p[0];
        v19 = 0;
        v7 = (*(*a2 + 48))(a2, 0, &v19);
        v8 = __p;
        if (v5 < 0)
        {
          v8 = v6;
        }

        *buf = 136315906;
        v21 = "AnalyticsManager.cpp";
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v19;
        }

        v22 = 1024;
        v23 = 127;
        v24 = 2080;
        v25 = v8;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StopIO analytics event when IO was already stopped. Event may be ignored. DSPChain '%s' (%lu)", buf, 0x26u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v10 = sub_5544(25);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 735) < 0)
    {
      sub_54A0(__p, *(a2 + 712), *(a2 + 720));
    }

    else
    {
      *__p = *(a2 + 712);
      v18 = *(a2 + 728);
    }

    v12 = SHIBYTE(v18);
    v13 = __p[0];
    v19 = 0;
    v14 = (*(*a2 + 48))(a2, 0, &v19);
    v15 = __p;
    if (v12 < 0)
    {
      v15 = v13;
    }

    *buf = 136315906;
    v21 = "AnalyticsManager.cpp";
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v19;
    }

    v22 = 1024;
    v23 = 130;
    v24 = 2080;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d StopIO analytics event on DSPChain '%s' (%lu)", buf, 0x26u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_41A49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_41A4C4(uint64_t a1, uint64_t a2)
{
  if (atomic_exchange((a1 + 8), 1u))
  {
    v3 = sub_5544(25);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 735) < 0)
        {
          sub_54A0(__p, *(a2 + 712), *(a2 + 720));
        }

        else
        {
          *__p = *(a2 + 712);
          v18 = *(a2 + 728);
        }

        v5 = SHIBYTE(v18);
        v6 = __p[0];
        v19 = 0;
        v7 = (*(*a2 + 48))(a2, 0, &v19);
        v8 = __p;
        if (v5 < 0)
        {
          v8 = v6;
        }

        *buf = 136315906;
        v21 = "AnalyticsManager.cpp";
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v19;
        }

        v22 = 1024;
        v23 = 115;
        v24 = 2080;
        v25 = v8;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StartIO analytics event when IO was already running. Event may be ignored. DSPChain '%s' (%lu)", buf, 0x26u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v10 = sub_5544(25);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 735) < 0)
    {
      sub_54A0(__p, *(a2 + 712), *(a2 + 720));
    }

    else
    {
      *__p = *(a2 + 712);
      v18 = *(a2 + 728);
    }

    v12 = SHIBYTE(v18);
    v13 = __p[0];
    v19 = 0;
    v14 = (*(*a2 + 48))(a2, 0, &v19);
    v15 = __p;
    if (v12 < 0)
    {
      v15 = v13;
    }

    *buf = 136315906;
    v21 = "AnalyticsManager.cpp";
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v19;
    }

    v22 = 1024;
    v23 = 118;
    v24 = 2080;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d StartIO analytics event on DSPChain '%s' (%lu)", buf, 0x26u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_41A760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_41A788(uint64_t a1, uint64_t a2)
{
  v3 = sub_5544(25);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 735) < 0)
    {
      sub_54A0(__p, *(a2 + 712), *(a2 + 720));
    }

    else
    {
      *__p = *(a2 + 712);
      v11 = *(a2 + 728);
    }

    v5 = SHIBYTE(v11);
    v6 = __p[0];
    v12 = 0;
    v7 = (*(*a2 + 48))(a2, 0, &v12);
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    *buf = 136315906;
    v14 = "AnalyticsManager.cpp";
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v12;
    }

    v15 = 1024;
    v16 = 106;
    v17 = 2080;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d New AnalyticsManager for DSPChain '%s' (%lu)", buf, 0x26u);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

unint64_t sub_41A938(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(a1);
  result = sub_41AB1C(a2);
  if (HIDWORD(result))
  {
    if (*(a2 + 735) < 0)
    {
      sub_54A0(__p, *(a2 + 712), *(a2 + 720));
    }

    else
    {
      *__p = *(a2 + 712);
      __p[2] = *(a2 + 728);
    }

    LODWORD(v8[0]) = 0;
    v4 = (*(*a2 + 48))(a2, 0, v8);
    v5 = v8[0];
    if (v4)
    {
      v5 = 0;
    }

    v7 = v5;
    sub_68E60();
    v8[0] = __p[1];
    *(v8 + 7) = *(&__p[1] + 7);
    memset(__p, 0, sizeof(__p));
    operator new();
  }

  return result;
}

uint64_t sub_41AB1C(uint64_t a1)
{
  v13 = 0.0;
  v2 = (*(*a1 + 64))(a1, 1685287015, 1852073334, &v13, 0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_5544(25);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 735) < 0)
      {
        sub_54A0(__p, *(a1 + 712), *(a1 + 720));
      }

      else
      {
        *__p = *(a1 + 712);
        v12 = *(a1 + 728);
      }

      v9 = __p;
      if (v12 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315906;
      v15 = "AnalyticsManager.cpp";
      v16 = 1024;
      v17 = 231;
      v18 = 2080;
      v19 = v9;
      v20 = 2048;
      v21 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to read password detection count for analytics on DSPChain %s (status %ld)", buf, 0x26u);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = 0;
    v8 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v13 & 0xFFFFFF00;
    v7 = v13;
    v8 = 0x100000000;
  }

  return v8 | v6 | v7;
}

void sub_41ACC8(_DWORD *a1)
{
  v2 = a1;
  valuePtr = *a1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (cf)
  {
    sub_41B4C0(&v6, "APD_Final_EventCount", &cf);
    memset(v3, 0, sizeof(v3));
    sub_D2A08(v3, &v6, &v7, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

void sub_41B050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint8_t buf, int a23, int a24, __int16 a25, int a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, int a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_41B1DC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x41B1E8);
  }

  JUMPOUT(0x41B1B4);
}

void sub_41B444(uint64_t a1, ...)
{
  va_start(va, a1);
  __cxa_end_catch();
  sub_41C374(va);
  JUMPOUT(0x41B1B4);
}

void sub_41B480(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    sub_1D5D20(v10 - 56);
    sub_21794C(va);
    JUMPOUT(0x41B208);
  }

  JUMPOUT(0x41B1B4);
}

void sub_41B4B0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x41B208);
  }

  JUMPOUT(0x41B1B4);
}

uint64_t sub_41B4C0(uint64_t a1, char *a2, const void **a3)
{
  sub_88CE8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_41B504(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "DSPChainAnalyticsEvent_ChainName");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_41B550(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "DSPChainAnalyticsEvent_ChainInstance");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_41B59C(uint64_t a1, uint64_t a2)
{
  if (sub_41AB1C(a2) >> 32)
  {
    std::mutex::lock((a1 + 8));
    if ((*(a1 + 72) & 0x100000000) != 0)
    {
      *(a1 + 76) = 0;
      std::mutex::unlock((a1 + 8));
      if (*(a2 + 735) < 0)
      {
        sub_54A0(__p, *(a2 + 712), *(a2 + 720));
      }

      else
      {
        *__p = *(a2 + 712);
        __p[2] = *(a2 + 728);
      }

      LODWORD(v8[0]) = 0;
      v4 = (*(*a2 + 48))(a2, 0, v8);
      v5 = v8[0];
      if (v4)
      {
        v5 = 0;
      }

      v7 = v5;
      sub_68E60();
      v8[0] = __p[1];
      *(v8 + 7) = *(&__p[1] + 7);
      memset(__p, 0, sizeof(__p));
      operator new();
    }

    std::mutex::unlock((a1 + 8));
  }
}

uint64_t *sub_41B7C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_41B820(_DWORD *a1)
{
  v5 = a1;
  v2 = *a1;
  v1 = a1[1];
  LODWORD(valuePtr) = v1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (cf)
  {
    sub_41B4C0(&v10, "APD_End_EventCount", &cf);
    LODWORD(v7) = v1 - v2;
    valuePtr = CFNumberCreate(0, kCFNumberIntType, &v7);
    if (valuePtr)
    {
      sub_41B4C0(&v11, "APD_Session_EventCount", &valuePtr);
      memset(v8, 0, sizeof(v8));
      sub_D2A08(v8, &v10, &v12, 2uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v3, "Could not construct");
}

void sub_41BC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 buf, char a27, uint8_t a28, int a29, int a30, __int16 a31, int a32, __int16 a33, uint64_t a34, __int16 a35, uint64_t a36, __int16 a37, int a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_41C140(uint64_t a1, uint64_t a2)
{
  v4 = sub_41AB1C(a2);
  if (HIDWORD(v4))
  {
    v5 = v4;
    std::mutex::lock((a1 + 8));
    if (*(a1 + 76) != 1)
    {
      *(a1 + 72) = v5;
      *(a1 + 76) = 1;
      std::mutex::unlock((a1 + 8));
      if (*(a2 + 735) < 0)
      {
        sub_54A0(__p, *(a2 + 712), *(a2 + 720));
      }

      else
      {
        *__p = *(a2 + 712);
        __p[2] = *(a2 + 728);
      }

      LODWORD(v10[0]) = 0;
      v6 = (*(*a2 + 48))(a2, 0, v10);
      v7 = v10[0];
      if (v6)
      {
        v7 = 0;
      }

      v9 = v7;
      sub_68E60();
      v10[0] = __p[1];
      *(v10 + 7) = *(&__p[1] + 7);
      memset(__p, 0, sizeof(__p));
      operator new();
    }

    std::mutex::unlock((a1 + 8));
  }
}

uint64_t *sub_41C374(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_41C3CC(_DWORD *a1)
{
  v2 = a1;
  valuePtr = *a1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (cf)
  {
    sub_41B4C0(&v6, "APD_Start_EventCount", &cf);
    memset(v3, 0, sizeof(v3));
    sub_D2A08(v3, &v6, &v7, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

void sub_41C754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint8_t buf, int a23, int a24, __int16 a25, int a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, int a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_41C8E0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x41C8ECLL);
  }

  JUMPOUT(0x41C8B8);
}

void sub_41CB48(uint64_t a1, ...)
{
  va_start(va, a1);
  __cxa_end_catch();
  sub_41C374(va);
  JUMPOUT(0x41C8B8);
}

void sub_41CB84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    sub_1D5D20(v10 - 56);
    sub_21794C(va);
    JUMPOUT(0x41C90CLL);
  }

  JUMPOUT(0x41C8B8);
}

void sub_41CBB4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x41C90CLL);
  }

  JUMPOUT(0x41C8B8);
}

void sub_41CBC8(uint64_t a1)
{
  *a1 = off_6D2B60;
  std::mutex::~mutex((a1 + 8));

  operator delete();
}

uint64_t sub_41CC2C(uint64_t a1)
{
  *a1 = off_6D2B60;
  std::mutex::~mutex((a1 + 8));
  return a1;
}

uint64_t sub_41CC70(const __CFString *a1, const void *a2)
{
  CFPreferencesSetValue(a1, a2, kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  result = CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  byte_6FCC28 = 0;
  return result;
}

uint64_t sub_41CCE0(const __CFString *a1)
{
  CFPreferencesSetValue(a1, 0, kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (kCFPreferencesAnyUser)
  {
    v1 = kCFPreferencesCurrentUser;
  }

  else
  {
    v1 = 0;
  }

  if (kCFPreferencesAnyUser)
  {
    v2 = &unk_6FCC29;
  }

  else
  {
    v2 = &byte_6FCC28;
  }

  result = CFPreferencesSynchronize(kCFPreferencesAnyApplication, v1, kCFPreferencesCurrentHost);
  *v2 = 0;
  return result;
}

void sub_41CD74(uint64_t a1, unsigned int a2)
{
  v3 = sub_5544(18);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, a2);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v12 = "Device_Sidetone_Aspen.cpp";
    v13 = 1024;
    v14 = 56;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "Device_Sidetone_Aspen.cpp";
      v13 = 1024;
      v14 = 57;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
}