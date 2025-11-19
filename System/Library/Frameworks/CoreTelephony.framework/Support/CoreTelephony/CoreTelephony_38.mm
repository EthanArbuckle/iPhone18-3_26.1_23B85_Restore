void sub_100264BAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100264BB8(void *a1, char *a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I received delete profile response for iccid: %s", buf, 0xCu);
  }

  v6 = sub_10025CD10(a1 + 41, a2);
  if (a1[42] != v6)
  {
    v7 = v6;
    v8 = a1[11];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = a1[10];
        if (!v11)
        {
LABEL_84:
          sub_100004A34(v10);
          return;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        *buf = "IsSourcePlanDeleted";
        buf[8] = 1;
        v12 = sub_10027F138(&v34, buf);
        v13 = *(v7 + 367);
        v35 = v12;
        *buf = "SourceImei";
        if (v13 < 0)
        {
          sub_100005F2C(&buf[8], *(v7 + 344), *(v7 + 352));
          v12 = v35;
        }

        else
        {
          *&buf[8] = *(v7 + 344);
          v38 = *(v7 + 360);
        }

        if (v12 >= v36)
        {
          v14 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v12, *buf);
          *(v12 + 3) = 0;
          *(v12 + 2) = *&buf[8];
          *(v12 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v12 + 3) = sub_100280258;
          v14 = v12 + 56;
        }

        v35 = v14;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
          v14 = v35;
        }

        *buf = "SourceCsn";
        *&buf[8] = *(v7 + 274);
        if (v14 >= v36)
        {
          v15 = sub_10027F530(&v34, buf);
        }

        else
        {
          sub_10000501C(v14, "SourceCsn");
          *(v14 + 2) = *&buf[8];
          *(v14 + 3) = sub_10027F694;
          v15 = v14 + 56;
        }

        v35 = v15;
        *buf = "SourceDeviceType";
        if (*(v7 + 415) < 0)
        {
          sub_100005F2C(&buf[8], *(v7 + 392), *(v7 + 400));
          v15 = v35;
        }

        else
        {
          *&buf[8] = *(v7 + 392);
          v38 = *(v7 + 408);
        }

        if (v15 >= v36)
        {
          v16 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v15, *buf);
          *(v15 + 3) = 0;
          *(v15 + 2) = *&buf[8];
          *(v15 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v15 + 3) = sub_100280258;
          v16 = v15 + 56;
        }

        v35 = v16;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
        }

        *buf = "SourceDisplayName";
        if (*(v7 + 391) < 0)
        {
          sub_100005F2C(&buf[8], *(v7 + 368), *(v7 + 376));
        }

        else
        {
          *&buf[8] = *(v7 + 368);
          v38 = *(v7 + 384);
        }

        v17 = v35;
        if (v35 >= v36)
        {
          v18 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v35, *buf);
          *(v17 + 3) = 0;
          *(v17 + 2) = *&buf[8];
          *(v17 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v17 + 3) = sub_100280258;
          v18 = v17 + 56;
        }

        v35 = v18;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (*(v7 + 191) < 0)
        {
          v19 = *(v7 + 176);
          if (!v19)
          {
            goto LABEL_47;
          }

          *buf = "TransferToken";
          sub_100005F2C(&buf[8], *(v7 + 168), v19);
        }

        else
        {
          if (!*(v7 + 191))
          {
            goto LABEL_47;
          }

          *buf = "TransferToken";
          *&buf[8] = *(v7 + 168);
          v38 = *(v7 + 184);
        }

        v20 = v35;
        if (v35 >= v36)
        {
          v21 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v35, *buf);
          *(v20 + 3) = 0;
          *(v20 + 2) = *&buf[8];
          *(v20 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v20 + 3) = sub_100280258;
          v21 = v20 + 56;
        }

        v35 = v21;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
        }

LABEL_47:
        if (*(v7 + 167) < 0)
        {
          v22 = *(v7 + 152);
          if (!v22)
          {
            goto LABEL_57;
          }

          *buf = "Imsi";
          sub_100005F2C(&buf[8], *(v7 + 144), v22);
        }

        else
        {
          if (!*(v7 + 167))
          {
            goto LABEL_57;
          }

          *buf = "Imsi";
          *&buf[8] = *(v7 + 144);
          v38 = *(v7 + 160);
        }

        v23 = v35;
        if (v35 >= v36)
        {
          v24 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v35, *buf);
          *(v23 + 3) = 0;
          *(v23 + 2) = *&buf[8];
          *(v23 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v23 + 3) = sub_100280258;
          v24 = v23 + 56;
        }

        v35 = v24;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
        }

LABEL_57:
        if (*(v7 + 239) < 0)
        {
          v25 = *(v7 + 224);
          if (!v25)
          {
            goto LABEL_67;
          }

          *buf = "CarrierTransferData";
          sub_100005F2C(&buf[8], *(v7 + 216), v25);
        }

        else
        {
          if (!*(v7 + 239))
          {
            goto LABEL_67;
          }

          *buf = "CarrierTransferData";
          *&buf[8] = *(v7 + 216);
          v38 = *(v7 + 232);
        }

        v26 = v35;
        if (v35 >= v36)
        {
          v27 = sub_10027F3BC(&v34, buf);
        }

        else
        {
          sub_10000501C(v35, *buf);
          *(v26 + 3) = 0;
          *(v26 + 2) = *&buf[8];
          *(v26 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v26 + 3) = sub_100280258;
          v27 = v26 + 56;
        }

        v35 = v27;
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*&buf[8]);
        }

LABEL_67:
        if (*(v7 + 215) < 0)
        {
          v28 = *(v7 + 200);
          if (v28)
          {
            *buf = "TransferTokenExpiration";
            sub_100005F2C(&buf[8], *(v7 + 192), v28);
LABEL_72:
            v29 = v35;
            if (v35 >= v36)
            {
              v30 = sub_10027F3BC(&v34, buf);
            }

            else
            {
              sub_10000501C(v35, *buf);
              *(v29 + 3) = 0;
              *(v29 + 2) = *&buf[8];
              *(v29 + 6) = v38;
              *&buf[16] = 0;
              v38 = 0;
              *&buf[8] = 0;
              *(v29 + 3) = sub_100280258;
              v30 = v29 + 56;
            }

            v35 = v30;
            if (SHIBYTE(v38) < 0)
            {
              operator delete(*&buf[8]);
            }
          }
        }

        else if (*(v7 + 215))
        {
          *buf = "TransferTokenExpiration";
          *&buf[8] = *(v7 + 192);
          v38 = *(v7 + 208);
          goto LABEL_72;
        }

        sub_10092C8F4(v32, v7 + 96, v7 + 120);
        *buf = "PhoneNumber";
        *&buf[8] = *v32;
        v38 = v33;
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        v31 = v35;
        if (v35 >= v36)
        {
          v35 = sub_10027F3BC(&v34, buf);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(*&buf[8]);
          }
        }

        else
        {
          sub_10000501C(v35, "PhoneNumber");
          *(v31 + 2) = *&buf[8];
          *(v31 + 6) = v38;
          *&buf[16] = 0;
          v38 = 0;
          *&buf[8] = 0;
          *(v31 + 3) = sub_100280258;
          v35 = v31 + 56;
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[0]);
        }

        (*(*v11 + 120))(v11, a2, &v34);
        *buf = &v34;
        sub_100176578(buf);
        goto LABEL_84;
      }
    }
  }
}

void sub_10026536C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  a18 = &a15;
  sub_100176578(&a18);
  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_100265450(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

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

void sub_1002654A4(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
  }

  v4[0] = off_101E37378;
  v4[1] = v3;
  v4[3] = v4;
  sub_1002685F4(a1);
}

void sub_10026567C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_1002535AC(&a13);
  if (v20)
  {
    dispatch_release(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002656E8(uint64_t a1)
{
  sub_1002854D4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100265720(uint64_t a1, const void **a2, uint64_t *a3)
{
  v9 = *(a1 + 168);
  v7 = *(a1 + 176);
  v8 = (a1 + 168);
  while (v7 != v9)
  {
    v7 = sub_10027DF50(v7 - 672);
  }

  *(a1 + 176) = v9;
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_100288F04(v29, a1 + 768);
  sub_100934714(v29, &v30);
  sub_100077CD4(v29, v29[1]);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100010024(&v25, a2);
  sub_10091E3DC(&v25, &v26);
  sub_10001021C(&v25);
  sub_100074920(v24, &v30);
  __dst[0] = 0;
  __dst[1] = 0;
  v38 = 0;
  memset(v23, 0, sizeof(v23));
  sub_10004EFD0(v23, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v10 = sub_10092DB68((a1 + 40), &v26, v24, __dst, v23, &v33, v54, &v50);
  *&v22[0] = v23;
  sub_1000087B4(v22);
  *&v22[0] = __dst;
  sub_10027B2AC(v22);
  sub_100009970(v24, v24[1]);
  if (v10)
  {
    v11 = v33;
    for (i = v34; v11 != i; v11 += 42)
    {
      bzero(__dst, 0x2A0uLL);
      sub_10027D7F4(__dst, v11);
      *&v22[0] = v39;
      v13 = sub_100173F08(a1 + 1032, v39);
      std::string::operator=((v13 + 56), v49);
      sub_10027DF50(__dst);
    }

    memset(v22, 0, sizeof(v22));
    sub_1006E0F18(v22);
    if (v54[30])
    {
      sub_10027F834(__dst, &v54[31]);
      v48 = 1;
      v14 = sub_100832314(v54, __dst, v22);
      if (v48 != 1)
      {
        goto LABEL_18;
      }

      v19[0] = &v47;
      sub_100111D64(v19);
      if (v46 < 0)
      {
        operator delete(__p);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }

      if ((v42[7] & 0x80000000) != 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__dst[0]);
        if (v14)
        {
LABEL_19:
          sub_10000501C(v20, "Target_TransferData_");
          sub_1006E12FC(__dst, v22);
          memset(v19, 0, sizeof(v19));
          sub_100280198(v19, __dst, v42, 1uLL);
          sub_10092B3FC((a1 + 40), v20, v19);
          v36 = v19;
          sub_10027E1BC(&v36);
          sub_1006E1008(__dst);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

LABEL_26:
          sub_1003172E0(v54, v15, &v17);
          sub_1002816F8(v8, *(a1 + 176), v17, v18, 0xCF3CF3CF3CF3CF3DLL * ((v18 - v17) >> 5));
          __dst[0] = &v17;
          sub_10027B454(__dst);
          sub_1006E1008(v22);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_18:
        if (v14)
        {
          goto LABEL_19;
        }
      }
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017676A0();
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176766C();
  }

LABEL_27:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  sub_100009970(&v30, v31);
  __dst[0] = &v33;
  sub_10027B454(__dst);
  if (SBYTE7(v51) < 0)
  {
    operator delete(v50);
  }

  sub_100111C2C(v54);
  return v10;
}

void sub_100265B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_10027E1BC(&a49);
  sub_1006E1008(&a50);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1006E1008(&a22);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  sub_100009970(&a43, a44);
  a50 = &a46;
  sub_10027B454(&a50);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  sub_100111C2C(&STACK[0x410]);
  _Unwind_Resume(a1);
}

void sub_100265CB4()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v0;
  if (*(v0 + 352) == *(v0 + 336))
  {
    if (os_log_type_enabled(*(v0 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767770();
    }

    sub_10000FFD0(v3, 0);
  }

  else
  {
    v5 = *(v0 + 88);
    if (v5)
    {
      v6 = v1;
      v7 = std::__shared_weak_count::lock(v5);
      if (v7)
      {
        v8 = *(v4 + 80);
        if (v8)
        {
          bzero(v35, 0x508uLL);
          (*(*v8 + 168))(v35, v8, v6);
          if ((v36 & 1) == 0)
          {
            if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_1017676D4();
            }

            sub_10000FFD0(v3, 0);
            goto LABEL_34;
          }

          v9 = *(v4 + 72);
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = *(v4 + 64);
              if (v11)
              {
                v12 = (*(**(v4 + 48) + 1008))(*(v4 + 48), *(v4 + 352), *(v4 + 352) + 24, *(v4 + 352) + 48, *(v4 + 352) + 72, *(v4 + 352) + 320);
                sub_10000501C(__p, "IsTransferUsingRecoveryWithoutExplicitIccidMapping");
                *&v31 = 1;
                v30 = sub_100176214;
                v18 = 0uLL;
                __s = 0;
                sub_1001762DC(&__s, __p, &v33, 1uLL);
                (*(*v8 + 120))(v8, v6, &__s);
                v21[0] = &__s;
                sub_100176578(v21);
                sub_100176638(&v30);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                v13 = *(v4 + 40);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  v14 = v6;
                  if (*(v6 + 23) < 0)
                  {
                    v14 = *v6;
                  }

                  *__p = 136315394;
                  *&__p[4] = v14;
                  *&__p[12] = 1024;
                  *&__p[14] = v12 ^ 1;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Attempting recovery installation of plan with source iccid: %s, useDS=%d", __p, 0x12u);
                }

                if (!v12)
                {
                  bzero(&__p[8], 0x548uLL);
                  *__p = v4;
                  sub_100004AA0(&__s, (v4 + 8));
                  v16 = v18;
                  *&__p[8] = __s;
                  *&__p[16] = v18;
                  if (v18)
                  {
                    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
                    sub_100004A34(v16);
                  }

                  sub_1000224C8(&v30, v3);
                  *&v33 = v8;
                  *(&v33 + 1) = v7;
                  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_10028036C(v34, v35);
                  v24 = *__p;
                  v25 = *&__p[16];
                  if (*&__p[16])
                  {
                    atomic_fetch_add_explicit((*&__p[16] + 16), 1uLL, memory_order_relaxed);
                  }

                  sub_1000224C8(v26, &v30);
                  v26[2] = v33;
                  if (*(&v33 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_10028036C(v27, v34);
                  v28 = 0;
                  operator new();
                }

                v21[0] = 0;
                v21[1] = 0;
                v22 = 0;
                sub_100261590(v4, v21);
                __s = "AltSmdpFqdn";
                if (SHIBYTE(v22) < 0)
                {
                  sub_100005F2C(&v18, v21[0], v21[1]);
                  v15 = __s;
                }

                else
                {
                  v18 = *v21;
                  v19 = v22;
                  v15 = "AltSmdpFqdn";
                }

                sub_10000501C(__p, v15);
                v31 = v18;
                v32 = v19;
                v19 = 0;
                v18 = 0uLL;
                v30 = sub_100280258;
                memset(v20, 0, sizeof(v20));
                sub_1001762DC(v20, __p, &v33, 1uLL);
                (*(*v8 + 120))(v8, v6, v20);
                v23 = v20;
                sub_100176578(&v23);
                sub_100176638(&v30);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                if (SHIBYTE(v19) < 0)
                {
                  operator delete(v18);
                }

                __p[0] = 0;
                LOBYTE(v30) = 0;
                (*(*v11 + 144))(v11, v6, v21, __p, 0, 3);
                if (v30 == 1 && (__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                if ((v36 & 1) == 0)
                {
                  sub_1000D1644();
                }

                (*(*v8 + 312))(v8, v35);
                sub_10000FFD0(v3, 0);
                if (SHIBYTE(v22) < 0)
                {
                  operator delete(v21[0]);
                }

LABEL_33:
                sub_100004A34(v10);
LABEL_34:
                if (v36 == 1)
                {
                  sub_1002813D0(v35);
                }

LABEL_36:
                sub_100004A34(v7);
                return;
              }
            }
          }

          else
          {
            v10 = 0;
          }

          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767708();
          }

          sub_10000FFD0(v3, 0);
          if (!v10)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176773C();
    }

    sub_10000FFD0(v3, 0);
    if (v7)
    {
      goto LABEL_36;
    }
  }
}

void sub_1002663BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v23);
  if (LOBYTE(STACK[0x1020]) == 1)
  {
    sub_1002813D0(&STACK[0xB20]);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_100266580(uint64_t a1)
{
  if (*(a1 + 1352) == 1)
  {
    sub_1002813D0(a1 + 72);
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002665D8(void *a1)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1002584E0(a1, &v15);
  v2 = a1[21];
  for (i = a1[22]; v2 != i; v2 += 672)
  {
    v5 = v15;
    v4 = v16;
    v6 = (v2 + 24);
    if (v15 != v16)
    {
      v7 = *(v2 + 47);
      if (v7 >= 0)
      {
        v8 = *(v2 + 47);
      }

      else
      {
        v8 = *(v2 + 32);
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 24);
      }

      else
      {
        v9 = *(v2 + 24);
      }

      while (1)
      {
        v10 = *(v5 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v5 + 8);
        }

        if (v10 == v8)
        {
          v12 = v11 >= 0 ? v5 : *v5;
          if (!memcmp(v12, v9, v8))
          {
            break;
          }
        }

        v5 += 24;
        if (v5 == v4)
        {
          goto LABEL_23;
        }
      }
    }

    if (v5 != v4)
    {
      *(v2 + 294) = 7;
      v13 = a1[5];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100649C94(7);
        if (*(v2 + 47) < 0)
        {
          v6 = *v6;
        }

        *buf = 136446466;
        *&buf[4] = v14;
        v19 = 2080;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Updating transfer type to %{public}s, iccid:%s", buf, 0x16u);
      }
    }

LABEL_23:
    ;
  }

  *buf = &v15;
  sub_1000087B4(buf);
}

void sub_10026679C(uint64_t a1)
{
  if ((*(**(a1 + 48) + 152))(*(a1 + 48)))
  {
    v12[0] = 0;
    v12[1] = 0;
    v11 = v12;
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 64);
        if (v5)
        {
          v6 = *(a1 + 168);
          v7 = *(a1 + 176);
          if (v6 != v7)
          {
            v8 = v6 + 66;
            do
            {
              if ((*(v8 - 234) | 2) == 3)
              {
                if (v12 == sub_100007A6C(&v11, v8))
                {
                  v9 = (*(*v5 + 248))(v5, v8);
                  v13 = v8;
                  *(sub_100170224(&v11, v8) + 56) = v9;
                }

                v13 = v8;
                if ((*(sub_100170224(&v11, v8) + 56) & 1) == 0)
                {
                  *(v8 - 234) = -121;
                }
              }

              v10 = v8 + 18;
              v8 += 84;
            }

            while (v10 != v7);
          }
        }

        sub_100004A34(v4);
      }
    }

    sub_100009970(&v11, v12[0]);
  }
}

void sub_100266910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_100266930(uint64_t a1, uint64_t *a2)
{
  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  v4 = *(a1 + 640);
  v5 = *(a1 + 648);
  while (v4 != v5)
  {
    if (*(v4 + 80) == 1)
    {
      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      while (v6 != v7)
      {
        if ((*(v6 + 39) & 0x8000000000000000) != 0)
        {
          if (!*(v6 + 24))
          {
            goto LABEL_17;
          }
        }

        else if (!*(v6 + 39))
        {
          goto LABEL_17;
        }

        if ((*(v6 + 89) & 1) == 0)
        {
          memset(__p, 0, 24);
          (*(**(a1 + 48) + 160))(__p);
          size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          v9 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p[0].__r_.__value_.__l.__size_;
          }

          if (size)
          {
            sub_100005BA0(&v100, &__p[0].__r_.__value_.__l.__data_);
            v9 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          }

          if (v9 < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

LABEL_17:
        v6 += 216;
      }
    }

    v4 += 88;
  }

  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  if (v10 != v11)
  {
    v12 = v10 + 144;
    do
    {
      if ((*(v12 + 144) & 1) == 0)
      {
        if ((*(v12 + 23) & 0x8000000000000000) == 0)
        {
          if (!*(v12 + 23))
          {
            goto LABEL_27;
          }

LABEL_26:
          sub_100005BA0(&v100, v12);
          goto LABEL_27;
        }

        if (*(v12 + 8))
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v13 = v12 + 528;
      v12 += 672;
    }

    while (v13 != v11);
  }

  *&v99.__r_.__value_.__r.__words[1] = 0uLL;
  v99.__r_.__value_.__r.__words[0] = &v99.__r_.__value_.__l.__size_;
  v14 = *(a1 + 88);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 80);
      if (v17)
      {
        (*(*v17 + 368))(__p);
        sub_100009970(&v99, v99.__r_.__value_.__l.__size_);
        v18 = __p[0].__r_.__value_.__l.__size_;
        v99 = __p[0];
        if (__p[0].__r_.__value_.__r.__words[2])
        {
          *(__p[0].__r_.__value_.__l.__size_ + 16) = &v99.__r_.__value_.__l.__size_;
          __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__l.__size_;
          *&__p[0].__r_.__value_.__r.__words[1] = 0uLL;
          v18 = 0;
        }

        else
        {
          v99.__r_.__value_.__r.__words[0] = &v99.__r_.__value_.__l.__size_;
        }

        sub_100009970(__p, v18);
      }

      sub_100004A34(v16);
    }
  }

  v19 = *(a1 + 168);
  v20 = *(a1 + 176);
  if (v19 != v20)
  {
    while (1)
    {
      v21 = (v19 + 24);
      if ((*(**(a1 + 48) + 152))(*(a1 + 48)))
      {
        memset(__p, 0, 24);
        (*(**(a1 + 48) + 136))(__p);
        if (__p[0].__r_.__value_.__r.__words[2])
        {
          std::string::operator=((v19 + 528), (__p[0].__r_.__value_.__r.__words[0] + 32));
LABEL_86:
          sub_100009970(__p, __p[0].__r_.__value_.__l.__size_);
          goto LABEL_87;
        }

        (***(a1 + 48))(&buf);
        ServiceMap = Registry::getServiceMap(buf.__r_.__value_.__l.__data_);
        v33 = ServiceMap;
        if (v34 < 0)
        {
          v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
          v36 = 5381;
          do
          {
            v34 = v36;
            v37 = *v35++;
            v36 = (33 * v36) ^ v37;
          }

          while (v37);
        }

        std::mutex::lock(ServiceMap);
        *v103 = v34;
        v38 = sub_100009510(&v33[1].__m_.__sig, v103);
        if (v38)
        {
          v39 = v38[3];
          v40 = v38[4];
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v33);
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v40);
            v41 = 0;
            goto LABEL_72;
          }
        }

        else
        {
          v39 = 0;
        }

        std::mutex::unlock(v33);
        v40 = 0;
        v41 = 1;
LABEL_72:
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        if (!v39)
        {
          goto LABEL_84;
        }

        memset(&buf, 0, sizeof(buf));
        (*(*v39 + 24))(&buf, v39, v19 + 48);
        v46 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        v47 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = buf.__r_.__value_.__l.__size_;
        }

        if (v46)
        {
          v48 = *(a1 + 40);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
            if (v47 >= 0)
            {
              p_buf = &buf;
            }

            *v103 = 136446210;
            *&v103[4] = p_buf;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Updating country code: %{public}s", v103, 0xCu);
          }

          std::string::operator=((v19 + 528), &buf);
          LOBYTE(v47) = *(&buf.__r_.__value_.__s + 23);
        }

        if ((v47 & 0x80) != 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
          if (v41)
          {
            goto LABEL_86;
          }
        }

        else
        {
LABEL_84:
          if (v41)
          {
            goto LABEL_86;
          }
        }

        sub_100004A34(v40);
        goto LABEL_86;
      }

      (***(a1 + 48))(__p);
      v22 = Registry::getServiceMap(__p[0].__r_.__value_.__l.__data_);
      v23 = v22;
      if ((v24 & 0x8000000000000000) != 0)
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

      std::mutex::lock(v22);
      buf.__r_.__value_.__r.__words[0] = v24;
      v28 = sub_100009510(&v23[1].__m_.__sig, &buf);
      if (!v28)
      {
        break;
      }

      v29 = v28[3];
      v30 = v28[4];
      if (!v30)
      {
        goto LABEL_53;
      }

      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v31 = 0;
