void sub_10074DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074DB48(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "resetDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: resetting settings %s due to %s", buf, 0x20u);
  }

  for (i = 0; i != 2; ++i)
  {
    v8 = dword_101836038[i];
    if (v8 == a2 || anyContextType())
    {
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *(a1 + 120 + 24 * v8), *(a1 + 120 + 24 * v8 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v8 + 8) - *(a1 + 120 + 24 * v8)) >> 3));
      v9 = *buf;
      v10 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v11 = (*buf + 8);
        do
        {
          if (*(v11 + 8) == 1)
          {
            v12 = *(a1 + 112);
            if (v12 && (v13 = otherContextType(), (*(*v12 + 320))(v12, v13)) && !anyContextType())
            {
              v16 = otherContextType();
              v15 = (v9 + 8);
              v14 = 1;
            }

            else
            {
              (*(**v11 + 368))(*v11, a3);
              v14 = 0;
              v15 = v11;
              v16 = v8;
            }

            sub_100740A20(a1, v16, *v15, v14);
          }

          v9 += 24;
          v17 = v11 + 2;
          v11 += 3;
        }

        while (v17 != v10);
      }

      *(a1 + 232 + 4 * v8) = 0;
      *(a1 + 240 + v8) = 0;
      v18 = (a1 + 312 + 16 * v8);
      v19 = v18[1];
      *v18 = 0;
      v18[1] = 0;
      if (v19)
      {
        sub_100004A34(v19);
      }

      v20 = a1 + 360 + 16 * v8;
      v22 = *(v20 + 8);
      v21 = (v20 + 8);
      if (v22 == 1)
      {
        *v21 = 0;
      }

      *(a1 + 448 + 4 * v8) = 0;
      v23 = (a1 + 456 + 56 * v8);
      *v23 = 0;
      v23[1] = "";
      v23[2] = "";
      v23[3] = 0;
      v23[4] = 2;
      v24 = v23[6];
      v23[5] = 0;
      v23[6] = 0;
      if (v24)
      {
        sub_100004A34(v24);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }
  }

  *(a1 + 568) = 0u;
  v25 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *(a1 + 592) = 2;
  v26 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  sub_100741C98(a1 + 664);
  return (*(*a1 + 688))(a1, "settings resetting", 1, 0);
}

void sub_10074DF08(uint64_t a1, uint64_t a2, BOOL a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asStringBool(a3);
    if (a4)
    {
      v10 = (*(*a4 + 16))(a4);
    }

    else
    {
      v10 = "null";
    }

    v11 = asStringBool(*(a1 + 596));
    *buf = 136316162;
    *&buf[4] = "detachActivator";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    v44 = v9;
    v45 = 2080;
    v46 = v10;
    v47 = 2080;
    v48 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: detaching due to : %s forced : %s requestingObserver : %s detaching : %s", buf, 0x34u);
  }

  if (*(a1 + 596))
  {
    return;
  }

  *(a1 + 596) = 1;
  v12 = *(a1 + 112);
  if (!v12 || !(*(*v12 + 80))(v12, 2) || *(a1 + 232) || *(a1 + 236) || !(*(**(a1 + 112) + 16))(*(a1 + 112)) && sub_1000C5B50(a1))
  {
    goto LABEL_11;
  }

  v35 = (*(**(a1 + 112) + 16))(*(a1 + 112));
  if (a3)
  {
    goto LABEL_35;
  }

  v13 = 0;
  while (2)
  {
    v14 = dword_101836038[v13];
    v40 = 0;
    v41 = 0;
    v42 = 0;
    sub_10008A108(&v40, *(a1 + 120 + 24 * v14), *(a1 + 120 + 24 * v14 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v14 + 8) - *(a1 + 120 + 24 * v14)) >> 3));
    v16 = v40;
    v15 = v41;
    if (v40 == v41)
    {
      v21 = 1;
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    while (1)
    {
      if (LOBYTE(v16->__shared_weak_owners_) == 1)
      {
        shared_owners = v16->__shared_owners_;
        if (shared_owners != a4)
        {
          break;
        }
      }

LABEL_25:
      if (++v16 == v15)
      {
        v21 = 1;
        goto LABEL_31;
      }
    }

    if (!a4 && ((*(*shared_owners + 128))(shared_owners) & 1) == 0 && (*(*v16->__shared_owners_ + 192))(v16->__shared_owners_) == 5)
    {
      v18 = *(a1 + 64);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (*(*v16->__shared_owners_ + 16))(v16->__shared_owners_);
        v20 = asString();
        *buf = 136315650;
        *&buf[4] = "detachActivator";
        *&buf[12] = 2080;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: ephemeral observer %s is current on idle %s", buf, 0x20u);
      }

      goto LABEL_25;
    }

    v22 = *(a1 + 64);
    v21 = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (*(*v16->__shared_owners_ + 16))(v16->__shared_owners_);
      v24 = asString();
      *buf = 136315650;
      *&buf[4] = "detachActivator";
      *&buf[12] = 2080;
      *&buf[14] = v23;
      *&buf[22] = 2080;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: cannot detach because %s is current on %s", buf, 0x20u);
      v21 = 0;
    }

LABEL_31:
    v16 = v40;
    if (v40)
    {
LABEL_32:
      v41 = v16;
      operator delete(v16);
    }

LABEL_33:
    if (v21)
    {
      if (++v13 == 2)
      {
LABEL_35:
        v25 = *(a1 + 112);
        sub_100004AA0(buf, (a1 + 32));
        if (*buf)
        {
          v26 = *buf + 24;
        }

        else
        {
          v26 = 0;
        }

        v38 = v26;
        v39 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        v27 = (*(*v25 + 104))(v25, &v38);
        if (v39)
        {
          sub_100004A34(v39);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v27)
        {
          v28 = *(a1 + 64);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "detachActivator";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) detached from PDP %d", buf, 0x12u);
          }

          v29 = 0;
          *(a1 + 112) = 0;
          do
          {
            v30 = dword_101836038[v29];
            memset(buf, 0, sizeof(buf));
            sub_10008A108(buf, *(a1 + 120 + 24 * v30), *(a1 + 120 + 24 * v30 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v30 + 8) - *(a1 + 120 + 24 * v30)) >> 3));
            v31 = *buf;
            v32 = *&buf[8];
            if (*buf != *&buf[8])
            {
              do
              {
                if (*(v31 + 16) == 1)
                {
                  sub_100740A20(a1, v30, *(v31 + 8), 0);
                  v33 = *(v31 + 8);
                  sub_100004AA0(&v40, (a1 + 32));
                  if (v40)
                  {
                    v34 = v40 + 1;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v36 = v34;
                  v37 = v41;
                  v40 = 0;
                  v41 = 0;
                  (*(*v33 + 64))(v33, v30, &v36);
                  if (v37)
                  {
                    sub_100004A34(v37);
                  }

                  if (v41)
                  {
                    sub_100004A34(v41);
                  }

                  (*(**(v31 + 8) + 368))(*(v31 + 8), "detach activator");
                }

                v31 += 24;
              }

              while (v31 != v32);
              v31 = *buf;
            }

            if (v31)
            {
              *&buf[8] = v31;
              operator delete(v31);
            }

            ++v29;
          }

          while (v29 != 2);
        }

        break;
      }

      continue;
    }

    break;
  }

LABEL_11:
  *(a1 + 596) = 0;
}

void sub_10074E570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  *(v22 + 596) = 0;
  _Unwind_Resume(exception_object);
}

void sub_10074E614(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "clearActivator";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: clearing activator", buf, 0xCu);
  }

  v3 = *(a1 + 112);
  if (v3 && (*(*v3 + 80))(v3, 2) && !*(a1 + 232) && !*(a1 + 236) && ((*(**(a1 + 112) + 16))(*(a1 + 112)) || !sub_1000C5B50(a1)))
  {
    v4 = (*(**(a1 + 112) + 16))(*(a1 + 112));
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "clearActivator";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) cleared from PDP %d", buf, 0x12u);
    }

    v6 = 0;
    *(a1 + 112) = 0;
    do
    {
      v7 = dword_101836038[v6];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *(a1 + 120 + 24 * v7), *(a1 + 120 + 24 * v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v7 + 8) - *(a1 + 120 + 24 * v7)) >> 3));
      v8 = *buf;
      v9 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v8 + 16) == 1)
          {
            sub_100740A20(a1, v7, *(v8 + 8), 0);
            v10 = *(v8 + 8);
            sub_100004AA0(&v12, (a1 + 32));
            if (v12)
            {
              v11 = v12 + 24;
            }

            else
            {
              v11 = 0;
            }

            v14 = v11;
            v15 = v13;
            v12 = 0;
            v13 = 0;
            (*(*v10 + 64))(v10, v7, &v14);
            if (v15)
            {
              sub_100004A34(v15);
            }

            if (v13)
            {
              sub_100004A34(v13);
            }

            (*(**(v8 + 8) + 368))(*(v8 + 8), "detach activator");
          }

          v8 += 24;
        }

        while (v8 != v9);
        v8 = *buf;
      }

      if (v8)
      {
        *&buf[8] = v8;
        operator delete(v8);
      }

      ++v6;
    }

    while (v6 != 2);
  }
}

uint64_t sub_10074E978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v12 = a1[8];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "requestQos";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v13 = a1[14];
  if (!v13)
  {
    return 0;
  }

  (*(*a1 + 16))(&v17, a1);
  sub_100010024(&v16, a5);
  v14 = (*(*v13 + 136))(v13, a2, &v17, a3, a4, &v16, a6);
  sub_10001021C(&v16);
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v14;
}

void sub_10074EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EB1C(void *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v8 = a1[8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "setPacketNotificationFilter";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v9 = a1[14];
  if (v9)
  {
    (*(*a1 + 16))(&v11, a1);
    sub_100010024(&v10, a4);
    (*(*v9 + 144))(v9, a2, &v11, a3, &v10);
    sub_10001021C(&v10);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }
}

void sub_10074EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EC98(void *a1, uint64_t a2, const void **a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "dropIPPackets";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v7 = a1[14];
  if (v7)
  {
    (*(*a1 + 16))(&v9, a1);
    sub_10006F22C(&v8, a3);
    (*(*v7 + 152))(v7, a2, &v9, &v8);
    sub_100010250(&v8);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10074EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100010250(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EE04(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "dropIMSPackets";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v5 = a1[14];
  if (v5)
  {
    (*(*a1 + 16))(&v6, a1);
    (*(*v5 + 160))(v5, a2, &v6);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_10074EF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074EF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "setQuality";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v9 = a1[14];
  if (v9)
  {
    (*(*a1 + 16))(&v10, a1);
    (*(*v9 + 168))(v9, a2, &v10, a3, a4);
    if (v11)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_10074F084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074F0AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[14];
  if (v4)
  {
    (*(*a1 + 16))(&v9, a1);
    v7 = (*(*a1 + 136))(a1, 0, 0, 0);
    (*(*v4 + 408))(v4, &v9, a2, a3, v7);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E invalid fDataActivator", buf, 2u);
    }
  }
}

void sub_10074F1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074F1F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315138;
    *&v10[4] = "handleDataContextGrabbed";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", v10, 0xCu);
  }

  v7 = a1[14];
  if (v7 == a3)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177C8D4(a1 + 14, v10);
    v7 = *v10;
  }

  if (v7 == a3 || (__TUAssertTrigger(), a1[14] == a3))
  {
LABEL_8:
    v8 = sub_100741BB8(a1, a2);
    if (v8 == 1)
    {
      (*(*a1 + 1240))(a1, a2, 0);
      (*(*a1 + 1224))(a1, a2);
      sub_1007486F8(a1, a2);
    }

    v9 = otherContextType();
    if (sub_100741BB8(a1, v9) == 1)
    {
      (*(*a1 + 1240))(a1, v9, 0);
      if (v8 != 1)
      {
        (*(*a1 + 1224))(a1, v9);
        sub_1007486F8(a1, v9);
      }
    }
  }
}

void sub_10074F450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315138;
    *&v13[4] = "handleDataContextGrabRejected";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", v13, 0xCu);
  }

  v7 = a1[14];
  if (v7 == a3)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177C988(a1 + 14, v13);
    v7 = *v13;
  }

  if (v7 == a3 || (__TUAssertTrigger(), a1[14] == a3))
  {
LABEL_8:
    v8 = sub_100741BB8(a1, a2);
    if (v8 == 1)
    {
      sub_1007435C0(a1, a2, 4294967287);
      (*(*a1 + 480))(a1, a2);
    }

    v9 = otherContextType();
    if (sub_100741BB8(a1, v9) == 1)
    {
      (*(*a1 + 1240))(a1, v9, 0);
      sub_1007435C0(a1, v9, 4294967287);
      (*(*a1 + 480))(a1, v9);
    }

    else if (v8 != 1)
    {
      v10 = sub_100741BB8(a1, a2);
      if ((v10 - 1) < 2)
      {
        (*(*a1 + 1240))(a1, a2, 0);
        sub_1007435C0(a1, a2, 4294967287);
        (*(*a1 + 480))(a1, a2);
      }

      else if (v10)
      {
        if (v10 == 3)
        {
          (*(*a1 + 464))(a1, a2);
        }
      }

      else
      {
        v11 = a1[8];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          sub_100741BB8(a1, a2);
          v12 = asString();
          *v13 = 136315394;
          *&v13[4] = "handleDataContextGrabRejected";
          v14 = 2080;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: ERR: At wrong state %s", v13, 0x16u);
        }
      }
    }
  }
}

uint64_t sub_10074F7C8(uint64_t a1, int a2)
{
  if (validContextType())
  {
    memset(v12, 0, sizeof(v12));
    sub_10008A108(v12, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
    v4 = v12[0];
    v5 = v12[1];
    if (v12[0] == v12[1])
    {
      v8 = 0;
      if (!v12[0])
      {
        return v8;
      }
    }

    else
    {
      v6 = v12[0] + 24;
      do
      {
        v7 = (*(**(v6 - 16) + 160))(*(v6 - 16));
        v8 = v7;
        if (v6 == v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7;
        }

        v6 += 24;
      }

      while (v9 != 1);
      v4 = v12[0];
      if (!v12[0])
      {
        return v8;
      }
    }

    v12[1] = v4;
    operator delete(v4);
    return v8;
  }

  v10 = *(a1 + 64);
  v8 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 136315394;
    *(v12 + 4) = "isSMSOverIMSnoVoLTEEnabled";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    return 0;
  }

  return v8;
}

uint64_t sub_10074F970(uint64_t a1, int a2)
{
  if (validContextType())
  {
    memset(v12, 0, sizeof(v12));
    sub_10008A108(v12, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
    v4 = v12[0];
    v5 = v12[1];
    if (v12[0] == v12[1])
    {
      v8 = 0;
      if (!v12[0])
      {
        return v8;
      }
    }

    else
    {
      v6 = v12[0] + 24;
      do
      {
        v7 = (*(**(v6 - 16) + 224))(*(v6 - 16));
        v8 = v7;
        if (v6 == v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7;
        }

        v6 += 24;
      }

      while (v9 != 1);
      v4 = v12[0];
      if (!v12[0])
      {
        return v8;
      }
    }

    v12[1] = v4;
    operator delete(v4);
    return v8;
  }

  v10 = *(a1 + 64);
  v8 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 136315394;
    *(v12 + 4) = "isDadRequired";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    return 0;
  }

  return v8;
}

