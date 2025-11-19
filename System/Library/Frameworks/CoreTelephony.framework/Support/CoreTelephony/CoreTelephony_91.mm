void sub_1005E3934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  *(v66 - 112) = v64;
  sub_100112048((v66 - 112));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  v68 = sub_10027E6B0(v66 - 256);
  *(v66 - 256) = &a49;
  sub_100112048(v68);
  sub_100004A34(v63);
  _Unwind_Resume(a1);
}

void sub_1005E3A20(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [ActivateProfileReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        sub_1005EB888(&v77);
        v10 = *(a3 + 8);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16)
        {
          v12 = *(v10 + 16);
          if (v12)
          {
            v13 = *v11;
            v14 = *v13;
            v15 = v13[1];
            if (*(v12 + 23) < 0)
            {
              sub_100005F2C(&v73, *v12, *(v12 + 1));
            }

            else
            {
              v16 = *v12;
              v74 = *(v12 + 2);
              v73 = v16;
            }

            v75 = 1;
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 1174405120;
            v63[2] = sub_1005EB924;
            v63[3] = &unk_101E69978;
            v63[4] = a1;
            v71[2] = v14;
            v71[3] = v15;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(&v64, *a2, *(a2 + 1));
            }

            else
            {
              v64 = *a2;
              v65 = *(a2 + 2);
            }

            if (*(a2 + 47) < 0)
            {
              sub_100005F2C(&v66, *(a2 + 3), *(a2 + 4));
            }

            else
            {
              v66 = *(a2 + 24);
              v67 = *(a2 + 5);
            }

            v68 = *(a2 + 24);
            sub_10002D728(&v69, a2 + 7);
            sub_1002030F8(&v70, a2 + 8);
            v71[0] = *(a2 + 9);
            *(v71 + 6) = *(a2 + 78);
            (*(*v9 + 16))(v9, v14, v15, v72, v63);
            if (SHIBYTE(v74) < 0)
            {
              operator delete(v73);
            }

            sub_1002030AC(&v70);
            sub_10002D760(&v69);
            if (SHIBYTE(v67) < 0)
            {
              operator delete(v66);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64);
            }

LABEL_48:
            if (SBYTE7(v79) < 0)
            {
              operator delete(v78);
            }

LABEL_50:
            sub_100004A34(v8);
            return;
          }

          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          *buf = 0u;
          v55 = 0u;
          sub_100A34C5C(buf);
          v51 = 0u;
          *v52 = 0u;
          v53 = 0;
          *v49 = 0u;
          v50 = 0u;
          *v48 = 0u;
          v52[8] = 2;
          *&v52[12] = 0x50000003CLL;
          sub_100A35E6C(buf);
          v22 = *&buf[8];
          *(*&buf[8] + 24) |= 1u;
          *(v22 + 16) = 1;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v23 = asString();
            sub_101775AA8(v23, v76);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v24, *a2, *(a2 + 1));
          }

          else
          {
            v24 = *a2;
            v25 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v26, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v26 = *(a2 + 24);
            v27 = *(a2 + 5);
          }

          v28 = *(a2 + 24);
          sub_10002D728(&v29, a2 + 7);
          sub_1002030F8(&v30, a2 + 8);
          v31[0] = *(a2 + 9);
          *(v31 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, &v24, buf);
          sub_1002030AC(&v30);
          sub_10002D760(&v29);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }

          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
LABEL_43:
            sub_1002030AC(v52);
            sub_10002D760(&v51 + 1);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(v49[1]);
            }

            if (SHIBYTE(v49[0]) < 0)
            {
              operator delete(v48[0]);
            }

            sub_100A34FF0(buf);
            goto LABEL_48;
          }

          v21 = v24;
        }

        else
        {
          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          *buf = 0u;
          v55 = 0u;
          sub_100A34C5C(buf);
          v51 = 0u;
          *v52 = 0u;
          v53 = 0;
          *v49 = 0u;
          v50 = 0u;
          *v48 = 0u;
          v52[8] = 2;
          *&v52[12] = 0x50000003CLL;
          sub_100A35E6C(buf);
          v19 = *&buf[8];
          *(*&buf[8] + 24) |= 1u;
          *(v19 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v20 = asString();
            sub_101775AA8(v20, v76);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v32, *a2, *(a2 + 1));
          }

          else
          {
            *v32 = *a2;
            v33 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v34, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v34 = *(a2 + 24);
            v35 = *(a2 + 5);
          }

          v36 = *(a2 + 24);
          sub_10002D728(&v37, a2 + 7);
          sub_1002030F8(&v38, a2 + 8);
          v39[0] = *(a2 + 9);
          *(v39 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v32, buf);
          sub_1002030AC(&v38);
          sub_10002D760(&v37);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34);
          }

          if ((SHIBYTE(v33) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v21 = v32[0];
        }

        operator delete(v21);
        goto LABEL_43;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  v55 = 0u;
  sub_100A34C5C(buf);
  v51 = 0u;
  *v52 = 0u;
  v53 = 0;
  *v49 = 0u;
  v50 = 0u;
  *v48 = 0u;
  v52[8] = 2;
  *&v52[12] = 0x50000003CLL;
  sub_100A35E6C(buf);
  v17 = *&buf[8];
  *(*&buf[8] + 24) |= 1u;
  *(v17 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v18 = asString();
    sub_101775AA8(v18, &v77);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v41 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v43 = *(a2 + 5);
  }

  v44 = *(a2 + 24);
  sub_10002D728(&v45, a2 + 7);
  sub_1002030F8(&v46, a2 + 8);
  v47[0] = *(a2 + 9);
  *(v47 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v46);
  sub_10002D760(&v45);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v52);
  sub_10002D760(&v51 + 1);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[1]);
  }

  if (SHIBYTE(v49[0]) < 0)
  {
    operator delete(v48[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_50;
  }
}

void sub_1005E417C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a48);
  sub_100A34FF0(&a60);
  if (*(v61 - 89) < 0)
  {
    operator delete(*(v61 - 112));
  }

  sub_100004A34(v60);
  _Unwind_Resume(a1);
}

void sub_1005E42A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [UpdateProfileReq]", &buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v43 = 0;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v10 = *(a3 + 104);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16 && *(v10 + 16) && (*(v10 + 60) & 1) != 0)
        {
          v16 = *v11;
          v17 = *v16;
          v33 = v16[1];
          if ((cellplan::deserializeRemotePlanSimSubscriptionStatus() & 1) == 0 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101775AE0();
          }

          v32 = v17;
          v18 = *(a3 + 104);
          v19 = *(v18 + 32);
          v20 = *(v18 + 40);
          while (v19 != v20)
          {
            v21 = *v19;
            *&v62 = 0;
            memset(v61, 0, sizeof(v61));
            v59 = 0u;
            v60 = 0u;
            buf = 0u;
            if (sub_10039F468(v21, &buf))
            {
              v23 = v81;
              v22 = v82;
              if (v81 != v82)
              {
                while ((cellplan::operator==() & 1) == 0)
                {
                  v23 += 88;
                  if (v23 == v22)
                  {
                    v23 = v22;
                    break;
                  }
                }

                v22 = v82;
              }

              if (v23 == v22)
              {
                if (v22 >= v83)
                {
                  v25 = sub_10046A178(&v81, &buf);
                }

                else
                {
                  if (SBYTE7(v59) < 0)
                  {
                    sub_100005F2C(v22, buf, *(&buf + 1));
                  }

                  else
                  {
                    v24 = buf;
                    *(v22 + 16) = v59;
                    *v22 = v24;
                  }

                  *(v22 + 24) = DWORD2(v59);
                  if (SHIBYTE(v61[0]) < 0)
                  {
                    sub_100005F2C((v22 + 32), v60, *(&v60 + 1));
                  }

                  else
                  {
                    v26 = v60;
                    *(v22 + 48) = v61[0];
                    *(v22 + 32) = v26;
                  }

                  if (SHIBYTE(v61[3]) < 0)
                  {
                    sub_100005F2C((v22 + 56), v61[1], v61[2]);
                  }

                  else
                  {
                    v27 = *&v61[1];
                    *(v22 + 72) = v61[3];
                    *(v22 + 56) = v27;
                  }

                  *(v22 + 80) = v62;
                  v25 = v22 + 88;
                }

                v82 = v25;
              }
            }

            if (SHIBYTE(v61[3]) < 0)
            {
              operator delete(v61[1]);
            }

            if (SHIBYTE(v61[0]) < 0)
            {
              operator delete(v60);
            }

            if (SBYTE7(v59) < 0)
            {
              operator delete(buf);
            }

            ++v19;
          }

          sub_100004AA0(&buf, (a1 + 8));
          v28 = buf;
          if (*(&buf + 1))
          {
            atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(*(&v28 + 1));
          }

          v29 = *(*(a3 + 104) + 16);
          if (*(v29 + 23) < 0)
          {
            sub_100005F2C(&v77, *v29, *(v29 + 1));
          }

          else
          {
            v30 = *v29;
            v78 = *(v29 + 2);
            v77 = v30;
          }

          v79 = 1;
          v31 = v43;
          memset(v34, 0, sizeof(v34));
          sub_10052F088(v34, v81, v82, 0x2E8BA2E8BA2E8BA3 * ((v82 - v81) >> 3));
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 1174405120;
          v66[2] = sub_1005EBC9C;
          v66[3] = &unk_101E699D8;
          v66[4] = a1;
          v67 = v28;
          if (*(&v28 + 1))
          {
            atomic_fetch_add_explicit((*(&v28 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v75[2] = v32;
          v75[3] = v33;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v68, *a2, *(a2 + 1));
          }

          else
          {
            v68 = *a2;
            v69 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v70, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v70 = *(a2 + 24);
            v71 = *(a2 + 5);
          }

          v72 = *(a2 + 24);
          sub_10002D728(&v73, a2 + 7);
          sub_1002030F8(&v74, a2 + 8);
          v75[0] = *(a2 + 9);
          *(v75 + 6) = *(a2 + 78);
          (*(*v9 + 32))(v9, v32, v33, v76, v31, v34, v66);
          *&buf = v34;
          sub_1005235F4(&buf);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          sub_1002030AC(&v74);
          sub_10002D760(&v73);
          if (SHIBYTE(v71) < 0)
          {
            operator delete(v70);
          }

          if (SHIBYTE(v69) < 0)
          {
            operator delete(v68);
          }

          if (*(&v67 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v67 + 1));
          }

          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v28 + 1));
          }
        }

        else
        {
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          v60 = 0u;
          memset(v61, 0, sizeof(v61));
          buf = 0u;
          v59 = 0u;
          sub_100A34C5C(&buf);
          v55 = 0u;
          *v56 = 0u;
          v57 = 0;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          v56[8] = 2;
          *&v56[12] = 0x50000003CLL;
          sub_100A360AC(&buf);
          v12 = v64;
          *(v64 + 24) |= 1u;
          *(v12 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v13 = asString();
            sub_101775AA8(v13, v80);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v35, *a2, *(a2 + 1));
          }

          else
          {
            *v35 = *a2;
            v36 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v37, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v37 = *(a2 + 24);
            v38 = *(a2 + 5);
          }

          v39 = *(a2 + 24);
          sub_10002D728(&v40, a2 + 7);
          sub_1002030F8(&v41, a2 + 8);
          v42[0] = *(a2 + 9);
          *(v42 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v35, &buf);
          sub_1002030AC(&v41);
          sub_10002D760(&v40);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37);
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[0]);
          }

          sub_1002030AC(v56);
          sub_10002D760(&v55 + 1);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(*(&v53 + 1));
          }

          if (SBYTE7(v53) < 0)
          {
            operator delete(v52);
          }

          sub_100A34FF0(&buf);
        }

        *&buf = &v81;
        sub_1005235F4(&buf);
        goto LABEL_32;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  buf = 0u;
  v59 = 0u;
  sub_100A34C5C(&buf);
  v55 = 0u;
  *v56 = 0u;
  v57 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v56[8] = 2;
  *&v56[12] = 0x50000003CLL;
  sub_100A360AC(&buf);
  v14 = v64;
  *(v64 + 24) |= 1u;
  *(v14 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    sub_101775AA8(v15, &v81);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v45 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v47 = *(a2 + 5);
  }

  v48 = *(a2 + 24);
  sub_10002D728(&v49, a2 + 7);
  sub_1002030F8(&v50, a2 + 8);
  v51[0] = *(a2 + 9);
  *(v51 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, &buf);
  sub_1002030AC(&v50);
  sub_10002D760(&v49);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v56);
  sub_10002D760(&v55 + 1);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(*(&v53 + 1));
  }

  if (SBYTE7(v53) < 0)
  {
    operator delete(v52);
  }

  sub_100A34FF0(&buf);
  if (v8)
  {
LABEL_32:
    sub_100004A34(v8);
  }
}

void sub_1005E4AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (STACK[0x210])
  {
    std::__shared_weak_count::__release_weak(STACK[0x210]);
  }

  a51 = &a12;
  sub_1005235F4(&a51);
  if (*(v53 - 153) < 0)
  {
    operator delete(*(v53 - 176));
  }

  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  a39 = v53 - 128;
  sub_1005235F4(&a39);
  if (v51)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(a1);
}

void sub_1005E4C68(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [DeleteProfileReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        *__src = 0u;
        v65 = 0u;
        v63 = 0u;
        sub_1005EB888(&v63);
        v10 = *(a3 + 16);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16)
        {
          v12 = *v11;
          v13 = *v12;
          v14 = v12[1];
          v15 = *(v10 + 16);
          if (v15)
          {
            if (*(v15 + 23) < 0)
            {
              sub_100005F2C(&v67, *v15, *(v15 + 1));
            }

            else
            {
              v16 = *v15;
              *&v68 = *(v15 + 2);
              v67 = v16;
            }

            v23 = 1;
            BYTE8(v68) = 1;
            v63 = *buf;
            if (SBYTE7(v65) < 0)
            {
              operator delete(__src[0]);
              v23 = BYTE8(v68);
            }

            *__src = v67;
            *&v65 = v68;
          }

          else
          {
            sub_1013F05F4(buf);
            v63 = *buf;
            if (SBYTE7(v65) < 0)
            {
              operator delete(__src[0]);
            }

            *__src = v67;
            *&v65 = v68;
            v23 = BYTE8(v68);
          }

          BYTE8(v65) = v23;
          sub_100004AA0(buf, (a1 + 8));
          v25 = *buf;
          v24 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v24);
          }

          v58 = v63;
          if (SBYTE7(v65) < 0)
          {
            sub_100005F2C(&v59, __src[0], __src[1]);
          }

          else
          {
            v59 = *__src;
            v60 = v65;
          }

          v61 = BYTE8(v65);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 1174405120;
          v48[2] = sub_1005EC280;
          v48[3] = &unk_101E69A38;
          v48[4] = a1;
          v48[5] = v25;
          v49 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v57[2] = v13;
          v57[3] = v14;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v50, *a2, *(a2 + 1));
          }

          else
          {
            v50 = *a2;
            v51 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v52, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v52 = *(a2 + 24);
            v53 = *(a2 + 5);
          }

          v54 = *(a2 + 24);
          sub_10002D728(&v55, a2 + 7);
          sub_1002030F8(&v56, a2 + 8);
          v57[0] = *(a2 + 9);
          *(v57 + 6) = *(a2 + 78);
          (*(*v9 + 24))(v9, v13, v14, &v58, v48);
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          sub_1002030AC(&v56);
          sub_10002D760(&v55);
          if (SHIBYTE(v53) < 0)
          {
            operator delete(v52);
          }

          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_weak(v49);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        else
        {
          v74 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *buf = 0u;
          v67 = 0u;
          sub_100A34C5C(buf);
          v45 = 0u;
          *v46 = 0u;
          v47 = 0;
          *v43 = 0u;
          v44 = 0u;
          *v42 = 0u;
          v46[8] = 2;
          *&v46[12] = 0x50000003CLL;
          sub_100A35EFC(v20);
          v21 = v67;
          *(v67 + 24) |= 1u;
          *(v21 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v22 = asString();
            sub_101775AA8(v22, v62);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v26, *a2, *(a2 + 1));
          }

          else
          {
            *v26 = *a2;
            v27 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v28, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v28 = *(a2 + 24);
            v29 = *(a2 + 5);
          }

          v30 = *(a2 + 24);
          sub_10002D728(&v31, a2 + 7);
          sub_1002030F8(&v32, a2 + 8);
          v33[0] = *(a2 + 9);
          *(v33 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v26, buf);
          sub_1002030AC(&v32);
          sub_10002D760(&v31);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28[0]);
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }

          sub_1002030AC(v46);
          sub_10002D760(&v45 + 1);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[1]);
          }

          if (SHIBYTE(v43[0]) < 0)
          {
            operator delete(v42[0]);
          }

          sub_100A34FF0(buf);
        }

        if (SBYTE7(v65) < 0)
        {
          operator delete(__src[0]);
        }