LABEL_54:
      if (__p[0].__r_.__value_.__l.__size_)
      {
        sub_100004A34(__p[0].__r_.__value_.__l.__size_);
      }

      if (!v29)
      {
        goto LABEL_66;
      }

      memset(__p, 0, 24);
      (*(*v29 + 24))(__p, v29, v19 + 48);
      v42 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      v43 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v42)
      {
        v44 = *(a1 + 40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = __p[0].__r_.__value_.__r.__words[0];
          if (v43 >= 0)
          {
            v45 = __p;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Updating country code: %{public}s", &buf, 0xCu);
        }

        std::string::operator=((v19 + 528), __p);
        LOBYTE(v43) = *(&__p[0].__r_.__value_.__s + 23);
      }

      if ((v43 & 0x80) == 0)
      {
LABEL_66:
        if (v31)
        {
          goto LABEL_87;
        }

LABEL_67:
        sub_100004A34(v30);
        goto LABEL_87;
      }

      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((v31 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_87:
      if (((*(**(a1 + 48) + 1016))(*(a1 + 48), v19 + 48, v19 + 72, v19 + 96, v19 + 120, v19 + 24) & 1) == 0)
      {
        *(v19 + 292) = 1;
      }

      v50 = *a2;
      v51 = a2[1];
      if (*a2 != v51)
      {
        v52 = *(v19 + 47);
        if (v52 >= 0)
        {
          v53 = *(v19 + 47);
        }

        else
        {
          v53 = *(v19 + 32);
        }

        if (v52 >= 0)
        {
          v54 = (v19 + 24);
        }

        else
        {
          v54 = *(v19 + 24);
        }

        while (1)
        {
          v55 = *(v50 + 23);
          v56 = v55;
          if ((v55 & 0x80u) != 0)
          {
            v55 = *(v50 + 8);
          }

          if (v55 == v53)
          {
            v57 = v56 >= 0 ? v50 : *v50;
            if (!memcmp(v57, v54, v53))
            {
              break;
            }
          }

          v50 += 24;
          if (v50 == v51)
          {
            goto LABEL_111;
          }
        }
      }

      if (v50 != v51)
      {
        *(v19 + 294) = 7;
        v58 = *(a1 + 40);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = sub_100649C94(7);
          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136446466;
          *(__p[0].__r_.__value_.__r.__words + 4) = v59;
          WORD2(__p[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v21;
          v60 = v58;
          v61 = "#I Updating transfer type: %{public}s, iccid: %s";
          v62 = 22;
LABEL_110:
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v61, __p, v62);
          goto LABEL_171;
        }

        goto LABEL_171;
      }

LABEL_111:
      v63 = *(v19 + 294);
      v64 = *(v19 + 296);
      if ((v64 - 7) >= 2)
      {
        if (v64 == 14)
        {
          v65 = *(a1 + 40);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = sub_10064A100(14);
            v67 = sub_100649C94(v63);
            LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315394;
            *(__p[0].__r_.__value_.__r.__words + 4) = v66;
            WORD2(__p[0].__r_.__value_.__r.__words[1]) = 2080;
            *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v67;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I update tranfer type due to source error (%s). %s -> kIneligibleToTransferForNow", __p, 0x16u);
          }

          v63 = 18;
        }
      }

      else
      {
        memset(__p, 0, 24);
        sub_100267A2C(a1, (v19 + 24), (v19 + 624), __p);
        if (((sub_10093103C(__p) - 53) & 0xFE) != 0)
        {
          v63 = v63;
        }

        else
        {
          v63 = 18;
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if ((*(v19 + 263) & 0x8000000000000000) != 0)
      {
        if (*(v19 + 248))
        {
          goto LABEL_130;
        }
      }

      else if (*(v19 + 263))
      {
        goto LABEL_130;
      }

      if (*(v19 + 289) != 1)
      {
        sub_10064B544(v19, __p);
        v68 = sub_100267F2C(a1, __p);
        sub_10027C3B4(__p);
        if (!v68)
        {
          goto LABEL_130;
        }

LABEL_129:
        sub_100005BA0(a1 + 976, (v19 + 24));
        goto LABEL_130;
      }

      if (sub_100649E80(v63))
      {
        goto LABEL_129;
      }

LABEL_130:
      if (*(v19 + 288) == 1 && !sub_10016FA58(&v100, (v19 + 144)))
      {
        sub_10064B544(v19, __p);
        v69 = sub_100267F9C(a1, __p);
        sub_10027C3B4(__p);
        if ((v69 & 1) == 0)
        {
          if (&v99.__r_.__value_.__r.__words[1] == sub_100007A6C(&v99, (v19 + 144)))
          {
            *(v19 + 293) = 1;
          }

          else
          {
            __p[0].__r_.__value_.__r.__words[0] = v19 + 144;
            *(v19 + 293) = *(sub_100170224(&v99, (v19 + 144)) + 56) ^ 1;
          }
        }
      }

      v103[0] = (*(**(a1 + 48) + 248))(*(a1 + 48), v19 + 48, v19 + 72, v19 + 96, v19 + 120, v19 + 24);
      sub_10064B544(v19, __p);
      v70 = sub_1002681B0(a1);
      sub_10027C3B4(__p);
      v71 = *(a1 + 40);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v73 = printers::asString(v103, v72);
        v74 = v19 + 24;
        if (*(v19 + 47) < 0)
        {
          v74 = *v21;
        }

        LODWORD(__p[0].__r_.__value_.__l.__data_) = 136446466;
        *(__p[0].__r_.__value_.__r.__words + 4) = v73;
        WORD2(__p[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v74;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I iphone plan transfer support on target:[%{public}s] for iccid: %s", __p, 0x16u);
      }

      if (v103[0] != 1 || v63 <= 0x12 && ((1 << v63) & 0x50040) != 0 || (v63 - 129) < 2)
      {
        memset(__p, 0, 24);
        (*(**(a1 + 48) + 824))(__p);
        if ((v63 & 0xFFFFFFFD) == 0x10)
        {
          goto LABEL_157;
        }

        v75 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = __p[0].__r_.__value_.__l.__size_;
        }

        if (!v75)
        {
LABEL_157:
          v80 = v103[0];
          v81 = *(v19 + 308);
          v82 = *(a1 + 848);
          if (*(v82 + 47) < 0)
          {
            sub_100005F2C(__dst, *(v82 + 24), *(v82 + 32));
          }

          else
          {
            *__dst = *(v82 + 24);
            v98 = *(v82 + 40);
          }

          v83 = sub_100927A9C(__dst);
          v79 = sub_100933B84(v63, v80, v81, v83, v70);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(__dst[0]);
          }

          if (*(v19 + 263) < 0)
          {
            **(v19 + 240) = 0;
            *(v19 + 248) = 0;
          }

          else
          {
            *(v19 + 240) = 0;
            *(v19 + 263) = 0;
          }
        }

        else
        {
          std::string::operator=((v19 + 552), __p);
          v76 = *(a1 + 40);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v77 = __p;
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v77 = __p[0].__r_.__value_.__r.__words[0];
            }

            v78 = v19 + 24;
            if (*(v19 + 47) < 0)
            {
              v78 = *v21;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
            *(buf.__r_.__value_.__r.__words + 4) = v77;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v78;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I Setting transfer endpoint to: (%{public}s) for iccid: %s", &buf, 0x16u);
          }

          v79 = 8;
        }

        v84 = *(a1 + 40);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = sub_100649C94(v79);
          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v85;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I No Magnolia support, setting transfer type to: %{public}s for iccid: %s", &buf, 0x16u);
        }

        *(v19 + 294) = v79;
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_171;
      }

      v86 = *(v19 + 308);
      if (v86 && v86 < v70)
      {
        if (*(v19 + 263) < 0)
        {
          **(v19 + 240) = 0;
          *(v19 + 248) = 0;
        }

        else
        {
          *(v19 + 240) = 0;
          *(v19 + 263) = 0;
        }

        v90 = -126;
LABEL_203:
        *(v19 + 294) = v90;
        goto LABEL_171;
      }

      if (*(v19 + 288) == 1 && *(a1 + 1120) != 5)
      {
        if (v86 >> 17 <= 6)
        {
          if (*(v19 + 263) < 0)
          {
            **(v19 + 240) = 0;
            *(v19 + 248) = 0;
          }

          else
          {
            *(v19 + 240) = 0;
            *(v19 + 263) = 0;
          }

          *(v19 + 294) = -126;
          v95 = *(a1 + 40);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_171;
          }

          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          v96 = *(v19 + 308);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315394;
          *(__p[0].__r_.__value_.__r.__words + 4) = v21;
          WORD2(__p[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v96;
          v60 = v95;
          v61 = "#I Physical sim transfer for iccid: [%s] not supported for OS version: [%d]";
          v62 = 18;
          goto LABEL_110;
        }

        sub_10064B544(v19, __p);
        v91 = sub_1002684CC(a1, __p);
        sub_10027C3B4(__p);
        if ((v91 & 1) == 0)
        {
          *(v19 + 294) = 6;
          v92 = *(a1 + 40);
          if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_171;
          }

          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
          *(__p[0].__r_.__value_.__r.__words + 4) = v21;
          v60 = v92;
          v61 = "#I Physical sim transfer for iccid: [%s] not supported by carrier";
          v62 = 12;
          goto LABEL_110;
        }
      }

      sub_10064B544(v19, __p);
      v87 = sub_10026855C(a1, __p);
      sub_10027C3B4(__p);
      if (v87)
      {
        v88 = *(a1 + 40);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = sub_100649C94(128);
          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136446466;
          *(__p[0].__r_.__value_.__r.__words + 4) = v89;
          WORD2(__p[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v21;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I maybe clear transfer token and update tranfer type: %{public}s, iccid: %s", __p, 0x16u);
        }

        if (*(v19 + 263) < 0)
        {
          **(v19 + 240) = 0;
          *(v19 + 248) = 0;
        }

        else
        {
          *(v19 + 240) = 0;
          *(v19 + 263) = 0;
        }

        v90 = 0x80;
        goto LABEL_203;
      }

      if (!v63)
      {
        v93 = *(a1 + 40);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = sub_100649C94(3);
          if (*(v19 + 47) < 0)
          {
            v21 = *v21;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136446466;
          *(__p[0].__r_.__value_.__r.__words + 4) = v94;
          WORD2(__p[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v21;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I Updating tranfer type: %{public}s, iccid: %s", __p, 0x16u);
        }

        v90 = 3;
        goto LABEL_203;
      }

      *(v19 + 294) = v63;
LABEL_171:
      v19 += 672;
      if (v19 == v20)
      {
        goto LABEL_211;
      }
    }

    v29 = 0;
LABEL_53:
    std::mutex::unlock(v23);
    v30 = 0;
    v31 = 1;
    goto LABEL_54;
  }

LABEL_211:
  sub_100009970(&v99, v99.__r_.__value_.__l.__size_);
  sub_100009970(&v100, v101[0]);
}

void sub_10026789C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, char *a27, uint64_t a28, char a29, char *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100009970(&a26, a27);
  sub_100009970(&a29, a30);
  _Unwind_Resume(a1);
}

const void **sub_100267A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X6>, char *a4@<X8>)
{
  v6 = a1;
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(v6 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767814();
    }

    goto LABEL_57;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(v6 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017677A4();
    }

    goto LABEL_57;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"TransferErrorCodes"))
  {
    v28 = *(v6 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      *buf = 138412546;
      *&buf[4] = @"TransferErrorCodes";
      *&buf[12] = 2080;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %@ not present in CB for ICCID: [%s]", buf, 0x16u);
    }

LABEL_57:
    strcpy(a4, "CarrierDefaultErrors");
    a4[21] = unk_1017E456D;
    *(a4 + 11) = unk_1017E456E;
    return sub_10001021C(&theDict);
  }

  v9 = CFDictionaryGetValue(Value, @"TransferErrorCodes");
  Count = CFDictionaryGetCount(v9);
  keys = 0;
  v39 = 0;
  v40 = 0;
  sub_10007D780(&keys, Count);
  values = 0;
  v36 = 0;
  v37 = 0;
  sub_10007D780(&values, Count);
  CFDictionaryGetKeysAndValues(v9, keys, values);
  if (Count < 1)
  {
    goto LABEL_43;
  }

  v11 = 0;
  v31 = v9;
  v32 = v6;
  while (1)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *a4 = *buf;
    *(a4 + 2) = *&buf[16];
    v12 = CFDictionaryGetValue(v9, keys[v11]);
    v13 = v12;
    if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFArrayGetTypeID()))
    {
      v26 = *(v6 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (a4[23] >= 0)
        {
          v27 = a4;
        }

        else
        {
          v27 = *a4;
        }

        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Carrier Error Codes array not found for key %s", buf, 0xCu);
      }

      v25 = 10;
      goto LABEL_35;
    }

    v15 = CFArrayGetCount(v13);
    if (v15 < 1)
    {
      v25 = 0;
LABEL_35:
      if (a4[23] < 0)
      {
        operator delete(*a4);
      }

      goto LABEL_40;
    }

    v16 = 0;
    v17 = 1;
    while (1)
    {
      CFArrayGetValueAtIndex(v13, v16);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v34 = *&buf[16];
      *__p = *buf;
      v18 = a3[1];
      v19 = *(a3 + 23);
      v20 = buf[23];
      if ((buf[23] & 0x80u) == 0)
      {
        v21 = buf[23];
      }

      else
      {
        v21 = *&buf[8];
      }

      if (v19 >= 0)
      {
        v18 = *(a3 + 23);
      }

      if (v21 != v18)
      {
        v24 = 0;
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_25:
        operator delete(__p[0]);
        goto LABEL_26;
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if (v19 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      v24 = memcmp(v22, v23, v21) == 0;
      if (v20 < 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v24)
      {
        break;
      }

      v17 = ++v16 < v15;
      if (v15 == v16)
      {
        v25 = 0;
        goto LABEL_39;
      }
    }

    v25 = 1;
LABEL_39:
    v9 = v31;
    v6 = v32;
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_40:
    if (v25 != 10 && v25)
    {
      break;
    }

    if (++v11 == Count)
    {
LABEL_43:
      strcpy(a4, "CarrierDefaultErrors");
      a4[21] = unk_1017E456D;
      *(a4 + 11) = unk_1017E456E;
      break;
    }
  }

  if (values)
  {
    v36 = values;
    operator delete(values);
  }

  if (keys)
  {
    v39 = keys;
    operator delete(keys);
  }

  return sub_10001021C(&theDict);
}

void sub_100267E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100267F2C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  sub_1002691B4(a1, a2, &v4);
  if (v4)
  {
    v2 = sub_100A836FC(v4);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_100267F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267F9C(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  v4 = a2 + 320;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_11;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"TreatFirstPhysicalSimTransferAsEligible"))
  {
LABEL_11:
    LOBYTE(v7) = 1;
    goto LABEL_12;
  }

  v6 = CFDictionaryGetValue(Value, @"TreatFirstPhysicalSimTransferAsEligible");
  v7 = v6;
  buf[0] = 0;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v7, v9);
      LODWORD(v7) = buf[0];
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 343) >= 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = *(a2 + 320);
    }

    *buf = 67109378;
    v15 = v7;
    v16 = 2080;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I TreatFirstPhysicalSimTransferAsEligible is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_12:
  sub_10001021C(&theDict);
  return v7 & 1;
}