uint64_t sub_10074FB18(uint64_t a1, int a2, uint64_t a3)
{
  if (validContextType())
  {
    memset(v11, 0, sizeof(v11));
    sub_10008A108(v11, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
    v6 = v11[0];
    v7 = v11[1];
    if (v11[0] == v11[1])
    {
      v8 = 1;
      if (!v11[0])
      {
        return v8;
      }

      goto LABEL_13;
    }

    while (!sub_1007490E0(a1, v6) || ((*(*v6[1] + 216))(v6[1], a3) & 1) != 0)
    {
      v6 += 3;
      if (v6 == v7)
      {
        v8 = 1;
        goto LABEL_12;
      }
    }

    v8 = 0;
LABEL_12:
    v6 = v11[0];
    if (v11[0])
    {
LABEL_13:
      v11[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11[0]) = 136315394;
      *(v11 + 4) = "deactivateWithReasonAllowed";
      WORD2(v11[1]) = 2080;
      *(&v11[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v11, 0x16u);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10074FCDC(uint64_t a1, int a2, uint64_t a3)
{
  if (validContextType())
  {
    memset(v11, 0, sizeof(v11));
    sub_10008A108(v11, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
    v6 = v11[0];
    v7 = v11[1];
    if (v11[0] == v11[1])
    {
      v8 = 0;
      if (!v11[0])
      {
        return v8;
      }

      goto LABEL_13;
    }

    while (!sub_1007490E0(a1, v6) || ((*(*v6[1] + 168))(v6[1], a3) & 1) == 0)
    {
      v6 += 3;
      if (v6 == v7)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = 1;
LABEL_12:
    v6 = v11[0];
    if (v11[0])
    {
LABEL_13:
      v11[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11[0]) = 136315394;
      *(v11 + 4) = "shouldDeactivateBeDelayed";
      WORD2(v11[1]) = 2080;
      *(&v11[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v11, 0x16u);
      return 0;
    }
  }

  return v8;
}

const void **sub_10074FEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v49 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
  v14 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v12 + 96))(v47, v12, v14, 1, @"NoDafPopupTemporaryErrors", 0, 0);
  sub_100060DE8(&v49, v47);
  sub_10000A1EC(v47);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v49)
  {
    memset(buf, 0, sizeof(buf));
    v53 = 0;
    ctu::cf::assign();
    *v47 = *buf;
    v48 = v53;
    v15 = *(a1 + 64);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v47;
      if (v48 < 0)
      {
        v16 = v47[0];
      }

      *buf = 136446210;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I noPopupDafListStr = %{public}s", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
    v53 = 0;
    DataUtils::tokenizeWithBasicDelimiters();
    v17 = *buf;
    v18 = *&buf[8];
    if (*buf != *&buf[8])
    {
      while (1)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        sub_10000501C(__p, ":");
        DataUtils::tokenize();
        if (v51 < 0)
        {
          operator delete(*__p);
        }

        v19 = v44;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
        if (v20 == 2)
        {
          break;
        }

        if (v20 == 1)
        {
          v21 = 0;
          if (v44[23] < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v33 = *(a1 + 64);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v17;
          if (*(v17 + 23) < 0)
          {
            v34 = *v17;
          }

          *__p = 136446210;
          *&__p[4] = v34;
          v35 = v33;
          v36 = "#E wrong token in noPopupDafListStr = %{public}s";
          v37 = 12;
LABEL_45:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, __p, v37);
        }

LABEL_46:
        *__p = &v44;
        sub_1000087B4(__p);
        v17 += 3;
        if (v17 == v18)
        {
          goto LABEL_47;
        }
      }

      v31 = v44;
      if (v44[23] < 0)
      {
        v31 = *v44;
      }

      v21 = atoi(v31);
      v32 = v19[47];
      v19 += 24;
      if (v32 < 0)
      {
LABEL_22:
        v19 = *v19;
      }

LABEL_23:
      v22 = atoi(v19);
      v23 = v22;
      v25 = *(a2 + 8);
      v24 = *(a2 + 16);
      if (v25 >= v24)
      {
        v27 = (v25 - *a2) >> 3;
        if ((v27 + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        v28 = v24 - *a2;
        v29 = v28 >> 2;
        if (v28 >> 2 <= (v27 + 1))
        {
          v29 = v27 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          sub_10006A8B4(a2, v30);
        }

        v38 = (8 * v27);
        *v38 = v21 | (v22 << 32);
        v26 = 8 * v27 + 8;
        v39 = *(a2 + 8) - *a2;
        v40 = v38 - v39;
        memcpy(v38 - v39, *a2, v39);
        v41 = *a2;
        *a2 = v40;
        *(a2 + 8) = v26;
        *(a2 + 16) = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v25 = v21 | (v22 << 32);
        v26 = (v25 + 1);
      }

      *(a2 + 8) = v26;
      v42 = *(a1 + 64);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *__p = 67109376;
      *&__p[4] = v21;
      *&__p[8] = 1024;
      *&__p[10] = v23;
      v35 = v42;
      v36 = "#I noPopupDafListStr token: %d/%d";
      v37 = 14;
      goto LABEL_45;
    }

LABEL_47:
    v44 = buf;
    sub_1000087B4(&v44);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }
  }

  return sub_100005978(&v49);
}

void sub_100750330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100005978(&a23);
  v31 = *v29;
  if (*v29)
  {
    *(v29 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100750418(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(v1 + 312);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not ";
    if (v2)
    {
      v4 = "";
    }

    v6 = 136315394;
    v7 = "isImsAltNameConfigured";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: alt-name is %ssupported", &v6, 0x16u);
  }

  return v2 & 1;
}

uint64_t sub_1007504FC(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(v1 + 233);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not ";
    if (v2)
    {
      v4 = "";
    }

    v6 = 136315394;
    v7 = "isSwitchOverSupported";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: switchover is %ssupported", &v6, 0x16u);
  }

  return v2 & 1;
}

void sub_1007505E0(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v6);
    (*(*v3 + 312))(v3, 0, &v6, a2, a3);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_10075069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007506C0(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 234);
  }

  return v1 & 1;
}

uint64_t sub_1007506D4(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 234);
  }

  return v1 & 1;
}

uint64_t sub_1007506E8(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 235);
  }

  return v1 & 1;
}

uint64_t sub_1007506FC(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 235);
  }

  return v1 & 1;
}

uint64_t sub_100750710(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = *(v2 + 236);
  }

  else
  {
    v3 = 0;
  }

  v31 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_12:
  v14 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v12 + 96))(&v30, v12, v14, 1, @"EnableWiFiN1ModeOnlyWhenSAEnabled", kCFBooleanFalse, 0);
  sub_10002FE1C(&v31, &v30);
  sub_10000A1EC(&v30);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v31, v15);
  if (buf[0] == 1)
  {
    v16 = Registry::getServiceMap(*(a1 + 72));
    v17 = v16;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(v16);
    *buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        if (!v24)
        {
LABEL_27:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          goto LABEL_29;
        }

LABEL_24:
        v26 = PersonalitySpecificImpl::simSlot(a1);
        v27 = (*(*v24 + 752))(v24, v26);
        v28 = *(a1 + 64);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v3 & 1;
          v33 = 1024;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Support5GSaHandOver=%d, saCapability=%d", buf, 0xEu);
        }

        v3 &= v27;
        goto LABEL_27;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_29:
  sub_100045C8C(&v31);
  return v3 & 1;
}

void sub_100750A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100750A80(uint64_t a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v11 = *(a1 + 64);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v12 = 136315394;
    v13 = "isContextConfiguredOnConnections";
    v14 = 2080;
    v15 = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v12, 0x16u);
    return 0;
  }

  v4 = a1 + 24 * a2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = v5 + 24;
  do
  {
    v8 = (*(**(v7 - 16) + 184))(*(v7 - 16), a2);
    if (v8)
    {
      v9 = v7 == v6;
    }

    else
    {
      v9 = 1;
    }

    v7 += 24;
  }

  while (!v9);
  return v8 ^ 1u;
}

uint64_t sub_100750BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((validContextType() & 1) == 0)
  {
    v16 = *(a1 + 64);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handoverPossible";
      v41 = 2080;
      v42 = asString();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 2;
  }

  if (a3 == 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
    v7 = ServiceMap;
    if (v8 < 0)
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
    *buf = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, buf);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
        if (!v14)
        {
LABEL_31:
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          goto LABEL_33;
        }

LABEL_14:
        v17 = PersonalitySpecificImpl::simSlot(a1);
        if (!(*(*v14 + 240))(v14, v17))
        {
          goto LABEL_31;
        }

        v39 = 0;
        v18 = Registry::getServiceMap(*(a1 + 72));
        v19 = v18;
        if (v20 < 0)
        {
          v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
          v22 = 5381;
          do
          {
            v20 = v22;
            v23 = *v21++;
            v22 = (33 * v22) ^ v23;
          }

          while (v23);
        }

        std::mutex::lock(v18);
        *buf = v20;
        v24 = sub_100009510(&v19[1].__m_.__sig, buf);
        if (v24)
        {
          v26 = v24[3];
          v25 = v24[4];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v19);
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v25);
            v27 = 0;
LABEL_23:
            v28 = PersonalitySpecificImpl::simSlot(a1);
            (*(*v26 + 96))(&v38, v26, v28, 1, @"PreventWiFiHandoverInEmergency", kCFBooleanFalse, 0);
            sub_10002FE1C(&v39, &v38);
            sub_10000A1EC(&v38);
            if ((v27 & 1) == 0)
            {
              sub_100004A34(v25);
            }

            buf[0] = 0;
            ctu::cf::assign(buf, v39, v29);
            if (buf[0] == 1)
            {
              v30 = *(a1 + 64);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "handoverPossible";
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Emergency mode - stay on the same transport", buf, 0xCu);
              }

              sub_100045C8C(&v39);
              if ((v15 & 1) == 0)
              {
                sub_100004A34(v13);
              }

              return a2;
            }

            sub_100045C8C(&v39);
            goto LABEL_31;
          }
        }

        else
        {
          v26 = 0;
        }

        std::mutex::unlock(v19);
        v25 = 0;
        v27 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

LABEL_33:
  v31 = a1 + 24 * a2;
  v32 = *(v31 + 120);
  v33 = *(v31 + 128);
  if (v32 == v33)
  {
    return 2;
  }

  v34 = 1;
  v35 = a3;
  do
  {
    if (sub_1007490E0(a1, v32))
    {
      v36 = (*(**(v32 + 8) + 176))(*(v32 + 8), a2, a3);
      if (v36 == a3)
      {
        v34 = 0;
      }

      else
      {
        if (v36 == a2)
        {
          return a2;
        }

        v34 = 0;
        v35 = 2;
      }
    }

    v32 += 24;
  }

  while (v32 != v33);
  if (v34)
  {
    return 2;
  }

  else
  {
    return v35;
  }
}

void sub_100750FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100751040(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[14];
  if (!v3)
  {
    return 1;
  }

  (*(*a1 + 16))(&v8);
  v6 = (*(*v3 + 424))(v3, a2, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return v6;
}

void sub_100751108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100751128(Registry **a1)
{
  if (!(*(*a1 + 135))(a1))
  {
    v2 = 0;
    return v2 & 1;
  }

  if (sub_1000C5B50(a1))
  {
    v2 = 1;
    return v2 & 1;
  }

  v17 = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_12:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_13:
  v13 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v11 + 96))(&v16, v11, v13, 1, @"PreventCellularHandoverInIdleCelWWANForNDDS", kCFBooleanFalse, 0);
  sub_10002FE1C(&v17, &v16);
  sub_10000A1EC(&v16);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  LOBYTE(v18) = 0;
  ctu::cf::assign(&v18, v17, v14);
  v2 = v18 ^ 1;
  sub_100045C8C(&v17);
  return v2 & 1;
}

void sub_1007512E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_100751320(PersonalitySpecificImpl *a1, int a2)
{
  if ((*(*a1 + 1080))(a1))
  {
    v4 = 0;
    for (i = 0; i != 2; ++i)
    {
      v6 = (a1 + 24 * dword_101836038[i] + 120);
      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        if (*(v7 + 16) == 1)
        {
          v4 |= (*(**(v7 + 8) + 136))(*(v7 + 8));
        }

        v7 += 24;
      }
    }

    if (v4)
    {
      v9 = sub_1000C2A4C(a1, 0, 0);
      v10 = (*(*a1 + 928))(a1);
      v11 = PersonalitySpecificImpl::simSlot(a1);
      if (v11 == a2 || v9 != 1 || v10 || !capabilities::ct::supportsGemini(v11))
      {
        sub_10000501C(__p, "Check if need to switch to delayed iRat type after call finish");
        v13 = (*(*a1 + 1248))(a1, v9, __p);
        v14 = v13;
        if (v18 < 0)
        {
          operator delete(*__p);
          if (v14)
          {
            return;
          }
        }

        else if (v13)
        {
          return;
        }

        sub_100748B24(a1, v9);
        return;
      }

      v12 = *(a1 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = asString();
        v16 = 2080;
        v17 = asString();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Vega switchoverto after call: let's not try Vega HO at this point: contextType=%s, transportType=%s", __p, 0x16u);
      }
    }
  }
}

