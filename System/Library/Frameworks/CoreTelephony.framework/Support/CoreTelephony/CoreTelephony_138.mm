uint64_t sub_101217950(uint64_t a1, int a2, int a3)
{
  if (a3 != 6)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 6;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_1012179D4(uint64_t a1, int a2, int a3)
{
  if (a3 != 5)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 5;
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(v3 + 24) = 5;
  return 1;
}

uint64_t sub_101217A54(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 4;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_101217AD4(uint64_t a1, int a2, int a3)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 3;
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  *(v3 + 24) = 3;
  return 1;
}

uint64_t sub_101217B54(uint64_t a1, int a2, int a3)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 2;
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  *(v3 + 24) = 2;
  return 1;
}

uint64_t sub_101217BD4(uint64_t a1, int a2, int a3)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 1;
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(v3 + 24) = 1;
  return 1;
}

void sub_101217C58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101217C90(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101217CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_101217D00(void *a1)
{
  *a1 = off_101F1CA10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101217D4C(void *a1)
{
  *a1 = off_101F1CA10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101217DB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          LOWORD(v13[0]) = 8383;
          BYTE2(v13[0]) = 0;
          v19 = 0;
          v20 = 0;
          v18 = 0;
          sub_1000DCF88(&v18, v13, v13 + 3, 3);
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [1a] Sending to SIM", v13, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v16 = 0;
          v17 = 0;
          __p = 0;
          sub_100034C50(&__p, v18, v19, v19 - v18);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1174405120;
          v13[2] = sub_10120EE40;
          v13[3] = &unk_101F1C1A0;
          v13[4] = v5;
          v13[5] = v9;
          v14 = v11;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::getTapeEuiccInfo();
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          std::__shared_weak_count::__release_weak(v11);
          if (v18)
          {
            v19 = v18;
            operator delete(v18);
          }
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [1a] Paused", v13, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101217FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v22);
  if (a20)
  {
    operator delete(a20);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_101218058(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [1b] Sending to SIM", v13, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1174405120;
          v13[2] = sub_10120F830;
          v13[3] = &unk_101F1C200;
          v13[4] = v5;
          v13[5] = v9;
          v14 = v11;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeGetRulesAuthTable();
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          std::__shared_weak_count::__release_weak(v11);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [1b] Paused", v13, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101218214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_101218244(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [1c] Sending to baseband", v13, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1174405120;
          v13[2] = sub_10120FE7C;
          v13[3] = &unk_101F1C260;
          v13[4] = v5;
          v13[5] = v9;
          v14 = v11;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeGetDeviceCapabilities();
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          std::__shared_weak_count::__release_weak(v11);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [1c] Paused", v13, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1012183FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_10121842C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          LOWORD(v13[0]) = 11967;
          BYTE2(v13[0]) = 0;
          v19 = 0;
          v20 = 0;
          v18 = 0;
          sub_1000DCF88(&v18, v13, v13 + 3, 3);
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [2] Sending to SIM", v13, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v16 = 0;
          v17 = 0;
          __p = 0;
          sub_100034C50(&__p, v18, v19, v19 - v18);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1174405120;
          v13[2] = sub_1012104D8;
          v13[3] = &unk_101F1C2C0;
          v13[4] = v5;
          v13[5] = v9;
          v14 = v11;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::getTapeEuiccChallenge();
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          std::__shared_weak_count::__release_weak(v11);
          if (v18)
          {
            v19 = v18;
            operator delete(v18);
          }
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [2] Paused", v13, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101218668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v22);
  if (a20)
  {
    operator delete(a20);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_1012186CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        if (sub_1010F63D8(v5 + 616, &v36))
        {
          sub_10120D270(v5, "TapeInitAuthReq");
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [3] Starting", buf, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v33 = 0;
          v34 = 0;
          v35 = 0;
          sub_10172A4C8(v5, &v33);
          (*(**(v5 + 88) + 72))(&v31);
          v32 = v31;
          v31 = 0uLL;
          std::operator+<char>();
          v7 = *(v5 + 280);
          v29 = *(v5 + 272);
          v30 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10172A670(&v32, "/gsma/rsp2/es9plus/initiateAuthentication", buf, &v36, (v5 + 56), &v33, &v29, __p);
          v8 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v9 = *(v5 + 280);
          *(v5 + 272) = v8;
          if (v9)
          {
            sub_100004A34(v9);
            if (__p[1])
            {
              sub_100004A34(__p[1]);
            }
          }

          if (v30)
          {
            sub_100004A34(v30);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(*buf);
          }

          if (*(&v32 + 1))
          {
            sub_100004A34(*(&v32 + 1));
          }

          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v10 = *(v5 + 272);
          sub_10006F22C(buf, (v5 + 32));
          (*(*v10 + 72))(v10, *buf);
          sub_100010250(buf);
          (*(**(v5 + 272) + 240))(*(v5 + 272), &stru_101F66F10);
          v11 = *(v5 + 48);
          if (!v11 || (v12 = *(v5 + 40), (v13 = std::__shared_weak_count::lock(v11)) == 0))
          {
            sub_100013CC4();
          }

          v14 = v13;
          p_shared_weak_owners = &v13->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          v16 = *(v5 + 272);
          *buf = _NSConcreteStackBlock;
          v23 = 1174405120;
          v24 = sub_101210B44;
          v25 = &unk_101F1C2F0;
          v26 = v5;
          v27 = v12;
          v28 = v14;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          (*(*v16 + 16))(v16, buf);
          v17 = *(v5 + 272);
          sub_10000501C(__p, "");
          (*(*v17 + 40))(v17, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          std::__shared_weak_count::__release_weak(v14);
          sub_1000DD0AC(&v33, v34);
        }

        else
        {
          v18 = *(v5 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [3] Failed to encode request; Aborting", buf, 2u);
          }

          v19 = *(v5 + 120);
          buf[0] = 0;
          *&buf[4] = 0;
          sub_10121DB14(v19, buf, 1);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101218AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v33);
  sub_1000DD0AC(v34 - 112, *(v34 - 104));
  v36 = *(v34 - 88);
  if (v36)
  {
    *(v34 - 80) = v36;
    operator delete(v36);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_101218B94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          std::string::operator=((v5 + 808), (*(v5 + 568) + 48));
          if (sub_1010FD344(v5 + 688, &v20))
          {
            sub_10120D270(v5, "TapeAuthServerReq");
            v7 = *(v5 + 72);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v15[0]) = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [4] Sending to SIM", v15, 2u);
            }

            CTStopwatch::start((v5 + 536));
            v8 = *(v5 + 48);
            if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
            {
              sub_100013CC4();
            }

            v11 = v10;
            p_shared_weak_owners = &v10->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v10);
            v18 = 0;
            v19 = 0;
            __p = 0;
            sub_100034C50(&__p, v20, v21, v21 - v20);
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 1174405120;
            v15[2] = sub_101211010;
            v15[3] = &unk_101F1C350;
            v15[4] = v5;
            v15[5] = v9;
            v16 = v11;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            VinylCommandDriver::tapeAuthenticateServer();
            if (__p)
            {
              v18 = __p;
              operator delete(__p);
            }

            if (v16)
            {
              std::__shared_weak_count::__release_weak(v16);
            }

            std::__shared_weak_count::__release_weak(v11);
          }

          else
          {
            v13 = *(v5 + 72);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v15[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[4] Cannot encode request; Aborting", v15, 2u);
            }

            v14 = *(v5 + 120);
            LOBYTE(v15[0]) = 0;
            HIDWORD(v15[0]) = 0;
            sub_10121DB14(v14, v15, 1);
          }

          if (v20)
          {
            v21 = v20;
            operator delete(v20);
          }
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [4] Paused", v15, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101218E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v22);
  if (a20)
  {
    operator delete(a20);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_101218E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        if (sub_1010F75D0((v5 + 584), v5 + 896, &v36))
        {
          sub_10120D270(v5, "TapeAuthClientReq");
          v6 = *(v5 + 72);
          *(v5 + 162) = 0;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [5] Starting", buf, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v33 = 0;
          v34 = 0;
          v35 = 0;
          sub_10172A4C8(v5, &v33);
          (*(**(v5 + 88) + 72))(&v31);
          v32 = v31;
          v31 = 0uLL;
          std::operator+<char>();
          v7 = *(v5 + 280);
          v29 = *(v5 + 272);
          v30 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10172A670(&v32, "/gsma/rsp2/es9plus/authenticateClient", buf, &v36, (v5 + 56), &v33, &v29, __p);
          v8 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v9 = *(v5 + 280);
          *(v5 + 272) = v8;
          if (v9)
          {
            sub_100004A34(v9);
            if (__p[1])
            {
              sub_100004A34(__p[1]);
            }
          }

          if (v30)
          {
            sub_100004A34(v30);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(*buf);
          }

          if (*(&v32 + 1))
          {
            sub_100004A34(*(&v32 + 1));
          }

          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v10 = *(v5 + 272);
          sub_10006F22C(buf, (v5 + 32));
          (*(*v10 + 72))(v10, *buf);
          sub_100010250(buf);
          (*(**(v5 + 272) + 240))(*(v5 + 272), &stru_101F66F10);
          v11 = *(v5 + 48);
          if (!v11 || (v12 = *(v5 + 40), (v13 = std::__shared_weak_count::lock(v11)) == 0))
          {
            sub_100013CC4();
          }

          v14 = v13;
          p_shared_weak_owners = &v13->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          v16 = *(v5 + 272);
          *buf = _NSConcreteStackBlock;
          v23 = 1174405120;
          v24 = sub_101211714;
          v25 = &unk_101F1C380;
          v26 = v5;
          v27 = v12;
          v28 = v14;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          (*(*v16 + 16))(v16, buf);
          v17 = *(v5 + 272);
          sub_10000501C(__p, "");
          (*(*v17 + 40))(v17, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          std::__shared_weak_count::__release_weak(v14);
          sub_1000DD0AC(&v33, v34);
        }

        else
        {
          v18 = *(v5 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [5] Failed to encode request; Aborting", buf, 2u);
          }

          v19 = *(v5 + 120);
          buf[0] = 0;
          *&buf[4] = 0;
          sub_10121DB14(v19, buf, 1);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101219298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v33);
  sub_1000DD0AC(v34 - 112, *(v34 - 104));
  v36 = *(v34 - 88);
  if (v36)
  {
    *(v34 - 80) = v36;
    operator delete(v36);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10121936C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if (*(v5 + 162) != 1)
        {
          goto LABEL_9;
        }

        v6 = *(v5 + 568);
        if (*(v6 + 144) == 1)
        {
          v7 = *(v6 + 95);
          if (v7 < 0)
          {
            v7 = *(v6 + 80);
          }

          if (!v7)
          {
LABEL_9:
            v8 = *(v5 + 72);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v16[0]) = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [?] User consent requested", v16, 2u);
            }

            sub_10120D850(v5);
            v9 = *(v5 + 48);
            if (!v9 || (v10 = *(v5 + 40), (v11 = std::__shared_weak_count::lock(v9)) == 0))
            {
              sub_100013CC4();
            }

            v12 = v11;
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v11);
            (*(**(v5 + 88) + 72))(&v22);
            Registry::getTimerService(&v24, v22);
            v13 = v24;
            sub_10000501C(__p, "TapeInstallOperation");
            v14 = *(v5 + 56);
            object = v14;
            if (v14)
            {
              dispatch_retain(v14);
            }

            v16[0] = _NSConcreteStackBlock;
            v16[1] = 1174405120;
            v16[2] = sub_10121217C;
            v16[3] = &unk_101F1C3B0;
            v16[4] = v5;
            v16[5] = v10;
            v17 = v12;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            aBlock = _Block_copy(v16);
            sub_100D23364(v13, __p, 1, 240000000, &object, &aBlock);
            sub_10039C50C((v5 + 136), &v26);
            v15 = v26;
            v26 = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (object)
            {
              dispatch_release(object);
            }

            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            if (v25)
            {
              sub_100004A34(v25);
            }

            if (v23)
            {
              sub_100004A34(v23);
            }

            if (v17)
            {
              std::__shared_weak_count::__release_weak(v17);
            }

            std::__shared_weak_count::__release_weak(v12);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101219604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v28 = *(v26 - 56);
  *(v26 - 56) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v26 - 64);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v26 - 80);
  if (v30)
  {
    sub_100004A34(v30);
  }

  std::__shared_weak_count::__release_weak(v25);
  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

void sub_1012196CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (capabilities::euicc::supportsEOS(v3))
    {
      (*(**(v5 + 88) + 72))(&valuePtr);
      ServiceMap = Registry::getServiceMap(valuePtr);
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
      *&__dst = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, &__dst);
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
          goto LABEL_15;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
LABEL_15:
      if (*(&valuePtr + 1))
      {
        sub_100004A34(*(&valuePtr + 1));
      }

      if (!v14)
      {
        v18 = *(v5 + 72);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LOWORD(valuePtr) = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing controller - allow", &valuePtr, 2u);
        }

        sub_101216EAC(*(v5 + 120), &valuePtr, 1);
        if (v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_100004A34(v13);
        goto LABEL_26;
      }

      *v43 = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v17 = *v43;
        *v43 = Mutable;
        *&valuePtr = v17;
        sub_1000296E0(&valuePtr);
      }

      if (*(v5 + 1159) < 0)
      {
        sub_100005F2C(__p, *(v5 + 1136), *(v5 + 1144));
      }

      else
      {
        *__p = *(v5 + 1136);
        v42 = *(v5 + 1152);
      }

      if (SHIBYTE(v42) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v46 = v42;
      }

      v35[0] = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v46;
      }

      v37[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v19 = v35[0];
        v35[0] = v37[0];
        v39[0] = v19;
        sub_100005978(v39);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v32[0] = v35[0];
      v35[0] = 0;
      sub_100005978(v35);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      sub_1001768B8(*v43, @"mcc", v32[0]);
      sub_100005978(v32);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v5 + 1183) < 0)
      {
        sub_100005F2C(v39, *(v5 + 1160), *(v5 + 1168));
      }

      else
      {
        *v39 = *(v5 + 1160);
        v40 = *(v5 + 1176);
      }

      if (SHIBYTE(v40) < 0)
      {
        sub_100005F2C(&__dst, v39[0], v39[1]);
      }

      else
      {
        __dst = *v39;
        v46 = v40;
      }

      v32[0] = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v46;
      }

      v35[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v20 = v32[0];
        v32[0] = v35[0];
        v37[0] = v20;
        sub_100005978(v37);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v48 = v32[0];
      v32[0] = 0;
      sub_100005978(v32);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      sub_1001768B8(*v43, @"mnc", v48);
      sub_100005978(&v48);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (*(v5 + 1079) < 0)
      {
        sub_100005F2C(v37, *(v5 + 1056), *(v5 + 1064));
      }

      else
      {
        *v37 = *(v5 + 1056);
        v38 = *(v5 + 1072);
      }

      if (SHIBYTE(v38) < 0)
      {
        sub_100005F2C(&__dst, v37[0], v37[1]);
      }

      else
      {
        __dst = *v37;
        v46 = v38;
      }

      v48 = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v46;
      }

      v32[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v21 = v48;
        v48 = v32[0];
        v35[0] = v21;
        sub_100005978(v35);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v47 = v48;
      v48 = 0;
      sub_100005978(&v48);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      sub_1001768B8(*v43, @"iccid", v47);
      sub_100005978(&v47);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }

      v22 = (v5 + 1184);
      if (*(v5 + 1207) < 0)
      {
        v23 = *(v5 + 1192);
        if (!v23)
        {
          goto LABEL_97;
        }

        sub_100005F2C(v35, *v22, v23);
      }

      else
      {
        if (!*(v5 + 1207))
        {
          goto LABEL_97;
        }

        *v35 = *v22;
        v36 = *(v5 + 1200);
      }

      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&__dst, v35[0], v35[1]);
      }

      else
      {
        __dst = *v35;
        v46 = v36;
      }

      v47 = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v46;
      }

      v48 = 0;
      if (ctu::cf::convert_copy())
      {
        v24 = v47;
        v47 = v48;
        v32[0] = v24;
        sub_100005978(v32);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v47;
      v47 = 0;
      sub_100005978(&v47);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      sub_1001768B8(*v43, @"gid1", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }

LABEL_97:
      v25 = (v5 + 1208);
      if (*(v5 + 1231) < 0)
      {
        v26 = *(v5 + 1216);
        if (!v26)
        {
          goto LABEL_116;
        }

        sub_100005F2C(v32, *v25, v26);
      }

      else
      {
        if (!*(v5 + 1231))
        {
          goto LABEL_116;
        }

        *v32 = *v25;
        v33 = *(v5 + 1224);
      }

      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(&__dst, v32[0], v32[1]);
      }

      else
      {
        __dst = *v32;
        v46 = v33;
      }

      v44 = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v46;
      }

      v47 = 0;
      if (ctu::cf::convert_copy())
      {
        v27 = v44;
        v44 = v47;
        v48 = v27;
        sub_100005978(&v48);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v28 = v44;
      v34 = v44;
      v44 = 0;
      sub_100005978(&v44);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      sub_1001768B8(*v43, @"gid2", v28);
      sub_100005978(&v34);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }

LABEL_116:
      v29 = *(v5 + 1288) - *(v5 + 1280);
      *&__dst = 0;
      *&valuePtr = v29;
      v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
      if (v30)
      {
        *&__dst = v30;
        *&valuePtr = 0;
        sub_100029A48(&valuePtr);
        v31 = __dst;
      }

      else
      {
        v31 = 0;
      }

      v48 = v31;
      *&__dst = 0;
      sub_100029A48(&__dst);
      sub_100209DF4(*v43, @"profileSize", v31);
      sub_100029A48(&v48);
      sub_100010180(&__dst, v43);
      *&valuePtr = off_101F1CCF0;
      *(&valuePtr + 1) = v5;
      p_valuePtr = &valuePtr;
      (*(*v14 + 56))(v14, &__dst, &valuePtr);
      sub_10000FF50(&valuePtr);
      sub_10001021C(&__dst);
      sub_1000296E0(v43);
      if (v15)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_101216EAC(*(v5 + 120), &valuePtr, 1);
  }

LABEL_26:

  sub_100004A34(v4);
}

void sub_101219FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, const void *a44, const void *a45)
{
  sub_100005978(&a45);
  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a44);
  if ((v47 & 1) == 0)
  {
    sub_100004A34(v46);
  }

  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

void sub_10121A238(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [11] Sending to SIM", v13, 2u);
          }

          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 1174405120;
          v13[2] = sub_10121228C;
          v13[3] = &unk_101F1C410;
          v13[4] = v5;
          v13[5] = v9;
          v14 = v11;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeResetMemory();
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          std::__shared_weak_count::__release_weak(v11);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [11] Paused", v13, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121A3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_10121A41C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          if (*(v5 + 992) != *(v5 + 1000))
          {
            goto LABEL_10;
          }

          v15 = *(v5 + 568);
          v16 = *(v15 + 95);
          if (v16 < 0)
          {
            v16 = *(v15 + 80);
          }

          if (v16 && (sub_1010F97AC(v5 + 584, (v15 + 72), v5 + 944) & 1) == 0)
          {
            v17 = *(v5 + 72);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v19[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[6] Failed to hash the confirmation code; aborting", v19, 2u);
            }

            v18 = *(v5 + 120);
            LOBYTE(v19[0]) = 0;
            HIDWORD(v19[0]) = 0;
            sub_10121DB14(v18, v19, 1);
          }

          else
          {
LABEL_10:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            if (sub_1010FE1FC((v5 + 944), &v24))
            {
              sub_10120D270(v5, "TapePrepareDownloadReq");
              v7 = *(v5 + 72);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v19[0]) = 0;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [6] Sending to SIM", v19, 2u);
              }

              CTStopwatch::start((v5 + 536));
              *(v5 + 154) = 0;
              v8 = *(v5 + 48);
              if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
              {
                sub_100013CC4();
              }

              v11 = v10;
              p_shared_weak_owners = &v10->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v10);
              v22 = 0;
              v23 = 0;
              __p = 0;
              sub_100034C50(&__p, v24, v25, v25 - v24);
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 1174405120;
              v19[2] = sub_1012128B8;
              v19[3] = &unk_101F1C470;
              v19[4] = v5;
              v19[5] = v9;
              v20 = v11;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              VinylCommandDriver::tapePrepareDownload();
              if (__p)
              {
                v22 = __p;
                operator delete(__p);
              }

              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              std::__shared_weak_count::__release_weak(v11);
            }

            else
            {
              v13 = *(v5 + 72);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v19[0]) = 0;
                _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[6] Cannot encode request; aborting", v19, 2u);
              }

              v14 = *(v5 + 120);
              LOBYTE(v19[0]) = 0;
              HIDWORD(v19[0]) = 0;
              sub_10121DB14(v14, v19, 1);
            }

            if (v24)
            {
              v25 = v24;
              operator delete(v24);
            }
          }
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [6] Paused", v19, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121A7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        if (sub_1010F99B4((v5 + 584), v5 + 920, &v36))
        {
          sub_10120D270(v5, "TapeGetBoundProfile");
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7] Starting", buf, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v33 = 0;
          v34 = 0;
          v35 = 0;
          sub_10172A4C8(v5, &v33);
          (*(**(v5 + 88) + 72))(&v31);
          v32 = v31;
          v31 = 0uLL;
          std::operator+<char>();
          v7 = *(v5 + 280);
          v29 = *(v5 + 272);
          v30 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10172A670(&v32, "/gsma/rsp2/es9plus/getBoundProfilePackage", buf, &v36, (v5 + 56), &v33, &v29, __p);
          v8 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v9 = *(v5 + 280);
          *(v5 + 272) = v8;
          if (v9)
          {
            sub_100004A34(v9);
            if (__p[1])
            {
              sub_100004A34(__p[1]);
            }
          }

          if (v30)
          {
            sub_100004A34(v30);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(*buf);
          }

          if (*(&v32 + 1))
          {
            sub_100004A34(*(&v32 + 1));
          }

          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v10 = *(v5 + 272);
          sub_10006F22C(buf, (v5 + 32));
          (*(*v10 + 72))(v10, *buf);
          sub_100010250(buf);
          (*(**(v5 + 272) + 240))(*(v5 + 272), &stru_101F66F10);
          v11 = *(v5 + 48);
          if (!v11 || (v12 = *(v5 + 40), (v13 = std::__shared_weak_count::lock(v11)) == 0))
          {
            sub_100013CC4();
          }

          v14 = v13;
          p_shared_weak_owners = &v13->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          v16 = *(v5 + 272);
          *buf = _NSConcreteStackBlock;
          v23 = 1174405120;
          v24 = sub_101212FBC;
          v25 = &unk_101F1C4A0;
          v26 = v5;
          v27 = v12;
          v28 = v14;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          (*(*v16 + 16))(v16, buf);
          v17 = *(v5 + 272);
          sub_10000501C(__p, "");
          (*(*v17 + 40))(v17, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          std::__shared_weak_count::__release_weak(v14);
          sub_1000DD0AC(&v33, v34);
        }

        else
        {
          v18 = *(v5 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [7] Failed to encode request - aborting", buf, 2u);
          }

          v19 = *(v5 + 120);
          buf[0] = 0;
          *&buf[4] = 0;
          sub_10121DB14(v19, buf, 1);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121ABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v33);
  sub_1000DD0AC(v34 - 112, *(v34 - 104));
  v36 = *(v34 - 88);
  if (v36)
  {
    *(v34 - 80) = v36;
    operator delete(v36);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10121AC80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7a] Starting", buf, 2u);
    }

    v7 = *(v5 + 568);
    if (*(v7 + 263) < 0)
    {
      v8 = *(v7 + 248);
      if (v8)
      {
        memset(buf, 0, sizeof(buf));
        v33 = 0;
        sub_100005F2C(buf, *(v7 + 240), v8);
        goto LABEL_12;
      }
    }

    else if (*(v7 + 263))
    {
      *buf = *(v7 + 240);
      v33 = *(v7 + 256);
LABEL_12:
      v9 = *(v5 + 224);
      v10 = *(v5 + 232);
      if (v9 != v10)
      {
        if (v33 >= 0)
        {
          v11 = HIBYTE(v33);
        }

        else
        {
          v11 = *&buf[8];
        }

        if (v33 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        while (1)
        {
          v13 = *(v9 + 39);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v9 + 24);
          }

          if (v13 == v11)
          {
            v15 = v14 >= 0 ? (v9 + 16) : *(v9 + 16);
            if (!memcmp(v15, v12, v11))
            {
              break;
            }
          }

          v9 += 216;
          if (v9 == v10)
          {
            v16 = *(v5 + 72);
            goto LABEL_45;
          }
        }
      }

      v16 = *(v5 + 72);
      if (v9 == v10)
      {
LABEL_45:
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v5 + 568);
          v27 = (v26 + 240);
          if (*(v26 + 263) < 0)
          {
            v27 = *v27;
          }

          LODWORD(v34) = 136315138;
          *(&v34 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [7a] Iccid = %s does not exist, will go through normal install without disable and delete flow", &v34, 0xCu);
        }

        sub_101220FF4(*(v5 + 120), &v34, 1);
      }

      else
      {
        if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [7a] Iccid to disable found", &v34, 2u);
          v16 = *(v5 + 72);
        }

        v18 = *(v9 + 90);
        v19 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v18 == 1)
        {
          if (v19)
          {
            LOWORD(v34) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [7a] Encoding Disable profile", &v34, 2u);
          }

          v34 = 0uLL;
          v35 = 0;
          v20 = sub_1011005CC(buf, 0, 0, &v34);
          v21 = *(v5 + 72);
          if (v20)
          {
            if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_DEFAULT))
            {
              *v31 = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I [7a] Disabling profile", v31, 2u);
            }

            v22 = *(v5 + 48);
            if (!v22 || (v23 = std::__shared_weak_count::lock(v22)) == 0)
            {
              sub_100013CC4();
            }

            v24 = v23;
            p_shared_weak_owners = &v23->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v23);
            v29 = 0;
            v30 = 0;
            __p = 0;
            sub_100034C50(&__p, v34, *(&v34 + 1), *(&v34 + 1) - v34);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            VinylCommandDriver::disableTapeProfile();
            if (__p)
            {
              v29 = __p;
              operator delete(__p);
            }

            std::__shared_weak_count::__release_weak(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          else
          {
            if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
            {
              *v31 = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[7a] encodeTapeProfileSelectReq error; Cancelling session", v31, 2u);
            }

            *(v5 + 608) = 5;
            sub_10121FE80(*(v5 + 120), v31, 1);
          }

          if (v34)
          {
            *(&v34 + 1) = v34;
            operator delete(v34);
          }
        }

        else
        {
          if (v19)
          {
            LOWORD(v34) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [7a] Profile already disabled", &v34, 2u);
          }

          sub_101221428(*(v5 + 120), &v34, 1);
        }
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_60;
    }

    v17 = *(v5 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [7a] Iccid to disable is empty, will go through normal install without disable and delete flow", buf, 2u);
    }

    sub_101220FF4(*(v5 + 120), buf, 1);
  }

LABEL_60:

  sub_100004A34(v4);
}

void sub_10121B180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v27);
  v30 = *(v28 - 96);
  if (v30)
  {
    *(v28 - 88) = v30;
    operator delete(v30);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_10121B204(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [12] Starting", buf, 2u);
    }

    v7 = *(v5 + 568);
    if (*(v7 + 263) < 0)
    {
      v8 = *(v7 + 248);
      if (v8)
      {
        memset(buf, 0, sizeof(buf));
        v33 = 0;
        sub_100005F2C(buf, *(v7 + 240), v8);
LABEL_12:
        v9 = *(v5 + 224);
        v10 = *(v5 + 232);
        if (v9 != v10)
        {
          if (v33 >= 0)
          {
            v11 = HIBYTE(v33);
          }

          else
          {
            v11 = *&buf[8];
          }

          if (v33 >= 0)
          {
            v12 = buf;
          }

          else
          {
            v12 = *buf;
          }

          while (1)
          {
            v13 = *(v9 + 39);
            v14 = v13;
            if ((v13 & 0x80u) != 0)
            {
              v13 = *(v9 + 24);
            }

            if (v13 == v11)
            {
              v15 = v14 >= 0 ? (v9 + 16) : *(v9 + 16);
              if (!memcmp(v15, v12, v11))
              {
                break;
              }
            }

            v9 += 216;
            if (v9 == v10)
            {
              v16 = *(v5 + 72);
              goto LABEL_36;
            }
          }
        }

        v16 = *(v5 + 72);
        if (v9 == v10)
        {
LABEL_36:
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(v5 + 568);
            v21 = (v20 + 240);
            if (*(v20 + 263) < 0)
            {
              v21 = *v21;
            }

            LODWORD(v34) = 136315138;
            *(&v34 + 4) = v21;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [12] Iccid = %s does not exist, will not enable", &v34, 0xCu);
          }
        }

        else
        {
          v18 = *(v9 + 90);
          v19 = os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_DEFAULT);
          if ((v18 & 1) == 0)
          {
            if (v19)
            {
              LOWORD(v34) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [12] Encoding Enable profile", &v34, 2u);
            }

            v34 = 0uLL;
            v35 = 0;
            v22 = sub_1011005CC(buf, 1, 0, &v34);
            v23 = *(v5 + 72);
            if (v22)
            {
              if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_DEFAULT))
              {
                *v31 = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [12] Enabling profile", v31, 2u);
              }

              v24 = *(v5 + 48);
              if (!v24 || (v25 = std::__shared_weak_count::lock(v24)) == 0)
              {
                sub_100013CC4();
              }

              v26 = v25;
              p_shared_weak_owners = &v25->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v25);
              v29 = 0;
              v30 = 0;
              __p = 0;
              sub_100034C50(&__p, v34, *(&v34 + 1), *(&v34 + 1) - v34);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              VinylCommandDriver::enableTapeProfile();
              if (__p)
              {
                v29 = __p;
                operator delete(__p);
              }

              std::__shared_weak_count::__release_weak(v26);
              std::__shared_weak_count::__release_weak(v26);
            }

            else
            {
              if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR))
              {
                *v31 = 0;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[12] encodeTapeProfileSelectReq error", v31, 2u);
              }

              sub_1012220D8(*(v5 + 120), v31, 1);
            }

            if (v34)
            {
              *(&v34 + 1) = v34;
              operator delete(v34);
            }

            goto LABEL_41;
          }

          if (v19)
          {
            LOWORD(v34) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [12] Profile already enabled", &v34, 2u);
          }
        }

        sub_1012220D8(*(v5 + 120), &v34, 1);
LABEL_41:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_43;
      }
    }

    else if (*(v7 + 263))
    {
      *buf = *(v7 + 240);
      v33 = *(v7 + 256);
      goto LABEL_12;
    }

    v17 = *(v5 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [12] Iccid to enable is empty, skipping profile eanble", buf, 2u);
    }

    sub_1012220D8(*(v5 + 120), buf, 1);
  }

LABEL_43:

  sub_100004A34(v4);
}