void sub_10026818C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002681B0(uint64_t a1)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_15;
  }

  v2 = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(v2, @"MinCompatibleOS", &value);
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!ValueIfPresent)
  {
    if (v5)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MinCompatibleOS does not exist, always allow SIM transfer", &buf, 2u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (v5)
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = value;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MinCompatibleOS : %@", &buf, 0xCu);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(value))
  {
    buf = 0uLL;
    v19 = 0;
    ctu::cf::assign();
    v7 = buf;
    v15[0] = v19;
    *(v15 + 3) = *(&v19 + 3);
    v8 = SHIBYTE(v19);
    if (SHIBYTE(v19) < 0)
    {
      sub_100005F2C(&__p, buf, *(&buf + 1));
    }

    else
    {
      __p = buf;
      *v13 = v15[0];
      *&v13[3] = *(v15 + 3);
      v14 = HIBYTE(v19);
    }

    v9 = sub_100927A9C(&__p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I minimum supported source OS version is %d", &buf, 8u);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678EC();
    }

    v9 = 0xFFFFFFFFLL;
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v9;
}

void sub_100268468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1002684CC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_1002691B4(a1, a2, &v7);
  if (v7)
  {
    v4 = sub_100269498((a1 + 40), v7, @"SupportPhysicalSIMtoESIMTransfer", (a2 + 320));
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_100268544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026855C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_1002691B4(a1, a2, &v7);
  if (v7)
  {
    v4 = sub_100269498((a1 + 40), v7, @"AllowCellularPlanTransferTarget", (a2 + 320));
    if ((v4 & 0x100) != 0)
    {
      v5 = v4 ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5 & 1;
}

void sub_1002685DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002685F4(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  while (v2 != v3)
  {
    sub_10064B544(v2, &v6);
    *(v2 + 291) = sub_1002689D0(a1);
    sub_10027C3B4(&v6);
    sub_1002941B4(&v4, (v2 + 291));
    v2 += 672;
  }

  operator new();
}

void sub_100268934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27)
{
  sub_100268B00(&a23);
  if (v28)
  {
    dispatch_release(v28);
  }

  sub_100004A34(v27);
  sub_10006DCAC(&a14, a15);
  _Unwind_Resume(a1);
}

BOOL sub_1002689D0(uint64_t a1)
{
  v5 = 0;
  v6[0] = 0;
  v6[1] = 0;
  (*(**(a1 + 48) + 136))(&v5);
  sub_10000501C(__p, "cn");
  v1 = sub_100007A6C(&v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100009970(&v5, v6[0]);
  return v6 != v1;
}

void sub_100268A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100268AB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*a1)
  {
    dispatch_group_leave(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

uint64_t sub_100268B00(uint64_t a1)
{
  sub_10002B644(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100268B44(uint64_t a1, uint64_t a2)
{
  (***(a1 + 48))(&v25);
  ServiceMap = Registry::getServiceMap(v25);
  v5 = ServiceMap;
  if (v6 < 0)
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
  v14 = (*(*v12 + 80))(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v14)
  {
    v15 = *(a2 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v16 = *(a1 + 168);
    v17 = *(a1 + 176);
    if (v16 == v17)
    {
      goto LABEL_29;
    }

    v18 = 0;
    do
    {
      if (v18 >= v27)
      {
        v18 = sub_1002803D4(&v25, &unk_1017E3F88, v16 + 3, (v16 + 72), v16 + 6, (v16 + 120));
      }

      else
      {
        sub_100280514(v18, &unk_1017E3F88, v16 + 3, (v16 + 72), v16 + 6, (v16 + 120));
        v18 = (v18 + 128);
      }

      v26 = v18;
      v16 += 42;
    }

    while (v16 != v17);
    if (v25 == v18)
    {
LABEL_29:
      v22 = *(a2 + 24);
      if (!v22)
      {
        sub_100022DB4();
      }

      (*(*v22 + 48))(v22);
    }

    else
    {
      v19 = *(a1 + 72);
      if (v19)
      {
        v20 = std::__shared_weak_count::lock(v19);
        if (v20 && *(a1 + 64))
        {
          *(a1 + 161) = 0;
          memset(v24, 0, sizeof(v24));
          sub_1000DD160(v24, v25, v26, (v26 - v25) >> 7);
          v30 = a1;
          sub_100004AA0(&v28, (a1 + 8));
          v21 = v29;
          v31 = v28;
          v32 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
          }

          v34 = 0;
          v33 = 0uLL;
          sub_1000DD160(&v33, v25, v26, (v26 - v25) >> 7);
          sub_10009CF40(v35, a2);
          v35[8] = 0;
          operator new();
        }
      }

      else
      {
        v20 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101767920();
      }

      v23 = *(a2 + 24);
      if (!v23)
      {
        sub_100022DB4();
      }

      (*(*v23 + 48))(v23);
      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    v28 = &v25;
    sub_1000DD3FC(&v28);
  }
}

void sub_100268FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  sub_1000DF030(v22 - 104);
  sub_100269098(&a19);
  a18 = &a10;
  sub_1000DD3FC(&a18);
  sub_100004A34(v21);
  a18 = &a13;
  sub_1000DD3FC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100269098(uint64_t a1)
{
  sub_10002B644(a1 + 48);
  v4 = (a1 + 24);
  sub_1000DD3FC(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

dispatch_object_t *sub_1002690E8(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

uint64_t sub_100269124(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_1002691B4(a1, a2, &v7);
  if (v7)
  {
    v4 = sub_100269498((a1 + 40), v7, @"ReportTransferSimServiceFlowType", (a2 + 320));
    v5 = ((v4 & 0x100) == 0) | v4;
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5 & 1;
}

void sub_10026919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1002691B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a2 + 320);
  if (!sub_10016FA58(a1 + 952, (a2 + 320)))
  {
    theDict[0] = 0;
    sub_10025DF80(a1, a2, theDict);
    if (theDict[0])
    {
      Value = CFDictionaryGetValue(theDict[0], @"CarrierEntitlements");
      if (Value)
      {
        CFDictionaryGetValue(theDict[0], @"PushSettings");
        (***(a1 + 48))(&v17);
        v18 = v17;
        v17 = 0uLL;
        __p = 0uLL;
        v22 = 0;
        sub_100A80D48(Value, 8u, &v19);
        theDict[2] = v6;
        v10 = sub_100296798(a1 + 952, v6);
        v11 = v19;
        v19 = 0uLL;
        v12 = *(v10 + 64);
        *(v10 + 56) = v11;
        if (v12)
        {
          sub_100004A34(v12);
          if (*(&v19 + 1))
          {
            sub_100004A34(*(&v19 + 1));
          }
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p);
        }

        if (*(&v18 + 1))
        {
          sub_100004A34(*(&v18 + 1));
        }

        if (*(&v17 + 1))
        {
          sub_100004A34(*(&v17 + 1));
        }

        *&__p = v6;
        v13 = sub_100296798(a1 + 952, v6);
        v14 = *(v13 + 64);
        *a3 = *(v13 + 56);
        a3[1] = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        return sub_10001021C(theDict);
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 343) >= 0)
        {
          v16 = v6;
        }

        else
        {
          v16 = *(a2 + 320);
        }

        LODWORD(__p) = 136315138;
        *(&__p + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I failed loading CB entitlements for ICCID: [%s]", &__p, 0xCu);
      }
    }

    *a3 = 0;
    a3[1] = 0;
    return sub_10001021C(theDict);
  }

  *&__p = v6;
  result = sub_100296798(a1 + 952, v6);
  v8 = result[8];
  *a3 = result[7];
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100269430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10001021C(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100269498(NSObject **a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  cf = 0;
  sub_100A83764(a2, a3, &cf);
  v7 = cf;
  if (cf)
  {
    buf[0] = 0;
    v8 = CFGetTypeID(cf);
    if (v8 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v7, v9);
      LODWORD(v7) = buf[0];
    }

    else
    {
      LODWORD(v7) = 0;
    }

    v13 = *a1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 23) >= 0)
      {
        v14 = a4;
      }

      else
      {
        v14 = *a4;
      }

      *buf = 138412802;
      v18 = a3;
      v19 = 1024;
      LODWORD(v20[0]) = v7;
      WORD2(v20[0]) = 2080;
      *(v20 + 6) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %@ is set to %d for ICCID: [%s]", buf, 0x1Cu);
    }

    v11 = 1;
  }

  else
  {
    v10 = *a1;
    v11 = 0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      *buf = 138412546;
      v18 = a3;
      v19 = 2080;
      v20[0] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %@ not present in CB entitlements for ICCID: [%s]", buf, 0x16u);
      v11 = 0;
      LODWORD(v7) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v7 | (v11 << 8);
}

void sub_100269664(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v6)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    *(a3 + 80) = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 172) = 0;
    *(a3 + 176) = 0;
    *(a3 + 200) = 0;
    *(a3 + 208) = 0;
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 272) = 0;
    *(a3 + 280) = 0;
    *(a3 + 336) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    *(a3 + 56) = 0;
    *(a3 + 136) = 0;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
  }

  else
  {
    v7 = v6;
    *(a3 + 32) = 0u;
    *(a3 + 336) = 0;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v13, *a2, *(a2 + 8));
    }

    else
    {
      *v13 = *a2;
      v14 = *(a2 + 16);
    }

    sub_10028094C(__dst, v13);
    sub_1002809B0((a3 + 32), __dst, &v25, 1uLL);
    if (v24 == 1 && v23 < 0)
    {
      operator delete(__p);
    }

    if (v21 == 1 && SHIBYTE(v20) < 0)
    {
      operator delete(*(&v19 + 1));
    }

    if (SBYTE7(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    if (sub_100269B00(a1, v7) && a1 + 1040 != sub_100007A6C(a1 + 1032, a2))
    {
      __dst[0] = a2;
      v9 = sub_100173F08(a1 + 1032, a2);
      sub_1001696A4((*(a3 + 32) + 24), (v9 + 56));
    }

    sub_100922314((&v7[11].__r_.__value_.__r.__words[1] + 2), v8, __dst);
    if (*(a3 + 80) == 1)
    {
      if (*(a3 + 79) < 0)
      {
        operator delete(*(a3 + 56));
      }

      *(a3 + 56) = *__dst;
      *(a3 + 72) = v19;
    }

    else
    {
      *(a3 + 56) = *__dst;
      *(a3 + 72) = v19;
      *(a3 + 80) = 1;
    }

    sub_100269D70(a1, a3 + 88, v7);
    if (sub_10026A3FC(a1, a2))
    {
      *(a3 + 240) = 256;
    }

    if (sub_100269124(a1, v7))
    {
      if (*(a1 + 147))
      {
        v10 = off_101E36000;
      }

      else
      {
        v10 = &off_101E36008;
      }

      sub_100215390((a3 + 248), v10);
    }

    if (v7[41].__r_.__value_.__s.__data_[8] == 1)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      *__dst = 0u;
      sub_10026A4AC(a1, a2, buf);
      sub_100071A6C(__dst);
      *__dst = *buf;
      *&v19 = v17;
      v17 = 0;
      v15 = buf;
      memset(buf, 0, sizeof(buf));
      sub_1000087B4(&v15);
      if (__dst[1] != __dst[0])
      {
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = *a2;
          }

          *buf = 136315138;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Set transfer-metadata for sourceIccid [%s]", buf, 0xCu);
        }

        sub_10026A578(a3 + 280, __dst);
      }

      if (v21 == 1 && SHIBYTE(v20) < 0)
      {
        operator delete(*(&v19 + 1));
      }

      *buf = __dst;
      sub_1000087B4(buf);
    }
  }
}

void sub_100269A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_10026A640(&a20);
  sub_100280EAC(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_100269A94(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100269B00(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  v4 = a2 + 320;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_16;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresIMEIInTSSRequest"))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 343) >= 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = *(a2 + 320);
      }

      *buf = 136315138;
      v17[0] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I RequiresIMEIInTSSRequest not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_16:
    LOBYTE(v7) = 0;
    goto LABEL_17;
  }

  v6 = CFDictionaryGetValue(Value, @"RequiresIMEIInTSSRequest");
  v7 = v6;
  buf[0] = 0;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v7, v9);
      LODWORD(v7) = buf[0];
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 343) >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = *(a2 + 320);
    }

    *buf = 67109378;
    LODWORD(v17[0]) = v7;
    WORD2(v17[0]) = 2080;
    *(v17 + 6) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I RequiresIMEIInTSSRequest is set to %{BOOL}d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_17:
  sub_10001021C(&theDict);
  return v7 & 1;
}

void sub_100269D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_100269D70(uint64_t a1, uint64_t a2, const std::string *a3)
{
  sub_100922314(&a3[24].__r_.__value_.__r.__words[1], a3, __dst);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__dst;
  *(a2 + 16) = v23;
  sub_1001696A4((a2 + 48), a3 + 25);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  *v19 = 0u;
  *v16 = 0u;
  *v17 = 0u;
  sub_1001696A4(&v17[1], a3 + 27);
  if (*(a1 + 816) == 1)
  {
    if ((*(a1 + 815) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 815))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (*(a1 + 800))
    {
LABEL_8:
      sub_10012BF3C(&v19[1], (a1 + 792));
    }
  }

LABEL_9:
  if ((v19[0] & 1) != 0 || v21 == 1)
  {
    if (SHIBYTE(v17[0]) < 0)
    {
      sub_100005F2C(__dst, v16[0], v16[1]);
    }

    else
    {
      *__dst = *v16;
      *&v23 = v17[0];
    }

    sub_10006F264(&v23 + 8, &v17[1]);
    sub_10006F264(&v25 + 8, &v19[1]);
    WORD4(v27) = WORD4(v21);
    sub_1002809B0((a2 + 24), __dst, &v28, 1uLL);
    if (v27 == 1 && SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (v25 == 1 && SHIBYTE(v24) < 0)
    {
      operator delete(*(&v23 + 1));
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  (*(**(a1 + 48) + 8))(*(a1 + 48));
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__dst = 0u;
  sub_10000C320(__dst);
  v6 = std::ostream::operator<<();
  sub_10000C030(v6);
  v7 = std::ostream::operator<<();
  sub_10000C030(v7);
  std::ostream::operator<<();
  sub_100061574(__dst, &v14);
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 120) = v14;
    *(a2 + 136) = v15;
  }

  else
  {
    *(a2 + 120) = v14;
    *(a2 + 136) = v15;
    *(a2 + 144) = 1;
  }

  v11 = v9;
  *&v23 = v9;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__dst = 0u;
  sub_10000C320(__dst);
  v12 = std::ostream::operator<<();
  sub_10000C030(v12);
  v13 = std::ostream::operator<<();
  sub_10000C030(v13);
  std::ostream::operator<<();
  sub_100061574(__dst, &v14);
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    *(a2 + 88) = v14;
    *(a2 + 104) = v15;
  }

  else
  {
    *(a2 + 88) = v14;
    *(a2 + 104) = v15;
    *(a2 + 112) = 1;
  }

  __dst[0] = v8;
  *(__dst + *(v8 - 3)) = v10;
  *&v23 = v11;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v21 == 1 && SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (LOBYTE(v19[0]) == 1 && SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  if (SHIBYTE(v17[0]) < 0)
  {
    operator delete(v16[0]);
  }
}

uint64_t sub_10026A3FC(uint64_t a1, const void **a2)
{
  v4 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v4)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = v4;
    if (*(v4 + 897) == 1)
    {
      LOBYTE(v4) = *(v4 + 896);
    }

    else
    {
      LOWORD(v4) = (*(**(a1 + 48) + 272))(*(a1 + 48), v4, v4 + 24, v4 + 48, v4 + 72, a2);
      *(v5 + 896) = v4 | 0x100;
    }
  }

  return v4 & 1;
}