void sub_100751590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007515BC(PersonalitySpecificImpl *this, uint64_t a2, uint64_t *a3, int a4)
{
  if (!a4)
  {
LABEL_35:
    LODWORD(__p) = PersonalitySpecificImpl::simSlot(this);
    v27 = 0;
    v28 = 0;
    *(&__p + 1) = 0;
    sub_10004EFD0(&__p + 8, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v29 = (*(*this + 136))(this, a2, 1, 0);
    v30 = a2;
    sub_1007519DC();
    v23 = &__p + 1;
    sub_1000087B4(&v23);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(this + 9));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&__p = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
  if (!v13)
  {
    v15 = 0;
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_8:
    if (os_log_type_enabled(*(this + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10177CAD8();
    }

    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    goto LABEL_35;
  }

LABEL_14:
  __p = 0uLL;
  v27 = 0;
  (*(*this + 816))(&__p, this);
  v23 = 0;
  v24 = 0;
  (*(*v15 + 40))(&v23, v15, &__p);
  if (v23)
  {
    cf = 0;
    (*v23)[5](&cf);
    v17 = cf;
    v25 = 0;
    if (cf && (v18 = CFGetTypeID(cf), v18 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v25, v17, v19);
      v20 = v25;
    }

    else
    {
      v20 = 0;
    }

    sub_10000A1EC(&cf);
  }

  else
  {
    if (os_log_type_enabled(*(this + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10177CA3C();
    }

    v20 = 0;
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v20 & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = *(this + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 136315138;
    *(&__p + 4) = "proxyUpdate";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: suppressed proxy change in handover", &__p, 0xCu);
    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

LABEL_32:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_35;
  }
}

void sub_100751958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007519DC()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/proxy_update");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_100751A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100751ABC(Registry **a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(a1[9]);
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_10:
    v16 = PersonalitySpecificImpl::simSlot(a1);
    v17 = (*(*a1 + 17))(a1, a2, 1, 0);
    (*(*v14 + 744))(v14, v16, a3, v17);
  }

LABEL_11:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100751C30(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100751C50(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    *buf = 136315650;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    v130 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: context type = %s, reason = %s", buf, 0x20u);
  }

  if (!*(a1 + 14))
  {
    v17 = *(a1 + 8);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: activator empty";
LABEL_18:
    v15 = v17;
    v16 = 12;
    goto LABEL_19;
  }

  if (((*(*a1 + 1080))(a1) & 1) == 0)
  {
    v17 = *(a1 + 8);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: switchover not supported";
    goto LABEL_18;
  }

  if (!validContextType())
  {
    return 0;
  }

  v9 = sub_1000C45A8(a1, 0, 0);
  v10 = validContextType() ^ 1;
  if (v9 == a2)
  {
    LOBYTE(v10) = 1;
  }

  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = asString();
      *buf = 136315650;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v130 = v13;
      v14 = "#I %s: Forced Context Type is %s, forbidden to switch to %s";
      v15 = v11;
      v16 = 32;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

    return 0;
  }

  v110 = sub_10074B638(a1);
  if ((validContextType() & 1) == 0)
  {
    v17 = *(a1 + 8);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: no valid current context type";
    goto LABEL_18;
  }

  v128 = 0;
  v108 = (*(*a1 + 928))(a1);
  v20 = v110;
  if (v110 == a2)
  {
    if (a2 != 1)
    {
      goto LABEL_69;
    }

    if (sub_1007496A4(a1, 1, v108, &v128))
    {
      v21 = v128;
      v22 = *(a1 + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = asStringBool(v21);
        v24 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v23;
        *&buf[22] = 2080;
        v130 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Mobike is possible. shouldSwitch: %s, preferredTransportType: %s", buf, 0x20u);
        v20 = v110;
        if (v21)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v20 = v110;
        if (v21)
        {
          goto LABEL_57;
        }
      }

LABEL_69:
      v44 = 0;
      v45 = 0;
      goto LABEL_110;
    }

    if (sub_1007534AC(a1, 1, v108))
    {
      v37 = *(a1 + 8);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = asString();
        *buf = 136315394;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s: iRat transport type is changed to %s. We should deactivate", buf, 0x16u);
      }

      v107 = 0;
      v39 = 0;
      v40 = "transport type changed";
LABEL_51:
      v109 = v40;
      goto LABEL_85;
    }

    goto LABEL_55;
  }

  v25 = *(a1 + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asString();
    v27 = asString();
    *buf = 136315650;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v26;
    *&buf[22] = 2080;
    v130 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: Currently activated or activating on %s, iRat recommend %s: see if we can switch...", buf, 0x20u);
    v20 = v110;
  }

  v28 = sub_100750BB8(a1, v20, a2);
  if (v28 != a2)
  {
    v20 = v110;
    if (v28 == v110)
    {
      v36 = *(a1 + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: handoverPossible got same context type, staying on it", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if ((validContextType() & 1) == 0)
    {
      v41 = *(a1 + 8);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: handoverPossible got unknown, deactivating", buf, 0xCu);
      }

      v107 = 0;
      v39 = 0;
      v40 = "Should deactivate rather than switchover";
      goto LABEL_51;
    }

LABEL_55:
    v44 = 0;
    v45 = 0;
LABEL_108:
    v20 = v110;
    goto LABEL_110;
  }

  if ((sub_10074AA34(a1, a2) & 1) == 0)
  {
    v42 = *(a1 + 8);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v43 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v43;
    v33 = "#I %s: Policy is not allowing the new context type: %s";
    v34 = v42;
    v35 = 22;
LABEL_54:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
    goto LABEL_55;
  }

  v20 = v110;
  if (validContextType())
  {
    if (*(a1 + 16 * v110 + 768) == 1)
    {
      v29 = sub_100753270(a1, v110);
      v20 = v110;
      if (v29 < sub_100753304(a1))
      {
        v30 = *(a1 + 8);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v31 = asString();
        v32 = sub_100753270(a1, v110);
        *buf = 136315906;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v31;
        *&buf[22] = 2048;
        v130 = v32;
        v131 = 2080;
        v132 = "seconds";
        v33 = "#I %s: Do not initiate new handover when activation is fresh on %s that is %lld %s old. Do not touch it.";
        v34 = v30;
        v35 = 42;
        goto LABEL_54;
      }
    }
  }

LABEL_57:
  if (v128)
  {
    goto LABEL_109;
  }

  v126 = 0;
  v127 = 0;
  sub_10005D2A4(*(a1 + 9), &v126);
  v20 = v110;
  if (v110 == 1 && v126 && !(*(*a1 + 328))(a1, 1) && (!sub_10074BF70(a1, 1, a2) || (sub_100751128(a1) & 1) == 0))
  {
    v51 = v126;
    v52 = PersonalitySpecificImpl::simSlot(a1);
    if (((*(*v51 + 1056))(v51, v52) & 1) == 0)
    {
      v53 = *(a1 + 8);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I On IWLAN over Cell. Can't handover to BB. Should deactivate.", buf, 2u);
      }

      v54 = *(a1 + 14);
      if (v54)
      {
        v55 = 1;
        v39 = (*(*v54 + 176))(v54, 1);
        v56 = 0;
        goto LABEL_81;
      }

      v39 = 0;
      v56 = 0;
      goto LABEL_196;
    }
  }

  v46 = *(a1 + 14);
  if (!v46 || !(*(*v46 + 176))(v46, 1))
  {
    goto LABEL_80;
  }

  if ((sub_10074BF70(a1, v110, a2) & 1) == 0)
  {
    v57 = *(a1 + 8);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = asString();
      *buf = 136315394;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v58;
      v48 = "#I %s: Can't handover from %s right now in unstable state, not deactivating because the recommended context type is not possible anyway";
      v49 = v57;
      v50 = 22;
      goto LABEL_79;
    }

LABEL_80:
    v39 = 0;
    v56 = 0;
    v55 = 0;
    goto LABEL_81;
  }

  if (v126 && (*(*a1 + 1008))(a1, v110) && (*(*v126 + 1048))(v126))
  {
    v47 = *(a1 + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "switchOverTo";
      v48 = "#I %s: Unstable state in the middle of a call. Let it be.";
      v49 = v47;
      v50 = 12;
LABEL_79:
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  if (v110 == 1 && (*(*a1 + 328))(a1, 1) == 1)
  {
    v88 = *(a1 + 14);
    if ((!v88 || ((*(*v88 + 304))(v88) & 1) == 0) && v126 && (*(*v126 + 232))(v126))
    {
      v89 = *(a1 + 8);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        v90 = "#I %s: Unstable state in the non-WoW network. Do not touch it.";
        v91 = v89;
        v92 = 12;
LABEL_183:
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v90, buf, v92);
        goto LABEL_184;
      }

      goto LABEL_184;
    }
  }

  if (validContextType())
  {
    if (*(a1 + 16 * v110 + 768) == 1)
    {
      v93 = sub_100753270(a1, v110);
      v20 = v110;
      if (v93 < sub_1007539FC(a1))
      {
        v94 = *(a1 + 8);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v95 = asString();
          v96 = sub_100753270(a1, v110);
          *buf = 136315906;
          *&buf[4] = "switchOverTo";
          *&buf[12] = 2080;
          *&buf[14] = v95;
          *&buf[22] = 2048;
          v130 = v96;
          v131 = 2080;
          v132 = "seconds";
          v90 = "#I %s: Unstable state in a fresh handover to %s that is %lld %s old. Do not touch it.";
          v91 = v94;
          v92 = 42;
          goto LABEL_183;
        }

LABEL_184:
        v39 = 0;
        v56 = 0;
        v55 = 0;
        v20 = v110;
        goto LABEL_81;
      }
    }
  }

  if (validContextType() && *(a1 + 16 * v20 + 768) == 1)
  {
    v97 = *(a1 + 8);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = asString();
      v99 = sub_100753270(a1, v20);
      *buf = 136315906;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v98;
      *&buf[22] = 2048;
      v130 = v99;
      v131 = 2080;
      v132 = "seconds";
      v100 = "#I %s: Unstable state in a activation on %s that is %lld %s old.";
      v101 = v97;
      v102 = 42;
LABEL_191:
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, v100, buf, v102);
    }
  }

  else
  {
    v103 = *(a1 + 8);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = asString();
      *buf = 136315394;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v104;
      v100 = "#E %s: Unstable state in a activation on %s that has no start timestamp";
      v101 = v103;
      v102 = 22;
      goto LABEL_191;
    }
  }

  v105 = *(a1 + 8);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v106;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now in unstable state, deactivating for now", buf, 0x16u);
  }

  v39 = 1;
  v56 = 1;
LABEL_196:
  v55 = 1;
LABEL_81:
  if (v127)
  {
    sub_100004A34(v127);
  }

  if (v55)
  {
    v107 = v56;
    v109 = 0;
LABEL_85:
    v59 = 0;
    v60 = (a1 + 120);
    do
    {
      v61 = &v60[3 * dword_101836038[v59]];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v61, v61[1], 0xAAAAAAAAAAAAAAABLL * ((v61[1] - *v61) >> 3));
      v62 = *buf;
      v63 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v62 + 16) == 1)
          {
            (*(**(v62 + 8) + 320))(*(v62 + 8), v39);
          }

          v62 += 24;
        }

        while (v62 != v63);
        v62 = *buf;
      }

      if (v62)
      {
        *&buf[8] = v62;
        operator delete(v62);
      }

      ++v59;
    }

    while (v59 != 2);
    if (v107)
    {
      goto LABEL_105;
    }

    v64 = 0;
    v65 = 1;
    do
    {
      v66 = &v60[3 * dword_101836038[v64]];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v66, v66[1], 0xAAAAAAAAAAAAAAABLL * ((v66[1] - *v66) >> 3));
      v68 = *buf;
      v67 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v68 + 16) == 1)
          {
            v65 &= (*(**(v68 + 8) + 328))(*(v68 + 8));
          }

          v68 += 24;
        }

        while (v68 != v67);
        v68 = *buf;
      }

      if (v68)
      {
        *&buf[8] = v68;
        operator delete(v68);
      }

      ++v64;
    }

    while (v64 != 2);
    if (v65)
    {
LABEL_105:
      for (i = 0; i != 2; ++i)
      {
        (*(*a1 + 672))(a1, dword_101836038[i], 27, v109, "CommCenter");
      }
    }

    else
    {
      v87 = *(a1 + 8);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s: deactivation on handover not possible cancelled, a connection does not want deactivation", buf, 0xCu);
      }
    }

    v45 = 0;
    v44 = 1;
    goto LABEL_108;
  }

LABEL_109:
  v44 = 0;
  v45 = 1;
LABEL_110:
  v70 = *(a1 + 55);
  if (v70)
  {
    v71 = *(a1 + 8);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "switchOverTo";
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I %s: We have pending handover that is not needed anymore, discarding it", buf, 0xCu);
      v70 = *(a1 + 55);
      *(a1 + 55) = 0;
      if (!v70)
      {
        goto LABEL_116;
      }
    }

    else
    {
      *(a1 + 55) = 0;
    }

    (*(*v70 + 8))(v70);
  }

LABEL_116:
  if (!v45)
  {
    if (v20 == a2)
    {
      return 1;
    }

    else
    {
      return v44;
    }
  }

  v125 = 0;
  if ((v128 & 1) == 0)
  {
    v74 = *(a1 + 14);
    if (!v74)
    {
      goto LABEL_130;
    }

    if ((*(*v74 + 176))(v74, 0))
    {
      v75 = *(a1 + 8);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = asString();
        v77 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v76;
        *&buf[22] = 2080;
        v130 = v77;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now, pending switch to %s", buf, 0x20u);
      }

      v18 = 1;
      v125 = 1;
      goto LABEL_138;
    }

    v20 = v110;
    if ((v128 & 1) == 0)
    {
LABEL_130:
      v78 = *(a1 + 8);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = asString();
        v80 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v79;
        *&buf[22] = 2080;
        v130 = v80;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I %s: Currently activated or activating on %s, switching over to %s", buf, 0x20u);
        v20 = v110;
      }

      if (sub_10074BF70(a1, v20, a2))
      {
        v81 = *(a1 + 14);
        (*(*a1 + 16))(&v123, a1);
        sub_10074BD70(a1, v110, __p);
        v18 = (*(*v81 + 240))(v81, v110, a2, &v123, a3, 0, __p, &v125);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v124)
        {
          sub_100004A34(v124);
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_138;
    }
  }

  v72 = *(a1 + 8);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s: Try to MOBIKE handover to transportType:%s", buf, 0x16u);
    v20 = v110;
  }

  sub_10074989C(a1, v20, v108, a3);
  v18 = 1;
LABEL_138:
  if (v125 == 1)
  {
    memset(buf, 0, sizeof(buf));
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(buf, *a3, *(a3 + 8));
    }

    else
    {
      *buf = *a3;
      *&buf[16] = *(a3 + 16);
    }

    v126 = 0;
    v127 = 0;
    sub_1002306AC(a1 + 4, &v126);
    Registry::getTimerService(&v119, *(a1 + 9));
    v82 = v119;
    sub_10000501C(v117, "switchover back off timer");
    v83 = *(a1 + 6);
    object = v83;
    if (v83)
    {
      dispatch_retain(v83);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100753BA4;
    aBlock[3] = &unk_101E77FE8;
    aBlock[4] = a1;
    aBlock[5] = v126;
    v112 = v127;
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (buf[23] < 0)
    {
      sub_100005F2C(&v113, *buf, *&buf[8]);
    }

    else
    {
      v113 = *buf;
      v114 = *&buf[16];
    }

    v115 = _Block_copy(aBlock);
    sub_100D23364(v82, v117, 0, 2000000, &object, &v115);
    v84 = v121;
    v121 = 0;
    v85 = *(a1 + 55);
    *(a1 + 55) = v84;
    if (v85)
    {
      (*(*v85 + 8))(v85);
      v86 = v121;
      v121 = 0;
      if (v86)
      {
        (*(*v86 + 8))(v86);
      }
    }

    if (v115)
    {
      _Block_release(v115);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v118 < 0)
    {
      operator delete(v117[0]);
    }

    if (v120)
    {
      sub_100004A34(v120);
    }

    if (SHIBYTE(v114) < 0)
    {
      operator delete(v113);
    }

    if (v112)
    {
      std::__shared_weak_count::__release_weak(v112);
    }

    if (v127)
    {
      std::__shared_weak_count::__release_weak(v127);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  return v18;
}

void sub_100753148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *aBlock, dispatch_object_t object, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 176);
  if (v42)
  {
    sub_100004A34(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100753270(uint64_t a1, int a2)
{
  if (!validContextType() || *(a1 + 760 + 16 * a2 + 8) != 1)
  {
    return 0;
  }

  v4 = sub_10075ABA4(a1);
  v5 = a1 + 760 + 16 * a2;
  if ((*(v5 + 8) & 1) == 0)
  {
    sub_1000D1644();
  }

  v6 = ((v4 - *v5) * 0x112E0BE826D694B3) >> 64;
  return (v6 >> 26) + (v6 >> 63);
}

uint64_t sub_100753304(Registry **a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v10 + 96))(&cf, v10, v12, 1, @"FreshActivationInterval", 0, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  if (cf)
  {
    LODWORD(v19) = 0;
    v14 = CFGetTypeID(cf);
    if (v14 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v19, v13, v15);
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 3;
  }

  sub_10000A1EC(&cf);
  return v16;
}

uint64_t sub_1007534AC(PersonalitySpecificImpl *a1, int a2, uint64_t a3)
{
  v6 = (*(*a1 + 328))(a1);
  v7 = *(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "shouldActOnTransportTypeChangeTo";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v32 = asString();
    v33 = 2080;
    v34 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Current context is %s over %s, new transport type is %s.", buf, 0x2Au);
  }

  result = 0;
  if (a2 == 1 && v6 != a3)
  {
    for (i = 0; i != 2; ++i)
    {
      v10 = (a1 + 24 * dword_101836038[i] + 120);
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v10, v10[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3));
      v11 = *buf;
      v12 = *&buf[8];
      if (*buf != *&buf[8])
      {
        while (*(v11 + 16) != 1 || ((*(**(v11 + 8) + 312))(*(v11 + 8), a3) & 1) != 0)
        {
          v11 += 24;
          if (v11 == v12)
          {
            v11 = *buf;
            goto LABEL_11;
          }
        }

        v22 = *(a1 + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = (*(**(v11 + 8) + 16))(*(v11 + 8));
          *v30 = 136315394;
          *&v30[4] = "shouldActOnTransportTypeChangeTo";
          *&v30[12] = 2080;
          *&v30[14] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s told us not to switch transport", v30, 0x16u);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        return 0;
      }

LABEL_11:
      if (v11)
      {
        *&buf[8] = v11;
        operator delete(v11);
      }
    }

    if (a3 || !(*(*a1 + 1008))(a1, 0))
    {
      return 1;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 9));
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, buf);
    if (!v19)
    {
      std::mutex::unlock(v14);
      return 1;
    }

    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      if (!v21)
      {
        goto LABEL_38;
      }

LABEL_31:
      *v30 = 0;
      *&v30[8] = 0;
      (*(*v21 + 456))(v30, v21);
      v24 = *v30;
      if (!*v30)
      {
        goto LABEL_35;
      }

      v25 = PersonalitySpecificImpl::simSlot(a1);
      v26 = (*(*v24 + 88))(v24, v25, 1);
      v27 = *(a1 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = asString();
        *buf = 136315394;
        *&buf[4] = "shouldActOnTransportTypeChangeTo";
        *&buf[12] = 2080;
        *&buf[14] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: iRAT recommends %s context type", buf, 0x16u);
      }

      if (v26)
      {
LABEL_35:
        if (*&v30[8])
        {
          sub_100004A34(*&v30[8]);
        }

        if (v20)
        {
LABEL_38:
          sub_100004A34(v20);
        }

        return 1;
      }

      v29 = *(a1 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "shouldActOnTransportTypeChangeTo";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: Stale event", buf, 0xCu);
      }

      if (*&v30[8])
      {
        sub_100004A34(*&v30[8]);
      }

      if (v20)
      {
        sub_100004A34(v20);
      }

      return 0;
    }

    std::mutex::unlock(v14);
    if (v21)
    {
      goto LABEL_31;
    }

    return 1;
  }

  return result;
}

void sub_100753998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007539FC(Registry **a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v10 + 96))(&cf, v10, v12, 1, @"StallActivationInterval", 0, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  if (cf)
  {
    LODWORD(v19) = 0;
    v14 = CFGetTypeID(cf);
    if (v14 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v19, v13, v15);
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 15;
  }

  sub_10000A1EC(&cf);
  return v16;
}