void sub_10121B6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v27);
  v30 = *(v28 - 96);
  if (v30)
  {
    *(v28 - 88) = v30;
    operator delete(v30);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_10121B73C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7b] Starting", v15, 2u);
          v6 = *(v5 + 72);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7b] Encoding delete profile", v15, 2u);
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        v7 = *(v5 + 568);
        if (*(v7 + 263) < 0)
        {
          sub_100005F2C(__p, *(v7 + 240), *(v7 + 248));
        }

        else
        {
          *__p = *(v7 + 240);
          v21 = *(v7 + 256);
        }

        v8 = sub_101100CD8(__p, &v22);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = *(v5 + 72);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15[0]) = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [7b] Deleting profile", v15, 2u);
          }

          v10 = *(v5 + 48);
          if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
          {
            sub_100013CC4();
          }

          v13 = v12;
          p_shared_weak_owners = &v12->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v12);
          v18 = 0;
          v19 = 0;
          v17 = 0;
          sub_100034C50(&v17, v22, v23, v23 - v22);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 1174405120;
          v15[2] = sub_1012138EC;
          v15[3] = &unk_101F1C560;
          v15[4] = v5;
          v15[5] = v11;
          v16 = v13;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::deleteTapeProfile();
          if (v17)
          {
            v18 = v17;
            operator delete(v17);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          std::__shared_weak_count::__release_weak(v13);
        }

        else
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v15[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[7b] encodeTapeDeleteProfileReq error; Cancelling session", v15, 2u);
          }

          *(v5 + 608) = 5;
          sub_10121FE80(*(v5 + 120), v15, 1);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121BA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 88);
  if (v27)
  {
    *(v25 - 80) = v27;
    operator delete(v27);
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

void sub_10121BA8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = v5[9];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7c] Starting", v12, 2u);
        }

        v7 = v5[6];
        if (!v7 || (v8 = v5[5], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        p_shared_weak_owners = &v9->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1174405120;
        v12[2] = sub_101213C40;
        v12[3] = &unk_101F1C5C0;
        v12[4] = v5;
        v12[5] = v8;
        v13 = v10;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        VinylCommandDriver::tapeListNotifications();
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        std::__shared_weak_count::__release_weak(v10);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121BBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_10121BC1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7d] Starting", v12, 2u);
        }

        v7 = *(v5 + 48);
        if (!v7 || (v8 = *(v5 + 40), (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        v17 = 0;
        v18 = 0;
        v19 = 0;
        if (sub_101102290((v5 + 1360), &v17))
        {
          sub_10120D270(v5, "DeleteNotificationReq");
          v15 = 0;
          v16 = 0;
          __p = 0;
          sub_100034C50(&__p, v17, v18, v18 - v17);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 1174405120;
          v12[2] = sub_101214354;
          v12[3] = &unk_101F1C620;
          v12[4] = v5;
          v12[5] = v8;
          v13 = v10;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeDeleteNotification();
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_weak(v13);
          }
        }

        else
        {
          v11 = *(v5 + 72);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v12[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[7d] Could not encode; Cancelling session", v12, 2u);
          }

          *(v5 + 608) = 5;
          sub_10121FE80(*(v5 + 120), v12, 1);
        }

        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        std::__shared_weak_count::__release_weak(v10);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121BE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  std::__shared_weak_count::__release_weak(v19);
  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10121BEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          if ((*(*(v5 + 568) + 145) & 1) == 0)
          {
            v7 = *(v5 + 88);
            __p = 0;
            v15 = 0;
            v16 = 0;
            sub_100034C50(&__p, *(v5 + 1280), *(v5 + 1288), *(v5 + 1288) - *(v5 + 1280));
            LOBYTE(v17) = 1;
            (*(*v7 + 32))(v7, &__p);
            if (v17 == 1)
            {
              if (__p)
              {
                v15 = __p;
                operator delete(__p);
              }
            }
          }

          sub_10120D270(v5, "TapeBoundProfile");
          v8 = *(v5 + 72);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [8] Sending package to SIM", &__p, 2u);
          }

          CTStopwatch::start((v5 + 536));
          v9 = *(v5 + 48);
          if (!v9 || (v10 = *(v5 + 40), (v11 = std::__shared_weak_count::lock(v9)) == 0))
          {
            sub_100013CC4();
          }

          v12 = v11;
          p_shared_weak_owners = &v11->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
          v22 = 0;
          v23 = 0;
          v21 = 0;
          sub_100034C50(&v21, *(v5 + 1280), *(v5 + 1288), *(v5 + 1288) - *(v5 + 1280));
          __p = _NSConcreteStackBlock;
          v15 = 1174405120;
          v16 = sub_101214AA0;
          v17 = &unk_101F1C6E0;
          v18 = v5;
          v19 = v10;
          v20 = v12;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeLoadBoundProfilePackage();
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_weak(v20);
          }

          std::__shared_weak_count::__release_weak(v12);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [8] Paused", &__p, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121C140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17)
{
  if (a12 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10121C1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v7 = *(v5 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [9] Listing profiles", v14, 2u);
          }

          v8 = *(v5 + 48);
          if (!v8 || (v9 = *(v5 + 40), (v10 = std::__shared_weak_count::lock(v8)) == 0))
          {
            sub_100013CC4();
          }

          v11 = v10;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v13 = capabilities::ct::supportsHydra(v12);
          sub_1010FA3A0(&v19, v13);
          v17 = 0;
          v18 = 0;
          __p = 0;
          sub_100034C50(&__p, v19, v20, v20 - v19);
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 1174405120;
          v14[2] = sub_1012152EC;
          v14[3] = &unk_101F1C740;
          v14[4] = v5;
          v14[5] = v9;
          v15 = v11;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeListProfilesInfo();
          if (__p)
          {
            v17 = __p;
            operator delete(__p);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
          }

          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }

          std::__shared_weak_count::__release_weak(v11);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14[0]) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [9] Paused", v14, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  std::__shared_weak_count::__release_weak(v19);
  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10121C41C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          if (sub_1010FF5B4(v5 + 584, *(v5 + 608), &v19))
          {
            sub_10120D270(v5, "TapeCancelSessionReq");
            v7 = *(v5 + 72);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = asString();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v8;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [10] Sending to SIM - reason: %s", &buf, 0xCu);
            }

            v9 = *(v5 + 48);
            if (!v9 || (v10 = *(v5 + 40), (v11 = std::__shared_weak_count::lock(v9)) == 0))
            {
              sub_100013CC4();
            }

            v12 = v11;
            p_shared_weak_owners = &v11->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v11);
            v17 = 0;
            v18 = 0;
            __p = 0;
            sub_100034C50(&__p, v19, v20, v20 - v19);
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 1174405120;
            v23 = sub_1012157E0;
            v24 = &unk_101F1C7A0;
            v25 = v5;
            v26 = v10;
            v27 = v12;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            VinylCommandDriver::tapeCancelSession();
            if (__p)
            {
              v17 = __p;
              operator delete(__p);
            }

            if (v27)
            {
              std::__shared_weak_count::__release_weak(v27);
            }

            std::__shared_weak_count::__release_weak(v12);
          }

          else
          {
            v14 = *(v5 + 72);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[10] Cannot encode request; aborting", &buf, 2u);
            }

            v15 = *(v5 + 120);
            LOBYTE(buf) = 0;
            DWORD1(buf) = 0;
            sub_10121DB14(v15, &buf, 1);
          }

          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [10] Paused", &buf, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121C708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_10121C76C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        if (sub_1010F9EF0((v5 + 584), v5 + 1328, &v36))
        {
          sub_10120D270(v5, "TapeCancelSessionServerReq");
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [11] Starting", buf, 2u);
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          sub_10172A4C8(v5, &v33);
          (*(**(v5 + 88) + 72))(&v31);
          v32 = v31;
          v31 = 0uLL;
          std::operator+<char>();
          v7 = *(v5 + 280);
          v29 = *(v5 + 272);
          v30 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10172A670(&v32, "/gsma/rsp2/es9plus/cancelSession", buf, &v36, (v5 + 56), &v33, &v29, __p);
          v8 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v9 = *(v5 + 280);
          *(v5 + 272) = v8;
          if (v9)
          {
            sub_100004A34(v9);
            if (__p[1])
            {
              sub_100004A34(__p[1]);
            }
          }

          if (v30)
          {
            sub_100004A34(v30);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(*buf);
          }

          if (*(&v32 + 1))
          {
            sub_100004A34(*(&v32 + 1));
          }

          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v10 = *(v5 + 272);
          sub_10006F22C(buf, (v5 + 32));
          (*(*v10 + 72))(v10, *buf);
          sub_100010250(buf);
          (*(**(v5 + 272) + 240))(*(v5 + 272), &stru_101F66F10);
          v11 = *(v5 + 48);
          if (!v11 || (v12 = *(v5 + 40), (v13 = std::__shared_weak_count::lock(v11)) == 0))
          {
            sub_100013CC4();
          }

          v14 = v13;
          p_shared_weak_owners = &v13->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          v16 = *(v5 + 272);
          *buf = _NSConcreteStackBlock;
          v23 = 1174405120;
          v24 = sub_101215EA8;
          v25 = &unk_101F1C7D0;
          v26 = v5;
          v27 = v12;
          v28 = v14;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          (*(*v16 + 16))(v16, buf);
          v17 = *(v5 + 272);
          sub_10000501C(__p, "");
          (*(*v17 + 40))(v17, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          std::__shared_weak_count::__release_weak(v14);
          sub_1000DD0AC(&v33, v34);
        }

        else
        {
          v18 = *(v5 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [11] Failed to encode request - aborting", buf, 2u);
          }

          v19 = *(v5 + 120);
          buf[0] = 0;
          *&buf[4] = 0;
          sub_10121DB14(v19, buf, 1);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121CB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v33);
  sub_1000DD0AC(v34 - 112, *(v34 - 104));
  v36 = *(v34 - 88);
  if (v36)
  {
    *(v34 - 80) = v36;
    operator delete(v36);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10121CC30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 153) & 1) != 0 || *(v5 + 152) != 1)
        {
          *v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          *buf = 0u;
          (*(**(v5 + 88) + 24))(*(v5 + 88), v5 + 1280);
          __p = 0;
          v25 = 0;
          v26 = 0;
          sub_100034C50(&__p, *(v5 + 1280), *(v5 + 1288), *(v5 + 1288) - *(v5 + 1280));
          v7 = sub_1010FEA74(&__p, v5 + 584);
          if (__p)
          {
            v25 = __p;
            operator delete(__p);
          }

          v8 = *(v5 + 72);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              LOWORD(v17) = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [1+] Sending to SIM", &v17, 2u);
            }

            v10 = *(v5 + 48);
            if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
            {
              sub_100013CC4();
            }

            v13 = v12;
            p_shared_weak_owners = &v12->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v12);
            v17 = _NSConcreteStackBlock;
            v18 = 1174405120;
            v19 = sub_1012160A8;
            v20 = &unk_101F1C830;
            v21 = v5;
            v22 = v11;
            v23 = v13;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            VinylCommandDriver::getSessionData();
            if (v23)
            {
              std::__shared_weak_count::__release_weak(v23);
            }

            std::__shared_weak_count::__release_weak(v13);
          }

          else
          {
            if (v9)
            {
              LOWORD(v17) = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [1+] Bad profile package; clearing", &v17, 2u);
            }

            v15 = *(v5 + 88);
            LOBYTE(v17) = 0;
            LOBYTE(v20) = 0;
            (*(*v15 + 32))(v15, &v17);
            if (v20 == 1 && v17)
            {
              v18 = v17;
              operator delete(v17);
            }

            v16 = *(v5 + 120);
            LOBYTE(v17) = 0;
            HIDWORD(v17) = 0;
            sub_10121DB14(v16, &v17, 1);
          }

          if (v40[1])
          {
            *&v41 = v40[1];
            operator delete(v40[1]);
          }

          sub_100E3A5D4(buf);
        }

        else
        {
          v6 = *(v5 + 72);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [1+] Paused", buf, 2u);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10121CF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v20);
  sub_10121354C(&a19);
  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

void sub_10121CFF0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        sub_10120D974(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

uint64_t sub_10121D094(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(*(v4 + 568) + 145);
    }

    else
    {
      v5 = 0;
    }

    sub_100004A34(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10121D0EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(v4 + 160);
    }

    else
    {
      v5 = 0;
    }

    sub_100004A34(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10121D140(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (!v4)
      {
        goto LABEL_19;
      }

      if (*(v4 + 1132))
      {
        v5 = 1;
      }

      else
      {
        v5 = *(v4 + 1131);
      }

      v7 = *(v4 + 568);
      v8 = (v7 + 216);
      v9 = *(v7 + 239);
      if (v9 < 0)
      {
        if (*(v7 + 224) != 4)
        {
LABEL_14:
          if (*(v4 + 162) != 1)
          {
            goto LABEL_29;
          }

          v10 = *(v4 + 163);
          v11 = v10 > 3 || v10 == 1;
          if (v11 && *(v7 + 144) == 1)
          {
            v12 = *(v7 + 95);
            if (v12 < 0)
            {
              v12 = *(v7 + 80);
            }

            if (!v12)
            {
LABEL_29:
              if ((*(v7 + 146) | v5))
              {
                goto LABEL_30;
              }

              if (*(v7 + 144) == 1)
              {
                v13 = *(v7 + 95);
                if (v13 < 0)
                {
                  v13 = *(v7 + 80);
                }

                if (!v13)
                {
                  goto LABEL_30;
                }
              }

              if (*(v7 + 147))
              {
LABEL_30:
                v6 = 1;
              }

              else
              {
                v6 = *(v7 + 149);
              }

              goto LABEL_32;
            }
          }

LABEL_19:
          v6 = 0;
LABEL_32:
          sub_100004A34(v3);
          return v6 & 1;
        }

        v8 = *v8;
      }

      else if (v9 != 4)
      {
        goto LABEL_14;
      }

      if (*v8 == 825241653)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  v6 = 0;
  return v6 & 1;
}

BOOL sub_10121D258(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        if (*(v5 + 162) == 1)
        {
          v6 = *(v5 + 163) == 1;
LABEL_10:
          sub_100004A34(v4);
          return v6;
        }

        v7 = *(v5 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Consent has not been received yet - This is bad", v9, 2u);
        }
      }

      v6 = 0;
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t sub_10121D30C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_18;
  }

  if (*(v4 + 248) != 1 || (v6 = *(v4 + 224), v5 = *(v4 + 232), v6 == v5))
  {
    v10 = 0;
  }

  else
  {
    v7 = v6 + 216;
    do
    {
      v8 = *(v7 - 127);
      v9 = v8 != 1 || v7 == v5;
      v7 += 216;
    }

    while (!v9);
    v10 = v8 ^ 1;
  }

  if (*(v4 + 162) == 1 && *(v4 + 163) == 1)
  {
    v11 = (v10 & *(v4 + 1132));
  }

  else
  {
LABEL_18:
    v11 = 0;
  }

  sub_100004A34(v3);
  return v11;
}

BOOL sub_10121D3B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 568);
        v6 = (v5 + 216);
        v7 = *(v5 + 239);
        if ((v7 & 0x80000000) == 0)
        {
          if (v7 != 4)
          {
            goto LABEL_11;
          }

LABEL_10:
          v8 = *v6 == 825241653;
LABEL_12:
          sub_100004A34(v3);
          return v8;
        }

        if (*(v5 + 224) == 4)
        {
          v6 = *v6;
          goto LABEL_10;
        }
      }

LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_10121D448(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 568);
        v6 = (v5 + 216);
        v7 = *(v5 + 239);
        if (v7 < 0)
        {
          if (*(v5 + 224) != 4)
          {
            goto LABEL_11;
          }

          v6 = *v6;
        }

        else if (v7 != 4)
        {
          goto LABEL_11;
        }

        if (*v6 == 825241653)
        {
          v8 = *(v4 + 1384);
          goto LABEL_12;
        }
      }

LABEL_11:
      v8 = 0;