void sub_10026A4AC(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v5)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767954();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    sub_1002691B4(a1, v5, &v7);
    v6 = v7;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v6)
    {
      sub_100277148(v6, a3);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_10026A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026A578(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    if (a1 != a2)
    {
      sub_100008234(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    }

    sub_10012BF3C((a1 + 24), (a2 + 24));
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10004EFD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    sub_10006F264(a1 + 24, (a2 + 24));
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_10026A628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026A640(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_1000087B4(&v3);
  return a1;
}

uint64_t sub_10026A694(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v13;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  *(a1 + 240) = *(a2 + 240);
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v14 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v14;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  v15 = *(a2 + 144);
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v15;
  v16 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *v16 = v17;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v18 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v18;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v19 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *v19 = v20;
  *(a2 + 367) = 0;
  *(a2 + 344) = 0;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v21 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v21;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  v22 = (a1 + 392);
  if (*(a1 + 415) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *v22 = v23;
  *(a2 + 415) = 0;
  *(a2 + 392) = 0;
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v24 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v24;
  *(a2 + 439) = 0;
  *(a2 + 416) = 0;
  *(a1 + 440) = *(a2 + 220);
  sub_100280F7C(a1 + 448, a2 + 28);
  sub_1002810BC(a1 + 528, a2 + 33);
  *(a1 + 584) = *(a2 + 584);
  v25 = (a1 + 600);
  if (*(a1 + 623) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 600);
  *(a1 + 616) = *(a2 + 77);
  *v25 = v26;
  *(a2 + 623) = 0;
  *(a2 + 600) = 0;
  v27 = (a1 + 624);
  if (*(a1 + 647) < 0)
  {
    operator delete(*v27);
  }

  v28 = a2[39];
  *(a1 + 640) = *(a2 + 80);
  *v27 = v28;
  *(a2 + 647) = 0;
  *(a2 + 624) = 0;
  v29 = (a1 + 648);
  if (*(a1 + 671) < 0)
  {
    operator delete(*v29);
  }

  v30 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 83);
  *v29 = v30;
  *(a2 + 671) = 0;
  *(a2 + 648) = 0;
  v31 = (a1 + 672);
  if (*(a1 + 695) < 0)
  {
    operator delete(*v31);
  }

  v32 = a2[42];
  *(a1 + 688) = *(a2 + 86);
  *v31 = v32;
  *(a2 + 695) = 0;
  *(a2 + 672) = 0;
  v33 = *(a2 + 696);
  *(a1 + 712) = *(a2 + 178);
  *(a1 + 696) = v33;
  sub_100071A6C(a1 + 720);
  *(a1 + 720) = a2[45];
  *(a1 + 736) = *(a2 + 92);
  *(a2 + 92) = 0;
  a2[45] = 0u;
  sub_10016D5E4(a1 + 744, a2 + 744);
  v34 = *(a2 + 921);
  v35 = a2[57];
  *(a1 + 896) = a2[56];
  *(a1 + 912) = v35;
  *(a1 + 921) = v34;
  v36 = (a1 + 944);
  if (*(a1 + 967) < 0)
  {
    operator delete(*v36);
  }

  v37 = a2[59];
  *(a1 + 960) = *(a2 + 120);
  *v36 = v37;
  *(a2 + 967) = 0;
  *(a2 + 944) = 0;
  v38 = *(a2 + 968);
  *(a1 + 977) = *(a2 + 977);
  *(a1 + 968) = v38;
  sub_10016A270(a1 + 1000, (a2 + 1000));
  sub_10016A270(a1 + 1032, (a2 + 1032));
  v39 = *(a2 + 532);
  *(a1 + 1066) = *(a2 + 1066);
  *(a1 + 1064) = v39;
  return a1;
}

uint64_t sub_10026AB6C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_1002691B4(a1, a2, &v7);
  if (v7)
  {
    v4 = sub_100269498((a1 + 40), v7, @"SupportIMEIPredictionForSIMTransfer", (a2 + 320));
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_10026ABE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026ABF8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  sub_1002691B4(a1, a2, &v7);
  if (v7)
  {
    v4 = sub_100269498((a1 + 40), v7, @"SupportSIMTransferViaWebsheetInBuddy", (a2 + 320));
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_10026AC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026AC88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(result + 168);
  v4 = *(result + 176);
  if (v3 != v4)
  {
    v5 = result;
    do
    {
      bzero(&v10, 0x500uLL);
      BYTE1(v10) = 1;
      std::string::operator=(&v15, (v3 + 384));
      std::string::operator=(&v16, (v3 + 480));
      std::string::operator=(&v17, (v3 + 504));
      std::string::operator=(&v20, (v3 + 144));
      std::string::operator=(&v23, (v3 + 528));
      sub_10092C8F4(&v8, v3 + 192, v3 + 528);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      __p = v8;
      v22 = v9;
      BYTE8(v10) = *(v3 + 289);
      LOBYTE(v10) = *(v3 + 294);
      std::string::operator=(&v24, (v3 + 240));
      std::string::operator=(&v25, (v3 + 264));
      std::string::operator=(&v26, (v3 + 576));
      std::string::operator=(v27, (v3 + 168));
      std::string::operator=(&v19, v3);
      std::string::operator=(&v11, (v3 + 48));
      std::string::operator=(&v12, (v3 + 72));
      std::string::operator=(&v13, (v3 + 96));
      std::string::operator=(&v14, (v3 + 120));
      sub_1009222A0();
      std::string::operator=(&v18, (v3 + 432));
      *(&v10 + 1) = 257;
      BYTE9(v10) = *(v5 + 145);
      std::string::operator=(v28, (v3 + 24));
      DWORD1(v10) = *(v3 + 300);
      BYTE10(v10) = 1;
      BYTE12(v10) = *(v5 + 144) == 3;
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v7 = sub_1002811AC(a2, &v10);
      }

      else
      {
        sub_10027B690(a2[1], &v10);
        v7 = v6 + 1280;
      }

      a2[1] = v7;
      result = sub_1002813D0(&v10);
      v3 += 672;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_10026AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v12 + 8) = v13;
  sub_1002813D0(&a12);
  a12 = v12;
  sub_10005C284(&a12);
  _Unwind_Resume(a1);
}

void sub_10026AEDC(uint64_t a1, const void **a2)
{
  v3 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v3)
  {
    v4 = v3;
    ctu::Http::asString();
    v5 = (v4 + 944);
    if (*(v4 + 967) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v6;
    *(v4 + 960) = v7;
    if (*(v4 + 972) == 1)
    {
      *(v4 + 972) = 0;
    }

    if (*(v4 + 936) == 1)
    {
      *(v4 + 936) = 0;
    }

    if (*(v4 + 984) == 1)
    {
      *(v4 + 984) = 0;
    }
  }
}

uint64_t sub_10026AF7C(uint64_t result, const void **a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v6 = result;
    v7 = *(result + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 16))(v3);
      ctu::Http::asString();
      if (v14 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v9 = (*(**a3 + 24))();
      v10 = (*(**a3 + 32))();
      *buf = 136315650;
      *&buf[4] = p_p;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I httpErrorType: %s, httpStatusCode: %d, httpErrorCode: %ld", buf, 0x1Cu);
      if (v14 < 0)
      {
        operator delete(__p);
      }

      v3 = *a3;
    }

    if ((*(*v3 + 16))(v3) != 1 || (result = (*(**a3 + 24))(), result != 200))
    {
      result = sub_10025CD10((v6 + 328), a2);
      if (*(v6 + 336) != result)
      {
        v11 = result;
        (*(**a3 + 16))();
        ctu::Http::asString();
        v12 = (v11 + 944);
        if (*(v11 + 967) < 0)
        {
          operator delete(*v12);
        }

        *v12 = *buf;
        *(v11 + 960) = *&buf[16];
        *(v11 + 968) = (*(**a3 + 24))();
        *(v11 + 972) = 1;
        result = (*(**a3 + 32))();
        if ((*(v11 + 936) & 1) == 0)
        {
          *(v11 + 936) = 1;
        }

        *(v11 + 928) = result;
      }
    }
  }

  return result;
}

void sub_10026B23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026B260(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = (a2 + 63);
  v7 = (a2 + 40);
  v8 = *(a1 + 904);
  v9 = *(a1 + 912);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *v7;
    v49 = *(a2 + 56);
  }

  v10 = HIBYTE(v49);
  if (v8 == v9)
  {
    v9 = v8;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v49 >= 0)
    {
      v11 = HIBYTE(v49);
    }

    else
    {
      v11 = __p[1];
    }

    if (v49 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = v8 + 432;
    while (1)
    {
      v14 = v13[23];
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v13 + 1);
      }

      if (v11 == v14)
      {
        v16 = v15 >= 0 ? v13 : *v13;
        if (!memcmp(v12, v16, v11))
        {
          break;
        }
      }

      v17 = v13 + 848;
      v13 += 1280;
      if (v17 == v9)
      {
        if (v10 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v9 = v13 - 432;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  operator delete(__p[0]);
LABEL_21:
  if (v9 == *(a1 + 912))
  {
    return 0;
  }

  bzero(v76, 0x430uLL);
  v77 = 4;
  v88 = 0;
  v89 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v109 = 0;
  v112 = 0;
  v113 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0;
  v106 = 0u;
  v107 = 0;
  v108 = 0;
  v111 = 0;
  v110 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0u;
  memset(buf, 0, sizeof(buf));
  v66[0] = 0;
  if (*v6 < 0)
  {
    sub_100005F2C(&__dst, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    __dst = *v7;
  }

  memset(v59, 0, sizeof(v59));
  v60[0] = 0;
  sub_10016FB64(v59, &__dst, v52, 1uLL);
  v18 = sub_100256EF0(a1, buf, v76, a2, v59, a3, (a1 + 824));
  v50 = v59;
  sub_1000087B4(&v50);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66[0]) < 0)
  {
    operator delete(*buf);
    if (v18)
    {
      goto LABEL_35;
    }
  }

  else if (v18)
  {
    goto LABEL_35;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017679C4();
  }

LABEL_35:
  v19 = v9[1];
  if ((v19 - 7) >= 2)
  {
    if (v19 == 9)
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*v6 >= 0)
        {
          v23 = v7;
        }

        else
        {
          v23 = *v7;
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I trigger install from DS flow. iccid: %s", buf, 0xCu);
      }

      v75 = 0;
      sub_100261D1C(a1, 2, 16, v74);
      sub_10028ED7C(v74);
      buf[0] = sub_100931FB4(*v9);
      v59[0] = 9;
      sub_100261ECC(a1, buf, v59, v76, 1, 0);
      goto LABEL_158;
    }

    goto LABEL_62;
  }

  if (v9[680] != 1)
  {
    if ((v9[527] & 0x8000000000000000) != 0)
    {
      if (!*(v9 + 64))
      {
        goto LABEL_60;
      }
    }

    else if (!v9[527])
    {
LABEL_60:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017679F8();
      }

LABEL_62:
      sub_10027C3B4(v76);
      return 0;
    }

    v24 = v9[479];
    if (v24 < 0)
    {
      v24 = *(v9 + 58);
    }

    if (v24)
    {
      v25 = v9 + 504;
      v73 = 0;
      v71 = 0u;
      *v72 = 0u;
      memset(v70, 0, sizeof(v70));
      *v68 = 0u;
      v69 = 0u;
      *v66 = 0u;
      v67 = 0u;
      *buf = 0u;
      sub_1001696A4(&v70[1], v9 + 21);
      v26 = v9 + 456;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      *v62 = 0u;
      *v59 = 0u;
      *v60 = 0u;
      if (v9[479] < 0)
      {
        sub_100005F2C(v44, *(v9 + 57), *(v9 + 58));
      }

      else
      {
        *v44 = *v26;
        v45 = *(v9 + 59);
      }

      sub_10028094C(v59, v44);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      WORD4(v64) = 257;
      if (SHIBYTE(v60[0]) < 0)
      {
        sub_100005F2C(&__dst, *v59, *&v59[8]);
      }

      else
      {
        *&__dst.__r_.__value_.__l.__data_ = *v59;
        __dst.__r_.__value_.__r.__words[2] = v60[0];
      }

      sub_10006F264(v52, &v60[1]);
      sub_10006F264(v55, &v62[1]);
      v58 = WORD4(v64);
      sub_1002809B0(buf, &__dst, v59, 1uLL);
      if (v57 == 1 && v56 < 0)
      {
        operator delete(v55[0]);
      }

      if (v54 == 1 && v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v38 = *(a1 + 40);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = sub_10064A0D0(v9[1]);
        if (v9[527] < 0)
        {
          v25 = *v25;
        }

        if (v9[479] < 0)
        {
          v26 = *v26;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315650;
        *(__dst.__r_.__value_.__r.__words + 4) = v39;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v25;
        HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2080;
        v52[0] = v26;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I trigger install pending plan. state:%s, altSmdp:%s, target iccid:%s", &__dst, 0x20u);
      }

      v40 = *(a1 + 72);
      if (v40)
      {
        v41 = std::__shared_weak_count::lock(v40);
        if (v41)
        {
          v42 = v41;
          v43 = *(a1 + 64);
          if (v43)
          {
            (*(*v43 + 48))(v43, v7, buf, 16);
            __dst.__r_.__value_.__s.__data_[0] = sub_100931FB4(*v9);
            LOBYTE(v50) = 7;
            sub_100261ECC(a1, &__dst, &v50, v76, 1, 0);
          }

          sub_100004A34(v42);
        }
      }

      if (v64 == 1 && SHIBYTE(v63) < 0)
      {
        operator delete(v62[1]);
      }

      if (LOBYTE(v62[0]) == 1 && SHIBYTE(v61) < 0)
      {
        operator delete(v60[1]);
      }

      if (SHIBYTE(v60[0]) < 0)
      {
        operator delete(*v59);
      }

      goto LABEL_146;
    }

    goto LABEL_60;
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_10064A0D0(v19);
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I trigger install pending plan. state:%s", buf, 0xCu);
  }

  v73 = 0;
  v71 = 0u;
  *v72 = 0u;
  memset(v70, 0, sizeof(v70));
  *v68 = 0u;
  v69 = 0u;
  *v66 = 0u;
  v67 = 0u;
  *buf = 0u;
  sub_100282340(buf, (v9 + 528));
  if ((v9[527] & 0x8000000000000000) != 0)
  {
    if (!*(v9 + 64))
    {
      goto LABEL_69;
    }
  }

  else if (!v9[527])
  {
    goto LABEL_69;
  }

  v28 = v9 + 504;
  sub_1001696A4(&v70[1], v9 + 21);
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (v9[527] < 0)
    {
      v28 = *v28;
    }

    *v59 = 136315138;
    *&v59[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I trigger install pending plan. altSmdp:%s", v59, 0xCu);
  }

LABEL_69:
  if (v71 != 1)
  {
    goto LABEL_73;
  }

  v30 = HIBYTE(v70[3]);
  if (SHIBYTE(v70[3]) < 0)
  {
    v30 = v70[2];
  }

  if (!v30)
  {
LABEL_73:
    sub_100261590(a1, v59);
    if (v71 == 1)
    {
      if (SHIBYTE(v70[3]) < 0)
      {
        operator delete(v70[1]);
      }

      *&v70[1] = *v59;
      v70[3] = v60[0];
    }

    else
    {
      *&v70[1] = *v59;
      v70[3] = v60[0];
      LOBYTE(v71) = 1;
    }
  }

  v31 = (v9 + 456);
  if (v9[479] < 0)
  {
    v32 = *(v9 + 58);
    if (v32)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      *v62 = 0u;
      *v59 = 0u;
      *v60 = 0u;
      sub_100005F2C(v46, *v31, v32);
      goto LABEL_83;
    }
  }

  else if (v9[479])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    *v62 = 0u;
    *v59 = 0u;
    *v60 = 0u;
    *v46 = *v31;
    v47 = *(v9 + 59);
LABEL_83:
    sub_10028094C(v59, v46);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    WORD4(v64) = 257;
    if (SHIBYTE(v60[0]) < 0)
    {
      sub_100005F2C(&__dst, *v59, *&v59[8]);
    }

    else
    {
      *&__dst.__r_.__value_.__l.__data_ = *v59;
      __dst.__r_.__value_.__r.__words[2] = v60[0];
    }

    sub_10006F264(v52, &v60[1]);
    sub_10006F264(v55, &v62[1]);
    v58 = WORD4(v64);
    sub_1002809B0(buf, &__dst, v59, 1uLL);
    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55[0]);
    }

    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      if (v9[479] < 0)
      {
        v31 = *v31;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I trigger install pending plan. target iccid:%s", &__dst, 0xCu);
    }

    if (v64 == 1 && SHIBYTE(v63) < 0)
    {
      operator delete(v62[1]);
    }

    if (LOBYTE(v62[0]) == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(v60[1]);
    }

    if (SHIBYTE(v60[0]) < 0)
    {
      operator delete(*v59);
    }
  }

  v34 = *(a1 + 72);
  if (v34)
  {
    v35 = std::__shared_weak_count::lock(v34);
    if (v35)
    {
      v36 = v35;
      v37 = *(a1 + 64);
      if (v37)
      {
        (*(*v37 + 48))(v37, v7, buf, 16);
        v59[0] = sub_100931FB4(*v9);
        sub_100261ECC(a1, v59, v9 + 1, v76, 1, 0);
      }

      sub_100004A34(v36);
    }
  }

LABEL_146:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v71 == 1 && SHIBYTE(v70[3]) < 0)
  {
    operator delete(v70[1]);
  }

  if (LOBYTE(v70[0]) == 1 && SHIBYTE(v69) < 0)
  {
    operator delete(v68[1]);
  }

  if (LOBYTE(v68[0]) == 1 && SHIBYTE(v67) < 0)
  {
    operator delete(v66[1]);
  }

  *v59 = buf;
  sub_10016C644(v59);
LABEL_158:
  sub_10027C3B4(v76);
  return 1;
}

void sub_10026BD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100004A34(v68);
  sub_100269A94(&a33);
  sub_10026BE9C(&a45);
  sub_10027C3B4(&a68);
  _Unwind_Resume(a1);
}

uint64_t sub_10026BE9C(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_10016C644(&v3);
  return a1;
}

void sub_10026BF38(uint64_t a1, uint64_t *a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_10026AC88(a1, &v25);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = v25;
      v6 = v26;
      if (*(v4 + 63) < 0)
      {
        sub_100005F2C(__p, *(v4 + 40), *(v4 + 48));
      }

      else
      {
        *__p = *(v4 + 40);
        v24 = *(v4 + 56);
      }

      v8 = HIBYTE(v24);
      if (v7 == v6)
      {
        v6 = v7;
LABEL_23:
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v24 >= 0)
        {
          v9 = HIBYTE(v24);
        }

        else
        {
          v9 = __p[1];
        }

        if (v24 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = v7 + 54;
        while (1)
        {
          v12 = *(v11 + 23);
          v13 = v12;
          if (v12 < 0)
          {
            v12 = v11[1];
          }

          if (v9 == v12)
          {
            v14 = v13 >= 0 ? v11 : *v11;
            if (!memcmp(v10, v14, v9))
            {
              break;
            }
          }

          v15 = (v11 + 106);
          v11 += 160;
          if (v15 == v6)
          {
            goto LABEL_23;
          }
        }

        v6 = (v11 - 54);
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_25;
        }
      }

      operator delete(__p[0]);
LABEL_25:
      if (v6 != v26)
      {
        v16 = v29;
        if (v29 >= v30)
        {
          v17 = sub_1002811AC(&v28, v6);
        }

        else
        {
          sub_10027B690(v29, v6);
          v17 = v16 + 1280;
        }

        v29 = v17;
      }

      v4 += 160;
    }

    while (v4 != v5);
  }

  v18 = *(a1 + 88);
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    if (v19)
    {
      v20 = *(a1 + 80);
      if (v20)
      {
        (*(*v20 + 32))(v20, &v28);
        if (v29 - v28 == 1280)
        {
          v21 = 0;
          v22 = 0;
          sub_100254358(a1, v28 + 432, 2, 0, &v22, &v21);
          sub_10001021C(&v21);
          sub_100005978(&v22);
        }

        goto LABEL_42;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767A60();
    if (!v19)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v19)
  {
LABEL_42:
    sub_100004A34(v19);
  }

LABEL_43:
  v31 = &v25;
  sub_10005C284(&v31);
  v25 = &v28;
  sub_10005C284(&v25);
}

void sub_10026C18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void ***a20)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  sub_100004A34(v20);
  a20 = &a14;
  sub_10005C284(&a20);
  a14 = &a17;
  sub_10005C284(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_10026C1F4(uint64_t a1)
{
  sub_10028BCB4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10026C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"SupportsRecoveryOnTransferFailureResponse"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) < 0)
      {
        a6 = *a6;
      }

      *buf = 136315138;
      v18[0] = a6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I SupportsRecoveryOnTransferFailureResponse not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_15:
    LOBYTE(v10) = 0;
    goto LABEL_16;
  }

  v9 = CFDictionaryGetValue(Value, @"SupportsRecoveryOnTransferFailureResponse");
  v10 = v9;
  buf[0] = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
      LODWORD(v10) = buf[0];
    }

    else
    {
      LODWORD(v10) = 0;
    }
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    *buf = 67109378;
    LODWORD(v18[0]) = v10;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I SupportsRecoveryOnTransferFailureResponse is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v10 & 1;
}

void sub_10026C454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresPinForTransfer"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) < 0)
      {
        a6 = *a6;
      }

      *buf = 136315138;
      v18[0] = a6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I RequiresPinForTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_15:
    LOBYTE(v10) = 0;
    goto LABEL_16;
  }

  v9 = CFDictionaryGetValue(Value, @"RequiresPinForTransfer");
  v10 = v9;
  buf[0] = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
      LODWORD(v10) = buf[0];
    }

    else
    {
      LODWORD(v10) = 0;
    }
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    *buf = 67109378;
    LODWORD(v18[0]) = v10;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RequiresPinForTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v10 & 1;
}

void sub_10026C6A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"DisplayOtpBeforeTc"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) < 0)
      {
        a6 = *a6;
      }

      *buf = 136315138;
      v18[0] = a6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DisplayOtpBeforeTc not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_15:
    LOBYTE(v10) = 0;
    goto LABEL_16;
  }

  v9 = CFDictionaryGetValue(Value, @"DisplayOtpBeforeTc");
  v10 = v9;
  buf[0] = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
      LODWORD(v10) = buf[0];
    }

    else
    {
      LODWORD(v10) = 0;
    }
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    *buf = 67109378;
    LODWORD(v18[0]) = v10;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I DisplayOtpBeforeTc is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v10 & 1;
}

