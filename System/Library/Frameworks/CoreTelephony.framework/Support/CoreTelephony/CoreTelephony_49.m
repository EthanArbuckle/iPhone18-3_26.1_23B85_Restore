uint64_t sub_1003167A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_100F11BEC(v7, v4);
        v4 += 216;
        v7 += 216;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 216;
      sub_100E3A5D4(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_100316838@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  memset(v97, 0, sizeof(v97));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v96 = *(a2 + 16);
  }

  v6 = sub_1003160B8(a1, __p, v97);
  v7 = v6;
  if (SHIBYTE(v96) < 0)
  {
    operator delete(__p[0]);
    if ((v7 & 1) == 0)
    {
LABEL_13:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return sub_100111ED0(v97);
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((a1[240] & 1) == 0 || (BYTE8(v98) & 1) == 0)
  {
    goto LABEL_13;
  }

  v120 = 0;
  memset(v119, 0, sizeof(v119));
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  if (sub_100315FB0(a1, a2, &v116))
  {
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    if (sub_100315E44(a1, a2, v114))
    {
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      *v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      memset(v81, 0, sizeof(v81));
      v79 = 0u;
      sub_10000C320(&v79);
      v8 = sub_10000C030(&v80);
      v9 = sub_10000C030(v8);
      v10 = sub_10000C030(v9);
      v11 = sub_10000C030(v10);
      v12 = sub_10000C030(v11);
      v13 = sub_10000C030(v12);
      v14 = sub_10000C030(v13);
      v15 = sub_10000C030(v14);
      v16 = sub_10000C030(v15);
      v17 = sub_10000C030(v16);
      v18 = sub_10000C030(v17);
      v19 = sub_10000C030(v18);
      v20 = sub_10000C030(v19);
      v21 = sub_10000C030(v20);
      v22 = sub_10000C030(v21);
      v23 = sub_10000C030(v22);
      v24 = sub_10000C030(v23);
      v25 = sub_10000C030(v24);
      v26 = sub_10000C030(v25);
      v27 = sub_10000C030(v26);
      v28 = sub_10000C030(v27);
      v29 = sub_10000C030(v28);
      v30 = sub_10000C030(v29);
      v31 = sub_10000C030(v30);
      v32 = sub_10000C030(v31);
      sub_10000C030(v32);
      v33 = std::ostream::operator<<();
      LOBYTE(v77) = 36;
      v34 = sub_10000C030(v33);
      v35 = sub_10000C030(v34);
      sub_10031651C(a1, &v77);
      v36 = sub_10000C030(v35);
      LOBYTE(v75) = 36;
      v37 = sub_10000C030(v36);
      v38 = sub_10000C030(v37);
      sub_100922314(&v117, v39, &v75);
      v40 = sub_10000C030(v38);
      v41 = sub_10000C030(v40);
      sub_10000C030(v41);
      v43 = std::ostream::operator<<();
      v44 = sub_10000C030(v43);
      v45 = sub_10000C030(v44);
      v46 = sub_10000C030(v45);
      LOBYTE(v73) = 36;
      v47 = sub_10000C030(v46);
      v48 = sub_10000C030(v47);
      sub_100316560(a1, &v73);
      v49 = sub_10000C030(v48);
      v50 = sub_10000C030(v49);
      v51 = sub_10000C030(v50);
      v52 = sub_10000C030(v51);
      LOBYTE(v71) = 36;
      v53 = sub_10000C030(v52);
      v54 = sub_10000C030(v53);
      sub_1003162A0(a1, &v71);
      v55 = sub_10000C030(v54);
      v113 = 36;
      v56 = sub_10000C030(v55);
      v57 = sub_10000C030(v56);
      v58 = sub_10000C030(v57);
      v113 = 36;
      v59 = sub_10000C030(v58);
      v60 = sub_10000C030(v59);
      v61 = sub_10000C030(v60);
      v113 = 36;
      v62 = sub_10000C030(v61);
      v63 = sub_10000C030(v62);
      v64 = sub_10000C030(v63);
      v113 = 36;
      v65 = sub_10000C030(v64);
      v66 = sub_10000C030(v65);
      v67 = v66;
      if (!*(v66 + *(*v66 - 24) + 32))
      {
        sub_10000C030(v66);
      }

      v113 = 36;
      v68 = sub_10000C030(v67);
      v69 = sub_10000C030(v68);
      sub_10000C030(v69);
      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (v74 < 0)
      {
        operator delete(v73);
      }

      if (v76 < 0)
      {
        operator delete(v75);
      }

      if (v78 < 0)
      {
        operator delete(v77);
      }

      sub_100061574(&v79, a3);
      *&v80 = v70;
      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82[1]);
      }

      std::locale::~locale(v81);
      std::iostream::~basic_iostream();
      std::ios::~ios();
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    sub_100E3A5D4(v114);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  if (v120 == 1)
  {
    *&v79 = v119 + 8;
    sub_100112120(&v79);
  }

  if (SBYTE7(v119[0]) < 0)
  {
    operator delete(v118);
  }

  return sub_100111ED0(v97);
}

void sub_100317210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_10068C9D8(&a30);
  sub_100E3A5D4(&STACK[0x360]);
  sub_100F01778(v70 - 160);
  sub_100111ED0(&a70);
  _Unwind_Resume(a1);
}

void sub_1003172C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1003172B8);
}

void sub_1003172E0(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 240);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v107 = 0;
    v106 = 0;
    v108 = 0;
    sub_100316428(a1, a2, &v106);
    memset(&v105, 0, sizeof(v105));
    if (v108)
    {
      std::string::operator=(&v105, (v106 + 32));
    }

    else
    {
      v109[1] = 0;
      v109[0] = 0;
      sub_100922314(v109, v6, &__dst);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      v105 = __dst;
    }

    v7 = *(a1 + 200);
    v24 = *(a1 + 208);
    if (v7 != v24)
    {
      while (*(v7 + 80) != 1)
      {
LABEL_122:
        v7 += 88;
        if (v7 == v24)
        {
          goto LABEL_123;
        }
      }

      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      while (1)
      {
        if (v8 == v9)
        {
          goto LABEL_122;
        }

        if ((*(v8 + 89) & 1) == 0)
        {
          if ((*(v8 + 39) & 0x8000000000000000) != 0)
          {
            if (!*(v8 + 24))
            {
              goto LABEL_121;
            }

LABEL_16:
            memset(v116, 0, sizeof(v116));
            v115 = 0u;
            v114 = 0u;
            v113 = 0u;
            memset(__src, 0, sizeof(__src));
            *v111 = 0u;
            memset(v110, 0, sizeof(v110));
            *v109 = 0u;
            if (*(v8 + 39) < 0)
            {
              sub_100005F2C(__p, *(v8 + 16), *(v8 + 24));
            }

            else
            {
              *__p = *(v8 + 16);
              v104 = *(v8 + 32);
            }

            v10 = sub_1003160B8(a1, __p, v109);
            v11 = v10;
            if (SHIBYTE(v104) < 0)
            {
              operator delete(__p[0]);
              if ((v11 & 1) == 0)
              {
LABEL_120:
                sub_100111ED0(v109);
                goto LABEL_121;
              }
            }

            else if ((v10 & 1) == 0)
            {
              goto LABEL_120;
            }

            v102 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(v100, 0, sizeof(v100));
            v97 = 0u;
            *v98 = 0u;
            v95 = 0u;
            *v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            *v92 = 0u;
            v89 = 0u;
            *v90 = 0u;
            v88 = 0u;
            sub_10027EF58(&v88, v116);
            sub_100931630(&v88);
            if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__dst, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = v105;
            }

            if (*(v8 + 39) < 0)
            {
              sub_100005F2C(&v26, *(v8 + 16), *(v8 + 24));
            }

            else
            {
              v12 = *(v8 + 16);
              v27 = *(v8 + 32);
              v26 = v12;
            }

            if (*(v8 + 119) < 0)
            {
              sub_100005F2C(&v28, *(v8 + 96), *(v8 + 104));
            }

            else
            {
              v28 = *(v8 + 96);
              v29 = *(v8 + 112);
            }

            if (*(v8 + 143) < 0)
            {
              sub_100005F2C(&v30, *(v8 + 120), *(v8 + 128));
            }

            else
            {
              v30 = *(v8 + 120);
              v31 = *(v8 + 136);
            }

            if (*(v8 + 167) < 0)
            {
              sub_100005F2C(&v32, *(v8 + 144), *(v8 + 152));
            }

            else
            {
              v32 = *(v8 + 144);
              v33 = *(v8 + 160);
            }

            if (*(v8 + 191) < 0)
            {
              sub_100005F2C(&v34, *(v8 + 168), *(v8 + 176));
            }

            else
            {
              v34 = *(v8 + 168);
              v35 = *(v8 + 184);
            }

            if (SHIBYTE(__src[3]) < 0)
            {
              sub_100005F2C(&v36, __src[1], __src[2]);
            }

            else
            {
              v36 = *&__src[1];
              v37 = __src[3];
            }

            if (BYTE8(v99) == 1)
            {
              if (SBYTE7(v99) < 0)
              {
                sub_100005F2C(&v38, v98[0], v98[1]);
              }

              else
              {
                v38 = *v98;
                v39 = v99;
              }
            }

            else
            {
              sub_10000501C(&v38, "");
            }

            if (SHIBYTE(v110[0]) < 0)
            {
              sub_100005F2C(&v40, v109[0], v109[1]);
            }

            else
            {
              v40 = *v109;
              v41 = v110[0];
            }

            if (*(v8 + 215) < 0)
            {
              v14 = *(v8 + 200);
              if (!v14)
              {
                goto LABEL_57;
              }

              sub_100005F2C(&v42, *(v8 + 192), v14);
            }

            else
            {
              if (*(v8 + 215))
              {
                v13 = *(v8 + 192);
                v43 = *(v8 + 208);
                v42 = v13;
                goto LABEL_58;
              }

LABEL_57:
              sub_10031651C(a1, &v42);
            }

LABEL_58:
            if (BYTE8(v91) == 1)
            {
              if (SBYTE7(v91) < 0)
              {
                sub_100005F2C(&v44, v90[0], v90[1]);
              }

              else
              {
                v44 = *v90;
                v45 = v91;
              }
            }

            else
            {
              sub_10000501C(&v44, "");
            }

            if (BYTE8(v93) == 1)
            {
              if (SBYTE7(v93) < 0)
              {
                sub_100005F2C(&v46, v92[0], v92[1]);
              }

              else
              {
                v46 = *v92;
                v47 = v93;
              }
            }

            else
            {
              sub_10000501C(&v46, "");
            }

            v48 = *v7 == 0;
            v49 = *(v8 + 90);
            v50 = BYTE1(v100[4]);
            v51 = 0;
            v52 = 0;
            if (BYTE9(v89))
            {
              v15 = BYTE8(v89);
            }

            else
            {
              v15 = 0;
            }

            v53 = v15;
            v54 = v100[4];
            v55 = BYTE2(v100[4]);
            if (BYTE1(v100[0]))
            {
              v16 = v100[0];
            }

            else
            {
              v16 = 4;
            }

            v56 = v16;
            v18 = *(a1 + 376);
            v17 = *(a1 + 384);
            while (1)
            {
              if (v18 == v17)
              {
                v19 = 0;
                goto LABEL_80;
              }

              if (sub_10016FA58((v18 + 14), (v8 + 16)))
              {
                break;
              }

              v18 += 20;
            }

            v19 = *v18;
LABEL_80:
            v57 = v19;
            if (*(a1 + 369) == 1)
            {
              v20 = *(a1 + 368);
            }

            else
            {
              v20 = 0;
            }

            v21 = 0;
            v58 = v20;
            v59 = 0;
            if (*(a1 + 240) == 1)
            {
              v21 = *(a1 + 232);
            }

            v60 = v21;
            if (*(a1 + 319) < 0)
            {
              sub_100005F2C(&v61, *(a1 + 296), *(a1 + 304));
            }

            else
            {
              v61 = *(a1 + 296);
              v62 = *(a1 + 312);
            }

            if (*(a1 + 295) < 0)
            {
              sub_100005F2C(&v63, *(a1 + 272), *(a1 + 280));
            }

            else
            {
              v63 = *(a1 + 272);
              v64 = *(a1 + 288);
            }

            sub_100316560(a1, &v65);
            if (*(a1 + 271) < 0)
            {
              sub_100005F2C(&v66, *(a1 + 248), *(a1 + 256));
            }

            else
            {
              v66 = *(a1 + 248);
              v67 = *(a1 + 264);
            }

            sub_1003162A0(a1, &v68);
            sub_10031651C(a1, &v69);
            if (*(a1 + 367) < 0)
            {
              sub_100005F2C(&v70, *(a1 + 344), *(a1 + 352));
            }

            else
            {
              v70 = *(a1 + 344);
              v71 = *(a1 + 360);
            }

            if (SHIBYTE(v110[3]) < 0)
            {
              sub_100005F2C(&v72, v110[1], v110[2]);
            }

            else
            {
              v72 = *&v110[1];
              v73 = v110[3];
            }

            if (SHIBYTE(__src[0]) < 0)
            {
              sub_100005F2C(&v74, v111[0], v111[1]);
            }

            else
            {
              v74 = *v111;
              v75 = __src[0];
            }

            v77 = 0u;
            v78 = 0u;
            v76 = 0u;
            if (BYTE8(v97) == 1)
            {
              if (SBYTE7(v97) < 0)
              {
                sub_100005F2C(&v79, v96[0], v96[1]);
              }

              else
              {
                v79 = *v96;
                v80 = v97;
              }
            }

            else
            {
              sub_10000501C(&v79, "");
            }

            if (SHIBYTE(v100[3]) < 0)
            {
              sub_100005F2C(&v81, v100[1], v100[2]);
            }

            else
            {
              v81 = *&v100[1];
              v82 = v100[3];
            }

            if (v101 == 1)
            {
              if (SHIBYTE(v100[7]) < 0)
              {
                sub_100005F2C(&v83, v100[5], v100[6]);
              }

              else
              {
                v83 = *&v100[5];
                v84 = v100[7];
              }
            }

            else
            {
              sub_10000501C(&v83, "");
            }

            v85 = WORD4(v102);
            v86 = *(&v101 + 1);
            v87 = v102;
            v22 = a3[1];
            if (v22 >= a3[2])
            {
              v23 = sub_10031AB00(a3, &__dst);
            }

            else
            {
              sub_10031AC4C(a3, a3[1], &__dst);
              v23 = v22 + 672;
            }

            a3[1] = v23;
            sub_10027DF50(&__dst);
            sub_100111F5C(&v88);
            goto LABEL_120;
          }

          if (*(v8 + 39))
          {
            goto LABEL_16;
          }
        }

LABEL_121:
        v8 += 216;
      }
    }