LABEL_12:
      sub_100004A34(v3);
      return v8 & 1;
    }
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_10121D4DC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 59))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121D650(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5StartEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5StartEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121D748(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121D784(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    __assert_rtn("execute", "state_machine.hpp", 524, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 200))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 0;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 184))();
    v7 = 22;
  }

  else
  {
    (*(v6 + 16))();
    v7 = 1;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_10121D86C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 84))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121D9E0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5PauseEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5PauseEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121DAD8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121DB14(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 109))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121DC8C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5AbortEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5AbortEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121DD8C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[32];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121DDC8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 23)
  {
    __assert_rtn("execute", "state_machine.hpp", 800, "state == (current_state)");
  }

  return 1;
}

uint64_t sub_10121DE04(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 22)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 22;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121DE94(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 19)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 19;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 1);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121DF24(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 18)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 18;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 1);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121DFB4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 17)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 17;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 1);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E044(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 12)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 12;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E0D4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 11)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 11;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E164(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 10)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E1F4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 9)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E284(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 8)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E314(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 7)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E3A4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 6)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E434(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 5)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 5;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E4C4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E554(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E5E4(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E674(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E704(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  (*(**(a1 + 8) + 192))(*(a1 + 8), *a4, *(a4 + 1), 0);
  *(v4 + 24) = 23;
  return 1;
}

uint64_t sub_10121E78C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 134))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121E900(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_15es10bEuiccInfo1EhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_15es10bEuiccInfo1EhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121E9F8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121EA34(uint64_t a1, int a2, int a3)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 1;
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  *(v3 + 24) = 2;
  return 1;
}

uint64_t sub_10121EAC8(uint64_t result, uint64_t a2)
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

void sub_10121EAE4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10121EAF4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 159))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121EC68(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10bRulesAuthTableEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10bRulesAuthTableEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121ED60(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121ED9C(uint64_t a1, int a2, int a3)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 2;
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  *(v3 + 24) = 3;
  return 1;
}

uint64_t sub_10121EE20(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 184))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121EF94(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20bbDeviceCapabilitiesEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20bbDeviceCapabilitiesEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121F08C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121F0C8(uint64_t a1, int a2, int a3)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 3;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_10121F14C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 209))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121F2C0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10bEuiccChallengeEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10bEuiccChallengeEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121F3B8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121F3F4(uint64_t a1, int a2, int a3)
{
  if (a3 != 11)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 11;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_10121F478(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 4;
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(v3 + 24) = 5;
  return 1;
}

uint64_t sub_10121F4FC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 234))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121F670(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_25es9InitiateAuthenticationEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_25es9InitiateAuthenticationEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121F768(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121F7A4(uint64_t a1, int a2, int a3)
{
  if (a3 != 5)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 5;
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  *(v3 + 24) = 6;
  return 1;
}

uint64_t sub_10121F828(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 259))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121F99C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_23es10bAuthenticateServerEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_23es10bAuthenticateServerEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121FA94(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121FAD0(uint64_t a1, int a2, int a3)
{
  if (a3 != 6)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 6;
  (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(v3 + 24) = 7;
  return 1;
}

uint64_t sub_10121FB54(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 284))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121FCC8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_14NoMoreProfilesEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_14NoMoreProfilesEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10121FDC0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10121FDFC(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 7;
  (*(**(a1 + 8) + 160))(*(a1 + 8));
  *(v3 + 24) = 20;
  return 1;
}

uint64_t sub_10121FE80(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 309))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10121FFF4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10bCancelSessionEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10bCancelSessionEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1012200EC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101220128(uint64_t a1, int a2, int a3)
{
  if (a3 != 17)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 17;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_1012201AC(uint64_t a1, int a2, int a3)
{
  if (a3 != 16)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 16;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_101220230(uint64_t a1, int a2, int a3)
{
  if (a3 != 15)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 15;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_1012202B4(uint64_t a1, int a2, int a3)
{
  if (a3 != 14)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 14;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_101220338(uint64_t a1, int a2, int a3)
{
  if (a3 != 13)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 13;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_1012203BC(uint64_t a1, int a2, int a3)
{
  if (a3 != 11)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 11;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_101220440(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 7;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_1012204C4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 334))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101220638(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21es9AuthenticateClientEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21es9AuthenticateClientEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101220730(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10122076C(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    __assert_rtn("execute", "state_machine.hpp", 524, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 216))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 7;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 72))();
    v7 = 8;
  }

  else
  {
    (*(v6 + 96))();
    v7 = 10;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_1012208CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F1CCF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012208F8(uint64_t a1, _BYTE *a2)
{
  v2 = *(*(a1 + 8) + 120);
  if (*a2 == 1)
  {
    return sub_101216EAC(v2, &v6, 1);
  }

  v4[0] = 5;
  v5 = 0;
  return sub_10121DB14(v2, v4, 1);
}

uint64_t sub_101220950(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10122099C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 359))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101220B10(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16es10bResetMemoryEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16es10bResetMemoryEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101220C08(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101220C44(uint64_t a1, int a2, int a3)
{
  if (a3 != 9)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 9;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_101220CC8(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 384))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101220E3C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20es10bPrepareDownloadEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20es10bPrepareDownloadEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101220F34(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101220F70(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 10;
  (*(**(a1 + 8) + 104))(*(a1 + 8));
  *(v3 + 24) = 11;
  return 1;
}

uint64_t sub_101220FF4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 409))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101221168(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_22es9BoundProfilePackageEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_22es9BoundProfilePackageEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101221260(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10122129C(uint64_t a1, int a2, int a3)
{
  if (a3 != 15)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 15;
  (*(**(a1 + 8) + 152))(*(a1 + 8));
  *(v3 + 24) = 17;
  return 1;
}

uint64_t sub_101221320(uint64_t a1, int a2, int a3)
{
  if (a3 != 13)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 13;
  (*(**(a1 + 8) + 152))(*(a1 + 8));
  *(v3 + 24) = 17;
  return 1;
}

uint64_t sub_1012213A4(uint64_t a1, int a2, int a3)
{
  if (a3 != 11)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 11;
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  *(v3 + 24) = 12;
  return 1;
}

uint64_t sub_101221428(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 434))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10122159C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10cDisableProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_19es10cDisableProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101221694(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1012216D0(uint64_t a1, int a2, int a3)
{
  if (a3 != 13)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 13;
  (*(**(a1 + 8) + 128))(*(a1 + 8));
  *(v3 + 24) = 14;
  return 1;
}

uint64_t sub_101221754(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 459))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_1012218C8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10cDeleteProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10cDeleteProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1012219C0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1012219FC(uint64_t a1, int a2, int a3)
{
  if (a3 != 14)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 14;
  (*(**(a1 + 8) + 136))(*(a1 + 8));
  *(v3 + 24) = 15;
  return 1;
}

uint64_t sub_101221A80(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 484))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101221BF4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21es10bListNotificationEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21es10bListNotificationEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101221CEC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101221D28(uint64_t a1, int a2, int a3)
{
  if (a3 != 15)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 15;
  (*(**(a1 + 8) + 144))(*(a1 + 8));
  *(v3 + 24) = 16;
  return 1;
}

uint64_t sub_101221DAC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 1))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101221F20(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_31es10bRemoveNotificationFromListEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_31es10bRemoveNotificationFromListEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101222018(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101222054(uint64_t a1, int a2, int a3)
{
  if (a3 != 16)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 16;
  (*(**(a1 + 8) + 152))(*(a1 + 8));
  *(v3 + 24) = 17;
  return 1;
}

uint64_t sub_1012220D8(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 26))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_10122224C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10cEnableProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_18es10cEnableProfileEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101222344(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101222380(uint64_t a1, int a2, int a3)
{
  if (a3 != 21)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 21;
  (*(**(a1 + 8) + 192))(*(a1 + 8), 10, 0, 0);
  *(v3 + 24) = 23;
  return 1;
}

uint64_t sub_101222418(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 17)
  {
    __assert_rtn("execute", "state_machine.hpp", 773, "state == (current_state)");
  }

  (*(**(a1 + 8) + 192))(*(a1 + 8), 4, 0, 0);
  return 1;
}

uint64_t sub_10122248C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 76))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101222600(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_25es10bProfileInstallResultEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_25es10bProfileInstallResultEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1012226F8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101222734(uint64_t a1, int a2, int a3)
{
  if (a3 != 17)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 208))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 17;
  (*(**(a1 + 8) + 192))(*(a1 + 8), 3, 0, 0);
  *(a1 + 24 + 4 * a2) = 17;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 160))();
    v7 = 20;
  }

  else
  {
    (*(v6 + 40))();
    v7 = 4;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101222864(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 101))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_1012229D8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20es10cProfileInfoListEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_20es10cProfileInfoListEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101222AD0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101222B0C(uint64_t a1, int a2, int a3)
{
  if (a3 != 20)
  {
    __assert_rtn("execute", "state_machine.hpp", 524, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 248))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 20;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 120))();
    v7 = 21;
  }

  else
  {
    (*(v6 + 192))();
    v7 = 23;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101222C08(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 126))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101222D7C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16es9CancelSessionEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16es9CancelSessionEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101222E74(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101222EB0(uint64_t a1, int a2, int a3)
{
  if (a3 != 18)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 18;
  (*(**(a1 + 8) + 176))(*(a1 + 8));
  *(v3 + 24) = 19;
  return 1;
}

uint64_t sub_101222F34(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC9DA0 + a1[1].i32[2] + 151))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_1012230A8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16bbGetSessionDataEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16bbGetSessionDataEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1012231A0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1012231DC(uint64_t a1, int a2, int a3)
{
  if (a3 != 22)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 22;
  (*(**(a1 + 8) + 152))(*(a1 + 8));
  *(v3 + 24) = 17;
  return 1;
}

void sub_101223260()
{
  if ((byte_101FC8DC8 & 1) == 0)
  {
    byte_101FC8DC8 = 1;
    qword_101FC8F88 = sub_101217210;
    qword_101FC8F78 = sub_101217210;
    qword_101FC8F48 = sub_101217210;
    unk_101FC8F50 = sub_101217210;
    qword_101FC8F38 = sub_101217210;
    unk_101FC8F40 = sub_101217210;
    qword_101FC8ED0 = sub_101217210;
    qword_101FC8F80 = sub_101217218;
    qword_101FC8F70 = sub_101217298;
    qword_101FC8F68 = sub_101217318;
    qword_101FC8F60 = sub_101217398;
    qword_101FC8F58 = sub_101217418;
    qword_101FC8F30 = sub_101217498;
    qword_101FC8F28 = sub_101217588;
    qword_101FC8F20 = sub_101217608;
    qword_101FC8F18 = sub_10121768C;
    qword_101FC8F10 = sub_10121770C;
    qword_101FC8F08 = sub_1012178D0;
    qword_101FC8F00 = sub_101217950;
    qword_101FC8EF8 = sub_1012179D4;
    qword_101FC8EF0 = sub_101217A54;
    qword_101FC8EE8 = sub_101217AD4;
    qword_101FC8EE0 = sub_101217B54;
    qword_101FC8ED8 = sub_101217BD4;
  }
}

void sub_1012233B0()
{
  if ((byte_101FC8DD0 & 1) == 0)
  {
    byte_101FC8DD0 = 1;
    qword_101FC9050 = sub_10121D77C;
    qword_101FC9048 = sub_10121D77C;
    qword_101FC9040 = sub_10121D77C;
    qword_101FC9038 = sub_10121D77C;
    qword_101FC9030 = sub_10121D77C;
    qword_101FC9028 = sub_10121D77C;
    qword_101FC9020 = sub_10121D77C;
    qword_101FC9018 = sub_10121D77C;
    qword_101FC9010 = sub_10121D77C;
    qword_101FC9008 = sub_10121D77C;
    qword_101FC9000 = sub_10121D77C;
    qword_101FC8FF8 = sub_10121D77C;
    qword_101FC8FF0 = sub_10121D77C;
    qword_101FC8FE8 = sub_10121D77C;
    qword_101FC8FE0 = sub_10121D77C;
    qword_101FC8FD8 = sub_10121D77C;
    qword_101FC8FC8 = sub_10121D77C;
    unk_101FC8FD0 = sub_10121D77C;
    qword_101FC8FB8 = sub_10121D77C;
    unk_101FC8FC0 = sub_10121D77C;
    qword_101FC8FA8 = sub_10121D77C;
    unk_101FC8FB0 = sub_10121D77C;
    qword_101FC8FA0 = sub_10121D77C;
    qword_101FC8F98 = sub_10121D784;
  }
}

void sub_10122343C()
{
  if ((byte_101FC8DD8 & 1) == 0)
  {
    byte_101FC8DD8 = 1;
    qword_101FC9118 = sub_10121DB0C;
    qword_101FC9110 = sub_10121DB0C;
    qword_101FC9108 = sub_10121DB0C;
    qword_101FC9100 = sub_10121DB0C;
    qword_101FC90F8 = sub_10121DB0C;
    qword_101FC90F0 = sub_10121DB0C;
    qword_101FC90E8 = sub_10121DB0C;
    qword_101FC90E0 = sub_10121DB0C;
    qword_101FC90D8 = sub_10121DB0C;
    qword_101FC90D0 = sub_10121DB0C;
    qword_101FC90C8 = sub_10121DB0C;
    qword_101FC90C0 = sub_10121DB0C;
    qword_101FC90B8 = sub_10121DB0C;
    qword_101FC90B0 = sub_10121DB0C;
    qword_101FC90A8 = sub_10121DB0C;
    qword_101FC90A0 = sub_10121DB0C;
    qword_101FC9098 = sub_10121DB0C;
    qword_101FC9090 = sub_10121DB0C;
    qword_101FC9088 = sub_10121DB0C;
    qword_101FC9080 = sub_10121DB0C;
    qword_101FC9078 = sub_10121DB0C;
    qword_101FC9070 = sub_10121DB0C;
    qword_101FC9068 = sub_10121DB0C;
    qword_101FC9060 = sub_10121DB0C;
  }
}

void sub_1012234C8()
{
  if ((byte_101FC8DE0 & 1) == 0)
  {
    byte_101FC8DE0 = 1;
    qword_101FC91D0 = sub_10121DDC0;
    qword_101FC91C8 = sub_10121DDC0;
    qword_101FC91A8 = sub_10121DDC0;
    qword_101FC91A0 = sub_10121DDC0;
    qword_101FC9198 = sub_10121DDC0;
    qword_101FC9190 = sub_10121DDC0;
    qword_101FC91E0 = sub_10121DDC8;
    qword_101FC91D8 = sub_10121DE04;
    qword_101FC91C0 = sub_10121DE94;
    qword_101FC91B8 = sub_10121DF24;
    qword_101FC91B0 = sub_10121DFB4;
    qword_101FC9188 = sub_10121E044;
    qword_101FC9180 = sub_10121E0D4;
    qword_101FC9178 = sub_10121E164;
    qword_101FC9170 = sub_10121E1F4;
    qword_101FC9168 = sub_10121E284;
    qword_101FC9160 = sub_10121E314;
    qword_101FC9158 = sub_10121E3A4;
    qword_101FC9150 = sub_10121E434;
    qword_101FC9148 = sub_10121E4C4;
    qword_101FC9140 = sub_10121E554;
    qword_101FC9138 = sub_10121E5E4;
    qword_101FC9130 = sub_10121E674;
    qword_101FC9128 = sub_10121E704;
  }
}