LABEL_79:
        sub_100004A34(v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *buf = 0u;
  v67 = 0u;
  sub_100A34C5C(buf);
  v45 = 0u;
  *v46 = 0u;
  v47 = 0;
  *v43 = 0u;
  v44 = 0u;
  *v42 = 0u;
  v46[8] = 2;
  *&v46[12] = 0x50000003CLL;
  sub_100A35EFC(v17);
  v18 = v67;
  *(v67 + 24) |= 1u;
  *(v18 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v19 = asString();
    sub_101775AA8(v19, &v63);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v35 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v37 = *(a2 + 5);
  }

  v38 = *(a2 + 24);
  sub_10002D728(&v39, a2 + 7);
  sub_1002030F8(&v40, a2 + 8);
  v41[0] = *(a2 + 9);
  *(v41 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v40);
  sub_10002D760(&v39);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v46);
  sub_10002D760(&v45 + 1);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[1]);
  }

  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(v42[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_79;
  }
}

void sub_1005E5360(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1005E5488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [TransferProfileReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = *(a3 + 96);
        v11 = *(v10 + 40);
        if (v11)
        {
          if ((*(v11 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v11 + 1))
            {
LABEL_9:
              v105 = 0;
              v104 = 0uLL;
              if (*(v11 + 23) < 0)
              {
                sub_100005F2C(&v104, *v11, *(v11 + 1));
              }

              else
              {
                v12 = *v11;
                v105 = *(v11 + 2);
                v104 = v12;
              }

              v102 = 0uLL;
              v17 = *(v10 + 32);
              if (v17 && v17[1] == 16)
              {
                v103 = **v17;
                v18 = *(v10 + 48);
                if (v18 && v18[1] == 16)
                {
                  v102 = **v18;
                  if (*(v10 + 100))
                  {
                    v27 = *(v10 + 96);
                    if ((v27 & 0xFFFFFFFE) == 2)
                    {
                      if (SHIBYTE(v105) < 0)
                      {
                        sub_100005F2C(&buf[16], v104, *(&v104 + 1));
                        v27 = *(v10 + 96);
                      }

                      else
                      {
                        *&buf[16] = v104;
                        *&v88 = v105;
                      }

                      BYTE8(v88) = 1;
                      if (v27 == 3)
                      {
                        v39 = 2;
                      }

                      else
                      {
                        v39 = 4;
                      }

                      if (v27 == 2)
                      {
                        v40 = 3;
                      }

                      else
                      {
                        v40 = v39;
                      }

                      (*(*v9 + 40))(v9, &v102, buf, v40);
                      if (SBYTE7(v88) < 0)
                      {
                        operator delete(*&buf[16]);
                      }

                      *buf = a1;
                      sub_1005ACCF0(&buf[8], a2);
                      v91 = v104;
                      *&v92 = v105;
                      v105 = 0;
                      v104 = 0uLL;
                      sub_1005EC924((a1 + 8));
                    }

                    v28 = *(v10 + 64);
                    if (v28)
                    {
                      v29 = *(v10 + 56);
                      if (v29)
                      {
                        memset(v81, 0, 24);
                        memset(&v101, 0, sizeof(v101));
                        memset(&v46, 0, sizeof(v46));
                        v30 = *(v10 + 88);
                        if (v30)
                        {
                          std::string::operator=(&v101, v30);
                        }

                        v31 = *(v10 + 72);
                        if (v31)
                        {
                          std::string::operator=(&v46, v31);
                        }

                        v32 = *(v10 + 80);
                        if (v32)
                        {
                          std::string::operator=(v81, v32);
                        }

                        v44 = 0;
                        v45 = 0;
                        v43 = 0;
                        v33 = *(v10 + 8);
                        v34 = *(v10 + 16);
                        if (v33 != v34)
                        {
                          v35 = 0;
                          do
                          {
                            if (v35 >= v45)
                            {
                              v35 = sub_1000053A0(&v43, v33);
                            }

                            else
                            {
                              sub_10011C7A4(&v43, v33);
                              v35 += 24;
                            }

                            v44 = v35;
                            v33 = (v33 + 24);
                          }

                          while (v33 != v34);
                        }

                        v86 = &v102;
                        v36 = sub_100289074(a1 + 160, &v102);
                        std::string::operator=(v36 + 2, a2);
                        *buf = a1;
                        if (SHIBYTE(v105) < 0)
                        {
                          sub_100005F2C(&buf[8], v104, *(&v104 + 1));
                        }

                        else
                        {
                          *&buf[8] = v104;
                          *&buf[24] = v105;
                        }

                        *&v88 = v9;
                        *(&v88 + 1) = v8;
                        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
                        if ((v81[23] & 0x80000000) != 0)
                        {
                          sub_100005F2C(&v89, *v81, *&v81[8]);
                        }

                        else
                        {
                          v89 = *v81;
                          *&v90[0] = *&v81[16];
                        }

                        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(v90 + 8, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          *(v90 + 8) = v101;
                        }

                        v91 = v103;
                        v93 = 0;
                        v92 = 0uLL;
                        sub_10004EFD0(&v92, v43, v44, 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3));
                        v94 = v102;
                        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v95, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v95 = v46;
                        }

                        if (*(v28 + 23) < 0)
                        {
                          sub_100005F2C(&v96, *v28, *(v28 + 1));
                        }

                        else
                        {
                          v41 = *v28;
                          v97 = *(v28 + 2);
                          v96 = v41;
                        }

                        if (*(v29 + 23) < 0)
                        {
                          sub_100005F2C(&v98, *v29, *(v29 + 1));
                        }

                        else
                        {
                          v42 = *v29;
                          v99 = *(v29 + 2);
                          v98 = v42;
                        }

                        sub_1005ACCF0(v100, a2);
                        sub_1005ECADC((a1 + 8));
                      }
                    }

                    v93 = 0;
                    v91 = 0u;
                    v92 = 0u;
                    memset(v90, 0, sizeof(v90));
                    v88 = 0u;
                    v89 = 0u;
                    memset(buf, 0, sizeof(buf));
                    sub_100A34C5C(buf);
                    v83 = 0u;
                    *v84 = 0u;
                    v85 = 0;
                    v82 = 0u;
                    memset(v81, 0, sizeof(v81));
                    v84[8] = 2;
                    *&v84[12] = 0x50000003CLL;
                    sub_100A361CC(buf);
                    v37 = *(&v91 + 1);
                    *(*(&v91 + 1) + 28) |= 1u;
                    *(v37 + 24) = 13;
                    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                    {
                      v38 = asString();
                      sub_101775AA8(v38, &v101);
                    }

                    sub_1005ACCF0(v47, a2);
                    sub_1005E31C8(a1, v47, buf);
                    v21 = v47;
                  }

                  else
                  {
                    v93 = 0;
                    v91 = 0u;
                    v92 = 0u;
                    memset(v90, 0, sizeof(v90));
                    v88 = 0u;
                    v89 = 0u;
                    memset(buf, 0, sizeof(buf));
                    sub_100A34C5C(buf);
                    v83 = 0u;
                    *v84 = 0u;
                    v85 = 0;
                    v82 = 0u;
                    memset(v81, 0, sizeof(v81));
                    v84[8] = 2;
                    *&v84[12] = 0x50000003CLL;
                    sub_100A361CC(buf);
                    v19 = *(&v91 + 1);
                    *(*(&v91 + 1) + 28) |= 1u;
                    *(v19 + 24) = 13;
                    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                    {
                      v20 = asString();
                      sub_101775AA8(v20, &v101);
                    }

                    sub_1005ACCF0(v48, a2);
                    sub_1005E31C8(a1, v48, buf);
                    v21 = v48;
                  }

                  sub_1005AD788(v21);
                  sub_1005AD788(v81);
LABEL_88:
                  sub_100A34FF0(buf);
                  if (SHIBYTE(v105) < 0)
                  {
                    operator delete(v104);
                  }

                  goto LABEL_29;
                }

                v93 = 0;
                v91 = 0u;
                v92 = 0u;
                memset(v90, 0, sizeof(v90));
                v88 = 0u;
                v89 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_100A34C5C(buf);
                v83 = 0u;
                *v84 = 0u;
                v85 = 0;
                v82 = 0u;
                memset(v81, 0, sizeof(v81));
                v84[8] = 2;
                *&v84[12] = 0x50000003CLL;
                sub_100A361CC(buf);
                v25 = *(&v91 + 1);
                *(*(&v91 + 1) + 28) |= 1u;
                *(v25 + 24) = 13;
                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  v26 = asString();
                  sub_101775AA8(v26, &v101);
                }

                if (*(a2 + 23) < 0)
                {
                  sub_100005F2C(v49, *a2, *(a2 + 8));
                }

                else
                {
                  *v49 = *a2;
                  v50 = *(a2 + 16);
                }

                if (*(a2 + 47) < 0)
                {
                  sub_100005F2C(&v51, *(a2 + 24), *(a2 + 32));
                }

                else
                {
                  v51 = *(a2 + 24);
                  v52 = *(a2 + 40);
                }

                v53 = *(a2 + 48);
                sub_10002D728(&v54, (a2 + 56));
                sub_1002030F8(&v55, (a2 + 64));
                v56[0] = *(a2 + 72);
                *(v56 + 6) = *(a2 + 78);
                sub_1005E31C8(a1, v49, buf);
                sub_1002030AC(&v55);
                sub_10002D760(&v54);
                if (SHIBYTE(v52) < 0)
                {
                  operator delete(v51);
                }

                if ((SHIBYTE(v50) & 0x80000000) == 0)
                {
LABEL_84:
                  sub_1002030AC(v84);
                  sub_10002D760(&v83 + 1);
                  if (SHIBYTE(v82) < 0)
                  {
                    operator delete(*&v81[24]);
                  }

                  if ((v81[23] & 0x80000000) != 0)
                  {
                    operator delete(*v81);
                  }

                  goto LABEL_88;
                }

                v24 = v49[0];
              }

              else
              {
                v93 = 0;
                v91 = 0u;
                v92 = 0u;
                memset(v90, 0, sizeof(v90));
                v88 = 0u;
                v89 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_100A34C5C(buf);
                v83 = 0u;
                *v84 = 0u;
                v85 = 0;
                v82 = 0u;
                memset(v81, 0, sizeof(v81));
                v84[8] = 2;
                *&v84[12] = 0x50000003CLL;
                sub_100A361CC(buf);
                v22 = *(&v91 + 1);
                *(*(&v91 + 1) + 28) |= 1u;
                *(v22 + 24) = 13;
                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  v23 = asString();
                  sub_101775AA8(v23, &v101);
                }

                if (*(a2 + 23) < 0)
                {
                  sub_100005F2C(&v57, *a2, *(a2 + 8));
                }

                else
                {
                  v57 = *a2;
                  v58 = *(a2 + 16);
                }

                if (*(a2 + 47) < 0)
                {
                  sub_100005F2C(&v59, *(a2 + 24), *(a2 + 32));
                }

                else
                {
                  v59 = *(a2 + 24);
                  v60 = *(a2 + 40);
                }

                v61 = *(a2 + 48);
                sub_10002D728(&v62, (a2 + 56));
                sub_1002030F8(&v63, (a2 + 64));
                v64[0] = *(a2 + 72);
                *(v64 + 6) = *(a2 + 78);
                sub_1005E31C8(a1, &v57, buf);
                sub_1002030AC(&v63);
                sub_10002D760(&v62);
                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59);
                }

                if ((SHIBYTE(v58) & 0x80000000) == 0)
                {
                  goto LABEL_84;
                }

                v24 = v57;
              }

              operator delete(v24);
              goto LABEL_84;
            }
          }

          else if (*(v11 + 23))
          {
            goto LABEL_9;
          }
        }

        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        memset(v90, 0, sizeof(v90));
        v88 = 0u;
        v89 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100A34C5C(buf);
        v83 = 0u;
        *v84 = 0u;
        v85 = 0;
        v82 = 0u;
        memset(v81, 0, sizeof(v81));
        v84[8] = 2;
        *&v84[12] = 0x50000003CLL;
        sub_100A361CC(buf);
        v15 = *(&v91 + 1);
        *(*(&v91 + 1) + 28) |= 1u;
        *(v15 + 24) = 13;
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          v16 = asString();
          sub_101775AA8(v16, &v104);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v65, *a2, *(a2 + 8));
        }

        else
        {
          *v65 = *a2;
          v66 = *(a2 + 16);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v67, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v67 = *(a2 + 24);
          v68 = *(a2 + 40);
        }

        v69 = *(a2 + 48);
        sub_10002D728(&v70, (a2 + 56));
        sub_1002030F8(&v71, (a2 + 64));
        v72[0] = *(a2 + 72);
        *(v72 + 6) = *(a2 + 78);
        sub_1005E31C8(a1, v65, buf);
        sub_1002030AC(&v71);
        sub_10002D760(&v70);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(v67);
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }

        sub_1002030AC(v84);
        sub_10002D760(&v83 + 1);
        if (SHIBYTE(v82) < 0)
        {
          operator delete(*&v81[24]);
        }

        if ((v81[23] & 0x80000000) != 0)
        {
          operator delete(*v81);
        }

        sub_100A34FF0(buf);
        goto LABEL_49;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  memset(v90, 0, sizeof(v90));
  v88 = 0u;
  v89 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_100A34C5C(buf);
  v83 = 0u;
  *v84 = 0u;
  v85 = 0;
  v82 = 0u;
  memset(v81, 0, sizeof(v81));
  v84[8] = 2;
  *&v84[12] = 0x50000003CLL;
  sub_100A361CC(buf);
  v13 = *(&v91 + 1);
  *(*(&v91 + 1) + 28) |= 1u;
  *(v13 + 24) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v14 = asString();
    sub_101775AA8(v14, &v104);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v74 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
    v76 = *(a2 + 40);
  }

  v77 = *(a2 + 48);
  sub_10002D728(&v78, (a2 + 56));
  sub_1002030F8(&v79, (a2 + 64));
  v80[0] = *(a2 + 72);
  *(v80 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v79);
  sub_10002D760(&v78);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v84);
  sub_10002D760(&v83 + 1);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(*&v81[24]);
  }

  if ((v81[23] & 0x80000000) != 0)
  {
    operator delete(*v81);
  }

  sub_100A34FF0(buf);
LABEL_29:
  if (v8)
  {
LABEL_49:
    sub_100004A34(v8);
  }
}

