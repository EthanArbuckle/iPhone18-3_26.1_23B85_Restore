void sub_78300(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_701500);
  sub_1F35DC(&STACK[0x540]);
  sub_1F365C(&STACK[0x560]);
  sub_1F36DC(&STACK[0x580]);
  sub_1F375C(&STACK[0x5A0]);
  sub_477A0(STACK[0x440]);
  sub_477A0(STACK[0x268]);
  sub_477A0(STACK[0x2C0]);
  STACK[0x5A0] = v1;
  sub_9DD40(&STACK[0x5A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_78B6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261630(result, a4);
  }

  return result;
}

void sub_78BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_9DD40(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_78BF0(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 8);
        v9 = *(v7 + 9);
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

void sub_78C68(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = sub_809C0();
  __dst[0] = 0;
  __dst[1] = 0;
  v20 = 0;
  strcpy(v21, "cwdv");
  v21[8] = 0;
  v22 = 3;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v25 = 44739242;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v31 = off_6BC4E0;
  v33 = &v31;
  sub_2574C4(&v29, v4, __dst, &v31);
  sub_85148(&v31);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v24[0]);
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    while (1)
    {
      v8 = v30;
      if (v30 != &v29)
      {
        break;
      }

LABEL_31:
      if (v8 != &v29)
      {
        sub_26AF78(a1, v8 + 2);
      }

LABEL_33:
      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
      if (v17 == v5)
      {
        goto LABEL_39;
      }
    }

    while (1)
    {
      sub_88A00(&v31, v8 + 2, "", 135);
      if (*(v31 + 303) < 0)
      {
        sub_54A0(__dst, v31[35], v31[36]);
      }

      else
      {
        *__dst = *(v31 + 35);
        v20 = v31[37];
      }

      v9 = SHIBYTE(v20);
      if (SHIBYTE(v20) >= 0)
      {
        v10 = HIBYTE(v20);
      }

      else
      {
        v10 = __dst[1];
      }

      v11 = *(v6 + 55);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v6[5];
      }

      if (v10 != v11)
      {
        break;
      }

      if (SHIBYTE(v20) >= 0)
      {
        v13 = __dst;
      }

      else
      {
        v13 = __dst[0];
      }

      if (v12 >= 0)
      {
        v14 = v6 + 4;
      }

      else
      {
        v14 = v6[4];
      }

      v15 = memcmp(v13, v14, v10) == 0;
      if (v9 < 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v32)
      {
        sub_1A8C0(v32);
      }

      if (v15)
      {
        goto LABEL_31;
      }

      v8 = v8[1];
      if (v8 == &v29)
      {
        goto LABEL_33;
      }
    }

    v15 = 0;
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    operator delete(__dst[0]);
    goto LABEL_26;
  }

LABEL_39:
  sub_65310(&v29);
}

void sub_78EFC(_Unwind_Exception *a1, uint64_t a2, void **a3, ...)
{
  va_start(va, a3);
  sub_85148(v3 - 128);
  sub_46934(va);
  sub_4B0F4(*a3);
  _Unwind_Resume(a1);
}

void sub_78F54(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = a1;
  sub_20301C(a1, 1);
  v8 = *(*a2 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(a3 + 8);
  v10 = *a2 + 8;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= v9;
    v13 = v11 < v9;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == *a2 + 8 || v9 < *(v10 + 32))
  {
LABEL_9:
    v14 = sub_5544(8);
    v15 = sub_5544(35);
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
        goto LABEL_15;
      }
    }

    if ((v17 & v18) == 0)
    {
      v14 = v15;
    }

LABEL_15:
    v19 = *v14;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, *(a3 + 8));
      if (__p[23] >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2548;
      *&buf[18] = 2080;
      *&buf[20] = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling find(%s) in the routing database returned an invalid iterator.", buf, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    return;
  }

  sub_7B03C(v173, a2 + 9);
  v165 = v10 + 40;
  v21 = *(v10 + 72);
  v170 = a3;
  if (!*(a3 + 264) && !*(a3 + 304) && !*(a3 + 344))
  {
    goto LABEL_78;
  }

  sub_27A4();
  v22 = atomic_load(&qword_6E9558);
  if (v22 != pthread_self())
  {
    v149 = sub_5544(14);
    v150 = *v149;
    if (*v149 && os_log_type_enabled(*v149, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3033;
      _os_log_impl(&dword_0, v150, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_301:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(v10 + 56))
  {
    v151 = sub_5544(14);
    v152 = *v151;
    if (*v151 && os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3034;
      _os_log_impl(&dword_0, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_301;
  }

  sub_20301C(__p, 1);
  v166 = a2;
  v176 = 0;
  v177 = 0;
  v175 = &v176;
  for (i = *(a3 + 256); i; i = *i)
  {
    if (i[3] != i[4])
    {
      sub_49DA0(&v175, &v176, *(i + 4));
    }
  }

  v179 = 0;
  v180 = 0;
  v178 = &v179;
  for (j = *(a3 + 296); j; j = *j)
  {
    if (j[3] != j[4])
    {
      sub_49DA0(&v178, &v179, *(j + 4));
    }
  }

  v161 = v21;
  v162 = a4;
  memset(&v182, 0, sizeof(v182));
  v25 = *(v10 + 72) == 1668510820;
  *&buf[3] = *(a3 + 8);
  LOBYTE(v174[2]) = v25;
  *(&v174[2] + 1) = *buf;
  LODWORD(v174[4]) = *&buf[15];
  v174[0] = (v10 + 40);
  v174[1] = (a3 + 24);
  v174[5] = 0;
  v174[6] = 0;
  v27 = sub_456B8(v174);
  v168 = v174[0];
  if (v174[0] != v27)
  {
    v28 = v26;
    do
    {
      *&v198.__r_.__value_.__r.__words[1] = 0uLL;
      v200[0] = 0;
      v200[1] = 0;
      v198.__r_.__value_.__r.__words[0] = &v198.__r_.__value_.__l.__size_;
      v199 = v200;
      for (k = v27[3]; k != v27 + 2; k = *(k + 8))
      {
        v30 = sub_34D5B0(*(k + 16));
        v31 = *(k + 16);
        v32 = v31 == 1886284905 || v30;
        if (v32 == 1)
        {
          sub_75788(&v198, v31);
        }

        v33 = sub_34D5B0(*(k + 20));
        v34 = *(k + 20);
        v35 = v34 == 1886287212 || v33;
        if (v35 == 1)
        {
          sub_75788(&v199, v34);
        }
      }

      v36 = *(v10 + 64);
      v37 = v180 != 0;
      v38 = 1;
      if ((v36 & 1) != 0 && v177)
      {
        v38 = sub_2ABD94(v198.__r_.__value_.__l.__data_, &v198.__r_.__value_.__l.__size_, v175, &v176);
      }

      v39 = (v37 & (v36 >> 1)) == 0 || sub_2ABD94(v199, v200, v178, &v179);
      if (v38 && v39)
      {
        memset(buf, 0, 24);
        sub_7D2F4(&v181, v166, (v27 + 2), v165, (v170 + 192), buf, v170);
      }

      sub_477A0(v200[0]);
      sub_477A0(v198.__r_.__value_.__l.__size_);
      v40 = v27[1];
      v27 = *v28;
      while (v40 != v27)
      {
        if (sub_4B65C((v28 + 1), (v40 + 2)))
        {
          v27 = v40;
          break;
        }

        v40 = v40[1];
      }
    }

    while (v27 != v168);
  }

  a2 = v166;
  sub_7C94C(&v182, v166 + 528);
  *buf = &v182;
  sub_86D0C(buf);
  sub_477A0(v179);
  sub_477A0(v176);
  sub_256828(v7, __p);
  a3 = v170;
  v21 = v161;
  a4 = v162;
  if (v193[8] == 1)
  {
    sub_175F78(&__p[24]);
  }

  if (!*v7)
  {
    goto LABEL_215;
  }

  v41 = sub_5544(8);
  v42 = sub_5544(35);
  v43 = 0;
  *buf = 0x100000002;
  v44 = *(v41 + 8);
  while (1)
  {
    v45 = *&buf[v43];
    if (((v44 & v45) != 0) != ((*(v42 + 8) & v45) != 0))
    {
      break;
    }

    v43 += 4;
    if (v43 == 8)
    {
      goto LABEL_74;
    }
  }

  if ((v44 & v45) == 0)
  {
    v41 = v42;
  }

  v44 = *(v41 + 8);
LABEL_74:
  if (v44)
  {
    v46 = *v41;
    if (v46)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = *v7;
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2561;
        *&buf[18] = 1024;
        *&buf[20] = v47;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d ActivateForPreferredPersistentRoute failed with result %d.", buf, 0x18u);
      }
    }
  }

LABEL_78:
  if (*v7)
  {
    if (v21 == 1667396196)
    {
      goto LABEL_80;
    }

    if (!*(a3 + 144) && !sub_26A520((a3 + 400)))
    {
      if (v21 == 1668510820)
      {
        v65 = sub_5544(8);
        v66 = sub_5544(35);
        v67 = 0;
        *buf = 0x100000002;
        v68 = *(v65 + 8);
        while (1)
        {
          v69 = *&buf[v67];
          if (((v68 & v69) != 0) != ((*(v66 + 8) & v69) != 0))
          {
            break;
          }

          v67 += 4;
          if (v67 == 8)
          {
            goto LABEL_272;
          }
        }

        if ((v68 & v69) == 0)
        {
          v65 = v66;
        }

LABEL_272:
        v140 = *v65;
        if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2574;
          _os_log_impl(&dword_0, v140, OS_LOG_TYPE_INFO, "%25s:%-5d Attempt ActivateForLastInWins", buf, 0x12u);
        }

        v141 = *(v10 + 64);
        *__p = a4;
        __p[4] = __p[4] & 0xFC | v141 & 3;
        sub_7B2C4(buf, a2, a2 + 66, v165, a3, __p);
        sub_256828(v7, buf);
        goto LABEL_112;
      }

LABEL_80:
      v48 = sub_5544(8);
      v49 = sub_5544(35);
      v50 = 0;
      *buf = 0x100000002;
      v51 = *(v48 + 8);
      while (1)
      {
        v52 = *&buf[v50];
        if (((v51 & v52) != 0) != ((*(v49 + 8) & v52) != 0))
        {
          break;
        }

        v50 += 4;
        if (v50 == 8)
        {
          goto LABEL_108;
        }
      }

      if ((v51 & v52) == 0)
      {
        v48 = v49;
      }

LABEL_108:
      v64 = *v48;
      if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2583;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "%25s:%-5d Attempt ActivateForNormal", buf, 0x12u);
      }

      sub_7CBA0(buf, a2, v165, a3);
      sub_256828(v7, buf);
LABEL_112:
      if (v197 == 1)
      {
        sub_175F78(&buf[24]);
      }

      goto LABEL_215;
    }

    v163 = a4;
    v164 = v7;
    v53 = *(v10 + 64);
    sub_7FD64(&v175, (a3 + 128));
    v167 = a2;
    if (sub_26A520((a3 + 400)))
    {
      v54 = v175;
      if (v175 != &v176)
      {
        do
        {
          v55 = v54[5];
          if (v55)
          {
            v56 = std::__shared_weak_count::lock(v55);
            if (v56)
            {
              v57 = v56;
              v58 = v54[4];
              if (v58 && (v58[92] & 1) != 0)
              {
                v59 = (*(*v58 + 160))(v58);
                sub_1A8C0(v57);
                if (v59)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                sub_1A8C0(v57);
              }
            }
          }

          v60 = v54[1];
          if (v60)
          {
            do
            {
              v61 = v60;
              v60 = *v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v61 = v54[2];
              v62 = *v61 == v54;
              v54 = v61;
            }

            while (!v62);
          }

          v54 = v61;
        }

        while (v61 != &v176);
      }

      v63 = *(v170 + 408);
      *__p = *(v170 + 400);
      *&__p[8] = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*sub_86818(&v175, v174, __p))
      {
        operator new();
      }

      if (v63)
      {
        std::__shared_weak_count::__release_weak(v63);
      }
    }