void sub_10122362C()
{
  if ((byte_101FC8DE8 & 1) == 0)
  {
    byte_101FC8DE8 = 1;
    qword_101FC92A8 = sub_10121EA2C;
    qword_101FC92A0 = sub_10121EA2C;
    qword_101FC9298 = sub_10121EA2C;
    qword_101FC9290 = sub_10121EA2C;
    qword_101FC9288 = sub_10121EA2C;
    qword_101FC9280 = sub_10121EA2C;
    qword_101FC9278 = sub_10121EA2C;
    qword_101FC9270 = sub_10121EA2C;
    qword_101FC9268 = sub_10121EA2C;
    qword_101FC9260 = sub_10121EA2C;
    qword_101FC9258 = sub_10121EA2C;
    qword_101FC9250 = sub_10121EA2C;
    qword_101FC9248 = sub_10121EA2C;
    qword_101FC9240 = sub_10121EA2C;
    qword_101FC9238 = sub_10121EA2C;
    qword_101FC9230 = sub_10121EA2C;
    qword_101FC9228 = sub_10121EA2C;
    qword_101FC9220 = sub_10121EA2C;
    qword_101FC9218 = sub_10121EA2C;
    qword_101FC9210 = sub_10121EA2C;
    qword_101FC9208 = sub_10121EA2C;
    qword_101FC9200 = sub_10121EA2C;
    qword_101FC91F0 = sub_10121EA2C;
    qword_101FC91F8 = sub_10121EA34;
  }
}

void sub_1012236C4()
{
  if ((byte_101FC8DF0 & 1) == 0)
  {
    byte_101FC8DF0 = 1;
    qword_101FC9370 = sub_10121ED94;
    qword_101FC9368 = sub_10121ED94;
    qword_101FC9360 = sub_10121ED94;
    qword_101FC9358 = sub_10121ED94;
    qword_101FC9350 = sub_10121ED94;
    qword_101FC9348 = sub_10121ED94;
    qword_101FC9340 = sub_10121ED94;
    qword_101FC9338 = sub_10121ED94;
    qword_101FC9330 = sub_10121ED94;
    qword_101FC9328 = sub_10121ED94;
    qword_101FC9320 = sub_10121ED94;
    qword_101FC9318 = sub_10121ED94;
    qword_101FC9310 = sub_10121ED94;
    qword_101FC9308 = sub_10121ED94;
    qword_101FC9300 = sub_10121ED94;
    qword_101FC92F8 = sub_10121ED94;
    qword_101FC92F0 = sub_10121ED94;
    qword_101FC92E8 = sub_10121ED94;
    qword_101FC92E0 = sub_10121ED94;
    qword_101FC92D8 = sub_10121ED94;
    qword_101FC92D0 = sub_10121ED94;
    qword_101FC92C0 = sub_10121ED94;
    qword_101FC92B8 = sub_10121ED94;
    qword_101FC92C8 = sub_10121ED9C;
  }
}

void sub_10122375C()
{
  if ((byte_101FC8DF8 & 1) == 0)
  {
    byte_101FC8DF8 = 1;
    qword_101FC9438 = sub_10121F0C0;
    qword_101FC9430 = sub_10121F0C0;
    qword_101FC9428 = sub_10121F0C0;
    qword_101FC9420 = sub_10121F0C0;
    qword_101FC9418 = sub_10121F0C0;
    qword_101FC9410 = sub_10121F0C0;
    qword_101FC9408 = sub_10121F0C0;
    qword_101FC9400 = sub_10121F0C0;
    qword_101FC93F8 = sub_10121F0C0;
    qword_101FC93F0 = sub_10121F0C0;
    qword_101FC93E8 = sub_10121F0C0;
    qword_101FC93E0 = sub_10121F0C0;
    qword_101FC93D8 = sub_10121F0C0;
    qword_101FC93D0 = sub_10121F0C0;
    qword_101FC93C8 = sub_10121F0C0;
    qword_101FC93C0 = sub_10121F0C0;
    qword_101FC93B8 = sub_10121F0C0;
    qword_101FC93B0 = sub_10121F0C0;
    qword_101FC93A8 = sub_10121F0C0;
    qword_101FC93A0 = sub_10121F0C0;
    qword_101FC9390 = sub_10121F0C0;
    qword_101FC9388 = sub_10121F0C0;
    qword_101FC9380 = sub_10121F0C0;
    qword_101FC9398 = sub_10121F0C8;
  }
}

void sub_1012237F4()
{
  if ((byte_101FC8E00 & 1) == 0)
  {
    byte_101FC8E00 = 1;
    qword_101FC9500 = sub_10121F3EC;
    qword_101FC94F8 = sub_10121F3EC;
    qword_101FC94F0 = sub_10121F3EC;
    qword_101FC94E8 = sub_10121F3EC;
    qword_101FC94E0 = sub_10121F3EC;
    qword_101FC94D8 = sub_10121F3EC;
    qword_101FC94D0 = sub_10121F3EC;
    qword_101FC94C8 = sub_10121F3EC;
    qword_101FC94C0 = sub_10121F3EC;
    qword_101FC94B8 = sub_10121F3EC;
    qword_101FC94B0 = sub_10121F3EC;
    qword_101FC94A8 = sub_10121F3EC;
    qword_101FC9498 = sub_10121F3EC;
    qword_101FC9490 = sub_10121F3EC;
    qword_101FC9488 = sub_10121F3EC;
    qword_101FC9480 = sub_10121F3EC;
    qword_101FC9478 = sub_10121F3EC;
    qword_101FC9470 = sub_10121F3EC;
    qword_101FC9460 = sub_10121F3EC;
    qword_101FC9458 = sub_10121F3EC;
    qword_101FC9450 = sub_10121F3EC;
    qword_101FC9448 = sub_10121F3EC;
    qword_101FC94A0 = sub_10121F3F4;
    qword_101FC9468 = sub_10121F478;
  }
}

void sub_101223898()
{
  if ((byte_101FC8E08 & 1) == 0)
  {
    byte_101FC8E08 = 1;
    qword_101FC95C8 = sub_10121F79C;
    qword_101FC95C0 = sub_10121F79C;
    qword_101FC95B8 = sub_10121F79C;
    qword_101FC95B0 = sub_10121F79C;
    qword_101FC95A8 = sub_10121F79C;
    qword_101FC95A0 = sub_10121F79C;
    qword_101FC9598 = sub_10121F79C;
    qword_101FC9590 = sub_10121F79C;
    qword_101FC9588 = sub_10121F79C;
    qword_101FC9580 = sub_10121F79C;
    qword_101FC9578 = sub_10121F79C;
    qword_101FC9570 = sub_10121F79C;
    qword_101FC9568 = sub_10121F79C;
    qword_101FC9560 = sub_10121F79C;
    qword_101FC9558 = sub_10121F79C;
    qword_101FC9550 = sub_10121F79C;
    qword_101FC9548 = sub_10121F79C;
    qword_101FC9540 = sub_10121F79C;
    qword_101FC9530 = sub_10121F79C;
    qword_101FC9528 = sub_10121F79C;
    qword_101FC9520 = sub_10121F79C;
    qword_101FC9518 = sub_10121F79C;
    qword_101FC9510 = sub_10121F79C;
    qword_101FC9538 = sub_10121F7A4;
  }
}

void sub_101223930()
{
  if ((byte_101FC8E10 & 1) == 0)
  {
    byte_101FC8E10 = 1;
    qword_101FC9690 = sub_10121FAC8;
    qword_101FC9688 = sub_10121FAC8;
    qword_101FC9680 = sub_10121FAC8;
    qword_101FC9678 = sub_10121FAC8;
    qword_101FC9670 = sub_10121FAC8;
    qword_101FC9668 = sub_10121FAC8;
    qword_101FC9660 = sub_10121FAC8;
    qword_101FC9658 = sub_10121FAC8;
    qword_101FC9650 = sub_10121FAC8;
    qword_101FC9648 = sub_10121FAC8;
    qword_101FC9640 = sub_10121FAC8;
    qword_101FC9638 = sub_10121FAC8;
    qword_101FC9630 = sub_10121FAC8;
    qword_101FC9628 = sub_10121FAC8;
    qword_101FC9620 = sub_10121FAC8;
    qword_101FC9618 = sub_10121FAC8;
    qword_101FC9610 = sub_10121FAC8;
    qword_101FC9600 = sub_10121FAC8;
    qword_101FC95F8 = sub_10121FAC8;
    qword_101FC95F0 = sub_10121FAC8;
    qword_101FC95E8 = sub_10121FAC8;
    qword_101FC95E0 = sub_10121FAC8;
    qword_101FC95D8 = sub_10121FAC8;
    qword_101FC9608 = sub_10121FAD0;
  }
}

void sub_1012239C8()
{
  if ((byte_101FC8E18 & 1) == 0)
  {
    byte_101FC8E18 = 1;
    qword_101FC9758 = sub_10121FDF4;
    qword_101FC9750 = sub_10121FDF4;
    qword_101FC9748 = sub_10121FDF4;
    qword_101FC9740 = sub_10121FDF4;
    qword_101FC9738 = sub_10121FDF4;
    qword_101FC9730 = sub_10121FDF4;
    qword_101FC9728 = sub_10121FDF4;
    qword_101FC9720 = sub_10121FDF4;
    qword_101FC9718 = sub_10121FDF4;
    qword_101FC9710 = sub_10121FDF4;
    qword_101FC9708 = sub_10121FDF4;
    qword_101FC9700 = sub_10121FDF4;
    qword_101FC96F8 = sub_10121FDF4;
    qword_101FC96F0 = sub_10121FDF4;
    qword_101FC96E8 = sub_10121FDF4;
    qword_101FC96E0 = sub_10121FDF4;
    qword_101FC96D0 = sub_10121FDF4;
    qword_101FC96C8 = sub_10121FDF4;
    qword_101FC96C0 = sub_10121FDF4;
    qword_101FC96B8 = sub_10121FDF4;
    qword_101FC96B0 = sub_10121FDF4;
    qword_101FC96A8 = sub_10121FDF4;
    qword_101FC96A0 = sub_10121FDF4;
    qword_101FC96D8 = sub_10121FDFC;
  }
}

void sub_101223A60()
{
  if ((byte_101FC8E20 & 1) == 0)
  {
    byte_101FC8E20 = 1;
    qword_101FC9820 = sub_101220120;
    qword_101FC9818 = sub_101220120;
    qword_101FC9810 = sub_101220120;
    qword_101FC9808 = sub_101220120;
    qword_101FC9800 = sub_101220120;
    qword_101FC97F8 = sub_101220120;
    qword_101FC97C8 = sub_101220120;
    qword_101FC97B8 = sub_101220120;
    qword_101FC97B0 = sub_101220120;
    qword_101FC97A8 = sub_101220120;
    qword_101FC9798 = sub_101220120;
    qword_101FC9790 = sub_101220120;
    qword_101FC9788 = sub_101220120;
    qword_101FC9780 = sub_101220120;
    qword_101FC9778 = sub_101220120;
    qword_101FC9770 = sub_101220120;
    qword_101FC9768 = sub_101220120;
    qword_101FC97F0 = sub_101220128;
    qword_101FC97E8 = sub_1012201AC;
    qword_101FC97E0 = sub_101220230;
    qword_101FC97D8 = sub_1012202B4;
    qword_101FC97D0 = sub_101220338;
    qword_101FC97C0 = sub_1012203BC;
    qword_101FC97A0 = sub_101220440;
  }
}

void sub_101223B40()
{
  if ((byte_101FC8E28 & 1) == 0)
  {
    byte_101FC8E28 = 1;
    qword_101FC98E8 = sub_101220764;
    qword_101FC98E0 = sub_101220764;
    qword_101FC98D8 = sub_101220764;
    qword_101FC98D0 = sub_101220764;
    qword_101FC98C8 = sub_101220764;
    qword_101FC98C0 = sub_101220764;
    qword_101FC98B8 = sub_101220764;
    qword_101FC98B0 = sub_101220764;
    qword_101FC98A8 = sub_101220764;
    qword_101FC98A0 = sub_101220764;
    qword_101FC9898 = sub_101220764;
    qword_101FC9890 = sub_101220764;
    qword_101FC9888 = sub_101220764;
    qword_101FC9880 = sub_101220764;
    qword_101FC9878 = sub_101220764;
    qword_101FC9870 = sub_101220764;
    qword_101FC9860 = sub_101220764;
    qword_101FC9858 = sub_101220764;
    qword_101FC9850 = sub_101220764;
    qword_101FC9848 = sub_101220764;
    qword_101FC9840 = sub_101220764;
    qword_101FC9838 = sub_101220764;
    qword_101FC9830 = sub_101220764;
    qword_101FC9868 = sub_10122076C;
  }
}

void sub_101223BD8()
{
  if ((byte_101FC8E30 & 1) == 0)
  {
    byte_101FC8E30 = 1;
    qword_101FC99B0 = sub_101220C3C;
    qword_101FC99A8 = sub_101220C3C;
    qword_101FC99A0 = sub_101220C3C;
    qword_101FC9998 = sub_101220C3C;
    qword_101FC9990 = sub_101220C3C;
    qword_101FC9988 = sub_101220C3C;
    qword_101FC9980 = sub_101220C3C;
    qword_101FC9978 = sub_101220C3C;
    qword_101FC9970 = sub_101220C3C;
    qword_101FC9968 = sub_101220C3C;
    qword_101FC9960 = sub_101220C3C;
    qword_101FC9958 = sub_101220C3C;
    qword_101FC9950 = sub_101220C3C;
    qword_101FC9948 = sub_101220C3C;
    qword_101FC9938 = sub_101220C3C;
    qword_101FC9930 = sub_101220C3C;
    qword_101FC9928 = sub_101220C3C;
    qword_101FC9920 = sub_101220C3C;
    qword_101FC9918 = sub_101220C3C;
    qword_101FC9910 = sub_101220C3C;
    qword_101FC9908 = sub_101220C3C;
    qword_101FC9900 = sub_101220C3C;
    qword_101FC98F8 = sub_101220C3C;
    qword_101FC9940 = sub_101220C44;
  }
}

void sub_101223C70()
{
  if ((byte_101FC8E38 & 1) == 0)
  {
    byte_101FC8E38 = 1;
    qword_101FC9A78 = sub_101220F68;
    qword_101FC9A70 = sub_101220F68;
    qword_101FC9A68 = sub_101220F68;
    qword_101FC9A60 = sub_101220F68;
    qword_101FC9A58 = sub_101220F68;
    qword_101FC9A50 = sub_101220F68;
    qword_101FC9A48 = sub_101220F68;
    qword_101FC9A40 = sub_101220F68;
    qword_101FC9A38 = sub_101220F68;
    qword_101FC9A30 = sub_101220F68;
    qword_101FC9A28 = sub_101220F68;
    qword_101FC9A20 = sub_101220F68;
    qword_101FC9A18 = sub_101220F68;
    qword_101FC9A08 = sub_101220F68;
    qword_101FC9A00 = sub_101220F68;
    qword_101FC99F8 = sub_101220F68;
    qword_101FC99F0 = sub_101220F68;
    qword_101FC99E8 = sub_101220F68;
    qword_101FC99E0 = sub_101220F68;
    qword_101FC99D8 = sub_101220F68;
    qword_101FC99D0 = sub_101220F68;
    qword_101FC99C8 = sub_101220F68;
    qword_101FC99C0 = sub_101220F68;
    qword_101FC9A10 = sub_101220F70;
  }
}

void sub_101223D08()
{
  if ((byte_101FC8E40 & 1) == 0)
  {
    byte_101FC8E40 = 1;
    qword_101FC9B40 = sub_101221294;
    qword_101FC9B38 = sub_101221294;
    qword_101FC9B30 = sub_101221294;
    qword_101FC9B28 = sub_101221294;
    qword_101FC9B20 = sub_101221294;
    qword_101FC9B18 = sub_101221294;
    qword_101FC9B10 = sub_101221294;
    qword_101FC9B08 = sub_101221294;
    qword_101FC9AF8 = sub_101221294;
    qword_101FC9AE8 = sub_101221294;
    qword_101FC9AD8 = sub_101221294;
    qword_101FC9AD0 = sub_101221294;
    qword_101FC9AC8 = sub_101221294;
    qword_101FC9AC0 = sub_101221294;
    qword_101FC9AB8 = sub_101221294;
    qword_101FC9AB0 = sub_101221294;
    qword_101FC9AA8 = sub_101221294;
    qword_101FC9AA0 = sub_101221294;
    qword_101FC9A98 = sub_101221294;
    qword_101FC9A90 = sub_101221294;
    qword_101FC9A88 = sub_101221294;
    qword_101FC9B00 = sub_10122129C;
    qword_101FC9AF0 = sub_101221320;
    qword_101FC9AE0 = sub_1012213A4;
  }
}