void sub_1005E6174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  STACK[0x2C8] = v18;
  sub_1000087B4(&STACK[0x2C8]);
  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (STACK[0x2F8])
  {
    sub_100004A34(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  STACK[0x2D0] = &a9;
  sub_1000087B4(&STACK[0x2D0]);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v19 - 169) < 0)
  {
    operator delete(*(v19 - 192));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1005E63E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [GenericTransferPayloadReq]", &buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = *(a3 + 56);
        v11 = *(v10 + 40);
        if (v11)
        {
          if ((*(v11 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v11 + 1))
            {
              goto LABEL_9;
            }
          }

          else if (*(v11 + 23))
          {
LABEL_9:
            v12 = *(v10 + 8);
            if (!v12)
            {
              goto LABEL_38;
            }

            v13 = *(v12 + 23);
            if (v13 < 0)
            {
              v13 = *(v12 + 8);
            }

            if (v13)
            {
              v14 = *(v10 + 32);
              if (v14)
              {
                v15 = *(v14 + 23);
                if (v15 < 0)
                {
                  v15 = *(v14 + 8);
                }

                if (v15)
                {
                  v89 = 0;
                  v88 = 0uLL;
                  if (*(v11 + 23) < 0)
                  {
                    sub_100005F2C(&v88, *v11, *(v11 + 1));
                  }

                  else
                  {
                    v16 = *v11;
                    v89 = *(v11 + 2);
                    v88 = v16;
                  }

                  v39[1] = 0;
                  v40 = 0;
                  v39[0] = 0;
                  v26 = *(v10 + 8);
                  if (*(v26 + 23) < 0)
                  {
                    sub_100005F2C(v39, *v26, *(v26 + 1));
                  }

                  else
                  {
                    v27 = *v26;
                    v40 = *(v26 + 2);
                    *v39 = v27;
                  }

                  v37[1] = 0;
                  v38 = 0;
                  v37[0] = 0;
                  v28 = *(v10 + 32);
                  if (*(v28 + 23) < 0)
                  {
                    sub_100005F2C(v37, *v28, *(v28 + 1));
                  }

                  else
                  {
                    v29 = *v28;
                    v38 = *(v28 + 2);
                    *v37 = v29;
                  }

                  v87 = 0uLL;
                  v30 = *(v10 + 24);
                  if (v30 && v30[1] == 16)
                  {
                    v87 = **v30;
                    if (*(v10 + 16))
                    {
                      v80[0] = 0;
                      buf = 0uLL;
                      sub_1000DCF88(&buf, **(v10 + 16), **(v10 + 16) + *(*(v10 + 16) + 8), *(*(v10 + 16) + 8));
                      v32 = *(&buf + 1);
                      v31 = buf;
                    }

                    else
                    {
                      v31 = 0;
                      v32 = 0;
                    }

                    *&buf = &v87;
                    v35 = sub_100289074(a1 + 160, &v87);
                    std::string::operator=(v35 + 2, a2);
                    *&buf = a1;
                    *(&buf + 1) = v9;
                    v80[0] = v8;
                    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (SHIBYTE(v89) < 0)
                    {
                      sub_100005F2C(&v80[1], v88, *(&v88 + 1));
                    }

                    else
                    {
                      *&v80[1] = v88;
                      v80[3] = v89;
                    }

                    if (SHIBYTE(v40) < 0)
                    {
                      sub_100005F2C(&v81, v39[0], v39[1]);
                    }

                    else
                    {
                      v81 = *v39;
                      v82[0] = v40;
                    }

                    *&v82[1] = v87;
                    if (SHIBYTE(v38) < 0)
                    {
                      sub_100005F2C(&v82[3], v37[0], v37[1]);
                    }

                    else
                    {
                      *&v82[3] = *v37;
                      v82[5] = v38;
                    }

                    v83 = 0uLL;
                    v84 = 0;
                    sub_100034C50(&v83, v31, v32, v32 - v31);
                    sub_1005ACCF0(v85, a2);
                    sub_1005ECEA8((a1 + 8));
                  }

                  v84 = 0;
                  v83 = 0u;
                  memset(v82, 0, sizeof(v82));
                  v81 = 0u;
                  buf = 0u;
                  memset(v80, 0, sizeof(v80));
                  sub_100A34C5C(&buf);
                  v76 = 0u;
                  *v77 = 0u;
                  v78 = 0;
                  v74 = 0u;
                  v75 = 0u;
                  v73 = 0u;
                  v77[8] = 2;
                  *&v77[12] = 0x50000003CLL;
                  sub_100A3649C(&buf);
                  v33 = v82[0];
                  *(v82[0] + 52) |= 1u;
                  *(v33 + 48) = 13;
                  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                  {
                    v34 = asString();
                    sub_101775AA8(v34, v86);
                  }

                  sub_1005ACCF0(v36, a2);
                  sub_1005E31C8(a1, v36, &buf);
                  sub_1005AD788(v36);
                  sub_1005AD788(&v73);
                  sub_100A34FF0(&buf);
                  if (SHIBYTE(v38) < 0)
                  {
                    operator delete(v37[0]);
                  }

                  if (SHIBYTE(v40) < 0)
                  {
                    operator delete(v39[0]);
                  }

                  if (SHIBYTE(v89) < 0)
                  {
                    operator delete(v88);
                  }

LABEL_81:
                  sub_100004A34(v8);
                  return;
                }
              }

              v84 = 0;
              v83 = 0u;
              memset(v82, 0, sizeof(v82));
              v81 = 0u;
              buf = 0u;
              memset(v80, 0, sizeof(v80));
              sub_100A34C5C(&buf);
              v76 = 0u;
              *v77 = 0u;
              v78 = 0;
              v74 = 0u;
              v75 = 0u;
              v73 = 0u;
              v77[8] = 2;
              *&v77[12] = 0x50000003CLL;
              sub_100A3649C(&buf);
              v24 = v82[0];
              *(v82[0] + 52) |= 1u;
              *(v24 + 48) = 13;
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                v25 = asString();
                sub_101775AA8(v25, &v88);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v41, *a2, *(a2 + 1));
              }

              else
              {
                v41 = *a2;
                v42 = *(a2 + 2);
              }

              if (*(a2 + 47) < 0)
              {
                sub_100005F2C(&v43, *(a2 + 3), *(a2 + 4));
              }

              else
              {
                v43 = *(a2 + 24);
                v44 = *(a2 + 5);
              }

              v45 = *(a2 + 24);
              sub_10002D728(&v46, a2 + 7);
              sub_1002030F8(&v47, a2 + 8);
              v48[0] = *(a2 + 9);
              *(v48 + 6) = *(a2 + 78);
              sub_1005E31C8(a1, &v41, &buf);
              sub_1002030AC(&v47);
              sub_10002D760(&v46);
              if (SHIBYTE(v44) < 0)
              {
                operator delete(v43);
              }

              if ((SHIBYTE(v42) & 0x80000000) == 0)
              {
LABEL_76:
                sub_1002030AC(v77);
                sub_10002D760(&v76 + 1);
                if (SHIBYTE(v75) < 0)
                {
                  operator delete(*(&v74 + 1));
                }

                if (SBYTE7(v74) < 0)
                {
                  operator delete(v73);
                }

                sub_100A34FF0(&buf);
                goto LABEL_81;
              }

              v23 = v41;
            }

            else
            {
LABEL_38:
              v84 = 0;
              v83 = 0u;
              memset(v82, 0, sizeof(v82));
              v81 = 0u;
              buf = 0u;
              memset(v80, 0, sizeof(v80));
              sub_100A34C5C(&buf);
              v76 = 0u;
              *v77 = 0u;
              v78 = 0;
              v74 = 0u;
              v75 = 0u;
              v73 = 0u;
              v77[8] = 2;
              *&v77[12] = 0x50000003CLL;
              sub_100A3649C(&buf);
              v19 = v82[0];
              *(v82[0] + 52) |= 1u;
              *(v19 + 48) = 13;
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                v20 = asString();
                sub_101775AA8(v20, &v88);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v49, *a2, *(a2 + 1));
              }

              else
              {
                v49 = *a2;
                v50 = *(a2 + 2);
              }

              if (*(a2 + 47) < 0)
              {
                sub_100005F2C(&v51, *(a2 + 3), *(a2 + 4));
              }

              else
              {
                v51 = *(a2 + 24);
                v52 = *(a2 + 5);
              }

              v53 = *(a2 + 24);
              sub_10002D728(&v54, a2 + 7);
              sub_1002030F8(&v55, a2 + 8);
              v56[0] = *(a2 + 9);
              *(v56 + 6) = *(a2 + 78);
              sub_1005E31C8(a1, &v49, &buf);
              sub_1002030AC(&v55);
              sub_10002D760(&v54);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(v51);
              }

              if ((SHIBYTE(v50) & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

              v23 = v49;
            }

LABEL_75:
            operator delete(v23);
            goto LABEL_76;
          }
        }

        v84 = 0;
        v83 = 0u;
        memset(v82, 0, sizeof(v82));
        v81 = 0u;
        buf = 0u;
        memset(v80, 0, sizeof(v80));
        sub_100A34C5C(&buf);
        v76 = 0u;
        *v77 = 0u;
        v78 = 0;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        v77[8] = 2;
        *&v77[12] = 0x50000003CLL;
        sub_100A3649C(&buf);
        v21 = v82[0];
        *(v82[0] + 52) |= 1u;
        *(v21 + 48) = 13;
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          v22 = asString();
          sub_101775AA8(v22, &v88);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v57, *a2, *(a2 + 1));
        }

        else
        {
          v57 = *a2;
          v58 = *(a2 + 2);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v59, *(a2 + 3), *(a2 + 4));
        }

        else
        {
          v59 = *(a2 + 24);
          v60 = *(a2 + 5);
        }

        v61 = *(a2 + 24);
        sub_10002D728(&v62, a2 + 7);
        sub_1002030F8(&v63, a2 + 8);
        v64[0] = *(a2 + 9);
        *(v64 + 6) = *(a2 + 78);
        sub_1005E31C8(a1, &v57, &buf);
        sub_1002030AC(&v63);
        sub_10002D760(&v62);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        v23 = v57;
        goto LABEL_75;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v84 = 0;
  v83 = 0u;
  memset(v82, 0, sizeof(v82));
  v81 = 0u;
  buf = 0u;
  memset(v80, 0, sizeof(v80));
  sub_100A34C5C(&buf);
  v76 = 0u;
  *v77 = 0u;
  v78 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v77[8] = 2;
  *&v77[12] = 0x50000003CLL;
  sub_100A3649C(&buf);
  v17 = v82[0];
  *(v82[0] + 52) |= 1u;
  *(v17 + 48) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v18 = asString();
    sub_101775AA8(v18, &v88);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v66 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v68 = *(a2 + 5);
  }

  v69 = *(a2 + 24);
  sub_10002D728(&v70, a2 + 7);
  sub_1002030F8(&v71, a2 + 8);
  v72[0] = *(a2 + 9);
  *(v72 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, &__dst, &buf);
  sub_1002030AC(&v71);
  sub_10002D760(&v70);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(__dst);
  }

  sub_1002030AC(v77);
  sub_10002D760(&v76 + 1);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(*(&v74 + 1));
  }

  if (SBYTE7(v74) < 0)
  {
    operator delete(v73);
  }

  sub_100A34FF0(&buf);
  if (v8)
  {
    goto LABEL_81;
  }
}

void sub_1005E6E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (STACK[0x290])
  {
    sub_100004A34(STACK[0x290]);
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_1005E7034(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [FetchProfileReq]", buf, 2u);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6 && *(a1 + 112))
    {
      v32[0] = 0;
      v32[1] = 0;
      sub_10032E870();
    }
  }

  else
  {
    v6 = 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *buf = 0u;
  v24 = 0u;
  sub_100A34C5C(buf);
  v20 = 0u;
  *v21 = 0u;
  v22 = 0;
  *v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  v21[8] = 2;
  *&v21[12] = 0x50000003CLL;
  sub_100A35D4C(buf);
  v7 = v26;
  *(v26 + 40) |= 1u;
  *(v7 + 32) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v8 = asString();
    sub_101775AA8(v8, v32);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v10 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
    v12 = *(a2 + 40);
  }

  v13 = *(a2 + 48);
  sub_10002D728(&v14, (a2 + 56));
  sub_1002030F8(&v15, (a2 + 64));
  v16[0] = *(a2 + 72);
  *(v16 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v15);
  sub_10002D760(&v14);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v21);
  sub_10002D760(&v20 + 1);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  sub_100A34FF0(buf);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1005E7B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&STACK[0x230]);
  sub_100A34FF0(&STACK[0x290]);
  v51 = *(v49 - 136);
  if (v51)
  {
    sub_100004A34(v51);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  _Unwind_Resume(a1);
}

void sub_1005E7D2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [SendUserConsentReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = *(a3 + 80);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16)
        {
          v12 = *v11;
          v13 = 2;
          if (*(v10 + 20))
          {
            v14 = *(v10 + 16);
            if (v14 >= 3)
            {
              v13 = 2;
            }

            else
            {
              v13 = v14;
            }
          }

          v15 = *v12;
          v16 = v12[1];
          sub_100004AA0(buf, (a1 + 8));
          v18 = *buf;
          v17 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v17);
          }

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 1174405120;
          v54[2] = sub_1005EE428;
          v54[3] = &unk_101E69BB8;
          v54[4] = a1;
          v54[5] = v18;
          v55 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v63[2] = v15;
          v63[3] = v16;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v56, *a2, *(a2 + 1));
          }

          else
          {
            v56 = *a2;
            v57 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v58, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v58 = *(a2 + 24);
            v59 = *(a2 + 5);
          }

          v60 = *(a2 + 24);
          sub_10002D728(&v61, a2 + 7);
          sub_1002030F8(&v62, a2 + 8);
          v63[0] = *(a2 + 9);
          *(v63 + 6) = *(a2 + 78);
          (*(*v9 + 72))(v9, v15, v16, v13, v54);
          sub_1002030AC(&v62);
          sub_10002D760(&v61);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_weak(v55);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          *buf = 0u;
          v46 = 0u;
          sub_100A34C5C(buf);
          v42 = 0u;
          *v43 = 0u;
          v44 = 0;
          *v40 = 0u;
          v41 = 0u;
          *v39 = 0u;
          v43[8] = 2;
          *&v43[12] = 0x50000003CLL;
          sub_100A35DDC(buf);
          v21 = *(&v50 + 1);
          *(*(&v50 + 1) + 24) |= 1u;
          *(v21 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v22 = asString();
            sub_101775AA8(v22, v64);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v23, *a2, *(a2 + 1));
          }

          else
          {
            *v23 = *a2;
            v24 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v25, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v25 = *(a2 + 24);
            v26 = *(a2 + 5);
          }

          v27 = *(a2 + 24);
          sub_10002D728(&v28, a2 + 7);
          sub_1002030F8(&v29, a2 + 8);
          v30[0] = *(a2 + 9);
          *(v30 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v23, buf);
          sub_1002030AC(&v29);
          sub_10002D760(&v28);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(v23[0]);
          }

          sub_1002030AC(v43);
          sub_10002D760(&v42 + 1);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[1]);
          }

          if (SHIBYTE(v40[0]) < 0)
          {
            operator delete(v39[0]);
          }

          sub_100A34FF0(buf);
        }

LABEL_66:
        sub_100004A34(v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *buf = 0u;
  v46 = 0u;
  sub_100A34C5C(buf);
  v42 = 0u;
  *v43 = 0u;
  v44 = 0;
  *v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_100A35DDC(buf);
  v19 = *(&v50 + 1);
  *(*(&v50 + 1) + 24) |= 1u;
  *(v19 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v20 = asString();
    sub_101775AA8(v20, v64);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v32 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v34 = *(a2 + 5);
  }

  v35 = *(a2 + 24);
  sub_10002D728(&v36, a2 + 7);
  sub_1002030F8(&v37, a2 + 8);
  v38[0] = *(a2 + 9);
  *(v38 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v37);
  sub_10002D760(&v36);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v43);
  sub_10002D760(&v42 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v39[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_66;
  }
}

void sub_1005E8324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a69)
  {
    std::__shared_weak_count::__release_weak(a69);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  sub_100004A34(v72);
  _Unwind_Resume(a1);
}