void sub_100753BA4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = sub_1000C2A4C(v3, 0, 0);
        v7 = *(v3 + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "switchOverTo_block_invoke";
          v11 = 2080;
          v12 = asString();
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: switchover pending timer, trying to switch to: %s", &v9, 0x16u);
        }

        v8 = *(v3 + 55);
        *(v3 + 55) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (((*(*v3 + 1248))(v3, v6, a1 + 7) & 1) == 0)
        {
          sub_100748B24(v3, v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

char *sub_100753D38(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_100753D9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100753DB4(uint64_t a1)
{
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

void sub_100753E08(uint64_t a1, int a2)
{
  if (validContextType())
  {
    sub_100742294(a1, a2);
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fCurrentActivationStart set for %s (handover)", &v10, 0xCu);
    }

    v5 = 0;
    v6 = a1 + 120;
    do
    {
      v7 = (v6 + 24 * dword_101836038[v5]);
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (*(v8 + 16) == 1)
        {
          (*(**(v8 + 8) + 256))(*(v8 + 8), 1);
        }

        v8 += 24;
      }

      ++v5;
    }

    while (v5 != 2);
  }
}

void sub_100753F78(Registry **this@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  LOWORD(__p.__r_.__value_.__l.__data_) = 1;
  do
  {
    v5 = 15;
    while (2)
    {
      for (i = this[v5]; i != this[v5 + 1]; i = (i + 24))
      {
        v7 = *(i + 1);
        if (v7)
        {
          v8 = *(i + 16) == __p.__r_.__value_.__s.__data_[v4];
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          (*(*v7 + 408))(v7);
          return;
        }
      }

      v5 += 3;
      if (v5 != 21)
      {
        continue;
      }

      break;
    }

    ++v4;
  }

  while (v4 != 2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this[33] + 36) == 4)
  {
    ServiceMap = Registry::getServiceMap(this[9]);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v20 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v20);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_25:
        (*(*v17 + 160))(&__p, v17);
        std::string::operator=(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  PersonalitySpecificImpl::simSlot(this);
  PersonalityIdFromSlotId();
  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100754180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007541F0(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (validContextType())
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_10008A108(&v18, *(a1 + 3 * a2 + 15), *(a1 + 3 * a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3 * a2 + 16) - *(a1 + 3 * a2 + 15)) >> 3));
    v8 = v18;
    v9 = v19;
    if (v18 != v19)
    {
      do
      {
        if (*(v8 + 16) == 1)
        {
          v10 = v8[1];
          if (v10)
          {
            v11 = *(a1 + 8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              sub_100004AA0(&v16, a1 + 4);
              v12 = v16;
              v13 = v17;
              v16 = 0;
              v17 = 0;
              if (v12)
              {
                v14 = (*(*(v12 + 24) + 48))();
              }

              else
              {
                v14 = "nothing";
              }

              *buf = 136315394;
              *v22 = "handleDidGetPcoInfo";
              *&v22[8] = 2080;
              *&v22[10] = v14;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: handling %s", buf, 0x16u);
              if (v13)
              {
                sub_100004A34(v13);
              }

              if (v17)
              {
                sub_100004A34(v17);
              }

              v10 = v8[1];
            }

            (*(*v10 + 96))(v10, a3, a4);
          }
        }

        v8 += 3;
      }

      while (v8 != v9);
    }

    *buf = PersonalitySpecificImpl::simSlot(a1);
    *&v22[4] = (*(*a1 + 136))(a1, a2, 1, 0);
    *&v22[12] = a4;
    v24 = 0;
    v25 = 0;
    __p = 0;
    sub_100034C50(&__p, *a3, a3[1], a3[1] - *a3);
    sub_100754538();
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v22 = "handleDidGetPcoInfo";
      *&v22[8] = 2080;
      *&v22[10] = asString();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_1007544D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100754538()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/pco_update");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_1007545CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100754620(void *a1, uint64_t a2, uint64_t *a3)
{
  valid = validContextType();
  v7 = a1[8];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (valid)
  {
    if (v8)
    {
      (*(*a1 + 528))(__p, a1, a2);
      v9 = v17 >= 0 ? __p : __p[0];
      v10 = asString();
      v11 = asStringBool(*a3 != 0);
      *buf = 136315906;
      v19 = "setActivationBlocker";
      v20 = 2080;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker for %s (ct %s) set to %s", buf, 0x2Au);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = &a1[2 * a2];
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v12[40];
    v12[39] = v14;
    v12[40] = v13;
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (v8)
  {
    *buf = 136315394;
    v19 = "setActivationBlocker";
    v20 = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

uint64_t sub_10075482C(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 264);
  v6 = *(a1 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5 || (v7 = *(v5 + 264), v8 = *(v5 + 272), v7 == v8))
  {
LABEL_12:
    v10 = 0;
    if (!v6)
    {
      return v10;
    }

LABEL_13:
    sub_100004A34(v6);
    return v10;
  }

  while (1)
  {
    v16 = 0;
    v12 = *v7;
    v14 = 0;
    v15 = 0;
    __p = 0;
    sub_10024064C(&__p, *(v7 + 3), *(v7 + 4), (*(v7 + 4) - *(v7 + 3)) >> 2);
    LOBYTE(v16) = *(v7 + 48);
    if (v12 == a2)
    {
      v9 = __p;
      if (__p != v14)
      {
        break;
      }
    }

LABEL_9:
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    v7 = (v7 + 56);
    if (v7 == v8)
    {
      goto LABEL_12;
    }
  }

  while (*v9 != a3)
  {
    if (++v9 == v14)
    {
      goto LABEL_9;
    }
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v10 = 1;
  if (v6)
  {
    goto LABEL_13;
  }

  return v10;
}

void sub_100754944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075495C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 272);
  *a2 = *(result + 264);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100754980(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 264);
  v4 = *(a1 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = v3 + 264 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1002AB778(a2, *(v3 + 264), *(v3 + 272), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 272) - *(v3 + 264)) >> 3));
  }

  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_100754A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1002A6458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100754A5C(uint64_t a1, int a2)
{
  if (validContextType())
  {
    v4 = *(a1 + a2 + 348);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100754AA0(PersonalitySpecificImpl *a1, uint64_t a2)
{
  PersonalitySpecificImpl::simSlot(a1);
  v4 = *(a1 + 14);
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  (*(*a1 + 136))(a1, a2, 1, 1);
  sub_1000AE88C(a1, a2);
  sub_100754B74();
}

void sub_100754B74()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/data_context_activation_blocked");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_100754C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100754C54(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = *(a1 + 264);
  v6 = *(a1 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_100754980(a1, &v19);
    v8 = v19;
    for (i = v20; v8 != i; v8 += 56)
    {
      v18 = 0;
      v10 = *v8;
      v14 = *(v8 + 16);
      v13 = v10;
      v16 = 0;
      v17 = 0;
      __p = 0;
      sub_10024064C(&__p, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 2);
      LOBYTE(v18) = *(v8 + 48);
      if (v13 == a3)
      {
        v11 = __p;
        if (__p != v16)
        {
          do
          {
            if (*v11 == a4)
            {
              memset(v12, 0, sizeof(v12));
              sub_10024064C(v12, __p, v16, (v16 - __p) >> 2);
              v26 = a3;
              v25 = BYTE4(v13);
              v24 = v14;
              v23 = DWORD2(v13);
              v22 = v18;
              sub_1002403D8();
            }

            ++v11;
          }

          while (v11 != v16);
        }
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    *&v13 = &v19;
    sub_1002A6458(&v13);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100754E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  a15 = &a22;
  sub_1002A6458(&a15);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

void sub_100754EA4(void *a1, uint64_t a2, int a3, int a4)
{
  if ((validContextType() & 1) == 0)
  {
    v10 = a1[8];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315394;
      v32 = "reportContextConnectionError";
      v33 = 2080;
      v34 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v31, 0x16u);
    }

    return;
  }

  if (a3 != 4)
  {
    v11 = &a1[2 * a2];
    v13 = v11[39];
    v12 = v11[40];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      if (!sub_1009CA648(v13))
      {
        v28 = a1[8];
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v31 = 136315138;
        v32 = "reportContextConnectionError";
        v15 = "#I %s: ActivationBlocker: already ON - skip error checking";
        v16 = v28;
        v17 = 12;
        goto LABEL_45;
      }

      if (sub_1009CA608(v13, a3, a4))
      {
        if (sub_1009CA5A4(v13))
        {
          sub_1009CA6CC(v13);
        }

        sub_1009CA6BC(v13);
        if (!sub_1009CA648(v13))
        {
          (*(*a1 + 848))(a1, a2);
        }

        v14 = a1[8];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:
          v21 = 0;
          if (!v12)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v31 = 136315650;
        v32 = "reportContextConnectionError";
        v33 = 2080;
        v34 = asString();
        v35 = 1024;
        v36 = a4;
        v15 = "#I %s: ActivationBlocker: additional error reported: type=%s, reason=%d";
        v16 = v14;
        v17 = 28;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v31, v17);
        goto LABEL_46;
      }
    }

    sub_10073FB00(a1, a2, "new connection error", 1, 0);
    sub_100754C54(a1, a2, a3, a4);
    v18 = v11[39];
    v19 = v11[40];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      sub_100004A34(v12);
    }

    if (v18)
    {
      sub_1009CA6BC(v18);
      if (!sub_1009CA648(v18))
      {
        (*(*a1 + 848))(a1, a2);
      }

      v20 = a1[8];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315650;
        v32 = "reportContextConnectionError";
        v33 = 2080;
        v34 = asString();
        v35 = 1024;
        v36 = a4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: new error reported: type=%s, reason=%d", &v31, 0x1Cu);
      }
    }

    v21 = 1;
    v12 = v19;
    if (!v19)
    {
LABEL_33:
      if (a3 == 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        return;
      }

      v23 = a2;
      switch(a4)
      {
        case '\'':
          v30 = a1[8];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31) = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I clear all IPv4v6 activation blocker upon UMTS_REACTIVATION_REQ", &v31, 2u);
          }

          v9 = a1 + v23;
          goto LABEL_8;
        case '3':
          v24 = a1 + 43;
          if (*(a1 + a2 + 344))
          {
            return;
          }

          v25 = a1[8];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_52;
          }

          v29 = asString();
          v31 = 136315394;
          v32 = "reportContextConnectionError";
          v33 = 2080;
          v34 = v29;
          v27 = "#I %s: fIPv4ActivationBlocker[%s] set";
          break;
        case '2':
          v24 = (a1 + 346);
          if (*(a1 + a2 + 346))
          {
            return;
          }

          v25 = a1[8];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
LABEL_52:
            *(v24 + a2) = 1;
            return;
          }

          v26 = asString();
          v31 = 136315394;
          v32 = "reportContextConnectionError";
          v33 = 2080;
          v34 = v26;
          v27 = "#I %s: fIPv6ActivationBlocker[%s] set";
          break;
        default:
          return;
      }

      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v27, &v31, 0x16u);
      goto LABEL_52;
    }

LABEL_32:
    sub_100004A34(v12);
    goto LABEL_33;
  }

  if ((a4 - 1028) <= 0x27 && ((1 << (a4 - 4)) & 0x8000000041) != 0)
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109120;
      LODWORD(v32) = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I clear all IPv4v6 activation blocker upon endReason: %d", &v31, 8u);
    }

    v9 = a1 + a2;
LABEL_8:
    v9[346] = 0;
    v9[344] = 0;
  }
}

uint64_t sub_100755418@<X0>(uint64_t result@<X0>, int a2@<W1>, __int128 *a3@<X8>)
{
  v3 = (result + 16 * a2 + 312);
  v4 = *v3;
  *a3 = *v3;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100755448(uint64_t a1, int a2, int a3, int a4)
{
  if (validContextType())
  {
    if (a3 == 1)
    {
      if (a4 == 51)
      {
        v11 = a1 + 344;
        if ((*(a1 + 344 + a2) & 1) == 0)
        {
          v12 = *(a1 + 64);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = "reportContextConnectionErrorTentative";
            v15 = 2080;
            v16 = asString();
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: fIPv4ActivationBlocker[%s] set", &v13, 0x16u);
          }

          *(v11 + a2) = 1;
        }
      }

      else if (a4 == 50)
      {
        v8 = a1 + 346;
        if ((*(a1 + 346 + a2) & 1) == 0)
        {
          v9 = *(a1 + 64);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = "reportContextConnectionErrorTentative";
            v15 = 2080;
            v16 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: fIPv6ActivationBlocker[%s] set", &v13, 0x16u);
          }

          *(v8 + a2) = 1;
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 64);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "reportContextConnectionErrorTentative";
      v15 = 2080;
      v16 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v13, 0x16u);
    }
  }
}

void sub_10075563C(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9[0]) = 136315394;
    *(v9 + 4) = "handleDNSReady";
    WORD2(v9[1]) = 2080;
    *(&v9[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: for %s", v9, 0x16u);
  }

  for (i = 0; i != 2; ++i)
  {
    v6 = dword_101836038[i];
    if (v6 == a2 || anyContextType())
    {
      memset(v9, 0, sizeof(v9));
      sub_10008A108(v9, *(a1 + 120 + 24 * v6), *(a1 + 120 + 24 * v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v6 + 8) - *(a1 + 120 + 24 * v6)) >> 3));
      v7 = v9[0];
      v8 = v9[1];
      if (v9[0] != v9[1])
      {
        do
        {
          if (sub_1007490E0(a1, v7))
          {
            (*(*v7[1] + 384))(v7[1]);
          }

          v7 += 3;
        }

        while (v7 != v8);
        v7 = v9[0];
      }

      if (v7)
      {
        v9[1] = v7;
        operator delete(v7);
      }
    }
  }
}

void sub_100755814(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N !!! reportDNSEmptyProblem on noncellular context type ?", &v8, 2u);
    }
  }

  else
  {
    isDefault = CIPFamily::isDefault((a1 + 632));
    if (isDefault && DataUtils::supportDualIPAPNDefault(isDefault) && (*(a1 + 640) & 2) != 0)
    {
      v5 = *(a1 + 64);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N reportDNSEmptyProblem: DNS is unconfigured in default activation", &v8, 2u);
      }

      if ((*(a1 + 346) & 1) == 0)
      {
        v6 = *(a1 + 64);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = asString();
          v8 = 136315138;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reportDNSEmptyProblem: fIPv6ActivationBlocker[%s] set", &v8, 0xCu);
        }

        *(a1 + 346) = 1;
      }
    }
  }
}

uint64_t sub_10075596C(uint64_t a1, uint64_t a2)
{
  if (validContextType())
  {
    v4 = a1 + 24 * a2;
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    if (v5 == v6)
    {
      return 2;
    }

    v7 = 2;
    while (1)
    {
      if (*(v5 + 16) == 1)
      {
        v8 = *(v5 + 8);
        sub_100004AA0(buf, (a1 + 32));
        if (*buf)
        {
          v9 = *buf + 24;
        }

        else
        {
          v9 = 0;
        }

        v20 = v9;
        v21 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        v10 = (*(*v8 + 296))(v8, a2, &v20);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v10 != v7)
        {
          if (validContextType())
          {
            if (validContextType())
            {
              v16 = *(a1 + 64);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v18 = asString();
                v19 = asString();
                *buf = 136315650;
                *&buf[4] = "getFailureFallbackType";
                *&buf[12] = 2080;
                *&buf[14] = v18;
                v23 = 2080;
                v24 = v19;
                v12 = "#E %s: Conflicting fallback types: %s and %s";
                v13 = v16;
                v14 = 32;
LABEL_21:
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
              }

              return 2;
            }
          }

          else
          {
            v7 = v10;
          }
        }
      }

      v5 += 24;
      if (v5 == v6)
      {
        return v7;
      }
    }
  }

  v11 = *(a1 + 64);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "getFailureFallbackType";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v12 = "#E %s: wrong context type: %s";
    v13 = v11;
    v14 = 22;
    goto LABEL_21;
  }

  return 2;
}

void sub_100755B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100755BC8(PersonalitySpecificImpl *a1, uint64_t a2, int a3, char a4)
{
  if (((a4 & 1) != 0 || a2 == 1 && a3 == 97) && (*(a1 + a2 + 348) & 1) == 0)
  {
    v7 = *(a1 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "checkFatalBlockers";
      v22 = 2080;
      v23 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: iWLAN ActivationBlocker set for error code %s", buf, 0x16u);
    }

    *(a1 + a2 + 348) = 1;
    *(a1 + a2 + 88) = a3;
    (*(*a1 + 848))(a1, a2);
    ServiceMap = Registry::getServiceMap(*(a1 + 9));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
LABEL_18:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          return;
        }

LABEL_16:
        v18 = PersonalitySpecificImpl::simSlot(a1);
        sub_10000501C(__p, "checkFatalBlockers");
        (*(*v16 + 1160))(v16, v18, __p, 0);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }
}

void sub_100755E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100755E6C(uint64_t a1, int a2, uint64_t a3)
{
  if ((validContextType() & 1) == 0)
  {
    v8 = *(a1 + 64);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 136315394;
    v10 = "resetFatalActivationBlockers";
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v9, 0x16u);
    return 0;
  }

  if (*(a1 + 348 + a2) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316674;
    v10 = "resetFatalActivationBlockers";
    v11 = 2080;
    v12 = a3;
    v13 = 2080;
    v14 = asString();
    v15 = 2080;
    v16 = asStringBool(1);
    v17 = 2080;
    v18 = asStringBool(0);
    v19 = 2080;
    v20 = asString();
    v21 = 2080;
    v22 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s: ActivationBlocker for %s: change FatalActivationBlocker flag: %s -> %s, cause %s -> %s", &v9, 0x48u);
  }

  *(a1 + 348 + a2) = 0;
  *(a1 + 4 * a2 + 352) = 0;
  return 1;
}