void sub_10026C8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const __CFString *sub_10026C910(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8)
{
  result = *a5;
  if (*a5 && (result = CFStringGetLength(result), result > 0))
  {
    v17 = 3;
  }

  else if (a4)
  {
    v17 = 4;
  }

  else if (a3 == 3)
  {
    v17 = 1;
  }

  else
  {
    if (a3 != 4)
    {
      return result;
    }

    v17 = 2;
  }

  *v22 = 0;
  if (*a5 && CFStringGetLength(*a5) >= 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v19 = *v22;
      *v22 = Mutable;
      cf = v19;
      sub_1000296E0(&cf);
    }

    sub_1001768B8(*v22, @"WebsheetURLKey", *a5);
    if (*a6)
    {
      sub_1002972A4(*v22, @"WebsheetPostdataKey", *a6);
    }
  }

  cf = 0;
  sub_100010180(&v21, v22);
  sub_10092F970(a2, v17, a4, &v21, a7, a8, &cf);
  sub_10001021C(&v21);
  v20 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_100252C7C(a1, &v20);
  sub_10001021C(&v20);
  sub_10001021C(&cf);
  return sub_1000296E0(v22);
}

void sub_10026CAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void sub_10026CAF4(uint64_t a1, const void **a2, const std::string *a3)
{
  v6 = *(a1 + 336);
  if (*(a1 + 328) == v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767A94();
    }
  }

  else
  {
    v7 = sub_10025CD10((a1 + 328), a2);
    if (v6 == v7)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101767190();
      }
    }

    else
    {
      sub_1001696A4((v7 + 832), a3);
    }
  }

  sub_10000501C(__p, "AltSmdpFqdn");
  v10 = 0;
  *&v11 = 0;
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v11, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = *&a3->__r_.__value_.__l.__data_;
    v12 = a3->__r_.__value_.__r.__words[2];
  }

  v10 = sub_100280258;
  sub_100261328(a1, a2, __p, &v10);
  sub_100176638(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10026CC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026CC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 80);
      if (v8)
      {
        (*(*v8 + 128))(v8, a2, a3);
LABEL_9:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767AC8();
  }

  if (v7)
  {
    goto LABEL_9;
  }
}

void sub_10026CD38(void *a1, uint64_t a2, CFStringRef *a3)
{
  if (*a1 && *a3 && CFStringGetLength(*a3) >= 1)
  {
    ctu::cf::assign();
  }
}

void sub_10026CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10026CEDC(void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, const void **a5, const void **a6, char a7, int a8, NSObject **a9, void *a10)
{
  __dst = 0uLL;
  v51 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v51 = *(a3 + 2);
  }

  if (*a1)
  {
    if (!a8)
    {
      v21 = a1[1];
      v37[0] = *a1;
      v37[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *a2;
      v23 = a2[1];
      v36[0] = v22;
      v36[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10005C7A4(&v35, a5);
      sub_100010024(&v34, a6);
      v24 = a10[1];
      v33[0] = *a10;
      v33[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
      }

      sub_10026D400(&__dst, v37, v36, a4, &v35, &v34, a7, v33);
    }

    v17 = dispatch_time(0, 100000000);
    v18 = *a9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10026D2CC;
    block[3] = &unk_101E36010;
    if (SHIBYTE(v51) < 0)
    {
      sub_100005F2C(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v40 = v51;
    }

    v25 = a1[1];
    v41 = *a1;
    v42 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = a2[1];
    v43 = *a2;
    v44 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = a4;
    sub_10005C7A4(&v46, a5);
    sub_100010024(v47, a6);
    v49 = a7;
    v27 = a10[1];
    v47[1] = *a10;
    v48 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_after(v17, v18, block);
    if (v48)
    {
      std::__shared_weak_count::__release_weak(v48);
    }

    sub_10001021C(v47);
    sub_100005978(&v46);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (v42)
    {
      sub_100004A34(v42);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
    v19 = v32;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "invalid notifier", buf, 2u);
    }

    v20 = a2[1];
    v30[0] = *a2;
    v30[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10005C7A4(&v29, a5);
    sub_100010024(&v28, a6);
    sub_10026CD38(v30, a4, &v29);
    sub_10001021C(&v28);
    sub_100005978(&v29);
    if (v20)
    {
      sub_100004A34(v20);
    }
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10026D250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10026D2CC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v11[0] = *(a1 + 56);
  v11[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 80);
  v10[0] = *(a1 + 72);
  v10[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 88);
  sub_10005C7A4(&v9, (a1 + 96));
  sub_100010024(&v8, (a1 + 104));
  v5 = *(a1 + 128);
  v6 = *(a1 + 120);
  v7[0] = *(a1 + 112);
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10026D400(a1 + 32, v11, v10, v4, &v9, &v8, v5, v7);
}

void sub_10026D3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  sub_10001021C(&a11);
  sub_100005978(&a12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10026D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6, char a7, void *a8)
{
  v24 = 0uLL;
  v25 = 0;
  ctu::cf::assign();
  *v22 = 0uLL;
  v23 = 0;
  sub_100010024(&v21, a6);
  v14 = *(a3 + 8);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v17 = *(a4 + 16);
  }

  sub_10005C7A4(&v18, a5);
  sub_100010024(&v18 + 1, a6);
  v19 = a7;
  v20 = 0uLL;
  v15 = a8[1];
  if (v15)
  {
    *(&v20 + 1) = std::__shared_weak_count::lock(v15);
    if (*(&v20 + 1))
    {
      *&v20 = *a8;
    }
  }

  v26 = 0;
  operator new();
}

void sub_10026D66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = v33[2];
  if (v35)
  {
    sub_100004A34(v35);
  }

  operator delete(v33);
  sub_100282AC4(&a9);
  sub_10001021C(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_10026D6EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10005C7A4((a1 + 96), (a2 + 96));
  result = sub_100010024((a1 + 104), (a2 + 104));
  v8 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10026D798(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10001021C((a1 + 104));
  sub_100005978((a1 + 96));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 55) < 0)
  {
    v5 = *(a1 + 32);

    operator delete(v5);
  }
}

uint64_t sub_10026D814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v4)
  {
    v5 = v4;
    v6 = *(v4 + 191);
    if (v6 < 0)
    {
      v6 = *(v4 + 176);
    }

    v7 = 70084;
    if (v6)
    {
      goto LABEL_5;
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10064A100(*(v5 + 272));
      v12 = sub_100649C94(*(v5 + 240));
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v11;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Error:[%s] Transfer-type:[%s] sourceIccid: [%s]", &buf, 0x20u);
    }

    v14 = *(v5 + 272);
    if (v14 > 7)
    {
      if (*(v5 + 272) > 0xBu)
      {
        switch(v14)
        {
          case 0xCu:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101767BDC();
            }

            v7 = 70091;
            goto LABEL_52;
          case 0xDu:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101767AFC();
            }

            v7 = 70099;
            goto LABEL_64;
          case 0xEu:
            *(v5 + 240) = 18;
            v9 = 73;
            v8 = 9;
            v7 = 700101;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v14)
        {
          case 8u:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101767D2C();
            }

            goto LABEL_52;
          case 0xAu:
            v7 = 70073;
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101767B6C();
            }

            v9 = 70;
            v8 = 12;
            goto LABEL_86;
          case 0xBu:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101767C4C();
            }

            v7 = 70090;
            goto LABEL_52;
        }
      }
    }

    else
    {
      if (*(v5 + 272) <= 4u)
      {
        if (v14 != 2)
        {
          if (v14 != 3)
          {
            if (v14 == 4)
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101767E7C();
              }

              goto LABEL_52;
            }

            goto LABEL_65;
          }

          v7 = 70032;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767EEC();
          }

LABEL_60:
          v8 = 0;
          v9 = 56;
          goto LABEL_86;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101767F5C();
        }

LABEL_44:
        v7 = 70085;
LABEL_52:
        v9 = 52;
        v8 = 7;
        goto LABEL_86;
      }

      switch(v14)
      {
        case 5u:
          v7 = 70030;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767E0C();
          }

          goto LABEL_60;
        case 6u:
          v7 = 70049;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767D9C();
          }

          goto LABEL_60;
        case 7u:
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767CBC();
          }

          goto LABEL_44;
      }
    }

LABEL_65:
    v17 = *(v5 + 240);
    if (v17 == 129)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101767FCC();
      }

      v7 = 70097;
      v9 = 61;
      goto LABEL_85;
    }

    if (v17 != 16)
    {
      if (v17 != 6)
      {
LABEL_5:
        v8 = 0;
        v9 = 56;
        v7 = 70020;
LABEL_86:
        if (*(v5 + 1024) == 1)
        {
          v23 = (v5 + 1000);
          memset(&buf, 0, sizeof(buf));
          sub_10026EB60(a1, a2, (v5 + 1000), &buf);
          v9 = sub_10093103C(&buf);
          sub_1001696A4((v5 + 1032), &buf);
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v5 + 1023) < 0)
            {
              v23 = *v23;
            }

            *v32 = 136315138;
            v33 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I carrier error code in TA response from source: %s", v32, 0xCu);
          }

          if ((v9 - 53) <= 1u)
          {
            *(v5 + 240) = 18;
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if ((*(a1 + 520) & 1) == 0)
        {
          buf.__r_.__value_.__s.__data_[0] = 1;
          buf.__r_.__value_.__s.__data_[1] = v9;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&buf.__r_.__value_.__s.__data_[8], *a2, *(a2 + 8));
          }

          else
          {
            *&buf.__r_.__value_.__r.__words[1] = *a2;
            v35 = *(a2 + 16);
          }

          sub_1002549A0(a1, a2, __p);
          v38 = 0;
          v39 = 0;
          sub_100254AA0(a1 + 448, &buf);
          sub_10001021C(&v39);
          sub_100005978(&v38);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__size_);
          }
        }

        sub_100319F10(v5, v8);
        sub_100319F28(v5, v7);
        v26 = 0;
        v27 = 0;
        v15 = &v27;
        v16 = &v26;
        sub_100254358(a1, a2, 11, v9, &v27, &v26);
        goto LABEL_104;
      }

      v18 = (*(**(a1 + 48) + 248))(*(a1 + 48), v5, v5 + 24, v5 + 48, v5 + 72, v5 + 320);
      v19 = *(a1 + 848);
      if (*(v19 + 47) < 0)
      {
        sub_100005F2C(__dst, *(v19 + 24), *(v19 + 32));
      }

      else
      {
        *__dst = *(v19 + 24);
        v29 = *(v19 + 40);
      }

      v20 = sub_100927A9C(__dst);
      v21 = sub_100933B84(6, v18, 0xFFFFFFFF, v20, 0);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst[0]);
      }

      v22 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
      if (v21 == 6)
      {
        v7 = 70036;
        if (v22)
        {
          sub_1017680AC();
        }

        v9 = 22;
        v8 = 8;
        goto LABEL_86;
      }

      if (v22)
      {
        sub_10176803C();
      }

      v7 = 70096;
      v9 = 62;
LABEL_85:
      v8 = 10;
      goto LABEL_86;
    }

    v7 = 70016;
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767AFC();
    }

LABEL_64:
    v9 = 37;
    v8 = 9;
    goto LABEL_86;
  }

  LOWORD(buf.__r_.__value_.__l.__data_) = 14337;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&buf.__r_.__value_.__s.__data_[8], *a2, *(a2 + 8));
  }

  else
  {
    *&buf.__r_.__value_.__r.__words[1] = *a2;
    v35 = *(a2 + 16);
  }

  sub_1002549A0(a1, a2, __p);
  v38 = 0;
  v39 = 0;
  sub_100254AA0(a1 + 448, &buf);
  sub_10001021C(&v39);
  sub_100005978(&v38);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__size_);
  }

  v30 = 0;
  v31 = 0;
  v15 = &v31;
  v16 = &v30;
  sub_100254358(a1, a2, 11, 56, &v31, &v30);
LABEL_104:
  sub_10001021C(v16);
  sub_100005978(v15);
  sub_100254C38(a1);
  return sub_100254E74(a1);
}

void sub_10026DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026E010(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v55 = 0;
  v53 = a1;
  v54 = 0uLL;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v54, *a2, *(a2 + 8));
  }

  else
  {
    v54 = *a2;
    v55 = *(a2 + 16);
  }

  v6 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017681A8();
    }

    goto LABEL_102;
  }

  v7 = v6;
  if ((*(v6 + 908) & 1) == 0 && (*(v6 + 909) & 1) == 0 && (*(v6 + 910) & 1) == 0 && *(a1 + 156) != 6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176811C();
    }

    goto LABEL_102;
  }

  *(v6 + 908) = 0;
  if ((*(v6 + 191) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 176))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v6 + 191))
  {
LABEL_19:
    v9 = *(a1 + 40);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    v8 = 0;
    if (v10)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I failed to get transfer token from source", &buf, 2u);
      v8 = 0;
    }

    goto LABEL_21;
  }

  if ((*(v6 + 167) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 152))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v6 + 167))
  {
    goto LABEL_19;
  }

  v8 = 1;
LABEL_21:
  v11 = *(v7 + 273);
  if ((v11 - 2) < 2)
  {
    *&buf = a1;
    *(&buf + 1) = v7;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v59, *a2, *(a2 + 8));
    }

    else
    {
      v59 = *a2;
      v60 = *(a2 + 16);
    }

    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    sub_100004AA0(&__p, (a1 + 8));
    operator new();
  }

  if (v11 == 1 || v11 == 4)
  {
    if (v8)
    {
      v51 = 0;
      v52 = 0;
      sub_100254358(a1, a2, 4, 0, &v52, &v51);
      sub_10001021C(&v51);
      sub_100005978(&v52);
      buf = 0uLL;
      *&v59 = 0;
      sub_100260070(a2, &buf);
      (***(a1 + 48))(&__p);
      ServiceMap = Registry::getServiceMap(__p.__r_.__value_.__l.__data_);
      v13 = ServiceMap;
      v15 = v14;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v17 = 5381;
        do
        {
          v15 = v17;
          v18 = *v16++;
          v17 = (33 * v17) ^ v18;
        }

        while (v18);
      }

      std::mutex::lock(ServiceMap);
      v49 = v15;
      v19 = sub_100009510(&v13[1].__m_.__sig, &v49);
      if (v19)
      {
        v21 = v19[3];
        v20 = v19[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
          goto LABEL_55;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v13);
      v20 = 0;
      v22 = 1;
LABEL_55:
      (*(*v21 + 88))(v21, &buf);
      if ((v22 & 1) == 0)
      {
        sub_100004A34(v20);
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        sub_100004A34(__p.__r_.__value_.__l.__size_);
      }

      memset(&__p, 0, sizeof(__p));
      v30 = sub_10026AB6C(a1, v7);
      v31 = (*(**(a1 + 48) + 32))(*(a1 + 48));
      sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v30, v31, *(a1 + 145), &__p);
      v32 = sub_1009314B8((a1 + 768), &__p.__r_.__value_.__l.__data_);
      if (v32)
      {
        (*(**(a1 + 48) + 312))(*(a1 + 48), &buf, v32);
      }

      (***(a1 + 48))(&v49);
      v33 = Registry::getServiceMap(v49);
      v34 = v33;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v35 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v36 = 5381;
        do
        {
          v14 = v36;
          v37 = *v35++;
          v36 = (33 * v36) ^ v37;
        }

        while (v37);
      }

      std::mutex::lock(v33);
      v56 = v14;
      v38 = sub_100009510(&v34[1].__m_.__sig, &v56);
      if (v38)
      {
        v40 = v38[3];
        v39 = v38[4];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v34);
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v39);
          v41 = 0;
LABEL_69:
          LOBYTE(v56) = 2;
          (*(*v40 + 80))(v40, &buf, &v56);
          if ((v41 & 1) == 0)
          {
            sub_100004A34(v39);
          }

          if (v50)
          {
            sub_100004A34(v50);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v59) < 0)
          {
            operator delete(buf);
          }

          goto LABEL_102;
        }
      }

      else
      {
        v40 = 0;
      }

      std::mutex::unlock(v34);
      v39 = 0;
      v41 = 1;
      goto LABEL_69;
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_100649BB4(v11);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I failed to get transfer token. transfer consent : %s", &buf, 0xCu);
    }
  }

  if (sub_10026EC24(a1, a2))
  {
    buf = 0uLL;
    sub_100004AA0(&buf, (a1 + 8));
    operator new();
  }

  v25 = *(a1 + 40);
  if (*a3 == 2)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      sub_100F15078(a3);
      v27 = asString();
      sub_101768150(v27, &buf, v26, v25);
    }

    if (*sub_100F15078(a3) == 20)
    {
      sub_100319F10(v7, 2);
      v28 = 70005;
    }

    else if (*sub_100F15078(a3) == 21)
    {
      sub_100319F10(v7, 1);
      v28 = 70006;
    }

    else if (*sub_100F15078(a3) == 24)
    {
      sub_100319F10(v7, 1);
      v28 = 70045;
    }

    else if (*sub_100F15078(a3) == 22)
    {
      sub_100319F10(v7, 2);
      v28 = 70037;
    }

    else if (*sub_100F15078(a3) == 23)
    {
      sub_100319F10(v7, 2);
      v28 = 70038;
    }

    else
    {
      if (*sub_100F15078(a3) != 17)
      {
        sub_100319F10(v7, 5);
        *(v7 + 916) = *sub_100F15078(a3);
        *(v7 + 920) = 1;
LABEL_90:
        if (*sub_100F15078(a3) == 17 || *sub_100F15078(a3) == 23 || *sub_100F15078(a3) == 22 || *sub_100F15078(a3) == 21 || *sub_100F15078(a3) == 24)
        {
          v42 = *(a1 + 40);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v43 = a2;
            }

            else
            {
              v43 = *a2;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
            *(__p.__r_.__value_.__r.__words + 4) = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I IDS error occurred for iccid: [%s]. goto BT flow", &__p, 0xCu);
          }

          v47 = 0;
          v48 = 0;
          sub_10026F304(&v53, &v48, 50, &v47);
          sub_10001021C(&v47);
          v44 = &v48;
        }

        else
        {
          v45 = 0;
          v46 = 0;
          sub_10026F304(&v53, &v46, 56, &v45);
          sub_10001021C(&v45);
          v44 = &v46;
        }

        sub_100005978(v44);
        goto LABEL_102;
      }

      sub_100319F10(v7, 2);
      v28 = 70039;
    }

    sub_100319F28(v7, v28);
    goto LABEL_90;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I TA failed. no transfer token in response from source for iccid: [%s]", &buf, 0xCu);
  }

  sub_10026D814(a1, a2);
LABEL_102:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }
}

void sub_10026EA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026EB60(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 336) == sub_10025CD10((a1 + 328), a2))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017681DC();
    }

    strcpy(a4, "CarrierDefaultErrors");
    *(a4 + 21) = unk_1017E456D;
    *(a4 + 22) = unk_1017E456E;
  }

  else
  {

    sub_100267A2C(a1, a2, a3, a4);
  }
}