void sub_1005E8414(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [EndSessionReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = *(a3 + 32);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16)
        {
          v12 = *v11;
          if (*(v10 + 20))
          {
            v18 = *(v10 + 16);
            if (v18 - 1 >= 3)
            {
              v13 = 0;
            }

            else
            {
              v13 = v18;
            }
          }

          else
          {
            v13 = 0;
          }

          v19 = *v12;
          v20 = v12[1];
          sub_100004AA0(buf, (a1 + 8));
          v22 = *buf;
          v21 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
          }

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 1174405120;
          v54[2] = sub_1005ED610;
          v54[3] = &unk_101E69AF8;
          v54[4] = a1;
          v54[5] = v22;
          v55 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v63[2] = v19;
          v63[3] = v20;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v56, *a2, *(a2 + 1));
          }

          else
          {
            v56 = *a2;
            v57 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v58, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v58 = *(a2 + 24);
            v59 = *(a2 + 5);
          }

          v60 = *(a2 + 24);
          sub_10002D728(&v61, a2 + 7);
          sub_1002030F8(&v62, a2 + 8);
          v63[0] = *(a2 + 9);
          *(v63 + 6) = *(a2 + 78);
          (*(*v9 + 88))(v9, v19, v20, v13, v54);
          sub_1002030AC(&v62);
          sub_10002D760(&v61);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_weak(v55);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          *buf = 0u;
          v46 = 0u;
          sub_100A34C5C(buf);
          v42 = 0u;
          *v43 = 0u;
          v44 = 0;
          *v40 = 0u;
          v41 = 0u;
          *v39 = 0u;
          v43[8] = 2;
          *&v43[12] = 0x50000003CLL;
          sub_100A3601C(buf);
          v16 = v47;
          *(v47 + 24) |= 1u;
          *(v16 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v17 = asString();
            sub_101775AA8(v17, v64);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v23, *a2, *(a2 + 1));
          }

          else
          {
            *v23 = *a2;
            v24 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v25, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v25 = *(a2 + 24);
            v26 = *(a2 + 5);
          }

          v27 = *(a2 + 24);
          sub_10002D728(&v28, a2 + 7);
          sub_1002030F8(&v29, a2 + 8);
          v30[0] = *(a2 + 9);
          *(v30 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v23, buf);
          sub_1002030AC(&v29);
          sub_10002D760(&v28);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(v23[0]);
          }

          sub_1002030AC(v43);
          sub_10002D760(&v42 + 1);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[1]);
          }

          if (SHIBYTE(v40[0]) < 0)
          {
            operator delete(v39[0]);
          }

          sub_100A34FF0(buf);
        }

LABEL_67:
        sub_100004A34(v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *buf = 0u;
  v46 = 0u;
  sub_100A34C5C(buf);
  v42 = 0u;
  *v43 = 0u;
  v44 = 0;
  *v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_100A3601C(buf);
  v14 = v47;
  *(v47 + 24) |= 1u;
  *(v14 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    sub_101775AA8(v15, v64);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v32 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v34 = *(a2 + 5);
  }

  v35 = *(a2 + 24);
  sub_10002D728(&v36, a2 + 7);
  sub_1002030F8(&v37, a2 + 8);
  v38[0] = *(a2 + 9);
  *(v38 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v37);
  sub_10002D760(&v36);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v43);
  sub_10002D760(&v42 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v39[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_67;
  }
}

void sub_1005E8A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a69)
  {
    std::__shared_weak_count::__release_weak(a69);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  sub_100004A34(v72);
  _Unwind_Resume(a1);
}

void sub_1005E8B04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [StartSessionReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = *(a3 + 88);
        v11 = *(v10 + 8);
        if (v11 && *(v11 + 8) == 16)
        {
          v12 = *v11;
          if (*(v10 + 20))
          {
            v18 = *(v10 + 16);
            if (v18 - 1 >= 3)
            {
              v13 = 0;
            }

            else
            {
              v13 = v18;
            }
          }

          else
          {
            v13 = 0;
          }

          v19 = *v12;
          v20 = v12[1];
          sub_100004AA0(buf, (a1 + 8));
          v22 = *buf;
          v21 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
          }

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 1174405120;
          v54[2] = sub_1005ED18C;
          v54[3] = &unk_101E69A98;
          v54[4] = a1;
          v54[5] = v22;
          v55 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v63[2] = v19;
          v63[3] = v20;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&v56, *a2, *(a2 + 1));
          }

          else
          {
            v56 = *a2;
            v57 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(&v58, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            v58 = *(a2 + 24);
            v59 = *(a2 + 5);
          }

          v60 = *(a2 + 24);
          sub_10002D728(&v61, a2 + 7);
          sub_1002030F8(&v62, a2 + 8);
          v63[0] = *(a2 + 9);
          *(v63 + 6) = *(a2 + 78);
          (*(*v9 + 80))(v9, v19, v20, v13, v54);
          sub_1002030AC(&v62);
          sub_10002D760(&v61);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          if (v55)
          {
            std::__shared_weak_count::__release_weak(v55);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          *buf = 0u;
          v46 = 0u;
          sub_100A34C5C(buf);
          v42 = 0u;
          *v43 = 0u;
          v44 = 0;
          *v40 = 0u;
          v41 = 0u;
          *v39 = 0u;
          v43[8] = 2;
          *&v43[12] = 0x50000003CLL;
          sub_100A35F8C(buf);
          v16 = v51;
          *(v51 + 24) |= 1u;
          *(v16 + 16) = 13;
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            v17 = asString();
            sub_101775AA8(v17, v64);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v23, *a2, *(a2 + 1));
          }

          else
          {
            *v23 = *a2;
            v24 = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v25, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v25 = *(a2 + 24);
            v26 = *(a2 + 5);
          }

          v27 = *(a2 + 24);
          sub_10002D728(&v28, a2 + 7);
          sub_1002030F8(&v29, a2 + 8);
          v30[0] = *(a2 + 9);
          *(v30 + 6) = *(a2 + 78);
          sub_1005E31C8(a1, v23, buf);
          sub_1002030AC(&v29);
          sub_10002D760(&v28);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(v23[0]);
          }

          sub_1002030AC(v43);
          sub_10002D760(&v42 + 1);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[1]);
          }

          if (SHIBYTE(v40[0]) < 0)
          {
            operator delete(v39[0]);
          }

          sub_100A34FF0(buf);
        }

LABEL_67:
        sub_100004A34(v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *buf = 0u;
  v46 = 0u;
  sub_100A34C5C(buf);
  v42 = 0u;
  *v43 = 0u;
  v44 = 0;
  *v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_100A35F8C(buf);
  v14 = v51;
  *(v51 + 24) |= 1u;
  *(v14 + 16) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    sub_101775AA8(v15, v64);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v32 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v34 = *(a2 + 5);
  }

  v35 = *(a2 + 24);
  sub_10002D728(&v36, a2 + 7);
  sub_1002030F8(&v37, a2 + 8);
  v38[0] = *(a2 + 9);
  *(v38 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v37);
  sub_10002D760(&v36);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v43);
  sub_10002D760(&v42 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v39[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_67;
  }
}

void sub_1005E9104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a69)
  {
    std::__shared_weak_count::__release_weak(a69);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  sub_100004A34(v72);
  _Unwind_Resume(a1);
}

void sub_1005E91F4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionInfoReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9 && *(a1 + 112))
    {
      v64 = 0uLL;
      v10 = *(*(a3 + 112) + 8);
      if (v10 && v10[1] == 16)
      {
        v64 = **v10;
        memset(buf, 0, sizeof(buf));
        *&v46 = 0;
        ctu::hex(buf, &v64, 0x10, v8);
        v39[1] = 0;
        v40[0] = 0;
        v39[0] = 0;
        v11 = *(a3 + 112);
        v12 = *(v11 + 16);
        for (i = *(v11 + 24); v12 != i; ++v12)
        {
          v14 = *v12;
          v15 = v39[1];
          if (v39[1] >= v40[0])
          {
            v16 = sub_10016BC94(v39);
          }

          else
          {
            *(v39[1] + 10) = 0u;
            v15[11] = 0u;
            v15[8] = 0u;
            v15[9] = 0u;
            v15[6] = 0u;
            v15[7] = 0u;
            v15[4] = 0u;
            v15[5] = 0u;
            v15[2] = 0u;
            v15[3] = 0u;
            *v15 = 0u;
            v15[1] = 0u;
            v16 = (v15 + 12);
            *(v15 + 185) = 1;
          }

          v39[1] = v16;
          std::string::operator=((v16 - 184), buf);
          sub_10039FA34(v14, (v16 - 192));
        }

        v54 = a1;
        sub_100004AA0(&v65, (a1 + 8));
        v22 = v66;
        v55 = v65;
        v56 = v66;
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v22);
        }

        v57 = v64;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v58, *a2, *(a2 + 1));
        }

        else
        {
          *v58 = *a2;
          v58[2] = *(a2 + 2);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(v59, *(a2 + 3), *(a2 + 4));
        }

        else
        {
          *v59 = *(a2 + 24);
          v59[2] = *(a2 + 5);
        }

        v60 = *(a2 + 24);
        sub_10002D728(&v61, a2 + 7);
        sub_1002030F8(&v62, a2 + 8);
        v63[0] = *(a2 + 9);
        *(v63 + 6) = *(a2 + 78);
        v63[5] = 0;
        operator new();
      }

      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      *buf = 0u;
      v46 = 0u;
      sub_100A34C5C(buf);
      v42 = 0u;
      *v43 = 0u;
      v44 = 0;
      *v40 = 0u;
      v41 = 0u;
      *v39 = 0u;
      v43[8] = 2;
      *&v43[12] = 0x50000003CLL;
      sub_100A3625C(buf);
      v20 = *(&v52 + 1);
      *(*(&v52 + 1) + 48) |= 1u;
      *(v20 + 40) = 18;
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        v21 = asString();
        sub_101775AA8(v21, &v65);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v23, *a2, *(a2 + 1));
      }

      else
      {
        v23 = *a2;
        v24 = *(a2 + 2);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(v25, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        *v25 = *(a2 + 24);
        v26 = *(a2 + 5);
      }

      v27 = *(a2 + 24);
      sub_10002D728(&v28, a2 + 7);
      sub_1002030F8(&v29, a2 + 8);
      v30[0] = *(a2 + 9);
      *(v30 + 6) = *(a2 + 78);
      sub_1005E31C8(a1, &v23, buf);
      sub_1002030AC(&v29);
      sub_10002D760(&v28);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v19 = v23;
LABEL_27:
      operator delete(v19);
      goto LABEL_39;
    }
  }

  else
  {
    v9 = 0;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *buf = 0u;
  v46 = 0u;
  sub_100A34C5C(buf);
  v42 = 0u;
  *v43 = 0u;
  v44 = 0;
  *v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_100A3625C(buf);
  v17 = *(&v52 + 1);
  *(*(&v52 + 1) + 48) |= 1u;
  *(v17 + 40) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v18 = asString();
    sub_101775AA8(v18, &v65);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v32 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v34 = *(a2 + 5);
  }

  v35 = *(a2 + 24);
  sub_10002D728(&v36, a2 + 7);
  sub_1002030F8(&v37, a2 + 8);
  v38[0] = *(a2 + 9);
  *(v38 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v37);
  sub_10002D760(&v36);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    v19 = __dst[0];
    goto LABEL_27;
  }

LABEL_39:
  sub_1002030AC(v43);
  sub_10002D760(&v42 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v39[0]);
  }

  sub_100A34FF0(buf);
  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1005E9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v67 + 71) < 0)
  {
    operator delete(*(v67 + 48));
  }

  v69 = *(v67 + 24);
  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  operator delete(v67);
  sub_1005EF468(&a66);
  a65 = &a33;
  sub_10016BF8C(&a65);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (v66)
  {
    sub_100004A34(v66);
  }

  _Unwind_Resume(a1);
}

void sub_1005E9A38(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [FetchSubscriptionInfoReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && *(a1 + 112))
    {
      v9 = *(a3 + 48);
      v10 = *(v9 + 8);
      if (v10 && v10[1] == 16)
      {
        v69 = **v10;
        if (*(v9 + 16))
        {
          sub_100004AA0(buf, (a1 + 8));
          v11 = *&buf[8];
          v58[0] = *buf;
          v58[1] = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v11);
          }

          v59 = a1;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(__src, *a2, *(a2 + 1));
          }

          else
          {
            *__src = *a2;
            __src[2] = *(a2 + 2);
          }

          if (*(a2 + 47) < 0)
          {
            sub_100005F2C(v61, *(a2 + 3), *(a2 + 4));
          }

          else
          {
            *v61 = *(a2 + 24);
            v61[2] = *(a2 + 5);
          }

          v62 = *(a2 + 24);
          sub_10002D728(&v63, a2 + 7);
          sub_1002030F8(&v64, a2 + 8);
          v65[0] = *(a2 + 9);
          *(v65 + 6) = *(a2 + 78);
          v66 = v69;
          v67 = 0;
          operator new();
        }

        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        *buf = 0u;
        v50 = 0u;
        sub_100A34C5C(buf);
        v46 = 0u;
        *v47 = 0u;
        v48 = 0;
        *v44 = 0u;
        v45 = 0u;
        *v43 = 0u;
        v47[8] = 2;
        *&v47[12] = 0x50000003CLL;
        sub_100A362EC(buf);
        v17 = *(&v52 + 1);
        *(*(&v52 + 1) + 32) |= 1u;
        *(v17 + 24) = 1;
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          v18 = asString();
          sub_101775AA8(v18, v68);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v19, *a2, *(a2 + 1));
        }

        else
        {
          v19 = *a2;
          v20 = *(a2 + 2);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(v21, *(a2 + 3), *(a2 + 4));
        }

        else
        {
          *v21 = *(a2 + 24);
          v22 = *(a2 + 5);
        }

        v23 = *(a2 + 24);
        sub_10002D728(&v24, a2 + 7);
        sub_1002030F8(&v25, a2 + 8);
        v26[0] = *(a2 + 9);
        *(v26 + 6) = *(a2 + 78);
        sub_1005E31C8(a1, &v19, buf);
        sub_1002030AC(&v25);
        sub_10002D760(&v24);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v16 = v19;
      }

      else
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        *buf = 0u;
        v50 = 0u;
        sub_100A34C5C(buf);
        v46 = 0u;
        *v47 = 0u;
        v48 = 0;
        *v44 = 0u;
        v45 = 0u;
        *v43 = 0u;
        v47[8] = 2;
        *&v47[12] = 0x50000003CLL;
        sub_100A362EC(buf);
        v14 = *(&v52 + 1);
        *(*(&v52 + 1) + 32) |= 1u;
        *(v14 + 24) = 1;
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          v15 = asString();
          sub_101775AA8(v15, v68);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v27, *a2, *(a2 + 1));
        }

        else
        {
          *v27 = *a2;
          v28 = *(a2 + 2);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v29, *(a2 + 3), *(a2 + 4));
        }

        else
        {
          v29 = *(a2 + 24);
          v30 = *(a2 + 5);
        }

        v31 = *(a2 + 24);
        sub_10002D728(&v32, a2 + 7);
        sub_1002030F8(&v33, a2 + 8);
        v34[0] = *(a2 + 9);
        *(v34 + 6) = *(a2 + 78);
        sub_1005E31C8(a1, v27, buf);
        sub_1002030AC(&v33);
        sub_10002D760(&v32);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29);
        }

        if ((SHIBYTE(v28) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v16 = v27[0];
      }

      operator delete(v16);
LABEL_45:
      sub_1002030AC(v47);
      sub_10002D760(&v46 + 1);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[1]);
      }

      if (SHIBYTE(v44[0]) < 0)
      {
        operator delete(v43[0]);
      }

      sub_100A34FF0(buf);
LABEL_50:
      sub_100004A34(v8);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *buf = 0u;
  v50 = 0u;
  sub_100A34C5C(buf);
  v46 = 0u;
  *v47 = 0u;
  v48 = 0;
  *v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  v47[8] = 2;
  *&v47[12] = 0x50000003CLL;
  sub_100A362EC(buf);
  v12 = *(&v52 + 1);
  *(*(&v52 + 1) + 32) |= 1u;
  *(v12 + 24) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    sub_101775AA8(v13, &v69);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v36 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v38 = *(a2 + 5);
  }

  v39 = *(a2 + 24);
  sub_10002D728(&v40, a2 + 7);
  sub_1002030F8(&v41, a2 + 8);
  v42[0] = *(a2 + 9);
  *(v42 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v41);
  sub_10002D760(&v40);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v47);
  sub_10002D760(&v46 + 1);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  if (SHIBYTE(v44[0]) < 0)
  {
    operator delete(v43[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_50;
  }
}

void sub_1005EA218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a48);
  sub_100A34FF0(&a60);
  sub_100004A34(v60);
  _Unwind_Resume(a1);
}