LABEL_120:
    v70 = v53 & 2;
    v187 = &v175;
    v188 = v53 & 1;
    v189 = (v53 & 2) >> 1;
    sub_26A870(&v185, &v187, 0);
    sub_26A870(&v183, &v187, 1);
    v71 = sub_5544(8);
    v72 = *v71;
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_DEFAULT))
    {
      std::to_string(&v198, v53 & 1);
      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v198;
      }

      else
      {
        v73 = v198.__r_.__value_.__r.__words[0];
      }

      v172 = v73;
      std::to_string(&v182, (v53 >> 1) & 1);
      v169 = SHIBYTE(v182.__r_.__value_.__r.__words[2]);
      v171 = v182.__r_.__value_.__r.__words[0];
      memset(&v181, 0, sizeof(v181));
      std::string::append(&v181, "{ ", 2uLL);
      v74 = v175;
      if (v175 != &v176)
      {
        while (1)
        {
          sub_11AB44(v174, (v74 + 4));
          if (SHIBYTE(v174[2]) >= 0)
          {
            v75 = v174;
          }

          else
          {
            v75 = v174[0];
          }

          if (SHIBYTE(v174[2]) >= 0)
          {
            v76 = HIBYTE(v174[2]);
          }

          else
          {
            v76 = v174[1];
          }

          std::string::append(&v181, v75, v76);
          if (SHIBYTE(v174[2]) < 0)
          {
            operator delete(v174[0]);
          }

          v77 = v74[1];
          if (v77)
          {
            do
            {
              v78 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v78 = v74[2];
              v62 = *v78 == v74;
              v74 = v78;
            }

            while (!v62);
          }

          if (v78 == &v176)
          {
            break;
          }

          std::string::append(&v181, ", ", 2uLL);
          v74 = v78;
        }
      }

      std::string::append(&v181, " }", 2uLL);
      v70 = v53 & 2;
      if (v169 >= 0)
      {
        v79 = &v182;
      }

      else
      {
        v79 = v171;
      }

      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = &v181;
      }

      else
      {
        v80 = v181.__r_.__value_.__r.__words[0];
      }

      if (v186)
      {
        v81 = std::__shared_weak_count::lock(v186);
        if (v81)
        {
          v82 = v185;
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        v81 = 0;
        v82 = 0;
      }

      if (v184)
      {
        v83 = std::__shared_weak_count::lock(v184);
        v84 = v183;
        if (!v83)
        {
          v84 = 0;
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      *__p = 136316674;
      *&__p[4] = "RoutingManager.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 3124;
      *&__p[18] = 2080;
      *&__p[20] = v172;
      *&__p[28] = 2080;
      *&__p[30] = v79;
      v191 = 2080;
      v192 = v80;
      *v193 = 2048;
      *&v193[2] = v82;
      v194 = 2048;
      v195 = v84;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d activateForOverride: specifies inputs: %s, specifies outputs: %s, override ports: %s, input port = %p, output port = %p", __p, 0x44u);
      if (v83)
      {
        sub_1A8C0(v83);
      }

      if (v81)
      {
        sub_1A8C0(v81);
      }

      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v181.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v198.__r_.__value_.__l.__data_);
      }
    }

    v85 = v186;
    if (v186)
    {
      v86 = std::__shared_weak_count::lock(v186);
      v87 = v86;
      if (v86)
      {
        v88 = v185;
        atomic_fetch_add_explicit(&v86->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v86);
        v89 = std::__shared_weak_count::lock(v87);
        if (v89)
        {
          sub_1A8C0(v89);
          if (v88)
          {
            std::__shared_weak_count::__release_weak(v87);
            goto LABEL_181;
          }
        }

        v90 = 0;
LABEL_175:
        if (v184)
        {
          v91 = std::__shared_weak_count::lock(v184);
          if (v91)
          {
            v92 = v91;
            v93 = v183;
            atomic_fetch_add_explicit(&v91->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v91);
            v94 = std::__shared_weak_count::lock(v92);
            if (v94)
            {
              sub_1A8C0(v94);
              std::__shared_weak_count::__release_weak(v92);
              if ((v90 & 1) == 0)
              {
                std::__shared_weak_count::__release_weak(v87);
              }

              if (v93)
              {
LABEL_181:
                v95 = *(v10 + 72);
                sub_27A4();
                v96 = atomic_load(&qword_6E9558);
                if (v96 == pthread_self())
                {
                  if (v95 == 1668246894 || v95 == 1668510820)
                  {
                    if (v53)
                    {
                      if (v85 && (v97 = std::__shared_weak_count::lock(v85), (v85 = v97) != 0) && (v98 = v185, atomic_fetch_add_explicit(&v97->__shared_weak_owners_, 1uLL, memory_order_relaxed), sub_1A8C0(v97), (v99 = std::__shared_weak_count::lock(v85)) != 0))
                      {
                        v100 = v98 != 0;
                        sub_1A8C0(v99);
                      }

                      else
                      {
                        v100 = 0;
                      }

                      v119 = !v100;
                      if (v100 || !v70)
                      {
                        goto LABEL_244;
                      }
                    }

                    else if (!v70)
                    {
                      goto LABEL_305;
                    }

                    if (!v184 || (v120 = std::__shared_weak_count::lock(v184)) == 0)
                    {
                      if (v85 && (v53 & 1) != 0)
                      {
                        std::__shared_weak_count::__release_weak(v85);
                      }

                      goto LABEL_305;
                    }

                    v121 = v120;
                    v122 = v183;
                    v119 = 1;
                    atomic_fetch_add_explicit(&v120->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_1A8C0(v120);
                    v123 = std::__shared_weak_count::lock(v121);
                    if (v123)
                    {
                      v119 = v122 == 0;
                      sub_1A8C0(v123);
                    }

                    std::__shared_weak_count::__release_weak(v121);
                    if ((v53 & 1) == 0)
                    {
LABEL_247:
                      if (!v119)
                      {
                        goto LABEL_248;
                      }

LABEL_305:
                      v154 = sub_5544(14);
                      v155 = *v154;
                      if (*v154 && os_log_type_enabled(*v154, OS_LOG_TYPE_ERROR))
                      {
                        *__p = 136315394;
                        *&__p[4] = "RoutingManager.cpp";
                        *&__p[12] = 1024;
                        *&__p[14] = 3136;
                        _os_log_impl(&dword_0, v155, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
                      }

                      goto LABEL_316;
                    }

LABEL_244:
                    if (v85)
                    {
                      std::__shared_weak_count::__release_weak(v85);
                      if (v119)
                      {
                        goto LABEL_305;
                      }

LABEL_248:
                      if (v95 == 1668246894)
                      {
                        if (v184)
                        {
                          v124 = std::__shared_weak_count::lock(v184);
                          if (v124)
                          {
                            v125 = v124;
                            v126 = v183;
                            atomic_fetch_add_explicit(&v124->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                            sub_1A8C0(v124);
                            v127 = std::__shared_weak_count::lock(v125);
                            if (v127)
                            {
                              sub_1A8C0(v127);
                              std::__shared_weak_count::__release_weak(v125);
                              if (v126)
                              {
                                v128 = sub_5544(14);
                                v129 = *v128;
                                if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_ERROR))
                                {
                                  *__p = 136315394;
                                  *&__p[4] = "RoutingManager.cpp";
                                  *&__p[12] = 1024;
                                  *&__p[14] = 3141;
                                  _os_log_impl(&dword_0, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
                                }

                                goto LABEL_316;
                              }
                            }

                            else
                            {
                              std::__shared_weak_count::__release_weak(v125);
                            }
                          }
                        }

                        *__p = 0;
                        *&__p[8] = 0;
                        if (v186)
                        {
                          v142 = std::__shared_weak_count::lock(v186);
                          if (v142)
                          {
                            v143 = v185;
                            atomic_fetch_add_explicit(&v142->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                            *__p = v143;
                            *&__p[8] = v142;
                            sub_1A8C0(v142);
                          }

                          else
                          {
                            *__p = 0;
                            *&__p[8] = 0;
                          }
                        }

                        sub_262760(buf, v167, v165, v170, __p);
                        if (*&__p[8])
                        {
                          std::__shared_weak_count::__release_weak(*&__p[8]);
                        }

LABEL_199:
                        if (v184)
                        {
                          std::__shared_weak_count::__release_weak(v184);
                        }

                        v7 = v164;
                        a4 = v163;
                        if (v186)
                        {
                          std::__shared_weak_count::__release_weak(v186);
                        }

                        sub_4B0F4(v176);
                        sub_256828(v164, buf);
                        a3 = v170;
                        a2 = v167;
                        if (v197 == 1)
                        {
                          sub_175F78(&buf[24]);
                        }

                        if (*v164)
                        {
                          v103 = sub_5544(8);
                          v104 = sub_5544(35);
                          v105 = 0;
                          *buf = 0x100000002;
                          v106 = *(v103 + 8);
                          while (1)
                          {
                            v107 = *&buf[v105];
                            if (((v106 & v107) != 0) != ((*(v104 + 8) & v107) != 0))
                            {
                              break;
                            }

                            v105 += 4;
                            if (v105 == 8)
                            {
                              goto LABEL_212;
                            }
                          }

                          if ((v106 & v107) == 0)
                          {
                            v103 = v104;
                          }

LABEL_212:
                          v108 = *v103;
                          if (v108 && os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                          {
                            v109 = *v164;
                            *buf = 136315650;
                            *&buf[4] = "RoutingManager.cpp";
                            *&buf[12] = 1024;
                            *&buf[14] = 2570;
                            *&buf[18] = 1024;
                            *&buf[20] = v109;
                            _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ActivateForOverride failed with result %d.", buf, 0x18u);
                          }
                        }

                        goto LABEL_215;
                      }

                      if (!v70 || ((v53 ^ 1) & 1) != 0)
                      {
LABEL_267:
                        *(v174 + 3) = *(v170 + 8);
                        __p[16] = v95 == 1668510820;
                        *&__p[17] = *v174;
                        *&__p[32] = *(&v174[1] + 7);
                        *__p = v165;
                        *&__p[8] = v170 + 24;
                        v192 = 0;
                        *v193 = 0;
                        v139 = sub_456B8(__p);
                        if (*__p != v139)
                        {
                          sub_7D234(v174, v167, v139 + 16, v165, v170);
                        }

                        sub_20301C(buf, 1);
                        goto LABEL_199;
                      }

                      v130 = v186;
                      if (v186)
                      {
                        v131 = std::__shared_weak_count::lock(v186);
                        if (v131)
                        {
                          v132 = v131;
                          v133 = v185;
                          atomic_fetch_add_explicit(&v131->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                          sub_1A8C0(v131);
                          v134 = std::__shared_weak_count::lock(v132);
                          if (v134)
                          {
                            sub_1A8C0(v134);
                            if (v133)
                            {
                              if (v184)
                              {
                                v135 = std::__shared_weak_count::lock(v184);
                                if (v135)
                                {
                                  v136 = v135;
                                  v137 = v183;
                                  atomic_fetch_add_explicit(&v135->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                                  sub_1A8C0(v135);
                                  v138 = std::__shared_weak_count::lock(v136);
                                  if (v138)
                                  {
                                    sub_1A8C0(v138);
                                    std::__shared_weak_count::__release_weak(v136);
                                    std::__shared_weak_count::__release_weak(v132);
                                    if (v137)
                                    {
                                      goto LABEL_267;
                                    }

                                    goto LABEL_285;
                                  }

                                  std::__shared_weak_count::__release_weak(v136);
                                }
                              }
                            }
                          }

                          std::__shared_weak_count::__release_weak(v132);
                        }
                      }

LABEL_285:
                      v144 = v184;
                      if (v184)
                      {
                        v145 = std::__shared_weak_count::lock(v184);
                        if (v145)
                        {
                          v146 = v145;
                          v147 = v183;
                          atomic_fetch_add_explicit(&v145->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                          sub_1A8C0(v145);
                          v148 = std::__shared_weak_count::lock(v146);
                          if (v148)
                          {
                            sub_1A8C0(v148);
                            std::__shared_weak_count::__release_weak(v146);
                            if (v147)
                            {
                              v198.__r_.__value_.__r.__words[0] = v147;
                              v198.__r_.__value_.__l.__size_ = v144;
                              v130 = v144;
LABEL_291:
                              atomic_fetch_add_explicit(&v130->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_292:
                              memset(v174, 0, 24);
                              *__p = v174;
                              __p[8] = 0;
                              operator new();
                            }
                          }

                          else
                          {
                            std::__shared_weak_count::__release_weak(v146);
                          }
                        }
                      }

                      v198.__r_.__value_.__r.__words[0] = v185;
                      v198.__r_.__value_.__l.__size_ = v130;
                      if (!v130)
                      {
                        goto LABEL_292;
                      }

                      goto LABEL_291;
                    }

                    goto LABEL_247;
                  }

                  v158 = sub_5544(14);
                  v159 = *v158;
                  if (*v158 && os_log_type_enabled(*v158, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "RoutingManager.cpp";
                    *&__p[12] = 1024;
                    *&__p[14] = 3135;
                    _os_log_impl(&dword_0, v159, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
                  }
                }

                else
                {
                  v156 = sub_5544(14);
                  v157 = *v156;
                  if (*v156 && os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "RoutingManager.cpp";
                    *&__p[12] = 1024;
                    *&__p[14] = 3134;
                    _os_log_impl(&dword_0, v157, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
                  }
                }

LABEL_316:
                v160 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v160, "Precondition failure.");
              }

LABEL_194:
              v101 = sub_5544(8);
              if (*(v101 + 8))
              {
                v102 = *v101;
                if (*v101)
                {
                  if (os_log_type_enabled(*v101, OS_LOG_TYPE_DEBUG))
                  {
                    *__p = 136315394;
                    *&__p[4] = "RoutingManager.cpp";
                    *&__p[12] = 1024;
                    *&__p[14] = 3128;
                    _os_log_impl(&dword_0, v102, OS_LOG_TYPE_DEBUG, "%25s:%-5d Didn't find any valid ports to override, ignoring specified override ports.", __p, 0x12u);
                  }
                }
              }

              sub_21991C(buf, 1920099684);
              goto LABEL_199;
            }

            std::__shared_weak_count::__release_weak(v92);
          }
        }

        if ((v90 & 1) == 0)
        {
          std::__shared_weak_count::__release_weak(v87);
        }

        goto LABEL_194;
      }
    }

    else
    {
      v87 = 0;
    }

    v90 = 1;
    goto LABEL_175;
  }

LABEL_215:
  v110 = *v7;
  if (!a4 && v110)
  {
    v111 = sub_5544(8);
    v112 = sub_5544(35);
    v113 = 0;
    *buf = 0x100000002;
    v114 = *(v111 + 8);
    while (1)
    {
      v115 = *&buf[v113];
      if (((v114 & v115) != 0) != ((*(v112 + 8) & v115) != 0))
      {
        break;
      }

      v113 += 4;
      if (v113 == 8)
      {
        goto LABEL_223;
      }
    }

    if ((v114 & v115) == 0)
    {
      v111 = v112;
    }

LABEL_223:
    v116 = *v111;
    if (*v111 && os_log_type_enabled(*v111, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2591;
      _os_log_impl(&dword_0, v116, OS_LOG_TYPE_INFO, "%25s:%-5d Attempt ActivateForNormal - Non cacheable ports", buf, 0x12u);
    }

    sub_7CBA0(buf, a2, v165, a3);
    sub_256828(v7, buf);
    if (v197 == 1)
    {
      sub_175F78(&buf[24]);
    }

    v110 = *v7;
  }

  if (!v110 && !sub_26A5C0(*(v7 + 1)))
  {
    v117 = sub_5544(8);
    v118 = *v117;
    if (*v117)
    {
      if (os_log_type_enabled(*v117, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2596;
        _os_log_impl(&dword_0, v118, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found a valid replacement route.", buf, 0x12u);
      }
    }
  }

  sub_4B14C(v173[4]);
  sub_4B0F4(v173[1]);
}

void sub_7AD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, std::__shared_weak_count *a54)
{
  __cxa_free_exception(v54);
  if (a52)
  {
    std::__shared_weak_count::__release_weak(a52);
  }

  if (a54)
  {
    std::__shared_weak_count::__release_weak(a54);
  }

  sub_4B0F4(a40);
  sub_4B14C(a29);
  sub_4B0F4(a26);
  if (*(a17 + 56) == 1)
  {
    sub_175F78((a17 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_7B03C(uint64_t ***a1, void *a2)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  a1[4] = 0;
  a1[3] = (a1 + 4);
  v5 = (a1 + 3);
  a1[5] = 0;
  sub_78C68(&v20, a2);
  sub_4B0F4(a1[1]);
  v6 = v21;
  *a1 = v20;
  a1[1] = v6;
  v7 = v22[0];
  a1[2] = v22[0];
  if (v7)
  {
    v6[2] = v4;
    v20 = &v21;
    v21 = 0;
    v22[0] = 0;
    v6 = 0;
  }

  else
  {
    *a1 = v4;
  }

  sub_4B0F4(v6);
  v8 = a2[3];
  if (v8 != a2 + 4)
  {
    v9 = *v5;
    do
    {
      sub_78C68(&v23, v8 + 5);
      v16 = *(v8 + 8);
      v10 = v24;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      if (v25)
      {
        v24[2] = &v18;
        v23 = &v24;
        v24 = 0;
        v25 = 0;
        v10 = 0;
      }

      else
      {
        v17 = &v18;
      }

      sub_4B0F4(v10);
      LODWORD(v20) = v16;
      v21 = v17;
      v22[0] = v18;
      v22[1] = v19;
      if (v19)
      {
        v18[2] = v22;
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v21 = v22;
      }

      v11 = *sub_26746C(v5, v9, &v23, &v26, v16);
      if (!v11)
      {
        operator new();
      }

      v12 = *(v11 + 8);
      if (v12)
      {
        do
        {
          v9 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v9 = *(v11 + 16);
          v13 = *v9 == v11;
          v11 = v9;
        }

        while (!v13);
      }

      sub_4B0F4(v22[0]);
      sub_4B0F4(v18);
      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v13 = *v15 == v8;
          v8 = v15;
        }

        while (!v13);
      }

      v8 = v15;
    }

    while (v15 != a2 + 4);
  }
}

void sub_7B2C4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    v62 = sub_5544(14);
    v63 = *v62;
    if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2621;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a6 > ((a3[1] - *a3) >> 4))
  {
    v65 = sub_5544(14);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2622;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v67 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v67, "Precondition failure.");
  }

  if ((a6[1] & 2) == 0 && (a6[1] & 1) == 0)
  {
    v68 = sub_5544(14);
    v69 = *v68;
    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2623;
      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v70 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v70, "Precondition failure.");
  }

  if (*(a4 + 32) != 1668510820)
  {
    v71 = sub_5544(14);
    v72 = *v71;
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2624;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v73 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v73, "Precondition failure.");
  }

  sub_20301C(a1, 1);
  memset(v88, 0, sizeof(v88));
  v79 = a1;
  if (a6[1] & 2) != 0 && (a6[1])
  {
    v9 = sub_5544(8);
    if (*(v9 + 8))
    {
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2702;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning inPortStack per port, seeking viable concrete routes for input/output Port routing", buf, 0x12u);
        }
      }
    }

    v11 = *a3;
    v12 = a3[1];
    if (*a6)
    {
      v13 = *a6;
    }

    else
    {
      v13 = (a3[1] - *a3) >> 4;
    }

    v83 = a3;
    v84 = v13;
    v86 = 0;
    v87 = 0;
    v85 = a5 + 24;
    v86 = sub_7CB38(v11, v12, v13, &v85);
    LOBYTE(v87) = 1;
    v14 = v84;
    v82[0] = v86;
    v82[1] = &v83;
    v15 = *(v83 + 1) - *v83;
    v16 = v84 >= v15 >> 4;
    v17 = v15 >> 4;
    if (v16)
    {
      v14 = v17;
    }

    v18 = *v83 + 16 * v14;
    v74 = v18;
    while (1)
    {
      v19 = v82[0];
      if (v82[0] == v18)
      {
        goto LABEL_111;
      }

      v20 = *(v82[0] + 8);
      if (v20)
      {
        v76 = std::__shared_weak_count::lock(v20);
        if (v76)
        {
          break;
        }
      }

LABEL_83:
      sub_173B74(v82);
    }

    v21 = *v19;
    if (!*v19)
    {
      goto LABEL_82;
    }

    v23 = *a3;
    v22 = a3[1];
    if (*a3 == v22)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v24 = v23[1];
      if (v24)
      {
        v25 = std::__shared_weak_count::lock(v24);
        v26 = v25;
        if (v25)
        {
          v27 = *v23;
          atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v25);
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      v28 = v19[1];
      if (v28)
      {
        v29 = v23;
        v30 = std::__shared_weak_count::lock(v28);
        v31 = v30;
        if (v30)
        {
          v32 = *v19;
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v30);
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v29 = v23;
        v32 = 0;
        v31 = 0;
      }

      v33 = v22;
      if (v26)
      {
        v34 = std::__shared_weak_count::lock(v26);
        if (!v34)
        {
          v27 = 0;
        }

        if (!v31)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = 0;
        v34 = 0;
        if (!v31)
        {
          goto LABEL_42;
        }
      }

      v35 = std::__shared_weak_count::lock(v31);
      if (v35)
      {
        v36 = v27 == v32;
        sub_1A8C0(v35);
        goto LABEL_43;
      }

LABEL_42:
      v36 = v27 == 0;
LABEL_43:
      v23 = v29;
      if (v34)
      {
        sub_1A8C0(v34);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_weak(v31);
      }

      v22 = v33;
      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      if (v36)
      {
        a1 = v79;
LABEL_53:
        v22 = a3[1];
LABEL_54:
        *v89 = v23;
        *&v89[8] = v22;
        *&v89[16] = a5 + 24;
        v90 = 0;
        v91 = 0;
        if (v23 != v22)
        {
          while (!sub_1116B4(&v89[16], v23))
          {
            v23 += 2;
            if (v23 == v22)
            {
              v23 = v22;
              break;
            }
          }
        }

        v90 = v23;
        LOBYTE(v91) = 1;
        while (v23 != v22)
        {
          v37 = v23[1];
          if (v37)
          {
            v77 = std::__shared_weak_count::lock(v37);
            if (v77)
            {
              if (*v23 && ((*(*v23 + 184) ^ *(v21 + 184)) & 1) != 0)
              {
                v38 = *(a4 + 32) == 1668510820;
                *&__p[3] = *(a5 + 8);
                v98[16] = v38;
                *&v98[17] = *__p;
                *&v98[32] = *&__p[15];
                *v98 = a4;
                *&v98[8] = a5 + 24;
                v99 = 0;
                v100 = 0;
                v39 = sub_456B8(v98);
                if (*v98 != v39)
                {
                  sub_7D234(v96, a2, v39 + 16, a4, a5);
                }

                a1 = v79;
              }

              sub_1A8C0(v77);
            }
          }

          v40 = v23 + 2;
          v23 = v22;
          if (v40 != v22)
          {
            v23 = v40;
            while ((sub_1116B4(&v89[16], v23) & 1) == 0)
            {
              v23 += 2;
              if (v23 == v22)
              {
                v23 = v22;
                break;
              }
            }
          }
        }

        v41 = sub_5544(8);
        v18 = v74;
        if (*(v41 + 8))
        {
          v42 = *v41;
          if (*v41)
          {
            if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEBUG))
            {
              *v98 = 136315394;
              *&v98[4] = "RoutingManager.cpp";
              *&v98[12] = 1024;
              *&v98[14] = 2772;
              _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to find a valid input/output concrete route where both ports are connected and in the routing database. Scanning for concrete routes where only one is in the database.", v98, 0x12u);
            }
          }
        }

        v43 = *(a4 + 32) == 1668510820;
        *&v89[3] = *(a5 + 8);
        v98[16] = v43;
        *&v98[17] = *v89;
        *&v98[32] = *&v89[15];
        *v98 = a4;
        *&v98[8] = a5 + 24;
        v99 = 0;
        v100 = 0;
        v44 = sub_456B8(v98);
        if (*v98 != v44)
        {
          sub_7D234(v101, a2, v44 + 16, a4, a5);
        }

        sub_20301C(buf, 1);
        sub_256828(a1, buf);
        if (v95 == 1)
        {
          sub_175F78(v94);
        }

        if (*a1)
        {
LABEL_82:
          sub_1A8C0(v76);
          goto LABEL_83;
        }

        v61 = v76;
LABEL_110:
        sub_1A8C0(v61);
        goto LABEL_111;
      }

      v23 = v29 + 2;
      a1 = v79;
      if (v29 + 2 == v33)
      {
        v23 = v33;
        goto LABEL_53;
      }
    }
  }

  v45 = sub_5544(8);
  if (*(v45 + 8))
  {
    v46 = *v45;
    if (*v45)
    {
      if (os_log_type_enabled(*v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2817;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning inPortStack per port, seeking viable concrete routes for single port routing", buf, 0x12u);
      }
    }
  }

  v47 = *a3;
  v48 = a3[1];
  if (*a6)
  {
    v49 = *a6;
  }

  else
  {
    v49 = (a3[1] - *a3) >> 4;
  }

  *v89 = a3;
  *&v89[8] = v49;
  v90 = 0;
  v91 = 0;
  *&v89[16] = a5 + 24;
  v90 = sub_7CB38(v47, v48, v49, &v89[16]);
  LOBYTE(v91) = 1;
  v50 = *&v89[8];
  *v96 = v90;
  v97 = v89;
  v51 = *(*v89 + 8) - **v89;
  v16 = *&v89[8] >= (v51 >> 4);
  v52 = v51 >> 4;
  if (v16)
  {
    v50 = v52;
  }

  v53 = **v89 + 16 * v50;
  while (1)
  {
    v54 = *v96;
    if (*v96 == v53)
    {
      break;
    }

    v55 = *(*v96 + 8);
    if (v55)
    {
      v56 = std::__shared_weak_count::lock(v55);
      if (v56)
      {
        v57 = v56;
        v58 = *v54;
        if (*v54)
        {
          if ((a6[1] & 1) != 0 && (*(v58 + 184) & 1) != 0 || (a6[1] & 2) != 0 && (*(v58 + 184) & 1) == 0)
          {
            v59 = *(a4 + 32) == 1668510820;
            *&buf[3] = *(a5 + 8);
            v98[16] = v59;
            *&v98[17] = *buf;
            *&v98[32] = *&buf[15];
            *v98 = a4;
            *&v98[8] = a5 + 24;
            v99 = 0;
            v100 = 0;
            v60 = sub_456B8(v98);
            if (*v98 != v60)
            {
              sub_7D234(__p, a2, v60 + 16, a4, a5);
            }
          }

          if (!*a1)
          {
            v61 = v57;
            goto LABEL_110;
          }
        }

        sub_1A8C0(v57);
      }
    }

    sub_173B74(v96);
  }

LABEL_111:
  sub_7C94C(v88, a2 + 528);
  *buf = v88;
  sub_86D0C(buf);
}

void sub_7C764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  a31 = &a36;
  sub_86D0C(&a31);
  if (*(v36 + 56) == 1)
  {
    sub_175F78((v36 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_7C94C(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return;
  }

  v6 = *(a2 + 8);
  do
  {
    v7 = *a2;
    if (*a2 == v6)
    {
      goto LABEL_45;
    }

    do
    {
      v8 = v3[1];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        v10 = v9;
        if (v9)
        {
          v11 = *v3;
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v9);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v12 = v7[1];
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        v14 = v13;
        if (v13)
        {
          v15 = *v7;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v13);
          if (!v10)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v15 = 0;
          if (!v10)
          {
LABEL_19:
            v11 = 0;
            v16 = 0;
            if (!v14)
            {
              goto LABEL_23;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      v16 = std::__shared_weak_count::lock(v10);
      if (!v16)
      {
        v11 = 0;
      }

      if (!v14)
      {
LABEL_23:
        v18 = v11 == 0;
        if (!v16)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1A8C0(v16);
        goto LABEL_25;
      }

LABEL_20:
      v17 = std::__shared_weak_count::lock(v14);
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v11 == v15;
      sub_1A8C0(v17);
      if (v16)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v18)
      {
        v19 = *(a2 + 8);
        if (v7 + 2 == v19)
        {
          v6 = v7;
        }

        else
        {
          v20 = v7;
          do
          {
            v21 = *(v20 + 1);
            v20[2] = 0;
            v20[3] = 0;
            v22 = v20[1];
            *v20 = v21;
            if (v22)
            {
              std::__shared_weak_count::__release_weak(v22);
            }

            v6 = v20 + 2;
            v23 = v20 + 4;
            v20 += 2;
          }

          while (v23 != v19);
          v19 = *(a2 + 8);
        }

        while (v19 != v6)
        {
          v24 = *(v19 - 1);
          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          v19 -= 2;
        }

        *(a2 + 8) = v6;
      }

      else
      {
        v7 += 2;
        v6 = *(a2 + 8);
      }
    }

    while (v7 != v6);
    v2 = a1[1];
LABEL_45:
    v3 += 2;
  }

  while (v3 != v2);
}

uint64_t sub_7CB38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3 >= (a2 - a1) >> 4)
  {
    v5 = (a2 - a1) >> 4;
  }

  else
  {
    v5 = a3;
  }

  if (v5)
  {
    v7 = a1 + 16 * v5;
    while ((sub_10AE84(a4, v4) & 1) == 0)
    {
      v4 += 16;
      if (v4 == v7)
      {
        return v7;
      }
    }
  }

  return v4;
}

void sub_7CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 32) == 1668246894)
  {
    *v24 = 0;
    *&v24[8] = 0;
    sub_262760(a1, a2, a3, a4, v24);
  }

  else
  {
    sub_27A4();
    v8 = atomic_load(&qword_6E9558);
    if (v8 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        *&v24[4] = "RoutingManager.cpp";
        *&v24[12] = 1024;
        *&v24[14] = 2997;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v24, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (!*(a3 + 16))
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        *&v24[4] = "RoutingManager.cpp";
        *&v24[12] = 1024;
        *&v24[14] = 2998;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v24, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v16, "Precondition failure.");
    }

    sub_20301C(a1, 1);
    memset(v23, 0, sizeof(v23));
    v9 = *(a3 + 32) == 1668510820;
    *&v24[3] = *(a4 + 8);
    v19 = v9;
    *v20 = *v24;
    *&v20[15] = *&v24[15];
    v18[0] = a3;
    v18[1] = a4 + 24;
    v21 = 0;
    v22 = 0;
    v10 = sub_456B8(v18);
    if (v18[0] != v10)
    {
      sub_7D234(&v17, a2, v10 + 16, a3, a4);
    }

    sub_7C94C(v23, a2 + 528);
    *v24 = v23;
    sub_86D0C(v24);
  }
}