uint64_t sub_10026EC24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 904);
  v5 = *(a1 + 912);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v38 = *(a2 + 16);
  }

  v6 = HIBYTE(v38);
  if (v4 != v5)
  {
    if (v38 >= 0)
    {
      v7 = HIBYTE(v38);
    }

    else
    {
      v7 = *(&__dst + 1);
    }

    if (v38 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v9 = v4 + 432;
    while (1)
    {
      v10 = *(v9 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      if (v7 == v10)
      {
        v12 = v11 >= 0 ? v9 : *v9;
        if (!memcmp(p_dst, v12, v7))
        {
          break;
        }
      }

      v13 = v9 + 848;
      v9 += 1280;
      if (v13 == v5)
      {
        if (v6 < 0)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }

    v5 = v9 - 432;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v5 = v4;
  if (v38 < 0)
  {
LABEL_30:
    operator delete(__dst);
  }

LABEL_21:
  if (v5 == *(a1 + 912) || *(v5 + 1) - 5 > 2)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = *(a1 + 64);
      if (v16)
      {
        v35 = 0uLL;
        v36 = 0;
        if (*(v5 + 527) < 0)
        {
          sub_100005F2C(&v35, *(v5 + 504), *(v5 + 512));
        }

        else
        {
          v35 = *(v5 + 504);
          v36 = *(v5 + 520);
        }

        v18 = HIBYTE(v36);
        if (SHIBYTE(v36) < 0)
        {
          v18 = *(&v35 + 1);
        }

        if (!v18)
        {
          sub_100261590(a1, v21);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35);
          }

          v35 = *v21;
          v36 = *&v21[16];
        }

        *v33 = 0u;
        v34 = 0u;
        v19 = *(v5 + 479);
        if (v19 < 0)
        {
          v19 = *(v5 + 464);
        }

        if (v19)
        {
          sub_1001696A4(v33, (v5 + 456));
        }

        v20 = *(v5 + 1);
        v31 = 0;
        v32 = 0;
        sub_100254358(a1, a2, v20, 56, &v32, &v31);
        sub_10001021C(&v31);
        sub_100005978(&v32);
        *v21 = 14337;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v21[8], *a2, *(a2 + 8));
        }

        else
        {
          *&v21[8] = *a2;
          __p[0] = *(a2 + 16);
        }

        sub_1002549A0(a1, a2, &__p[1]);
        *(&v24 + 1) = 0;
        v25 = 0;
        sub_100254AA0(a1 + 448, v21);
        sub_10001021C(&v25);
        sub_100005978(&v24 + 1);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*&v21[8]);
        }

        *v21 = a1;
        *&v21[8] = v16;
        *&v21[16] = v15;
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v23 = *(a2 + 16);
        }

        if (SHIBYTE(v36) < 0)
        {
          sub_100005F2C(&v24, v35, *(&v35 + 1));
        }

        else
        {
          v24 = v35;
          v25 = v36;
        }

        sub_10006F264(&v26, v33);
        if (*(v5 + 215) < 0)
        {
          sub_100005F2C(v27, *(v5 + 192), *(v5 + 200));
        }

        else
        {
          *v27 = *(v5 + 192);
          v28 = *(v5 + 208);
        }

        if (*(v5 + 239) < 0)
        {
          sub_100005F2C(v29, *(v5 + 216), *(v5 + 224));
        }

        else
        {
          *v29 = *(v5 + 216);
          v30 = *(v5 + 232);
        }

        v39[0] = 0;
        v39[1] = 0;
        sub_100004AA0(v39, (a1 + 8));
        operator new();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    if (!v15)
    {
      return 1;
    }

    goto LABEL_69;
  }

  sub_101761510();
  if (v15)
  {
LABEL_69:
    sub_100004A34(v15);
  }

  return 1;
}

void sub_10026F1CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  v54 = *(v52 + 16);
  if (v54)
  {
    sub_100004A34(v54);
  }

  sub_10004F058(a1);
}

uint64_t sub_10026F304(uint64_t a1, const void **a2, int a3, const void **a4)
{
  v9 = a1 + 8;
  v8 = *a1;
  sub_10005C7A4(&v19, a2);
  sub_100010024(&v18, a4);
  sub_100254358(v8, v9, 11, a3, &v19, &v18);
  sub_10001021C(&v18);
  sub_100005978(&v19);
  v11[0] = 0;
  v11[1] = a3;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(&v12, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 16);
  }

  sub_1002549A0(v8, v9, &__p);
  sub_10005C7A4(&v16, a2);
  sub_100010024(&v17, a4);
  sub_100254AA0(v8 + 448, v11);
  sub_10001021C(&v17);
  sub_100005978(&v16);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  sub_100254C38(v8);
  return sub_100254E74(v8);
}

void sub_10026F480(uint64_t a1, char a2, __int128 *a3, uint64_t a4)
{
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v21 = *(a4 + 16);
  }

  v9 = &v22;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v22, *a3, *(a3 + 1));
  }

  else
  {
    v22 = *a3;
    v23 = *(a3 + 2);
  }

  if (v7 == v8)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  if (v21 >= 0)
  {
    v10 = HIBYTE(v21);
  }

  else
  {
    v10 = __p[1];
  }

  if (v21 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = HIBYTE(v23);
  if (v23 >= 0)
  {
    v13 = HIBYTE(v23);
  }

  else
  {
    v13 = *(&v22 + 1);
  }

  if (v23 < 0)
  {
    v9 = v22;
  }

  while (1)
  {
    v14 = *(v7 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v7 + 8);
    }

    if (v14 == v10)
    {
      v16 = v15 >= 0 ? v7 : *v7;
      if (!memcmp(v16, v11, v10))
      {
        v17 = *(v7 + 47);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v7 + 32);
        }

        if (v17 == v13)
        {
          v19 = v18 >= 0 ? (v7 + 24) : *(v7 + 24);
          if (!memcmp(v19, v9, v13))
          {
            break;
          }
        }
      }
    }

    v7 += 672;
    if (v7 == v8)
    {
      v7 = v8;
      break;
    }
  }

  if (v12 < 0)
  {
LABEL_42:
    operator delete(v22);
  }

LABEL_36:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != *(a1 + 176))
  {
    *(v7 + 294) = a2;
  }
}

void sub_10026F624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026F640(uint64_t a1, std::string *__str)
{
  if (*(a1 + 152) == 1)
  {
    std::string::operator=(a1, __str);
    if (a1 != __str)
    {
      sub_1002845C0((a1 + 24), __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__str[1].__r_.__value_.__l.__size_ - __str[1].__r_.__value_.__r.__words[0]) >> 5));
    }

    sub_10012BF3C((a1 + 48), __str + 2);
    v4 = __str[3].__r_.__value_.__r.__words[1];
    *(a1 + 84) = __str[3].__r_.__value_.__s.__data_[12];
    *(a1 + 80) = v4;
    sub_10012BF3C((a1 + 88), (__str + 88));
    sub_10012BF3C((a1 + 120), __str + 5);
  }

  else
  {
    sub_1002832F0(a1, __str);
    *(a1 + 152) = 1;
  }

  return a1;
}

void sub_10026F6EC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 1112);
    *(a1 + 1112) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (!*(a1 + 1104))
    {
      operator new();
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    (***(a1 + 48))(buf);
    Registry::getTimerService(&v8, *buf);
    if (v13)
    {
      sub_100004A34(v13);
    }

    v4 = *(a1 + 40);
    if (v8)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I delay de-assert bootstrap for 2min", buf, 2u);
      }

      sub_10000501C(v6, "delay bootstrap de-assertion timer");
      sub_100004AA0(buf, (a1 + 8));
      v5 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v5);
      }

      *__p = *v6;
      v11 = v7;
      v6[0] = 0;
      v6[1] = 0;
      v7 = 0;
      v14 = 0;
      operator new();
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_101766E14();
    }

    sub_1002855D4((a1 + 1104), 0);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }
}

void sub_10026FA40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  operator delete();
}

void sub_10026FADC(uint64_t a1, int **a2, int a3, int a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 40);
      if (v12)
      {
        sub_10026F6EC(v9, 0);
        bzero(v25, 0x258uLL);
        v13 = *a2;
        if (a3)
        {
          if (!v13)
          {
            goto LABEL_14;
          }

          v14 = *(v13 + 3);
          if (v14)
          {
            sub_10027020C(v25, v14);
            *buf = v9;
            *&buf[8] = v12;
            *&buf[16] = v11;
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(a1 + 79) < 0)
            {
              sub_100005F2C(v31, *(a1 + 56), *(a1 + 64));
            }

            else
            {
              v31[0] = *(a1 + 56);
              *&v31[1] = *(a1 + 72);
            }

            sub_1000224C8(&v31[1] + 8, a1 + 80);
            sub_1002837FC(&v31[3] + 8, v25);
            v26[1] = 0;
            v26[0] = 0;
            sub_100004AA0(v26, v9 + 1);
            operator new();
          }
        }

        else if (!v13)
        {
          goto LABEL_14;
        }

        sub_10026AF7C(v9, (a1 + 56), v13 + 1);
        v15 = **a2;
        if (v15 != 6000 && v15 != 6013)
        {
          v16 = sub_10025CD10(v9 + 41, (a1 + 56));
          if (v9[42] != v16)
          {
            *(v16 + 976) = v15;
            *(v16 + 984) = 1;
          }
        }

LABEL_14:
        v17 = v9[5];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (*a2)
          {
            v20 = "";
          }

          else
          {
            v20 = "No Response.";
          }

          v21 = sub_100A38E30(a4);
          if (*a2)
          {
            v22 = sub_100531604(**a2);
          }

          else
          {
            v22 = "";
          }

          *buf = 136315650;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = v21;
          *&buf[22] = 2080;
          *&v31[0] = v22;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "TA request failed. %s EventCause: [%s], response status: [%s]", buf, 0x20u);
        }

        memset(v31, 0, 72);
        *&buf[8] = 0u;
        *buf = v9;
        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(&buf[8], *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *&buf[8] = *(a1 + 56);
          *&v31[0] = *(a1 + 72);
        }

        sub_1000224C8(v31 + 8, a1 + 80);
        DWORD2(v31[2]) = a4;
        v19 = *a2;
        v18 = a2[1];
        *&v31[3] = *(a1 + 112);
        *(&v31[3] + 1) = v19;
        *&v31[4] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(__dst, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *__dst = *(a1 + 56);
          v24 = *(a1 + 72);
        }

        v26[4] = *buf;
        if (SBYTE7(v31[0]) < 0)
        {
          sub_100005F2C(__p, *&buf[8], *&buf[16]);
        }

        else
        {
          *__p = *&buf[8];
          __p[2] = *&v31[0];
        }

        sub_1000224C8(v28, v31 + 8);
        v28[2] = *(&v31[2] + 8);
        v28[3] = *(&v31[3] + 8);
        if (*&v31[4])
        {
          atomic_fetch_add_explicit((*&v31[4] + 8), 1uLL, memory_order_relaxed);
        }

        v29 = 0;
        operator new();
      }

      sub_100004A34(v10);
    }
  }
}

void sub_1002700C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      sub_100004A34(v4);
    }

    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10027020C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 592) == 1)
  {
    *a1 = *a2;
    sub_10012BF3C((a1 + 8), (a2 + 8));
    sub_10012BF3C((a1 + 40), (a2 + 40));
    sub_100283420((a1 + 72), (a2 + 72));
    sub_10012BF3C((a1 + 232), (a2 + 232));
    sub_100283578((a1 + 264), (a2 + 264));
    sub_100283658((a1 + 368), (a2 + 368));
    sub_10012BF3C((a1 + 456), (a2 + 456));
    sub_10012BF3C((a1 + 488), (a2 + 488));
    sub_10012BF3C((a1 + 520), (a2 + 520));
    sub_10012BF3C((a1 + 552), (a2 + 552));
    *(a1 + 584) = *(a2 + 584);
  }

  else
  {
    sub_100283910(a1, a2);
    *(a1 + 592) = 1;
  }

  return a1;
}

void sub_1002702E0(uint64_t a1, __int128 *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v17 = a9;
  v18 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v18)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767004();
    }

    sub_10000FFD0(a9, 0);
  }

  else
  {
    v19 = v18;
    v20 = *(a1 + 88);
    if (v20 && (v30 = std::__shared_weak_count::lock(v20)) != 0)
    {
      v21 = *(a1 + 80);
      if (v21)
      {
        bzero(v58, 0x508uLL);
        (*(*v21 + 168))(v58, v21, a2);
        if ((v60 & 1) == 0)
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_10176824C();
          }

          sub_10000FFD0(a9, 0);
          goto LABEL_51;
        }

        v29 = v59;
        if (*(v19 + 23) < 0)
        {
          sub_100005F2C(__dst, *v19, *(v19 + 8));
        }

        else
        {
          v22 = *v19;
          v50 = *(v19 + 16);
          *__dst = v22;
        }

        if (*(v19 + 47) < 0)
        {
          sub_100005F2C(v47, *(v19 + 24), *(v19 + 32));
        }

        else
        {
          *v47 = *(v19 + 24);
          v48 = *(v19 + 40);
        }

        if (*(v19 + 71) < 0)
        {
          sub_100005F2C(v45, *(v19 + 48), *(v19 + 56));
        }

        else
        {
          *v45 = *(v19 + 48);
          v46 = *(v19 + 64);
        }

        if (*(v19 + 95) < 0)
        {
          sub_100005F2C(v43, *(v19 + 72), *(v19 + 80));
        }

        else
        {
          *v43 = *(v19 + 72);
          v44 = *(v19 + 88);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 1));
        }

        else
        {
          *__p = *a2;
          v42 = *(a2 + 2);
        }

        v24 = sub_10026C22C(a1, __dst, v47, v45, v43, __p);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[0]);
        }

        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45[0]);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(__dst[0]);
        }

        if (a8 <= 7)
        {
          if ((a8 - 2) < 6)
          {
            v25 = *(a1 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = entitlements::asString();
              *buf = 136315138;
              v52 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Recovery not required for %s", buf, 0xCu);
            }

            sub_10000FFD0(a9, 0);
            goto LABEL_48;
          }

          if (a8 < 2)
          {
            if ((v24 & v29) == 1 && a5)
            {
              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v39, *a2, *(a2 + 1));
              }

              else
              {
                v39 = *a2;
                v40 = *(a2 + 2);
              }

              sub_1000224C8(v57, a9);
              sub_100265CB4();
              sub_10000FF50(v57);
              if ((SHIBYTE(v40) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

              v28 = &v39;
              goto LABEL_90;
            }

LABEL_50:
            sub_10000FFD0(a9, 0);
LABEL_51:
            if (v60 == 1)
            {
              sub_1002813D0(v58);
            }

            v23 = v30;
LABEL_54:
            sub_100004A34(v23);
            return;
          }

LABEL_48:
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101768280();
          }

          goto LABEL_50;
        }

        if (a8 == 8)
        {
          if (a6)
          {
            if ((v29 & v24) != 1)
            {
              goto LABEL_50;
            }

            if (!a5)
            {
              goto LABEL_91;
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(&v37, *a2, *(a2 + 1));
            }

            else
            {
              v37 = *a2;
              v38 = *(a2 + 2);
            }

            sub_1000224C8(v56, a9);
            sub_100265CB4();
            sub_10000FF50(v56);
            if ((SHIBYTE(v38) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            v28 = &v37;
          }

          else
          {
            if (a3 == 3)
            {
              v27 = a4;
            }

            else
            {
              v27 = 1;
            }

            if (((v27 | v24) & 1) == 0)
            {
              goto LABEL_50;
            }

            if (v29 && (a5 & 1) == 0)
            {
              if ((v60 & 1) == 0)
              {
                sub_1000D1644();
              }

              (*(*v21 + 328))(v21, v58);
              goto LABEL_50;
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(&v35, *a2, *(a2 + 1));
            }

            else
            {
              v35 = *a2;
              v36 = *(a2 + 2);
            }

            sub_1000224C8(v55, a9);
            sub_100265CB4();
            sub_10000FF50(v55);
            if ((SHIBYTE(v36) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            v28 = &v35;
          }
        }

        else
        {
          if (a8 != 9)
          {
            goto LABEL_48;
          }

          if (a6)
          {
            if ((v29 & v24) != 1)
            {
              goto LABEL_50;
            }

            if (a5)
            {
              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v33, *a2, *(a2 + 1));
              }

              else
              {
                v33 = *a2;
                v34 = *(a2 + 2);
              }

              sub_1000224C8(v54, a9);
              sub_100265CB4();
              sub_10000FF50(v54);
              if ((SHIBYTE(v34) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

              v28 = &v33;
              goto LABEL_90;
            }

LABEL_91:
            if ((v60 & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(*v21 + 328))(v21, v58);
            goto LABEL_50;
          }

          if (!((a3 != 3 || (a4 & 1) == 0) | (a7 | v24) & 1))
          {
            goto LABEL_50;
          }

          if (v29 && (a5 & 1) == 0)
          {
            if ((v60 & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(*v21 + 328))(v21, v58);
            goto LABEL_50;
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v31, *a2, *(a2 + 1));
          }

          else
          {
            v31 = *a2;
            v32 = *(a2 + 2);
          }

          sub_1000224C8(v53, a9);
          sub_100265CB4();
          sub_10000FF50(v53);
          if ((SHIBYTE(v32) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v28 = &v31;
        }

LABEL_90:
        operator delete(*v28);
        goto LABEL_51;
      }

      v23 = v30;
      v17 = a9;
    }

    else
    {
      v23 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176773C();
    }

    sub_10000FFD0(v17, 0);
    if (v23)
    {
      goto LABEL_54;
    }
  }
}

void sub_100270A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF50(&a71);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x718]) == 1)
  {
    sub_1002813D0(&STACK[0x218]);
  }

  sub_100004A34(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100270BB8(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100270C00(uint64_t a1, uint64_t a2)
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

  return sub_1000224C8(a1 + 80, a2 + 80);
}

void sub_100270C70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100270CA0(uint64_t a1)
{
  sub_10000FF50(a1 + 80);
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

uint64_t sub_100270CFC(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_100270D58(uint64_t a1)
{
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v3 = (a1 + 24);
  sub_10016C644(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100270DF8(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    v3 = (a1 + 64);
    sub_10016C644(&v3);
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100270EC0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017682B4(a3);
  }

  v10 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v10)
  {
    v21 = 0u;
    memset(v20, 0, sizeof(v20));
    *&v18 = a1;
    *(&v18 + 1) = a3;
    v19 = v10;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v20, *a2, *(a2 + 8));
    }

    else
    {
      *v20 = *a2;
      v20[2] = *(a2 + 16);
    }

    sub_10000FED0(&v20[3], a5);
    DWORD2(v21) = a4;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v12 = *(a2 + 16);
    }

    v13 = v18;
    v14 = v19;
    if (SHIBYTE(v20[2]) < 0)
    {
      sub_100005F2C(__p, v20[0], v20[1]);
    }

    else
    {
      *__p = *v20;
      __p[2] = v20[2];
    }

    sub_1000224C8(v16, &v20[3]);
    v16[8] = DWORD2(v21);
    v17 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768334();
  }
}