void sub_1005EA368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [PendingProfilesReq]", buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && *(a1 + 112))
    {
      v9 = *(*(a3 + 64) + 8);
      if (v9 && v9[1] == 16)
      {
        v58 = **v9;
        sub_100004AA0(buf, (a1 + 8));
        v10 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
        }

        v47 = a1;
        sub_100004AA0(buf, (a1 + 8));
        v11 = *&buf[8];
        v48 = *buf;
        v49 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
        }

        v50 = v58;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v51, *a2, *(a2 + 8));
        }

        else
        {
          *v51 = *a2;
          v51[2] = *(a2 + 16);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(v52, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          *v52 = *(a2 + 24);
          v52[2] = *(a2 + 40);
        }

        v53 = *(a2 + 48);
        sub_10002D728(&v54, (a2 + 56));
        sub_1002030F8(&v55, (a2 + 64));
        v56[0] = *(a2 + 72);
        *(v56 + 6) = *(a2 + 78);
        v56[5] = 0;
        operator new();
      }

      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v39 = 0u;
      sub_100A34C5C(buf);
      v35 = 0u;
      *v36 = 0u;
      v37 = 0;
      *v33 = 0u;
      v34 = 0u;
      *v32 = 0u;
      v36[8] = 2;
      *&v36[12] = 0x50000003CLL;
      sub_100A3637C(buf);
      v14 = *(&v42 + 1);
      *(*(&v42 + 1) + 48) |= 1u;
      *(v14 + 40) = 13;
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        v15 = asString();
        sub_101775AA8(v15, v57);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v16, *a2, *(a2 + 8));
      }

      else
      {
        *v16 = *a2;
        v17 = *(a2 + 16);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(v18, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *v18 = *(a2 + 24);
        v19 = *(a2 + 40);
      }

      v20 = *(a2 + 48);
      sub_10002D728(&v21, (a2 + 56));
      sub_1002030F8(&v22, (a2 + 64));
      v23[0] = *(a2 + 72);
      *(v23 + 6) = *(a2 + 78);
      sub_1005E31C8(a1, v16, buf);
      sub_1002030AC(&v22);
      sub_10002D760(&v21);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      sub_1002030AC(v36);
      sub_10002D760(&v35 + 1);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33[1]);
      }

      if (SHIBYTE(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }

      sub_100A34FF0(buf);
LABEL_55:
      sub_100004A34(v8);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *buf = 0u;
  v39 = 0u;
  sub_100A34C5C(buf);
  v35 = 0u;
  *v36 = 0u;
  v37 = 0;
  *v33 = 0u;
  v34 = 0u;
  *v32 = 0u;
  v36[8] = 2;
  *&v36[12] = 0x50000003CLL;
  sub_100A3637C(buf);
  v12 = *(&v42 + 1);
  *(*(&v42 + 1) + 48) |= 1u;
  *(v12 + 40) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    sub_101775AA8(v13, &v58);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v25 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
    v27 = *(a2 + 40);
  }

  v28 = *(a2 + 48);
  sub_10002D728(&v29, (a2 + 56));
  sub_1002030F8(&v30, (a2 + 64));
  v31[0] = *(a2 + 72);
  *(v31 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v30);
  sub_10002D760(&v29);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v36);
  sub_10002D760(&v35 + 1);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  sub_100A34FF0(buf);
  if (v8)
  {
    goto LABEL_55;
  }
}

void sub_1005EAA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (*(v64 + 71) < 0)
  {
    operator delete(*(v64 + 48));
  }

  v67 = *(v64 + 24);
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  operator delete(v64);
  sub_1005EF468(&a63);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  sub_100004A34(v63);
  _Unwind_Resume(a1);
}

void sub_1005EAB3C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [PurchaseAddOnPlanReq]", &buf, 2u);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        memset(v95, 0, sizeof(v95));
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v10 = *(*(a3 + 72) + 8);
        if (v10)
        {
          if ((*(v10 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v10 + 8))
            {
              goto LABEL_9;
            }
          }

          else if (*(v10 + 23))
          {
LABEL_9:
            std::string::operator=(&v91, v10);
            v84 = 0uLL;
            v11 = *(*(a3 + 72) + 16);
            if (v11 && v11[1] == 16)
            {
              v84 = **v11;
              v94 = v84;
              *&buf = &v84;
              v12 = sub_100289074(a1 + 160, &v84);
              std::string::operator=(v12 + 2, a2);
              v13 = *(a3 + 72);
              if ((&v92 + 8) != (v13 + 48))
              {
                sub_100008234(&v92 + 1, *(v13 + 48), *(v13 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 56) - *(v13 + 48)) >> 3));
                v13 = *(a3 + 72);
              }

              v14 = *(v13 + 72);
              if (v14)
              {
                std::string::operator=(v95, v14);
                v15 = *(a3 + 72);
                v16 = v15[10];
                if (v16)
                {
                  std::string::operator=(&v95[24], v16);
                  v15 = *(a3 + 72);
                }

                if (v15[5])
                {
                  v17 = v15[3];
                  if (v17)
                  {
                    std::string::operator=((&v98 + 8), v17);
                    std::string::operator=(&v97, *(*(a3 + 72) + 40));
                    std::string::operator=(&v100, *(*(a3 + 72) + 88));
                    v18 = *(a3 + 72);
                    if ((~v18[13].u8[0] & 3) == 0)
                    {
                      *(&v101 + 1) = vrev64_s32(v18[12]);
                      *&buf = a1;
                      *(&buf + 1) = v9;
                      *&v74 = v8;
                      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_1005F14C4(&v74 + 8, &v91);
                      sub_1005ACCF0(v82, a2);
                      sub_1005EF528((a1 + 8));
                    }

                    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                    {
                      sub_101775B14();
                    }

                    v81 = 0;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    buf = 0u;
                    v74 = 0u;
                    sub_100A34C5C(&buf);
                    v88 = 0u;
                    *v89 = 0u;
                    v90 = 0;
                    v86 = 0u;
                    v87 = 0u;
                    v85 = 0u;
                    v89[8] = 2;
                    *&v89[12] = 0x50000003CLL;
                    sub_100A3640C(&buf);
                    v30 = v78;
                    *(v78 + 12) |= 1u;
                    *(v30 + 8) = 6;
                    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                    {
                      v31 = asString();
                      sub_101775AA8(v31, v83);
                    }

                    sub_1005ACCF0(v32, a2);
                    sub_1005E31C8(a1, v32, &buf);
                    sub_1005AD788(v32);
                    sub_1005AD788(&v85);
LABEL_75:
                    sub_100A34FF0(&buf);
                    if (SBYTE7(v101) < 0)
                    {
                      operator delete(v100);
                    }

                    if (SHIBYTE(v99) < 0)
                    {
                      operator delete(*(&v98 + 1));
                    }

                    if (SBYTE7(v98) < 0)
                    {
                      operator delete(v97);
                    }

                    if (SHIBYTE(v96) < 0)
                    {
                      operator delete(*&v95[24]);
                    }

                    if ((v95[23] & 0x80000000) != 0)
                    {
                      operator delete(*v95);
                    }

                    *&buf = &v92 + 8;
                    sub_1000087B4(&buf);
                    if (SBYTE7(v92) < 0)
                    {
                      operator delete(v91);
                    }

LABEL_87:
                    sub_100004A34(v8);
                    return;
                  }
                }

                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  sub_101775B48();
                }

                v81 = 0;
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                buf = 0u;
                v74 = 0u;
                sub_100A34C5C(&buf);
                v88 = 0u;
                *v89 = 0u;
                v90 = 0;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v89[8] = 2;
                *&v89[12] = 0x50000003CLL;
                sub_100A3640C(&buf);
                v26 = v78;
                *(v78 + 12) |= 1u;
                *(v26 + 8) = 6;
                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  v27 = asString();
                  sub_101775AA8(v27, v83);
                }

                if (*(a2 + 23) < 0)
                {
                  sub_100005F2C(&v33, *a2, *(a2 + 1));
                }

                else
                {
                  v33 = *a2;
                  v34 = *(a2 + 2);
                }

                if (*(a2 + 47) < 0)
                {
                  sub_100005F2C(&v35, *(a2 + 3), *(a2 + 4));
                }

                else
                {
                  v35 = *(a2 + 24);
                  v36 = *(a2 + 5);
                }

                v37 = *(a2 + 24);
                sub_10002D728(&v38, a2 + 7);
                sub_1002030F8(&v39, a2 + 8);
                v40[0] = *(a2 + 9);
                *(v40 + 6) = *(a2 + 78);
                sub_1005E31C8(a1, &v33, &buf);
                sub_1002030AC(&v39);
                sub_10002D760(&v38);
                if (SHIBYTE(v36) < 0)
                {
                  operator delete(v35);
                }

                if ((SHIBYTE(v34) & 0x80000000) == 0)
                {
LABEL_71:
                  sub_1002030AC(v89);
                  sub_10002D760(&v88 + 1);
                  if (SHIBYTE(v87) < 0)
                  {
                    operator delete(*(&v86 + 1));
                  }

                  if (SBYTE7(v86) < 0)
                  {
                    operator delete(v85);
                  }

                  goto LABEL_75;
                }

                v25 = v33;
              }

              else
              {
                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  sub_101775B7C();
                }

                v81 = 0;
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                buf = 0u;
                v74 = 0u;
                sub_100A34C5C(&buf);
                v88 = 0u;
                *v89 = 0u;
                v90 = 0;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v89[8] = 2;
                *&v89[12] = 0x50000003CLL;
                sub_100A3640C(&buf);
                v28 = v78;
                *(v78 + 12) |= 1u;
                *(v28 + 8) = 6;
                if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                {
                  v29 = asString();
                  sub_101775AA8(v29, v83);
                }

                if (*(a2 + 23) < 0)
                {
                  sub_100005F2C(&v41, *a2, *(a2 + 1));
                }

                else
                {
                  v41 = *a2;
                  v42 = *(a2 + 2);
                }

                if (*(a2 + 47) < 0)
                {
                  sub_100005F2C(&v43, *(a2 + 3), *(a2 + 4));
                }

                else
                {
                  v43 = *(a2 + 24);
                  v44 = *(a2 + 5);
                }

                v45 = *(a2 + 24);
                sub_10002D728(&v46, a2 + 7);
                sub_1002030F8(&v47, a2 + 8);
                v48[0] = *(a2 + 9);
                *(v48 + 6) = *(a2 + 78);
                sub_1005E31C8(a1, &v41, &buf);
                sub_1002030AC(&v47);
                sub_10002D760(&v46);
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(v43);
                }

                if ((SHIBYTE(v42) & 0x80000000) == 0)
                {
                  goto LABEL_71;
                }

                v25 = v41;
              }
            }

            else
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101775BB0();
              }

              v81 = 0;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              buf = 0u;
              v74 = 0u;
              sub_100A34C5C(&buf);
              v88 = 0u;
              *v89 = 0u;
              v90 = 0;
              v86 = 0u;
              v87 = 0u;
              v85 = 0u;
              v89[8] = 2;
              *&v89[12] = 0x50000003CLL;
              sub_100A3640C(&buf);
              v21 = v78;
              *(v78 + 12) |= 1u;
              *(v21 + 8) = 6;
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                v22 = asString();
                sub_101775AA8(v22, v83);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(&v49, *a2, *(a2 + 1));
              }

              else
              {
                v49 = *a2;
                v50 = *(a2 + 2);
              }

              if (*(a2 + 47) < 0)
              {
                sub_100005F2C(&v51, *(a2 + 3), *(a2 + 4));
              }

              else
              {
                v51 = *(a2 + 24);
                v52 = *(a2 + 5);
              }

              v53 = *(a2 + 24);
              sub_10002D728(&v54, a2 + 7);
              sub_1002030F8(&v55, a2 + 8);
              v56[0] = *(a2 + 9);
              *(v56 + 6) = *(a2 + 78);
              sub_1005E31C8(a1, &v49, &buf);
              sub_1002030AC(&v55);
              sub_10002D760(&v54);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(v51);
              }

              if ((SHIBYTE(v50) & 0x80000000) == 0)
              {
                goto LABEL_71;
              }

              v25 = v49;
            }

LABEL_70:
            operator delete(v25);
            goto LABEL_71;
          }
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101775BE4();
        }

        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        buf = 0u;
        v74 = 0u;
        sub_100A34C5C(&buf);
        v88 = 0u;
        *v89 = 0u;
        v90 = 0;
        v86 = 0u;
        v87 = 0u;
        v85 = 0u;
        v89[8] = 2;
        *&v89[12] = 0x50000003CLL;
        sub_100A3640C(&buf);
        v23 = v78;
        *(v78 + 12) |= 1u;
        *(v23 + 8) = 6;
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          v24 = asString();
          sub_101775AA8(v24, &v84);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v57, *a2, *(a2 + 1));
        }

        else
        {
          v57 = *a2;
          v58 = *(a2 + 2);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v59, *(a2 + 3), *(a2 + 4));
        }

        else
        {
          v59 = *(a2 + 24);
          v60 = *(a2 + 5);
        }

        v61 = *(a2 + 24);
        sub_10002D728(&v62, a2 + 7);
        sub_1002030F8(&v63, a2 + 8);
        v64[0] = *(a2 + 9);
        *(v64 + 6) = *(a2 + 78);
        sub_1005E31C8(a1, &v57, &buf);
        sub_1002030AC(&v63);
        sub_10002D760(&v62);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
          goto LABEL_71;
        }

        v25 = v57;
        goto LABEL_70;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101775C18();
  }

  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  buf = 0u;
  v74 = 0u;
  sub_100A34C5C(&buf);
  v94 = 0u;
  *v95 = 0u;
  *&v95[20] = 0;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v95[8] = 2;
  *&v95[12] = 0x50000003CLL;
  sub_100A3640C(&buf);
  v19 = v78;
  *(v78 + 12) |= 1u;
  *(v19 + 8) = 1;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v20 = asString();
    sub_101775AA8(v20, &v85);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v66 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v68 = *(a2 + 5);
  }

  v69 = *(a2 + 24);
  sub_10002D728(&v70, a2 + 7);
  sub_1002030F8(&v71, a2 + 8);
  v72[0] = *(a2 + 9);
  *(v72 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, &__dst, &buf);
  sub_1002030AC(&v71);
  sub_10002D760(&v70);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(__dst);
  }

  sub_1002030AC(v95);
  sub_10002D760(&v94 + 1);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(*(&v92 + 1));
  }

  if (SBYTE7(v92) < 0)
  {
    operator delete(v91);
  }

  sub_100A34FF0(&buf);
  if (v8)
  {
    goto LABEL_87;
  }
}

void sub_1005EB724(_Unwind_Exception *a1)
{
  sub_1005AD788(&STACK[0x390]);
  sub_100A34FF0(&STACK[0x240]);
  sub_1005F16B8(&STACK[0x3F0]);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1005EB888(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "");
  if (SHIBYTE(v4) < 0)
  {
    sub_100005F2C((a1 + 16), __p[0], __p[1]);
    v2 = SHIBYTE(v4);
    *(a1 + 40) = 1;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v4;
    *(a1 + 40) = 1;
  }
}

void sub_1005EB908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EB924(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_100A34C5C(v22);
  sub_100A35E6C(v22);
  sub_10039EF40(*(&v22[0] + 1));
  PB::Data::assign(*(*(&v22[0] + 1) + 8), (a1 + 128), (a1 + 144));
  v5 = *a2;
  if (v5 == 1)
  {
    v8 = *(&v22[0] + 1);
    v9 = a2[1];
    *(*(&v22[0] + 1) + 24) |= 2u;
    *(v8 + 20) = v9;
  }

  else
  {
    if (v5 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v6 = *(&v22[0] + 1);
    v7 = a2[1];
    *(*(&v22[0] + 1) + 24) |= 1u;
    *(v6 + 16) = v7;
  }

  v10 = *(v4 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [ActivateProfileRsp]", buf, 2u);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(v13, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *v13 = *(a1 + 40);
    v14 = *(a1 + 56);
  }

  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *__p = *(a1 + 64);
    v16 = *(a1 + 80);
  }

  v17 = *(a1 + 88);
  sub_10002D728(&v18, (a1 + 96));
  sub_1002030F8(&v19, (a1 + 104));
  v20[0] = *(a1 + 112);
  *(v20 + 6) = *(a1 + 118);
  sub_1005E31C8(v4, v13, v22);
  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return sub_100A34FF0(v22);
}