void sub_7D234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0u;
  v11 = 0u;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v12 = 1065353216;
  sub_7D2F4(a1, a2, a3, a4, v5, a5 + 400, a5);
}

void sub_7D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 120);
  v13 = *(a7 + 360);
  (*(*a7 + 24))(&v18, a7);
  v17 = *(a7 + 456);
  sub_84C38(&v26, a7 + 48, 0x76646566u);
  v36[0] = off_6BC4E0;
  v36[3] = v36;
  v28 = 0;
  v29 = 0;
  *buf = 0;
  sub_46980(buf, v18, v19, (v19 - v18) >> 2);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  sub_44E44(&v33, v23);
  v34 = v23[6];
  if (SHIBYTE(v25) < 0)
  {
    sub_54A0(__p, v24, *(&v24 + 1));
  }

  else
  {
    *__p = v24;
    __p[2] = v25;
  }

  BYTE4(v15) = 0;
  LODWORD(v15) = 1;
  BYTE4(v14) = v13;
  LODWORD(v14) = v12;
  sub_7DBA4(a1, a3, a4, a7 + 8, a7 + 48, a7 + 24, &v26, a7 + 96, v14, 0x76646566u, 0, v15, v36, buf, a5, a6);
}

void sub_7DA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  sub_477A0(a44);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  sub_85148(v44 - 136);
  sub_4B0F4(a35);
  sub_46934(&a21);
  _Unwind_Resume(a1);
}

uint64_t *sub_7DADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_46980(a2, *(a1 + 464), *(a1 + 472), (*(a1 + 472) - *(a1 + 464)) >> 2);
  *(a2 + 24) = *(a1 + 488);
  *(a2 + 32) = *(a1 + 496);
  *(a2 + 40) = *(a1 + 504);
  result = sub_44E44((a2 + 48), a1 + 512);
  *(a2 + 72) = *(a1 + 536);
  if (*(a1 + 567) < 0)
  {
    return sub_54A0((a2 + 80), *(a1 + 544), *(a1 + 552));
  }

  *(a2 + 80) = *(a1 + 544);
  *(a2 + 96) = *(a1 + 560);
  return result;
}