void sub_100756048(uint64_t a1, CIPFamily *this, int a3, int a4, uint64_t a5, _BYTE *a6, _BYTE *a7, _DWORD *a8)
{
  if (a3 || (*a6 & 1) != 0 || !CIPFamily::isDefault(this))
  {
    return;
  }

  v15 = *(a1 + 64);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    CIPFamily::asString(__p, this);
    v16 = v30;
    v17 = *__p;
    v18 = asString();
    v19 = __p;
    if (v16 < 0)
    {
      v19 = v17;
    }

    *buf = 136446466;
    v32 = v19;
    v33 = 2080;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Retry settings: family=%{public}s errCode=%s", buf, 0x16u);
    if (v30 < 0)
    {
      operator delete(*__p);
    }
  }

  if (a4 == 108)
  {
    v26 = *(this + 2);
    if ((v26 - 1) < 2)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 6";
      goto LABEL_46;
    }

    if (v26 != 3)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 7";
      goto LABEL_46;
    }

LABEL_32:
    *(a5 + 8) = 1;
    *(a5 + 12) = 0;
    CIPFamily::setDefault(a5);
    *a6 = 1;
    *a7 = 1;
LABEL_33:
    *a8 = 0;
    return;
  }

  if (a4 == 94)
  {
    v23 = *(this + 2);
    if (v23 == 1)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 4";
      goto LABEL_46;
    }

    if (v23 == 2)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 3";
      goto LABEL_46;
    }

    if (v23 != 3)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 5";
      goto LABEL_46;
    }

    if ((*(a1 + 346) & 1) == 0)
    {
      v24 = *(a1 + 64);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = asString();
        *__p = 136315138;
        *&__p[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Retry settings: fIPv6ActivationBlocker[%s] set", __p, 0xCu);
      }

      *(a1 + 346) = 1;
    }

    goto LABEL_32;
  }

  if (a4 != 93)
  {
    return;
  }

  v20 = *(this + 2);
  switch(v20)
  {
    case 3:
      goto LABEL_15;
    case 2:
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 1";
      goto LABEL_46;
    case 1:
LABEL_15:
      if ((*(a1 + 344) & 1) == 0)
      {
        v21 = *(a1 + 64);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          *__p = 136315138;
          *&__p[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Retry settings: fIPv4ActivationBlocker[%s] set", __p, 0xCu);
        }

        *(a1 + 344) = 1;
      }

      *(a5 + 8) = 2;
      *(a5 + 12) = 0;
      CIPFamily::setDefault(a5);
      *a6 = 1;
      *a7 = 1;
      goto LABEL_33;
  }

  v27 = *(a1 + 64);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    v28 = "#E Retry settings: Impossible situation 2";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, __p, 2u);
  }
}

void sub_100756444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756468(uint64_t a1, CIPFamily *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, _BOOL4 a7)
{
  v65 = a7;
  v10 = *(a1 + 64);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = __p;
    CIPFamily::asString(__p, a2);
    if (v64 < 0)
    {
      v11 = __p[0];
    }

    v12 = asString();
    v13 = asString();
    v14 = asStringBool(a7);
    *buf = 136316674;
    *&buf[4] = "handleDataContextActivateError_Async";
    *&buf[12] = 2082;
    *&buf[14] = v11;
    v67 = 2080;
    v68 = v12;
    v69 = 1024;
    *v70 = a4;
    *&v70[4] = 2080;
    *&v70[6] = v13;
    v71 = 1024;
    v72 = a5;
    v73 = 2080;
    v74 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: family=%{public}s, ct=%s, errCode=%d (%s), rawCode=%d, toRetry = %s", buf, 0x40u);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  v22 = a3;
  if (v21)
  {
    v24 = v21[3];
    v23 = v21[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      if (!v24)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v16);
  v23 = 0;
  v25 = 1;
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_15:
  v26 = PersonalitySpecificImpl::simSlot(a1);
  v27 = *(a1 + 272);
  v61 = *(a1 + 264);
  v62 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 160))(v24, v26, a3, &v61, a5);
  if (v62)
  {
    sub_100004A34(v62);
  }

LABEL_19:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v60 = 0;
  v59 = 2;
  if (a7)
  {
    v60 = 1;
    v59 = a3;
    v28 = a3;
  }

  else
  {
    sub_100756048(a1, a2, a3, a4, a1 + 16 * a3 + 632, &v65, &v60, &v59);
    if (v65)
    {
      v28 = v59;
    }

    else
    {
      v28 = sub_10075596C(a1, a3);
      v59 = v28;
    }

    v22 = a3;
  }

  (*(*a1 + 856))(a1, v22, a4, 0);
  v29 = a3;
  if (!validContextType() || v28 == a3 && !v65)
  {
    sub_100756CE0(a1, a3, a4, 0, a5, a6);
    v38 = v60;
    return v38 & 1;
  }

  v30 = *(a1 + 64);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    v32 = asString();
    *buf = 136315650;
    *&buf[4] = "handleDataContextActivateError_Async";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    v67 = 2080;
    v68 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Activate %s failed, will try on %s", buf, 0x20u);
    v29 = a3;
  }

  if (!v60)
  {
    if (!validContextType() || (v40 = (a1 + 120 + 24 * a3), v41 = *v40, v55 = v40[1], *v40 == v55))
    {
      sub_100756CE0(a1, a3, a4, 0, a5, a6);
    }

    else
    {
      v42 = 0;
      v53 = (a1 + 120 + 24 * v28);
      do
      {
        if (*(v41 + 16) == 1 && validContextType())
        {
          v43 = *v53;
          v44 = v53[1];
          while (v43 != v44)
          {
            v45 = *(v41 + 8);
            if (*(v43 + 8) == v45)
            {
              *(v41 + 16) = 0;
              *(v43 + 16) = 1;
              v46 = *(a1 + 64);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                (*(*v45 + 192))(v45);
                v47 = asString();
                v48 = asString();
                v49 = asString();
                *buf = 136315906;
                *&buf[4] = "handleDataContextActivateError_Async";
                *&buf[12] = 2080;
                *&buf[14] = v47;
                v67 = 2080;
                v68 = v48;
                v69 = 2080;
                *v70 = v49;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: Switching observer %s from %s to %s (change states)", buf, 0x2Au);
                v46 = *(a1 + 64);
              }

              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v50 = asString();
                (*(**(v41 + 8) + 192))(*(v41 + 8));
                v51 = asString();
                v52 = asStringBool(1);
                *buf = 136315906;
                *&buf[4] = "handleDataContextActivateError_Async";
                *&buf[12] = 2080;
                *&buf[14] = v50;
                v67 = 2080;
                v68 = v51;
                v69 = 2080;
                *v70 = v52;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s:  (change states) on %s: connection %s becomes current %s (retry)", buf, 0x2Au);
              }

              ++v42;
            }

            v43 += 24;
          }
        }

        v41 += 24;
      }

      while (v41 != v55);
      v60 = v42 != 0;
      sub_100756CE0(a1, a3, a4, v42 != 0, a5, a6);
      if (v42)
      {
        goto LABEL_34;
      }
    }

    v38 = 0;
    return v38 & 1;
  }

  (*(*a1 + 1240))(a1, v29, 0);
LABEL_34:
  v33 = *(a1 + 112);
  if (v33)
  {
    v34 = *(a1 + 64);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = asString();
      v36 = asString();
      *buf = 136315650;
      *&buf[4] = "handleDataContextActivateError_Async";
      *&buf[12] = 2080;
      *&buf[14] = v35;
      v67 = 2080;
      v68 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  with %s, scheduling retryType %s", buf, 0x20u);
      v33 = *(a1 + 112);
    }

    (*(*v33 + 352))(v33, 1);
    sub_100004AA0(buf, (a1 + 32));
    v37 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v37);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 32));
    operator new();
  }

  v38 = 1;
  return v38 & 1;
}

void sub_100756C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100756CE0(void *a1, uint64_t a2, uint64_t a3, BOOL a4, uint64_t a5, unsigned int a6)
{
  v11 = a1[8];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "handleDataActivationError_Async";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v37 = 1024;
    *v38 = a3;
    *&v38[4] = 2080;
    *&v38[6] = asString();
    v39 = 2080;
    v40 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: ct=%s, errCode=%d (%s), fallback=%s", buf, 0x30u);
  }

  if (validContextType())
  {
    (*(*a1 + 1240))(a1, a2, 0);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_10008A108(&v33, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    otherContextType();
    v12 = sub_1007421F0(a1);
    (*(*a1 + 856))(a1, a2, a3, 0);
    v14 = v33;
    v13 = v34;
    if (v33 != v34)
    {
      while (1)
      {
        if (*(v14 + 16) == 1)
        {
          if ((v12 & 1) == 0)
          {
            v15 = a1[8];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(**(v14 + 8) + 192))(*(v14 + 8));
              v16 = asString();
              v17 = asString();
              *buf = 136315650;
              *&buf[4] = "handleDataActivationError_Async";
              *&buf[12] = 2080;
              *&buf[14] = v16;
              v37 = 2080;
              *v38 = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Failing observer %s on %s", buf, 0x20u);
            }

            v18 = *(v14 + 8);
            sub_100004AA0(buf, a1 + 4);
            if (*buf)
            {
              v19 = *buf + 24;
            }

            else
            {
              v19 = 0;
            }

            v31 = v19;
            v32 = *&buf[8];
            *buf = 0;
            *&buf[8] = 0;
            (*(*v18 + 56))(v18, a2, &v31, a3, a5, a6);
            v20 = v32;
            if (v32)
            {
              goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else if (!a4 && sub_1007490E0(a1, v14))
        {
          v21 = a1[8];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            (*(**(v14 + 8) + 192))(*(v14 + 8));
            v22 = asString();
            v23 = asString();
            *buf = 136315650;
            *&buf[4] = "handleDataActivationError_Async";
            *&buf[12] = 2080;
            *&buf[14] = v22;
            v37 = 2080;
            *v38 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: Failing handover for observer %s on %s", buf, 0x20u);
          }

          v24 = *(v14 + 8);
          sub_100004AA0(buf, a1 + 4);
          if (*buf)
          {
            v25 = *buf + 24;
          }

          else
          {
            v25 = 0;
          }

          v29 = v25;
          v30 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          (*(*v24 + 288))(v24, a2, &v29, a3, a5);
          v20 = v30;
          if (!v30)
          {
            goto LABEL_14;
          }

LABEL_13:
          sub_100004A34(v20);
LABEL_14:
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        v14 += 24;
        if (v14 == v13)
        {
          v14 = v33;
          break;
        }
      }
    }

    if (v14)
    {
      v34 = v14;
      operator delete(v14);
    }
  }

  else
  {
    v26 = a1[8];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataActivationError_Async";
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_1007571B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100757218(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 400))();
  }

  return result;
}

void sub_100757250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1 + 120;
  do
  {
    v11 = (v10 + 24 * dword_101836038[v9]);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10008A108(&v14, *v11, v11[1], 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 3));
    v12 = v14;
    v13 = v15;
    if (v14 != v15)
    {
      do
      {
        if (*(v12 + 16) == 1)
        {
          (*(**(v12 + 8) + 360))(*(v12 + 8), a2, a3, a4, a5);
        }

        v12 += 24;
      }

      while (v12 != v13);
      v12 = v14;
    }

    if (v12)
    {
      v15 = v12;
      operator delete(v12);
    }

    ++v9;
  }

  while (v9 != 2);
}

void sub_10075736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100757390(void *a1, uint64_t a2, uint64_t a3)
{
  if (validContextType())
  {
    v6 = &a1[3 * a3];
    v7 = v6[15];
    v8 = v6[16];
    if (v7 == v8)
    {
      goto LABEL_8;
    }

    v9 = 0;
    do
    {
      v10 = *(v7 + 16);
      if (*(v7 + 8) == a2)
      {
        v10 = 0;
      }

      v9 |= v10;
      v7 += 24;
    }

    while (v7 != v8);
    if ((v9 & 1) == 0)
    {
LABEL_8:
      (*(*a1 + 1240))(a1, a3, 0);
      return 1;
    }
  }

  else
  {
    v12 = a1[8];
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = 136315394;
    v14 = "tryToSetDataSettingsStateToIdle";
    v15 = 2080;
    v16 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v13, 0x16u);
  }

  return 0;
}

BOOL sub_10075752C(void *a1, const DataAPNSettingsObserver *a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "handleDataActivationError_Sync";
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ct=%s", &v8, 0x16u);
  }

  sub_100740A20(a1, a3, a2, 0);
  return sub_100757390(a1, a2, a3);
}

void sub_100757618(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "handleDataActivateResult_Async";
    v10 = 2080;
    v11 = asString();
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: (impl): ct=%s, result=%d", &v8, 0x1Cu);
  }

  if (a3 == 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 0xFFFFFFFE)
  {
    sub_100756CE0(a1, a2, HIDWORD(a3), 0, 0, 0);
  }

  else if (v7 == 1)
  {
    (*(*a1 + 448))(a1, a2);
  }

  else if (!v7)
  {
    (*(*a1 + 1240))(a1, a2, 2);
  }
}

uint64_t sub_10075779C(void *a1, uint64_t a2)
{
  v2 = a1[14];
  if (!v2)
  {
    return 0;
  }

  (*(*a1 + 16))(&v6);
  v4 = (*(*v2 + 416))(v2, &v6, a2);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return v4;
}

void sub_100757854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100757874@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = validContextType();
  if (result)
  {

    return sub_10075C0CC(a3, a1 + 24 * a2 + 392);
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  return result;
}

void *sub_1007578F8(uint64_t a1, int a2, unint64_t *a3)
{
  result = validContextType();
  if (result)
  {

    return sub_10049F714(a1 + 24 * a2 + 392, a3);
  }

  return result;
}

void *sub_100757968(uint64_t a1, int a2, unint64_t *a3)
{
  result = validContextType();
  if (result)
  {

    return sub_10049F714(a1 + 24 * a2 + 368, a3);
  }

  return result;
}

void sub_1007579D8(uint64_t a1, int a2)
{
  if (validContextType())
  {
    v4 = a1 + 24 * a2;
    sub_1001178E4(v4 + 392, *(v4 + 400));
    *(v4 + 400) = 0;
    *(v4 + 408) = 0;
    *(v4 + 392) = v4 + 400;
  }
}

void sub_100757A38(uint64_t a1, int a2, __int128 *a3)
{
  if (validContextType())
  {
    if (*a3 == 103 && *(a1 + 56 * a2 + 456))
    {
      v6 = *(a1 + 64);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = 136315394;
      v16 = "setLastActivateError";
      v17 = 2080;
      v18 = asString();
      v7 = "#I %s: Keep the old error: %s";
      goto LABEL_12;
    }

    v8 = a1 + 56 * a2;
    v9 = v8 + 456;
    v10 = *a3;
    v11 = a3[1];
    *(v8 + 488) = *(a3 + 4);
    *(v8 + 456) = v10;
    *(v8 + 472) = v11;
    v13 = *(a3 + 5);
    v12 = *(a3 + 6);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v9 + 48);
    *(v9 + 40) = v13;
    *(v9 + 48) = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v6 = *(a1 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "setLastActivateError";
      v17 = 2080;
      v18 = asString();
      v7 = "#I %s: Use the new error: %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0x16u);
    }
  }
}

uint64_t sub_100757BC8(uint64_t a1, int a2)
{
  result = validContextType();
  if (result)
  {
    ++*(a1 + 4 * a2 + 448);
  }

  return result;
}

uint64_t sub_100757C08(uint64_t a1, int a2)
{
  result = validContextType();
  if (result)
  {
    ++*(a1 + 4 * a2 + 424);
  }

  return result;
}

uint64_t sub_100757C48(uint64_t result)
{
  v1 = 0;
  v2 = result + 120;
  do
  {
    v3 = (v2 + 24 * dword_101836038[v1]);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 16) == 1)
      {
        result = *(v4 + 8);
        if (result)
        {
          result = (*(*result + 416))(result);
        }
      }

      v4 += 24;
    }

    ++v1;
  }

  while (v1 != 2);
  return result;
}

uint64_t sub_100757CF8(uint64_t a1, int a2)
{
  result = validContextType();
  if (result)
  {
    return *(a1 + 4 * a2 + 448);
  }

  return result;
}

uint64_t sub_100757D30(uint64_t a1, int a2)
{
  result = validContextType();
  if (result)
  {
    return *(a1 + 4 * a2 + 424);
  }

  return result;
}

uint64_t sub_100757D68@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 584);
  *a2 = *(result + 576);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100757D88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 560);
  *a2 = *(result + 552);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_100757DA8(uint64_t a1, int a2)
{
  (*(*a1 + 840))(a1);
  if (a2)
  {
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting throttle counter", v6, 2u);
    }

    result = 0.0;
    *(a1 + 568) = 0;
    *(a1 + 592) = 2;
  }

  return result;
}

void sub_100757E58(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "clearThrottling";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Clearing throttle timer", buf, 0xCu);
  }

  v3 = *(a1 + 584);
  *(a1 + 576) = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  *(a1 + 448) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