void sub_1005EBB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v26);
  sub_100A34FF0(&a26);
  _Unwind_Resume(a1);
}

const void **sub_1005EBB74(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = *(a2 + 88);
  sub_10002D728((a1 + 96), (a2 + 96));
  result = sub_1002030F8((a1 + 104), (a2 + 104));
  v7 = *(a2 + 112);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 112) = v7;
  return result;
}

void sub_1005EBC18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EBC34(uint64_t a1)
{
  sub_1002030AC((a1 + 104));
  sub_10002D760((a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1005EBC9C(uint64_t a1, char a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005EBF14;
  v10[3] = &unk_101E699A8;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 144);
  v22 = a2;
  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(&v13, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
    v16 = *(a1 + 96);
  }

  v17 = *(a1 + 104);
  sub_10002D728(&v18, (a1 + 112));
  sub_1002030F8(&v19, (a1 + 120));
  v20[0] = *(a1 + 128);
  *(v20 + 6) = *(a1 + 134);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005EBED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EBF14(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v20 = 0;
        v19 = 0u;
        memset(v18, 0, sizeof(v18));
        sub_100A34C5C(v18);
        sub_100A360AC(v18);
        sub_10039EF40(v19);
        PB::Data::assign(*(v19 + 8), (a1 + 144), (a1 + 160));
        v6 = v19;
        v7 = *(a1 + 160);
        *(v19 + 24) |= 2u;
        *(v6 + 20) = v7;
        v8 = *(v3 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [UpdateProfileRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v9, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v9 = *(a1 + 56);
          v10 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v12 = *(a1 + 96);
        }

        v13 = *(a1 + 104);
        sub_10002D728(&v14, (a1 + 112));
        sub_1002030F8(&v15, (a1 + 120));
        v16[0] = *(a1 + 128);
        *(v16 + 6) = *(a1 + 134);
        sub_1005E31C8(v3, v9, v18);
        sub_1002030AC(&v15);
        sub_10002D760(&v14);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v10) < 0)
        {
          operator delete(v9[0]);
        }

        sub_100A34FF0(v18);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005EC0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

const void **sub_1005EC120(uint64_t a1, uint64_t a2)
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

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10002D728((a1 + 112), (a2 + 112));
  result = sub_1002030F8((a1 + 120), (a2 + 120));
  v8 = *(a2 + 128);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 128) = v8;
  return result;
}

void sub_1005EC1DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EC20C(uint64_t a1)
{
  sub_1002030AC((a1 + 120));
  sub_10002D760((a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

void sub_1005EC280(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005EC520;
  v10[3] = &unk_101E69A08;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 144);
  v22 = 0;
  if (*a2 - 1 <= 1)
  {
    v22 = *a2;
  }

  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(&v13, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
    v16 = *(a1 + 96);
  }

  v17 = *(a1 + 104);
  sub_10002D728(&v18, (a1 + 112));
  sub_1002030F8(&v19, (a1 + 120));
  v20[0] = *(a1 + 128);
  *(v20 + 6) = *(a1 + 134);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  LOBYTE(v22) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005EC4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EC520(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        sub_100A34C5C(&v22);
        sub_100A35EFC(&v22);
        sub_10039EF40(v23);
        PB::Data::assign(*(v23 + 8), (a1 + 144), (a1 + 160));
        v6 = *(a1 + 160);
        if (v6 == 1)
        {
          v9 = v23;
          v10 = *(a1 + 161);
          *(v23 + 24) |= 2u;
          *(v9 + 20) = v10;
        }

        else
        {
          if (v6 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          v7 = v23;
          v8 = *(a1 + 161);
          *(v23 + 24) |= 1u;
          *(v7 + 16) = v8;
        }

        v11 = *(v3 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [DeleteProfileRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v13, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v13 = *(a1 + 56);
          v14 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v16 = *(a1 + 96);
        }

        v17 = *(a1 + 104);
        sub_10002D728(&v18, (a1 + 112));
        sub_1002030F8(&v19, (a1 + 120));
        v20[0] = *(a1 + 128);
        *(v20 + 6) = *(a1 + 134);
        sub_1005E31C8(v3, v13, &v22);
        sub_1002030AC(&v19);
        sub_10002D760(&v18);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[0]);
        }

        sub_100A34FF0(&v22);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005EC74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);
  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

const void **sub_1005EC7A0(uint64_t a1, uint64_t a2)
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

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10002D728((a1 + 112), (a2 + 112));
  result = sub_1002030F8((a1 + 120), (a2 + 120));
  v8 = *(a2 + 128);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 128) = v8;
  *(a1 + 160) = 0;
  v9 = *(a2 + 160);
  if ((v9 - 1) <= 1)
  {
    *(a1 + 160) = v9;
    *(a1 + 161) = *(a2 + 161);
  }

  return result;
}

void sub_1005EC87C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EC8AC(uint64_t a1)
{
  *(a1 + 160) = 0;
  sub_1002030AC((a1 + 120));
  sub_10002D760((a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

void sub_1005EC924(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

uint64_t sub_1005ECA78(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_1002030AC((a1 + 72));
  sub_10002D760((a1 + 64));
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

void sub_1005ECADC(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1005ECD18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v12 + 247) < 0)
  {
    operator delete(*(v12 + 224));
  }

  if (*(v12 + 223) < 0)
  {
    operator delete(*(v12 + 200));
  }

  if (*(v12 + 199) < 0)
  {
    operator delete(v13[8]);
  }

  if (*(v12 + 175) < 0)
  {
    operator delete(v13[5]);
  }

  a12 = v13;
  sub_1000087B4(&a12);
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
  }

  if (*(v12 + 71) < 0)
  {
    operator delete(*(v12 + 48));
  }

  v15 = *(v12 + 40);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (*(v12 + 31) < 0)
  {
    operator delete(*(v12 + 8));
  }

  sub_10004F058(a1);
}

uint64_t sub_1005ECDD0(uint64_t a1)
{
  sub_1002030AC((a1 + 288));
  sub_10002D760((a1 + 280));
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v4 = (a1 + 112);
  sub_1000087B4(&v4);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1005ECEA8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1005ED070(void *a1)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  v3 = *(v1 + 112);
  if (v3)
  {
    *(v1 + 120) = v3;
    operator delete(v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10004F058(a1);
}

uint64_t sub_1005ED0EC(uint64_t a1)
{
  sub_1002030AC((a1 + 200));
  sub_10002D760((a1 + 192));
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_1005ED18C(uint64_t a1, char a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005ED404;
  v10[3] = &unk_101E69A68;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 144);
  v22 = a2;
  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(&v13, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
    v16 = *(a1 + 96);
  }

  v17 = *(a1 + 104);
  sub_10002D728(&v18, (a1 + 112));
  sub_1002030F8(&v19, (a1 + 120));
  v20[0] = *(a1 + 128);
  *(v20 + 6) = *(a1 + 134);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005ED3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ED404(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        memset(v18, 0, sizeof(v18));
        sub_100A34C5C(v18);
        sub_100A35F8C(v18);
        sub_10039EF40(v19);
        PB::Data::assign(*(v19 + 8), (a1 + 144), (a1 + 160));
        v6 = v19;
        v7 = *(a1 + 160);
        *(v19 + 24) |= 2u;
        *(v6 + 20) = v7;
        v8 = *(v3 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [StartSessionRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v9, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v9 = *(a1 + 56);
          v10 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v12 = *(a1 + 96);
        }

        v13 = *(a1 + 104);
        sub_10002D728(&v14, (a1 + 112));
        sub_1002030F8(&v15, (a1 + 120));
        v16[0] = *(a1 + 128);
        *(v16 + 6) = *(a1 + 134);
        sub_1005E31C8(v3, v9, v18);
        sub_1002030AC(&v15);
        sub_10002D760(&v14);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v10) < 0)
        {
          operator delete(v9[0]);
        }

        sub_100A34FF0(v18);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005ED5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1005ED610(uint64_t a1, char a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005ED888;
  v10[3] = &unk_101E69AC8;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 144);
  v22 = a2;
  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(&v13, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
    v16 = *(a1 + 96);
  }

  v17 = *(a1 + 104);
  sub_10002D728(&v18, (a1 + 112));
  sub_1002030F8(&v19, (a1 + 120));
  v20[0] = *(a1 + 128);
  *(v20 + 6) = *(a1 + 134);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005ED844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ED888(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        memset(v18, 0, sizeof(v18));
        sub_100A34C5C(v18);
        sub_100A3601C(v18);
        sub_10039EF40(v19);
        PB::Data::assign(*(v19 + 8), (a1 + 144), (a1 + 160));
        v6 = v19;
        v7 = *(a1 + 160);
        *(v19 + 24) |= 2u;
        *(v6 + 20) = v7;
        v8 = *(v3 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [EndSessionRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v9, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v9 = *(a1 + 56);
          v10 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v12 = *(a1 + 96);
        }

        v13 = *(a1 + 104);
        sub_10002D728(&v14, (a1 + 112));
        sub_1002030F8(&v15, (a1 + 120));
        v16[0] = *(a1 + 128);
        *(v16 + 6) = *(a1 + 134);
        sub_1005E31C8(v3, v9, v18);
        sub_1002030AC(&v15);
        sub_10002D760(&v14);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v10) < 0)
        {
          operator delete(v9[0]);
        }

        sub_100A34FF0(v18);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005EDA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1005EDA94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        memset(v20, 0, sizeof(v20));
        sub_100A34C5C(v20);
        sub_100A35CBC(v20);
        sub_10039EF40(*(&v21 + 1));
        PB::Data::assign(*(*(&v21 + 1) + 8), (a1 + 160), (a1 + 176));
        sub_1007D203C(*(&v21 + 1));
        v8 = *(a1 + 56);
        if (*(v8 + 144) == 1)
        {
          v9 = *(v8 + 95);
          if (v9 < 0)
          {
            v9 = *(v8 + 80);
          }

          v10 = v9 == 0;
        }

        else
        {
          v10 = 0;
        }

        buf[0] = 0;
        sub_10039E3AC(a2, v10, buf, *(*(&v21 + 1) + 16));
        if (buf[0] == 1)
        {
          sub_100111ED0(&v29);
        }

        v11 = *(v5 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [FetchProfileUserConsentRsp]", buf, 2u);
        }

        if (*(a1 + 95) < 0)
        {
          sub_100005F2C(v12, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          *v12 = *(a1 + 72);
          v13 = *(a1 + 88);
        }

        if (*(a1 + 119) < 0)
        {
          sub_100005F2C(__p, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          *__p = *(a1 + 96);
          v15 = *(a1 + 112);
        }

        v16 = *(a1 + 120);
        sub_10002D728(&v17, (a1 + 128));
        sub_1002030F8(&v18, (a1 + 136));
        v19[0] = *(a1 + 144);
        *(v19 + 6) = *(a1 + 150);
        sub_1005E31C8(v5, v12, v20);
        sub_1002030AC(&v18);
        sub_10002D760(&v17);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }

        sub_100A34FF0(v20);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1005EDCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a24);
  sub_100004A34(v42);
  _Unwind_Resume(a1);
}

const void **sub_1005EDD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
  }

  *(a1 + 120) = *(a2 + 120);
  sub_10002D728((a1 + 128), (a2 + 128));
  result = sub_1002030F8((a1 + 136), (a2 + 136));
  v9 = *(a2 + 144);
  *(a1 + 150) = *(a2 + 150);
  *(a1 + 144) = v9;
  return result;
}

void sub_1005EDE10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EDE4C(uint64_t a1)
{
  sub_1002030AC((a1 + 136));
  sub_10002D760((a1 + 128));
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005EDECC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*(a1 + 40))
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(v32, 0, sizeof(v32));
        sub_100A34C5C(v32);
        sub_100A35D4C(v32);
        v10 = *a2;
        if (v10 == 1)
        {
          v13 = v33;
          v14 = a2[1];
          *(v33 + 40) |= 2u;
          *(v13 + 36) = v14;
          if (*a2 == 1 && *a3 == 1)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            *buf = 0u;
            v27 = 0u;
            sub_10013F668(buf);
            memset(v25, 0, sizeof(v25));
            if (*a3)
            {
              LOBYTE(v39[0]) = 0;
              sub_10039EA60((a3 + 8), v25, v39, buf);
              if (LOBYTE(v39[0]) == 1)
              {
                sub_100111E24(v43, v43[1]);
                if (v42 < 0)
                {
                  operator delete(v41);
                }

                if (v40 < 0)
                {
                  operator delete(v39[2]);
                }
              }

              sub_1005EE2D4();
            }

            __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
          }
        }

        else
        {
          if (v10 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          v11 = v33;
          v12 = a2[1];
          *(v33 + 40) |= 1u;
          *(v11 + 32) = v12;
        }

        v15 = *(v7 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [FetchProfileResultRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v17, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v17 = *(a1 + 56);
          v18 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v20 = *(a1 + 96);
        }

        v21 = *(a1 + 104);
        sub_10002D728(&v22, (a1 + 112));
        sub_1002030F8(&v23, (a1 + 120));
        v24[0] = *(a1 + 128);
        *(v24 + 6) = *(a1 + 134);
        sub_1005E31C8(v7, v17, v32);
        sub_1002030AC(&v23);
        sub_10002D760(&v22);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        sub_100A34FF0(v32);
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1005EE1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_1005EE274(v39 - 144);
  *(v39 - 144) = &a23;
  sub_1005F141C((v39 - 144));
  sub_10013F740(&a26);
  sub_100A34FF0(&a38);
  sub_100004A34(v38);
  _Unwind_Resume(a1);
}

uint64_t sub_1005EE274(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_100111E24(a1 + 64, *(a1 + 72));
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *a1 = 0;
  }

  return a1;
}

void sub_1005EE428(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005EE6C8;
  v10[3] = &unk_101E69B88;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 144);
  v22 = 0;
  if (*a2 - 1 <= 1)
  {
    v22 = *a2;
  }

  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(&v13, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
    v16 = *(a1 + 96);
  }

  v17 = *(a1 + 104);
  sub_10002D728(&v18, (a1 + 112));
  sub_1002030F8(&v19, (a1 + 120));
  v20[0] = *(a1 + 128);
  *(v20 + 6) = *(a1 + 134);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v19);
  sub_10002D760(&v18);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  LOBYTE(v22) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005EE680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EE6C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        memset(v22, 0, sizeof(v22));
        sub_100A34C5C(v22);
        sub_100A35DDC(v22);
        sub_10039EF40(*(&v23 + 1));
        PB::Data::assign(*(*(&v23 + 1) + 8), (a1 + 144), (a1 + 160));
        v6 = *(a1 + 160);
        if (v6 == 1)
        {
          v9 = *(&v23 + 1);
          v10 = *(a1 + 161);
          *(*(&v23 + 1) + 24) |= 2u;
          *(v9 + 20) = v10;
        }

        else
        {
          if (v6 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          v7 = *(&v23 + 1);
          v8 = *(a1 + 161);
          *(*(&v23 + 1) + 24) |= 1u;
          *(v7 + 16) = v8;
        }

        v11 = *(v3 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [SendUserConsentRsp]", buf, 2u);
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v13, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v13 = *(a1 + 56);
          v14 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v16 = *(a1 + 96);
        }

        v17 = *(a1 + 104);
        sub_10002D728(&v18, (a1 + 112));
        sub_1002030F8(&v19, (a1 + 120));
        v20[0] = *(a1 + 128);
        *(v20 + 6) = *(a1 + 134);
        sub_1005E31C8(v3, v13, v22);
        sub_1002030AC(&v19);
        sub_10002D760(&v18);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[0]);
        }

        sub_100A34FF0(v22);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005EE8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);
  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1005EE948(uint64_t a1, __int128 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005EEC94;
  v10[3] = &unk_101E69BE8;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10027E51C(&v13, a2);
  memset(v23, 0, sizeof(v23));
  sub_10027E628(v23, *(a1 + 56), *(a1 + 64), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 64) - *(a1 + 56)) >> 3));
  v32 = *(a1 + 168);
  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(&v24, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
  }

  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    __p = *(a1 + 104);
    v27 = *(a1 + 120);
  }

  v28 = *(a1 + 128);
  sub_10002D728(&v29, (a1 + 136));
  sub_1002030F8(&v30, (a1 + 144));
  *(v31 + 6) = *(a1 + 158);
  v31[0] = *(a1 + 152);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v30);
  sub_10002D760(&v29);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  block[0] = v23;
  sub_100112048(block);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v18 == 1)
  {
    if (v20 < 0)
    {
      operator delete(v19);
    }

    v18 = 0;
  }

  if (v15 == 1)
  {
    if (v17 < 0)
    {
      operator delete(v16);
    }

    v15 = 0;
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005EEC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  sub_100112048(&a12);
  sub_10027E6B0(v53 + 56);
  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  _Unwind_Resume(a1);
}