void sub_7DB78(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 56));
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_7DBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16)
{
  v20 = sub_5544(8);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        sub_3FEB1C(&v46, a2);
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v46;
        }

        else
        {
          v22 = v46.__r_.__value_.__r.__words[0];
        }

        sub_22170(v44, *(a4 + 4));
        if (v45 >= 0)
        {
          v23 = v44;
        }

        else
        {
          v23 = v44[0];
        }

        v33 = v23;
        sub_22170(v42, a10);
        if (v43 >= 0)
        {
          v24 = v42;
        }

        else
        {
          v24 = v42[0];
        }

        v31 = v24;
        v32 = v22;
        std::to_string(&v41, a11);
        v25 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        v26 = v41.__r_.__value_.__r.__words[0];
        sub_265354(&__p, *a7, (a7 + 8));
        v27 = &v41;
        if (v25 < 0)
        {
          v27 = v26;
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        buf[0] = 136316674;
        *&buf[1] = "RoutingManager.cpp";
        v53 = 1024;
        v54 = 752;
        v55 = 2080;
        v56 = v32;
        v57 = 2080;
        v58 = v33;
        v59 = 2080;
        v60 = v31;
        v61 = 2080;
        v62 = v27;
        v63 = 2080;
        v64 = p_p;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to build concrete route for abstract route %s using mode %s, device type %s, context id %s, and excluded ports %s.", buf, 0x44u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v29 = *(a3 + 32);
  memset(v34, 0, 24);
  sub_46980(v34, *a14, *(a14 + 8), (*(a14 + 8) - *a14) >> 2);
  v34[3] = *(a14 + 24);
  v35 = *(a14 + 32);
  v36 = *(a14 + 40);
  sub_44E44(&v37, a14 + 48);
  v38 = *(a14 + 72);
  if (*(a14 + 103) < 0)
  {
    sub_54A0(v39, *(a14 + 80), *(a14 + 88));
  }

  else
  {
    *v39 = *(a14 + 80);
    v39[2] = *(a14 + 96);
  }

  sub_7FF98(v47, a15);
  v30 = *(a16 + 8);
  v47[21] = *a16;
  v47[22] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30 + 2, 1uLL, memory_order_relaxed);
  }

  v48 = *(a16 + 16);
  sub_7FE10(&v49, a7);
  sub_83FDC(v50, a13);
  v50[8] = v29;
  v51 = 0;
  operator new();
}

void sub_7E074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

void sub_7E18C(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned __int8 *a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a1 + 80))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 120) == 0;
  }

  if (!v10 || *(a1 + 160) != 0)
  {
    v12 = sub_85828((a1 + 8), *a2);
    v21 = 0;
    v22 = 0;
    v20 = 0;
    sub_4817C(&v20, *v12, v12[1], 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3));
    goto LABEL_23;
  }

  v13 = *(a1 + 184);
  if (v13 && v13->__shared_owners_ != -1)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 176);
      if (v16)
      {
        if (*(v16 + 144) == v7)
        {
          if (*(v16 + 303) < 0)
          {
            sub_54A0(__p, *(v16 + 280), *(v16 + 288));
          }

          else
          {
            v17 = v16 + 280;
            *__p = *v17;
            v27 = *(v17 + 16);
          }
        }

        else
        {
          sub_53E8(__p, "");
        }

        sub_1A8C0(v15);
LABEL_22:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        sub_83F3C();
      }

      sub_1A8C0(v14);
    }

    sub_53E8(__p, "");
    goto LABEL_22;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_23:
  v18 = *(a1 + 256);
  sub_83FDC(v25, a1 + 224);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = a5 + 1;
  sub_83DC4(v24, v20, v21, v18);
  v19 = v24[0];
  if (v24[0] != v24[1])
  {
    sub_83FDC(__p, v25);
    sub_85950(&v23, v7, v19, v9, v8, a1 + 200, v18, __p);
  }

  v23 = v24;
  sub_11C50(&v23);
  sub_85148(v25);
  __p[0] = &v20;
  sub_11C50(__p);
}

void sub_7E4A0(uint64_t a1)
{
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v3 = (a1 + 32);
  sub_11C50(&v3);
  v3 = (a1 + 8);
  sub_11C50(&v3);

  operator delete(a1);
}

uint64_t sub_7E530(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_44E44(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_7E578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_477A0(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_7E598(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a2;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  for (i = 0; v15 != a5; a4 = v15)
  {
    v10 = v16;
    v16 = sub_7E670(v16, a3, *(a4 + 7));
    sub_7E840((v16 == v10), &v16, &v15, &v14, &i);
    if (v16 == a3)
    {
      break;
    }

    v11 = v15;
    v15 = sub_7E670(v15, a5, *(v16 + 7));
    sub_7E840((v15 == v11), &v16, &v15, &v14, &i);
  }

  *a1 = a3;
  *(a1 + 8) = a5;
  result = *&v14;
  *(a1 + 16) = v14;
  return result;
}

void *sub_7E670(void *a1, void *a2, unsigned int a3)
{
  if (a1 != a2)
  {
    if (*(a1 + 7) >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && *(v5 + 7) < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    a2 = v5;
    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (*(v15 + 7) < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

void **sub_7E840(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_9E3B4(a4, (*a2 + 28));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void sub_7E910(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1CCAF0(exception, a1);
}

uint64_t sub_7E96C()
{
  if ((atomic_load_explicit(&qword_6E9C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C78))
  {
    byte_6E9C70 = _os_feature_enabled_impl();
    __cxa_guard_release(&qword_6E9C78);
  }

  return byte_6E9C70;
}

void sub_7E9F0(os_signpost_id_t *a1)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_ConnectedPortsWithDevice", 0x1BuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v2 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v3 = qword_6F6848;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VA_ConnectedPortsWithDevice", "Query for ConnectedPortsWithDeviceForRouteConfiguration", &v8, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  v5 = sub_5544(43);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315650;
        v9 = "SignpostUtilities.h";
        v10 = 1024;
        v11 = 63;
        v12 = 2080;
        v13 = "kConnectedPortsWithDevice";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v8, 0x1Cu);
      }
    }
  }
}

BOOL sub_7EC04(const __CFDictionary **a1)
{
  v2 = off_6CD9D0;
  v3 = 112;
  do
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    result = sub_47D0C(*a1, *v2);
    if (result)
    {
      v6 = sub_5544(14);
      v7 = sub_468EC(1, *v6, *(v6 + 8));
      v8 = v7;
      if (v7)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = v2[1];
          v11 = 136315906;
          v12 = "VirtualAudio_PlugIn.mm";
          v13 = 1024;
          v14 = 1179;
          v15 = 2080;
          v16 = "kVirtualAudioPlugInPropertyConnectedPortsWithDeviceForRouteConfiguration";
          v17 = 2080;
          v18 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v11, 0x26u);
        }
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = &off_6DDDD0;
      v10[2] = 1852797029;
    }

    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  return result;
}

void sub_7EDC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_7FB94(a1, a3);
  v7 = (v6 + 208);
  if ((*(v6 + 208) != *(v6 + 216) || *(a1 + 232) != *(a1 + 240)) && !*(a1 + 280) && !*(a1 + 320) && !*(a1 + 360))
  {
    v66 = 0x706E756C706E6C69;
    memset(&v68, 0, 24);
    sub_4625C(&v68, &v66, v67, 2uLL);
    *buf = *&v68.isa;
    *&buf[16] = v68.data;
    strcpy(&buf[24], "cwdv");
    v70 = 0;
    v71 = 3;
    v73 = 0;
    v74 = 0;
    v72 = &v73;
    v75 = 44739242;
    v77 = 0;
    v78 = 0;
    __p = 0;
    v8 = sub_809C0();
    v68.isa = off_6BF8E8;
    v68.length = &v68;
    sub_2574C4(&v61, v8, buf, &v68);
    sub_85148(&v68);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v73);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v9 = sub_809C0();
    memset(buf, 0, 24);
    strcpy(&buf[24], "cwdv");
    v70 = 0;
    v71 = 3;
    v73 = 0;
    v74 = 0;
    v72 = &v73;
    v77 = 0;
    v78 = 0;
    __p = 0;
    v75 = 44731050;
    v68.isa = off_6BF8E8;
    v68.length = &v68;
    sub_2574C4(&v66, v9, buf, &v68);
    sub_85148(&v68);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v73);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v62[0] != &v61)
    {
      sub_652A0();
    }

    sub_183AB4(v7, &v66);
    sub_65310(&v66);
    sub_65310(&v61);
  }

  if (*(a1 + 156) == 1 && *(a1 + 152) != 0)
  {
    v11 = *a2;
    sub_47714((a1 + 88), *(*a2 + 96), (*a2 + 104));
    v12 = sub_5544(8);
    if (*(v12 + 8))
    {
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          sub_11683C(&v68, *(v11 + 96), (v11 + 104));
          v14 = SHIBYTE(v68.data) >= 0 ? &v68 : v68.isa;
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6408;
          *&buf[18] = 2080;
          *&buf[20] = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added disallowed port types %s for the screen dark policy.", buf, 0x1Cu);
          if (SHIBYTE(v68.data) < 0)
          {
            operator delete(v68.isa);
          }
        }
      }
    }
  }

  v15 = sub_805C8(*a2, *a3);
  v16 = sub_80830(v15 + 40, *(a3 + 4));
  if (v16 & 0x100) != 0 && (v16)
  {
    v17 = sub_455CC(1885892706, v15, *(v15 + 32), *a3, *(a3 + 8), a3 + 88);
    if ((v17 & sub_455CC(1885892674, v15, *(v15 + 32), *a3, *(a3 + 8), a3 + 88)) == 1)
    {
      LODWORD(v61) = 1885892674;
      memset(&v68, 0, 24);
      sub_4625C(&v68, &v61, &v61 + 4, 1uLL);
      *buf = *&v68.isa;
      *&buf[16] = v68.data;
      strcpy(&buf[24], "cwdv");
      v70 = 0;
      v71 = 3;
      v73 = 0;
      v74 = 0;
      v72 = &v73;
      v75 = 44739242;
      v77 = 0;
      v78 = 0;
      __p = 0;
      v18 = sub_809C0();
      v68.isa = off_6BC4E0;
      v68.length = &v68;
      sub_2574C4(&v61, v18, buf, &v68);
      sub_85148(&v68);
      sub_76388(&v68, &v61);
      for (i = v68.info; i != &v68; i = *(i + 8))
      {
        sub_11319C(&v66, *(i + 16));
        if (v67[1])
        {
          v20 = *(i + 24);
          v59[0] = *(i + 16);
          v59[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_CB814(a1 + 40, v59);
          if (v59[1])
          {
            std::__shared_weak_count::__release_weak(v59[1]);
          }
        }

        sub_65310(&v66);
      }

      sub_87980(&v68);
      sub_65310(&v61);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v73);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }
  }

  v23 = *(v15 + 48);
  v22 = (v15 + 48);
  v21 = v23;
  if (v23)
  {
    v24 = *(a3 + 4);
    v25 = v22;
    do
    {
      v26 = *(v21 + 32);
      v27 = v26 >= v24;
      v28 = v26 < v24;
      if (v27)
      {
        v25 = v21;
      }

      v21 = *(v21 + 8 * v28);
    }

    while (v21);
    if (v25 != v22 && *(v25 + 8) <= v24)
    {
      v29 = *(v25 + 101);
      if (v29 & 0x100) != 0 && (v29)
      {
        v30 = sub_809C0();
        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        v70 = 0;
        v71 = 3;
        v73 = 0;
        v74 = 0;
        v72 = &v73;
        v75 = 44739242;
        v77 = 0;
        v78 = 0;
        __p = 0;
        v68.isa = off_6BC4E0;
        v68.length = &v68;
        sub_2574C4(&v61, v30, buf, &v68);
        sub_85148(&v68);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p);
        }

        sub_477A0(v73);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        sub_76388(buf, &v61);
        for (j = *&buf[8]; j != buf; j = *(j + 8))
        {
          if ((*(**(j + 16) + 424))(*(j + 16)))
          {
            v32 = *(j + 24);
            v68.isa = *(j + 16);
            v68.info = v32;
            if (v32)
            {
              atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
            }

            sub_CB814(a1 + 40, &v68);
            if (v68.info)
            {
              std::__shared_weak_count::__release_weak(v68.info);
            }
          }
        }

        sub_87980(buf);
        sub_65310(&v61);
      }
    }
  }

  if (*a3 == 1667657057)
  {
    LODWORD(v61) = 1885892674;
    memset(&v68, 0, 24);
    sub_4625C(&v68, &v61, &v61 + 4, 1uLL);
    *buf = *&v68.isa;
    *&buf[16] = v68.data;
    strcpy(&buf[24], "cwdv");
    v70 = 0;
    v71 = 3;
    v73 = 0;
    v74 = 0;
    v72 = &v73;
    v75 = 44739242;
    v77 = 0;
    v78 = 0;
    __p = 0;
    v33 = sub_809C0();
    v68.isa = off_6BC4E0;
    v68.length = &v68;
    sub_2574C4(&v61, v33, buf, &v68);
    sub_85148(&v68);
    for (k = v62[0]; k != &v61; k = k[1])
    {
      v35 = k[3];
      if (!v35)
      {
        continue;
      }

      v36 = std::__shared_weak_count::lock(v35);
      if (!v36)
      {
        continue;
      }

      v37 = v36;
      v38 = k[2];
      if (v38 && !sub_346CF8(k[2]))
      {
        sub_53E8(&v68, "kBluetoothAudioDeviceFeatureFindMyPlayBack");
        v39 = sub_34CF08(v38, &v68);
        v40 = v39;
        if ((SHIBYTE(v68.data) & 0x80000000) == 0)
        {
          if (v39)
          {
            goto LABEL_76;
          }

LABEL_75:
          sub_26AF78(a1 + 40, k + 2);
          goto LABEL_76;
        }

        operator delete(v68.isa);
        if ((v40 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

LABEL_76:
      sub_1A8C0(v37);
    }

    sub_65310(&v61);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v73);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  if (*(a3 + 386) == 1 && *(a3 + 387) == 1)
  {
    v41 = sub_809C0();
    v63 = *"bphpBphptbmpoelpielp";
    v64 = 1886152041;
    v59[1] = 0;
    v60 = 0;
    v59[0] = 0;
    sub_4625C(v59, &v63, &v65, 5uLL);
    *buf = *v59;
    *&buf[16] = v60;
    v59[1] = 0;
    v60 = 0;
    v59[0] = 0;
    strcpy(&buf[24], "cwdv");
    v70 = 0;
    v71 = 3;
    v73 = 0;
    v74 = 0;
    v72 = &v73;
    v75 = 44739242;
    v77 = 0;
    v78 = 0;
    __p = 0;
    v68.isa = off_6BC4E0;
    v68.length = &v68;
    sub_2574C4(&v66, v41, buf, &v68);
    sub_26B028(&v61, &v66);
    sub_65310(&v66);
    sub_85148(&v68);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v73);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    sub_7FE64(a1 + 40, v61, v62);
    if (v62[1])
    {
      v42 = sub_5544(8);
      v43 = *v42;
      if (*v42)
      {
        if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
        {
          sub_265354(&v68, v61, v62);
          v44 = SHIBYTE(v68.data) >= 0 ? &v68 : v68.isa;
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6482;
          *&buf[18] = 2080;
          *&buf[20] = v44;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d Disallowing bluetooth ports %s", buf, 0x1Cu);
          if (SHIBYTE(v68.data) < 0)
          {
            operator delete(v68.isa);
          }
        }
      }
    }

    sub_4B0F4(v62[0]);
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    v45 = *v22;
    if (*v22)
    {
      v46 = *(a3 + 4);
      v47 = v22;
      do
      {
        v48 = *(v45 + 32);
        v27 = v48 >= v46;
        v49 = v48 < v46;
        if (v27)
        {
          v47 = v45;
        }

        v45 = *(v45 + 8 * v49);
      }

      while (v45);
      if (v47 != v22 && *(v47 + 8) <= v46)
      {
        v54 = *(v47 + 102);
        if (v54 & 0x100) != 0 && (v54)
        {
          v55 = 36;
          if (*(a2 + 44))
          {
            v55 = 40;
          }

          *(a1 + 8) = *(a2 + v55);
          *(a1 + 12) = 1;
          v56 = sub_5544(8);
          v57 = *v56;
          if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_INFO))
          {
            sub_22170(&v68, *(a1 + 8));
            v58 = SHIBYTE(v68.data) >= 0 ? &v68 : v68.isa;
            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6499;
            *&buf[18] = 2080;
            *&buf[20] = v58;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "%25s:%-5d Pulling in previous playback route's mode %s", buf, 0x1Cu);
            if (SHIBYTE(v68.data) < 0)
            {
              operator delete(v68.isa);
            }
          }
        }
      }
    }
  }

  v50 = *(a3 + 144);
  if (v50)
  {
    if (*(v50 + 8) != -1)
    {
      v51 = sub_5544(8);
      v52 = *v51;
      if (*v51)
      {
        if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEFAULT))
        {
          sub_11AB44(&v68, a3 + 136);
          if (SHIBYTE(v68.data) >= 0)
          {
            isa = &v68;
          }

          else
          {
            isa = v68.isa;
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6507;
          *&buf[18] = 2080;
          *&buf[20] = isa;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route configuration has user preferred input: %s", buf, 0x1Cu);
          if (SHIBYTE(v68.data) < 0)
          {
            operator delete(v68.isa);
          }
        }
      }
    }
  }
}