LABEL_15:
    if (v13)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  v14 = PersonalitySpecificImpl::simSlot(a1);
  sub_10000501C(__p, "throttle timeout ends");
  (*(*v12 + 1160))(v12, v14, __p, 0);
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (v13)
  {
    return;
  }

LABEL_16:
  sub_100004A34(v11);
}

void sub_100758040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100758090(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I set fBbBackOffThrottlingTimerValue to %d", v5, 8u);
  }

  *(a1 + 792) = a2;
}

void sub_100758144(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v8 = *(a1 + 64);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 4 * a3 + 568);
    *buf = 67109376;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ThrottleType= %d. index=%d", buf, 0xEu);
  }

  if (!validContextType())
  {
    if (a3 == 2)
    {
      return;
    }

LABEL_18:
    if (*(a1 + 576))
    {
      return;
    }

    *a4 = 1;
    if (a3 == 3)
    {
      v14 = *(a1 + 792);
      if (v14)
      {
        v15 = *(a1 + 64);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I use BB's backoff timer of %d + 1 sec", buf, 8u);
          v14 = *(a1 + 792);
          v16 = *(a1 + 580);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v14 + 1);
        a3 = 3;
        *(a1 + 592) = 3;
        if (v16 <= 5)
        {
          goto LABEL_39;
        }

        v22 = (a1 + 580);
        goto LABEL_38;
      }

      v20 = *(a1 + 592);
      if ((v20 & 0xFFFFFFFE) == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = v20;
      }

      v17 = sub_100758674(a1, v18, 0x100000001);
      a3 = v18;
    }

    else
    {
      v17 = sub_100758674(a1, a3, 0);
      v18 = a3;
      ++*(a1 + 4 * a3 + 568);
    }

    *(a1 + 592) = a3;
    v21 = a1 + 4 * v18;
    if (*(v21 + 568) > 5u)
    {
      v22 = (v21 + 568);
      if (a3 != 1)
      {
LABEL_38:
        *v22 = 5;
        goto LABEL_39;
      }

      *v22 = 0;
    }

LABEL_39:
    v23 = *(a1 + 64);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "handleErrorThrottling";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: Throttling Settings activation error type %d. Next timer fire in %lld sec", buf, 0x1Cu);
    }

    if (v17)
    {
      sub_100004AA0(buf, (a1 + 32));
      v25 = *buf;
      v24 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
      }

      Registry::getTimerService(buf, *(a1 + 72));
      v26 = *buf;
      sub_10000501C(__p, "throttle timeout");
      v27 = *(a1 + 48);
      object = v27;
      if (v27)
      {
        dispatch_retain(v27);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 1174405120;
      v29[2] = sub_100758A4C;
      v29[3] = &unk_101E78018;
      v29[4] = a1;
      v29[5] = v25;
      v30 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      aBlock = _Block_copy(v29);
      sub_100D23364(v26, __p, 0, 1000000 * v17, &object, &aBlock);
      sub_10039C50C((a1 + 576), v35);
      v28 = *v35;
      *v35 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }
    }

    return;
  }

  memset(buf, 0, 24);
  sub_10074BD70(a1, a2, buf);
  v10 = *buf;
  if (a3 != 1 || *buf == *&buf[8])
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    v11 = *buf;
    while ((*(v11 + 7) & 1) == 0)
    {
      v11 += 13;
      if (v11 == *&buf[8])
      {
        goto LABEL_9;
      }
    }

    v19 = *(a1 + 64);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I internal throttling ignored", v35, 2u);
      v12 = 1;
      v10 = *buf;
    }

    else
    {
      v12 = 1;
    }
  }

  if (v10)
  {
    *&buf[8] = v10;
    operator delete(v10);
  }

  if (a3 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1007585D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_100758674(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0x100000000) == 0)
  {
    v3 = *(a1 + 4 * a2 + 568);
  }

  if (a2)
  {
    goto LABEL_32;
  }

  v31 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v7 = ServiceMap;
  if (v8 < 0)
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
  *v36 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v36);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_12:
  v16 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v14 + 96))(v29, v14, v16, 1, @"NetworkErrorsThrottlingSequence", 0, 0);
  sub_100060DE8(&v31, v29);
  sub_10000A1EC(v29);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v31)
  {
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    ctu::cf::assign();
    *v29 = *v36;
    v30 = v37;
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    DataUtils::tokenizeWithBasicDelimiters();
    v18 = *v36;
    v17 = *&v36[8];
    if (*&v36[8] != *v36)
    {
      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      v19 = *v36 + 24 * (v3 % (0xAAAAAAAAAAAAAAABLL * ((*&v36[8] - *v36) >> 3)));
      if (*(v19 + 23) < 0)
      {
        sub_100005F2C(__p, *v19, *(v19 + 8));
      }

      else
      {
        v20 = *v19;
        v28 = *(v19 + 16);
        *__p = v20;
      }

      v21 = HIBYTE(v28);
      if (v28 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v13 = atoi(v22);
      v23 = *(a1 + 64);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v33 = v3;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I CB throttling seq index = %d, ret = %llu", buf, 0x12u);
        v21 = HIBYTE(v28);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v36;
    sub_1000087B4(__p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (v17 != v18)
    {
      sub_100005978(&v31);
      return v13;
    }
  }

  sub_100005978(&v31);
LABEL_32:
  v24 = dword_101836040[6 * a2 + v3];
  v13 = v24;
  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 67109120;
    *&v36[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I kPDPThrottleTimerInterval = %d", v36, 8u);
  }

  return v13;
}

void sub_1007589C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a9 = &a24;
  sub_1000087B4(&a9);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_100005978(&a19);
  _Unwind_Resume(a1);
}

void sub_100758A4C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        (*(*v3 + 840))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100758AFC(uint64_t result, uint64_t a2)
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

void sub_100758B18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100758B30(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 120;
  while (2)
  {
    v3 = (v2 + 24 * dword_101836038[v1]);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 8);
        if (v6)
        {
          if ((*(*v6 + 424))(v6))
          {
            return 1;
          }
        }
      }

      v4 += 24;
    }

    if (++v1 != 2)
    {
      continue;
    }

    break;
  }

  return 0;
}

void sub_100758BF0(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*a1 + 48))(a1, 2);
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: ---------------- Settings: %s: -------------------", buf, 0xCu);
  }

  v5 = *(a1 + 264);
  v184 = v2;
  if (v5)
  {
    sub_1002A24E4(v5, v2);
  }

  else
  {
    v6 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t No APN configured", buf, 2u);
    }
  }

  v7 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 244);
    PersonalitySpecificImpl::simSlot(a1);
    v9 = subscriber::asString();
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2080;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPriority = %u simSlot = %s", buf, 0x12u);
    v7 = *(a1 + 64);
    v2 = v184;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 112);
    if (v10)
    {
      v11 = (*(*v10 + 16))(v10);
      v2 = v184;
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDataActivator pdpId = %d", buf, 8u);
    v7 = *v2;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 596));
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDetachingActivatorState = %s", buf, 0xCu);
  }

  if (!(*(*a1 + 1080))(a1))
  {
    goto LABEL_30;
  }

  *v201 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
LABEL_24:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
LABEL_25:
  v23 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v21 + 96))(__dst, v21, v23, 1, @"PreventWiFiHandoverInEmergency", kCFBooleanFalse, 0);
  sub_10002FE1C(v201, __dst);
  sub_10000A1EC(__dst);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, *v201, v24);
  v25 = buf[0];
  v26 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    v27 = asStringBool(v25);
    *buf = 136315138;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t preventWiFiHandoverInEmergency = %s", buf, 0xCu);
  }

  sub_100045C8C(v201);
LABEL_30:
  v28 = (*(*a1 + 1080))(a1);
  v29 = *(a1 + 64);
  if (v28 && os_log_type_enabled(*(a1 + 64), OS_LOG_TYPE_DEFAULT))
  {
    v30 = sub_100751128(a1);
    v31 = asStringBool(v30);
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t canDoHandoverInIdleVega = %s", buf, 0xCu);
    v29 = *(a1 + 64);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t Context type states: {", buf, 2u);
  }

  v32 = 0;
  v181 = kPhoneServicesWalletDomain;
  do
  {
    v33 = dword_101836038[v32];
    v34 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v35 = asString();
      v36 = asString();
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fState[%s] = %s", buf, 0x16u);
      v34 = *v184;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      CIPFamily::asString(buf, (a1 + 632 + 16 * v33));
      v38 = buf;
      if (buf[23] < 0)
      {
        v38 = *buf;
      }

      *v201 = 136315394;
      *&v201[4] = v37;
      *&v201[12] = 2082;
      *&v201[14] = v38;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fActivationFamily[%s] = %{public}s", v201, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v39 = *(a1 + 760 + 16 * v33 + 8);
    v40 = *v184;
    v41 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
    if (v39 == 1)
    {
      if (!v41)
      {
        goto LABEL_49;
      }

      v42 = asString();
      v43 = sub_100753270(a1, v33);
      *buf = 136315650;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v43;
      *&buf[22] = 2080;
      *&buf[24] = "seconds";
      v44 = v40;
      v45 = "#I DATA:: fCurrentActivationStart[%s] is %lld %s old.";
      v46 = 32;
    }

    else
    {
      if (!v41)
      {
        goto LABEL_49;
      }

      v47 = asString();
      *buf = 136315138;
      *&buf[4] = v47;
      v44 = v40;
      v45 = "#I DATA:: fCurrentActivationStart[%s] is empty";
      v46 = 12;
    }

    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v45, buf, v46);
LABEL_49:
    v48 = *(a1 + 728 + 16 * v33 + 8);
    v49 = *v184;
    v50 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
    if (v48 == 1)
    {
      if (!v50)
      {
        goto LABEL_55;
      }

      v51 = asString();
      v52 = sub_10075AC28(a1, v33);
      *buf = 136315650;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v52;
      *&buf[22] = 2080;
      *&buf[24] = "seconds";
      v53 = v49;
      v54 = "#I DATA:: fLastActivationStart[%s] is %lld %s old.";
      v55 = 32;
    }

    else
    {
      if (!v50)
      {
        goto LABEL_55;
      }

      v56 = asString();
      *buf = 136315138;
      *&buf[4] = v56;
      v53 = v49;
      v54 = "#I DATA:: fLastActivationStart[%s] is empty";
      v55 = 12;
    }

    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, v55);
LABEL_55:
    v57 = Registry::getServiceMap(*(a1 + 72));
    v58 = v57;
    v60 = v59;
    if (v59 < 0)
    {
      v61 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v62 = 5381;
      do
      {
        v60 = v62;
        v63 = *v61++;
        v62 = (33 * v62) ^ v63;
      }

      while (v63);
    }

    std::mutex::lock(v57);
    *buf = v60;
    v64 = sub_100009510(&v58[1].__m_.__sig, buf);
    if (!v64)
    {
      std::mutex::unlock(v58);
      goto LABEL_112;
    }

    v65 = v64[3];
    v66 = v64[4];
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v58);
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v66);
      sub_100004A34(v66);
      if (!v65)
      {
        goto LABEL_112;
      }
    }

    else
    {
      std::mutex::unlock(v58);
      if (!v65)
      {
        goto LABEL_112;
      }
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v193 = 0;
    v67 = *(a1 + 264);
    if (v67)
    {
      if (*(v67 + 71) < 0)
      {
        sub_100005F2C(__dst, *(v67 + 48), *(v67 + 56));
      }

      else
      {
        *__dst = *(v67 + 48);
        v193 = *(v67 + 64);
      }
    }

    else
    {
      sub_10000501C(__dst, "");
    }

    v191 = 0;
    v68 = PersonalitySpecificImpl::simSlot(a1);
    sub_10075A81C(__dst, v68, v33, 0);
    if (SHIBYTE(v190) < 0)
    {
      sub_100005F2C(v201, __p[0], __p[1]);
    }

    else
    {
      *v201 = *__p;
      *&v201[16] = v190;
    }

    v194 = 0;
    if (v201[23] < 0)
    {
      sub_100005F2C(buf, *v201, *&v201[8]);
    }

    else
    {
      *buf = *v201;
      *&buf[16] = *&v201[16];
    }

    v195 = 0;
    if (ctu::cf::convert_copy())
    {
      v69 = v194;
      v194 = v195;
      v187[0] = v69;
      sub_100005978(v187);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v191 = v194;
    v194 = 0;
    sub_100005978(&v194);
    if (v201[23] < 0)
    {
      operator delete(*v201);
    }

    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    if ((atomic_load_explicit(&qword_101FBAAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAAD8))
    {
      *buf = @"APNInfoPersisted";
      qword_101FBAAC8 = 0;
      unk_101FBAAD0 = 0;
      qword_101FBAAC0 = 0;
      sub_10005B328(&qword_101FBAAC0, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAAC0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAAD8);
    }

    v195 = 0;
    v70 = Registry::getServiceMap(*(a1 + 72));
    v71 = v70;
    v72 = v59;
    if (v59 < 0)
    {
      v73 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v74 = 5381;
      do
      {
        v72 = v74;
        v75 = *v73++;
        v74 = (33 * v74) ^ v75;
      }

      while (v75);
    }

    std::mutex::lock(v70);
    *buf = v72;
    v76 = sub_100009510(&v71[1].__m_.__sig, buf);
    if (!v76)
    {
      v77 = 0;
LABEL_91:
      std::mutex::unlock(v71);
      v78 = 0;
      v79 = 1;
      goto LABEL_92;
    }

    v77 = v76[3];
    v78 = v76[4];
    if (!v78)
    {
      goto LABEL_91;
    }

    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v71);
    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v78);
    v79 = 0;
LABEL_92:
    (*(*a1 + 16))(buf, a1);
    (*(*v77 + 24))(&v195, v77, *buf + 24, v191, v181, &qword_101FBAAC0, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v79 & 1) == 0)
    {
      sub_100004A34(v78);
    }

    if (v195)
    {
      v80 = CFGetTypeID(v195);
      TypeID = CFStringGetTypeID();
      v82 = *v184;
      v83 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
      if (v80 == TypeID)
      {
        if (v83)
        {
          if (v193 >= 0)
          {
            v84 = __dst;
          }

          else
          {
            v84 = __dst[0];
          }

          v85 = asString();
          memset(v201, 0, sizeof(v201));
          ctu::cf::assign();
          *v187 = *v201;
          v188 = *&v201[16];
          v86 = *v201;
          if ((v201[23] & 0x80u) == 0)
          {
            v86 = v187;
          }

          *buf = 136315650;
          *&buf[4] = v84;
          *&buf[12] = 2080;
          *&buf[14] = v85;
          *&buf[22] = 2080;
          *&buf[24] = v86;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted start[%s:%s]: %s", buf, 0x20u);
          if (SHIBYTE(v188) < 0)
          {
            operator delete(v187[0]);
          }
        }
      }

      else if (v83)
      {
        v87 = SHIBYTE(v193);
        v88 = __dst[0];
        v89 = asString();
        *buf = 136315394;
        v90 = __dst;
        if (v87 < 0)
        {
          v90 = v88;
        }

        *&buf[4] = v90;
        *&buf[12] = 2080;
        *&buf[14] = v89;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted start[%s:%s]: empty (2)", buf, 0x16u);
      }
    }

    sub_10000A1EC(&v195);
    sub_100005978(&v191);
    if (SHIBYTE(v193) < 0)
    {
      operator delete(__dst[0]);
    }