void sub_1005EEC94(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        sub_100A34C5C(&v35);
        sub_100A3613C(&v35);
        if (*(a1 + 80) == 1)
        {
          v6 = *(a1 + 111);
          if (v6 < 0)
          {
            v6 = *(a1 + 96);
          }

          if (v6)
          {
            v7 = *(&v36 + 1);
            sub_10039EFFC(*(&v36 + 1));
            std::string::operator=(*(v7 + 8), (a1 + 88));
          }
        }

        if (*(a1 + 112) == 1)
        {
          v8 = *(a1 + 143);
          if (v8 < 0)
          {
            v8 = *(a1 + 128);
          }

          if (v8)
          {
            v9 = *(&v36 + 1);
            sub_10027F75C(*(&v36 + 1));
            std::string::operator=(*(v9 + 16), (a1 + 120));
          }
        }

        v10 = *(a1 + 144);
        if (*(a1 + 144))
        {
          v11 = *(&v36 + 1);
          *(*(&v36 + 1) + 68) |= 8u;
          *(v11 + 60) = v10;
        }

        if (*(a1 + 176) == 1)
        {
          v12 = *(&v36 + 1);
          v13 = *(a1 + 180);
          *(*(&v36 + 1) + 68) |= 2u;
          *(v12 + 52) = v13;
        }

        if (*(a1 + 184) == 1)
        {
          v14 = *(&v36 + 1);
          v15 = *(a1 + 188);
          *(*(&v36 + 1) + 68) |= 0x10u;
          *(v14 + 64) = v15;
        }

        v16 = *(a1 + 192);
        if (v16 != *(a1 + 200))
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          *buf = 0u;
          v30 = 0u;
          sub_10013F668(buf);
          memset(v28, 0, sizeof(v28));
          LOBYTE(v44[0]) = 0;
          sub_10039EA60(v16, v28, v44, buf);
          if (LOBYTE(v44[0]) == 1)
          {
            sub_100111E24(v48, v48[1]);
            if (v47 < 0)
            {
              operator delete(v46);
            }

            if (v45 < 0)
            {
              operator delete(v44[2]);
            }
          }

          sub_1005EE2D4();
        }

        if (*(a1 + 304))
        {
          v17 = *(&v36 + 1);
          v18 = *(a1 + 305);
          *(*(&v36 + 1) + 68) |= 4u;
          *(v17 + 56) = v18;
        }

        v19 = *(v3 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [DeviceInfoRsp]", buf, 2u);
        }

        if (*(a1 + 239) < 0)
        {
          sub_100005F2C(v20, *(a1 + 216), *(a1 + 224));
        }

        else
        {
          *v20 = *(a1 + 216);
          v21 = *(a1 + 232);
        }

        if (*(a1 + 263) < 0)
        {
          sub_100005F2C(__p, *(a1 + 240), *(a1 + 248));
        }

        else
        {
          *__p = *(a1 + 240);
          v23 = *(a1 + 256);
        }

        v24 = *(a1 + 264);
        sub_10002D728(&v25, (a1 + 272));
        sub_1002030F8(&v26, (a1 + 280));
        v27[0] = *(a1 + 288);
        *(v27 + 6) = *(a1 + 294);
        sub_1005E31C8(v3, v20, &v35);
        sub_1002030AC(&v26);
        sub_10002D760(&v25);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }

        sub_100A34FF0(&v35);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005EF000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a38);
  sub_100004A34(v38);
  _Unwind_Resume(a1);
}

const void **sub_1005EF074(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10027E51C((a1 + 56), (a2 + 56));
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_10027E628(a1 + 192, *(a2 + 192), *(a2 + 200), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 200) - *(a2 + 192)) >> 3));
  if (*(a2 + 239) < 0)
  {
    sub_100005F2C((a1 + 216), *(a2 + 216), *(a2 + 224));
  }

  else
  {
    v5 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v5;
  }

  if (*(a2 + 263) < 0)
  {
    sub_100005F2C((a1 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v6 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v6;
  }

  *(a1 + 264) = *(a2 + 264);
  sub_10002D728((a1 + 272), (a2 + 272));
  result = sub_1002030F8((a1 + 280), (a2 + 280));
  v8 = *(a2 + 288);
  *(a1 + 294) = *(a2 + 294);
  *(a1 + 288) = v8;
  return result;
}

void sub_1005EF188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 239) < 0)
  {
    operator delete(*(v2 + 216));
  }

  sub_100112048(va);
  sub_10027E6B0(v2 + 56);
  v4 = *(v2 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1005EF1DC(uint64_t a1)
{
  v2 = (a1 + 192);
  sub_1002030AC((a1 + 280));
  sub_10002D760((a1 + 272));
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v4 = v2;
  sub_100112048(&v4);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

const void **sub_1005EF2B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10027E628(a1 + 56, *(a2 + 56), *(a2 + 64), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v6;
  }

  *(a1 + 128) = *(a2 + 128);
  sub_10002D728((a1 + 136), (a2 + 136));
  result = sub_1002030F8((a1 + 144), (a2 + 144));
  v8 = *(a2 + 152);
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 152) = v8;
  return result;
}

void sub_1005EF3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  sub_100112048(va);
  v4 = *(v2 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1005EF3F4(uint64_t a1)
{
  v2 = (a1 + 56);
  sub_1002030AC((a1 + 144));
  sub_10002D760((a1 + 136));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = v2;
  sub_100112048(&v4);
  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1005EF468(uint64_t a1)
{
  sub_1002030AC((a1 + 104));
  sub_10002D760((a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1005EF4C8(uint64_t a1)
{
  sub_1002030AC((a1 + 88));
  sub_10002D760((a1 + 80));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005EF528(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1005EF73C(void *a1)
{
  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  sub_1005F16B8(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004F058(a1);
}

uint64_t sub_1005EF780(uint64_t a1)
{
  sub_1002030AC((a1 + 280));
  sub_10002D760((a1 + 272));
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  sub_1005F16B8(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005EF7E8(uint64_t a1, const std::string *a2, uint64_t a3)
{
  *cf = 0u;
  *v22 = 0u;
  *&v22[20] = 0;
  memset(v20, 0, sizeof(v20));
  v22[8] = 2;
  *&v22[12] = 0x50000003CLL;
  std::string::operator=(v20, a2);
  v22[8] = sub_1005E2830(a1, a2);
  sub_1005F0F14(a3, &v19);
  v23 = cf[1];
  cf[1] = v19;
  v19 = 0;
  sub_10002D760(&v23);
  sub_10002D760(&v19);
  v6 = *(a1 + 128);
  v7 = v6 == 2;
  if (v6 == 2)
  {
    v8 = 9;
  }

  else
  {
    v8 = 5;
  }

  LOWORD(cf[0]) = v8;
  if (!v7)
  {
    goto LABEL_13;
  }

  if (v22[8] != 1)
  {
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  if (v9)
  {
LABEL_10:
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_11:
  v11 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v9;
  if (v11)
  {
    sub_100004A34(v11);
  }

LABEL_13:
  v12 = *(a1 + 48);
  if (SHIBYTE(v20[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v13, v20[0].__r_.__value_.__l.__data_, v20[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v20[0];
  }

  if (SHIBYTE(v20[1].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v20[1].__r_.__value_.__l.__data_, v20[1].__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v20[1];
  }

  v15 = cf[0];
  v16 = cf[1];
  if (cf[1])
  {
    CFRetain(cf[1]);
  }

  v17 = *v22;
  if (*v22)
  {
    CFRetain(*v22);
  }

  v18[0] = *&v22[8];
  *(v18 + 6) = *&v22[14];
  (*(*v12 + 48))(v12, &v13, 0);
  sub_1002030AC(&v17);
  sub_10002D760(&v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  sub_1002030AC(v22);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v20[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_1005EFA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a24);
  _Unwind_Resume(a1);
}

void sub_1005EFA64(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, const unsigned __int8 *a5, unsigned __int8 *a6)
{
  if (sub_1005C1B18(a1 + 160, a4))
  {
    memset(&buf, 0, sizeof(buf));
    *&v21 = a4;
    v12 = sub_100289074(a1 + 160, a4);
    if (*(v12 + 71) < 0)
    {
      sub_100005F2C(&buf, *(v12 + 48), *(v12 + 56));
    }

    else
    {
      buf = *(v12 + 48);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    sub_100806978(&v21);
    sub_10080757C(&v21);
    v17 = v23;
    sub_10039FB7C(v23);
    std::string::operator=(*(v17 + 32), a2);
    sub_10039EFFC(v17);
    std::string::operator=(*(v17 + 8), a3);
    sub_1005B4084(v17);
    PB::Data::assign(*(v17 + 16), a5, a5 + 16);
    sub_1005BB960(v17);
    PB::Data::assign(*(v17 + 24), a4, (a4 + 16));
    v18 = *a6;
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v18 = 2;
        goto LABEL_23;
      }

      if (v18 == 4)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101775C4C();
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (v18 == 1)
      {
LABEL_23:
        *(v17 + 44) |= 1u;
        *(v17 + 40) = v18;
        goto LABEL_24;
      }

      if (v18 == 2)
      {
        v18 = 0;
        goto LABEL_23;
      }
    }

LABEL_24:
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [TransferConsentInd]", v20, 2u);
    }

    sub_1005EF7E8(a1, &buf, &v21);
LABEL_27:
    sub_100806B4C(&v21);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v16 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_29;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sCardSerialNumberAsString();
    v14 = (SBYTE7(v22) & 0x80u) == 0 ? &v21 : v21;
    v15 = *(a3 + 23) >= 0 ? a3 : *a3;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v14;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "no device id find for target eid: %s when sending transfer profile response for iccid:%s", &buf, 0x16u);
    if (SBYTE7(v22) < 0)
    {
      v16 = v21;
LABEL_29:
      operator delete(v16);
    }
  }
}

void sub_1005EFD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100806B4C(&a11);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005EFD4C(uint64_t a1, const std::string *a2, const std::string *a3, uint64_t a4, uint64_t a5, const unsigned __int8 *a6, unsigned __int8 *a7, uint64_t a8)
{
  if (sub_1005C1B18(a1 + 160, a4))
  {
    memset(&buf, 0, sizeof(buf));
    *&v35 = a4;
    v16 = sub_100289074(a1 + 160, a4);
    if (*(v16 + 71) < 0)
    {
      sub_100005F2C(&buf, *(v16 + 48), *(v16 + 56));
    }

    else
    {
      buf = *(v16 + 48);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    sub_100806978(&v35);
    sub_10080733C(&v35);
    v21 = *(&v37 + 1);
    sub_10039FE34(*(&v37 + 1));
    std::string::operator=(*(v21 + 48), a2);
    sub_10039FBF0(v21);
    std::string::operator=(*(v21 + 56), a3);
    sub_10039FB7C(v21);
    std::string::operator=(*(v21 + 32), a5);
    sub_10039EF40(v21);
    PB::Data::assign(*(v21 + 8), a6, a6 + 16);
    sub_1005F023C(v21);
    PB::Data::assign(*(v21 + 40), a4, (a4 + 16));
    v22 = *a7;
    if (v22 == 1)
    {
      v24 = a7[1];
      *(v21 + 76) |= 4u;
      *(v21 + 72) = v24;
      if (*(a8 + 25) & 1) != 0 || (*(a8 + 56) & 1) != 0 || (*(a8 + 88) & 1) != 0 || (*(a8 + 152) & 1) != 0 || (*(a8 + 184))
      {
        goto LABEL_25;
      }

      v25 = *(a8 + 223);
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a8 + 208);
      }

      if (v25 || (*(a8 + 256) & 1) != 0 || *(a8 + 226))
      {
LABEL_25:
        sub_1007E4638(v21);
        v26 = *(v21 + 16);
        if (*(a8 + 25) == 1)
        {
          v27 = *(a8 + 24);
          *(v26 + 92) |= 0x10u;
          *(v26 + 84) = v27;
        }

        if (*(a8 + 56) == 1)
        {
          sub_10039FC64(v26);
          std::string::operator=(*(v26 + 64), (a8 + 32));
        }

        if (*(a8 + 88) == 1)
        {
          sub_10039F9C0(v26);
          std::string::operator=(*(v26 + 40), (a8 + 64));
        }

        if (*(a8 + 152) == 1)
        {
          sub_10039FB7C(v26);
          std::string::operator=(*(v26 + 32), (a8 + 128));
        }

        if (*(a8 + 184) == 1)
        {
          sub_10039FBF0(v26);
          std::string::operator=(*(v26 + 56), (a8 + 160));
        }

        v28 = *(a8 + 226);
        *(v26 + 92) |= 8u;
        *(v26 + 80) = v28;
        v29 = *(a8 + 223);
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(a8 + 208);
        }

        if (v29)
        {
          sub_10039FE34(v26);
          std::string::operator=(*(v26 + 48), (a8 + 200));
        }

        if (*(a8 + 256) == 1)
        {
          sub_10027F75C(v26);
          std::string::operator=(*(v26 + 16), (a8 + 232));
        }

        if (*(a8 + 272) == 1)
        {
          v30 = *(a8 + 264);
          *(v26 + 92) |= 1u;
          *(v26 + 8) = v30;
        }
      }

      if (*(a8 + 193) == 1)
      {
        if (*(a8 + 192) - 2 > 2)
        {
          v31 = 1;
        }

        else
        {
          v31 = dword_10181F050[(*(a8 + 192) - 2)];
        }

        *(v21 + 76) |= 1u;
        *(v21 + 64) = v31;
      }
    }

    else
    {
      if (v22 != 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      v23 = a7[1];
      *(v21 + 76) |= 2u;
      *(v21 + 68) = v23;
    }

    v32 = *(a1 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I [TransferProfileInd]", v34, 2u);
    }

    sub_1005EF7E8(a1, &buf, &v35);
    sub_100806B4C(&v35);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = buf.__r_.__value_.__r.__words[0];
      goto LABEL_52;
    }
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sCardSerialNumberAsString();
      v18 = (SBYTE7(v36) & 0x80u) == 0 ? &v35 : v35;
      v19 = *(a5 + 23) >= 0 ? a5 : *a5;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v18;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no device id find for target eid: %s when sending transfer profile response for iccid:%s", &buf, 0x16u);
      if (SBYTE7(v36) < 0)
      {
        v20 = v35;
LABEL_52:
        operator delete(v20);
      }
    }
  }
}

void sub_1005F01F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  sub_100806B4C(&a11);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F023C(uint64_t result)
{
  if (!*(result + 40))
  {
    operator new();
  }

  return result;
}

void sub_1005F02A4(uint64_t a1, std::string::size_type a2, const std::string *a3, uint64_t a4, uint64_t a5, const std::string *a6, const unsigned __int8 **a7, int a8)
{
  *v27 = a4;
  v28 = a5;
  if (sub_1005C1B18(a1 + 160, v27))
  {
    memset(&buf, 0, sizeof(buf));
    *&v20 = v27;
    v14 = sub_100289074(a1 + 160, v27);
    if (*(v14 + 71) < 0)
    {
      sub_100005F2C(&buf, *(v14 + 48), *(v14 + 56));
    }

    else
    {
      buf = *(v14 + 48);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    sub_100806978(&v20);
    sub_10080760C(&v20);
    v18 = *(&v20 + 1);
    sub_10039EFFC(*(&v20 + 1));
    std::string::operator=(*(v18 + 8), a3);
    sub_10039F9C0(v18);
    std::string::operator=(*(v18 + 40), a2);
    sub_1005BB960(v18);
    PB::Data::assign(*(v18 + 24), v27, &v29);
    sub_10039FB7C(v18);
    std::string::operator=(*(v18 + 32), a6);
    sub_1005B4084(v18);
    PB::Data::assign(*(v18 + 16), *a7, a7[1]);
    *(v18 + 52) |= 1u;
    *(v18 + 48) = a8;
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
      {
        a6 = a6->__r_.__value_.__r.__words[0];
      }

      *v24 = 136446210;
      v25 = a6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [GenericTransferPayloadInd] - type:%{public}s", v24, 0xCu);
    }

    sub_1005EF7E8(a1, &buf, &v20);
    sub_100806B4C(&v20);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = buf.__r_.__value_.__r.__words[0];
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sCardSerialNumberAsString();
      if ((SBYTE7(v21) & 0x80u) == 0)
      {
        v16 = &v20;
      }

      else
      {
        v16 = v20;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = a2;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Not found: EID: %s and UUID: %s ", &buf, 0x16u);
      if (SBYTE7(v21) < 0)
      {
        v17 = v20;
LABEL_19:
        operator delete(v17);
      }
    }
  }
}

void sub_1005F0534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100806B4C(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005F0564(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v17[0] = a2;
  v17[1] = a3;
  if (sub_1005C1B18(a1 + 160, v17))
  {
    memset(&__p, 0, sizeof(__p));
    *&v12 = v17;
    v6 = sub_100289074(a1 + 160, v17);
    if (*(v6 + 71) < 0)
    {
      sub_100005F2C(&__p, *(v6 + 48), *(v6 + 56));
    }

    else
    {
      __p = *(v6 + 48);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    sub_100806978(&v12);
    sub_1008074EC(&v12);
    v8 = *(&v13 + 1);
    if ((a4[31] & 0x8000000000000000) != 0)
    {
      if (!*(a4 + 2))
      {
        goto LABEL_12;
      }
    }

    else if (!a4[31])
    {
LABEL_12:
      if ((a4[55] & 0x8000000000000000) != 0)
      {
        if (!*(a4 + 5))
        {
LABEL_17:
          v9 = *a4;
          *(v8 + 28) |= 1u;
          *(v8 + 24) = v9;
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [PurchasePlanInd]", v11, 2u);
          }

          sub_1005EF7E8(a1, &__p, &v12);
          sub_100806B4C(&v12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }
      }

      else if (!a4[55])
      {
        goto LABEL_17;
      }

      sub_10027F75C(v8);
      std::string::operator=(*(v8 + 16), (a4 + 32));
      goto LABEL_17;
    }

    sub_10039EFFC(*(&v13 + 1));
    std::string::operator=(*(v8 + 8), (a4 + 8));
    goto LABEL_12;
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_101775C80(v17, v7);
  }
}

void sub_1005F0740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100806B4C(&a11);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005F0770(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a1 + 136);
  if (v5 == *(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A74();
    }
  }

  else if (*a3 == *(a3 + 8))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No subscription details to send, aborting", buf, 2u);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *buf = 0u;
    v15 = 0u;
    sub_1005C1568(buf, v5);
    if (*(a1 + 128) == 2 || (BYTE8(v15) & 1) != 0)
    {
      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      sub_100806978(v12);
      sub_1008073CC(v12);
      sub_10039EF40(v13);
      PB::Data::assign(*(v13 + 8), a2, a2 + 16);
      v8 = *a3;
      if (*a3 != *(a3 + 8))
      {
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_100633230(v10);
        sub_10039F83C(v8, v10);
        sub_1005B70B8();
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionInd]", v10, 2u);
      }

      sub_1005EF7E8(a1, buf, v12);
      sub_100806B4C(v12);
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A0C();
    }

    if (SBYTE7(v19) < 0)
    {
      operator delete(v18);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16);
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1005F097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100806B4C(va);
  sub_1001F7CFC(v13 - 128);
  _Unwind_Resume(a1);
}

void sub_1005F09A8(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a1 + 136);
  if (v5 == *(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A74();
    }
  }

  else if (*a3 == *(a3 + 8))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No pending plans to send, aborting", buf, 2u);
    }
  }

  else
  {
    *__p = 0u;
    v22 = 0u;
    *v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    v18 = 0u;
    sub_1005C1568(buf, v5);
    if (*(a1 + 128) == 2 || (BYTE8(v18) & 1) != 0)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      sub_100806978(&v13);
      sub_10080745C(&v13);
      sub_10039EF40(v14);
      PB::Data::assign(*(v14 + 8), a2, a2 + 16);
      v8 = v14;
      *(v14 + 52) |= 1u;
      *(v8 + 48) = 2;
      v9 = *a3;
      if (*a3 != *(a3 + 8))
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1001DAF78(v11);
        sub_10039F6D4(v9, v11);
        sub_1005F0BF0();
      }

      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [ProfileStatusInd]", v11, 2u);
      }

      sub_1005EF7E8(a1, buf, &v13);
      sub_100806B4C(&v13);
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A0C();
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1005F0BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_100806B4C(va);
  sub_1001F7CFC(va1);
  _Unwind_Resume(a1);
}

void sub_1005F0D44(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 136);
  if (v6 == *(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A74();
    }
  }

  else
  {
    *__p = 0u;
    v22 = 0u;
    *v19 = 0u;
    v20 = 0u;
    *__dst = 0u;
    v18 = 0u;
    sub_1005C1568(__dst, v6);
    if (*(a1 + 128) == 2 || (BYTE8(v18) & 1) != 0)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      sub_100806978(&v13);
      sub_10080745C(&v13);
      sub_10039EF40(v14);
      PB::Data::assign(*(v14 + 8), a2, a2 + 16);
      v9 = v14;
      *(v14 + 52) |= 1u;
      *(v9 + 48) = a4 ^ 1;
      v10 = *(a3 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 8);
      }

      if (v10)
      {
        sub_10027F75C(v9);
        std::string::operator=(*(v9 + 16), a3);
      }

      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [ProfileStatusInd]", v12, 2u);
      }

      sub_1005EF7E8(a1, __dst, &v13);
      sub_100806B4C(&v13);
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A0C();
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1005F0EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_100806B4C(va);
  sub_1001F7CFC(va1);
  _Unwind_Resume(a1);
}

void sub_1005F0F14(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  PB::Writer::Writer(&v5);
  (*(*a1 + 24))(a1, &v5);
  if (v5 == v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFDataCreate(kCFAllocatorDefault, v6, v5 - v6);
  }

  *a2 = v4;
  PB::Writer::~Writer(&v5);
}

void sub_1005F0FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005F0FC4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return sub_100007E44(a1);
}

uint64_t sub_1005F1008(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005C147C(result, a4);
  }

  return result;
}

void sub_1005F1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1005C0EBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005F1090(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v4 = 0x333333333333333;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_1005F11B4(a1, v4);
  }

  v5 = 80 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *&v14 = 80 * v1 + 80;
  v6 = a1[1];
  v7 = 80 * v1 + *a1 - v6;
  sub_1005F120C(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_1005F139C(&v12);
  return v11;
}

void sub_1005F11A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005F139C(va);
  _Unwind_Resume(a1);
}

void sub_1005F11B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1005F120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(a4 + 72) = *(v7 + 72);
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_10027CB9C(a1, v5);
      v5 += 80;
    }
  }

  return sub_1005F1310(v12);
}