uint64_t sub_7FB94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_7FD64((a1 + 16), (a2 + 16));
  sub_7FE10((a1 + 40), a2 + 40);
  sub_7FEEC((a1 + 64), (a2 + 64));
  sub_44E44((a1 + 88), a2 + 88);
  sub_44E44((a1 + 112), a2 + 112);
  v4 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v5;
  *(a1 + 168) = *(a2 + 168);
  if (*(a2 + 199) < 0)
  {
    sub_54A0((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v6 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v6;
  }

  *(a1 + 200) = *(a2 + 200);
  sub_7FF98((a1 + 208), (a2 + 208));
  v7 = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 376) = v7;
  sub_80534((a1 + 392), (a2 + 392));
  *(a1 + 424) = *(a2 + 424);
  if (*(a2 + 455) < 0)
  {
    sub_54A0((a1 + 432), *(a2 + 432), *(a2 + 440));
  }

  else
  {
    v8 = *(a2 + 432);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 432) = v8;
  }

  *(a1 + 456) = *(a2 + 456);
  return a1;
}

void sub_7FCB8(_Unwind_Exception *a1)
{
  if (*(v1 + 416) == 1 && *(v1 + 415) < 0)
  {
    operator delete(*(v1 + 392));
  }

  sub_1F1DE0((v1 + 208));
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  v3 = *(v1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_477A0(*(v1 + 120));
  sub_477A0(*(v1 + 96));
  sub_2626B0(v1 + 40);
  sub_4B0F4(*(v1 + 24));
  _Unwind_Resume(a1);
}

void *sub_7FD64(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_2585A8(a1, v3, v5 + 4);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *sub_7FE10(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_7FE64(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_7FE64(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_8470C(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_7FEEC(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_2673C4(a1, v3, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *sub_7FF98(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_4817C(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_4817C((a1 + 3), a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3));
  sub_8008C((a1 + 6), (a2 + 6));
  sub_8008C((a1 + 11), (a2 + 11));
  sub_8008C((a1 + 16), (a2 + 16));
  return a1;
}

void sub_80040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_4B064((v10 + 11));
  sub_4B064((v10 + 6));
  sub_11C50(&a10);
  a10 = v10;
  sub_11C50(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_8008C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_80330(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_80330(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_6ACD8();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

_BYTE *sub_80534(_BYTE *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[24] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_54A0(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    __dst[24] = 1;
  }

  return __dst;
}

void sub_805A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_805C8(uint64_t a1, unsigned int a2)
{
  v22 = a2;
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
LABEL_29:
    if ((atomic_load_explicit(&qword_6E7F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E7F10))
    {
      xmmword_6E7EE8 = 0u;
      unk_6E7EF8 = 0u;
      dword_6E7F08 = 1065353216;
      __cxa_guard_release(&qword_6E7F10);
    }

    v10 = v22;
    if (!sub_23B090(&xmmword_6E7EE8, v22))
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v20, 0x6E6F6374u);
        v13 = v21;
        v14 = v20[0];
        sub_22170(__p, v10);
        v15 = v20;
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v19 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136315906;
        v24 = "RoutingManager.cpp";
        v25 = 1024;
        v26 = 5496;
        v27 = 2080;
        v28 = v15;
        v29 = 2080;
        v30 = v16;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%s): Unable to locate category '%s' in the routing database.", buf, 0x26u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      sub_266144(&xmmword_6E7EE8, v10);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852793716;
  }

  return v5 + 40;
}

void sub_80810(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_80830(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == a1 + 8 || *(v5 + 32) > a2 || (v9 = *(v5 + 200), v10 = v9 >> 8, ((v9 >> 8) & 1) == 0))
  {
LABEL_10:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 2217;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      LOWORD(v9) = sub_80830(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

uint64_t sub_809C0()
{
  result = qword_6E7E10;
  if (!qword_6E7E10)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "PortManager.cpp";
        v6 = 1024;
        v7 = 328;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sPortManager is NULL]: sPortManager is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sPortManager is NULL!");
  }

  return result;
}

uint64_t sub_80AE0(_WORD *a1)
{
  if ((a1[92] & 0x40) != 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "Port.cpp";
      v8 = 1024;
      v9 = 383;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Must override if the CanSetRoutable() returns true.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Must override if the CanSetRoutable() returns true.");
  }

  v1 = *(*a1 + 152);

  return v1();
}

void *sub_80C2C(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_849B8();
  }

  return result;
}

os_signpost_id_t *sub_80C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int8 a12)
{
  v12 = a9;
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_PV_BuildConcreteFromAbstract", 0x1FuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v13 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        p_dst = &__dst;
        sub_3FEB1C(&__dst, a2);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v16 = &v89;
        sub_22170(&v89, *(a4 + 4));
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = v89.__r_.__value_.__r.__words[0];
        }

        v17 = &v88;
        sub_265514(&v88, a5);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v88.__r_.__value_.__r.__words[0];
        }

        p_src = &__src;
        sub_11683C(&__src, *a6, a6 + 1);
        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_src = __src.__r_.__value_.__r.__words[0];
        }

        sub_22170(&v84, a9);
        v19 = v86;
        v20 = v84;
        sub_22170(&__p, a10);
        v21 = &v84;
        if (v19 < 0)
        {
          v21 = v20;
        }

        if (v83 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136316674;
        *&buf[4] = p_dst;
        buf_12 = 2080;
        *buf_14 = v16;
        *&buf_14[8] = 2080;
        *&buf_14[10] = v17;
        *&buf_14[18] = 2080;
        *&buf_14[20] = p_src;
        *&buf_14[28] = 2080;
        *&buf_14[30] = v21;
        *&buf_14[38] = 2080;
        *&buf_14[40] = p_p;
        *&buf_14[48] = 1024;
        *&buf_14[50] = a12;
        _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VA_PV_BuildConcreteFromAbstract", "Attempting to build concrete route(s) for abstract route %s. inMode: %s; inDisallowedPorts:%s; inDisallowedPortTypes:%s; inVADCoupling: %s; inDeviceType: %s; inPermitUnroutablePorts: %u.", buf, 0x44u);
        if (v83 < 0)
        {
          operator delete(__p);
        }

        v12 = a9;
        if (v86 < 0)
        {
          operator delete(v84);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v81 = v13;
  v23 = sub_5544(43);
  if (*(v23 + 8))
  {
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SignpostUtilities.h";
        buf_12 = 1024;
        *buf_14 = 66;
        *&buf_14[4] = 2080;
        *&buf_14[6] = "kBuildConcreteFromAbstract";
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
      }
    }
  }

  v25 = a2;
  if (!*(a2 + 16))
  {
    v65 = sub_5544(14);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      buf_12 = 1024;
      *buf_14 = 518;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_151:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v12 == 1684366192 && ((*(a3 + 24) ^ (*(a3 + 24) >> 1)) & 1) != 0)
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      buf_12 = 1024;
      *buf_14 = 521;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_151;
  }

  v26 = sub_5544(8);
  if (*(v26 + 8))
  {
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
      {
        v28 = &__dst;
        sub_3FEB1C(&__dst, a2);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __dst.__r_.__value_.__r.__words[0];
        }

        v29 = &v89;
        sub_22170(&v89, *(a4 + 4));
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v89.__r_.__value_.__r.__words[0];
        }

        v30 = &v88;
        sub_265514(&v88, a5);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v88.__r_.__value_.__r.__words[0];
        }

        v31 = &__src;
        sub_11683C(&__src, *a6, a6 + 1);
        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = __src.__r_.__value_.__r.__words[0];
        }

        sub_22170(&v84, v12);
        v32 = v86;
        v33 = v84;
        sub_22170(&__p, a10);
        v34 = &v84;
        if (v32 < 0)
        {
          v34 = v33;
        }

        if (v83 >= 0)
        {
          v35 = &__p;
        }

        else
        {
          v35 = __p;
        }

        *buf = 136317186;
        *&buf[4] = "RoutingManager.cpp";
        buf_12 = 1024;
        *buf_14 = 530;
        *&buf_14[4] = 2080;
        *&buf_14[6] = v28;
        *&buf_14[14] = 2080;
        *&buf_14[16] = v29;
        *&buf_14[24] = 2080;
        *&buf_14[26] = v30;
        *&buf_14[34] = 2080;
        *&buf_14[36] = v31;
        *&buf_14[44] = 2080;
        *&buf_14[46] = v34;
        v93 = 2080;
        v94 = v35;
        v95 = 1024;
        v96 = a12;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to build concrete route(s) for abstract route %s. inMode: %s; inDisallowedPorts:%s; inDisallowedPortTypes:%s; inPortFilterType:inVADCoupling: %s; inDeviceType: %s; inPermitUnroutablePorts: %u.", buf, 0x54u);
        if (v83 < 0)
        {
          operator delete(__p);
        }

        v25 = a2;
        if (v86 < 0)
        {
          operator delete(v84);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_851C8(&__dst, a3 + 40, *(a4 + 4));
  if (!__dst.__r_.__value_.__r.__words[2] || (v36 = __dst.__r_.__value_.__r.__words[0], __dst.__r_.__value_.__l.__data_ == &__dst.__r_.__value_.__r.__words[1]))
  {
LABEL_87:
    sub_477A0(__dst.__r_.__value_.__l.__size_);
    if (sub_4B8C4(v25 + 24, *(a4 + 4)))
    {
      memset(&__src, 0, sizeof(__src));
      v43 = *(a3 + 32);
      if (v12 == 1684366192)
      {
        *buf = 0x100000000;
        sub_853A0(&v84, buf, 2uLL);
      }

      else
      {
        LODWORD(__dst.__r_.__value_.__l.__data_) = 2;
        sub_853A0(&v84, &__dst, 1uLL);
      }

      if (v84 != v85)
      {
        v57 = *v84;
        operator new();
      }

      v58 = *&__src.__r_.__value_.__l.__data_;
      size = __src.__r_.__value_.__l.__size_;
      v60 = __src.__r_.__value_.__r.__words[0];
      if ((v12 == 1684366192) != (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0] != 16))
      {
        if ((v12 == 1668248944) != (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0] != 8))
        {
          if (__src.__r_.__value_.__r.__words[0] != __src.__r_.__value_.__l.__size_)
          {
            do
            {
              if (a9 == 1668248944)
              {
                v61 = sub_5544(8);
                if (*(v61 + 8))
                {
                  v62 = *v61;
                  if (*v61)
                  {
                    if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEBUG))
                    {
                      sub_109694(&__dst, *v60);
                      v63 = &__dst;
                      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v63 = __dst.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315650;
                      *&buf[4] = "RoutingManager.cpp";
                      buf_12 = 1024;
                      *buf_14 = 722;
                      *&buf_14[4] = 2080;
                      *&buf_14[6] = v63;
                      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempt to build concrete route(s) succeeded: Built concrete route %s", buf, 0x1Cu);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__dst.__r_.__value_.__l.__data_);
                      }
                    }
                  }
                }
              }

              ++v60;
            }

            while (v60 != size);
            v58 = *&__src.__r_.__value_.__l.__data_;
          }

          *a1 = v58;
          *(a1 + 16) = *(&__src.__r_.__value_.__l + 2);
          memset(&__src, 0, sizeof(__src));
          if (v84)
          {
            v85 = v84;
            operator delete(v84);
          }

          *buf = &__src;
          sub_86DB0(buf);
          return sub_86E34(&v81);
        }

        v72 = sub_5544(14);
        v73 = *v72;
        if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          buf_12 = 1024;
          *buf_14 = 717;
          _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        v70 = sub_5544(14);
        v71 = *v70;
        if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          buf_12 = 1024;
          *buf_14 = 716;
          _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v74 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v74, "Postcondition failure.");
    }

    v44 = sub_5544(8);
    if (*(v44 + 8))
    {
      v45 = *v44;
      if (*v44)
      {
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&__dst, *(a4 + 4));
          v46 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          v47 = __dst.__r_.__value_.__r.__words[0];
          sub_3FEB1C(&v89, a2);
          v48 = &__dst;
          if (v46 < 0)
          {
            v48 = v47;
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v89;
          }

          else
          {
            v49 = v89.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingManager.cpp";
          buf_12 = 1024;
          *buf_14 = 555;
          *&buf_14[4] = 2080;
          *&buf_14[6] = v48;
          *&buf_14[14] = 2080;
          *&buf_14[16] = v49;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempt to build concrete route(s) failed: Mode %s is disallowed in abstract route %s.", buf, 0x26u);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    while (*(v25 + 8) != v25)
    {
      v37 = *(v36 + 28);
      v38 = *(v25 + 8);
      do
      {
        v39 = *(v38 + 16) == v37 || *(v38 + 20) == v37;
        v40 = v39;
        if (v39)
        {
          break;
        }

        v38 = *(v38 + 8);
      }

      while (v38 != v25);
      if (!v40)
      {
        break;
      }

      v41 = *(v36 + 8);
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = v41->__r_.__value_.__r.__words[0];
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = *(v36 + 16);
          v39 = v42->__r_.__value_.__r.__words[0] == v36;
          v36 = v42;
        }

        while (!v39);
      }

      v36 = v42;
      if (v42 == &__dst.__r_.__value_.__r.__words[1])
      {
        goto LABEL_87;
      }
    }

    v50 = sub_5544(8);
    if (*(v50 + 8))
    {
      v51 = *v50;
      if (*v50)
      {
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
        {
          v52 = &v89;
          sub_22170(&v89, *(a4 + 4));
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v52 = v89.__r_.__value_.__r.__words[0];
          }

          sub_1DE4C8(&v88, __dst.__r_.__value_.__l.__data_, &__dst.__r_.__value_.__l.__size_);
          v53 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
          v54 = v88.__r_.__value_.__r.__words[0];
          sub_3FEB1C(&__src, a2);
          v55 = &v88;
          if (v53 < 0)
          {
            v55 = v54;
          }

          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &__src;
          }

          else
          {
            v56 = __src.__r_.__value_.__r.__words[0];
          }

          *buf = 136316162;
          *&buf[4] = "RoutingManager.cpp";
          buf_12 = 1024;
          *buf_14 = 546;
          *&buf_14[4] = 2080;
          *&buf_14[6] = v52;
          *&buf_14[14] = 2080;
          *&buf_14[16] = v55;
          *&buf_14[24] = 2080;
          *&buf_14[26] = v56;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempt to build concrete route(s) failed: Mode %s requires port type(s) %s, which were not all found in abstract route %s.", buf, 0x30u);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_477A0(__dst.__r_.__value_.__l.__size_);
  }

  return sub_86E34(&v81);
}