LABEL_123:
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    sub_100009970(&v106, v107);
  }
}

void sub_100317B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  sub_100009970(&STACK[0x458], STACK[0x460]);
  sub_10027B454(va);
  _Unwind_Resume(a1);
}

void sub_100317E50(std::string *a1@<X8>)
{
  memset(v14, 0, 24);
  ctu::split_any_copy();
  if (MEMORY[0x17] < 0)
  {
    if (v14[0]->__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_10;
    }

    data = v14[0]->__r_.__value_.__l.__data_;
  }

  else
  {
    data = v14[0];
    if (MEMORY[0x17] != 5)
    {
      goto LABEL_10;
    }
  }

  v3 = data->__r_.__value_.__l.__data_;
  v4 = data->__r_.__value_.__s.__data_[4];
  if (v3 != 977358924 || v4 != 49)
  {
    goto LABEL_10;
  }

  v6 = v14[0] + 1;
  v7 = SHIBYTE(v14[0][1].__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    if (v14[0][1].__r_.__value_.__l.__size_ == 2)
    {
      v6 = v6->__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_10:
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (LOWORD(v6->__r_.__value_.__l.__data_) != 21076)
  {
    goto LABEL_10;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1003180EC(v14, v12);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_10000501C(__p, "iccid");
  v8 = sub_10031B7D4(v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    sub_10000501C(__p, "iccid");
    v14[4] = __p;
    v9 = sub_10018D560(v12, __p);
    std::string::operator=(a1, (v9 + 5));
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10018D34C(v12);
LABEL_11:
  *&v12[0] = v14;
  sub_1000087B4(v12);
}

void sub_100317FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  sub_10018D34C(&a16);
  a16 = v17 - 56;
  sub_1000087B4(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_100318068(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_10013C334();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1003180EC(const std::string **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = std::string::find(v3, 58, 0);
      if (v5 != -1)
      {
        v6 = v5;
        memset(&v9, 0, sizeof(v9));
        std::string::basic_string(&v9, v3, 0, v5, &__p);
        memset(&__p, 0, sizeof(__p));
        std::string::basic_string(&__p, v3, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
        v10 = &v9;
        v7 = sub_10018D844(a2, &v9.__r_.__value_.__l.__data_);
        std::string::operator=((v7 + 5), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v9.__r_.__value_.__l.__data_);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_100318244(_BYTE *a1@<X8>)
{
  memset(v102, 0, sizeof(v102));
  ctu::split_any_copy();
  if (MEMORY[0x17] < 0)
  {
    if (v102[0]->__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_10;
    }

    data = v102[0]->__r_.__value_.__l.__data_;
  }

  else
  {
    data = v102[0];
    if (MEMORY[0x17] != 5)
    {
      goto LABEL_10;
    }
  }

  v3 = data->__r_.__value_.__l.__data_;
  v4 = data->__r_.__value_.__s.__data_[4];
  if (v3 != 977358924 || v4 != 49)
  {
    goto LABEL_10;
  }

  v6 = v102[0] + 1;
  v7 = SHIBYTE(v102[0][1].__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    if (v102[0][1].__r_.__value_.__l.__size_ == 2)
    {
      v6 = v6->__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_10:
    *a1 = 0;
    a1[408] = 0;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (LOWORD(v6->__r_.__value_.__l.__data_) != 21076)
  {
    goto LABEL_10;
  }

  v101 = 0;
  memset(v100, 0, sizeof(v100));
  sub_1003180EC(v102, v100);
  memset(&__str, 0, sizeof(__str));
  sub_10000501C(__p, "iccid");
  v8 = sub_10031B8D0(v100, __p);
  if (SHIBYTE(v65[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    sub_10000501C(__p, "iccid");
    *&v103[0] = __p;
    v9 = sub_10018D560(v100, __p);
    std::string::operator=(&__str, (v9 + 5));
    if (SHIBYTE(v65[0]) < 0)
    {
      operator delete(__p[0]);
    }

    memset(&v98, 0, sizeof(v98));
    sub_10000501C(__p, "mcc");
    v10 = sub_10031B8D0(v100, __p);
    if (SHIBYTE(v65[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_10000501C(__p, "mcc");
      *&v103[0] = __p;
      v11 = sub_10018D560(v100, __p);
      std::string::operator=(&v98, (v11 + 5));
      if (SHIBYTE(v65[0]) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&v97, 0, sizeof(v97));
      sub_10000501C(__p, "mnc");
      v12 = sub_10031B8D0(v100, __p);
      if (SHIBYTE(v65[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v12)
      {
        sub_10000501C(__p, "mnc");
        *&v103[0] = __p;
        v13 = sub_10018D560(v100, __p);
        std::string::operator=(&v97, (v13 + 5));
        if (SHIBYTE(v65[0]) < 0)
        {
          operator delete(__p[0]);
        }

        memset(&v96, 0, sizeof(v96));
        sub_10000501C(__p, "gid1");
        v14 = sub_10031B8D0(v100, __p);
        if (SHIBYTE(v65[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v14)
        {
          sub_10000501C(__p, "gid1");
          *&v103[0] = __p;
          v15 = sub_10018D560(v100, __p);
          std::string::operator=(&v96, (v15 + 5));
          if (SHIBYTE(v65[0]) < 0)
          {
            operator delete(__p[0]);
          }

          memset(&v95, 0, sizeof(v95));
          sub_10000501C(__p, "gid2");
          v16 = sub_10031B8D0(v100, __p);
          if (SHIBYTE(v65[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v16)
          {
            sub_10000501C(__p, "gid2");
            *&v103[0] = __p;
            v17 = sub_10018D560(v100, __p);
            std::string::operator=(&v95, (v17 + 5));
            if (SHIBYTE(v65[0]) < 0)
            {
              operator delete(__p[0]);
            }

            memset(&v94, 0, sizeof(v94));
            sub_10000501C(__p, "imsi");
            v18 = sub_10031B8D0(v100, __p);
            if (SHIBYTE(v65[0]) < 0)
            {
              operator delete(__p[0]);
            }

            if (v18)
            {
              sub_10000501C(__p, "imsi");
              *&v103[0] = __p;
              v19 = sub_10018D560(v100, __p);
              std::string::operator=(&v94, (v19 + 5));
              if (SHIBYTE(v65[0]) < 0)
              {
                operator delete(__p[0]);
              }

              memset(&v93, 0, sizeof(v93));
              sub_10000501C(__p, "token");
              v20 = sub_10031B8D0(v100, __p);
              if (SHIBYTE(v65[0]) < 0)
              {
                operator delete(__p[0]);
              }

              if (v20)
              {
                sub_10000501C(__p, "token");
                *&v103[0] = __p;
                v21 = sub_10018D560(v100, __p);
                std::string::operator=(&v93, (v21 + 5));
                if (SHIBYTE(v65[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                memset(&v92, 0, sizeof(v92));
                sub_10000501C(__p, "eid");
                v22 = sub_10031B8D0(v100, __p);
                if (SHIBYTE(v65[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                if (v22)
                {
                  sub_10000501C(__p, "eid");
                  *&v103[0] = __p;
                  v23 = sub_10018D560(v100, __p);
                  std::string::operator=(&v92, (v23 + 5));
                  if (SHIBYTE(v65[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  memset(&v91, 0, sizeof(v91));
                  sub_10000501C(__p, "clz");
                  v24 = sub_10031B8D0(v100, __p);
                  if (SHIBYTE(v65[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v24)
                  {
                    sub_10000501C(__p, "clz");
                    *&v103[0] = __p;
                    v25 = sub_10018D560(v100, __p);
                    std::string::operator=(&v91, (v25 + 5));
                    if (SHIBYTE(v65[0]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    memset(&v90, 0, sizeof(v90));
                    sub_10000501C(__p, "carrierName");
                    v26 = sub_10031B8D0(v100, __p);
                    if (SHIBYTE(v65[0]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (v26)
                    {
                      sub_10000501C(__p, "carrierName");
                      *&v103[0] = __p;
                      v27 = sub_10018D560(v100, __p);
                      std::string::operator=(&v90, (v27 + 5));
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      memset(&v89, 0, sizeof(v89));
                      sub_10000501C(__p, "expirationTime");
                      v28 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v28)
                      {
                        sub_10000501C(__p, "expirationTime");
                        *&v103[0] = __p;
                        v29 = sub_10018D560(v100, __p);
                        std::string::operator=(&v89, (v29 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v88, 0, sizeof(v88));
                      sub_10000501C(__p, "active");
                      v30 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v30)
                      {
                        sub_10000501C(__p, "active");
                        *&v103[0] = __p;
                        v31 = sub_10018D560(v100, __p);
                        std::string::operator=(&v88, (v31 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v87, 0, sizeof(v87));
                      sub_10000501C(__p, "imei");
                      v32 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v32)
                      {
                        sub_10000501C(__p, "imei");
                        *&v103[0] = __p;
                        v33 = sub_10018D560(v100, __p);
                        std::string::operator=(&v87, (v33 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v86, 0, sizeof(v86));
                      sub_10000501C(__p, "ver");
                      v34 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v34)
                      {
                        sub_10000501C(__p, "ver");
                        *&v103[0] = __p;
                        v35 = sub_10018D560(v100, __p);
                        std::string::operator=(&v86, (v35 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v85, 0, sizeof(v85));
                      sub_10000501C(__p, "sn");
                      v36 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v36)
                      {
                        sub_10000501C(__p, "sn");
                        *&v103[0] = __p;
                        v37 = sub_10018D560(v100, __p);
                        std::string::operator=(&v85, (v37 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v84, 0, sizeof(v84));
                      sub_10000501C(__p, "name");
                      v38 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v38)
                      {
                        sub_10000501C(__p, "name");
                        *&v103[0] = __p;
                        v39 = sub_10018D560(v100, __p);
                        std::string::operator=(&v84, (v39 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v83, 0, sizeof(v83));
                      sub_10000501C(__p, "ids");
                      v40 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v40)
                      {
                        sub_10000501C(__p, "ids");
                        *&v103[0] = __p;
                        v41 = sub_10018D560(v100, __p);
                        std::string::operator=(&v83, (v41 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v82, 0, sizeof(v82));
                      sub_10000501C(__p, "lbl.txt");
                      v42 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v42)
                      {
                        sub_10000501C(__p, "lbl.txt");
                        *&v103[0] = __p;
                        v43 = sub_10018D560(v100, __p);
                        std::string::operator=(&v82, (v43 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v81, 0, sizeof(v81));
                      sub_10000501C(__p, "lbl.tag");
                      v44 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v44)
                      {
                        sub_10000501C(__p, "lbl.tag");
                        *&v103[0] = __p;
                        v45 = sub_10018D560(v100, __p);
                        std::string::operator=(&v81, (v45 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v80, 0, sizeof(v80));
                      sub_10000501C(__p, "mdn");
                      v46 = sub_10031B8D0(v100, __p);
                      if (SHIBYTE(v65[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v46)
                      {
                        sub_10000501C(__p, "mdn");
                        *&v103[0] = __p;
                        v47 = sub_10018D560(v100, __p);
                        std::string::operator=(&v80, (v47 + 5));
                        if (SHIBYTE(v65[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      v48 = sub_100318068(&v88, "0");
                      v128 = 0uLL;
                      if (sub_1009222A0())
                      {
                        v79 = 0u;
                        v78 = 0u;
                        v77 = 0u;
                        v75 = 0u;
                        v76 = 0u;
                        v74 = 0u;
                        memset(v73, 0, sizeof(v73));
                        memset(v72, 0, sizeof(v72));
                        memset(v71, 0, sizeof(v71));
                        memset(v70, 0, sizeof(v70));
                        memset(v69, 0, sizeof(v69));
                        std::string::operator=(v69, &__str);
                        *&v69[24] = 259;
                        sub_1001696A4(v70, &v93);
                        sub_1001696A4(v73, &v94);
                        LOWORD(v74) = 257;
                        sub_1001696A4(v71, &v89);
                        sub_1001696A4(v72, &v90);
                        memset(v68, 0, sizeof(v68));
                        std::string::operator=(v68, &v82);
                        std::string::operator=(&v68[1], &v81);
                        memset(v67, 0, sizeof(v67));
                        memset(v66, 0, sizeof(v66));
                        memset(v65, 0, sizeof(v65));
                        *__p = 0u;
                        std::string::operator=(__p, &v80);
                        std::string::operator=(&v65[1], v68);
                        std::string::operator=(v66, &v68[1]);
                        sub_100319AF0(v67, v69);
                        v61 = 0;
                        v63 = 0u;
                        memset(v60, 0, sizeof(v60));
                        v62 = &v63;
                        v49 = v128 != 0;
                        if (v128 == 0)
                        {
                          v50 = 1;
                        }

                        else
                        {
                          v50 = 2;
                        }

                        LODWORD(v60[0]) = v50;
                        *&v103[0] = &__str;
                        v51 = sub_10031B9CC(&v62, &__str.__r_.__value_.__l.__data_);
                        sub_10031612C(v51 + 56, __p);
                        v59 = 0;
                        v58 = 0u;
                        memset(v57, 0, sizeof(v57));
                        memset(v56, 0, sizeof(v56));
                        std::string::operator=(v56, &v84);
                        std::string::operator=(v57, &v85);
                        std::string::operator=(&v57[24], &v91);
                        sub_100319BA8(&v58, v60);
                        v127 = 0;
                        memset(v126, 0, sizeof(v126));
                        memset(v125, 0, sizeof(v125));
                        v124 = 0u;
                        memset(v123, 0, sizeof(v123));
                        v122 = 0u;
                        std::string::operator=(v123, &__str);
                        BYTE10(v124) = !v48;
                        std::string::operator=(v125, &v98);
                        std::string::operator=(&v125[1], &v97);
                        std::string::operator=(v126, &v96);
                        std::string::operator=(&v126[24], &v95);
                        memset(&v120[8], 0, 32);
                        v119 = 0;
                        memset(v121, 0, sizeof(v121));
                        v118[0] = 2 * v49;
                        v118[1] = v50;
                        *v120 = v128;
                        sub_100F11F00(v103, &v122);
                        v105 = 0uLL;
                        *&v106 = 0;
                        sub_10031B3BC(&v105, v103, &v103[13] + 8, 1uLL);
                        sub_100319BEC(v121, &v105);
                        *v116 = &v105;
                        sub_100112120(v116);
                        sub_100E3A5D4(v103);
                        v55 = 0;
                        memset(v54, 0, sizeof(v54));
                        memset(v53, 0, sizeof(v53));
                        sub_100319C6C(v54, v118);
                        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v52 = &v86;
                        }

                        else
                        {
                          v52 = v86.__r_.__value_.__r.__words[0];
                        }

                        LODWORD(v55) = atoi(v52);
                        v117 = 0;
                        memset(v116, 0, sizeof(v116));
                        std::string::operator=(v116, &v83);
                        sub_10016C728(&v116[24], &v87);
                        memset(v115, 0, sizeof(v115));
                        v114 = 0u;
                        v113 = 0u;
                        v112 = 0u;
                        v111 = 0u;
                        v110 = 0u;
                        v109 = 0u;
                        v108 = 0u;
                        v107 = 0u;
                        v106 = 0u;
                        v105 = 0u;
                        cellplan::RemoteDeviceIdentifiers::operator=();
                        sub_100319CC4(v115 + 8, v53);
                        v104 = 0;
                        memset(v103, 0, sizeof(v103));
                        sub_100319D38(v103, &v105);
                        sub_100315D00(&v103[15] + 8, v56);
                        sub_10031B610(a1, v103);
                        sub_100111C2C(v103);
                        sub_10027E734(&v105);
                        sub_10027E6B0(v116);
                        sub_100319DE8(v53);
                        sub_100F01778(v118);
                        sub_100E3A5D4(&v122);
                        sub_100319E34(v56);
                        sub_100319EC0(v60);
                        sub_100111ED0(__p);
                        sub_1000D6F38(v68);
                        sub_100111F5C(v69);
                      }

                      else
                      {
                        *a1 = 0;
                        a1[408] = 0;
                      }

                      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v80.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v81.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v82.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v83.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v84.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v85.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v86.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v87.__r_.__value_.__l.__data_);
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

                    else
                    {
                      *a1 = 0;
                      a1[408] = 0;
                    }

                    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v90.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    *a1 = 0;
                    a1[408] = 0;
                  }

                  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v91.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  *a1 = 0;
                  a1[408] = 0;
                }

                if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v92.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                *a1 = 0;
                a1[408] = 0;
              }

              if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v93.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *a1 = 0;
              a1[408] = 0;
            }

            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *a1 = 0;
            a1[408] = 0;
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *a1 = 0;
          a1[408] = 0;
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a1 = 0;
        a1[408] = 0;
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a1 = 0;
      a1[408] = 0;
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = 0;
    a1[408] = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_10018D34C(v100);
LABEL_11:
  __p[0] = v102;
  sub_1000087B4(__p);
}

void sub_1003195D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_100319DE8(&a9);
  sub_100F01778(&STACK[0x978]);
  sub_100E3A5D4(&STACK[0x9D0]);
  sub_100319E34(&a19);
  sub_100319EC0(&a39);
  sub_100111ED0(&a49);
  sub_1000D6F38(&STACK[0x2F0]);
  sub_100111F5C(&STACK[0x320]);
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(STACK[0x518]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    operator delete(STACK[0x5A8]);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(STACK[0x5D8]);
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(STACK[0x5F0]);
  }

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(STACK[0x608]);
  }

  sub_10018D34C(&STACK[0x620]);
  a49 = &STACK[0x648];
  sub_1000087B4(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_100319AF0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  sub_10012BF3C((a1 + 32), (a2 + 32));
  sub_10012BF3C((a1 + 64), (a2 + 64));
  sub_10012BF3C((a1 + 96), (a2 + 96));
  sub_10012BF3C((a1 + 128), (a2 + 128));
  sub_10012BF3C((a1 + 160), (a2 + 160));
  *(a1 + 192) = *(a2 + 192);
  std::string::operator=((a1 + 200), (a2 + 200));
  v4 = *(a2 + 226);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = v4;
  sub_10012BF3C((a1 + 232), (a2 + 232));
  v5 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v5;
  return a1;
}

uint64_t sub_100319BA8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10031B00C(a1, a2);
  }

  else
  {
    sub_10031AF2C(a1, a2);
    v4 = v3 + 80;
  }

  a1[1] = v4;
  return v4 - 80;
}

uint64_t sub_100319BEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100114B30(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_100319C6C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10031B4C8(a1, a2);
  }

  else
  {
    sub_100F11B6C(a1[1], a2);
    v4 = v3 + 88;
    a1[1] = v3 + 88;
  }

  a1[1] = v4;
  return v4 - 88;
}

uint64_t sub_100319CC4(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 != a2)
  {
    sub_100169D44(a1 + 32, *(a2 + 32), *(a2 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  return a1;
}

uint64_t sub_100319D38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    sub_10016E810(a1, a2);
    cellplan::RemoteDeviceIdentifiers::operator=();
    std::string::operator=((a1 + 168), (a2 + 168));
    *(a1 + 192) = *(a2 + 192);
    if (a1 != a2)
    {
      sub_100169D44(a1 + 200, *(a2 + 200), *(a2 + 208), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
    }

    v4 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v4;
  }

  else
  {
    sub_10027E420(a1, a2);
    *(a1 + 240) = 1;
  }

  return a1;
}

uint64_t sub_100319DE8(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_100112048(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100319E34(uint64_t a1)
{
  v3 = (a1 + 128);
  sub_100111D64(&v3);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100319EC0(uint64_t a1)
{
  sub_100111E24(a1 + 56, *(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100319F10(uint64_t result, __int16 a2)
{
  if ((*(result + 912) & 1) == 0)
  {
    *(result + 911) = a2 | 0x100;
  }

  return result;
}

uint64_t sub_100319F28(uint64_t result, int a2)
{
  if (a2 != 70000)
  {
    *(result + 916) = a2;
    *(result + 920) = 1;
  }

  return result;
}

uint64_t sub_100319F44(uint64_t result)
{
  if (*(result + 191) < 0)
  {
    **(result + 168) = 0;
    *(result + 176) = 0;
  }

  else
  {
    *(result + 168) = 0;
    *(result + 191) = 0;
  }

  if (*(result + 167) < 0)
  {
    **(result + 144) = 0;
    *(result + 152) = 0;
  }

  else
  {
    *(result + 144) = 0;
    *(result + 167) = 0;
  }

  *(result + 274) = -1;
  *(result + 282) = -1;
  if (*(result + 343) < 0)
  {
    **(result + 320) = 0;
    *(result + 328) = 0;
  }

  else
  {
    *(result + 320) = 0;
    *(result + 343) = 0;
  }

  *(result + 592) = -1;
  *(result + 584) = -1;
  if (*(result + 623) < 0)
  {
    **(result + 600) = 0;
    *(result + 608) = 0;
  }

  else
  {
    *(result + 600) = 0;
    *(result + 623) = 0;
  }

  return result;
}

void sub_100319FE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 25) == 1)
  {
    *(a1 + 240) = *(a2 + 24);
  }

  if (*(a2 + 56) == 1)
  {
    std::string::operator=((a1 + 168), (a2 + 32));
  }

  if (*(a2 + 88) == 1)
  {
    std::string::operator=((a1 + 192), (a2 + 64));
  }

  if (*(a2 + 152) == 1)
  {
    std::string::operator=((a1 + 216), (a2 + 128));
  }

  if (*(a2 + 184) == 1)
  {
    std::string::operator=((a1 + 144), (a2 + 160));
  }

  if (*(a2 + 193) == 1)
  {
    *(a1 + 273) = *(a2 + 192);
  }

  std::string::operator=((a1 + 248), (a2 + 200));
  *(a1 + 272) = *(a2 + 226);

  sub_10012BF3C((a1 + 1000), (a2 + 232));
}

uint64_t sub_10031A0B8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  result = *(a1 + 440);
  if (result == *(a2 + 440))
  {
    return (sub_1000068BC((a1 + 320), (a2 + 320)) & 0x80u) != 0;
  }

  return result;
}

uint64_t sub_10031A10C@<X0>(_BYTE *a1@<X8>)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  sub_10000C320(&v9);
  v2 = sub_10000C030(&v10);
  v3 = sub_10000C030(v2);
  sub_10000C030(v3);
  v4 = sub_10000C030(&v10);
  v5 = sub_10000C030(v4);
  sub_10000C030(v5);
  sub_10000C030(&v10);
  std::ostream::operator<<();
  v6 = sub_10000C030(&v10);
  *(v6 + *(*v6 - 24) + 8) |= 1u;
  std::ostream::operator<<();
  sub_100061574(&v9, a1);
  *&v10 = v7;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

_BYTE *sub_10031A3B0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[240] = 0;
  if (*(a2 + 240) == 1)
  {
    sub_10027E420(a1, a2);
    a1[240] = 1;
  }

  return a1;
}

void sub_10031A3F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 240) == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031A418(uint64_t a1, uint64_t a2)
{
  sub_100111E24(a2 + 56, *(a2 + 64));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_10031A47C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10031A418(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_10031A4D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == *(a2 + 240))
  {
    if (*(a1 + 240))
    {
      sub_10016E810(a1, a2);
      cellplan::RemoteDeviceIdentifiers::operator=();
      std::string::operator=((a1 + 168), (a2 + 168));
      *(a1 + 192) = *(a2 + 192);
      if (a1 != a2)
      {
        sub_100169D44(a1 + 200, *(a2 + 200), *(a2 + 208), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
      }

      v4 = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 224) = v4;
    }
  }

  else if (*(a1 + 240))
  {
    sub_10027E734(a1);
    *(a1 + 240) = 0;
  }

  else
  {
    sub_10027E420(a1, a2);
    *(a1 + 240) = 1;
  }
}

void sub_10031A59C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_10031A73C(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_10027FA58(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 4) >= a4)
  {
    while (v6 != a3)
    {
      sub_100316210(v8, v6);
      v6 += 80;
      v8 += 80;
    }

    sub_10031A47C(a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_100316210(v8, v14);
        v14 += 80;
        v8 += 80;
        v13 -= 80;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10027FAFC(a1, v6 + v12, a3, v11);
  }
}

void sub_10031A73C(uint64_t *a1)
{
  if (*a1)
  {
    sub_10031A47C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t **sub_10031A77C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          sub_10031612C((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10031A910(&v13);
  }

  if (a2 != a3)
  {
    sub_10031A968();
  }

  return result;
}

uint64_t sub_10031A910(uint64_t a1)
{
  sub_100111E24(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100111E24(*a1, v2);
  }

  return a1;
}

void sub_10031A968()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10027FDBC();
}

void sub_10031A9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027FE34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A9F0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DD224(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  sub_100FB5048(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  sub_100280664(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1002808CC(&v14);
  return v13;
}

void sub_10031AAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002808CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031AB00(uint64_t a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x61861861861861)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 5) >= 0x30C30C30C30C30)
  {
    v6 = 0x61861861861861;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027C24C(a1, v6);
  }

  v13 = 0;
  v14 = 672 * v2;
  sub_10031AC4C(a1, 672 * v2, a2);
  v15 = 672 * v2 + 672;
  v7 = *(a1 + 8);
  v8 = 672 * v2 + *a1 - v7;
  sub_10028224C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1002822F0(&v13);
  return v12;
}

void sub_10031AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002822F0(va);
  _Unwind_Resume(a1);
}

__n128 sub_10031AC4C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0u;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 24) = v4;
  a3[2] = 0u;
  *(a3 + 3) = 0;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 56) = 0u;
  *(a3 + 6) = 0;
  v6 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a2 + 72) = v6;
  *(a3 + 11) = 0;
  *(a3 + 72) = 0u;
  v7 = a3[6];
  *(a2 + 112) = *(a3 + 14);
  *(a2 + 96) = v7;
  *(a3 + 14) = 0;
  a3[6] = 0u;
  v8 = *(a3 + 120);
  *(a2 + 136) = *(a3 + 17);
  *(a2 + 120) = v8;
  *(a3 + 17) = 0;
  *(a3 + 120) = 0u;
  v9 = a3[9];
  *(a2 + 160) = *(a3 + 20);
  *(a2 + 144) = v9;
  *(a3 + 20) = 0;
  a3[9] = 0u;
  v10 = *(a3 + 168);
  *(a2 + 184) = *(a3 + 23);
  *(a2 + 168) = v10;
  *(a3 + 23) = 0;
  *(a3 + 168) = 0u;
  v11 = a3[12];
  *(a2 + 208) = *(a3 + 26);
  *(a2 + 192) = v11;
  *(a3 + 26) = 0;
  a3[12] = 0u;
  v12 = *(a3 + 216);
  *(a2 + 232) = *(a3 + 29);
  *(a2 + 216) = v12;
  *(a3 + 29) = 0;
  *(a3 + 216) = 0u;
  v13 = a3[15];
  *(a2 + 256) = *(a3 + 32);
  *(a2 + 240) = v13;
  *(a3 + 32) = 0;
  a3[15] = 0u;
  v14 = *(a3 + 264);
  *(a2 + 280) = *(a3 + 35);
  *(a2 + 264) = v14;
  *(a3 + 35) = 0;
  *(a3 + 264) = 0u;
  v15 = a3[18];
  *(a2 + 304) = *(a3 + 38);
  *(a2 + 288) = v15;
  v16 = *(a3 + 312);
  *(a2 + 328) = *(a3 + 41);
  *(a2 + 312) = v16;
  *(a3 + 41) = 0;
  *(a3 + 312) = 0u;
  v17 = a3[21];
  *(a2 + 352) = *(a3 + 44);
  *(a2 + 336) = v17;
  *(a3 + 44) = 0;
  a3[21] = 0u;
  v18 = *(a3 + 360);
  *(a2 + 376) = *(a3 + 47);
  *(a2 + 360) = v18;
  *(a3 + 47) = 0;
  *(a3 + 360) = 0u;
  v19 = a3[24];
  *(a2 + 400) = *(a3 + 50);
  *(a2 + 384) = v19;
  *(a3 + 50) = 0;
  a3[24] = 0u;
  v20 = *(a3 + 408);
  *(a2 + 424) = *(a3 + 53);
  *(a2 + 408) = v20;
  *(a3 + 53) = 0;
  *(a3 + 408) = 0u;
  v21 = a3[27];
  *(a2 + 448) = *(a3 + 56);
  *(a2 + 432) = v21;
  *(a3 + 56) = 0;
  a3[27] = 0u;
  v22 = *(a3 + 456);
  *(a2 + 472) = *(a3 + 59);
  *(a2 + 456) = v22;
  *(a3 + 59) = 0;
  *(a3 + 456) = 0u;
  v23 = a3[30];
  *(a2 + 496) = *(a3 + 62);
  *(a2 + 480) = v23;
  *(a3 + 62) = 0;
  a3[30] = 0u;
  v24 = *(a3 + 504);
  *(a2 + 520) = *(a3 + 65);
  *(a2 + 504) = v24;
  *(a3 + 65) = 0;
  *(a3 + 504) = 0u;
  v25 = a3[33];
  *(a2 + 544) = *(a3 + 68);
  *(a2 + 528) = v25;
  *(a3 + 68) = 0;
  a3[33] = 0u;
  v26 = *(a3 + 552);
  *(a2 + 568) = *(a3 + 71);
  *(a2 + 552) = v26;
  *(a3 + 71) = 0;
  *(a3 + 552) = 0u;
  v27 = a3[36];
  *(a2 + 592) = *(a3 + 74);
  *(a2 + 576) = v27;
  *(a3 + 74) = 0;
  a3[36] = 0u;
  v28 = *(a3 + 600);
  *(a2 + 616) = *(a3 + 77);
  *(a2 + 600) = v28;
  *(a3 + 77) = 0;
  *(a3 + 600) = 0u;
  v29 = a3[39];
  *(a2 + 640) = *(a3 + 80);
  *(a2 + 624) = v29;
  *(a3 + 80) = 0;
  a3[39] = 0u;
  result = *(a3 + 648);
  *(a2 + 664) = *(a3 + 664);
  *(a2 + 648) = result;
  return result;
}

void *sub_10031AF2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *v5 = v6;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  result = sub_10027FC3C((v4 + 56), a2 + 56);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_10031AFCC(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B00C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10027FAA4(a1, v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = 80 * v2;
  v20 = 80 * v2;
  v8 = 80 * v2;
  *v8 = *a2;
  v9 = v8 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    *(v9 + 16) = *(a2 + 24);
    *v9 = v10;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v11 = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 32) = v11;
  }

  sub_10027FC3C((v7 + 56), a2 + 56);
  *&v20 = v20 + 80;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  sub_10031B1C8(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10031B33C(&v18);
  return v17;
}

void sub_10031B184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  sub_10031B33C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 56;
    do
    {
      v9 = v8 - 56;
      *v4 = *(v8 - 56);
      if (*(v8 - 25) < 0)
      {
        sub_100005F2C((v4 + 8), *(v8 - 48), *(v8 - 40));
      }

      else
      {
        v10 = *(v8 - 48);
        *(v4 + 24) = *(v8 - 32);
        *(v4 + 8) = v10;
      }

      if (*(v8 - 1) < 0)
      {
        sub_100005F2C((v4 + 32), *(v8 - 24), *(v8 - 16));
      }

      else
      {
        v11 = *(v8 - 24);
        *(v4 + 48) = *(v8 - 8);
        *(v4 + 32) = v11;
      }

      sub_10027FC3C((v4 + 56), v8);
      v4 = v16 + 80;
      v16 += 80;
      v8 += 80;
    }

    while (v9 + 80 != a3);
    LOBYTE(v14) = 1;
    while (v6 != a3)
    {
      sub_10031A418(a1, v6);
      v6 += 80;
    }
  }

  return sub_10028004C(v13);
}

void sub_10031B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_10028004C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B33C(uint64_t a1)
{
  sub_10031B374(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10031B374(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10031A418(v5, v4 - 80);
  }
}

uint64_t sub_10031B3BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001125B0(result, a4);
  }

  return result;
}

void sub_10031B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100112120(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100F11F00(a4, v6);
      v6 += 216;
      a4 += 216;
      v7 -= 216;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10031B4A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 216;
    do
    {
      v4 = sub_100E3A5D4(v4) - 216;
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B4C8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10011DBFC(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_100F11B6C(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10011DC58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10011DD24(&v13);
  return v12;
}

void sub_10031B5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10011DD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10031B678(a1, a2);
  sub_10027F834((v4 + 248), (a2 + 248));
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = 1;
  return a1;
}

void sub_10031B658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 240) == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B678(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = 0;
  if (*(a2 + 240) == 1)
  {
    *a1 = 0;
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a1 = 1;
    }

    sub_10027E51C((a1 + 32), (a2 + 32));
    v5 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v5;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    v6 = *(a2 + 192);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 192) = v6;
    *(a1 + 200) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    v7 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v7;
    *(a1 + 240) = 1;
  }

  return a1;
}

void sub_10031B744(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_1017628BC(v1);
  }

  if (v1[240] == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B778(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_100111E80((v4 + 4));
  operator delete(v4);
  return 1;
}

const void **sub_10031B7D4(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_100022D3C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_10031B8D0(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_100022D3C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_10031B9CC(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10031BA80();
  }

  return v2;
}

void sub_10031BB58(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, NSObject **a5@<X4>, void *a6@<X8>)
{
  v18 = 0;
  v19 = 0;
  (*(*a1 + 24))(&v18);
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_100575908();
      }

      v13 = *a5;
      v15 = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      sub_10081F204(a2, a4, &v15);
    }

    v11 = *a5;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    sub_1002A4B44(&object, &v17);
  }

  if ((a3 - 4) >= 2)
  {
    v12 = *a5;
    v14 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    sub_1002A4EEC(&v14, &v17);
  }

  *a6 = 0;
  a6[1] = 0;
  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_10031BCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031BD2C(uint64_t a1)
{
  *a1 = &off_101E41960;
  CCPreferences::create(&v3, a1);
  *(a1 + 8) = v3;
  return a1;
}

void sub_10031BD98(APNStorageFactoryInterface *this)
{
  *this = &off_101E41960;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  APNStorageFactoryInterface::~APNStorageFactoryInterface(this);
}

void sub_10031BDF8(APNStorageFactoryInterface *a1)
{
  sub_10031BD98(a1);

  operator delete();
}

uint64_t sub_10031BE30@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10031C004(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_10031C06C(void *a1, uint64_t *a2, dispatch_object_t *a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = off_101E41990;
  a1[1] = v6;
  a1[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "apn-mgr");
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  sub_10000501C(&__p, "apn-mgr");
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  a1[9] = 0;
  a1[8] = 0;
  a1[7] = a1 + 8;
  a1[16] = 0;
  a1[15] = 0;
  a1[13] = 0;
  a1[14] = a1 + 15;
  return a1;
}

void sub_10031C190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  v19 = v17[3];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = v17[2];
  if (v20)
  {
    sub_100004A34(v20);
  }

  APN_StorageMgrInterface::~APN_StorageMgrInterface(v17);
  _Unwind_Resume(a1);
}

void sub_10031C20C(uint64_t a1)
{
  *a1 = off_101E41990;
  sub_10006DCAC(a1 + 112, *(a1 + 120));
  sub_10031D330(a1 + 80);
  sub_10031DA8C(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  APN_StorageMgrInterface::~APN_StorageMgrInterface(a1);
}

void sub_10031C2AC(uint64_t a1)
{
  sub_10031C20C(a1);

  operator delete();
}

void sub_10031C2E4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    operator new();
  }

  v9 = a1;
  sub_10031C4B0(&v9, *a2, 1);
  if (capabilities::ct::supportsGemini(v4))
  {
    sub_10031C4B0(&v9, *a2, 2);
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 72);
    v8 = 1;
    *buf = &v8;
    v7 = sub_10031D3B0(a1 + 56, &v8)[7];
    *buf = 134218240;
    *&buf[4] = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Created %zu set(s) of %zu storage instances", buf, 0x16u);
  }
}

void sub_10031C4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = *a1;
  v35[0] = 0;
  v35[1] = 0;
  v33 = 0;
  v34 = v35;
  v6 = *(v5 + 24);
  object = v6;
  v32 = 0;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 3, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    v30 = 3;
    v37 = &v30;
    v7 = sub_1002D750C(&v34, &v30);
    v9 = v32;
    v8 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7[6];
    v7[5] = v9;
    v7[6] = v8;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v11 = *(v5 + 24);
  v29 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 1, a3, &v29);
  if (v29)
  {
    dispatch_release(v29);
  }

  if (v32)
  {
    v30 = 1;
    v37 = &v30;
    v12 = sub_1002D750C(&v34, &v30);
    v14 = v32;
    v13 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v12[6];
    v12[5] = v14;
    v12[6] = v13;
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v16 = *(v5 + 24);
  v28 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 0, a3, &v28);
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v32)
  {
    v30 = 0;
    v37 = &v30;
    v17 = sub_1002D750C(&v34, &v30);
    v19 = v32;
    v18 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17[6];
    v17[5] = v19;
    v17[6] = v18;
    if (v20)
    {
      sub_100004A34(v20);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v21 = *(v5 + 24);
  v27 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 2, a3, &v27);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v32)
  {
    v30 = 2;
    v37 = &v30;
    v22 = sub_1002D750C(&v34, &v30);
    v24 = v32;
    v23 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v22[6];
    v22[5] = v24;
    v22[6] = v23;
    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = &v36;
  v26 = (sub_10031D3B0(v5 + 56, &v36) + 5);
  if (v26 != &v34)
  {
    sub_10031D490(v26, v34, v35);
  }

  sub_10006EC28(&v34, v35[0]);
}

void sub_10031C850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, void *a17)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_10006EC28(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_10031C8CC(uint64_t a1, NSObject **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v28 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v28);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  isIPhone = GestaltUtilityInterface::isIPhone(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (isIPhone)
  {
    Registry::createRestModuleOneTimeUseConnection(&v26, *(a1 + 8));
    ctu::RestModule::connect();
    if (v27)
    {
      sub_100004A34(v27);
    }

    sub_10031CB34((a1 + 80), a1 + 40);
  }

  v15 = *(a1 + 56);
  v16 = (a1 + 64);
  if (v15 != (a1 + 64))
  {
    do
    {
      v17 = v15[5];
      if (v17 != v15 + 6)
      {
        do
        {
          v18 = v17[5];
          v19 = *a2;
          group = v19;
          if (v19)
          {
            dispatch_retain(v19);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          (*(*v18 + 24))(v18, &group);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v20 = v17[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v17[2];
              v22 = *v21 == v17;
              v17 = v21;
            }

            while (!v22);
          }

          v17 = v21;
        }

        while (v21 != v15 + 6);
      }

      v23 = v15[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v15[2];
          v22 = *v24 == v15;
          v15 = v24;
        }

        while (!v22);
      }

      v15 = v24;
    }

    while (v24 != v16);
  }
}

void sub_10031CAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031CB34(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10031DAEC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10031CB98(uint64_t result)
{
  v1 = *(result + 56);
  v2 = (result + 64);
  if (v1 != (result + 64))
  {
    do
    {
      v3 = v1[5];
      if (v3 != v1 + 6)
      {
        do
        {
          result = (*(*v3[5] + 32))(v3[5]);
          v4 = v3[1];
          if (v4)
          {
            do
            {
              v5 = v4;
              v4 = *v4;
            }

            while (v4);
          }

          else
          {
            do
            {
              v5 = v3[2];
              v6 = *v5 == v3;
              v3 = v5;
            }

            while (!v6);
          }

          v3 = v5;
        }

        while (v5 != v1 + 6);
      }

      v7 = v1[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v1[2];
          v6 = *v8 == v1;
          v1 = v8;
        }

        while (!v6);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }

  return result;
}

void sub_10031CC74(void *a1, NSObject **a2)
{
  ctu::RestModule::disconnect((a1 + 5));
  v4 = a1[7];
  v5 = a1 + 8;
  if (v4 != a1 + 8)
  {
    do
    {
      v6 = v4[5];
      if (v6 != v4 + 6)
      {
        do
        {
          v7 = v6[5];
          v8 = *a2;
          group = v8;
          if (v8)
          {
            dispatch_retain(v8);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          (*(*v7 + 40))(v7, &group);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v9 = v6[1];
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
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v4 + 6);
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
          v11 = *v13 == v4;
          v4 = v13;
        }

        while (!v11);
      }

      v4 = v13;
    }

    while (v13 != v5);
  }
}

void sub_10031CDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031CDD0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    do
    {
      v4 = v2[5];
      if (v4 != v2 + 6)
      {
        do
        {
          (*(*v4[5] + 56))(v4[5]);
          v5 = v4[1];
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = *v5;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = v4[2];
              v7 = *v6 == v4;
              v4 = v6;
            }

            while (!v7);
          }

          v4 = v6;
        }

        while (v6 != v2 + 6);
      }

      v8 = v2[1];
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
          v9 = v2[2];
          v7 = *v9 == v2;
          v2 = v9;
        }

        while (!v7);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v11 = ServiceMap;
  v12 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v13 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v20 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v20);
  if (!v16)
  {
    v18 = 0;
LABEL_23:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_24:
    (*(*v18 + 48))(v18);
  }

LABEL_25:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10031CF94(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031CFB0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(a1 + 64);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 64;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 == a1 + 64 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(a1 + 32);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *a4 = 0;
      a4[1] = 0;
      return;
    }

    v15 = 136315394;
    v16 = subscriber::asString();
    v17 = 2080;
    v18 = sub_1002A24BC(a3);
    v9 = "#E Failed to find sim %s for storage type %s";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, 0x16u);
    goto LABEL_11;
  }

  v12 = *(v7 + 48);
  v10 = v7 + 48;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v10;
  do
  {
    if (*(v11 + 32) >= a3)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a3));
  }

  while (v11);
  if (v13 == v10 || *(v13 + 32) > a3)
  {
LABEL_20:
    v8 = *(a1 + 32);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315394;
    v16 = sub_1002A24BC(a3);
    v17 = 2080;
    v18 = subscriber::asString();
    v9 = "#E Failed to find storage type %s for sim %s";
    goto LABEL_10;
  }

  *a4 = *(v13 + 40);
  v14 = *(v13 + 48);
  a4[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

double sub_10031D170@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  sub_10031CFB0(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void sub_10031D1A8(uint64_t a1, int a2, char a3, int a4)
{
  v20 = a2;
  if (a4)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_10:
  isIPhone = GestaltUtilityInterface::isIPhone(v14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (isIPhone)
  {
    v17[0] = 1;
    v18 = 0u;
    v19 = 0;
    v17[1] = a1 + 80;
    sub_1000517E4(&v18, a1 + 112);
    v21 = &v20;
    *(sub_100051AD8(&v18, &v20) + 32) = a3;
    sub_10031E2E4(v17);
  }
}

uint64_t sub_10031D330(uint64_t a1)
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

uint64_t *sub_10031D3B0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **sub_10031D490(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          sub_10031D604(v15, (v9 + 4));
          sub_1001723F0(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_10031D658(&v12);
  }

  if (a2 != a3)
  {
    sub_10031D6B0();
  }

  return result;
}

void sub_10031D5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10031D658(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

uint64_t sub_10031D658(uint64_t a1)
{
  sub_10006EC28(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10006EC28(*a1, v2);
  }

  return a1;
}

void sub_10031D7D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B470(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031D7EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10031D824(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10031D854(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10031D894(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10031D918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  a1[2] = 0;
  v4 = a1;
  v5 = v2;
  sub_10031C2E4(v1, &v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_10031D894(&v4);
}

void sub_10031D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10176B494(a10);
  }

  sub_10031D894(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D9AC(std::mutex *this, void *a2)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  if (*a2)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    v13 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v13);
    v10 = v9;
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v13 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v10 = 1;
  }

  std::mutex::unlock(this);
  return v10 & 1;
}

void sub_10031DA8C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10031DA8C(a1, *a2);
    sub_10031DA8C(a1, a2[1]);
    sub_10006EC28((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_10031DAEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E41AA8;
  v5[1] = v3;
  v5[3] = v5;
  sub_10031E078(v5, a1);
  sub_10031D330(v5);
  return a1;
}

uint64_t sub_10031DBF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E41AA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10031DC24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10031DC70(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/ui_apns_available");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10031DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10031DD58(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_10031DEC4(v7 + 7, &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_10031DEC4(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v15, v7, v8, v9);
  v13 = &v17;
  v14 = "first";
  sub_10000F688(&v13, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v11 = xpc_BOOL_create(*(a1 + 4));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "second";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v17;
  *a2 = v17;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void *sub_10031E078(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10031E2D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10031E2E4(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_10031E330(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_10031E330(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == a2[2])
  {
    v2 = *(a1 + 32);
    if (v2 == (a1 + 40))
    {
      return 0;
    }

    v3 = *a2;
    while (1)
    {
      v4 = *(v2 + 7) == *(v3 + 7) && *(v2 + 32) == *(v3 + 32);
      if (!v4)
      {
        break;
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v2 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v2 = v6[2];
          v4 = *v2 == v6;
          v6 = v2;
        }

        while (!v4);
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v4 = *v8 == v3;
          v3 = v8;
        }

        while (!v4);
      }

      v3 = v8;
      if (v2 == (a1 + 40))
      {
        return 0;
      }
    }
  }

  sub_10031E3FC(a1, a2);
  return 1;
}

uint64_t sub_10031E3FC(uint64_t a1, void *a2)
{
  sub_10004645C(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_10031E46C(uint64_t **a1@<X1>, void *a2@<X8>)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cu.message");
  v4 = *&buf_4[4];
  ctu::OsLogContext::~OsLogContext(&buf);
  if (*a1 && **a1)
  {
    v5 = [[CUMessageSession alloc] initWithTemplate:**a1];
    if (v5)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = **a1;
        buf = 134218240;
        *buf_4 = v6;
        *&buf_4[8] = 2048;
        *&buf_4[10] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "template session: %p, actual session: %p", &buf, 0x16u);
      }

      operator new();
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176B4B8();
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176B534();
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_10031E728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031E774(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101E41B38;
  sub_10031E840((a1 + 8), "CoreUtilsMessageSessionHandler", QOS_CLASS_USER_INTERACTIVE, &kCtLoggingSystemName, &off_101E41B68);
  *a1 = off_101E41B38;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 80) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void *sub_10031E840(void *a1, const char *a2, dispatch_qos_class_t a3, const char **a4, const char **a5)
{
  v10 = 0;
  sub_100321118(a1, a2, a3, &v10);
  v8 = v10;
  v10 = 0;

  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a4, *a5);
  return a1;
}

void sub_10031E8DC(uint64_t a1)
{
  *a1 = off_101E41B38;
  [**(a1 + 64) setInvalidationHandler:0];
  [**(a1 + 64) invalidate];
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100320D6C(a1 + 8);

  CoreUtilsMessageSessionHandlerInterface::~CoreUtilsMessageSessionHandlerInterface(a1);
}

void sub_10031E984(uint64_t a1)
{
  sub_10031E8DC(a1);

  operator delete();
}

id sub_10031E9BC(uint64_t a1)
{
  [**(a1 + 64) setLabel:@"com.apple.commcenter"];
  v2 = sub_100032AC8((a1 + 24));
  [**(a1 + 64) setDispatchQueue:v2];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10031EA84;
  v4[3] = &unk_101E26008;
  v4[4] = a1;
  return [**(a1 + 64) setInvalidationHandler:v4];
}

void sub_10031EA84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 80);
      if (v5)
      {
        v6 = sub_100032AC8((v1 + 40));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I session got invalidated", v7, 2u);
        }

        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10031EB5C(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    [**(a1 + 64) activate];
    v2 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session activated", v3, 2u);
    }

    *(a1 + 96) = 1;
  }
}

id *sub_10031EBEC(id *result)
{
  if (*result[8])
  {
    v1 = result;
    v2 = sub_100032AC8(result + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing invalidation handler", v3, 2u);
    }

    [*v1[8] setInvalidationHandler:0];
    return [*v1[8] invalidate];
  }

  return result;
}

void sub_10031EC88(uint64_t a1, __int128 *a2, id *a3, id *a4, uint64_t *a5, uint64_t a6)
{
  sub_10031EB5C(a1);
  v11 = +[NSDictionary dictionary];
  if (*a3)
  {
    v12 = *a3;

    v11 = v12;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  std::operator+<char>();
  sub_100004AA0(buf, (a1 + 8));
  v14 = *buf;
  v13 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
  }

  if (*a5 && *(a6 + 24))
  {
    v15 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v25;
      if (v26 < 0)
      {
        v16 = v25[0];
      }

      v17 = *a5;
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I starting timer (%s) for %lld seconds", buf, 0x16u);
    }

    *&v39[40] = 0u;
    v40 = 0u;
    v35 = a1;
    v36 = v14;
    v37 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 1));
    }

    else
    {
      *__p = *a2;
      __p[2] = *(a2 + 2);
    }

    __p[3] = *a4;
    sub_1003212A4(v39, a6);
    *(&v40 + 1) = 0;
    operator new();
  }

  v18 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a2;
    if (*(a2 + 23) < 0)
    {
      v19 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I sending request: %s", buf, 0xCu);
  }

  v20 = a2;
  if (*(a2 + 23) < 0)
  {
    v20 = *a2;
  }

  v21 = **(a1 + 64);
  v22 = [NSString stringWithUTF8String:v20];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_10031F4D0;
  v27[3] = &unk_101E41B70;
  v27[4] = a1;
  sub_1003212A4(v28, a6);
  v28[4] = v14;
  v29 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v30, *a2, *(a2 + 1));
  }

  else
  {
    v30 = *a2;
    v31 = *(a2 + 2);
  }

  v32 = 0;
  v33 = 0;
  v34 = *a4;
  [v21 sendRequestID:v22 options:0 request:v11 responseHandler:v27];

  v23 = v34;
  v34 = 0;

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_100287028(v28);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_10031F26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10002B644(v27 - 176);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id *sub_10031F3F4(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t sub_10031F42C(uint64_t a1)
{
  sub_100287028(a1 + 56);
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10031F4D0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 64))
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11 && *(a1 + 72))
      {
        v12 = sub_100032AC8((v10 + 40));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = (a1 + 88);
          if (*(a1 + 111) < 0)
          {
            v13 = *v13;
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 1024;
          *&buf[14] = a2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I received response for request: %s, error %d", buf, 0x12u);
        }

        v14 = *(a1 + 112);
        if (v14)
        {
          if ((*(*v14 + 24))(v14))
          {
            v15 = sub_100032AC8((v10 + 40));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I response has already timed out", buf, 2u);
            }

LABEL_23:
            sub_100004A34(v11);
            goto LABEL_24;
          }

          (*(**(a1 + 112) + 16))(*(a1 + 112));
        }

        *buf = v8;
        sub_1003212A4(&buf[8], a1 + 40);
        v18 = sub_100032AC8((a1 + 128));
        operator new();
      }
    }

    else
    {
      v11 = 0;
    }

    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cu.message");
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10176B5AC();
    }

    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no response callback", buf, 2u);
    }
  }

LABEL_24:
}

void sub_10031F7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_10031F848(uint64_t a1, uint64_t a2)
{
  sub_1003212A4(a1 + 40, a2 + 40);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 128);
  *(a1 + 128) = result;
  return result;
}

void sub_10031F8DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100287028(v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_10031F8FC(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_100287028(a1 + 40);
}

void sub_10031F96C(uint64_t a1, __int128 **a2, uint64_t a3)
{
  sub_100004AA0(__dst, (a1 + 8));
  v8 = __dst[0];
  v7 = __dst[1];
  if (__dst[1])
  {
    atomic_fetch_add_explicit(__dst[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    *&v6 = 136315138;
    v17 = v6;
    do
    {
      __dst[1] = 0;
      v19 = 0;
      __dst[0] = 0;
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(__dst, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v19 = *(v9 + 2);
        *__dst = v11;
      }

      v12 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __dst;
        if (v19 < 0)
        {
          v13 = __dst[0];
        }

        *buf = v17;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I registering for request: %s", buf, 0xCu);
      }

      v14 = **(a1 + 64);
      if (v19 >= 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      v16 = [NSString stringWithUTF8String:v15, v17];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_10031FC6C;
      v20[3] = &unk_101E41BA0;
      v20[4] = a1;
      v20[5] = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&__p, __dst[0], __dst[1]);
      }

      else
      {
        __p = *__dst;
        v23 = v19;
      }

      sub_100321CD4(v24, a3);
      [v14 registerRequestID:v16 options:0 handler:v20];

      sub_100321C54(v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
  }

  sub_10031EB5C(a1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10031FBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031FC6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12 && *(a1 + 40))
    {
      v13 = sub_100032AC8((v11 + 40));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v14 = *v14;
        }

        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I received request: %s", buf, 0xCu);
      }

      v17 = v8;
      *buf = 0;
      if (v8)
      {
        CFRetain(v8);
      }

      v15 = *(a1 + 104);
      if (!v15)
      {
        sub_100022DB4();
      }

      (*(*v15 + 48))(buf);
      sub_10001021C(&v17);
      v16 = *buf;
      if (v9)
      {
        (*(v9 + 2))(v9, 0, 0, v16);
      }

      sub_10001021C(buf);
LABEL_20:
      sub_100004A34(v12);
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5EC();
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 4294960582, 0, 0);
  }

  if (v12)
  {
    goto LABEL_20;
  }

LABEL_21:
}

void sub_10031FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_10001021C(va);
  sub_100004A34(v6);

  _Unwind_Resume(a1);
}

uint64_t sub_10031FEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return sub_100321CD4(a1 + 80, a2 + 80);
}

void sub_10031FF2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031FF5C(uint64_t a1)
{
  sub_100321C54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10031FFB8(uint64_t a1, __int128 **a2, uint64_t a3)
{
  sub_100004AA0(__dst, (a1 + 8));
  v8 = __dst[0];
  v7 = __dst[1];
  if (__dst[1])
  {
    atomic_fetch_add_explicit(__dst[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    *&v6 = 136315138;
    v17 = v6;
    do
    {
      __dst[1] = 0;
      v19 = 0;
      __dst[0] = 0;
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(__dst, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v19 = *(v9 + 2);
        *__dst = v11;
      }

      v12 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __dst;
        if (v19 < 0)
        {
          v13 = __dst[0];
        }

        *buf = v17;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I registering for request: %s", buf, 0xCu);
      }

      v14 = **(a1 + 64);
      if (v19 >= 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      v16 = [NSString stringWithUTF8String:v15, v17];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_1003202B8;
      v20[3] = &unk_101E41BD0;
      v20[4] = a1;
      v20[5] = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&__p, __dst[0], __dst[1]);
      }

      else
      {
        __p = *__dst;
        v23 = v19;
      }

      sub_100322174(v24, a3);
      [v14 registerRequestID:v16 options:0 handler:v20];

      sub_100287FF4(v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
  }

  sub_10031EB5C(a1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10032023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003202B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12 && *(a1 + 40))
    {
      v13 = sub_100032AC8((v11 + 40));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v14 = *v14;
        }

        *buf = 136315138;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I received request: %s", buf, 0xCu);
      }

      __p[3] = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      objc_retainBlock(v9);
      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        __p[2] = *(a1 + 72);
      }

      __p[7] = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5EC();
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 4294960582, 0, 0);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_100320544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  operator delete(v6);
  sub_1003205D0(va);
  sub_10001021C(va1);
  sub_100004A34(v5);

  _Unwind_Resume(a1);
}

uint64_t sub_1003205D0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10032060C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return sub_100322174(a1 + 80, a2 + 80);
}

void sub_10032067C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003206AC(uint64_t a1)
{
  sub_100287FF4(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100320708(uint64_t a1, uint64_t a2, void **a3, id *a4, void **a5, uint64_t a6)
{
  v13[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  __p[3] = *a3;
  *a3 = 0;
  v11 = *a4;
  v12 = *a5;
  __p[4] = v11;
  __p[5] = v12;
  sub_10032220C(&v15, a6);
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 8));
  operator new();
}

void sub_100320924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320938(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10004EFD0(v6 + 8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_100322464(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100320AC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320AD8(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10004EFD0(v6 + 8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_100322658(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100320C64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320C78(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_100320D6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100320DE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100320EE0(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E41D28;
  sub_100320FD8(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_100320F5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100320FD8(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  *v7 = *a4;
  v8 = v5;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_10031E774(a1, a2, &v8, v7);
  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  *a1 = off_101E41D78;
  return a1;
}

void sub_100321058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100321080(uint64_t a1)
{
  sub_10031E8DC(a1);

  operator delete();
}

uint64_t *sub_1003210B8(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10031E9BC(*v1);
  sub_10024BAAC(&v4);
  return sub_1000049E0(&v3);
}

void sub_1003210FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100321118(void *a1, const char *a2, dispatch_qos_class_t qos_class, id *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v10 = *a4;
  sub_1003211C8(a1, a2, v7, &v10);
  v8 = v10;
  v10 = 0;

  return a1;
}

void *sub_1003211C8(void *a1, const char *a2, void *a3, id *a4)
{
  v8 = *a4;
  v9 = a3;
  if (v8)
  {
    v10 = v8;
    v11 = dispatch_queue_create_with_target_V2(a2, v9, v10);

    v12 = v11;
  }

  else
  {
    v13 = dispatch_queue_create(a2, v9);

    v12 = v13;
    v10 = v12;
  }

  *a1 = 0;
  a1[1] = 0;
  v14 = v12;
  a1[2] = v14;
  a1[3] = *a4;

  return a1;
}

uint64_t sub_1003212A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032133C(uint64_t a1)
{
  *a1 = off_101E41DD0;
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1003213B0(uint64_t a1)
{
  *a1 = off_101E41DD0;
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10032150C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10032154C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41DD0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = *(a1 + 56);
  return sub_1003212A4(a2 + 64, a1 + 64);
}

void sub_1003215F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100321630(uint64_t a1)
{
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1003216A0(uint64_t a1)
{
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10032170C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && *(a1 + 16))
    {
      v5 = sub_100032AC8((v3 + 40));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1 + 32;
        if (*(a1 + 55) < 0)
        {
          v6 = *(a1 + 32);
        }

        *buf = 136315138;
        v10[0] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I response timed out for request: %s", buf, 0xCu);
      }

      sub_1003212A4(buf, a1 + 64);
      v7 = sub_100032AC8((a1 + 56));
      operator new();
    }
  }

  else
  {
    v4 = 0;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cu.message");
  v8 = *(v10 + 4);
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5AC();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1003218D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032190C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100321958(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100287028(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1003219A0(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  sub_100321A00(a1, 1);
  sub_10001021C(&v3);
  return sub_100321958(&v2);
}

void sub_1003219E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_100321958(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100321A00(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100321ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B678(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100321AD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100321B10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100321B40(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id **sub_100321B80(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100287028((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100321BD8(id *a1)
{
  v4 = a1;
  v2 = (a1 + 1);
  v1 = *a1;
  v5 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  sub_100321A00(v2, 0);
  sub_10001021C(&v5);
  return sub_100321B80(&v4);
}

void sub_100321C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_100321B80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100321C54(uint64_t a1)
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

uint64_t sub_100321CD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100321D6C(uint64_t a1)
{
  *a1 = off_101E41EC8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100321DC4(uint64_t a1)
{
  *a1 = off_101E41EC8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

id sub_100321EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41EC8;
  result = objc_retainBlock(*(a1 + 8));
  *(a2 + 8) = result;
  if (*(a1 + 39) < 0)
  {
    return sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  v5 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v5;
  return result;
}

void sub_100321F78(void *a1)
{
  sub_100322130(a1 + 8);

  operator delete(a1);
}

const void **sub_100321FB4(uint64_t a1, void **a2)
{
  v3 = *a2;
  v8 = *a2;
  *a2 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = a1 + 16;
    if (*(a1 + 39) < 0)
    {
      v4 = *(a1 + 16);
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "sending response: %s", buf, 0xCu);
  }

  v5 = v3;
  v6 = *(a1 + 8);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176B69C();
  }

  return sub_10001021C(&v8);
}

void sub_1003220C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003220E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E41F28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100322130(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *a1;
}

uint64_t sub_100322174(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032220C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10032228C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    *__p = v3;
  }

  sub_100010024(&v9, (v1 + 32));
  v4 = *(v1 + 40);
  v8 = v4;
  sub_1003212A4(v12, v1 + 56);
  sub_10031EC88(v2, __p, &v9, &v8, (v1 + 48), v12);
  sub_100287028(v12);

  sub_10001021C(&v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003223E8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100322390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1003223E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003223E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100287028(v1 + 56);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;

    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100322464(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003224E4(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  memset(v6, 0, sizeof(v6));
  sub_10004EFD0(v6, v1[1], v1[2], 0xAAAAAAAAAAAAAAABLL * ((v1[2] - v1[1]) >> 3));
  sub_100321CD4(v8, (v1 + 4));
  sub_10031F96C(v2, v6, v8);
  sub_100321C54(v8);
  v7 = v6;
  sub_1000087B4(&v7);
  sub_1003225F0(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003225AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  va_copy(va3, va2);
  v7 = va_arg(va3, void);
  v9 = va_arg(va3, void);
  v10 = va_arg(va3, void);
  va_copy(va4, va3);
  v11 = va_arg(va4, void **);
  sub_100321C54(va4);
  va_copy(v11, va2);
  sub_1000087B4(va3);
  sub_1003225F0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003225F0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100321C54(v1 + 32);
    v2 = (v1 + 8);
    sub_1000087B4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100322658(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003226D8(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  memset(v6, 0, sizeof(v6));
  sub_10004EFD0(v6, v1[1], v1[2], 0xAAAAAAAAAAAAAAABLL * ((v1[2] - v1[1]) >> 3));
  sub_100322174(v8, (v1 + 4));
  sub_10031FFB8(v2, v6, v8);
  sub_100287FF4(v8);
  v7 = v6;
  sub_1000087B4(&v7);
  sub_1003227E4(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003227A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  va_copy(va3, va2);
  v7 = va_arg(va3, void);
  v9 = va_arg(va3, void);
  v10 = va_arg(va3, void);
  va_copy(va4, va3);
  v11 = va_arg(va4, void **);
  sub_100287FF4(va4);
  va_copy(v11, va2);
  sub_1000087B4(va3);
  sub_1003227E4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003227E4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100287FF4(v1 + 32);
    v2 = (v1 + 8);
    sub_1000087B4(&v2);
    operator delete();
  }

  return result;
}

void sub_10032284C(id ***a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = sub_100032AC8(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalidating session upon client request", buf, 2u);
  }

  sub_10031EBEC(v1);
  operator delete();
}

BOOL sub_100322918()
{
  v3 = @"VerifyBundles";
  CFRetain(@"VerifyBundles");
  v2 = @"VerifyBundles";
  CFRetain(@"VerifyBundles");
  v0 = sub_1003229A0(&v2);
  sub_100005978(&v2);
  sub_100005978(&v3);
  return v0;
}

void sub_10032297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_1003229A0(CFStringRef *a1)
{
  if (!*a1 || !sub_1000B1374() && !sub_1001883A0())
  {
    return 0;
  }

  BOOLean = 0;
  v4 = CFPreferencesCopyValue(*a1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10017A3BC(&BOOLean, &v4);
  if (BOOLean)
  {
    v2 = CFBooleanGetValue(BOOLean) == 0;
  }

  else
  {
    v2 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v2;
}

void sub_100322A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100322A60()
{
  v3 = @"VerifyAPN";
  CFRetain(@"VerifyAPN");
  v2 = @"VerifyAPN";
  CFRetain(@"VerifyAPN");
  v0 = sub_1003229A0(&v2);
  sub_100005978(&v2);
  sub_100005978(&v3);
  return v0;
}

void sub_100322AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_100322AE8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100322BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100322C48(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 24);
  v37 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v35 = 0;
  v36 = 0;
  (*(*v2 + 416))(&v38, v2, &v37, &v35);
  v4 = v38;
  v38 = 0uLL;
  v5 = *(a1 + 80);
  *(a1 + 72) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  if (v37)
  {
    dispatch_release(v37);
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 24);
  v34 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_100004AA0(&v30, (a1 + 8));
  if (v30)
  {
    v8 = v30 + 48;
  }

  else
  {
    v8 = 0;
  }

  v32 = v8;
  v33 = v31;
  v30 = 0;
  v31 = 0;
  (*(*v6 + 552))(&v38, v6, &v34, &v32, 0);
  v9 = v38;
  v38 = 0uLL;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_100004A34(v10);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  v11 = *(a1 + 88);
  v12 = *(a1 + 24);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  sub_100004AA0(&v30, (a1 + 8));
  if (v30)
  {
    v13 = v30 + 48;
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  v33 = v31;
  v30 = 0;
  v31 = 0;
  (*(*v11 + 552))(&v38, v11, &object, &v32, 2);
  v14 = v38;
  v38 = 0uLL;
  v15 = *(a1 + 144);
  *(a1 + 136) = v14;
  if (v15)
  {
    sub_100004A34(v15);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v16 = *(a1 + 88);
  v17 = *(a1 + 24);
  v28 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  sub_100004AA0(&v32, (a1 + 8));
  if (v32)
  {
    v18 = v32 + 56;
  }

  else
  {
    v18 = 0;
  }

  v26 = v18;
  v27 = v33;
  v32 = 0;
  v33 = 0;
  (*(*v16 + 520))(&v38, v16, &v28, &v26);
  v19 = v38;
  v38 = 0uLL;
  v20 = *(a1 + 176);
  *(a1 + 168) = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v28)
  {
    dispatch_release(v28);
  }

  v21 = *(a1 + 88);
  v22 = *(a1 + 24);
  v25 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  (*(*v21 + 792))(&v38, v21, &v25);
  v23 = v38;
  v38 = 0uLL;
  v24 = *(a1 + 208);
  *(a1 + 200) = v23;
  if (v24)
  {
    sub_100004A34(v24);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v25)
  {
    dispatch_release(v25);
  }
}

void sub_100322FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100323060()
{
  v1 = *(v0 - 48);
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (!*(v0 - 40))
  {
    JUMPOUT(0x100323058);
  }

  JUMPOUT(0x100323054);
}

uint64_t sub_10032307C(uint64_t a1, NSObject **a2, uint64_t *a3, void *a4)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "cp.ctr.watch");
  sub_100323404((a1 + 8), a2, &v15);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = off_101E41F48;
  *(a1 + 48) = off_101E42110;
  *(a1 + 56) = off_101E421B0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = off_101E42228;
  v8 = *a3;
  *(a1 + 88) = *a3;
  v9 = a3[1];
  *(a1 + 96) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *a3;
  }

  (*(*v8 + 696))(v8);
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = *a4;
  v10 = a4[1];
  *(a1 + 160) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 232) = 0uLL;
  *(a1 + 241) = 0uLL;
  *(a1 + 200) = 0uLL;
  *(a1 + 216) = 0uLL;
  *(a1 + 168) = 0uLL;
  *(a1 + 184) = 0uLL;
  sub_10000501C(&__p, "CellularPlanControllerWatch");
  v12 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 296) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 304) = 255;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 640) = a1 + 648;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  return a1;
}

void sub_1003232FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100112048(&a18);
  v21 = v18[28];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v18[26];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v18[24];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v18[22];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v18[20];
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = v18[18];
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = v18[16];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v18[14];
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = v18[12];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v18[10];
  if (v30)
  {
    sub_100004A34(v30);
  }

  CellularPlanSubscriptionControllerDelegate::~CellularPlanSubscriptionControllerDelegate(v19);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_100323404(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_10032346C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100323490(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CellularPlanController initialized", buf, 2u);
  }

  (*(**(a1 + 72) + 24))(*(a1 + 72));
  (***(a1 + 88))(buf);
  Registry::createRestModuleOneTimeUseConnection(&v5, *buf);
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10032388C(a1 + 368);
  sub_10032396C(a1 + 392);
  *buf = sub_100323A4C;
  v4 = 0;
  sub_10032C8C0();
}

void sub_10032383C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10032388C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v4[0] = off_101E42780;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10032396C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/meid");
  v4[0] = off_101E42800;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100323A4C(uint64_t a1)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(**(a1 + 168) + 32))(&__p);
  v2 = HIBYTE(v19);
  v3 = HIBYTE(v19);
  if (v19 < 0)
  {
    v2 = v18;
  }

  if (v2)
  {
    v4 = *(a1 + 280);
    v5 = *(a1 + 288);
    if (v4 != v5)
    {
      v6 = v4 + 72;
      do
      {
        if (v19 >= 0)
        {
          v7 = HIBYTE(v19);
        }

        else
        {
          v7 = v18;
        }

        v8 = *(v6 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v6 + 8);
        }

        if (v7 == v8)
        {
          v10 = v19 >= 0 ? &__p : __p;
          v11 = v9 >= 0 ? v6 : *v6;
          if (!memcmp(v10, v11, v7))
          {
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I iccid match selection", &v16, 2u);
            }

            v13 = *(a1 + 200);
            isSimReady = subscriber::isSimReady();
            (*(*v13 + 48))(v13, isSimReady);
          }
        }

        v15 = v6 + 96;
        v6 += 168;
      }

      while (v15 != v5);
      v3 = HIBYTE(v19);
    }
  }

  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100323BF4(uint64_t result)
{
  if (*(result + 304) - 1 <= 2)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I cb change", v5, 2u);
    }

    return (*(**(v3 + 200) + 56))(*(v3 + 200));
  }

  return result;
}

float sub_100323C94(uint64_t a1)
{
  v2 = *(a1 + 664);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 68) == 2;
      v9 = 67109120;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fBasebandOnlineAssertion state : %d", &v9, 8u);
    }
  }

  if (*(a1 + 680))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I probe in progress", &v9, 2u);
    }
  }

  if (*(a1 + 256) == 1)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 257);
      v9 = 16777472;
      LOBYTE(v10) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fPendingInstallStatus: %hhu", &v9, 5u);
    }
  }

  return result;
}

uint64_t sub_100323DE4(uint64_t result)
{
  if (*(result + 424) == 2)
  {
    v1 = result;
    v2 = *(result + 184);
    if (!v2)
    {
      (*(**(v1 + 88) + 840))(&v15);
      v3 = v15;
      v15 = 0uLL;
      v4 = *(v1 + 224);
      *(v1 + 216) = v3;
      if (v4)
      {
        sub_100004A34(v4);
        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }
      }

      v5 = *(v1 + 88);
      v6 = *(v1 + 24);
      object = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      sub_100004AA0(&v10, (v1 + 8));
      if (v10)
      {
        v7 = v10 + 64;
      }

      else
      {
        v7 = 0;
      }

      v12 = v7;
      v13 = v11;
      v10 = 0;
      v11 = 0;
      (*(*v5 + 424))(&v15, v5, &object, &v12);
      v8 = v15;
      v15 = 0uLL;
      v9 = *(v1 + 192);
      *(v1 + 184) = v8;
      if (v9)
      {
        sub_100004A34(v9);
        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }
      }

      if (v13)
      {
        sub_100004A34(v13);
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      if (object)
      {
        dispatch_release(object);
      }

      (*(**(v1 + 184) + 16))(*(v1 + 184));
      v2 = *(v1 + 184);
    }

    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_100323F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100323FBC(uint64_t result, uint64_t a2)
{
  if (*(result + 680))
  {
    v3 = result;
    v4 = sub_100326328(result + 640);
    result = sub_100326328(a2);
    if (v4 != result)
    {
      v5 = *(**(v3 + 680) + 16);

      return v5();
    }
  }

  return result;
}

uint64_t sub_100324054(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v3 = 0;
    (*(*result + 72))(result, 1, 0, v2);
    return sub_1000DEFB0(v2);
  }

  return result;
}

void sub_1003240E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000DEFB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003240FC(uint64_t a1)
{
  (*(**(a1 + 168) + 24))(*(a1 + 168));

  return ctu::RestModule::disconnect((a1 + 264));
}

void sub_100324158(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a2)
  {
    goto LABEL_85;
  }

  (***(a1 + 88))(&v53);
  ServiceMap = Registry::getServiceMap(v53.__r_.__value_.__l.__data_);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_10:
  if (v53.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v53.__r_.__value_.__l.__size_);
  }

  if (!v13)
  {
    goto LABEL_83;
  }

  HIBYTE(v54[2]) = 22;
  v55 = 0u;
  *v56 = 0u;
  v57 = 0u;
  memset(&v53, 0, sizeof(v53));
  strcpy(v54, "com.apple.NanoSettings");
  LOBYTE(v55) = 1;
  v15 = *a3;
  v16 = *(*a3 + 95);
  if (v16 < 0)
  {
    v16 = *(v15 + 80);
  }

  v17 = v16 == 0;
  v18 = 72;
  if (v17)
  {
    v18 = 0;
  }

  std::string::operator=(&v53, (v15 + v18));
  v19 = kCBMessageLocalizationTable;
  (*(*v13 + 40))(&__dst, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE");
  *buf = *(&v55 + 1);
  *(&v55 + 1) = __dst;
  *&__dst = 0;
  sub_100005978(buf);
  sub_100005978(&__dst);
  v52 = 0;
  v20 = (a1 + 528);
  if (*(a1 + 551) < 0)
  {
    v21 = *(a1 + 536);
    if (v21)
    {
      sub_100005F2C(__p, *v20, v21);
      goto LABEL_22;
    }

LABEL_24:
    v52 = @"iPhone";
    *buf = 0;
    sub_100005978(buf);
    goto LABEL_37;
  }

  if (!*(a1 + 551))
  {
    goto LABEL_24;
  }

  *__p = *v20;
  v50 = *(a1 + 544);
LABEL_22:
  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v60 = v50;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    v64 = v60;
  }

  v61 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v58;
    v58 = v61;
    v62 = v22;
    sub_100005978(&v62);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  v51 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  v23 = v51;
  *buf = v52;
  v51 = 0;
  v52 = v23;
  sub_100005978(buf);
  sub_100005978(&v51);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  if ((*(*a3 + 71) & 0x8000000000000000) != 0)
  {
    if (*(*a3 + 56))
    {
      goto LABEL_39;
    }

LABEL_42:
    *&__dst = 0;
    (*(*v13 + 40))(&__dst, v13, v19, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_NO_CARRIER_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_NO_CARRIER_%@");
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", __dst, 0, v52);
    v26 = v56[0];
    v56[0] = StringWithValidatedFormat;
    *buf = v26;
    sub_100005978(buf);
    p_dst = &__dst;
    goto LABEL_59;
  }

  if (!*(*a3 + 71))
  {
    goto LABEL_42;
  }

LABEL_39:
  v51 = 0;
  (*(*v13 + 40))(&v51, v13, v19, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_%@_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_%@_%@");
  v48 = 0;
  v24 = *a3;
  if (*(*a3 + 71) < 0)
  {
    sub_100005F2C(v46, *(v24 + 48), *(v24 + 56));
  }

  else
  {
    *v46 = *(v24 + 48);
    v47 = *(v24 + 64);
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(&__dst, v46[0], v46[1]);
  }

  else
  {
    __dst = *v46;
    v60 = v47;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    v64 = v60;
  }

  v61 = 0;
  if (ctu::cf::convert_copy())
  {
    v28 = v58;
    v58 = v61;
    v62 = v28;
    sub_100005978(&v62);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  v48 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v29 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v51, 0, v48, v52);
  v30 = v56[0];
  v56[0] = v29;
  *buf = v30;
  sub_100005978(buf);
  sub_100005978(&v48);
  p_dst = &v51;
LABEL_59:
  sub_100005978(p_dst);
  (***(a1 + 88))(buf);
  v31 = Registry::getServiceMap(*buf);
  v32 = v31;
  if (v33 < 0)
  {
    v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
    v35 = 5381;
    do
    {
      v33 = v35;
      v36 = *v34++;
      v35 = (33 * v35) ^ v36;
    }

    while (v36);
  }

  std::mutex::lock(v31);
  *&__dst = v33;
  v37 = sub_100009510(&v32[1].__m_.__sig, &__dst);
  if (!v37)
  {
    v39 = 0;
    goto LABEL_66;
  }

  v39 = v37[3];
  v38 = v37[4];
  if (!v38)
  {
LABEL_66:
    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    goto LABEL_67;
  }

  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v32);
  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v38);
  v40 = 0;
LABEL_67:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v39)
  {
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = &v53;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v53.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Posting notification for (%s)", buf, 0xCu);
    }

    (*(*v39 + 16))(v39, &v53);
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  sub_100005978(&v52);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  sub_100005978(v56);
  sub_100005978(&v55 + 1);
  if (SHIBYTE(v54[2]) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

LABEL_85:
  v43 = *(a1 + 424);
  if (v43 == 2)
  {
    v45 = *(a1 + 232);
    if (*(a1 + 240) == v45)
    {
      sub_1002030E0();
    }

    (*(**(a1 + 136) + 72))(*(a1 + 136), v45 + 16, a3);
  }

  else if (v43 == 1)
  {
    v44 = *(a1 + 232);
    if (*(a1 + 240) == v44)
    {
      sub_1002030E0();
    }

    (*(**(a1 + 120) + 72))(*(a1 + 120), v44 + 16, a3);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B6E0();
  }
}

void sub_100324968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30)
{
  sub_100005978((v32 - 168));
  if (*(v32 - 137) < 0)
  {
    operator delete(*(v32 - 160));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a25);
  sub_100005978(&a26);
  sub_10051D34C(&a27);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(a1);
}

void sub_100324C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100324C9C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (!v8)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B77C();
    }

    v55[0] = 2;
    LOBYTE(v56) = 1;
    v14 = *(a6 + 24);
    if (!v14)
    {
      sub_100022DB4();
    }

    (*(*v14 + 48))(v14, v55);
    if (v55[0] != 1)
    {
      return;
    }

    v13 = v56;
    if (!v56)
    {
      return;
    }

    v57 = v56;
LABEL_76:
    operator delete(v13);
    return;
  }

  v9 = *(a1 + 232);
  if (*(a1 + 240) == v9 || *(v9 + 12) != 3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B748();
    }

    v52[0] = 2;
    LOBYTE(v53) = 12;
    v12 = *(a6 + 24);
    if (!v12)
    {
      sub_100022DB4();
    }

    (*(*v12 + 48))(v12, v52);
    if (v52[0] != 1)
    {
      return;
    }

    v13 = v53;
    if (!v53)
    {
      return;
    }

    v54 = v53;
    goto LABEL_76;
  }

  if (!*(a1 + 184))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B714();
    }

    v49[0] = 2;
    LOBYTE(v50) = 11;
    v15 = *(a6 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15, v49);
    if (v49[0] != 1)
    {
      return;
    }

    v13 = v50;
    if (!v50)
    {
      return;
    }

    v51 = v50;
    goto LABEL_76;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_10032B294(buf, "kSessionId", a3);
  sub_10032EB10(v44, buf, 1);
  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
  }

  if (*(a4 + 23) < 0)
  {
    v16 = *(a4 + 1);
    if (v16)
    {
      *buf = "kTokenID";
      sub_100005F2C(&v63, *a4, v16);
LABEL_34:
      sub_10032EE70();
    }
  }

  else if (*(a4 + 23))
  {
    v63 = *a4;
    v11 = *(a4 + 2);
    *buf = "kTokenID";
    v64 = v11;
    goto LABEL_34;
  }

  if (*(a1 + 391) < 0)
  {
    v18 = *(a1 + 376);
    if (v18)
    {
      *buf = "kIMEI";
      sub_100005F2C(&v63, *(a1 + 368), v18);
LABEL_40:
      sub_10032EE70();
    }
  }

  else if (*(a1 + 391))
  {
    v63 = *(a1 + 368);
    v17 = *(a1 + 384);
    *buf = "kIMEI";
    v64 = v17;
    goto LABEL_40;
  }

  if (*(a1 + 416) == 1)
  {
    v19 = (a1 + 392);
    if (*(a1 + 415) < 0)
    {
      v21 = *(a1 + 400);
      if (v21)
      {
        *buf = "kMEID";
        sub_100005F2C(&v63, *v19, v21);
LABEL_47:
        sub_10032EE70();
      }
    }

    else if (*(a1 + 415))
    {
      v63 = *v19;
      v20 = *(a1 + 408);
      *buf = "kMEID";
      v64 = v20;
      goto LABEL_47;
    }
  }

  (***(a1 + 88))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v23 = ServiceMap;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, __p);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v23);
  v29 = 0;
  v31 = 1;
LABEL_56:
  if (v63)
  {
    sub_100004A34(v63);
  }

  if (v30)
  {
    (*(*v30 + 208))(__p, v30);
    v63 = *__p;
    *buf = "kProductType";
    v64 = v59;
    __p[0] = 0;
    __p[1] = 0;
    v59 = 0;
    sub_10032EE70();
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if ((*(**(a1 + 216) + 16))(*(a1 + 216), v44, &v46))
  {
    v32 = *(a1 + 232);
    if (*(a1 + 240) == v32)
    {
      sub_1002030E0();
    }

    v33 = *(a1 + 72);
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    sub_100034C50(&v38, v46, v47, v47 - v46);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 1174405120;
    v60[2] = sub_100325918;
    v60[3] = &unk_101E422D0;
    v60[4] = a1;
    sub_100112D40(v61, a6);
    (*(*v33 + 56))(v33, v34, v35, &v38, v60);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    sub_1000E1214(v61);
  }

  else
  {
    v36 = *(a1 + 40);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E Failed to encode device metadata", buf, 2u);
    }

    v41[0] = 2;
    LOBYTE(v42) = 3;
    v37 = *(a6 + 24);
    if (!v37)
    {
      sub_100022DB4();
    }

    (*(*v37 + 48))(v37, v41);
    if (v41[0] == 1 && v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    v41[0] = 0;
  }

  sub_10018D34C(v44);
  v13 = v46;
  if (v46)
  {
    v47 = v46;
    goto LABEL_76;
  }
}

void sub_100325738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_10018D34C(&a18);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100325918(uint64_t a1, char **a2)
{
  v3 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100325AC4;
  v10[3] = &unk_101E422A0;
  sub_100112D40(v11, a1 + 40);
  sub_1001121A4(v12, a2);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v3 + 8));
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10032F1F0;
  v6[3] = &unk_101E42C48;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v12[0] == 1 && __p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v12[0] = 0;
  return sub_1000E1214(v11);
}

void sub_100325A98(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100325AC4(uint64_t a1)
{
  sub_1001121A4(v3, (a1 + 64));
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v3);
  if (v3[0] == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void sub_100325B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_10176B7B0(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325BBC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 64) = 0;

  return sub_1000E1214(a1 + 32);
}

void sub_100325C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v4 = *a2;
  v5 = *(a2 + 8);
  v8 = a1;
  sub_100F11B6C(&v9, v3);
  if (v4 != v5)
  {
    while ((sub_10032B304(&v8, v4) & 1) == 0)
    {
      v4 += 312;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_11;
      }
    }

    if (v4 != v5)
    {
      for (i = (v4 + 312); i != v5; i = (i + 312))
      {
        if ((sub_10032B304(&v8, i) & 1) == 0)
        {
          sub_1000DE324(v4, i);
          v4 += 312;
        }
      }
    }
  }

LABEL_11:
  sub_100325D70(a2, v4, *(a2 + 8));
  if (v12[24] == 1)
  {
    v7 = v12;
    sub_100112120(&v7);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }
}

void sub_100325D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100325DE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100325D70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      sub_1000DE324(v7, v4);
      v4 = (v4 + 312);
      v7 += 312;
    }

    sub_1000DDCAC(a1, v7);
  }

  return a2;
}

uint64_t sub_100325DE8(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_100112120(&v3);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_100325E50(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100325F5C;
  v4[3] = &unk_101E42328;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100325F5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sim connectivity probe", buf, 2u);
  }

  (*(**(v2 + 168) + 32))(buf);
  if (SHIBYTE(v27) < 0)
  {
    v8 = *&buf[8];
    operator delete(*buf);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (HIBYTE(v27))
  {
LABEL_5:
    v4 = *(v2 + 760);
    v5 = *(v2 + 768);
    if (v4 >= v5)
    {
      v10 = *(v2 + 752);
      v11 = (v4 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_1000CE3D4();
      }

      v12 = v5 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v29 = v2 + 752;
      if (v14)
      {
        sub_1000B318C(v2 + 752, v14);
      }

      v15 = (8 * v11);
      *buf = 0;
      *&buf[8] = v15;
      v28 = 0;
      sub_10032B6D8(v15, (a1 + 32));
      v27 = v15 + 1;
      sub_10032B710(v2 + 752, buf);
      v7 = *(v2 + 760);
      result = sub_10032B7E8(buf);
    }

    else
    {
      result = sub_10032B6D8(*(v2 + 760), (a1 + 32));
      v7 = v4 + 8;
    }

    *(v2 + 760) = v7;
    if (!*(v2 + 680))
    {
      v16 = *(v2 + 88);
      v17 = *(v2 + 24);
      object = v17;
      if (v17)
      {
        dispatch_retain(v17);
      }

      v18 = sub_100326328(v2 + 640);
      (*(*v16 + 704))(buf, v16, &object, v18);
      v19 = *buf;
      memset(buf, 0, sizeof(buf));
      v20 = *(v2 + 688);
      *(v2 + 680) = v19;
      if (v20)
      {
        sub_100004A34(v20);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (object)
      {
        dispatch_release(object);
      }

      sub_10000501C(buf, "/cc/assertions/baseband_online");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }

      v21 = v24;
      v24 = 0uLL;
      v22 = *(v2 + 672);
      *(v2 + 664) = v21;
      if (v22)
      {
        sub_100004A34(v22);
        if (*(&v24 + 1))
        {
          sub_100004A34(*(&v24 + 1));
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_100326374;
      aBlock[3] = &unk_101E42300;
      aBlock[4] = v2;
      v28 = 0;
      *buf = off_101E3EF10;
      *&buf[8] = _Block_copy(aBlock);
      v28 = buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      return sub_10000FF50(buf);
    }

    return result;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Subscription not active", buf, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100326328(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v1;
  do
  {
    if (*(v2 + 28) >= 1)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 1));
  }

  while (v2);
  if (v4 != v1 && *(v4 + 28) <= 1)
  {
    return ConnectionAvailabilityContainer::available();
  }

  else
  {
    return 0;
  }
}

void sub_100326374(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I bb online granted: %d", buf, 8u);
  }

  if (a2)
  {
    v5 = *(v3 + 680);
    v6[0] = off_101E42C88;
    v6[1] = v3;
    v6[3] = v6;
    (**v5)(v5, v6);
    sub_10000FF50(v6);
  }
}

uint64_t sub_10032648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v10[0] = a2;
  v10[1] = a3;
  v6 = *(a1 + 168);
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = off_101E42D08;
  v9[1] = v7;
  v9[3] = v9;
  (*(*v6 + 72))(v6, v10, a4, v9);
  return sub_100113648(v9);
}

void sub_100326560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10032658C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1003265C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v6 = *(a1 + 168);
  v10[0] = a2;
  v10[1] = a3;
  v11 = 1;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = off_101E42D98;
  v9[1] = v7;
  v9[3] = v9;
  (*(*v6 + 80))(v6, v10, a4, v9);
  return sub_100113648(v9);
}

void sub_1003266A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1003266D0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_10032670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v14[0] = a2;
  v14[1] = a3;
  v10 = *(a1 + 168);
  if (aBlock)
  {
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  v13[0] = off_101E42E18;
  v13[1] = v11;
  v13[3] = v13;
  (*(*v10 + 88))(v10, v14, a4, a5, a6, v13);
  return sub_10000FF50(v13);
}

void sub_1003267F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100326824(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100326898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a2;
  v26 = a3;
  v6 = *(a1 + 232);
  if (*(a1 + 240) == v6)
  {
    sub_1002030E0();
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v25 == v10 && v26 == v9)
  {
    v18 = 0;
    v19 = 0;
    v13 = *a4;
    v12 = *(a4 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v13;
    v17 = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100326AE4;
    aBlock[3] = &unk_101E42350;
    aBlock[4] = a5;
    v18 = _Block_copy(aBlock);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_100326AF4;
    v14[3] = &unk_101E42378;
    v14[4] = a6;
    v14[5] = a1;
    v19 = _Block_copy(v14);
    sub_100326D04((a1 + 696), &v16);
    sub_100326DD4(a1);
    if (v19)
    {
      _Block_release(v19);
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B7DC();
    }

    v20 = 258;
    v21[0] = 0;
    (*(a6 + 16))(a6, &v20, v21);
    if (v21[0] == 1)
    {
      if (v24[24] == 1)
      {
        v16 = v24;
        sub_100112120(&v16);
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_100326A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100326AF4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (*a2 == 2 && a2[1] == 6)
  {
    *(v6 + 256) = 257;
  }

  else if (*(v6 + 256) == 1)
  {
    *(v6 + 256) = 0;
  }

  if (*a3 == 1 && *(a3 + 88) == 1)
  {
    v7 = *(a3 + 64);
    v8 = *(a3 + 72);
    while (v7 != v8)
    {
      if ((*(**(v6 + 168) + 64))(*(v6 + 168), v7 + 16))
      {
        if ((*a3 & 1) == 0)
        {
          sub_10176B810();
        }

        v9 = *(a3 + 64);
        v10 = *(a3 + 72);
        while (v9 != v10)
        {
          *(v9 + 90) = (*(**(v6 + 168) + 64))(*(v6 + 168), v9 + 16);
          v9 += 216;
        }

        break;
      }

      v7 += 216;
    }
  }

  v11 = *(a1 + 32);
  v12 = 0;
  if (*a2 - 1 <= 1)
  {
    v12 = *a2;
  }

  v14[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v15, a3 + 8);
    v14[0] = 1;
  }

  (*(v11 + 16))(v11, &v12, v14);
  if (v14[0] == 1)
  {
    if (v18[24] == 1)
    {
      v13 = v18;
      sub_100112120(&v13);
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }
  }
}