uint64_t sub_1005F1310(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005F1348(a1);
  }

  return a1;
}

void sub_1005F1348(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_10027CB9C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1005F139C(uint64_t a1)
{
  sub_1005F13D4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005F13D4(uint64_t a1, uint64_t a2)
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
    sub_10027CB9C(v5, v4 - 80);
  }
}

void sub_1005F141C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005F1470(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005F1470(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10027CB9C(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

char *sub_1005F14C4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_10004EFD0((__dst + 24), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(__dst + 3) = a2[3];
  if (*(a2 + 87) < 0)
  {
    sub_100005F2C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v5 = a2[4];
    *(__dst + 10) = *(a2 + 10);
    *(__dst + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C(__dst + 88, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 88);
    *(__dst + 13) = *(a2 + 13);
    *(__dst + 88) = v6;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C(__dst + 112, *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v7 = a2[7];
    *(__dst + 16) = *(a2 + 16);
    *(__dst + 7) = v7;
  }

  if (*(a2 + 159) < 0)
  {
    sub_100005F2C(__dst + 136, *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v8 = *(a2 + 136);
    *(__dst + 19) = *(a2 + 19);
    *(__dst + 136) = v8;
  }

  if (*(a2 + 183) < 0)
  {
    sub_100005F2C(__dst + 160, *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v9 = a2[10];
    *(__dst + 22) = *(a2 + 22);
    *(__dst + 10) = v9;
  }

  *(__dst + 23) = *(a2 + 23);
  return __dst;
}

void sub_1005F1628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  sub_1000087B4(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F16B8(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = (a1 + 24);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1005F1764(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005F1780(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_1005F1790(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E69D58;
  v5[1] = v3;
  v5[3] = v5;
  sub_1005F1A18(v5, a1);
  sub_100007E44(v5);
  return a1;
}

uint64_t sub_1005F1894(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E69D58;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005F18C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005F1914(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = xpc_string_create(v2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/local_ids_device_id");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1005F19D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_1005F1A18(void *result, void *a2)
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

void sub_1005F1C78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1005F1D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005F1E20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E69DD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1005F1E58(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7);
}

uint64_t sub_1005F1EE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005F1F2C(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  PB::Writer::Writer(&v5);
  (*(*a1 + 24))(a1, &v5);
  if (v5 == v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFDataCreate(kCFAllocatorDefault, v6, v5 - v6);
  }

  *a2 = v4;
  PB::Writer::~Writer(&v5);
}

void sub_1005F1FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F1FDC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_100A34C5C(v17);
  sub_100A361CC(v17);
  v3 = *(&v18 + 1);
  sub_10039EFFC(*(&v18 + 1));
  std::string::operator=(*(v3 + 8), (v1 + 96));
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v4 = *(v1 + 8);
    v10 = *(v1 + 24);
    *__dst = v4;
  }

  if (*(v1 + 55) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 32), *(v1 + 40));
  }

  else
  {
    v5 = *(v1 + 32);
    v12 = *(v1 + 48);
    __p = v5;
  }

  v13 = *(v1 + 56);
  sub_10002D728(&v14, (v1 + 64));
  sub_1002030F8(&v15, (v1 + 72));
  v16[0] = *(v1 + 80);
  *(v16 + 6) = *(v1 + 86);
  sub_1005E31C8(v2, __dst, v17);
  sub_1002030AC(&v15);
  sub_10002D760(&v14);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_100A34FF0(v17);
  sub_1005F2180(&v8);
  return sub_1000049E0(&v7);
}

void sub_1005F2134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_1005F2180(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F2180(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    sub_1002030AC((v1 + 72));
    sub_10002D760((v1 + 64));
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1005F2208(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&v24, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    *&v25 = *(v1 + 24);
    v24 = v3;
  }

  BYTE8(v25) = 1;
  v4 = (*(**(v1 + 32) + 48))(*(v1 + 32), v1 + 48, v1 + 72, v1 + 96, &v23, v1 + 112, v1 + 136, v1 + 152, v1 + 176, v1 + 200, v9, v10);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_100A34C5C(v19);
  sub_100A361CC(v19);
  v5 = *(&v20 + 1);
  sub_10039EFFC(*(&v20 + 1));
  std::string::operator=(*(v5 + 8), (v1 + 8));
  v6 = *(&v20 + 1);
  sub_10027F75C(*(&v20 + 1));
  std::string::operator=(*(v6 + 16), (v1 + 72));
  if ((v4 & 1) == 0)
  {
    v7 = *(&v20 + 1);
    *(*(&v20 + 1) + 28) |= 1u;
    *(v7 + 24) = 3;
  }

  if (*(v1 + 247) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 224), *(v1 + 232));
  }

  else
  {
    *__dst = *(v1 + 224);
    v12 = *(v1 + 240);
  }

  if (*(v1 + 271) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 248), *(v1 + 256));
  }

  else
  {
    __p = *(v1 + 248);
    v14 = *(v1 + 264);
  }

  v15 = *(v1 + 272);
  sub_10002D728(&v16, (v1 + 280));
  sub_1002030F8(&v17, (v1 + 288));
  v18[0] = *(v1 + 296);
  *(v18 + 6) = *(v1 + 302);
  sub_1005E31C8(v2, __dst, v19);
  sub_1002030AC(&v17);
  sub_10002D760(&v16);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_100A34FF0(v19);
  if (SBYTE7(v25) < 0)
  {
    operator delete(v24);
  }

  sub_1005F24DC(&v10);
  return sub_1000049E0(&v9);
}

void sub_1005F2470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a28);
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  sub_1005F24DC(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F24DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1005ECDD0(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1005F2524(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 47) < 0)
  {
    sub_100005F2C(&__dst, *(v1 + 24), *(v1 + 32));
  }

  else
  {
    __dst = *(v1 + 24);
    v34 = *(v1 + 40);
  }

  if (*(v1 + 71) < 0)
  {
    sub_100005F2C(&v31, *(v1 + 48), *(v1 + 56));
  }

  else
  {
    v31 = *(v1 + 48);
    v32 = *(v1 + 64);
  }

  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  if (*(v1 + 111) < 0)
  {
    sub_100005F2C(&v29, *(v1 + 88), *(v1 + 96));
  }

  else
  {
    v29 = *(v1 + 88);
    v30 = *(v1 + 104);
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100034C50(&v26, *(v1 + 112), *(v1 + 120), *(v1 + 120) - *(v1 + 112));
  (*(*v3 + 56))(v3, &__dst, &v31, v4, v5, &v29, &v26);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  sub_100A34C5C(v20);
  sub_100A3649C(v20);
  v6 = v21;
  sub_10039F9C0(v21);
  std::string::operator=(*(v6 + 40), (v1 + 24));
  v7 = v21;
  sub_10039EFFC(v21);
  std::string::operator=(*(v7 + 8), (v1 + 48));
  v8 = v21;
  sub_10039FB7C(v21);
  std::string::operator=(*(v8 + 32), (v1 + 88));
  if (*(v1 + 159) < 0)
  {
    sub_100005F2C(v12, *(v1 + 136), *(v1 + 144));
  }

  else
  {
    *v12 = *(v1 + 136);
    v13 = *(v1 + 152);
  }

  if (*(v1 + 183) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 160), *(v1 + 168));
  }

  else
  {
    __p = *(v1 + 160);
    v15 = *(v1 + 176);
  }

  v16 = *(v1 + 184);
  sub_10002D728(&v17, (v1 + 192));
  sub_1002030F8(&v18, (v1 + 200));
  v19[0] = *(v1 + 208);
  *(v19 + 6) = *(v1 + 214);
  sub_1005E31C8(v2, v12, v20);
  sub_1002030AC(&v18);
  sub_10002D760(&v17);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_100A34FF0(v20);
  sub_1005F287C(&v11);
  return sub_1000049E0(&v10);
}

void sub_1005F27C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_1005F287C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F287C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1005ED0EC(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1005F28C4(uint64_t a1)
{
  *a1 = off_101E69E58;
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005F293C(uint64_t a1)
{
  *a1 = off_101E69E58;
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1005F2A78(uint64_t a1)
{
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005F2AEC(uint64_t a1)
{
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1005F2B5C(uint64_t a1, uint64_t *a2)
{
  v6 = *(a1 + 8);
  v8 = v6;
  v4 = *(a1 + 24);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(v11, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *v11 = *(a1 + 48);
    v11[2] = *(a1 + 64);
  }

  if (*(a1 + 95) < 0)
  {
    sub_100005F2C(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    __p[2] = *(a1 + 88);
  }

  v13 = *(a1 + 96);
  sub_10002D728(&v14, (a1 + 104));
  sub_1002030F8(&v15, (a1 + 112));
  v5 = *(a1 + 126);
  v16[0] = *(a1 + 120);
  *(v16 + 6) = v5;
  memset(v17, 0, sizeof(v17));
  sub_100171D18(v17, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6));
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (v6 + 8));
  operator new();
}