void sub_101223DB8()
{
  if ((byte_101FC8E48 & 1) == 0)
  {
    byte_101FC8E48 = 1;
    qword_101FC9C08 = sub_1012216C8;
    qword_101FC9C00 = sub_1012216C8;
    qword_101FC9BF8 = sub_1012216C8;
    qword_101FC9BF0 = sub_1012216C8;
    qword_101FC9BE8 = sub_1012216C8;
    qword_101FC9BE0 = sub_1012216C8;
    qword_101FC9BD8 = sub_1012216C8;
    qword_101FC9BD0 = sub_1012216C8;
    qword_101FC9BC8 = sub_1012216C8;
    qword_101FC9BC0 = sub_1012216C8;
    qword_101FC9BB0 = sub_1012216C8;
    qword_101FC9BA8 = sub_1012216C8;
    qword_101FC9BA0 = sub_1012216C8;
    qword_101FC9B98 = sub_1012216C8;
    qword_101FC9B90 = sub_1012216C8;
    qword_101FC9B88 = sub_1012216C8;
    qword_101FC9B80 = sub_1012216C8;
    qword_101FC9B78 = sub_1012216C8;
    qword_101FC9B70 = sub_1012216C8;
    qword_101FC9B68 = sub_1012216C8;
    qword_101FC9B60 = sub_1012216C8;
    qword_101FC9B58 = sub_1012216C8;
    qword_101FC9B50 = sub_1012216C8;
    qword_101FC9BB8 = sub_1012216D0;
  }
}

void sub_101223E50()
{
  if ((byte_101FC8E50 & 1) == 0)
  {
    byte_101FC8E50 = 1;
    qword_101FC9CD0 = sub_1012219F4;
    qword_101FC9CC8 = sub_1012219F4;
    qword_101FC9CC0 = sub_1012219F4;
    qword_101FC9CB8 = sub_1012219F4;
    qword_101FC9CB0 = sub_1012219F4;
    qword_101FC9CA8 = sub_1012219F4;
    qword_101FC9CA0 = sub_1012219F4;
    qword_101FC9C98 = sub_1012219F4;
    qword_101FC9C90 = sub_1012219F4;
    qword_101FC9C80 = sub_1012219F4;
    qword_101FC9C78 = sub_1012219F4;
    qword_101FC9C70 = sub_1012219F4;
    qword_101FC9C68 = sub_1012219F4;
    qword_101FC9C60 = sub_1012219F4;
    qword_101FC9C58 = sub_1012219F4;
    qword_101FC9C50 = sub_1012219F4;
    qword_101FC9C48 = sub_1012219F4;
    qword_101FC9C40 = sub_1012219F4;
    qword_101FC9C38 = sub_1012219F4;
    qword_101FC9C30 = sub_1012219F4;
    qword_101FC9C28 = sub_1012219F4;
    qword_101FC9C20 = sub_1012219F4;
    qword_101FC9C18 = sub_1012219F4;
    qword_101FC9C88 = sub_1012219FC;
  }
}

void sub_101223EE8()
{
  if ((byte_101FC8E58 & 1) == 0)
  {
    byte_101FC8E58 = 1;
    qword_101FC9D98 = sub_101221D20;
    qword_101FC9D90 = sub_101221D20;
    qword_101FC9D88 = sub_101221D20;
    qword_101FC9D80 = sub_101221D20;
    qword_101FC9D78 = sub_101221D20;
    qword_101FC9D70 = sub_101221D20;
    qword_101FC9D68 = sub_101221D20;
    qword_101FC9D60 = sub_101221D20;
    qword_101FC9D50 = sub_101221D20;
    qword_101FC9D48 = sub_101221D20;
    qword_101FC9D40 = sub_101221D20;
    qword_101FC9D38 = sub_101221D20;
    qword_101FC9D30 = sub_101221D20;
    qword_101FC9D28 = sub_101221D20;
    qword_101FC9D20 = sub_101221D20;
    qword_101FC9D18 = sub_101221D20;
    qword_101FC9D10 = sub_101221D20;
    qword_101FC9D08 = sub_101221D20;
    qword_101FC9D00 = sub_101221D20;
    qword_101FC9CF8 = sub_101221D20;
    qword_101FC9CF0 = sub_101221D20;
    qword_101FC9CE8 = sub_101221D20;
    qword_101FC9CE0 = sub_101221D20;
    qword_101FC9D58 = sub_101221D28;
  }
}

void sub_101223F80()
{
  if ((byte_101FC8E60 & 1) == 0)
  {
    byte_101FC8E60 = 1;
    qword_101FC9E58 = sub_10122204C;
    unk_101FC9E60 = sub_10122204C;
    qword_101FC9E48 = sub_10122204C;
    unk_101FC9E50 = sub_10122204C;
    qword_101FC9E38 = sub_10122204C;
    unk_101FC9E40 = sub_10122204C;
    qword_101FC9E30 = sub_10122204C;
    qword_101FC9E18 = sub_10122204C;
    unk_101FC9E20 = sub_10122204C;
    qword_101FC9E08 = sub_10122204C;
    unk_101FC9E10 = sub_10122204C;
    qword_101FC9DF8 = sub_10122204C;
    unk_101FC9E00 = sub_10122204C;
    qword_101FC9DE8 = sub_10122204C;
    unk_101FC9DF0 = sub_10122204C;
    qword_101FC9DD8 = sub_10122204C;
    unk_101FC9DE0 = sub_10122204C;
    qword_101FC9DC8 = sub_10122204C;
    unk_101FC9DD0 = sub_10122204C;
    qword_101FC9DB8 = sub_10122204C;
    unk_101FC9DC0 = sub_10122204C;
    qword_101FC9DA8 = sub_10122204C;
    unk_101FC9DB0 = sub_10122204C;
    qword_101FC9E28 = sub_101222054;
  }
}

void sub_101223FEC()
{
  if ((byte_101FC8E68 & 1) == 0)
  {
    byte_101FC8E68 = 1;
    qword_101FC9F20 = sub_101222378;
    unk_101FC9F28 = sub_101222378;
    qword_101FC9F08 = sub_101222378;
    unk_101FC9F10 = sub_101222378;
    qword_101FC9EF8 = sub_101222378;
    unk_101FC9F00 = sub_101222378;
    qword_101FC9EE8 = sub_101222378;
    unk_101FC9EF0 = sub_101222378;
    qword_101FC9ED8 = sub_101222378;
    unk_101FC9EE0 = sub_101222378;
    qword_101FC9EC8 = sub_101222378;
    unk_101FC9ED0 = sub_101222378;
    qword_101FC9EB8 = sub_101222378;
    unk_101FC9EC0 = sub_101222378;
    qword_101FC9EA8 = sub_101222378;
    unk_101FC9EB0 = sub_101222378;
    qword_101FC9E98 = sub_101222378;
    unk_101FC9EA0 = sub_101222378;
    qword_101FC9E88 = sub_101222378;
    unk_101FC9E90 = sub_101222378;
    qword_101FC9E78 = sub_101222378;
    unk_101FC9E80 = sub_101222378;
    qword_101FC9E70 = sub_101222378;
    qword_101FC9F18 = sub_101222380;
  }
}

void sub_101224058()
{
  if ((byte_101FC8E70 & 1) == 0)
  {
    byte_101FC8E70 = 1;
    qword_101FC9FE8 = sub_101222410;
    unk_101FC9FF0 = sub_101222410;
    qword_101FC9FD8 = sub_101222410;
    unk_101FC9FE0 = sub_101222410;
    qword_101FC9FC8 = sub_101222410;
    unk_101FC9FD0 = sub_101222410;
    qword_101FC9FB0 = sub_101222410;
    unk_101FC9FB8 = sub_101222410;
    qword_101FC9FA0 = sub_101222410;
    unk_101FC9FA8 = sub_101222410;
    qword_101FC9F90 = sub_101222410;
    unk_101FC9F98 = sub_101222410;
    qword_101FC9F80 = sub_101222410;
    unk_101FC9F88 = sub_101222410;
    qword_101FC9F70 = sub_101222410;
    unk_101FC9F78 = sub_101222410;
    qword_101FC9F60 = sub_101222410;
    unk_101FC9F68 = sub_101222410;
    qword_101FC9F50 = sub_101222410;
    unk_101FC9F58 = sub_101222410;
    qword_101FC9F40 = sub_101222410;
    unk_101FC9F48 = sub_101222410;
    qword_101FC9F38 = sub_101222410;
    qword_101FC9FC0 = sub_101222418;
  }
}

void sub_1012240C4()
{
  if ((byte_101FC8E78 & 1) == 0)
  {
    byte_101FC8E78 = 1;
    qword_101FCA0B0 = sub_10122272C;
    unk_101FCA0B8 = sub_10122272C;
    qword_101FCA0A0 = sub_10122272C;
    unk_101FCA0A8 = sub_10122272C;
    qword_101FCA090 = sub_10122272C;
    unk_101FCA098 = sub_10122272C;
    qword_101FCA078 = sub_10122272C;
    unk_101FCA080 = sub_10122272C;
    qword_101FCA068 = sub_10122272C;
    unk_101FCA070 = sub_10122272C;
    qword_101FCA058 = sub_10122272C;
    unk_101FCA060 = sub_10122272C;
    qword_101FCA048 = sub_10122272C;
    unk_101FCA050 = sub_10122272C;
    qword_101FCA038 = sub_10122272C;
    unk_101FCA040 = sub_10122272C;
    qword_101FCA028 = sub_10122272C;
    unk_101FCA030 = sub_10122272C;
    qword_101FCA018 = sub_10122272C;
    unk_101FCA020 = sub_10122272C;
    qword_101FCA008 = sub_10122272C;
    unk_101FCA010 = sub_10122272C;
    qword_101FCA000 = sub_10122272C;
    qword_101FCA088 = sub_101222734;
  }
}

void sub_101224130()
{
  if ((byte_101FC8E80 & 1) == 0)
  {
    byte_101FC8E80 = 1;
    qword_101FCA178 = sub_101222B04;
    unk_101FCA180 = sub_101222B04;
    qword_101FCA170 = sub_101222B04;
    qword_101FCA158 = sub_101222B04;
    unk_101FCA160 = sub_101222B04;
    qword_101FCA148 = sub_101222B04;
    unk_101FCA150 = sub_101222B04;
    qword_101FCA138 = sub_101222B04;
    unk_101FCA140 = sub_101222B04;
    qword_101FCA128 = sub_101222B04;
    unk_101FCA130 = sub_101222B04;
    qword_101FCA118 = sub_101222B04;
    unk_101FCA120 = sub_101222B04;
    qword_101FCA108 = sub_101222B04;
    unk_101FCA110 = sub_101222B04;
    qword_101FCA0F8 = sub_101222B04;
    unk_101FCA100 = sub_101222B04;
    qword_101FCA0E8 = sub_101222B04;
    unk_101FCA0F0 = sub_101222B04;
    qword_101FCA0D8 = sub_101222B04;
    unk_101FCA0E0 = sub_101222B04;
    qword_101FCA0C8 = sub_101222B04;
    unk_101FCA0D0 = sub_101222B04;
    qword_101FCA168 = sub_101222B0C;
  }
}

void sub_10122419C()
{
  if ((byte_101FC8E88 & 1) == 0)
  {
    byte_101FC8E88 = 1;
    qword_101FCA240 = sub_101222EA8;
    unk_101FCA248 = sub_101222EA8;
    qword_101FCA230 = sub_101222EA8;
    unk_101FCA238 = sub_101222EA8;
    qword_101FCA228 = sub_101222EA8;
    qword_101FCA210 = sub_101222EA8;
    unk_101FCA218 = sub_101222EA8;
    qword_101FCA200 = sub_101222EA8;
    unk_101FCA208 = sub_101222EA8;
    qword_101FCA1F0 = sub_101222EA8;
    unk_101FCA1F8 = sub_101222EA8;
    qword_101FCA1E0 = sub_101222EA8;
    unk_101FCA1E8 = sub_101222EA8;
    qword_101FCA1D0 = sub_101222EA8;
    unk_101FCA1D8 = sub_101222EA8;
    qword_101FCA1C0 = sub_101222EA8;
    unk_101FCA1C8 = sub_101222EA8;
    qword_101FCA1B0 = sub_101222EA8;
    unk_101FCA1B8 = sub_101222EA8;
    qword_101FCA1A0 = sub_101222EA8;
    unk_101FCA1A8 = sub_101222EA8;
    qword_101FCA190 = sub_101222EA8;
    *algn_101FCA198 = sub_101222EA8;
    qword_101FCA220 = sub_101222EB0;
  }
}

void sub_101224208()
{
  if ((byte_101FC8E90 & 1) == 0)
  {
    byte_101FC8E90 = 1;
    qword_101FCA310 = sub_1012231D4;
    qword_101FCA2F8 = sub_1012231D4;
    unk_101FCA300 = sub_1012231D4;
    qword_101FCA2E8 = sub_1012231D4;
    unk_101FCA2F0 = sub_1012231D4;
    qword_101FCA2D8 = sub_1012231D4;
    unk_101FCA2E0 = sub_1012231D4;
    qword_101FCA2C8 = sub_1012231D4;
    unk_101FCA2D0 = sub_1012231D4;
    qword_101FCA2B8 = sub_1012231D4;
    unk_101FCA2C0 = sub_1012231D4;
    qword_101FCA2A8 = sub_1012231D4;
    unk_101FCA2B0 = sub_1012231D4;
    qword_101FCA298 = sub_1012231D4;
    unk_101FCA2A0 = sub_1012231D4;
    qword_101FCA288 = sub_1012231D4;
    unk_101FCA290 = sub_1012231D4;
    qword_101FCA278 = sub_1012231D4;
    unk_101FCA280 = sub_1012231D4;
    qword_101FCA268 = sub_1012231D4;
    unk_101FCA270 = sub_1012231D4;
    qword_101FCA258 = sub_1012231D4;
    unk_101FCA260 = sub_1012231D4;
    qword_101FCA308 = sub_1012231DC;
  }
}

uint64_t sub_101224274()
{
  *v1 = xmmword_10192FBE4;
  *&v1[14] = 0xFBEB5B795ED2E632;
  qword_101FC8EA0 = 0;
  unk_101FC8EA8 = 0;
  qword_101FC8E98 = 0;
  sub_1000DCF88(&qword_101FC8E98, v1, v2, 22);
  __cxa_atexit(sub_10080BF0C, &qword_101FC8E98, &_mh_execute_header);
  *v1 = xmmword_10192FBFA;
  *&v1[14] = 0xE9FB0A99DA6B8D5ALL;
  qword_101FC8EB0 = 0;
  qword_101FC8EB8 = 0;
  unk_101FC8EC0 = 0;
  sub_1000DCF88(&qword_101FC8EB0, v1, v2, 22);
  return __cxa_atexit(sub_10080BF0C, &qword_101FC8EB0, &_mh_execute_header);
}