LABEL_112:
    v91 = Registry::getServiceMap(*(a1 + 72));
    v92 = v91;
    v93 = v59;
    if (v59 < 0)
    {
      v94 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v95 = 5381;
      do
      {
        v93 = v95;
        v96 = *v94++;
        v95 = (33 * v95) ^ v96;
      }

      while (v96);
    }

    std::mutex::lock(v91);
    *buf = v93;
    v97 = sub_100009510(&v92[1].__m_.__sig, buf);
    if (!v97)
    {
      std::mutex::unlock(v92);
      goto LABEL_169;
    }

    v98 = v97[3];
    v99 = v97[4];
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v92);
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v99);
      sub_100004A34(v99);
      if (!v98)
      {
        goto LABEL_169;
      }
    }

    else
    {
      std::mutex::unlock(v92);
      if (!v98)
      {
        goto LABEL_169;
      }
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v193 = 0;
    v100 = *(a1 + 264);
    if (v100)
    {
      if (*(v100 + 71) < 0)
      {
        sub_100005F2C(__dst, *(v100 + 48), *(v100 + 56));
      }

      else
      {
        *__dst = *(v100 + 48);
        v193 = *(v100 + 64);
      }
    }

    else
    {
      sub_10000501C(__dst, "");
    }

    v191 = 0;
    v101 = PersonalitySpecificImpl::simSlot(a1);
    sub_10075A81C(__dst, v101, v33, 1);
    if (SHIBYTE(v186) < 0)
    {
      sub_100005F2C(v201, v185[0], v185[1]);
    }

    else
    {
      *v201 = *v185;
      *&v201[16] = v186;
    }

    v194 = 0;
    if (v201[23] < 0)
    {
      sub_100005F2C(buf, *v201, *&v201[8]);
    }

    else
    {
      *buf = *v201;
      *&buf[16] = *&v201[16];
    }

    v195 = 0;
    if (ctu::cf::convert_copy())
    {
      v102 = v194;
      v194 = v195;
      v187[0] = v102;
      sub_100005978(v187);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v191 = v194;
    v194 = 0;
    sub_100005978(&v194);
    if (v201[23] < 0)
    {
      operator delete(*v201);
    }

    if (SHIBYTE(v186) < 0)
    {
      operator delete(v185[0]);
    }

    if ((atomic_load_explicit(&qword_101FBAAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAAF8))
    {
      *buf = @"APNInfoPersisted";
      qword_101FBAAE8 = 0;
      unk_101FBAAF0 = 0;
      qword_101FBAAE0 = 0;
      sub_10005B328(&qword_101FBAAE0, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAAE0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAAF8);
    }

    v195 = 0;
    v103 = Registry::getServiceMap(*(a1 + 72));
    v104 = v103;
    if (v59 < 0)
    {
      v105 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v106 = 5381;
      do
      {
        v59 = v106;
        v107 = *v105++;
        v106 = (33 * v106) ^ v107;
      }

      while (v107);
    }

    std::mutex::lock(v103);
    *buf = v59;
    v108 = sub_100009510(&v104[1].__m_.__sig, buf);
    if (!v108)
    {
      v109 = 0;
LABEL_148:
      std::mutex::unlock(v104);
      v110 = 0;
      v111 = 1;
      goto LABEL_149;
    }

    v109 = v108[3];
    v110 = v108[4];
    if (!v110)
    {
      goto LABEL_148;
    }

    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v104);
    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v110);
    v111 = 0;
LABEL_149:
    (*(*a1 + 16))(buf, a1);
    (*(*v109 + 24))(&v195, v109, *buf + 24, v191, v181, &qword_101FBAAE0, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v111 & 1) == 0)
    {
      sub_100004A34(v110);
    }

    if (v195)
    {
      v112 = CFGetTypeID(v195);
      v113 = CFStringGetTypeID();
      v114 = *v184;
      v115 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
      if (v112 == v113)
      {
        if (v115)
        {
          if (v193 >= 0)
          {
            v116 = __dst;
          }

          else
          {
            v116 = __dst[0];
          }

          v117 = asString();
          memset(v201, 0, sizeof(v201));
          ctu::cf::assign();
          *v187 = *v201;
          v188 = *&v201[16];
          v118 = *v201;
          if ((v201[23] & 0x80u) == 0)
          {
            v118 = v187;
          }

          *buf = 136315650;
          *&buf[4] = v116;
          *&buf[12] = 2080;
          *&buf[14] = v117;
          *&buf[22] = 2080;
          *&buf[24] = v118;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted complete[%s:%s]: %s", buf, 0x20u);
          if (SHIBYTE(v188) < 0)
          {
            operator delete(v187[0]);
          }
        }
      }

      else if (v115)
      {
        v119 = SHIBYTE(v193);
        v120 = __dst[0];
        v121 = asString();
        *buf = 136315394;
        v122 = __dst;
        if (v119 < 0)
        {
          v122 = v120;
        }

        *&buf[4] = v122;
        *&buf[12] = 2080;
        *&buf[14] = v121;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted complete[%s:%s]: empty (2)", buf, 0x16u);
      }
    }

    sub_10000A1EC(&v195);
    sub_100005978(&v191);
    if (SHIBYTE(v193) < 0)
    {
      operator delete(__dst[0]);
    }

LABEL_169:
    ++v32;
  }

  while (v32 != 2);
  v123 = 312;
  v124 = v184;
  do
  {
    v125 = *(a1 + v123);
    if (v125)
    {
      sub_1009CA6F8(v125, *v124);
      v124 = v184;
    }

    v123 += 16;
  }

  while (v123 != 344);
  v126 = *v124;
  if (os_log_type_enabled(*v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t FatalActivationBlockers: {", buf, 2u);
  }

  for (i = 0; i != 2; ++i)
  {
    v128 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v129 = asStringBool(*(a1 + 348 + dword_101836038[i]));
      v130 = asString();
      v131 = asString();
      *buf = 136315650;
      *&buf[4] = v129;
      *&buf[12] = 2080;
      *&buf[14] = v130;
      *&buf[22] = 2080;
      *&buf[24] = v131;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s) cause %s", buf, 0x20u);
    }
  }

  v132 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  for (j = 0; j != 2; ++j)
  {
    v134 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v135 = dword_101836038[j];
      v136 = asString();
      v137 = asStringBool(*(a1 + 344 + v135));
      *buf = 136315394;
      *&buf[4] = v136;
      *&buf[12] = 2080;
      *&buf[14] = v137;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fIPv4ActivationBlocker[%s] = %s", buf, 0x16u);
    }
  }

  for (k = 0; k != 2; ++k)
  {
    v139 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v140 = dword_101836038[k];
      v141 = asString();
      v142 = asStringBool(*(a1 + 346 + v140));
      *buf = 136315394;
      *&buf[4] = v141;
      *&buf[12] = 2080;
      *&buf[14] = v142;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fIPv6ActivationBlocker[%s] = %s", buf, 0x16u);
    }
  }

  v143 = v184;
  v144 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v144 = *v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v145 = asStringBool(*(a1 + 256));
    v146 = *(a1 + 248);
    *buf = 136315394;
    *&buf[4] = v145;
    *&buf[12] = 1024;
    *&buf[14] = v146;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCBv6SupportedDataModeMaskPresent[kDataContextBB] = %s, fCBv6SupportedDataModeMask[kDataContextBB] = %d", buf, 0x12u);
    v144 = *(a1 + 64);
    v143 = v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v147 = asStringBool(*(a1 + 257));
    v148 = *(a1 + 252);
    *buf = 136315394;
    *&buf[4] = v147;
    *&buf[12] = 1024;
    *&buf[14] = v148;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCBv6SupportedDataModeMaskPresent[kDataContextIWLAN] = %s, fCBv6SupportedDataModeMask[kDataContextIWLAN] = %d", buf, 0x12u);
    v144 = *(a1 + 64);
    v143 = v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fObservers BB: {", buf, 2u);
  }

  v149 = *(a1 + 120);
  for (m = *(a1 + 128); v149 != m; v149 += 24)
  {
    v151 = *v143;
    if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
    {
      v152 = (*(**(v149 + 8) + 16))(*(v149 + 8));
      v153 = asStringBool(*(v149 + 16));
      *buf = 136315394;
      *&buf[4] = v152;
      *&buf[12] = 2080;
      *&buf[14] = v153;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s)", buf, 0x16u);
      v143 = v184;
    }
  }

  v154 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v154 = *v143;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fObservers iWLAN: {", buf, 2u);
  }

  v155 = *(a1 + 144);
  for (n = *(a1 + 152); v155 != n; v155 += 24)
  {
    v157 = *v143;
    if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
    {
      v158 = (*(**(v155 + 8) + 16))(*(v155 + 8));
      v159 = asStringBool(*(v155 + 16));
      *buf = 136315394;
      *&buf[4] = v158;
      *&buf[12] = 2080;
      *&buf[14] = v159;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s)", buf, 0x16u);
      v143 = v184;
    }
  }

  v160 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v160 = *v143;
  }

  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v161 = asStringBool(*(a1 + 576) != 0);
    v162 = *(a1 + 592);
    *buf = 136315394;
    *&buf[4] = v161;
    *&buf[12] = 1024;
    *&buf[14] = v162;
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimer active = %s, fLastThrottleType = %d", buf, 0x12u);
  }

  v163 = sub_100758674(a1, 0, 0);
  v164 = *(a1 + 64);
  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
  {
    v165 = *(a1 + 568);
    *buf = 67109376;
    *&buf[4] = v165;
    *&buf[8] = 1024;
    *&buf[10] = v163;
    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimerArrayIndex[ThrottleType::kThrottleTypeNetwork] = %d, timeout = %d", buf, 0xEu);
  }

  v166 = sub_100758674(a1, 1u, 0);
  v167 = *(a1 + 64);
  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
  {
    v168 = *(a1 + 572);
    *buf = 67109376;
    *&buf[4] = v168;
    *&buf[8] = 1024;
    *&buf[10] = v166;
    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimerArrayIndex[ThrottleType::kThrottleTypeInternal] = %d, timeout = %d", buf, 0xEu);
  }

  v169 = 0;
  v170 = a1 + 456;
  v182 = a1 + 448;
  do
  {
    v171 = dword_101836038[v169];
    v172 = v170 + 56 * v171;
    v173 = *(v172 + 8);
    v183 = *(v172 + 16);
    v174 = *(v172 + 28);
    v175 = *(v172 + 48);
    if (v175)
    {
      atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v176 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v177 = asString();
      v178 = *(v182 + 4 * v171);
      v179 = asString();
      v180 = asStringBool(v174 & 1);
      *buf = 136316418;
      *&buf[4] = v177;
      *&buf[12] = 1024;
      *&buf[14] = v178;
      *&buf[18] = 2080;
      *&buf[20] = v173;
      *&buf[28] = 2080;
      *&buf[30] = v183;
      v197 = 2080;
      v198 = v179;
      v199 = 2080;
      v200 = v180;
      _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t ContextType=%s: fActivateErrorCount = %d, fLastActivateError: reason = %s, subReason = %s, error = %s, networkStateValid = %s", buf, 0x3Au);
    }

    if (v175)
    {
      sub_100004A34(v175);
    }

    ++v169;
  }

  while (v169 != 2);
}

void sub_10075A62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, const void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  __cxa_guard_abort(&qword_101FBAAF8);
  sub_100005978(&a40);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10075A81C(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v38 = 0uLL;
  v39 = 0;
  sub_10000501C(&v31, "APN_activation_");
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v31, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v32, "_", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = subscriber::asString();
  v14 = strlen(v13);
  v15 = std::string::append(&v33, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v34, "_", 1uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = asString();
  v20 = strlen(v19);
  v21 = std::string::append(&v35, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v36, "_", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = asStringBool(a4);
  v26 = strlen(v25);
  v27 = std::string::append(&v37, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v39 = v27->__r_.__value_.__r.__words[2];
  v38 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  memset(&v37, 0, sizeof(v37));
  v36.__r_.__value_.__s.__data_[0] = 0;
  sub_10075B758(&v37, 20);
  if (v39 >= 0)
  {
    v29 = &v38;
  }

  else
  {
    v29 = v38;
  }

  if (v39 >= 0)
  {
    v30 = HIBYTE(v39);
  }

  else
  {
    v30 = DWORD2(v38);
  }

  CC_SHA1(v29, v30, v37.__r_.__value_.__l.__data_);
  ctu::hex();
  if (v37.__r_.__value_.__r.__words[0])
  {
    v37.__r_.__value_.__l.__size_ = v37.__r_.__value_.__r.__words[0];
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }
}

void sub_10075AAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075ABA4(uint64_t a1)
{
  Registry::getTimerService(&v3, *(a1 + 72));
  v1 = (**v3)(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_10075AC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075AC28(uint64_t a1, int a2)
{
  if (!validContextType() || *(a1 + 728 + 16 * a2 + 8) != 1)
  {
    return 0;
  }

  v4 = sub_10075ABA4(a1);
  v5 = a1 + 728 + 16 * a2;
  if ((*(v5 + 8) & 1) == 0)
  {
    sub_1000D1644();
  }

  v6 = ((v4 - *v5) * 0x112E0BE826D694B3) >> 64;
  return (v6 >> 26) + (v6 >> 63);
}

void sub_10075ACBC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(*v2 + 128);

    v3();
  }

  else
  {
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "setCoalescing";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E %s: pdpActivator is empty", &v5, 0xCu);
    }
  }
}

void sub_10075ADC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[14];
  if (v5)
  {
    (*(*a1 + 16))(&v9);
    sub_1000224C8(v13, a4);
    (*(*v5 + 112))(v5, &v9, a2, a3, v13);
    sub_10000FF50(v13);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "queryAnbrBitrate";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: pdpActivator is empty", buf, 0xCu);
    }

    sub_10000FFD0(a4, 0);
  }
}

void sub_10075AF10(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000FF50(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_10075AF48(void *a1, uint64_t a2)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v5);
    sub_100457284(v9, a2);
    (*(*v3 + 120))(v3, &v5, v9);
    sub_1003F2928(v9);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v4 = a1[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "getAnbrActivationState";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: pdpActivator is empty", buf, 0xCu);
    }

    sub_100447630(a2, 0, 0);
  }
}

void sub_10075B080(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1003F2928(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void *sub_10075B0B8(void *result, uint64_t a2)
{
  v2 = result[15];
  for (i = result[16]; v2 != i; v2 += 24)
  {
    if (*(v2 + 16) == 1)
    {
      result = *(v2 + 8);
      if (result)
      {
        result = (*(*result + 336))(result, a2);
      }
    }
  }

  return result;
}

void *sub_10075B144(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[15];
  for (i = result[16]; v3 != i; v3 += 24)
  {
    if (*(v3 + 16) == 1)
    {
      result = *(v3 + 8);
      if (result)
      {
        result = (*(*result + 344))(result, a2, a3);
      }
    }
  }

  return result;
}

uint64_t sub_10075B1E0(uint64_t a1, int a2)
{
  v2 = 208;
  if (a2 == 1)
  {
    v2 = 224;
  }

  if (!a2)
  {
    v2 = 216;
  }

  return *(a1 + v2);
}

uint64_t sub_10075B204@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 272);
  *a2 = *(result + 264);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10075B220(uint64_t a1@<X0>, int a2@<W1>, CIPFamily *a3@<X8>)
{
  if (validContextType())
  {

    CIPFamily::CIPFamily(a3, (a1 + 16 * a2 + 632));
  }

  else
  {

    CIPFamily::CIPFamily(a3);
  }
}

_BYTE *sub_10075B29C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 33);
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 95) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 72), *(v2 + 80));
  }

  v3 = *(v2 + 72);
  *(a2 + 16) = *(v2 + 88);
  *a2 = v3;
  return result;
}

_BYTE *sub_10075B2DC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 33);
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 119) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 96), *(v2 + 104));
  }

  v3 = *(v2 + 96);
  *(a2 + 16) = *(v2 + 112);
  *a2 = v3;
  return result;
}

_BYTE *sub_10075B31C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 33);
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 143) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 120), *(v2 + 128));
  }

  v3 = *(v2 + 120);
  *(a2 + 16) = *(v2 + 136);
  *a2 = v3;
  return result;
}

uint64_t sub_10075B35C(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    return *(v1 + 242);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10075B374@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 33);
  if (!v2 || *(v2 + 312) != 1)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 311) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 288), *(v2 + 296));
  }

  v3 = *(v2 + 288);
  *(a2 + 16) = *(v2 + 304);
  *a2 = v3;
  return result;
}

uint64_t sub_10075B410(uint64_t a1, int a2)
{
  v2 = 208;
  if (a2 == 1)
  {
    v2 = 224;
  }

  if (!a2)
  {
    v2 = 216;
  }

  return *(a1 + v2 - 24);
}

uint64_t sub_10075B464(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    return *(v1 + 242);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10075B4A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 248);
  *a2 = *(result + 240);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10075B4C8(uint64_t a1)
{
  sub_100741C98(a1);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10075B588(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 26) = *(a2 + 26);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void *sub_10075B5F0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * (v7 - *result) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x13B13B13B13B13B1)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * v7;
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x9D89D89D89D89D8)
      {
        v11 = 0x13B13B13B13B13B1;
      }

      else
      {
        v11 = v10;
      }

      sub_100090D74(v6, v11);
    }

    sub_1000CE3D4();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v12 - v8) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void *sub_10075B758(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100034CCC(result, a2);
  }

  return result;
}

void sub_10075B7BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075B7E8(uint64_t result, uint64_t a2)
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