void sub_100271188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  operator delete(v37);
  sub_100271204(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100271204(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_100271204(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_100271240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_10025CD10((a1 + 328), a2);
  v74 = v10;
  v11 = *(a1 + 40);
  if (*(a1 + 336) == v10)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    v12 = v10;
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v13 = entitlements::asString();
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 136446466;
      *&buf[4] = v13;
      v105 = 2080;
      v106 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [resp][ta] processing [%{public}s] response. source iccid : %s", buf, 0x16u);
    }

    if (*(a4 + 592))
    {
      bzero(buf, 0x250uLL);
      sub_100283910(buf, a4);
      if (buf[1] != 1 || buf[0])
      {
        if (!buf[1])
        {
LABEL_41:
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_1017683D8();
          }

          v21 = 0;
LABEL_44:
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(__dst, *a2, *(a2 + 8));
          }

          else
          {
            *__dst = *a2;
            v71 = *(a2 + 16);
          }

          sub_100922314((v12 + 274), v20, v68);
          sub_10026F480(a1, v21, __dst, v68);
          if (v69 < 0)
          {
            operator delete(v68[0]);
          }

          if (SHIBYTE(v71) < 0)
          {
            operator delete(__dst[0]);
          }

          *(v12 + 696) = v21;
          sub_10000501C(__p, "TransferType");
          v96[0].__r_.__value_.__l.__size_ = v21;
          v96[0].__r_.__value_.__r.__words[0] = sub_100299FAC;
          sub_100261328(a1, a2, __p, v96);
          sub_100176638(v96);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (v109 == 1)
          {
            v22 = __str;
            v23 = v108;
            while (1)
            {
              if (v22 == v23)
              {
                goto LABEL_62;
              }

              if ((SHIBYTE(v22->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                break;
              }

              if (*(&v22->__r_.__value_.__s + 23))
              {
                goto LABEL_60;
              }

LABEL_61:
              v22 += 4;
            }

            if (!v22->__r_.__value_.__l.__size_)
            {
              goto LABEL_61;
            }

LABEL_60:
            std::string::operator=((v12 + 624), v22);
            goto LABEL_61;
          }

LABEL_62:
          if (v21 != 2)
          {
            if (v21 == 16)
            {
              if ((v116 & 1) == 0)
              {
                v24 = 70008;
                v25 = 37;
                v26 = 9;
                goto LABEL_95;
              }

LABEL_73:
              memset(v96, 0, 24);
              sub_10026EB60(a1, a2, &v115.__r_.__value_.__l.__data_, v96);
              v25 = sub_10093103C(v96);
              v24 = sub_100932AF0(a5, 1, 0);
              sub_1001696A4((v12 + 1032), v96);
              sub_1001696A4((v12 + 1000), &v115);
              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(v62, *a2, *(a2 + 8));
              }

              else
              {
                *v62 = *a2;
                v63 = *(a2 + 16);
              }

              sub_100922314((v12 + 274), v30, v60);
              sub_10026F480(a1, 16, v62, v60);
              if (v61 < 0)
              {
                operator delete(v60[0]);
              }

              if (SHIBYTE(v63) < 0)
              {
                operator delete(v62[0]);
              }

              v32 = *(a1 + 40);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v33 = &v115;
                }

                else
                {
                  v33 = v115.__r_.__value_.__r.__words[0];
                }

                if (*(a2 + 23) >= 0)
                {
                  v34 = a2;
                }

                else
                {
                  v34 = *a2;
                }

                *__p = 136315394;
                *&__p[4] = v33;
                *&__p[12] = 2080;
                *&__p[14] = v34;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Carrier error-code in TA response: %s for source iccid:%s", __p, 0x16u);
              }

              if (SHIBYTE(v96[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v96[0].__r_.__value_.__l.__data_);
              }

              v26 = 7;
LABEL_95:
              if (*(a1 + 384) == 1)
              {
                v96[0].__r_.__value_.__r.__words[0] = a1 + 360;
                *(sub_10028EDFC(a1 + 1064, (a1 + 360)) + 83) = 1;
                v96[0].__r_.__value_.__r.__words[0] = a1 + 360;
                v35 = sub_10028EDFC(a1 + 1064, (a1 + 360));
                *(v35 + 84) = v24;
                *(v35 + 88) = 1;
                if (v116 == 1)
                {
                  v96[0].__r_.__value_.__r.__words[0] = a1 + 360;
                  v36 = sub_10028EDFC(a1 + 1064, (a1 + 360));
                  sub_1001696A4(v36 + 4, &v115);
                }
              }

              cf = 0;
              if ((*(a1 + 147) & 1) == 0 && v119 == 1)
              {
                if (SHIBYTE(v118) < 0)
                {
                  sub_100005F2C(v56, __src, *(&__src + 1));
                }

                else
                {
                  *v56 = __src;
                  v57 = v118;
                }

                if (SHIBYTE(v57) < 0)
                {
                  sub_100005F2C(__p, v56[0], v56[1]);
                }

                else
                {
                  *__p = *v56;
                  *&__p[16] = v57;
                }

                v75 = 0;
                if ((__p[23] & 0x80000000) != 0)
                {
                  sub_100005F2C(v96, *__p, *&__p[8]);
                }

                else
                {
                  v96[0] = *__p;
                }

                v76[0] = 0;
                if (ctu::cf::convert_copy())
                {
                  v51 = v75;
                  v75 = v76[0];
                  *v91 = v51;
                  sub_100005978(v91);
                }

                if (SHIBYTE(v96[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v96[0].__r_.__value_.__l.__data_);
                }

                v58 = v75;
                v75 = 0;
                sub_100005978(&v75);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                v52 = v58;
                v96[0].__r_.__value_.__r.__words[0] = cf;
                v58 = 0;
                cf = v52;
                sub_100005978(&v96[0].__r_.__value_.__l.__data_);
                sub_100005978(&v58);
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(v56[0]);
                }
              }

              memset(&v96[0].__r_.__value_.__r.__words[1], 0, 88);
              v96[0].__r_.__value_.__r.__words[0] = a1;
              sub_10000FED0(&v96[0].__r_.__value_.__l.__size_, a3);
              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v96[1].__r_.__value_.__s.__data_[16], *a2, *(a2 + 8));
              }

              else
              {
                *&v96[1].__r_.__value_.__r.__words[2] = *a2;
                v96[2].__r_.__value_.__l.__size_ = *(a2 + 16);
              }

              v96[2].__r_.__value_.__s.__data_[16] = v25;
              v96[3].__r_.__value_.__r.__words[0] = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v96[3].__r_.__value_.__s.__data_[8] = v26;
              HIDWORD(v96[3].__r_.__value_.__r.__words[1]) = v24;
              v96[3].__r_.__value_.__r.__words[2] = v12;
              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(v54, *a2, *(a2 + 8));
              }

              else
              {
                *v54 = *a2;
                v55 = *(a2 + 16);
              }

              v76[1] = v96[0].__r_.__value_.__l.__data_;
              sub_1000224C8(&v77, &v96[0].__r_.__value_.__l.__size_);
              if (v96[2].__r_.__value_.__s.__data_[15] < 0)
              {
                sub_100005F2C(v78, v96[1].__r_.__value_.__r.__words[2], v96[2].__r_.__value_.__r.__words[0]);
              }

              else
              {
                *v78 = *&v96[1].__r_.__value_.__r.__words[2];
                v78[2] = v96[2].__r_.__value_.__l.__size_;
              }

              v79 = v96[2].__r_.__value_.__s.__data_[16];
              data = v96[3].__r_.__value_.__l.__data_;
              if (v96[3].__r_.__value_.__r.__words[0])
              {
                CFRetain(v96[3].__r_.__value_.__l.__data_);
              }

              v81 = *&v96[3].__r_.__value_.__r.__words[1];
              v82 = 0;
              operator new();
            }

            if (v116 == 1)
            {
              size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
              if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v115.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                goto LABEL_73;
              }
            }

            switch(v21)
            {
              case 0xBu:
                v48 = *(a1 + 352);
                *(v48 + 1064) = 257;
                *(v48 + 909) = 257;
                break;
              case 0xAu:
                v47 = *(a1 + 352);
                *(v47 + 1065) = 1;
                *(v47 + 910) = 1;
                break;
              case 9u:
                v31 = *(a1 + 352);
                *(v31 + 1064) = 1;
                *(v31 + 909) = 1;
                break;
            }

            v49 = *(a1 + 40);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = sub_100649C94(v21);
              LODWORD(v96[0].__r_.__value_.__l.__data_) = 136315138;
              *(v96[0].__r_.__value_.__r.__words + 4) = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I TransferType: %s", v96, 0xCu);
            }

            if (*(a1 + 147) != 1 || sub_100649E80(v21) || (*(v12 + 1066) & 1) != 0)
            {
              v46 = 0;
              goto LABEL_132;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10176840C();
            }

            LOBYTE(v75) = 11;
            v96[0].__r_.__value_.__r.__words[0] = 0;
            LOBYTE(cf) = 40;
            *__p = 0;
            LOWORD(v76[0]) = 262;
            *v91 = 70022;
            v91[4] = 1;
            sub_1002540BC(a1, a2, &v75, 0, &v96[0].__r_.__value_.__l.__data_, &cf, __p, v76, v91, &v74);
            sub_10001021C(__p);
            sub_100005978(&v96[0].__r_.__value_.__l.__data_);
            sub_10000501C(__p, "WebsheetRequiredInbuddy");
            v96[0].__r_.__value_.__l.__size_ = 1;
            v96[0].__r_.__value_.__r.__words[0] = sub_100176214;
            sub_100261328(a1, a2, __p, v96);
            sub_100176638(v96);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

LABEL_123:
            v46 = 1;
LABEL_132:
            sub_10000FFD0(a3, v46);
            sub_100283CE0(buf);
            return;
          }

          v66 = 0;
          v67 = 0;
          sub_100254358(a1, a2, 9, 0, &v67, &v66);
          sub_10001021C(&v66);
          sub_100005978(&v67);
          if (*(a1 + 384))
          {
LABEL_122:
            LOBYTE(v75) = 9;
            v96[0].__r_.__value_.__r.__words[0] = 0;
            LOBYTE(cf) = 0;
            *__p = 0;
            LOWORD(v76[0]) = 0;
            v91[0] = 0;
            v91[4] = 0;
            sub_1002540BC(a1, a2, &v75, 1, &v96[0].__r_.__value_.__l.__data_, &cf, __p, v76, v91, &v74);
            sub_10001021C(__p);
            sub_100005978(&v96[0].__r_.__value_.__l.__data_);
            goto LABEL_123;
          }

          v84 = 0;
          sub_100261D1C(a1, 2, 3, v83);
          sub_10028ED7C(v83);
          v27 = *(a1 + 904);
          v28 = *(a1 + 912);
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v64, *a2, *(a2 + 8));
          }

          else
          {
            *v64 = *a2;
            v65 = *(a2 + 16);
          }

          v37 = HIBYTE(v65);
          if (v27 == v28)
          {
LABEL_119:
            v45 = 0;
            if ((v37 & 0x80) == 0)
            {
LABEL_121:
              v96[0].__r_.__value_.__s.__data_[0] = 4;
              __p[0] = 9;
              sub_100261ECC(a1, v96, __p, v12, v45, *(v12 + 700));
              goto LABEL_122;
            }
          }

          else
          {
            if (v65 >= 0)
            {
              v38 = HIBYTE(v65);
            }

            else
            {
              v38 = v64[1];
            }

            if (v65 >= 0)
            {
              v39 = v64;
            }

            else
            {
              v39 = v64[0];
            }

            v40 = v27 + 432;
            while (1)
            {
              v41 = *(v40 + 23);
              v42 = v41;
              if ((v41 & 0x80u) != 0)
              {
                v41 = *(v40 + 8);
              }

              if (v38 == v41)
              {
                v43 = v42 >= 0 ? v40 : *v40;
                if (!memcmp(v39, v43, v38))
                {
                  break;
                }
              }

              v44 = v40 + 848;
              v40 += 1280;
              if (v44 == v28)
              {
                goto LABEL_119;
              }
            }

            v45 = 1;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_121;
            }
          }

          operator delete(v64[0]);
          goto LABEL_121;
        }
      }

      else if (v112 == 1)
      {
        v15 = v111;
        if ((v111 & 0x80u) != 0)
        {
          v15 = v110;
        }

        if (v15 && v114 == 1)
        {
          if (sub_10026A3FC(a1, a2))
          {
            sub_10000501C(__p, "TransferAuthWebServRequestTime");
            v96[0].__r_.__value_.__l.__size_ = CFAbsoluteTimeGetCurrent();
            v96[0].__r_.__value_.__r.__words[0] = sub_1002983F8;
            sub_100261328(a1, a2, __p, v96);
            sub_100176638(v96);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            memset(v103, 0, sizeof(v103));
            v102 = 0u;
            v101 = 0u;
            v100 = 0u;
            v99 = 0u;
            v98 = 0u;
            v97 = 0u;
            memset(v96, 0, sizeof(v96));
            sub_1001696A4(v96, &v113);
            if (*(v12 + 992) == 1)
            {
              v95 = 0;
              v94 = 0u;
              memset(__p, 0, sizeof(__p));
              sub_10026A4AC(a1, a2, v91);
              sub_100071A6C(__p);
              *__p = *v91;
              *&__p[16] = v92;
              v92 = 0;
              memset(v91, 0, sizeof(v91));
              v76[0] = v91;
              sub_1000087B4(v76);
              if (*&__p[8] != *__p)
              {
                sub_10026A578(v103, __p);
                v16 = *(a1 + 40);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v17 = a2;
                  }

                  else
                  {
                    v17 = *a2;
                  }

                  *v91 = 136315138;
                  *&v91[4] = v17;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Set transfer-metadata for sourceIccid [%s] in TA HTTP POST", v91, 0xCu);
                }
              }

              if (v95 == 1 && SHIBYTE(v94) < 0)
              {
                operator delete(*&__p[24]);
              }

              *v91 = __p;
              sub_1000087B4(v91);
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v72, *a2, *(a2 + 8));
            }

            else
            {
              *v72 = *a2;
              v73 = *(a2 + 16);
            }

            v85 = a1;
            sub_100004AA0(__p, (a1 + 8));
            v53 = *&__p[8];
            v86 = *__p;
            v87 = *&__p[8];
            if (*&__p[8])
            {
              atomic_fetch_add_explicit((*&__p[8] + 16), 1uLL, memory_order_relaxed);
              sub_100004A34(v53);
            }

            sub_1000224C8(&v88, a3);
            sub_100283910(&v89, buf);
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v90, *a2, *(a2 + 8));
            }

            else
            {
              *v90 = *a2;
              v90[2] = *(a2 + 16);
            }

            v90[3] = v12;
            v90[8] = 0;
            operator new();
          }

          if ((buf[1] & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      v21 = sub_100649E54(buf[0]);
      goto LABEL_44;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017683A4();
    }

    v18 = sub_100932AF0(a5, 1, 0);
    if (*(a1 + 384) == 1)
    {
      *buf = a1 + 360;
      *(sub_10028EDFC(a1 + 1064, (a1 + 360)) + 83) = 1;
      *buf = a1 + 360;
      v19 = sub_10028EDFC(a1 + 1064, (a1 + 360));
      *(v19 + 84) = v18;
      *(v19 + 88) = 1;
    }

    LOBYTE(v76[0]) = 11;
    *buf = 0;
    LOBYTE(v75) = 52;
    v96[0].__r_.__value_.__r.__words[0] = 0;
    *v91 = 263;
    *__p = v18;
    __p[4] = 1;
    sub_1002540BC(a1, a2, v76, 0, buf, &v75, &v96[0].__r_.__value_.__l.__data_, v91, __p, &v74);
    sub_10001021C(&v96[0].__r_.__value_.__l.__data_);
    sub_100005978(buf);
    sub_10000FFD0(a3, 1);
  }
}

void sub_100272300(_Unwind_Exception *a1)
{
  sub_10026A640(&STACK[0x4D0]);
  sub_100283ED8(&STACK[0x510]);
  sub_100283CE0(&STACK[0x610]);
  _Unwind_Resume(a1);
}

BOOL sub_100272600(uint64_t a1, const void **a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 24);
  if (v6)
  {
    v11 = sub_10027640C(a1);
    v12 = *(a1 + 40);
    if (*v11)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        v13 = entitlements::asString();
        v14 = a2;
        if (*(a2 + 23) < 0)
        {
          v14 = *a2;
        }

        *buf = 136446466;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [req][tapost] perform TransferAuthorization with WebServiceRequest [%{public}s] post request. source iccid : %s", buf, 0x16u);
      }

      sub_10026F6EC(a1, 1);
      sub_1002764FC(a1, a2);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100284F98(buf, a4);
      sub_10026AEDC(a1, a2);
      v21 = a1;
      sub_100004AA0(&v19, (a1 + 8));
      v15 = v20;
      v22 = v19;
      v23 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
      }

      sub_10029BA4C(&v24, a6);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, a2[1]);
      }

      else
      {
        *__p = *a2;
        __p[2] = a2[2];
      }

      __p[6] = 0;
      operator new();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768440();
    }

    v17[0] = 0;
    v18 = 0;
    sub_1002764A8(a6, v17, 0);
    if (v18 == 1)
    {
      sub_100284EB4(v17);
    }
  }

  return v6 != 0;
}

void sub_100272968(_Unwind_Exception *a1)
{
  sub_100299F2C((v1 + 4));
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  sub_100276628(&STACK[0x250]);
  sub_100283ED8(&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

uint64_t sub_100272A28(uint64_t a1)
{
  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  sub_100283CE0(a1 + 56);
  sub_10000FF50(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100272A78(uint64_t a1)
{
  sub_100005978((a1 + 72));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_10000FF50(a1 + 8);
  return a1;
}

uint64_t sub_100272ABC(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100272B18(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 352);
  if (v2 == *(a1 + 336))
  {
    return;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(v2 + 343);
  v7 = v6;
  v8 = *(v2 + 328);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v2 + 328);
  }

  if (v5 != v6 + 21)
  {
    return;
  }

  v10 = (v2 + 320);
  if (!v6)
  {
LABEL_17:
    __dst[0] = 0;
    __dst[1] = 0;
    v50 = 0;
    if (v7 < 0)
    {
      sub_100005F2C(__dst, *v10, v8);
    }

    else
    {
      *__dst = *v10;
      v50 = *(v10 + 2);
    }

    v47 = 0;
    v48 = 0;
    (***(a1 + 48))(buf);
    ServiceMap = Registry::getServiceMap(*buf);
    v18 = ServiceMap;
    if (v19 < 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(ServiceMap);
    *&v36 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v36);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
LABEL_28:
        (**v25)(&v47, v25, a2);
        if ((v26 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v27 = *(a1 + 40);
        if (v47)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = __dst;
            if (v50 < 0)
            {
              v28 = __dst[0];
            }

            *buf = 136315138;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [req][tss] perform TransferSIM request. source iccid : %s", buf, 0xCu);
          }

          v74 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          *buf = 0u;
          sub_100269664(a1, __dst, buf);
          v42 = 0;
          v43 = 0;
          sub_100254358(a1, __dst, 5, 0, &v43, &v42);
          sub_10001021C(&v42);
          sub_100005978(&v43);
          *(a1 + 157) = 0;
          v36 = 0u;
          *v37 = 0u;
          *v39 = 0u;
          v40 = 0u;
          v38 = 0u;
          WORD1(v36) = 257;
          DWORD1(v36) = 15;
          BYTE8(v36) = 1;
          HIDWORD(v36) = 1;
          LOBYTE(v37[0]) = 1;
          v41 = 0;
          sub_100004AA0(&v51, (a1 + 8));
          v30 = v51;
          v29 = v52;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v29);
          }

          *(a1 + 154) = 1;
          sub_10026F6EC(a1, 1);
          sub_10026AEDC(a1, __dst);
          v31 = v47;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 1174405120;
          v32[2] = sub_100273178;
          v32[3] = &unk_101E36070;
          v32[4] = a1;
          v32[5] = v30;
          v33 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v50) < 0)
          {
            sub_100005F2C(&__p, __dst[0], __dst[1]);
          }

          else
          {
            __p = *__dst;
            v35 = v50;
          }

          v51 = v32;
          (*(*v31 + 200))(v31, 8, &v36, buf, a1 + 24, &v51);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_weak(v29);
          }

          if (v41 == 1 && SHIBYTE(v40) < 0)
          {
            operator delete(v39[1]);
          }

          if (LOBYTE(v39[0]) == 1 && SHIBYTE(v38) < 0)
          {
            operator delete(v37[1]);
          }

          sub_100280EAC(buf);
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_101766E7C();
          }

          v46 = 11;
          *buf = 0;
          v45 = 56;
          *&v36 = 0;
          v44 = 256;
          LODWORD(v51) = 70014;
          BYTE4(v51) = 1;
          sub_1002540BC(a1, __dst, &v46, 0, buf, &v45, &v36, &v44, &v51, (a1 + 352));
          sub_10001021C(&v36);
          sub_100005978(buf);
        }

        if (v48)
        {
          sub_100004A34(v48);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(__dst[0]);
        }

        return;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_28;
  }

  if (v4 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = v11 + 21;
  if (v7 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = *v10;
  }

  while (1)
  {
    v15 = *v12++;
    v14 = v15;
    v16 = *v13++;
    if (v14 != v16)
    {
      break;
    }

    if (!--v6)
    {
      goto LABEL_17;
    }
  }
}