void sub_1012248F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CallStateObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_101224AD4(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 200))
    {
      v3 = "MT";
    }

    else
    {
      v3 = "MO";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s SMS Message details:", buf, 0xCu);
    v2 = *(a1 + 192);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 476);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Teleservice ID:\t%d", buf, 8u);
  }

  v5 = *(a1 + 204);
  if (v5 > 2)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_101F1D148[v5];
  }

  v7 = *(a1 + 192);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *v47 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Basic Msg Type:\t%s (%d)", buf, 0x12u);
  }

  if (*(a1 + 456) == 1)
  {
    v8 = *(a1 + 192);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Message is concatenated", buf, 2u);
      v8 = *(a1 + 192);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 460);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Reference:\t\t%d", buf, 8u);
      v8 = *(a1 + 192);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 468);
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sequence Num:\t%d", buf, 8u);
      v8 = *(a1 + 192);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 464);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Max Segments:\t%d", buf, 8u);
    }
  }

  v12 = *(a1 + 200);
  if ((v12 - 1) <= 1)
  {
    v13 = *(a1 + 192);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      MessageID = sms::Model::getMessageID(a1);
      *buf = 67109120;
      *&buf[4] = MessageID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Message ID:\t%d", buf, 8u);
      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFormatted(buf, (a1 + 216));
      if ((v49 & 0x8000) == 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      v44 = 136315138;
      v45[0] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Sender:\t\t%s", &v44, 0xCu);
      if (SBYTE1(v49) < 0)
      {
        operator delete(*buf);
      }

      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 428);
      v17 = *(a1 + 424);
      v18 = *(a1 + 420);
      v19 = *(a1 + 408);
      v20 = *(a1 + 412);
      v21 = *(a1 + 416);
      v22 = *(a1 + 432);
      if (*(a1 + 436))
      {
        v23 = "yes";
      }

      else
      {
        v23 = "no";
      }

      *buf = 67110914;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v17;
      *v47 = 1024;
      *&v47[2] = v18;
      v48 = 1024;
      v49 = v19;
      v50 = 1024;
      v51 = v20;
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = v22;
      v56 = 2080;
      v57 = v23;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MC Timestamp:\tY:%d M:%02d D:%02d @ %02d:%02d:%02d (Offset:%d, DST:%s)", buf, 0x36u);
      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CSIDateToSeconds();
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I MC Timestamp:\t%d", buf, 8u);
      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 472);
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DisplayMode:\t%d", buf, 8u);
      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (*(*a1 + 48))(a1);
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Source Port:\t%d", buf, 8u);
      v13 = *(a1 + 192);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (*(*a1 + 64))(a1);
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Dest Port:\t\t%d", buf, 8u);
    }

    if ((*(*a1 + 248))(a1) == 2)
    {
      v28 = *(a1 + 192);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (*(*a1 + 424))(a1);
        *buf = 67109120;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Service Category:\t%u", buf, 8u);
      }
    }

    if (*(a1 + 97) == 1)
    {
      v30 = *(a1 + 192);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Message is a voicemail indication", buf, 2u);
        v30 = *(a1 + 192);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 98))
        {
          v31 = "yes";
        }

        else
        {
          v31 = "no";
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I VM Waiting:\t\t%s", buf, 0xCu);
        v30 = *(a1 + 192);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 99))
        {
          v32 = "yes";
        }

        else
        {
          v32 = "no";
        }

        *buf = 136315138;
        *&buf[4] = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I VM Count Avail:\t%s", buf, 0xCu);
        v30 = *(a1 + 192);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 100);
        *buf = 67109120;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I VM Count:\t\t%d", buf, 8u);
      }
    }

    v12 = *(a1 + 200);
  }

  if (!v12)
  {
    isIMSOverAP = sms::Model::isIMSOverAP(a1);
    v35 = *(a1 + 192);
    if (isIMSOverAP && os_log_type_enabled(*(a1 + 192), OS_LOG_TYPE_DEFAULT))
    {
      v36 = sms::Model::getMessageID(a1);
      *buf = 67109120;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Message ID:          %d", buf, 8u);
      v35 = *(a1 + 192);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = (a1 + 160);
      if (*(a1 + 183) < 0)
      {
        v37 = *v37;
      }

      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Destination:\t%s", buf, 0xCu);
      v35 = *(a1 + 192);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v38 = "no";
      if (*(a1 + 480))
      {
        v38 = "yes";
      }

      *buf = 136315138;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I MoreMessages:\t%s", buf, 0xCu);
      v35 = *(a1 + 192);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 484);
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Validity:\t\t%d", buf, 8u);
    }
  }

  v40 = *(a1 + 192);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 400);
    C2KSmsPdu::asString();
    if ((v49 & 0x8000) == 0)
    {
      v42 = buf;
    }

    else
    {
      v42 = *buf;
    }

    v44 = 67109378;
    LODWORD(v45[0]) = v41;
    WORD2(v45[0]) = 2080;
    *(v45 + 6) = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Msg Encoding:\t%d (%s)", &v44, 0x12u);
    if (SBYTE1(v49) < 0)
    {
      operator delete(*buf);
    }

    v40 = *(a1 + 192);
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 399);
    if (v43 < 0)
    {
      v43 = *(a1 + 384);
    }

    *buf = 67109120;
    *&buf[4] = v43;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Body Length:\t%d", buf, 8u);
  }
}

uint64_t sub_1012254AC(uint64_t a1, int a2, uint64_t *a3, C2KSmsPduDecoder **a4, int a5)
{
  v9 = a3[1];
  v14 = *a3;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MsgID = C2KSmsPduDecoder::getMsgID(*a4);
  sms::Model::Model(a1, a2, &v14, 2, 0, MsgID);
  if (v15)
  {
    sub_100004A34(v15);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.telephony", "msg.c2k.mdl");
  *a1 = off_101F1CF38;
  *(a1 + 200) = 1;
  *(a1 + 204) = C2KSmsPduDecoder::getBasicMsgType(*a4);
  *(a1 + 208) = C2KSmsPduDecoder::getMsgIdentifierType(*a4);
  *(a1 + 212) = C2KSmsPduDecoder::getServiceCategory(*a4);
  C2KSmsPduDecoder::getOriginatingAddr(*a4);
  C2KSmsPduDecoder::getMsgBody(*a4);
  *(a1 + 400) = C2KSmsPduDecoder::getMsgEncoding(*a4);
  C2KSmsPduDecoder::getMCTimeStamp(*a4);
  *(a1 + 456) = C2KSmsPduDecoder::isConcatenated(*a4);
  *(a1 + 460) = C2KSmsPduDecoder::getConcatenationReference(*a4);
  *(a1 + 464) = C2KSmsPduDecoder::getConcatenationMaxSegments(*a4);
  *(a1 + 468) = C2KSmsPduDecoder::getConcatenationSequenceNumber(*a4);
  *(a1 + 472) = C2KSmsPduDecoder::getMsgDisplayMode(*a4);
  *(a1 + 476) = C2KSmsPduDecoder::getTeleserviceID(*a4);
  *(a1 + 480) = 0;
  *(a1 + 484) = -1;
  *(a1 + 488) = 1;
  *(a1 + 492) = C2KSmsPduDecoder::getLanguageIndicator(*a4);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  DestinationPort = C2KSmsPduDecoder::getDestinationPort(*a4);
  (*(*a1 + 72))(a1, DestinationPort);
  SourcePort = C2KSmsPduDecoder::getSourcePort(*a4);
  (*(*a1 + 56))(a1, SourcePort);
  *(a1 + 97) = C2KSmsPduDecoder::isVoiceMailIndication(*a4);
  *(a1 + 98) = C2KSmsPduDecoder::isVoiceMailWaiting(*a4);
  *(a1 + 99) = C2KSmsPduDecoder::isVoiceMailCountAvailable(*a4);
  *(a1 + 100) = C2KSmsPduDecoder::getVoiceMailCount(*a4);
  *(a1 + 136) = C2KSmsPduDecoder::getPartialSurrogates(*a4);
  *(a1 + 32) = *(*a4 + 1144);
  if (a5)
  {
    *(a1 + 36) = 0x200000002;
  }

  return a1;
}

void sub_1012256F4(_Unwind_Exception *a1)
{
  sub_100E7257C((v1 + 496));
  if (*(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  sub_10034F8E8(v1 + 216);
  ctu::OsLogLogger::~OsLogLogger((v1 + 192));
  sub_101225768(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101225768(uint64_t a1)
{
  *a1 = off_101EB6920;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1012257E4(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sms::Model::Model(a1, a2, &v6, 2, 0, 0);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.telephony", "msg.c2k.mdl");
  *a1 = off_101F1CF38;
  *(a1 + 200) = xmmword_101931860;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 216));
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 11;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  *(a1 + 429) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 460) = xmmword_101931870;
  *(a1 + 476) = 4243;
  *(a1 + 480) = 0;
  *(a1 + 484) = -1;
  *(a1 + 488) = 1;
  *(a1 + 540) = 0;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 0u;
  *(a1 + 524) = 0u;
  return a1;
}

void sub_1012258FC(_Unwind_Exception *a1)
{
  ctu::OsLogLogger::~OsLogLogger((v1 + 192));
  sub_101225768(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101225934(uint64_t a1)
{
  *a1 = off_101F1CF38;
  sub_100E7257C((a1 + 496));
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 192));

  return sub_101225768(a1);
}

void sub_1012259F8(uint64_t a1)
{
  sub_101225934(a1);

  operator delete();
}

void sub_101225A30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = (a1 + 160);

    std::string::operator=(v5, a2);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = *(a1 + 192);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid argument while setting destination address", v7, 2u);
    }
  }
}

uint64_t sub_101225AC8(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_101227CD8(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_100034C50(v8, *a2, a2[1], a2[1] - *a2);
  ++a1[5];
  return result;
}

void sub_101225B7C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v55[0] = 0;
    v55[1] = 0;
    ctu::TextConverter::TextConverter(v55);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    ctu::TextConverter::setSource(v55, v8, v9);
    ctu::TextConverter::pushConversion();
    v10 = sub_101226398(a1);
    *theDict = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 16));
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    *buf = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, buf);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_20:
    (*(*v19 + 96))(&Value, v19, *(a1 + 8), 1, sms::Model::sSMSCarrierBundleDict, 0, 0);
    sub_100010180(theDict, &Value);
    sub_10000A1EC(&Value);
    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    if (*theDict)
    {
      *buf = 0;
      Value = CFDictionaryGetValue(*theDict, @"SupportsEMS");
      sub_1005DEE94(buf, &Value);
      v23 = 1;
      if (*buf)
      {
        LOBYTE(Value) = 1;
        ctu::cf::assign(&Value, *buf, v22);
        v23 = Value;
      }

      sub_100045C8C(buf);
    }

    else
    {
      v23 = 1;
    }

    sub_10001021C(theDict);
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v25 = 0;
        goto LABEL_82;
      }

      if (a3 != 8)
      {
        goto LABEL_47;
      }

      v26 = *(a2 + 23);
      if (v26 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      if (v26 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      if (ctu::TextConverter::countCharactersInUtf8Message(v27, v28, v24) >= 0xA1)
      {
        v29 = *(a1 + 192);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v30)
          {
            C2KSmsPdu::asString();
            if (v54 >= 0)
            {
              v31 = buf;
            }

            else
            {
              v31 = *buf;
            }

            *theDict = 136315138;
            *&theDict[4] = v31;
            v32 = "#I Carrier supports %s concatenated messages";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, theDict, 0xCu);
            if (v54 < 0)
            {
              operator delete(*buf);
            }
          }

LABEL_70:
          ctu::TextConverter::pushConversion();
          ctu::TextConverter::readChars(&v49, v55, 0x7FFFFFFFuLL);
          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (ctu::TextConverter::exceptionOccurred(v55))
          {
            v40 = *(a1 + 192);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              C2KSmsPdu::asString();
              v41 = v54 >= 0 ? buf : *buf;
              *theDict = 136315138;
              *&theDict[4] = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Failed to convert to Gsm7, using %s", theDict, 0xCu);
              if (v54 < 0)
              {
                operator delete(*buf);
              }
            }

            goto LABEL_31;
          }

          v25 = 9;
LABEL_82:
          *(a1 + 400) = v25;
          v42 = *(a1 + 192);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            C2KSmsPdu::asString();
            if (v54 >= 0)
            {
              v43 = buf;
            }

            else
            {
              v43 = *buf;
            }

            *theDict = 136315138;
            *&theDict[4] = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I C2KModel::setBody() fEncoding = %s", theDict, 0xCu);
            if (v54 < 0)
            {
              operator delete(*buf);
            }
          }

LABEL_88:
          std::string::operator=((a1 + 376), a2);
          ctu::TextConverter::~TextConverter(v55);
          return;
        }

        if (v23)
        {
          if (!v30)
          {
            goto LABEL_30;
          }

          C2KSmsPdu::asString();
          if (v54 >= 0)
          {
            v44 = buf;
          }

          else
          {
            v44 = *buf;
          }

          *theDict = 136315138;
          *&theDict[4] = v44;
          v45 = "#I Using %s";
          goto LABEL_101;
        }

        if (v30)
        {
          C2KSmsPdu::asString();
          v47 = v54 >= 0 ? buf : *buf;
          *theDict = 136315138;
          *&theDict[4] = v47;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Carrier doesn't support EMS going to attempt %s", theDict, 0xCu);
          if (v54 < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
LABEL_30:
          ctu::TextConverter::pushConversion();
LABEL_31:
          v25 = 4;
          goto LABEL_82;
        }

LABEL_47:
        v33 = *(a1 + 192);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          C2KSmsPdu::asString();
          v48 = v54 >= 0 ? buf : *buf;
          *theDict = 136315138;
          *&theDict[4] = v48;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "C2KModel::setBody() attempted unsupported encoding: %s", theDict, 0xCu);
          if (v54 < 0)
          {
            operator delete(*buf);
          }
        }

        *(a1 + 400) = 11;
        goto LABEL_88;
      }

      if (v10)
      {
        goto LABEL_70;
      }

      if (v23)
      {
        goto LABEL_30;
      }
    }

    ctu::TextConverter::pushConversion();
    ctu::TextConverter::readChars(&__p, v55, 0x7FFFFFFFuLL);
    if (v52 < 0)
    {
      operator delete(__p);
    }

    if (!ctu::TextConverter::exceptionOccurred(v55))
    {
      v25 = 2;
      goto LABEL_82;
    }

    v34 = *(a1 + 192);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Failed to convert to 7BitAscii", buf, 2u);
    }

    ctu::TextConverter::popConversion(v55);
    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = *(a2 + 8);
    }

    ctu::TextConverter::setSource(v55, v36, v37);
    v29 = *(a1 + 192);
    v38 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v38)
      {
        C2KSmsPdu::asString();
        if (v54 >= 0)
        {
          v39 = buf;
        }

        else
        {
          v39 = *buf;
        }

        *theDict = 136315138;
        *&theDict[4] = v39;
        v32 = "#I Attempting to fall back to %s";
        goto LABEL_68;
      }

      goto LABEL_70;
    }

    if (!v38)
    {
      goto LABEL_30;
    }

    C2KSmsPdu::asString();
    if (v54 >= 0)
    {
      v46 = buf;
    }

    else
    {
      v46 = *buf;
    }

    *theDict = 136315138;
    *&theDict[4] = v46;
    v45 = "#I Falling back to %s";
LABEL_101:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v45, theDict, 0xCu);
    if (v54 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_30;
  }

  v21 = *(a1 + 192);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid data provided, ignoring ::setBody() call", buf, 2u);
  }
}

void sub_101226300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ctu::TextConverter::~TextConverter(va);
  _Unwind_Resume(a1);
}