void sub_10075B804(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10075B814(uint64_t a1, uint64_t a2)
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

void *sub_10075B8AC(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_10075B978(uint64_t a1)
{
  v24.__locale_ = 0;
  std::locale::locale(&v24);
  v2 = std::locale::classic();
  if (std::locale::operator==(&v24, v2))
  {
    v3 = *a1;
    do
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = v4 - 1;
      *(v4 - 1) = *(a1 + 20) + v3 % 0xA;
      LODWORD(v4) = *a1;
      v3 = *a1 / 0xAu;
      *a1 = v3;
    }

    while (v4 > 9);
    v5 = *(a1 + 8);
    goto LABEL_28;
  }

  v6 = std::locale::use_facet(&v24, &std::numpunct<char>::id);
  __p = 0;
  v22 = 0;
  v23 = 0;
  (v6->__vftable[1].__on_zero_shared)(&__p);
  v7 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v7 = v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v23))
    {
      goto LABEL_24;
    }

    p_p = &__p;
  }

  if (*p_p > 0)
  {
    v9 = (v6->__vftable[1].~facet_0)(v6);
    v10 = 0;
    v11 = __p;
    if (v23 >= 0)
    {
      v11 = &__p;
    }

    v12 = (a1 + 8);
    LOBYTE(v13) = *v11;
    v14 = *v11;
    do
    {
      if (!v14)
      {
        if (++v10 < v7)
        {
          v15 = v23 >= 0 ? &__p : __p;
          v13 = *(v15 + v10);
          if (v13 < 1)
          {
            LOBYTE(v13) = 127;
          }
        }

        v16 = (*v12 - 1);
        *v12 = v16;
        *v16 = v9;
        v14 = v13;
      }

      --v14;
      v17 = *(a1 + 8);
      *(a1 + 8) = v17 - 1;
      *(v17 - 1) = *(a1 + 20) + *a1 % 0xAu;
      LODWORD(v17) = *a1;
      *a1 /= 0xAu;
    }

    while (v17 > 9);
    goto LABEL_26;
  }

LABEL_24:
  v12 = (a1 + 8);
  v18 = *a1;
  do
  {
    v19 = *(a1 + 8);
    *(a1 + 8) = v19 - 1;
    *(v19 - 1) = *(a1 + 20) + v18 % 0xA;
    LODWORD(v19) = *a1;
    v18 = *a1 / 0xAu;
    *a1 = v18;
  }

  while (v19 > 9);
LABEL_26:
  v5 = *v12;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v5;
}

void sub_10075BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_10075BC18(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*v1)
      {
        v6 = v3[14];
        if (v6)
        {
          if ((*(*v6 + 344))(v6))
          {
            (*(*v3[14] + 352))(v3[14], 0);
            v32 = *(v1 + 24);
            v7 = v32;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            sub_10074BD70(v3, v32, &v29);
            v28 = 0;
            memset(v27, 0, sizeof(v27));
            v25 = 0;
            v26 = 0;
            __p = 0;
            sub_100090CF8(&__p, v29, v30, 0x4EC4EC4EC4EC4EC5 * (v30 - v29));
            sub_100090720(v3, v7, &__p, v27);
            if (__p)
            {
              v25 = __p;
              operator delete(__p);
            }

            v8 = LODWORD(v27[0]);
            if (LODWORD(v27[0]))
            {
              v9 = v3[8];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = asString();
                *buf = 136315650;
                *v40 = "operator()";
                *&v40[8] = 2080;
                *&v40[10] = v10;
                *&v40[18] = 1024;
                v41 = v27[0];
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataActivateResult_Async(3.0): retryType=%s, error=%d", buf, 0x1Cu);
              }

              sub_100757618(v3, *(v1 + 24), (v8 << 32) | 0xFFFFFFFFLL);
            }

            else
            {
              if (validContextType())
              {
                v11 = &v3[3 * v7];
                v12 = v11[15];
                v13 = v11[16];
                while (v12 != v13)
                {
                  if (*(v12 + 16))
                  {
                    v14 = *(v12 + 1);
                    goto LABEL_18;
                  }

                  v12 = (v12 + 24);
                }
              }

              v14 = 0;
LABEL_18:
              buf[0] = 1;
              *&v40[4] = "retry activation (async)";
              *&v40[12] = "CommCenter";
              LOBYTE(v41) = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v47 = 0;
              v48 = 0;
              v46 = 0;
              v49 = 0;
              v22 = 0;
              v23 = 0;
              v21 = 0;
              sub_100090CF8(&v21, v29, v30, 0x4EC4EC4EC4EC4EC5 * (v30 - v29));
              v15 = sub_100745590(v3, &v3[2 * v7 + 79], v14, &v32, 0, buf, &v21);
              if (v21)
              {
                v22 = v21;
                operator delete(v21);
              }

              if (SHIBYTE(v48) < 0)
              {
                operator delete(v46);
              }

              v16 = v3[8];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = asString();
                *v33 = 136315650;
                v34 = "operator()";
                v35 = 2080;
                v36 = v17;
                v37 = 1024;
                v38 = v15;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataActivateResult_Async(3): retryType=%s, activationReturn=%d", v33, 0x1Cu);
              }

              sub_100757618(v3, *(v1 + 24), v15);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10075C078(&v20);
  return sub_1000049E0(&v19);
}

void sub_10075BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  sub_100004A34(v26);
  sub_10075C078(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10075C078(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_10075C0CC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001177B0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10075C124(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), 0);
  sub_10075C4B8(v3, 0, 0, 0);
  return a1;
}

void sub_10075C180(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C1A0(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    sub_10075C418((a1 + 8), 0);
    v6 = 0;
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7 >> 2;
    sub_10075C418((a1 + 8), v7 >> 2);
    v9 = &v6[v7];
  }

  sub_10075C4B8(v4, v6, v9, v8);
  return a1;
}

void sub_10075C230(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C250(uint64_t a1, int a2, int a3)
{
  __src = a3;
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), 1uLL);
  sub_10075C4B8(v4, &__src, &v7, 1uLL);
  return a1;
}

void sub_10075C2BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C2DC(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7[0] = a3;
  v7[1] = a4;
  sub_10075C418((a1 + 8), 2uLL);
  sub_10075C4B8(v5, v7, &v8, 2uLL);
  return a1;
}

void sub_10075C374(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C394(uint64_t a1, int a2, char *a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), a4);
  sub_10075C4B8(v7, a3, &a3[4 * a4], a4);
  return a1;
}

void sub_10075C3F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10075C418(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_100016740(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void *sub_10075C4B8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034AE8(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10075C5FC(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "lazuli.svr");
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger(a1, v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  v13[0] = off_101E2B528;
  v13[1] = sub_10075C7E8;
  v13[3] = v13;
  sub_10075C814((a1 + 8));
  sub_1000A8744(v13);
  *(a1 + 16) = a2;
  v8 = *(a3 + 8);
  *(a1 + 24) = *a3;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  Registry::getFileSystemInterface((a1 + 64), *a3);
  return a1;
}

void sub_10075C748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 4);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(v15 + 1);
  *(v15 + 1) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  ctu::OsLogLogger::~OsLogLogger(v15);
  _Unwind_Resume(a1);
}

const char *sub_10075C7E8(int a1)
{
  v1 = "lazuli.svr.file.??";
  if (a1 == 2)
  {
    v1 = "lazuli.svr.file.2";
  }

  if (a1 == 1)
  {
    return "lazuli.svr.file.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_10075C814(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_10075C96C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_10075C9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = Mutable;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(buf, v13[0], v13[1]);
  }

  else
  {
    *buf = *v13;
    v23 = v14;
  }

  v17 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v19 = v23;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v17;
    v17 = v20;
    v21 = v7;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v17;
  v15 = v17;
  v17 = 0;
  sub_100005978(&v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(*buf);
  }

  CFDictionarySetValue(Mutable, @"Server", v8);
  sub_100005978(&v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v19 = *(a3 + 16);
  }

  ctu::path_join_impl();
  v9 = (*(**(a1 + 64) + 184))(*(a1 + 64), __p, v16, 0);
  if ((v9 & 1) == 0)
  {
    v10 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __p;
      if (v19 < 0)
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to store server name to file: %{public}s", buf, 0xCu);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000296E0(&v16);
  return v9;
}

void sub_10075CD40(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = &v51;
  v52 = &v51;
  v53 = 0;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = *(a1 + 32);
    v49 = *(a1 + 24);
    v50 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v49, (a1 + 40), &v61);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v61;
    }

    else
    {
      v10 = v61.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Attempting to find server: [%{public}s] in %{public}s", buf, 0x16u);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      sub_100004A34(v50);
    }
  }

  v11 = (a1 + 40);
  if (((*(**(a1 + 64) + 88))(*(a1 + 64), a1 + 40) & 1) == 0)
  {
    v12 = *(a1 + 64);
    v13 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v13 = *v11;
    }

    memset(&v61, 0, sizeof(v61));
    memset(buf, 0, 24);
    v14 = (*(*v12 + 80))(v12, v13, 511, &v61, buf, 1);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v61.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(v61.__r_.__value_.__r.__words[0]) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Root server folder creation status: %d", &v61, 8u);
    }
  }

  v16 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v51, 1);
  if (!v16)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    for (i = v52; i != &v51; i = i[1])
    {
      ctu::basename();
      sub_1000D1054(&v46, &v61);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(v46, v47, ", ", 2uLL, &v61);
      v20 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Available files/dirs: %{public}s", buf, 0xCu);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v37 = a3;
    v43 = &v43;
    v44 = &v43;
    v45 = 0;
    v21 = v52;
    if (v52 != &v51)
    {
      while (1)
      {
        memset(buf, 0, 24);
        if (*(v21 + 39) < 0)
        {
          sub_100005F2C(buf, v21[2], v21[3]);
        }

        else
        {
          *buf = *(v21 + 1);
          *&buf[16] = v21[4];
        }

        v22 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        if ((*(**(a1 + 64) + 224))(*(a1 + 64), v22))
        {
          __dst[0].__locale_ = 0;
          __dst[1].__locale_ = 0;
          *&v39 = 0;
          if (buf[23] < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *&__dst[0].__locale_ = *buf;
            *&v39 = *&buf[16];
          }

          ctu::path_join_impl();
          if ((*(**(a1 + 64) + 88))(*(a1 + 64), __dst))
          {
            theDict = 0;
            (*(**(a1 + 64) + 152))(&theDict);
            if (!theDict)
            {
              goto LABEL_68;
            }

            CFDictionaryGetValue(theDict, @"Server");
            memset(&v61, 0, sizeof(v61));
            ctu::cf::assign();
            __p = v61;
            v23 = *(a2 + 23);
            if (v23 >= 0)
            {
              v24 = *(a2 + 23);
            }

            else
            {
              v24 = *(a2 + 8);
            }

            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (v24 != size || (v23 >= 0 ? (v27 = a2) : (v27 = *a2), (v28 = __p.__r_.__value_.__r.__words[0], (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v27, p_p, v24)))
            {
              if (v26 < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_68:
              sub_10001021C(&theDict);
              sub_100764094();
            }

            *v37 = *buf;
            *(v37 + 2) = *&buf[16];
            memset(buf, 0, 24);
            v37[24] = 1;
            if (v26 < 0)
            {
              operator delete(v28);
            }

            sub_10001021C(&theDict);
            v30 = 1;
          }

          else
          {
            v30 = 14;
          }

          if (SBYTE7(v39) < 0)
          {
            operator delete(__dst[0].__locale_);
          }
        }

        else
        {
          v30 = 0;
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v30 != 14 && v30)
        {
          goto LABEL_111;
        }

        v21 = v21[1];
        if (v21 == &v51)
        {
          if (v45)
          {
            sub_100764124(v44, &v43, v45);
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            memset(buf, 0, sizeof(buf));
            v40 = 0u;
            v41 = 0u;
            *&__dst[0].__locale_ = 0u;
            v39 = 0u;
            sub_1001C7FB0(__dst, "_(\\d+)", 0);
          }

          break;
        }
      }
    }

    memset(&v61, 0, sizeof(v61));
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&v61, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *&v61.__r_.__value_.__l.__data_ = *v11;
      v61.__r_.__value_.__r.__words[2] = *(a1 + 56);
    }

    ctu::path_join_impl();
    if ((*(**(a1 + 64) + 88))(*(a1 + 64), &v61))
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_10177CD24();
      }
    }

    else
    {
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v61;
      }

      else
      {
        v31 = v61.__r_.__value_.__r.__words[0];
      }

      v32 = (*(**(a1 + 64) + 72))(*(a1 + 64), v31, 511, 1);
      v33 = *v6;
      v34 = os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v34)
        {
          v35 = &v61;
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v61.__r_.__value_.__r.__words[0];
          }

          *buf = 136446466;
          *&buf[4] = v35;
          *&buf[12] = 1024;
          *&buf[14] = v32;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Folder could not be created: %{public}s, error: %d", buf, 0x12u);
        }

        goto LABEL_106;
      }

      if (v34)
      {
        sub_10177CCB4();
      }
    }

    if (sub_10075C9DC(a1, a2, &v61))
    {
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(v37, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
      }

      else
      {
        *v37 = v61;
      }

      v36 = 1;
LABEL_109:
      v37[24] = v36;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

LABEL_111:
      sub_10042E114(&v43);
      *buf = &v46;
      sub_1000087B4(buf);
      goto LABEL_112;
    }

    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CC00();
    }

LABEL_106:
    v36 = 0;
    *v37 = 0;
    goto LABEL_109;
  }

  v17 = *v6;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 63) < 0)
    {
      v11 = *v11;
    }

    LODWORD(v61.__r_.__value_.__l.__data_) = 136446466;
    *(v61.__r_.__value_.__r.__words + 4) = v11;
    WORD2(v61.__r_.__value_.__r.__words[1]) = 2048;
    *(&v61.__r_.__value_.__r.__words[1] + 6) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to read contents of: %{public}s, error: %zu", &v61, 0x16u);
  }

  *a3 = 0;
  a3[24] = 0;
LABEL_112:
  sub_10042E114(&v51);
}

void sub_10075DA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _BYTE *a10, std::locale a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    if (*(v52 - 201) < 0)
    {
      operator delete(*(v52 - 224));
    }

    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      sub_10177CC3C();
    }

    *a10 = 0;
    a10[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x10075D934);
  }

  _Unwind_Resume(exception_object);
}

void sub_10075DC40(uint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  v36 = &v36;
  v37 = &v36;
  v38 = 0;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = *(a1 + 32);
    v34 = *(a1 + 24);
    v35 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v34, (a1 + 40), v40);
    if ((v40[23] & 0x80u) == 0)
    {
      v10 = v40;
    }

    else
    {
      v10 = *v40;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Getting server dir for %{public}s in %{public}s", &buf, 0x16u);
    if (v40[23] < 0)
    {
      operator delete(*v40);
    }

    if (v35)
    {
      sub_100004A34(v35);
    }
  }

  v11 = (a1 + 40);
  v12 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v36, 1);
  if (v12)
  {
    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      *v40 = 136446466;
      *&v40[4] = v11;
      *&v40[12] = 2048;
      *&v40[14] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Unable to read contents of: %{public}s, error: %zu", v40, 0x16u);
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_20;
  }

  memset(&buf, 0, sizeof(buf));
  v14 = v37;
  if (v37 == &v36)
  {
    v25 = 0;
    goto LABEL_68;
  }

  do
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v14 + 39) < 0)
    {
      sub_100005F2C(&__str, v14[2], v14[3]);
    }

    else
    {
      __str = *(v14 + 2);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (((*(**(a1 + 64) + 224))(*(a1 + 64), p_str) & 1) == 0)
    {
      v16 = 0;
      goto LABEL_56;
    }

    memset(&__dst, 0, sizeof(__dst));
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __str;
    }

    ctu::path_join_impl();
    if ((*(**(a1 + 64) + 88))(*(a1 + 64), &__dst))
    {
      theDict = 0;
      (*(**(a1 + 64) + 152))(&theDict);
      if (!theDict)
      {
        goto LABEL_51;
      }

      CFDictionaryGetValue(theDict, @"Server");
      memset(v40, 0, sizeof(v40));
      ctu::cf::assign();
      v30 = *&v40[16];
      *__p = *v40;
      v17 = *(a2 + 23);
      if (v17 >= 0)
      {
        v18 = *(a2 + 23);
      }

      else
      {
        v18 = *(a2 + 8);
      }

      v19 = HIBYTE(v30);
      v20 = SHIBYTE(v30);
      if (v30 < 0)
      {
        v19 = __p[1];
      }

      if (v18 == v19 && (v17 >= 0 ? (v21 = a2) : (v21 = *a2), v30 >= 0 ? (v22 = __p) : (v22 = __p[0]), !memcmp(v21, v22, v18)))
      {
        std::string::operator=(&buf, &__str);
        v24 = 6;
        v23 = 1;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_50:
          if (v23)
          {
LABEL_52:
            sub_10001021C(&theDict);
            v16 = v24 == 6;
            goto LABEL_54;
          }

LABEL_51:
          v24 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      operator delete(__p[0]);
      goto LABEL_50;
    }

    v16 = 0;
LABEL_54:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

LABEL_56:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v16)
    {
      break;
    }

    v14 = v14[1];
  }

  while (v14 != &v36);
  v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *a3 = buf;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_20;
  }

LABEL_68:
  v27 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    *v40 = 136446210;
    *&v40[4] = v28;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to find server folder for: %{public}s", v40, 0xCu);
    v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  if (v25 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  sub_10042E114(&v36);
}