void sub_100273084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  sub_100270CFC(&a24);
  sub_100280EAC(&a52);
  if (a42)
  {
    sub_100004A34(a42);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100273178(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = std::__shared_weak_count::lock(v5);
    if (v10 && *(a1 + 40))
    {
      sub_10026F6EC(v9, 0);
      v11 = *a2;
      if (a3 && v11 && *(v11 + 24))
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = sub_100531604(*v11);
          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I TSS response with status: %s", buf, 0xCu);
          v11 = *a2;
        }

        if (*v11 == 6000)
        {
          sub_10000501C(v35, "TransferSimServiceResponse");
          memset(buf, 0, sizeof(buf));
          sub_10028FC5C();
        }

        sub_100282340(v22, *(v11 + 24));
        v34 = 1;
        sub_1002736B8(v9, a1 + 56, v22);
        if (v34 == 1)
        {
          if (v33 < 0)
          {
            operator delete(__p);
          }

          if (v31 == 1 && v30 < 0)
          {
            operator delete(v29);
          }

          if (v28 == 1 && v27 < 0)
          {
            operator delete(v26);
          }

          if (v25 == 1 && v24 < 0)
          {
            operator delete(v23);
          }

          *buf = v22;
          sub_10016C644(buf);
        }

LABEL_28:
        sub_100004A34(v10);
        return;
      }

      v39 = 0u;
      v38 = 0u;
      *buf = v9;
      *&buf[8] = v11;
      v16 = a2[1];
      v37 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(&v38, *(a1 + 56), *(a1 + 64));
        v17 = *(a1 + 79);
        DWORD2(v39) = a4;
        if (v17 < 0)
        {
          sub_100005F2C(__dst, *(a1 + 56), *(a1 + 64));
LABEL_36:
          if (v37)
          {
            atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
          }

          if (SBYTE7(v39) < 0)
          {
            sub_100005F2C(v18, v38, *(&v38 + 1));
          }

          else
          {
            *v18 = v38;
            v18[2] = v39;
          }

          v19 = DWORD2(v39);
          v35[6] = 0;
          operator new();
        }
      }

      else
      {
        v38 = *(a1 + 56);
        *&v39 = *(a1 + 72);
        DWORD2(v39) = a4;
      }

      *__dst = *(a1 + 56);
      v21 = *(a1 + 72);
      goto LABEL_36;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
  v15 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v10)
  {
    goto LABEL_28;
  }
}

void sub_1002735CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_100274ED4(v26 - 144);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

const void **sub_1002736B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [resp][tss] processing TransferSIM response. source iccid : %s", buf, 0xCu);
  }

  *(a1 + 154) = 0;
  result = sub_10025CD10((a1 + 328), a2);
  v101 = result;
  if (*(a1 + 336) == result)
  {
    return result;
  }

  v99 = 0;
  cf = 0;
  if ((*(a3 + 152) & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E No response for Transfer Sim service", buf, 2u);
    }

    sub_10000501C(buf, "TransferSimServiceResponse");
    sub_10000501C(&buf[24], "TransferSimServiceViaWebServiceResponse");
    memset(v103, 0, 24);
    sub_10016FB64(v103, buf, &buf[48], 2uLL);
    sub_10026CC78(a1, a2, v103);
    v131.__r_.__value_.__r.__words[0] = v103;
    sub_1000087B4(&v131);
    for (i = 0; i != -48; i -= 24)
    {
      if (buf[i + 47] < 0)
      {
        operator delete(*&buf[i + 24]);
      }
    }

    v14 = sub_100932AF0(8, 0, 0);
    LOBYTE(v93) = 11;
    LOBYTE(v102) = 56;
    sub_100010180(buf, &v99);
    LOWORD(v131.__r_.__value_.__l.__data_) = 256;
    *v103 = v14;
    v103[4] = 1;
    sub_1002540BC(a1, a2, &v93, 0, &cf, &v102, buf, &v131, v103, &v101);
    goto LABEL_17;
  }

  v9 = result;
  v10 = *(a3 + 151);
  if (v10 < 0)
  {
    v11 = *(a3 + 136);
  }

  else
  {
    v11 = *(a3 + 151);
  }

  if (v11)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a3 + 128;
      if ((v10 & 0x80000000) != 0)
      {
        v16 = *(a3 + 128);
      }

      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Carrier error in response: %s for source iccid:%s", buf, 0x16u);
    }

    memset(&v131, 0, sizeof(v131));
    sub_10026EB60(a1, a2, (a3 + 128), &v131);
    v18 = sub_10093103C(&v131);
    v19 = sub_100932AF0(8, 1, 0);
    v20 = *a3;
    if (*a3 == *(a3 + 8))
    {
      goto LABEL_59;
    }

    size = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = v20->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_59:
      if (v18 == 57)
      {
        LOBYTE(v18) = 52;
      }

      sub_100319F10(v9, 7);
      sub_100319F28(v9, v19);
      sub_1001696A4((v9 + 1000), (a3 + 128));
      sub_1001696A4((v9 + 1032), &v131);
      if ((*(a1 + 147) & 1) == 0 && *(a3 + 48) == 1)
      {
        memset(v103, 0, 24);
        if (*(a3 + 47) < 0)
        {
          sub_100005F2C(v103, *(a3 + 24), *(a3 + 32));
        }

        else
        {
          *v103 = *(a3 + 24);
          *&v103[16] = *(a3 + 40);
        }

        if (v103[23] >= 0)
        {
          v44 = v103;
        }

        else
        {
          v44 = *v103;
        }

        v45 = CFStringCreateWithCString(kCFAllocatorDefault, v44, 0x8000100u);
        v46 = cf;
        cf = v45;
        *buf = v46;
        sub_100005978(buf);
        v130 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_10006F264(&v97, (a3 + 56));
        sub_100274FE4(v9, &v97, v47, buf);
        if (v98 == 1 && SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v49 = v99;
          v99 = Mutable;
          v93 = v49;
          sub_1000296E0(&v93);
          sub_100029714(&v96, &v99);
          sub_100986680(&v96, buf);
          sub_1000296E0(&v96);
        }

        sub_10016F298(buf);
        if ((v103[23] & 0x80000000) != 0)
        {
          operator delete(*v103);
        }
      }

      memset(&buf[8], 0, 72);
      *buf = a1;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&buf[8], *a2, *(a2 + 8));
      }

      else
      {
        *&buf[8] = *a2;
        *&buf[24] = *(a2 + 16);
      }

      buf[32] = 0;
      *&buf[40] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      buf[48] = v18;
      *&buf[56] = v99;
      if (v99)
      {
        CFRetain(v99);
      }

      *&buf[64] = v9;
      *&buf[72] = v19;
      sub_10000501C(v103, "TransferSimServiceResponse");
      sub_10000501C(&v103[24], "TransferSimServiceViaWebServiceResponse");
      v93 = 0;
      v94 = 0;
      v95 = 0;
      sub_10016FB64(&v93, v103, &v105, 2uLL);
      sub_10026CC78(a1, a2, &v93);
      v102 = &v93;
      sub_1000087B4(&v102);
      v50 = 0;
      while (1)
      {
        if (*(&v104 + v50 + 15) < 0)
        {
          operator delete(*&v103[v50 + 24]);
        }

        v50 -= 24;
        if (v50 == -48)
        {
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v92, *a2, *(a2 + 8));
          }

          else
          {
            *v92 = *a2;
            v92[2] = *(a2 + 16);
          }

          v84[1] = *buf;
          if ((buf[31] & 0x80000000) != 0)
          {
            sub_100005F2C(v85, *&buf[8], *&buf[16]);
          }

          else
          {
            *v85 = *&buf[8];
            v85[2] = *&buf[24];
          }

          v86 = buf[32];
          v87 = *&buf[40];
          if (*&buf[40])
          {
            CFRetain(*&buf[40]);
          }

          v88 = buf[48];
          v89 = *&buf[56];
          if (*&buf[56])
          {
            CFRetain(*&buf[56]);
          }

          v90 = *&buf[64];
          v91 = *&buf[72];
          v112 = 0;
          operator new();
        }
      }
    }

    if (v18 == 57)
    {
      v84[0] = cf;
      sub_100010180(&v83, &v99);
      sub_100254358(a1, a2, 5, 57, v84, &v83);
      sub_10001021C(&v83);
      sub_100005978(v84);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }
  }

  if (v9 + 744 != a3)
  {
    sub_1002845C0((v9 + 744), *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5));
  }

  if (*(a3 + 112) != 1)
  {
    goto LABEL_42;
  }

  v22 = *(a3 + 111);
  if (v22 < 0)
  {
    v22 = *(a3 + 96);
  }

  if (v22)
  {
    sub_10026CAF4(a1, a2, (a3 + 88));
  }

  else
  {
LABEL_42:
    sub_100261590(a1, buf);
    sub_10026CAF4(a1, a2, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_1002751F4(a1, a2, a3))
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(a3 + 80) == 1)
    {
      sub_1001696A4(&buf[32], (a3 + 56));
    }

    if (*(v9 + 992) == 1)
    {
      v105 = 0;
      v104 = 0u;
      memset(v103, 0, sizeof(v103));
      sub_10026A4AC(a1, a2, &v131);
      sub_100071A6C(v103);
      *v103 = v131;
      memset(&v131, 0, sizeof(v131));
      v93 = &v131;
      sub_1000087B4(&v93);
      if (*&v103[8] != *v103)
      {
        sub_10026A578(&v121, v103);
        v23 = *(a1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v24 = a2;
          }

          else
          {
            v24 = *a2;
          }

          LODWORD(v131.__r_.__value_.__l.__data_) = 136315138;
          *(v131.__r_.__value_.__r.__words + 4) = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Set transfer-metadata for sourceIccid [%s] in TSS HTTP POST", &v131, 0xCu);
        }
      }

      if (v105 == 1 && SHIBYTE(v104) < 0)
      {
        operator delete(*&v103[24]);
      }

      v131.__r_.__value_.__r.__words[0] = v103;
      sub_1000087B4(&v131);
    }

    sub_100275244(a1, a3, buf);
    sub_100283ED8(buf);
    goto LABEL_195;
  }

  v26 = *a3;
  v25 = *(a3 + 8);
  v27 = *a3 != v25;
  if (*(a1 + 147) == 1 && v26 == v25 && (*(v9 + 1066) & 1) == 0)
  {
    v42 = *(a1 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#E No websheet allowed in buddy", buf, 2u);
    }

    LOBYTE(v93) = 11;
    LOBYTE(v102) = 40;
    sub_100010180(buf, &v99);
    LOWORD(v131.__r_.__value_.__l.__data_) = 262;
    *v103 = 70022;
    v103[4] = 1;
    sub_1002540BC(a1, a2, &v93, 0, &cf, &v102, buf, &v131, v103, &v101);
    goto LABEL_17;
  }

  v67 = *(a3 + 8);
  v28 = *(v9 + 744);
  v29 = *(v9 + 752);
  v30 = 1;
  while (v28 != v29)
  {
    if ((*(v28 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v28 + 8))
      {
        goto LABEL_76;
      }
    }

    else if (!*(v28 + 23))
    {
      goto LABEL_76;
    }

    sub_100261C64(a1, a2, v28);
    if (*(v28 + 89) == 1)
    {
      v30 &= *(v28 + 88);
    }

LABEL_76:
    v28 += 96;
  }

  v66 = v26;
  v65 = v27;
  v31 = *(a1 + 904);
  v32 = *(a1 + 912);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v82 = *(a2 + 16);
  }

  v33 = HIBYTE(v82);
  if (v31 == v32)
  {
LABEL_96:
    v41 = 0;
  }

  else
  {
    if (v82 >= 0)
    {
      v34 = HIBYTE(v82);
    }

    else
    {
      v34 = *(&__dst + 1);
    }

    if (v82 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v36 = v31 + 432;
    while (1)
    {
      v37 = *(v36 + 23);
      v38 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v37 = *(v36 + 8);
      }

      if (v34 == v37)
      {
        v39 = v38 >= 0 ? v36 : *v36;
        if (!memcmp(p_dst, v39, v34))
        {
          break;
        }
      }

      v40 = v36 + 848;
      v36 += 1280;
      if (v40 == v32)
      {
        goto LABEL_96;
      }
    }

    v41 = 1;
  }

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  if (*(a3 + 121) == 1 && *(a3 + 120) == 1)
  {
    sub_10005C7A4(&v80, &cf);
    sub_100010180(&v79, &v99);
    sub_100254358(a1, a2, 9, 0, &v80, &v79);
    sub_10001021C(&v79);
    sub_100005978(&v80);
    if (v30)
    {
      v111 = 0;
      v43 = v110;
      sub_100261D1C(a1, 2, 3, v110);
      goto LABEL_142;
    }

    if (*(a1 + 157) == 1)
    {
      v109 = 0;
      v43 = v108;
      sub_100261D1C(a1, 2, 3, v108);
LABEL_142:
      sub_10028ED7C(v43);
    }

    buf[0] = sub_100931FB4(*(v9 + 696));
    v103[0] = 9;
    sub_100261ECC(a1, buf, v103, v9, v41, *(v9 + 700));
  }

  if (v66 != v67)
  {
    if (*(a3 + 121) == 1 && *(a3 + 120) == 1)
    {
      sub_10005C7A4(&v78, &cf);
      sub_100010180(&v77, &v99);
      sub_100254358(a1, a2, 9, 0, &v78, &v77);
      sub_10001021C(&v77);
      sub_100005978(&v78);
      sub_100254C38(a1);
      goto LABEL_194;
    }

    if (v30)
    {
      v51 = *(a1 + 72);
      if (v51)
      {
        v52 = std::__shared_weak_count::lock(v51);
        if (v52)
        {
          v53 = v52;
          v54 = *(a1 + 64);
          if (v54)
          {
            sub_10005C7A4(&v76, &cf);
            sub_100010180(&v75, &v99);
            sub_100254358(a1, a2, 7, 0, &v76, &v75);
            sub_10001021C(&v75);
            sub_100005978(&v76);
            (*(*v54 + 48))(v54, a2, v9 + 744, 3);
            buf[0] = sub_100931FB4(*(v9 + 696));
            v103[0] = 7;
            sub_100261ECC(a1, buf, v103, v9, v41, *(v9 + 700));
          }

          sub_100004A34(v53);
        }
      }

      sub_100254C38(a1);
      goto LABEL_194;
    }

    sub_100261028(a1, a2, 1);
    buf[0] = sub_100931FB4(*(v9 + 696));
    v103[0] = 8;
    sub_100261ECC(a1, buf, v103, v9, v41, *(v9 + 700));
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v73, *a2, *(a2 + 8));
    }

    else
    {
      v73 = *a2;
      v74 = *(a2 + 16);
    }

    sub_100255D0C(a1, &v73);
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      goto LABEL_194;
    }

    v57 = v73;
LABEL_193:
    operator delete(v57);
    goto LABEL_194;
  }

  if (*(a3 + 48) != 1)
  {
    v55 = *(a1 + 40);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#E TSS response error. Non one-click response without websheet url", buf, 2u);
    }

    sub_10000501C(buf, "TransferSimServiceResponse");
    sub_10000501C(&buf[24], "TransferSimServiceViaWebServiceResponse");
    memset(v103, 0, 24);
    sub_10016FB64(v103, buf, &buf[48], 2uLL);
    sub_10026CC78(a1, a2, v103);
    v131.__r_.__value_.__r.__words[0] = v103;
    sub_1000087B4(&v131);
    for (j = 0; j != -48; j -= 24)
    {
      if (buf[j + 47] < 0)
      {
        operator delete(*&buf[j + 24]);
      }
    }

    LOBYTE(v93) = 11;
    LOBYTE(v102) = 52;
    sub_100010180(buf, &v99);
    LOWORD(v131.__r_.__value_.__l.__data_) = 263;
    *v103 = 70086;
    v103[4] = 1;
    sub_1002540BC(a1, a2, &v93, 0, &cf, &v102, buf, &v131, v103, &v101);
LABEL_17:
    sub_10001021C(buf);
    goto LABEL_195;
  }

  memset(&v131, 0, sizeof(v131));
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(&v131, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v131 = *(a3 + 24);
  }

  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v131;
  }

  else
  {
    v58 = v131.__r_.__value_.__r.__words[0];
  }

  v59 = CFStringCreateWithCString(kCFAllocatorDefault, v58, 0x8000100u);
  v60 = cf;
  cf = v59;
  *buf = v60;
  sub_100005978(buf);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10006F264(&v71, (a3 + 56));
  sub_100274FE4(v9, &v71, v61, buf);
  if (v72 == 1 && SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v62 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v62)
  {
    v63 = v99;
    v99 = v62;
    *v103 = v63;
    sub_1000296E0(v103);
    sub_100029714(&v70, &v99);
    sub_100986680(&v70, buf);
    sub_1000296E0(&v70);
  }

  *v103 = v65;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v103[8], *a2, *(a2 + 8));
  }

  else
  {
    *&v103[8] = *a2;
    *&v103[24] = *(a2 + 16);
  }

  if (*(v9 + 439) < 0)
  {
    sub_100005F2C(&v104, *(v9 + 416), *(v9 + 424));
  }

  else
  {
    v104 = *(v9 + 416);
    v105 = *(v9 + 432);
  }

  sub_10005C7A4(&v106, &cf);
  sub_100010180(&v107, &v99);
  sub_100254AA0(a1 + 448, v103);
  sub_100254BE4(v103);
  sub_100261590(a1, v103);
  sub_1002610E0(a1, v103);
  if ((v103[23] & 0x80000000) != 0)
  {
    operator delete(*v103);
  }

  sub_10000501C(v103, "TransferSimServiceResponse");
  sub_10000501C(&v103[24], "TransferSimServiceViaWebServiceResponse");
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_10016FB64(&v93, v103, &v105, 2uLL);
  sub_10026CC78(a1, a2, &v93);
  v102 = &v93;
  sub_1000087B4(&v102);
  for (k = 0; k != -48; k -= 24)
  {
    if (*(&v104 + k + 15) < 0)
    {
      operator delete(*&v103[k + 24]);
    }
  }

  sub_10005C7A4(&v69, &cf);
  sub_100010180(&v68, &v99);
  sub_100254358(a1, a2, 6, 0, &v69, &v68);
  sub_10001021C(&v68);
  sub_100005978(&v69);
  sub_10016F298(buf);
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    v57 = v131.__r_.__value_.__r.__words[0];
    goto LABEL_193;
  }

LABEL_194:
  sub_100254E74(a1);
LABEL_195:
  sub_1000296E0(&v99);
  return sub_100005978(&cf);
}