void sub_83810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_84FE4(&a71);
  v73 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v73;
    operator delete(v73);
  }

  STACK[0x270] = &STACK[0x230];
  sub_86DB0(&STACK[0x270]);
  sub_86E34(&a72);
  _Unwind_Resume(a1);
}

void sub_83B54()
{
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  JUMPOUT(0x83C18);
}

void sub_83BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_4B0F4(a60);
  if (v73)
  {
    sub_1A8C0(v73);
  }

  if (v72)
  {
    sub_1A8C0(v72);
  }

  STACK[0x270] = &a62;
  sub_86D0C(&STACK[0x270]);
  STACK[0x270] = &a65;
  sub_86D0C(&STACK[0x270]);
  sub_4B0F4(a69);
  sub_4B0F4(STACK[0x208]);
  sub_84FE4(&a71);
  v75 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v75;
    operator delete(v75);
  }

  STACK[0x270] = &STACK[0x230];
  sub_86DB0(&STACK[0x270]);
  sub_86E34(&a72);
  _Unwind_Resume(a1);
}

void sub_83C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, std::__shared_weak_count *a63)
{
  if (a63)
  {
    sub_1A8C0(a63);
  }

  if (a66)
  {
    sub_1A8C0(a66);
  }

  if (a69)
  {
    sub_1A8C0(a69);
  }

  if (STACK[0x208])
  {
    sub_1A8C0(STACK[0x208]);
  }

  JUMPOUT(0x83D10);
}

void sub_83C5C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      sub_84F9C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x83D40);
}

void sub_83D48(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x83D40);
}

uint64_t sub_83D58(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = a3;
  v7 = a4;
  v6 = a5;
  if (!a2)
  {
    sub_46A74();
  }

  return (*(*a2 + 48))(a2, &v8, &v7, &v6);
}

uint64_t sub_83DC4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == a3)
  {
    sub_53E8(__p, "");
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_83F3C();
  }

  if (a4 != 1668246894)
  {
    if (*(a2 + 23) < 0)
    {
      sub_54A0(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v7 = *(a2 + 16);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_83F3C();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  return sub_4817C(a1, a2, a3, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3));
}

void sub_83FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_11C50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_83FDC(uint64_t a1, uint64_t a2)
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

uint64_t sub_84074(uint64_t a1)
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

uint64_t sub_840F4(char a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v12[0] = off_6BC528;
    v12[1] = a2;
    v12[3] = v12;
    v5 = sub_26B270(a3, v12) ^ 1;
    sub_26B5B8(v12);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6 == a2)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      sub_88A00(&v10, (v6 + 16), "", 1033);
      v7 = *(v10 + 144);
      if (v11)
      {
        sub_1A8C0(v11);
      }

      if (v7 == 1885565807)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == a2)
      {
        goto LABEL_9;
      }
    }

    sub_88A00(&v10, a3, "", 1035);
    v8 = *(v10 + 144) == 1886613611;
    if (v11)
    {
      sub_1A8C0(v11);
    }
  }

  return (v5 | v8) & 1;
}

void sub_84248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26B5B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_84264(void *a1, int a2)
{
  v3 = a1[63];
  v2 = a1[64];
  while (v3 != v2)
  {
    if (*v3 == a2)
    {
      if (v2 != v3)
      {
        return 0;
      }

      return (*(*a1 + 488))();
    }

    ++v3;
  }

  return (*(*a1 + 488))();
}

void *sub_842C0(uint64_t a1, unint64_t *a2)
{
  result = sub_86818(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *sub_84370(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        sub_868A0(result, v4);
      }
    }
  }

  return result;
}