BOOL sub_101226398(uint64_t a1)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
  (*(*v10 + 96))(&v17, v10, *(a1 + 8), 1, sms::Model::sSMSCarrierBundleDict, 0, 0);
  sub_100010180(&theDict, &v17);
  sub_10000A1EC(&v17);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (theDict && (Value = CFDictionaryGetValue(theDict, @"UnsupportedEncodings"), (v13 = Value) != 0) && (v14 = CFGetTypeID(Value), v14 == CFArrayGetTypeID()))
  {
    v20.length = CFArrayGetCount(v13);
    v20.location = 0;
    v15 = CFArrayContainsValue(v13, v20, @"7bitGSM") == 0;
  }

  else
  {
    v15 = 1;
  }

  sub_10001021C(&theDict);
  return v15;
}

void sub_101226544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

std::string *sub_101226580(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return result;
}

void sub_1012265B0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

char *sub_1012265BC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[399] < 0)
  {
    return sub_100005F2C(a2, *(result + 47), *(result + 48));
  }

  *a2 = *(result + 376);
  *(a2 + 16) = *(result + 49);
  return result;
}

uint64_t sub_1012265E8(uint64_t a1)
{
  v1 = *(a1 + 400);
  if (v1 > 9)
  {
    return 8;
  }

  else
  {
    return dword_1019318C4[v1];
  }
}

void sub_10122660C(uint64_t a1, signed int *a2, signed int *a3)
{
  v6 = *(a1 + 192);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2 || !a3)
  {
    if (!v7)
    {
      return;
    }

    *__p = 134218240;
    *&__p[4] = a2;
    *&__p[12] = 2048;
    v27 = a3;
    v14 = "#I Invalid paramaters, encodeSize: %p, splitThreshold: %p";
    v15 = v6;
    v16 = 22;
    goto LABEL_39;
  }

  if (v7)
  {
    C2KSmsPdu::asString();
    v8 = v28 >= 0 ? __p : *__p;
    *buf = 136315138;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I getSizeInEncodedCharactersAndSplitThreshold: using encoding: %s", buf, 0xCu);
    if (v28 < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = sub_100838900((a1 + 16), *(a1 + 8));
  v11 = v9;
  v12 = *(a1 + 400);
  if (v12 <= 3)
  {
    if (!v12)
    {
      v19 = *(a1 + 399);
      if (v19 < 0)
      {
        v19 = *(a1 + 384);
      }

      *a2 = v19;
      *a3 = 134;
      goto LABEL_32;
    }

    if (v12 != 2)
    {
LABEL_12:
      v13 = *(a1 + 192);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *__p = 67109120;
        *&__p[4] = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Don't know how to calculate character count / split threshold for encoding %d", __p, 8u);
      }

      *a3 = 0;
      *a2 = 0;
      return;
    }

    goto LABEL_19;
  }

  if (v12 != 4)
  {
    if (v12 != 9)
    {
      goto LABEL_12;
    }

LABEL_19:
    v17 = *(a1 + 399);
    if (v17 < 0)
    {
      v17 = *(a1 + 384);
    }

    *a2 = v17;
    *a3 = 160;
    if (v9)
    {
      v18 = sub_100839380(v9);
LABEL_31:
      v11 = v18;
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v20 = *(a1 + 399);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = *(a1 + 376);
    v20 = *(a1 + 384);
  }

  else
  {
    v21 = (a1 + 376);
  }

  *a2 = ctu::TextConverter::countCharactersInUtf8Message(v21, v20, v10);
  *a3 = 70;
  if (v11)
  {
    v18 = sub_10083939C(v11);
    goto LABEL_31;
  }

LABEL_32:
  v22 = *a3;
  if (*a2 > *a3)
  {
    *(a1 + 456) = 1;
  }

  if (v11 >= 1 && v22 > v11)
  {
    *a3 = v11;
    v22 = v11;
  }

  v23 = *(a1 + 192);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *a2;
    v25 = *(a1 + 400);
    *__p = 67109632;
    *&__p[4] = v24;
    *&__p[8] = 1024;
    *&__p[10] = v22;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v25;
    v14 = "#I C2KModel: Message size: %d split threshold: %d for encoding: %d";
    v15 = v23;
    v16 = 20;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, __p, v16);
  }
}

BOOL sub_1012268D8(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  (*(*a1 + 216))(a1, &v13 + 4, &v13);
  v4 = *(a1 + 400);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v7 = sub_1008393A8(SHIDWORD(v13));
      goto LABEL_11;
    }

    if (v4 != 9)
    {
LABEL_4:
      v5 = *(a1 + 192);
      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Warning: Don't know how to check encoding %d for encoded body size in bytes", buf, 8u);
        return 0;
      }

      return v6;
    }

LABEL_8:
    v7 = sub_100839364(SHIDWORD(v13));
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v8 = HIDWORD(v13);
LABEL_12:
  if (v8 >= 141)
  {
    if (v8 % 0x86)
    {
      v9 = v8 % 0x86 + 6;
    }

    else
    {
      v9 = 0;
    }

    v8 = v9 + 140 * (v8 / 0x86);
  }

  v6 = v8 > a2;
  v10 = *(a1 + 192);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "sms";
    *buf = 67109634;
    v15 = v8;
    if (v8 > a2)
    {
      v11 = "mms";
    }

    v16 = 1024;
    v17 = a2;
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I C2KModel: Message size: %d bytes  SMS sent as MMS threshold: %d bytes. Message sent as %s", buf, 0x18u);
  }

  return v6;
}

uint64_t sub_101226ADC(uint64_t a1)
{
  if (*(a1 + 204) == 1)
  {
    return 2;
  }

  else
  {
    return *(a1 + 200);
  }
}

uint64_t *sub_101226AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 200) == 1)
  {
    v3 = (a1 + 216);

    return CSIPhoneNumber::getFullNumber(a2, v3);
  }

  else
  {
    v5 = (a1 + 160);
    if (*(a1 + 183) < 0)
    {
      v5 = *v5;
    }

    result = strlen(v5);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = result;
    if (result)
    {
      result = memmove(a2, v5, result);
    }

    *(v6 + a2) = 0;
  }

  return result;
}

double sub_101226C18@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 200) == 1)
  {
    v3 = *(a1 + 424);
    *a2 = *(a1 + 408);
    a2[1] = v3;
    v4 = *(a1 + 440);
    a2[2] = v4;
  }

  else
  {
    v5 = *(a1 + 192);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "C2KModel::getTimestamp() called on non-MT message, returning empty date", v7, 2u);
    }

    *&v4 = 0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return *&v4;
}

uint64_t sub_101226CB8(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = a1[115];
  *a3 = a1[117];
  *a4 = a1[116];
  return 1;
}

uint64_t sub_101226D20(uint64_t a1)
{
  v1 = *(a1 + 492) - 1;
  if (v1 > 6)
  {
    return 30;
  }

  else
  {
    return dword_1019318EC[v1];
  }
}

uint64_t sub_101226D5C(uint64_t a1)
{
  v2 = a1 + 460;
  if (*(a1 + 64) != 1)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100DE69D4(v11);
  }

  v3 = *(a1 + 95);
  if (v3 < 0)
  {
    v4 = *(a1 + 72);
    v3 = *(a1 + 80);
  }

  else
  {
    v4 = a1 + 72;
  }

  memset(&v12, 0, sizeof(v12));
  sub_1002853E4(&v12, v4, v4 + v3, v3);
  v5 = *(v2 + 52);
  v6 = *(v2 + 44);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 536) + *(a1 + 528);
  if (v7 == v8)
  {
    sub_101227CD8((a1 + 496));
    v6 = *(a1 + 504);
    v8 = *(a1 + 536) + *(a1 + 528);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  v9->__r_.__value_.__r.__words[0] = 0;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  *v9 = v12;
  ++*(a1 + 536);
  return 0;
}

void sub_101227640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, char *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  a38 = &a29;
  sub_1000087B4(&a38);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a36)
  {
    sub_100004A34(a36);
  }

  _Unwind_Resume(a1);
}

void sub_101227774()
{
  v0[0] = 0;
  v0[1] = 0;
  sub_100DE69D4(v0);
}

void sub_101227B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101227B9C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[67])
  {
    v2 = (*(result[63] + 8 * (result[66] / 0xAAuLL)) + 24 * (result[66] % 0xAAuLL));
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return sub_100034C50(a2, *v2, v2[1], v2[1] - *v2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_101227BF4(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    v2 = *(a1 + 528);
    v3 = *(*(a1 + 504) + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
      v2 = *(a1 + 528);
    }

    --*(a1 + 536);
    v5 = v2 + 1;
    *(a1 + 528) = v5;
    if (v5 >= 0x154)
    {
      operator delete(**(a1 + 504));
      *(a1 + 504) += 8;
      *(a1 + 528) -= 170;
    }
  }
}

void sub_101227CCC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_101227CD8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_100EF4E80(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1010F098C(a1, &v10);
}

void sub_101228100(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void stewie::AnchorStorage::create(void *a1, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Creating anchors [", buf, 2u);
  }

  if (*a1 != a1[1])
  {
    operator new();
  }

  v5 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ], created %zu anchors", buf, 0xCu);
  }

  stewie::Anchors::create();
}

void sub_10122856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  (*(*v22 + 8))(v22);
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

void sub_101228608(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (*a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I anchorageAtLocation - selecting anchors", buf, 2u);
    }

    v32 = a4;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v8 = *(a1 + 16);
    v9 = *(v8 + 16);
    if (v9 == (v8 + 24))
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
    }

    else
    {
      do
      {
        CLClientGetDistanceCoordinates();
        v11 = v10;
        if (v10 < *(a1 + 32))
        {
          v12 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *v9[5];
            *buf = 67109120;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Selected anchors with id %d", buf, 8u);
          }

          v14 = v40;
          if (v40 >= v41)
          {
            v17 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3) + 1;
            if (v17 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000CE3D4();
            }

            if (0x5555555555555556 * ((v41 - v39) >> 3) > v17)
            {
              v17 = 0x5555555555555556 * ((v41 - v39) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v41 - v39) >> 3) >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              if (v18 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_100013D10();
            }

            v19 = (8 * ((v40 - v39) >> 3));
            *v19 = v11;
            v19[1] = v9[5];
            v20 = v9[6];
            v19[2] = v20;
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v16 = (v19 + 3);
            v21 = v39;
            v22 = v19 - (v40 - v39);
            memcpy(v22, v39, v40 - v39);
            v39 = v22;
            v40 = v16;
            v41 = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v40 = v11;
            *(v14 + 1) = v9[5];
            v15 = v9[6];
            *(v14 + 2) = v15;
            if (v15)
            {
              atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
            }

            v16 = v14 + 24;
          }

          v40 = v16;
        }

        v23 = v9[1];
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
            v24 = v9[2];
            v25 = *v24 == v9;
            v9 = v24;
          }

          while (!v25);
        }

        v9 = v24;
      }

      while (v24 != (*(a1 + 16) + 24));
      v36 = 0;
      v37 = 0;
      v38 = 0;
      if (v40 != v39)
      {
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3);
        if (!(v26 >> 60))
        {
          v43 = &v36;
          sub_101229058(v26);
        }

        sub_1000CE3D4();
      }
    }

    v27 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = (v37 - v36) >> 4;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Selected %zu anchors for location", buf, 0xCu);
    }

    v28 = a2[1];
    v34 = *a2;
    v35 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(a3 + 8);
    v33 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    stewie::AnchorageAtLocation::create(&v34, v5, v32);
    if (v33)
    {
      sub_100004A34(v33);
    }

    if (v35)
    {
      sub_100004A34(v35);
    }

    *buf = &v36;
    sub_1000212F4(buf);
    *buf = &v39;
    sub_101229100(buf);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "targetInstantAtLocationCacheFactory required", buf, 2u);
    }

    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_101228BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void ***a26)
{
  a26 = &a20;
  sub_1000212F4(&a26);
  a20 = &a23;
  sub_101229100(&a20);
  _Unwind_Resume(a1);
}

void sub_101228C38(void *a1)
{
  v2 = a1[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************", buf, 2u);
    v2 = a1[1];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * AnchorStorage state *", buf, 2u);
    v2 = a1[1];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************", buf, 2u);
    v2 = a1[1];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 134217984;
    *v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Distance threshold: %.2f", buf, 0xCu);
    v2 = a1[1];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Anchors [", buf, 2u);
  }

  v4 = a1[2];
  v5 = *(v4 + 16);
  if (v5 != (v4 + 24))
  {
    do
    {
      v6 = a1[1];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5[5];
        v8 = *v7;
        v9 = v7[1] * 180.0 / 3.14159265;
        v10 = v7[2] * 180.0;
        v11 = *(v7 + 3);
        *buf = 67109889;
        *v17 = v8;
        *&v17[4] = 2049;
        *&v17[6] = v9;
        v18 = 2049;
        v19 = v10 / 3.14159265;
        v20 = 2049;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [d]      id: %d, location: [%{private}.6f, %{private}.6f, %{private}.6f]", buf, 0x26u);
      }

      v12 = v5[1];
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
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != (a1[2] + 24));
  }

  v15 = a1[1];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] ]", buf, 2u);
  }
}

void *sub_101228F14(void *a1)
{
  *a1 = off_101F1D170;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_101228F68(void *a1)
{
  *a1 = off_101F1D170;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  operator delete();
}

void sub_101228FFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1D1E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101229058(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1012290A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_100004A34(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101229100(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10122918C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012291C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012291F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101229234(uint64_t a1)
{
  sub_10004EC58(a1 + 32, *(a1 + 40));

  return sub_10124C9DC(a1);
}

void sub_101229274(uint64_t a1, unsigned int a2)
{
  v25 = a2;
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (*(a1 + 2640) && (*buf = &v25, (*(sub_1002D750C(a1 + 2560, &v25)[5] + 294) & 1) != 0))
  {
    v4 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Emergency Sms is pending.", buf, 2u);
    }

    v5 = *(a1 + 112);
    if (v5 && (*(*v5 + 40))(v5, v25))
    {
      *buf = &v25;
      v6 = sub_1002D750C(a1 + 2560, &v25)[5];
      v8 = *(a1 + 112);
      v7 = *(a1 + 120);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 32);
      *(v6 + 24) = v8;
      *(v6 + 32) = v7;
      if (v9)
      {
        sub_100004A34(v9);
      }

      v10 = *v3;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I Using Baseband Command Driver";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      }
    }

    else
    {
      *buf = &v25;
      v21 = sub_1002D750C(a1 + 2560, &v25)[5];
      v23 = *(a1 + 128);
      v22 = *(a1 + 136);
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *(v21 + 32);
      *(v21 + 24) = v23;
      *(v21 + 32) = v22;
      if (v24)
      {
        sub_100004A34(v24);
      }

      v10 = *v3;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I Using IMS Command Driver";
        goto LABEL_36;
      }
    }
  }

  else if (sub_1012295E4(a1))
  {
    *buf = &v25;
    v12 = sub_1002D750C(a1 + 2560, &v25)[5];
    v14 = *(a1 + 128);
    v13 = *(a1 + 136);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v12 + 32);
    *(v12 + 24) = v14;
    *(v12 + 32) = v13;
    if (v15)
    {
      sub_100004A34(v15);
    }

    v10 = *v3;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "#I Using IMS Command Driver";
      goto LABEL_36;
    }
  }

  else
  {
    v16 = *(a1 + 112);
    if (!v16 || !(*(*v16 + 40))(v16, v25))
    {
      v10 = *v3;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v11 = "#I Active Command Driver not set!";
      goto LABEL_36;
    }

    *buf = &v25;
    v17 = sub_1002D750C(a1 + 2560, &v25)[5];
    v19 = *(a1 + 112);
    v18 = *(a1 + 120);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v17 + 32);
    *(v17 + 24) = v19;
    *(v17 + 32) = v18;
    if (v20)
    {
      sub_100004A34(v20);
    }

    v10 = *v3;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "#I Using Baseband Command Driver";
      goto LABEL_36;
    }
  }
}