uint64_t sub_844AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void sub_84508(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = a2[1];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *a2;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *a1 = v6;
      a1[1] = v5;

      sub_1A8C0(v5);
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

uint64_t *sub_84578(void *a1, void *a2, void *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_87164(a5, a2 + 4))
  {
    if (!sub_87164(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_87164(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_87164(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_871F0(a1, a3, a5);
}

uint64_t sub_8470C(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_84578(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_847A8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_762A8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

os_signpost_id_t *sub_847FC(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315650;
        v10 = "SignpostUtilities.h";
        v11 = 1024;
        v12 = 63;
        v13 = 2080;
        v14 = "kConnectedPortsWithDevice";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v9, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v5 = qword_6F6848;
    v6 = v5;
    v7 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_ConnectedPortsWithDevice", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_849A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void *sub_84A28(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_84B94(void *a1)
{
  sub_85148(a1 + 16);

  operator delete(a1);
}

uint64_t sub_84BD0(void *a1, unint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if (!sub_87164(a2, v3 + 4))
      {
        if (!sub_87164(v3 + 4, a2))
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

void *sub_84C38(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a2 + 32;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != a2 + 32 && *(v4 + 32) <= a3)
  {
    v9 = sub_7FE10(a1, a2);
    return sub_7FE64(v9, *(v4 + 40), (v4 + 48));
  }

  else
  {
LABEL_9:

    return sub_7FE10(a1, a2);
  }
}

uint64_t sub_84CDC(uint64_t result)
{
  if (*(result + 16) && *(result + 40))
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "RoutingTypes.cpp";
        v6 = 1024;
        v7 = 3050;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  return result;
}

uint64_t sub_84E00(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  *(result + 16) = *a4;
  *(result + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  *(result + 32) = *a5;
  *(result + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = a6;
  *(result + 56) = a7;
  if (!a7)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "RoutingTypes.h";
        v14 = 1024;
        v15 = 2039;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v12, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}

void sub_84F58(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_84F9C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t *sub_84FE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_86BF8((v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_85148(uint64_t a1)
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

uint64_t *sub_851C8(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a2 + 8;
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
  if (v7 != a2 + 8 && *(v7 + 32) <= a3)
  {

    return sub_44E44(result, v7 + 144);
  }

  else
  {
LABEL_9:
    if (a3 == 1768776806)
    {
      result[2] = 0;
      result[1] = 0;
      *result = (result + 1);
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a3);
            if (v15 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v17 = "RoutingTypes.cpp";
            v18 = 1024;
            v19 = 2193;
            v20 = 2080;
            v21 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: (%s), Looking in default mode instead.", buf, 0x1Cu);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      return sub_851C8(v5, a2, 1768776806);
    }
  }

  return result;
}

void *sub_853A0(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    sub_189A00();
  }

  return result;
}

void sub_85438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_85454@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned __int8 *a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  v22 = *a3;
  v8 = *a4;
  v9 = sub_85828(*(a1 + 8), *a2);
  v23 = *(a1 + 16);
  v10 = *(*(a1 + 24) + 32);
  v33[0] = off_6BC4E0;
  v33[3] = v33;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = a5 + 1;
  v21 = v10;
  sub_83DC4(&v26, *v9, v9[1], v10);
  v11 = v26;
  v12 = v27;
  if (v26 != v27)
  {
    if (v22)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    v20 = v13;
    while (1)
    {
      sub_83FDC(v34, v33);
      sub_25704(&v28, v23, "", 339);
      v14 = sub_809C0();
      v15 = v28;
      sub_26C0(v14);
      v16 = sub_84A28((v14 + 312), v15);
      sub_3174(v14);
      if (!v16)
      {
        goto LABEL_18;
      }

      v30 = v7;
      v32 = 0;
      v31 = 0uLL;
      sub_4625C(&v31, &v30, &v31, 1uLL);
      *v35 = v31;
      v36 = v32;
      strcpy(v37, "cwdv");
      v38 = 0;
      v39 = 3;
      v41[0] = 0;
      v41[1] = 0;
      v40 = v41;
      v42 = 44739242;
      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, v11);
      v37[0] = v8;
      v42 = v42 & 0xFFFFFFF0 | v20;
      if (!sub_46398(v15, v35))
      {
        break;
      }

      v17 = v29;
      v24 = v15;
      v25 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_477A0(v41[0]);
      if (v35[0])
      {
        v35[1] = v35[0];
        operator delete(v35[0]);
      }

      if (v17)
      {
        sub_1A8C0(v17);
      }

      sub_85148(v34);
      v18 = v25;
      if (v25)
      {
        if (v25->__shared_owners_ != -1)
        {
          sub_842C0(a5, &v24);
        }

        std::__shared_weak_count::__release_weak(v18);
      }

      if (++v11 == v12)
      {
        goto LABEL_26;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_477A0(v41[0]);
    if (v35[0])
    {
      v35[1] = v35[0];
      operator delete(v35[0]);
    }

LABEL_18:
    *(&v31 + 1) = 0;
    v32 = 0;
    *&v31 = &v31 + 8;
    sub_83FDC(v35, v34);
    sub_85950(&v24, v7, v11, v8, v22, &v31, v21, v35);
  }

LABEL_26:
  v35[0] = &v26;
  sub_11C50(v35);
  return sub_85148(v33);
}

void sub_85774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_4B0F4(*a10);
  sub_85148(&a27);
  _Unwind_Resume(a1);
}

uint64_t *sub_85828(void *a1, unsigned int a2)
{
  v4 = sub_23B090(a1 + 11, a2);
  if (v4)
  {
    return v4 + 3;
  }

  v4 = sub_23B090(a1 + 6, a2);
  if (v4)
  {
    return v4 + 3;
  }

  v6 = sub_23B090(a1 + 16, a2);
  if (v6)
  {
    return v6 + 3;
  }

  else
  {
    return &unk_6E8F20;
  }
}

char *sub_85890(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_54A0(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_48254(v9);
  return v4;
}

void sub_85950(uint64_t a1, int a2, const std::string *a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = a2;
  v22 = 0;
  v23 = 0;
  *buf = 0;
  sub_4625C(buf, &v26, v27, 1uLL);
  strcpy(v14, "cwdv");
  v15 = 0;
  v16 = 3;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v19 = 44739242;
  memset(&v20, 0, sizeof(v20));
  std::string::operator=(&v20, a3);
  if (a5)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  v14[0] = a4;
  v19 = v19 & 0xFFFFFFF0 | v13;
  v24 = a7;
  sub_83FDC(&v25, a8);
  *&v27[20] = 0;
  operator new();
}

void sub_85C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v20 = *(v15 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_85148(v18 - 120);
  sub_46934(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_85CE4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_85D64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26C0(a2);
  v8 = *(a2 + 672);
  if (v8)
  {
    v9 = a2 + 672;
    do
    {
      v10 = sub_8654C(v8 + 32, a3);
      if ((v10 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v8 = *(v8 + ((v10 >> 4) & 8));
    }

    while (v8);
    if (v9 != a2 + 672 && (sub_8654C(a3, v9 + 32) & 0x80) == 0)
    {
      v11 = a1;
      v12 = *(v9 + 144);
      if (!v12 || (v13 = std::__shared_weak_count::lock(v12)) == 0)
      {
        *a1 = 0;
        a1[1] = 0;
        goto LABEL_65;
      }

      v14 = v13;
      v15 = *(v9 + 136);
      if (v15)
      {
        *buf = *(v9 + 136);
        *&buf[8] = v13;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (sub_84BD0(*(a4 + 8), buf))
        {
          std::__shared_weak_count::__release_weak(v14);
LABEL_73:
          sub_1A8C0(v14);
          v16 = 1;
          a1 = v11;
          goto LABEL_14;
        }

        v29 = *(a5 + 24);
        if (!v29)
        {
          sub_46A74();
        }

        v30 = (*(*v29 + 48))(v29, v15);
        std::__shared_weak_count::__release_weak(v14);
        if ((v30 & 1) == 0)
        {
          goto LABEL_73;
        }

        *v11 = v15;
      }

      else
      {
        *v11 = 0;
      }

      v11[1] = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_72:
      sub_1A8C0(v14);
      goto LABEL_65;
    }
  }

  v16 = 0;
LABEL_14:
  if (*(a3 + 8) - *a3 == 4)
  {
    v40 = **a3;
    *buf = &v40;
    v17 = sub_DB6B0((a2 + 352), v40) + 3;
  }

  else
  {
    v17 = (a2 + 288);
  }

  if (v17 != v17[1])
  {
    v37 = a1;
    v18 = 0;
    v19 = v17;
    while (1)
    {
      v20 = *(*v19 + 16);
      v21 = *(v20 + 88);
      if (!v21)
      {
        break;
      }

      v22 = *(v20 + 80);
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v14 = std::__shared_weak_count::lock(v21);
      std::__shared_weak_count::__release_weak(v21);
      if (!v14 || !v22)
      {
        goto LABEL_29;
      }

      if ((v18 | sub_46398(v22, a3)))
      {
        v23 = *(a5 + 24);
        if (!v23)
        {
          sub_46A74();
        }

        if ((*(*v23 + 48))(v23, v22))
        {
          if ((v16 & 1) == 0)
          {
            sub_47BD8(a2);
            memset(buf, 0, sizeof(buf));
            sub_46980(buf, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
            v42 = *(a3 + 24);
            v43 = *(a3 + 32);
            v44 = *(a3 + 40);
            sub_44E44(&v45, a3 + 48);
            v47 = *(a3 + 72);
            if (*(a3 + 103) < 0)
            {
              sub_54A0(&__p, *(a3 + 80), *(a3 + 88));
            }

            else
            {
              __p = *(a3 + 80);
              v49 = *(a3 + 96);
            }

            v50 = v22;
            v51 = v14;
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v26 = sub_10AB3C(a2 + 664, buf);
            if (v51)
            {
              std::__shared_weak_count::__release_weak(v51);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(__p);
            }

            sub_477A0(v46);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            if ((v26 & 1) == 0)
            {
              v31 = sub_5544(14);
              v32 = *v31;
              if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "PortManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 452;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Failed to cache result due to overlapping cache values", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Failed to cache result due to overlapping cache values");
            }

            sub_47C90(a2);
          }

          *buf = v22;
          *&buf[8] = v14;
          v18 = 1;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v27 = sub_84BD0(*(a4 + 8), buf);
          std::__shared_weak_count::__release_weak(v14);
          if (!v27)
          {
            *v37 = v22;
            v37[1] = v14;
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_72;
          }

          v16 = 1;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_47:
      sub_1A8C0(v14);
LABEL_48:
      v19 = *v19;
      if (v19 == v17[1])
      {
        a1 = v37;
        if (((v16 | v18) & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_64;
      }
    }

    v14 = 0;
LABEL_29:
    v24 = sub_5544(9);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 442;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connected port has expired.", buf, 0x12u);
    }

    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if ((v16 & 1) == 0)
  {
LABEL_52:
    sub_47BD8(a2);
    memset(buf, 0, sizeof(buf));
    sub_46980(buf, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    v42 = *(a3 + 24);
    v43 = *(a3 + 32);
    v44 = *(a3 + 40);
    sub_44E44(&v45, a3 + 48);
    v47 = *(a3 + 72);
    if (*(a3 + 103) < 0)
    {
      sub_54A0(&__p, *(a3 + 80), *(a3 + 88));
    }

    else
    {
      __p = *(a3 + 80);
      v49 = *(a3 + 96);
    }

    v50 = 0;
    v51 = 0;
    v28 = sub_10AB3C(a2 + 664, buf);
    if (v51)
    {
      std::__shared_weak_count::__release_weak(v51);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v46);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if ((v28 & 1) == 0)
    {
      v34 = sub_5544(14);
      v35 = *v34;
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 465;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Failed to cache result due to overlapping cache values", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v36, "Failed to cache result due to overlapping cache values");
    }

    sub_47C90(a2);
  }

LABEL_64:
  *a1 = 0;
  a1[1] = 0;
LABEL_65:
  sub_3174(a2);
}

void sub_86420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__shared_weak_count::__release_weak(v26);
  sub_1A8C0(v26);
  sub_2185D4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_8654C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = (*(a1 + 8) - *a1) >> 2;
  v7 = (*(a2 + 8) - *a2) >> 2;
  if (v7 >= v6)
  {
    v8 = (*(a1 + 8) - *a1) >> 2;
  }

  else
  {
    v8 = (*(a2 + 8) - *a2) >> 2;
  }

  if (v8 < 1)
  {
LABEL_7:
    if (v6 < v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v6 == v7)
    {
      v10 = *(a1 + 24);
      v11 = *(a2 + 24);
      v9 = v10 < v11 ? -1 : 1;
      if (v10 == v11)
      {
        v12 = *(a1 + 32);
        v13 = *(a2 + 32);
        if (v12 == 1 && (v13 & 1) != 0)
        {
          v14 = *(a1 + 28);
          v15 = *(a2 + 28);
          if (v14 < v15)
          {
            v9 = -1;
          }

          else
          {
            v9 = 1;
          }

          if (v14 != v15)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v17 = (v12 ^ 1) & v13;
          if (v17)
          {
            v9 = -1;
          }

          else
          {
            v9 = 1;
          }

          if (v17 != v12)
          {
            goto LABEL_25;
          }
        }

        v18 = *(a1 + 40);
        v19 = *(a2 + 40);
        if (v18 < v19)
        {
          v9 = -1;
        }

        else
        {
          v9 = 1;
        }

        if (v18 == v19)
        {
          v9 = sub_86694(*(a1 + 48), (a1 + 56), *(a2 + 48), (a2 + 56));
          if (!v9)
          {
            v20 = *(a1 + 72);
            v21 = *(a2 + 72);
            v9 = v20 < v21 ? -1 : 1;
            if (v20 == v21)
            {
              v9 = sub_6F834((a1 + 80), (a2 + 80));
            }
          }
        }
      }
    }
  }

  else
  {
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    if (*v4 < *v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

LABEL_25:
  if (v9)
  {
    return (v9 >> 7) | 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_86694(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  v5 = a1 == a2;
  if (a1 == a2 || a3 == a4)
  {
LABEL_16:
    if (v5)
    {
      return (v4 - 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v6 = *(a1 + 7);
      v7 = *(a3 + 7);
      if (v6 != v7)
      {
        break;
      }

      v8 = a1[1];
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
          v9 = a1[2];
          v10 = *v9 == a1;
          a1 = v9;
        }

        while (!v10);
      }

      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v10 = *v12 == a3;
          a3 = v12;
        }

        while (!v10);
      }

      v4 = v12 == a4;
      v5 = v9 == a2;
      if (v9 != a2)
      {
        a1 = v9;
        a3 = v12;
        if (v12 != a4)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    if (v6 < v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_86758(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1667396196 && (*(*a2 + 368))(a2) == 2)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    sub_46A74();
  }

  v5 = *(*v4 + 48);

  return v5();
}

void *sub_86818(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_16B7FC(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_16B7FC(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_868A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1DC690(a2);
  }

  sub_189A00();
}

void sub_868E0(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    if (a1[2] == v2)
    {
      v5 = a1;
      sub_1DC690(1uLL);
    }

    *v2 = 0;
    v2[1] = 0;
    a1[1] = v2 + 2;
  }

  else if (v2 - *a1 >= 0x11)
  {
    v3 = *a1 + 16;
    while (v2 != v3)
    {
      v4 = *(v2 - 1);
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      v2 -= 2;
    }

    a1[1] = v3;
  }
}

uint64_t sub_869CC(uint64_t a1, unint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_87164((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_87164(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_86A50(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 105) == 1)
  {
    v9 = *(v5 + 104);
    v10 = v9 >> 8;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 2113;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      LOWORD(v9) = sub_86A50(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

void sub_86BEC(void *a1@<X8>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
}

void sub_86BF8(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_84F9C(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_86C6C(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[2].n128_u64[1];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a1[2].n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_86CC0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_86D0C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_86CC0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_86D60(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_84FE4((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_86DB0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_84FE4(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

os_signpost_id_t *sub_86E34(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 66;
        v11 = 2080;
        v12 = "kBuildConcreteFromAbstract";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_PV_BuildConcreteFromAbstract", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_86FC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t *sub_86FD0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 8);
      do
      {
        if (*v6)
        {
          std::__shared_weak_count::__release_weak(*v6);
          v4 = *v3;
        }

        ++v5;
        v6 += 2;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

uint64_t sub_8703C()
{
  result = qword_6ECB88;
  if (!qword_6ECB88)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "SystemSettingsManager_Aspen.cpp";
        v6 = 1024;
        v7 = 1132;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sSystemSettingsManager is NULL]: sSystemSettingsManager is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sSystemSettingsManager is NULL!");
  }

  return result;
}

BOOL sub_87164(unint64_t *a1, unint64_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = *a1;
    if (v5)
    {
      v7 = *a1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *a2;
      sub_1A8C0(v9);
      if (!v5)
      {
        return v7 < v10;
      }

      goto LABEL_11;
    }
  }

  v10 = 0;
  if (v5)
  {
LABEL_11:
    sub_1A8C0(v5);
  }

  return v7 < v10;
}

void *sub_871F0(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_87164(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_87164(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

os_signpost_id_t *sub_87278(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 75;
        v11 = 2080;
        v12 = "kGetPorts";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_GetPorts", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_87408(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void *sub_87414(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = a3[1];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7;
        if (v7)
        {
          v9 = *a3;
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v7);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v10 = v5[5];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        v12 = v5[4];
        if (v11)
        {
          v13 = v5[4];
        }

        else
        {
          v13 = 0;
        }

        if (!v8)
        {
LABEL_18:
          v15 = v13 == 0;
          if (!v11)
          {
            goto LABEL_20;
          }

LABEL_19:
          sub_1A8C0(v11);
          goto LABEL_20;
        }
      }

      else
      {
        v13 = 0;
        v11 = 0;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v14 = std::__shared_weak_count::lock(v8);
      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = v13 == v9;
      sub_1A8C0(v14);
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v15)
      {
        return v5;
      }

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != v3);
  }

  return v3;
}

void *sub_87554(void *result, void *a2)
{
  if (result != 1735159650)
  {
    v4 = result;
    v5 = a2[1];
    if (v5 == a2)
    {
      goto LABEL_17;
    }

    v6 = a2[1];
    while (1)
    {
      v7 = v6[3];
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = std::__shared_weak_count::lock(v7);
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v6[2];
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v4 == 1768845428)
      {
        if ((*(v9 + 184) & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (v4 != 1869968496)
      {
        break;
      }

      if (*(v9 + 184))
      {
        goto LABEL_15;
      }

LABEL_12:
      sub_1A8C0(v8);
      v6 = v6[1];
      if (v6 == a2)
      {
        v10 = a2;
        goto LABEL_34;
      }
    }

    v6 = v5;
LABEL_15:
    sub_1A8C0(v8);
LABEL_16:
    v5 = v6;
LABEL_17:
    v10 = a2;
    if (v5 != a2)
    {
      v11 = v5[1];
      if (v11 != a2)
      {
        v10 = v5;
        while (1)
        {
          v12 = v11[3];
          if (v12)
          {
            v13 = std::__shared_weak_count::lock(v12);
            if (v13)
            {
              v14 = v11[2];
              if (v14)
              {
                if (v4 == 1768845428)
                {
                  if (*(v14 + 184))
                  {
                    goto LABEL_26;
                  }
                }

                else if (v4 == 1869968496 && (*(v14 + 184) & 1) == 0)
                {
LABEL_26:
                  sub_1A8C0(v13);
                  v15 = *(v11 + 1);
                  v11[2] = 0;
                  v11[3] = 0;
                  v16 = v10[3];
                  *(v10 + 1) = v15;
                  if (v16)
                  {
                    std::__shared_weak_count::__release_weak(v16);
                  }

                  v10 = v10[1];
                  goto LABEL_31;
                }
              }

              sub_1A8C0(v13);
            }
          }

LABEL_31:
          v11 = v11[1];
          if (v11 == a2)
          {
            goto LABEL_34;
          }
        }
      }

      v10 = v5;
    }

LABEL_34:

    return sub_876E0(a2, v10, a2);
  }

  return result;
}

void *sub_876E0(uint64_t a1, void *__p, void *a3)
{
  if (__p != a3)
  {
    v4 = __p;
    v6 = *(*a3 + 8);
    v7 = *__p;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      v9 = v4[3];
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

void sub_87760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_87840(&v9, a3, "", 1689);
  for (i = v10; i != &v9; i = *(i + 8))
  {
    v8 = sub_9DE4C(*(a2 + 128), *(i + 16), a4);
    if (v8)
    {
      sub_75788(a1, v8);
    }
  }

  sub_87980(&v9);
}

void sub_87840(void *a1, uint64_t a2, char *a3, int a4)
{
  v5[0] = v5;
  v5[1] = v5;
  v5[2] = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    sub_88A00(&v6, (v4 + 16), a3, a4);
    operator new();
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_87980(v5);
}

void sub_87958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_87980(va);
  _Unwind_Resume(a1);
}

void sub_87980(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_1A8C0(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

std::string *sub_879F8(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "Category: '", 0xBuLL);
  sub_22170(&__p, *a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = v12;
  }

  std::string::append(a1, p_p, v5);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a1, "'; Mode: '", 0xAuLL);
  sub_22170(&__p, *(a2 + 4));
  if ((v13 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = v12;
  }

  std::string::append(a1, v6, v7);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (*(a2 + 12) == 1)
  {
    std::string::append(a1, "'; OutputMode: '", 0x10uLL);
    sub_22170(&__p, *(a2 + 8));
    if ((v13 & 0x80u) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    std::string::append(a1, v8, v9);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  return std::string::append(a1, "' ]", 3uLL);
}

void sub_87B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_87BA8(std::string *a1, void *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      sub_22170(__p, *(v5 + 7));
      if ((v14 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(a1, " ", 1uLL);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  return std::string::append(a1, "}", 1uLL);
}

void sub_87CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_87CE8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1986291046;
  v5 = a1 + 4;
  sub_65234(a1 + 1, a2);
  sub_65234(v5, a3);
  return a1;
}

void *sub_87E74(void *a1, void *a2)
{
  v3 = (a2 + 4);
  *a1 = *a2;
  v4 = a1 + 4;
  sub_65234(a1 + 1, (a2 + 1));
  sub_65234(v4, v3);
  return a1;
}

uint64_t sub_87EDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {
      sub_65310((v4 - 24));
      sub_65310((v4 - 48));
    }
  }

  return a1;
}

void sub_87F44(CFArrayRef *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_88BA4(v44, a4);
  memset(v43, 0, sizeof(v43));
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      sub_88840(&v41, v44, *(v6 + 4), 1);
      memset(v40, 0, sizeof(v40));
      v25 = 0;
      cf = 0;
      v27 = 0;
      strcpy(v28, "cwdv");
      v29 = 0;
      v30 = 3;
      v32 = 0;
      v33 = 0;
      v31 = &v32;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v34 = 44731018;
      sub_87760(&v38, a2, v6 + 8, &v25);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v32);
      if (v25)
      {
        cf = v25;
        operator delete(v25);
      }

      v25 = 0;
      cf = 0;
      v27 = 0;
      strcpy(v28, "cwdv");
      v29 = 0;
      v30 = 3;
      v32 = 0;
      v33 = 0;
      v31 = &v32;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v34 = 44731034;
      sub_87760(&v23, a2, v6 + 8, &v25);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v32);
      if (v25)
      {
        cf = v25;
        operator delete(v25);
      }

      v8 = sub_47A88(v38, v39);
      v21 = v8;
      sub_88F9C(&v25, &v21);
      sub_88E68(v40, &v25);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v9 = sub_47A88(v23, v24);
      v21 = v9;
      sub_88FE8(&v25, &v21);
      sub_88E68(v40, &v25);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      v25 = 0;
      cf = 0;
      v27 = 0;
      strcpy(v28, "cwdv");
      v29 = 0;
      v30 = 3;
      v32 = 0;
      v33 = 0;
      v31 = &v32;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v34 = 44731018;
      sub_87760(&v21, a2, v6 + 32, &v25);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v32);
      if (v25)
      {
        cf = v25;
        operator delete(v25);
      }

      v25 = 0;
      cf = 0;
      v27 = 0;
      strcpy(v28, "cwdv");
      v29 = 0;
      v30 = 3;
      v32 = 0;
      v33 = 0;
      v31 = &v32;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v34 = 44731034;
      sub_87760(&v19, a2, v6 + 32, &v25);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v32);
      if (v25)
      {
        cf = v25;
        operator delete(v25);
      }

      v10 = sub_47A88(v21, v22);
      valuePtr = v10;
      sub_88CE8(&v25, "connected input ports");
      CFRetain(v10);
      cf = v10;
      sub_88E68(v40, &v25);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      CFRelease(v10);
      v11 = sub_47A88(v19, v20);
      valuePtr = v11;
      sub_88CE8(&v25, "connected output ports");
      CFRetain(v11);
      cf = v11;
      sub_88E68(v40, &v25);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      CFRelease(v11);
      v12 = sub_758D4(*v6, *(v6 + 4), *(a2 + 144), *(a2 + 152));
      if (v12)
      {
        v13 = v12;
        if (((*(*v12 + 128))(v12) & 1) == 0)
        {
          LODWORD(valuePtr) = *(v13 + 8);
          sub_75920(&v25, &valuePtr);
          sub_88E68(v40, &v25);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          sub_65388(&valuePtr, *(v13 + 400));
          sub_75A04(&v25, &valuePtr);
          sub_88E68(v40, &v25);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          if (valuePtr)
          {
            CFRelease(valuePtr);
          }

          sub_88CE8(&v25, "persisted");
          cf = kCFBooleanTrue;
          sub_88E68(v40, &v25);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v25)
          {
            CFRelease(v25);
          }
        }

        sub_75A50(&v25, v13, &v41, v40);
        sub_75F38(v43, &v25);
        v14 = v25;
        if (!v25)
        {
          goto LABEL_76;
        }
      }

      else
      {
        sub_88CE8(&v25, "device type");
        LODWORD(valuePtr) = *v6;
        cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        sub_88E68(v40, &v25);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (v41 != v42)
        {
          v15 = sub_3A635C(v41, v42);
          valuePtr = v15;
          sub_3A6400(&v25, &valuePtr);
          sub_88E68(v40, &v25);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }

        sub_A69D8(&valuePtr, v6);
        sub_75EEC(&v25, &valuePtr);
        sub_88E68(v40, &v25);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        v25 = sub_65448(v40);
        sub_75F38(v43, &v25);
        v14 = v25;
        if (!v25)
        {
          goto LABEL_76;
        }
      }

      CFRelease(v14);
LABEL_76:
      sub_477A0(*v20);
      sub_477A0(*v22);
      sub_477A0(*v24);
      sub_477A0(*v39);
      v25 = v40;
      sub_65830(&v25);
      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      v6 += 56;
    }

    while (v6 != v7);
  }

  *a1 = sub_76110(v43);
  v25 = v43;
  sub_761AC(&v25);
  sub_7624C(v44[1]);
}

void sub_88604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = (v22 - 136);
  sub_761AC(&a22);
  sub_7624C(*(v22 - 104));
  _Unwind_Resume(a1);
}

void sub_88840(uint64_t *a1, uint64_t a2, unsigned int a3, char a4)
{
  v17 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    v8 = *(a2 + 8);
    v6 = (a2 + 8);
    v7 = v8;
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v6;
    v10 = v7;
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 >= a3;
      v13 = v11 < a3;
      if (v12)
      {
        v9 = v10;
      }

      v10 = v10[v13];
    }

    while (v10);
    if (v9 == v6 || *(v9 + 8) > a3)
    {
      goto LABEL_20;
    }

    while (1)
    {
      while (1)
      {
        v14 = *(v7 + 8);
        if (v14 <= a3)
        {
          break;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      if (v14 >= a3)
      {
        break;
      }

      v7 = v7[1];
      if (!v7)
      {
LABEL_15:
        sub_DE7DC("map::at:  key not found");
      }
    }

    if (v7 + 5 == a1 || (sub_16B928(a1, v7[5], v7[6], (v7[6] - v7[5]) >> 2), *a1 == a1[1]))
    {
LABEL_20:
      v15 = *sub_5544(2);
      v16 = v15;
      if (v15)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v19 = "VirtualAudio_PlugIn.mm";
          v20 = 1024;
          v21 = 538;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d No sessions IDs found for context ID %u", buf, 0x18u);
        }
      }
    }
  }

  else if ((a4 & 1) == 0)
  {
    sub_AFD28(a1, &v17);
  }
}

std::__shared_weak_count *sub_88A00(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_88B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_88BA4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v2 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    if (*(i + 104) == 1)
    {
      v5 = *(i + 100);
      if ((v5 & 0x100000000) == 0)
      {
        sub_1EC054();
      }

      v6 = *v2;
      if (!*v2)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 32);
          if (v8 <= v5)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_10;
          }
        }

        if (v8 >= v5)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v9 = *(i + 96);
      sub_AFD28((v7 + 5), &v9);
    }
  }
}

CFStringRef *sub_88CE8(CFStringRef *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *a1 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_88E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1D5FAC(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_88E68(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = *result;
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_189A00();
    }

    v10 = v5 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = v3;
    if (v11)
    {
      sub_1DB894(v11);
    }

    v12 = (16 * v8);
    v16 = 0;
    v17 = v12;
    *v12 = *a2;
    *a2 = 0;
    v12[1] = a2[1];
    a2[1] = 0;
    v18 = (16 * v8 + 16);
    sub_65184(v3, v7, v4, 0);
    v13 = *v3;
    *v3 = 0;
    v14 = *(v3 + 16);
    v15 = v18;
    *(v3 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = sub_65134(&v16);
    v6 = v15;
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    v4[1] = a2[1];
    a2[1] = 0;
    v6 = v4 + 2;
  }

  *(v3 + 8) = v6;
  return result;
}

uint64_t sub_88F9C(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "input ports");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_88FE8(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "output ports");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_89034(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (!*a1 || (v6 = atomic_load((v5 + 16)), (v6 & 1) == 0))
      {
LABEL_52:
        sub_1A8C0(v4);
        return;
      }

      v8 = *(v5 + 32);
      v7 = *(v5 + 40);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v5 + 48);
      v32[0] = 0;
      v32[1] = 0;
      v31 = v32;
      v10 = *(v5 + 56);
      if (v10 != (v5 + 64))
      {
        do
        {
          sub_898B8(&v31, v32, v10 + 4);
          v11 = v10[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v10[2];
              v13 = *v12 == v10;
              v10 = v12;
            }

            while (!v13);
          }

          v10 = v12;
        }

        while (v12 != (v5 + 64));
      }

      if (v7)
      {
        v14 = std::__shared_weak_count::lock(v7);
        if (v14)
        {
          v15 = v14;
          if (v8)
          {
            memset(buf, 0, sizeof(buf));
            sub_53E8(&__p, "measuredWattsParameterID");
            v16 = *sub_89AB0(&v31, &__p);
            if (v38 < 0)
            {
              operator delete(__p);
            }

            if (v16 != -1)
            {
              sub_53E8(&__p, "measuredWattsParameterID");
              v17 = sub_89AB0(&v31, &__p);
              v18 = sub_89AF0(v8, v9, *v17);
              LODWORD(p_p) = v18;
              v19 = HIDWORD(v18);
              BYTE4(p_p) = BYTE4(v18);
              if (v38 < 0)
              {
                operator delete(__p);
              }

              if (v19)
              {
                sub_9893C(&__p, "Avg Watts Measured", &p_p);
                sub_88E68(buf, &__p);
                if (cf)
                {
                  CFRelease(cf);
                }

                if (__p)
                {
                  CFRelease(__p);
                }
              }
            }

            sub_53E8(&__p, "modelledWattsParameterID");
            v20 = *sub_89AB0(&v31, &__p);
            if (v38 < 0)
            {
              operator delete(__p);
            }

            if (v20 != -1)
            {
              sub_53E8(&__p, "modelledWattsParameterID");
              p_p = &__p;
              v21 = sub_9793C(&v31, &__p);
              v22 = sub_89AF0(v8, v9, *(v21 + 56));
              v34 = v22;
              v23 = HIDWORD(v22);
              v35 = BYTE4(v22);
              if (v38 < 0)
              {
                operator delete(__p);
              }

              if (v23)
              {
                sub_9893C(&__p, "Avg Watts Modelled", &v34);
                sub_88E68(buf, &__p);
                if (cf)
                {
                  CFRelease(cf);
                }

                if (__p)
                {
                  CFRelease(__p);
                }
              }
            }

            v24 = sub_65448(buf);
            v33 = v24;
            __p = buf;
            sub_65830(&__p);
            sub_1A8C0(v15);
            sub_98A08(v32[0]);
            std::__shared_weak_count::__release_weak(v7);
            if (CFDictionaryGetCount(v24))
            {
              std::recursive_mutex::lock((v5 + 80));
              sub_98AA0((v5 + 144), &v33);
              if (*(v5 + 152) - *(v5 + 144) >= 0x59uLL)
              {
                sub_EC3A8(v5);
              }

              std::recursive_mutex::unlock((v5 + 80));
            }

LABEL_48:
            v27 = dispatch_time(0, 5000000000);
            v28 = sub_68E60();
            block[0] = _NSConcreteStackBlock;
            block[1] = 1174405120;
            block[2] = sub_A2614;
            block[3] = &unk_6B8D08;
            block[4] = v5;
            v30 = v4;
            atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
            dispatch_after(v27, v28, block);
            if (v30)
            {
              sub_1A8C0(v30);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            goto LABEL_52;
          }

          sub_1A8C0(v14);
        }
      }

      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PowerLogManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 155;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to lock DSPChain.", buf, 0x12u);
      }

      v33 = 0;
      sub_98A08(v32[0]);
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v24 = 0;
      goto LABEL_48;
    }
  }
}

void sub_8949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_89588(uint64_t *a1)
{
  v3 = a1;
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_89034(v4);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  return sub_8BE90(&v3);
}

uint64_t sub_898B8(uint64_t result, uint64_t *a2, void **a3)
{
  v5 = result;
  v6 = result + 8;
  if ((result + 8) != a2)
  {
    result = sub_6F834(a3, a2 + 4);
    if ((result & 0x80) == 0)
    {
      result = sub_6F834(a2 + 4, a3);
      if ((result & 0x80) == 0)
      {
        v16 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }

        return result;
      }

      v10 = a2[1];
      if (v10)
      {
        v11 = a2[1];
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v15 = a2;
        do
        {
          v12 = v15[2];
          v14 = *v12 == v15;
          v15 = v12;
        }

        while (!v14);
      }

      if (v12 == v6 || (result = sub_6F834(a3, v12 + 4), (result & 0x80) != 0))
      {
        if (v10)
        {
          v16 = v12;
        }

        else
        {
          v16 = a2;
          v12 = (a2 + 1);
        }

        goto LABEL_22;
      }

LABEL_19:
      result = sub_6F86C(v5, &v16, a3);
      v12 = result;
      goto LABEL_22;
    }
  }

  v7 = *a2;
  if (*v5 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = sub_6F834(v9 + 4, a3);
    if ((result & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v16 = a2;
    goto LABEL_25;
  }

  v16 = v9;
  v12 = (v9 + 1);
LABEL_22:
  if (!*v12)
  {
LABEL_25:
    operator new();
  }

  return result;
}

uint64_t sub_89AB0(uint64_t a1, void **a2)
{
  v2 = *sub_6F86C(a1, &v4, a2);
  if (!v2)
  {
    sub_DE7DC("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t sub_89AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v11 = 0;
  v4 = (*(*a1 + 64))(a1, a2, a3, &v11, 0);
  if (v4)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v3);
      if (v13 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315906;
      v15 = "PowerLogManager.cpp";
      v16 = 1024;
      v17 = 124;
      v18 = 2080;
      v19 = v7;
      v20 = 1024;
      LODWORD(v21) = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get power param (%s): %d", buf, 0x22u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = v11;
    v8 = 0x100000000;
  }

  return v9 | v8;
}

void sub_89EB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_89ED4(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5)
{
  v10 = sub_8BE08(a2, a3);
  if (HIDWORD(v10))
  {
    v18 = v10;
    if (sub_8BD58(v10))
    {
      v19 = *(a1 + 1216);
      if (!v19)
      {
        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v29 = *(a1 + 728);
          }

          v24 = __dst;
          if (v29 < 0)
          {
            v24 = __dst[0];
          }

          *buf = 136315650;
          v31 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v32 = 1024;
          v33 = 98;
          v34 = 2080;
          v35 = v24;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      v20 = *(v19 + 16);
      v21 = *(v19 + 148);

      return sub_8A234(v20, v21, v18, a4);
    }

    else
    {

      return sub_1DD35C(a1, 0x64737067u, v18, a4, a5);
    }
  }

  else
  {
    v11 = sub_5544(25);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v13 = SHIBYTE(v29);
      v14 = __dst[0];
      sub_22170(__p, a3);
      v15 = __dst;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v27 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315906;
      v31 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v32 = 1024;
      v33 = 109;
      v34 = 2080;
      v35 = v15;
      v36 = 2080;
      v37 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphParameter failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 4294967246;
  }
}

uint64_t sub_8A234(uint64_t a1, char a2, int a3, void *a4)
{
  inQualifierData = a3;
  if (a2)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  inAddress.mSelector = 1684500589;
  inAddress.mScope = v5;
  inAddress.mElement = 0;
  ioDataSize = 0;
  v6 = (*(*a1 + 120))(a1);
  return AudioObjectGetPropertyData(v6, &inAddress, 4u, &inQualifierData, &ioDataSize, a4);
}

uint64_t *sub_8A2C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v29 = a1;
  v30[0] = v1;
  v30[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_8AFBC(&v31, v30, 52);
  v3 = v31;
  if (v31)
  {
    if (*(v31 + 80))
    {
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OrientationIODelegate.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 62;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    sub_8BD14(buf, *(v31 + 8), *(v31 + 16));
    v5 = *buf;
    v4 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_1A8C0(v4);
    }

    v6 = sub_5544(17);
    v7 = sub_5544(25);
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
        if ((v9 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

    if (*(v6 + 8))
    {
LABEL_15:
      v11 = *v6;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315650;
        *&buf[4] = "OrientationIODelegate.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 66;
        *&buf[18] = 2080;
        *&buf[20] = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registering %s for Device Orientation Updates", buf, 0x1Cu);
      }
    }

LABEL_20:
    v13 = *(v3 + 96);
    v15 = (v3 + 24);
    v14 = *(v3 + 24);
    if (*(v3 + 47) >= 0)
    {
      v16 = (v3 + 24);
    }

    else
    {
      v16 = *(v3 + 24);
    }

    sub_8AA24(v33, v16);
    v17 = *&v33[8];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_8AAFC;
    *&buf[24] = &unk_6CFF38;
    v39 = v5;
    v40 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v13(v17, buf);
    sub_8AAAC(v33);
    *(v3 + 80) = v18 == 0;
    if (v18)
    {
      v19 = sub_5544(17);
      v20 = sub_5544(25);
      v21 = 0;
      *v33 = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&v33[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_32;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_32:
      v24 = *v19;
      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (*(v3 + 47) < 0)
        {
          v15 = *v15;
        }

        *v33 = 136315906;
        *&v33[4] = "OrientationIODelegate.cpp";
        *&v33[12] = 1024;
        *&v33[14] = 79;
        v34 = 1024;
        v35 = v18;
        v36 = 2080;
        v37 = v15;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed [%d] to register %s for Device Orientation Updates", v33, 0x22u);
      }
    }

    if (v40)
    {
      std::__shared_weak_count::__release_weak(v40);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (v32)
  {
    sub_1A8C0(v32);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_8BE90(&v29);
}

void *sub_8AA24(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  *a1 = &off_6DACD8;
  a1[1] = v5;
  return a1;
}

uint64_t sub_8AA90(uint64_t result, uint64_t a2)
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

void *sub_8AAAC(void *a1)
{
  *a1 = off_6DD2E0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_8AAFC(uint64_t a1, int a2)
{
  sub_8AFBC(&v11, (a1 + 32), 71);
  v3 = v11;
  if (v11)
  {
    v4 = sub_5544(17);
    v5 = sub_5544(25);
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
        if ((v7 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        v9 = *v4;
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "OrientationIODelegate.cpp";
          v16 = 1024;
          v17 = 93;
          v18 = 1024;
          v19 = a2;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received Device Orientation [%d] Update", buf, 0x18u);
        }

LABEL_13:
        sub_8BD14(&v13, *(v3 + 8), *(v3 + 16));
        v10 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v10);
          sub_8BEE4();
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          sub_8BEE4();
        }

        operator new();
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

    if (*(v4 + 8))
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }
}