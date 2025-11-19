void sub_CB0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CB10C(uint64_t a1, unsigned int a2)
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
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 168) == 1)
  {
    v9 = *(v5 + 164);
    v10 = v9 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      v10 = 0;
      v9 = 0;
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
            v20 = 992;
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

      v9 = sub_CB10C(a1, 1768776806);
      v10 = 0;
    }
  }

  return v9 & 0xFFFFFFFFFFLL | v10;
}

void sub_CB2A8(void *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[3] = a1 + 4;
  v3 = a1 + 3;
  a1[5] = 0;
  v4 = (a2 + 16);
  v5 = *(a2 + 24);
  if (v5 != (a2 + 16))
  {
    while (1)
    {
      v30[0] = 0;
      v30[1] = 0;
      v32[0] = 0;
      v32[1] = 0;
      v29 = v30;
      v31 = v32;
      v6 = v5[3];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          break;
        }
      }

LABEL_13:
      v13 = v5[5];
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = std::__shared_weak_count::lock(v13);
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = v14;
      v16 = v5[4];
      if (v16)
      {
        sub_CB640(&v33, v16, a3);
        v17 = v34;
        if (v34)
        {
          v18 = std::__shared_weak_count::lock(v34);
          v19 = v33;
          std::__shared_weak_count::__release_weak(v17);
          if (v18 && v19)
          {
            v33 = v19;
            v34 = v18;
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_CB814(&v31, &v33);
            if (v34)
            {
              std::__shared_weak_count::__release_weak(v34);
            }

LABEL_22:
            sub_1A8C0(v18);
            goto LABEL_23;
          }

          if (v18)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_23:
      sub_1A8C0(v15);
LABEL_24:
      v20 = v5[7];
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v22 = v21;
          v23 = v5[6];
          if (v23)
          {
            v24 = *(v23 + 200);
            if (v24)
            {
              v25 = *(v23 + 192);
              atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v26 = std::__shared_weak_count::lock(v24);
              std::__shared_weak_count::__release_weak(v24);
              if (v26)
              {
                if (v25)
                {
                  if (*(v23 + 184))
                  {
                    v33 = v25;
                    v34 = v26;
                    atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_CB814(&v29, &v33);
                  }

                  else
                  {
                    v33 = v25;
                    v34 = v26;
                    atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_CB814(&v31, &v33);
                  }

                  if (v34)
                  {
                    std::__shared_weak_count::__release_weak(v34);
                  }
                }

                sub_1A8C0(v26);
              }
            }
          }

          sub_1A8C0(v22);
        }
      }

      sub_CBA88(a1, v29, v30);
      sub_CBA88(v3, v31, v32);
      sub_4B0F4(v32[0]);
      sub_4B0F4(v30[0]);
      v5 = v5[1];
      if (v5 == v4)
      {
        return;
      }
    }

    v8 = v7;
    v9 = v5[2];
    if (v9)
    {
      sub_CB640(&v33, v9, a3);
      v10 = v34;
      if (v34)
      {
        v11 = std::__shared_weak_count::lock(v34);
        v12 = v33;
        std::__shared_weak_count::__release_weak(v10);
        if (v11 && v12)
        {
          v33 = v12;
          v34 = v11;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_CB814(&v29, &v33);
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          goto LABEL_11;
        }

        if (v11)
        {
LABEL_11:
          sub_1A8C0(v11);
        }
      }
    }

    sub_1A8C0(v8);
    goto LABEL_13;
  }
}

void sub_CB564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  sub_1A8C0(v19);
  sub_1A8C0(v18);
  sub_4B0F4(a15);
  sub_4B0F4(a12);
  sub_238290(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_CB5C4()
{
  v0 = &unk_6E9000;
  if ((atomic_load_explicit(&qword_6E9BD8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_6E9BD8);
    v0 = &unk_6E9000;
    if (v2)
    {
      v3 = sub_106F10();
      byte_6E9BD0 = (v3 > 0xFFu) & v3;
      __cxa_guard_release(&qword_6E9BD8);
      v0 = &unk_6E9000;
    }
  }

  return v0[3024];
}

void sub_CB640(void *a1, uint64_t a2, int a3)
{
  if (a3 && *(a2 + 144) == 1886216809 && sub_310A30())
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(&v13, __p);
    if (v18 < 0)
    {
      operator delete(*__p);
    }

    v5 = v14;
    if (v14)
    {
      v6 = std::__shared_weak_count::lock(v14);
      if (v6)
      {
        v7 = v6;
        v8 = v13;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *a1 = v8;
LABEL_15:
        a1[1] = v7;
        std::__shared_weak_count::__release_weak(v5);
        sub_1A8C0(v7);
        return;
      }

      goto LABEL_17;
    }

    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "PortUtilities.cpp";
        v16 = 1024;
        v17 = 1321;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Low power microphone device is expected but not available.", __p, 0x12u);
      }
    }
  }

  v5 = *(a2 + 200);
  if (!v5)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v11 = *(a2 + 192);
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = std::__shared_weak_count::lock(v5);
  if (v12)
  {
    v7 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = v11;
    goto LABEL_15;
  }

LABEL_17:
  *a1 = 0;
  a1[1] = 0;
  std::__shared_weak_count::__release_weak(v5);
}

void sub_CB7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_CB814(uint64_t a1, unint64_t *a2)
{
  result = sub_871F0(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *sub_CB8B8(void *a1, void *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = a1 + 1;
  if (a1 + 1 == a2 || sub_87164(a3, a2 + 4))
  {
    if (*a1 == v4)
    {
      v8 = v4;
LABEL_16:
      if (!*v4)
      {
        v17 = v4;
        goto LABEL_31;
      }

      v17 = v8;
      v10 = v8 + 1;
LABEL_30:
      v4 = *v10;
      if (!*v10)
      {
        goto LABEL_31;
      }

      return v4;
    }

    v7 = *v4;
    if (*v4)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v13 = v4;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    if (sub_87164(v8 + 4, a3))
    {
      goto LABEL_16;
    }

LABEL_29:
    v10 = sub_871F0(a1, &v17, a3);
    goto LABEL_30;
  }

  if (sub_87164(v4 + 4, a3))
  {
    v10 = v4 + 1;
    v9 = v4[1];
    if (v9)
    {
      v11 = v4[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v4;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      if (!sub_87164(a3, v12 + 4))
      {
        goto LABEL_29;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v17 = v12;
      v10 = v12;
    }

    else
    {
      v17 = v4;
    }

    goto LABEL_30;
  }

  v17 = v4;
  if (!v4)
  {
LABEL_31:
    operator new();
  }

  return v4;
}

void *sub_CBA88(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_CB8B8(v5, v5 + 1, v4 + 4);
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

uint64_t sub_CBB10(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = a1 + 8;
  v5 = *(a1 + 16);
  if (v5 == a1 + 8)
  {
LABEL_9:
    result = sub_CC0D0(a1 + 32, *(a2 + 32), *(a2 + 48));
    if (!result)
    {
      return result;
    }

    result = sub_CC0D0(a1 + 56, *(a2 + 56), *(a2 + 72));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 80) == *(a2 + 80))
    {
      result = sub_CC200((a1 + 88), (a2 + 88));
      if (result)
      {
        return *(a1 + 124) == *(a2 + 124);
      }

      return result;
    }

    return 0;
  }

  v6 = a2 + 8;
  while (1)
  {
    v6 = *(v6 + 8);
    result = sub_CBC1C((v5 + 16), (v6 + 16));
    if (!result)
    {
      return result;
    }

    v5 = *(v5 + 8);
    if (v5 == v4)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_CBC1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
    {
      return 0;
    }

    v2 = a1[60];
    v3 = a2[60];
    if (v2 == v3 && a1[60])
    {
      v2 = *(a1 + 14);
      v3 = *(a2 + 14);
    }

    if (v2 != v3 || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }

    v4 = *(a1 + 1);
    v5 = a1 + 16;
    if (v4 != a1 + 16)
    {
      v6 = *(a2 + 1);
      while (1)
      {
        if (*(v4 + 8) != *(v6 + 8))
        {
          return 0;
        }

        if (v4 != v6)
        {
          break;
        }

LABEL_66:
        v30 = *(v4 + 1);
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = *(v4 + 2);
            v32 = *v31 == v4;
            v4 = v31;
          }

          while (!v32);
        }

        v33 = *(v6 + 1);
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = *(v6 + 2);
            v32 = *v34 == v6;
            v6 = v34;
          }

          while (!v32);
        }

        result = 1;
        v6 = v34;
        v4 = v31;
        if (v31 == v5)
        {
          return result;
        }
      }

      v7 = *(v4 + 6);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        v9 = *(v4 + 5);
        if (v8)
        {
          v10 = *(v4 + 5);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
        v8 = 0;
      }

      v11 = *(v6 + 6);
      if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
      {
        v13 = v10 == *(v6 + 5);
        sub_1A8C0(v12);
      }

      else
      {
        v13 = v10 == 0;
      }

      if (v8)
      {
        sub_1A8C0(v8);
      }

      if (!v13)
      {
        return 0;
      }

      v14 = *(v4 + 14);
      sub_88A00(&v36, v6 + 5, "", 330);
      if (v14 != *(v36 + 304) || *(v4 + 15) != *(v6 + 15) || !sub_CBFB4(*(v4 + 8), *(v4 + 9), *(v6 + 8), *(v6 + 9)))
      {
        goto LABEL_62;
      }

      v15 = *(v4 + 11);
      v16 = *(v6 + 11);
      if (v15 != v16)
      {
        v17 = *(v15 + 12);
        v18 = *(v16 + 12);
        if (v17 == v18 && *(v15 + 12))
        {
          if (*(v15 + 8) != *(v16 + 8))
          {
            goto LABEL_62;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_62;
        }

        v19 = *(v15 + 20);
        v20 = *(v16 + 20);
        if (v19 == v20 && *(v15 + 20))
        {
          if (*(v15 + 16) != *(v16 + 16))
          {
            goto LABEL_62;
          }
        }

        else if (v19 != v20)
        {
          goto LABEL_62;
        }

        v21 = *(v15 + 28);
        v22 = *(v16 + 28);
        if (v21 == v22 && *(v15 + 28))
        {
          if (*(v15 + 24) != *(v16 + 24))
          {
            goto LABEL_62;
          }
        }

        else if (v21 != v22)
        {
          goto LABEL_62;
        }

        v23 = *(v15 + 40);
        v24 = *(v16 + 40);
        if (v23 == v24 && *(v15 + 40))
        {
          if (*(v15 + 32) != *(v16 + 32))
          {
            goto LABEL_62;
          }
        }

        else if (v23 != v24)
        {
          goto LABEL_62;
        }

        v25 = *(v15 + 52);
        v26 = *(v16 + 52);
        if (v25 == v26 && *(v15 + 52))
        {
          v25 = *(v15 + 48);
          v26 = *(v16 + 48);
        }

        if (v25 != v26)
        {
          goto LABEL_62;
        }

        v27 = *(v15 + 64);
        v28 = *(v16 + 64);
        if (v27 == v28 && *(v15 + 64))
        {
          if (*(v15 + 56) != *(v16 + 56))
          {
            goto LABEL_62;
          }
        }

        else if (v27 != v28)
        {
          goto LABEL_62;
        }

        if (!(*(*v15 + 24))(v15))
        {
          goto LABEL_62;
        }
      }

      if (*(v4 + 24) == *(v6 + 24))
      {
        v29 = v4[100] == v6[100];
        goto LABEL_63;
      }

LABEL_62:
      v29 = 0;
LABEL_63:
      if (v37)
      {
        sub_1A8C0(v37);
      }

      if (!v29)
      {
        return 0;
      }

      goto LABEL_66;
    }
  }

  return 1;
}

void sub_CBF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_CC000(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    v7 = *(a1 + 8) - *a1;
    v8 = *a2;
    return v7 == *(a2 + 8) - v8 && memcmp(*a1, v8, v7) == 0;
  }

  return result;
}

uint64_t *sub_CC060(uint64_t a1, uint64_t a2)
{
  result = sub_CC000(a1 + 72, a2 + 72);
  if (result)
  {
    v5 = *(a2 + 144);
    v6 = *(a1 + 144);
    result = (v6 == v5);
    if (v6 == v5 && v6 != 0)
    {

      return sub_2378C0(a1 + 104, (a2 + 104));
    }
  }

  return result;
}

uint64_t sub_CC0D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 16) != a3)
  {
    return 0;
  }

  v3 = (a1 + 8);
  v4 = *a1;
  if (*a1 != a1 + 8)
  {
    while (1)
    {
      v6 = v4[5];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v4[4];
        v9 = v7 ? v4[4] : 0;
      }

      else
      {
        v9 = 0;
        v7 = 0;
      }

      v10 = a2[5];
      if (!v10)
      {
        break;
      }

      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        break;
      }

      v12 = v9 == a2[4];
      sub_1A8C0(v11);
      if (v7)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v12)
      {
        v13 = v4[1];
        v14 = v4;
        if (v13)
        {
          do
          {
            v4 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v4 = v14[2];
            v15 = *v4 == v14;
            v14 = v4;
          }

          while (!v15);
        }

        v16 = a2[1];
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
            v17 = a2[2];
            v15 = *v17 == a2;
            a2 = v17;
          }

          while (!v15);
        }

        a2 = v17;
        if (v4 != v3)
        {
          continue;
        }
      }

      return v12;
    }

    v12 = v9 == 0;
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A8C0(v7);
    goto LABEL_14;
  }

  return 1;
}

BOOL sub_CC200(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      v9 = *a2;
      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_CC290(int a1)
{
  result = 1;
  if (a1 > 1919776354)
  {
    if (a1 > 1987081832)
    {
      if (a1 == 1987081833)
      {
        return result;
      }

      v4 = 30319;
    }

    else
    {
      if (a1 == 1919776355)
      {
        return result;
      }

      v4 = 26467;
    }

    v3 = v4 | 0x76700000;
  }

  else if (a1 > 1768779618)
  {
    if (a1 == 1768779619)
    {
      return result;
    }

    v3 = 1768781411;
  }

  else
  {
    if (a1 == 1735222132)
    {
      return result;
    }

    v3 = 1768057203;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

void sub_CC344(void *a1)
{
  if (a1)
  {
    sub_CC344(*a1);
    sub_CC344(a1[1]);
    v2 = a1[11];
    a1[11] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      a1[9] = v3;
      operator delete(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void sub_CC3DC(uint64_t *a1)
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
        sub_CC344(v2[4]);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_CC450(uint64_t a1)
{
  sub_CC488(a1);

  operator delete();
}

uint64_t sub_CC488(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    sub_12A2C4(a1 + 104);
  }

  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_CC4DC(uint64_t a1, void *a2, uint64_t a3, const std::string *a4, uint64_t *a5)
{
  v8 = sub_5544(8);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = a1 > 4 ? "????" : off_6BA918[a1];
        sub_53E8(__p, v10);
        v11 = (SBYTE7(v83) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3541;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Current reconfiguration context: %s.", buf, 0x1Cu);
        if (SBYTE7(v83) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v12 = sub_5544(8);
  if (*(v12 + 8))
  {
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        sub_2382C4(__p, *a2, a2 + 1);
        v14 = (SBYTE7(v83) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3543;
        *&buf[18] = 2080;
        *&buf[20] = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Updating reconfiguration context for sources: %s.", buf, 0x1Cu);
        if (SBYTE7(v83) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v15 = sub_5544(8);
  if (*(v15 + 8))
  {
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
      {
        sub_2382C4(__p, a2[3], a2 + 4);
        v17 = (SBYTE7(v83) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3545;
        *&buf[18] = 2080;
        *&buf[20] = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Updating reconfiguration context for destinations: %s.", buf, 0x1Cu);
        if (SBYTE7(v83) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v79 = a4;
  v83 = 0u;
  v84 = 0u;
  *__p = 0u;
  v18 = *a5;
  if (*a5 != a5[1])
  {
    v19 = *v18;
    v20 = *(v18 + 12);
    if (v20 == 1986556788 || v20 == 1987211117 || v20 == 1987208039)
    {
      if (sub_CB5C4())
      {
        v23 = *(v18 + 156) & 1;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      sub_CB5C4();
      v23 = 0;
    }

    sub_CB2A8(buf, v19, v23);
    v96 = a2;
    v97 = buf;
    v98 = __p;
    v99 = (a2 + 3);
    v100 = &buf[24];
    v101 = &v83 + 8;
    operator new();
  }

  if (*(&v83 + 1) != v84)
  {
    v24 = sub_5544(8);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3581;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Route shares destination hardware with existing route.", buf, 0x12u);
        }
      }
    }
  }

  if ((a1 - 5) >= 0xFFFFFFFE)
  {
    for (i = __p[0]; i != __p[1]; i += 2)
    {
      if ((*i[1] - 5) < 0xFFFFFFFE)
      {
        goto LABEL_47;
      }
    }

    if (*(&v83 + 1) == v84)
    {
      v26 = 0;
    }

    else
    {
      v28 = *(&v83 + 1) + 16;
      do
      {
        v29 = **(v28 - 8) - 5;
        v26 = v29 < 0xFFFFFFFE;
        v30 = v29 < 0xFFFFFFFE || v28 == v84;
        v28 += 16;
      }

      while (!v30);
    }
  }

  else
  {
LABEL_47:
    v26 = 1;
  }

  if (a4[1].__r_.__value_.__s.__data_[0] == 1)
  {
    v31 = __p[0];
    v32 = __p[1];
    while (v31 != v32)
    {
      if ((v79[1].__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        sub_1EC054();
      }

      v33 = *v31;
      v34 = *v31[1];
      v35 = sub_28F41C(v79);
      if ((v36 & 1) != 0 && v33[1] == HIDWORD(v35) && *v33 == v35 && (v34 - 5) < 0xFFFFFFFE)
      {
        v38 = 1;
        if (v26)
        {
          goto LABEL_74;
        }

        goto LABEL_134;
      }

      v31 += 2;
    }
  }

  v38 = 0;
  if (v26)
  {
LABEL_74:
    sub_65234(v81, a3);
    if (!v81[2])
    {
      v75 = sub_5544(14);
      v76 = *v75;
      if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 6679;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v92[0] = v92;
    v92[1] = v92;
    v92[2] = 0;
    v39 = *(&v83 + 1);
    v40 = v84;
    v86 = &v86;
    v87 = &v86;
    v88 = 0;
    if (*(&v83 + 1) == v84)
    {
      v89 = &v89;
      v90 = &v89;
      v56 = &v91;
    }

    else
    {
      do
      {
        v41 = *v39;
        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        buf[32] = 0;
        v103 = 3;
        v105[0] = 0;
        v105[1] = 0;
        v104 = v105;
        v106 = 44739242;
        v108 = 0;
        v109 = 0;
        v107 = 0;
        sub_9D49C(&v96, v41, buf);
        if (SHIBYTE(v109) < 0)
        {
          operator delete(v107);
        }

        sub_477A0(v105[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        sub_65234(buf, &v86);
        for (j = v97; j != &v96; j = j[1])
        {
          sub_88A00(v93, j + 2, "", 6694);
          v43 = *(*v93 + 144);
          if (v94)
          {
            sub_1A8C0(v94);
          }

          if (v43 != 1885433888 && !sub_108CA8(v43))
          {
            sub_652A0();
          }
        }

        *v93 = v93;
        v94 = v93;
        v95 = 0;
        v44 = *&buf[16];
        if (*&buf[16])
        {
          v46 = *buf;
          v45 = *&buf[8];
          v47 = *(*buf + 8);
          v48 = **&buf[8];
          *(v48 + 8) = v47;
          *v47 = v48;
          v49 = *v93;
          *(*v93 + 8) = v45;
          *v45 = v49;
          *(v46 + 8) = v93;
          *v93 = v46;
          v95 = v44;
          *&buf[16] = 0;
        }

        sub_65310(buf);
        sub_65310(&v96);
        sub_11DB30(&v86, v93);
        sub_65310(v93);
        v39 += 2;
      }

      while (v39 != v40);
      v50 = v88;
      v89 = &v89;
      v90 = &v89;
      v91 = 0;
      if (!v88)
      {
        goto LABEL_95;
      }

      v52 = v86;
      v51 = v87;
      v53 = v86[1];
      v54 = *v87;
      *(v54 + 8) = v53;
      *v53 = v54;
      v55 = v89;
      *(v89 + 1) = v51;
      *v51 = v55;
      v52[1] = &v89;
      v89 = v52;
      v91 = v50;
      v56 = &v88;
    }

    *v56 = 0;
LABEL_95:
    sub_65310(&v86);
    v96 = &v96;
    v97 = &v96;
    v98 = 0;
    v57 = v90;
    if (v90 == &v89)
    {
      *v93 = v93;
      v94 = v93;
      v95 = 0;
      a1 = a1;
    }

    else
    {
      v58 = 0;
      v59 = v81[1];
      do
      {
        v60 = sub_142090(v59, v81, v57 + 2);
        if (v59 == v60)
        {
          if (v58)
          {
            sub_14220C();
          }

          v61 = 1;
        }

        else
        {
          v61 = 0;
        }

        v59 = v60;
        if (v60 == v81)
        {
          break;
        }

        v62 = sub_142090(v57, &v89, v60 + 2);
        if (v57 == v62)
        {
          if (v61)
          {
            sub_14220C();
          }

          v58 = 1;
        }

        else
        {
          v58 = 0;
        }

        v57 = v62;
      }

      while (v62 != &v89);
      v63 = v97;
      *v93 = v93;
      v94 = v93;
      v95 = 0;
      a1 = a1;
      if (v97 != &v96)
      {
        do
        {
          sub_88A00(buf, v63 + 2, "", 6703);
          v64 = *(*buf + 144);
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v64 == 1886613611)
          {
            if (!sub_45168())
            {
              goto LABEL_118;
            }
          }

          else
          {
            sub_88A00(buf, v63 + 2, "", 6706);
            v65 = sub_15E7D4(*(*buf + 192), *(*buf + 200));
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if ((v65 & 1) == 0)
            {
LABEL_118:
              sub_652A0();
            }
          }

          v63 = v63[1];
        }

        while (v63 != &v96);
        if (v95)
        {
          v66 = sub_5544(8);
          v67 = *v66;
          if (*v66)
          {
            if (os_log_type_enabled(*v66, OS_LOG_TYPE_DEFAULT))
            {
              sub_8E920(&v85, v93, 1);
              v68 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
              *buf = 136315650;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 6710;
              *&buf[18] = 2080;
              *&buf[20] = v68;
              _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot persist VAD; NonShareable ports in route : %s", buf, 0x1Cu);
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }
    }

    v69 = v95;
    sub_65310(v93);
    sub_65310(&v96);
    sub_65310(&v89);
    sub_65310(v92);
    sub_65310(v81);
    if (((v69 == 0) & ~v38) == 0)
    {
      sub_262384(__p[0], __p[1]);
      if ((a1 - 5) >= 0xFFFFFFFE)
      {
        a1 = 2;
      }

      else
      {
        a1 = a1;
      }

      sub_262384(*(&v83 + 1), v84);
    }
  }

LABEL_134:
  v70 = sub_5544(8);
  if (*(v70 + 8))
  {
    v71 = *v70;
    if (*v70)
    {
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEBUG))
      {
        v72 = a1 > 4 ? "????" : off_6BA918[a1];
        sub_53E8(&v96, v72);
        v73 = SHIBYTE(v98) >= 0 ? &v96 : v96;
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3633;
        *&buf[18] = 2080;
        *&buf[20] = v73;
        _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Final Reconfiguration Context %s.", buf, 0x1Cu);
        if (SHIBYTE(v98) < 0)
        {
          operator delete(v96);
        }
      }
    }
  }

  if (*(&v83 + 1))
  {
    *&v84 = *(&v83 + 1);
    operator delete(*(&v83 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_CD4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_65310(&a41);
  sub_65310((v41 - 256));
  sub_65310(&a35);
  sub_65310(&a38);
  sub_65310(&a20);
  sub_23CBC4(&a23);
  _Unwind_Resume(a1);
}

void sub_CD5D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 56))
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RouteCache.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_25704(&v55, a2, "", 59);
  sub_25704(&v54, (a3 + 16), "", 60);
  v7 = v55;
  v9 = *(v55 + 192);
  v8 = *(v55 + 200);
  v46 = v8;
  v45 = v9;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v47 = *(a3 + 56);
    v10 = (a4 + 12);
    v11 = *(a4 + 12);
    v12 = std::__shared_weak_count::lock(v8);
    if (v12)
    {
      v13 = v12;
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v12);
      v52 = 0uLL;
      v53 = 0;
      v14 = *v10;
      v15 = std::__shared_weak_count::lock(v13);
      v16 = v15;
      if (v15)
      {
        v44 = v15;
        if (v9)
        {
          sub_25704(v51, a2, "", 36);
          sub_CE168();
          sub_53E8(buf, "Codec");
          sub_CDEB8(&v56, buf);
          v17 = v57;
          if (v57)
          {
            v18 = std::__shared_weak_count::lock(v57);
            if (v18)
            {
              v19 = v56;
            }

            else
            {
              v19 = 0;
            }

            std::__shared_weak_count::__release_weak(v17);
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v45 == v19 || *(*&v51[0] + 144) == 1885433443)
          {
            sub_2FB328(buf, *&v51[0], a4, v47, v14);
          }

          else
          {
            sub_CE1E4(buf, v45, *&v51[0], a4, v47, v14);
          }

          v21 = *buf;
          v52 = *buf;
          v53 = *&buf[16];
          v16 = *&buf[8];
          if (v18)
          {
            v43 = *buf;
            sub_1A8C0(v18);
            v21 = v43;
          }

          v9 = v21;
          if (*(&v51[0] + 1))
          {
            sub_1A8C0(*(&v51[0] + 1));
          }
        }

        else
        {
          v16 = 0;
        }

        sub_1A8C0(v44);
      }

      else
      {
        v9 = 0;
      }

      std::__shared_weak_count::__release_weak(v13);
    }

    else
    {
      v9 = 0;
      v16 = 0;
      v52 = 0uLL;
      v53 = 0;
    }

    v22 = sub_CE3DC((a4 + 120));
    v20 = v54;
    sub_CE488(v51, v22, v7, v54, &v52, v47, a4);
  }

  else
  {
    v16 = 0;
    v9 = 0;
    v47 = *(a3 + 56);
    v10 = (a4 + 12);
    v11 = *(a4 + 12);
    v52 = 0uLL;
    v53 = 0;
    memset(v51, 0, sizeof(v51));
    v20 = v54;
  }

  if (*(v20 + 144) != 1885892706 && *(v7 + 144) != 1886216820)
  {
LABEL_42:
    if (*(v7 + 144) == 1886216809)
    {
      v29 = *v10;
      if (*v10 == 1986556788 || v29 == 1987211117 || v29 == 1987208039)
      {
        if (sub_CB5C4())
        {
          v30 = *(a4 + 156) & 1;
        }
      }

      else
      {
        sub_CB5C4();
      }
    }

    v31 = a2[1];
    if (v31)
    {
      v32 = std::__shared_weak_count::lock(v31);
      if (v32)
      {
        v33 = *a2;
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v32);
      }
    }

    memset(v50, 0, sizeof(v50));
    sub_46980(v50, v9, v16, (v16 - v9) >> 2);
    *buf = 0;
    *&buf[4] = v11;
    *&buf[8] = *sub_C53D8();
    v61 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    sub_C8588(v47, buf);
    v58 = 0;
    v59 = 0;
    v34 = a2[1];
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = v35;
        v37 = *a2;
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v38 = v59;
        v58 = v37;
        v59 = v36;
        if (v38)
        {
          std::__shared_weak_count::__release_weak(v38);
        }

        sub_1A8C0(v36);
      }

      else
      {
        v39 = v59;
        v58 = 0;
        v59 = 0;
        if (v39)
        {
          std::__shared_weak_count::__release_weak(v39);
        }
      }
    }

    sub_CF934(v48, &v58, 1);
    sub_CFA20(__p, v11, (a4 + 24), v47, v48[1], v48[2], &v52);
    operator new();
  }

  if (v46)
  {
    v23 = std::__shared_weak_count::lock(v46);
    if (v23 && v45)
    {
      strcpy(buf, "pshsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v24 = sub_59410(v45);
      *(&v26 + 1) = v25;
      *&v26 = v24;
      v27 = ((v26 >> 32) & 0x1FFFFFFFFLL) == 0x100000001;
      goto LABEL_37;
    }
  }

  else
  {
    v23 = 0;
  }

  v27 = 0;
LABEL_37:
  LODWORD(v28) = sub_102988(v11);
  if (*(a4 + 268))
  {
    v28 = *(a4 + 264);
  }

  else
  {
    v28 = v28;
  }

  sub_28B594(v28, v27);
  if (v23)
  {
    sub_1A8C0(v23);
  }

  goto LABEL_42;
}

void sub_CDCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (v39)
  {
    sub_1A8C0(v39);
  }

  if (a28)
  {
    sub_1A8C0(a28);
  }

  sub_1A8C0(a11);
  std::__shared_weak_count::__release_weak(v38);
  std::__shared_weak_count::__release_weak(a14);
  if (a38)
  {
    sub_1A8C0(a38);
  }

  v42 = *(v40 - 216);
  if (v42)
  {
    sub_1A8C0(v42);
  }

  _Unwind_Resume(a1);
}

void sub_CDEB8(void *a1, const void **a2)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = sub_2450DC();
    sub_26C0(v12);
    v13 = v12 + 296;
    v14 = *(v12 + 304);
    if (v14 != v12 + 296)
    {
      while (1)
      {
        (*(**(v14 + 16) + 128))(&__p);
        v15 = *(a2 + 23);
        if (v15 >= 0)
        {
          v16 = *(a2 + 23);
        }

        else
        {
          v16 = a2[1];
        }

        v17 = v27;
        v18 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v17 = v26;
        }

        if (v16 == v17)
        {
          break;
        }

        v21 = 0;
        if (v27 < 0)
        {
          goto LABEL_38;
        }

LABEL_39:
        if (v21)
        {
          goto LABEL_42;
        }

        v14 = *(v14 + 8);
        if (v14 == v13)
        {
          goto LABEL_45;
        }
      }

      if (v15 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if ((v27 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v21 = memcmp(v19, p_p, v16) == 0;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_38:
      operator delete(__p);
      goto LABEL_39;
    }

LABEL_42:
    if (v14 == v13)
    {
LABEL_45:
      v23 = 0;
    }

    else
    {
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        *a1 = v23;
        a1[1] = v22;
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v22);
LABEL_47:
        sub_3174(v12);
        return;
      }
    }

    *a1 = v23;
    a1[1] = 0;
    goto LABEL_47;
  }

  std::__shared_mutex_base::lock_shared(&stru_709650);
  v4 = qword_709700;
  if (qword_709700 == &qword_7096F8)
  {
LABEL_21:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_50;
  }

  while (1)
  {
    (*(**(v4 + 16) + 128))(&__p);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    v7 = v27;
    v8 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v7 = v26;
    }

    if (v6 != v7)
    {
      v11 = 0;
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      operator delete(__p);
      goto LABEL_19;
    }

    if (v5 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if ((v27 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if (v8 < 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v11)
    {
      break;
    }

    v4 = *(v4 + 8);
    if (v4 == &qword_7096F8)
    {
      goto LABEL_21;
    }
  }

  v24 = *(v4 + 24);
  *a1 = *(v4 + 16);
  a1[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
  }

LABEL_50:
  std::__shared_mutex_base::unlock_shared(&stru_709650);
}

void sub_CE144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

void sub_CE168()
{
  if ((atomic_load_explicit(&qword_709730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709730))
  {
    sub_2E2164();

    __cxa_guard_release(&qword_709730);
  }
}

void sub_CE1E4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD **a4, uint64_t a5, int a6)
{
  if (**a4 == 1987011684)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    sub_C4A80(a1, a3, a4, a5, a6, 1);
    if (*a1 == *(a1 + 8))
    {
      (*(*a2 + 280))(buf, a2, *(a3 + 144));
      v9 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v9;
        operator delete(v9);
      }

      v10 = *buf;
      *a1 = *buf;
      v11 = *&buf[8];
      *(a1 + 8) = *&buf[8];
      if (v10 != v11)
      {
        v12 = sub_5544(21);
        if (*(v12 + 8))
        {
          v13 = *v12;
          if (*v12)
          {
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
            {
              sub_24C060(&__p, *a1, *(a1 + 8));
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1115;
              *&buf[18] = 2080;
              *&buf[20] = p_p;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the device's default sub-port lookup mechanism: %s.", buf, 0x1Cu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }
    }
  }
}

void sub_CE3AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_CE3D0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_CE3DC(_DWORD *a1)
{
  if (a1[1] == 1986224492)
  {
    return 1;
  }

  v1 = a1[4];
  if (v1 == 1668576377 || v1 == 1668703084)
  {
    return 1;
  }

  v4 = a1[5];
  result = 1;
  if (v4 <= 1987077986)
  {
    if (v4 == 1768057203)
    {
      return result;
    }

    v5 = 1919776355;
    goto LABEL_14;
  }

  if (v4 != 1987077987 && v4 != 1987081833)
  {
    v5 = 1987081839;
LABEL_14:
    if (v4 != v5)
    {
      return 0;
    }
  }

  return result;
}

void sub_CE488(unint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a3 + 200);
  if (!v8)
  {
    v78 = sub_5544(14);
    v79 = *v78;
    if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v91 = 1024;
      v92 = 756;
      _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_weak(v8);
  v15 = *(a7 + 12);
  v16 = *(a3 + 144);
  v17 = *(a7 + 104);
  if (v16 != 1886216809 && v16 != 1886680169 && v16 != 1886222185)
  {
    goto LABEL_31;
  }

  if (a2 && (v20 = sub_2FA650(*(a3 + 144), *(a4 + 144)), (v20 & 1) != 0))
  {
    v21 = HIDWORD(v20);
    v22 = *(&v20 + 1);
    v23 = sub_5544(21);
    v24 = sub_5544(39);
    v25 = 0;
    *buf = 0x100000002;
    v26 = *(v23 + 8);
    while (1)
    {
      v27 = *&buf[v25];
      if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
      {
        break;
      }

      v25 += 4;
      if (v25 == 8)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }
    }

    if ((v26 & v27) == 0)
    {
      v23 = v24;
    }

    if ((*(v23 + 8) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_41:
    v37 = *v23;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v91 = 1024;
      v92 = 779;
      v93 = 2048;
      v94 = v22;
      v38 = "%25s:%-5d Caller requested a check for default volume override, and we found %f for call routes.";
      goto LABEL_44;
    }
  }

  else
  {
    if ((byte_6E83BC & 1) == 0)
    {
      byte_6E83BC = 1;
      *buf = 0;
      v28 = sub_286A88(@"CodecInputGain", buf);
      v29 = *buf;
      if (!v28)
      {
        v29 = 0.0;
      }

      byte_6E83B4 = v28;
      dword_6E83B8 = LODWORD(v29);
      if (v28)
      {
        v30 = *sub_5544(14);
        v31 = v30;
        if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "RunTimeDefaults.mm";
          v91 = 1024;
          v92 = 693;
          v93 = 2080;
          v94 = COERCE_DOUBLE("CodecInputGain");
          v95 = 2048;
          *__p = *&dword_6E83B8;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
        }
      }
    }

    if (byte_6E83B4 != 1)
    {
LABEL_31:
      v83 = sub_CEDAC(v16, *(a3 + 304), a5, a6, v17, v15);
      goto LABEL_46;
    }

    v21 = dword_6E83B8;
    v32 = sub_5544(21);
    v33 = sub_5544(39);
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
        if ((v35 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_35;
      }
    }

    if ((v35 & v36) == 0)
    {
      v32 = v33;
    }

    if ((*(v32 + 8) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_35:
    v37 = *v32;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v91 = 1024;
      v92 = 787;
      v93 = 2048;
      v94 = *&v21;
      v38 = "%25s:%-5d Caller requested a check for default volume override, and we found %f.";
LABEL_44:
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, v38, buf, 0x1Cu);
    }
  }

LABEL_45:
  v83 = v21 | 0x100000000;
LABEL_46:
  v84[0] = 0;
  v84[1] = v15;
  v85 = *sub_C53D8();
  v86 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v39 = sub_C7250(a6, v84, 0);
  v81 = v40;
  v82 = v39;
  v41 = *(a3 + 304);
  if (sub_CF3FC(v16, v41))
  {
    LOBYTE(v42) = 0;
    LODWORD(v43) = 0;
    goto LABEL_76;
  }

  sub_CED20(buf, v15, v41, a5);
  v43 = sub_C63C8(a6, buf);
  v42 = HIDWORD(v43);
  if (*&__p[2])
  {
    v97 = *&__p[2];
    operator delete(*&__p[2]);
  }

  if ((v43 & 0x100000000) == 0)
  {
    v44 = sub_CF5EC(v17, v15);
    if (v45)
    {
      v48 = *(v44 + 8);
      v46 = v44 + 8;
      v47 = v48;
      if (!v48)
      {
        v53 = 0;
        goto LABEL_63;
      }

      v49 = v46;
      do
      {
        v50 = *(v47 + 28);
        v51 = v50 >= v16;
        v52 = v50 < v16;
        if (v51)
        {
          v49 = v47;
        }

        v47 = *(v47 + 8 * v52);
      }

      while (v47);
      if (v49 != v46 && *(v49 + 28) <= v16)
      {
        LODWORD(v47) = *(v49 + 32);
        v53 = 0x100000000;
        goto LABEL_63;
      }
    }

    v53 = 0;
    LODWORD(v47) = 0;
LABEL_63:
    LODWORD(v43) = v47 | v53;
    v42 = HIDWORD(v53);
  }

  if (v42)
  {
    v54 = sub_5544(21);
    v55 = sub_5544(39);
    v56 = 0;
    *buf = 0x100000002;
    v57 = *(v54 + 8);
    while (1)
    {
      v58 = *&buf[v56];
      if (((v57 & v58) != 0) != ((*(v55 + 8) & v58) != 0))
      {
        break;
      }

      v56 += 4;
      if (v56 == 8)
      {
        if ((v57 & 1) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }
    }

    if ((v57 & v58) == 0)
    {
      v54 = v55;
    }

    if (*(v54 + 8))
    {
LABEL_73:
      v59 = *v54;
      if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        v91 = 1024;
        v92 = 162;
        v93 = 2048;
        v94 = *&v43;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning minimum volume %f.", buf, 0x1Cu);
      }
    }
  }

LABEL_76:
  v60 = *(a3 + 304);
  if (sub_CF3FC(v16, v60))
  {
    LOBYTE(v61) = 0;
    LODWORD(v62) = 0;
    goto LABEL_106;
  }

  sub_CED20(buf, v15, v60, a5);
  v62 = sub_C6EA0(a6, buf);
  v61 = HIDWORD(v62);
  if (*&__p[2])
  {
    v97 = *&__p[2];
    operator delete(*&__p[2]);
  }

  if ((v62 & 0x100000000) == 0)
  {
    v63 = sub_CF790(v17, v15);
    if (v64)
    {
      v67 = *(v63 + 8);
      v65 = v63 + 8;
      v66 = v67;
      if (!v67)
      {
        v71 = 0;
        goto LABEL_93;
      }

      v68 = v65;
      do
      {
        v69 = *(v66 + 28);
        v51 = v69 >= v16;
        v70 = v69 < v16;
        if (v51)
        {
          v68 = v66;
        }

        v66 = *(v66 + 8 * v70);
      }

      while (v66);
      if (v68 != v65 && *(v68 + 28) <= v16)
      {
        LODWORD(v66) = *(v68 + 32);
        v71 = 0x100000000;
        goto LABEL_93;
      }
    }

    v71 = 0;
    LODWORD(v66) = 0;
LABEL_93:
    LODWORD(v62) = v66 | v71;
    v61 = HIDWORD(v71);
  }

  if (v61)
  {
    v72 = sub_5544(21);
    v73 = sub_5544(39);
    v74 = 0;
    *buf = 0x100000002;
    v75 = *(v72 + 8);
    while (1)
    {
      v76 = *&buf[v74];
      if (((v75 & v76) != 0) != ((*(v73 + 8) & v76) != 0))
      {
        break;
      }

      v74 += 4;
      if (v74 == 8)
      {
        if ((v75 & 1) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }
    }

    if ((v75 & v76) == 0)
    {
      v72 = v73;
    }

    if (*(v72 + 8))
    {
LABEL_103:
      v77 = *v72;
      if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        v91 = 1024;
        v92 = 139;
        v93 = 2048;
        v94 = *&v62;
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning maximum volume %f.", buf, 0x1Cu);
      }
    }
  }

LABEL_106:
  *a1 = v43 | (v42 << 32);
  a1[1] = v62 | (v61 << 32);
  a1[2] = v83 & 0xFFFFFFFFFFLL;
  a1[3] = v82;
  a1[4] = v81;
  a1[5] = 0;
}

void sub_CECE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CED20(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = *sub_C53D8();
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_46980(a1 + 32, *a4, a4[1], (a4[1] - *a4) >> 2);
  sub_C5CAC(a1);
  return a1;
}

void sub_CED90(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_CEDAC(unsigned int a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  sub_CED20(v29, a6, a2, a3);
  v10 = sub_CEFF8(a4, v29);
  v11 = HIDWORD(v10);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if ((v10 & 0x100000000) == 0)
  {
    v12 = sub_CF258(a5, a6);
    if (v13)
    {
      v16 = *(v12 + 8);
      v14 = v12 + 8;
      v15 = v16;
      if (!v16)
      {
        v21 = 0;
        goto LABEL_16;
      }

      v17 = v14;
      do
      {
        v18 = *(v15 + 28);
        v19 = v18 >= a1;
        v20 = v18 < a1;
        if (v19)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v20);
      }

      while (v15);
      if (v17 != v14 && *(v17 + 28) <= a1)
      {
        LODWORD(v15) = *(v17 + 32);
        v21 = 0x100000000;
        goto LABEL_16;
      }
    }

    v21 = 0;
    LODWORD(v15) = 0;
LABEL_16:
    LODWORD(v10) = v15 | v21;
    v11 = HIDWORD(v21);
  }

  if (v11)
  {
    v22 = sub_5544(21);
    v23 = sub_5544(39);
    v24 = 0;
    *v29 = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *&v29[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

    if (*(v22 + 8))
    {
LABEL_26:
      v27 = *v22;
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 136315650;
        *&v29[4] = "RoutingHandlerUtilities_Aspen.cpp";
        v30 = 1024;
        v31 = 185;
        v32 = 2048;
        v33 = *&v10;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning default volume %f.", v29, 0x1Cu);
      }
    }

LABEL_29:
    if (*&v10 == 1.1755e-38)
    {
      LOBYTE(v11) = 0;
      LODWORD(v10) = 0;
    }
  }

  return v10 | (v11 << 32);
}

void sub_CEFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_CEFF8(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v10) = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_3FA7A4(v7 + 96, *(a2 + 24), (a2 + 32));
    v9 = v8;
    v10 = HIDWORD(v8);
    if ((v8 & 0x100000000) != 0)
    {
      return v9 | (v10 << 32);
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2864;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_CEFF8(a1, buf);
    v9 = v17;
    v10 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return v9 | (v10 << 32);
}

void sub_CF224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_CF258(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 32;
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
  if (v5 != a1 + 32 && *(v5 + 32) <= a2 && *(v5 + 96) == 1)
  {
    v9 = *(v5 + 88);
    v10 = *(v5 + 96);
    v11 = v9 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    else
    {
      v12 = sub_5544(21);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315650;
            v19 = "RoutingTypes.cpp";
            v20 = 1024;
            v21 = 582;
            v22 = 2080;
            v23 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_CF258(a1, 1768776806);
      v11 = v9 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v11 | v9;
}

uint64_t sub_CF3FC(int a1, int a2)
{
  if (sub_48EDC())
  {
    v4 = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
    if (!result)
    {
      return result;
    }

    v4 = MGGetBoolAnswer();
  }

  result = 0;
  if (a1 == 1886222185 && v4)
  {
    result = 0;
    if (a2 > 1647521841)
    {
      if (a2 <= 1647718501)
      {
        if (a2 == 1647521842)
        {
          return result;
        }

        v6 = 1647522096;
      }

      else
      {
        if ((a2 - 1647718502) < 2 || a2 == 1752709424)
        {
          return result;
        }

        v6 = 2004367664;
      }
    }

    else if (a2 > 1634231919)
    {
      if (a2 == 1634231920 || a2 == 1635085420)
      {
        return result;
      }

      v6 = 1647393080;
    }

    else
    {
      if (a2 == 1214329654 || a2 == 1214394677)
      {
        return result;
      }

      v6 = 1633759844;
    }

    if (a2 != v6)
    {
      v7 = sub_5544(20);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "RoutingHandlerUtilities_Aspen.cpp";
          v11 = 1024;
          v12 = 109;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Wired Generic USB Device detected... Bypassing input volume range.", &v9, 0x12u);
        }
      }

      return 1;
    }
  }

  return result;
}

unint64_t sub_CF5EC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 32;
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
  if (v5 != a1 + 32 && *(v5 + 32) <= a2 && *(v5 + 80) == 1)
  {
    v9 = *(v5 + 72);
    v10 = *(v5 + 80);
    v11 = v9 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    else
    {
      v12 = sub_5544(21);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315650;
            v19 = "RoutingTypes.cpp";
            v20 = 1024;
            v21 = 558;
            v22 = 2080;
            v23 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_CF5EC(a1, 1768776806);
      v11 = v9 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v11 | v9;
}

unint64_t sub_CF790(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 32;
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
  if (v5 != a1 + 32 && *(v5 + 32) <= a2 && *(v5 + 64) == 1)
  {
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);
    v11 = v9 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    else
    {
      v12 = sub_5544(21);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315650;
            v19 = "RoutingTypes.cpp";
            v20 = 1024;
            v21 = 534;
            v22 = 2080;
            v23 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_CF790(a1, 1768776806);
      v11 = v9 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v11 | v9;
}

void *sub_CF934(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_652A0();
  }

  return result;
}

uint64_t sub_CF9A0(uint64_t a1, int a2, int a3, _OWORD *a4, int a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_46980(a1 + 32, *a6, a6[1], (a6[1] - *a6) >> 2);
  sub_C5CAC(a1);
  return a1;
}

void sub_CFA04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFA20(_BYTE *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6 == 1)
  {
    sub_88A00(&v13, (a5 + 16), "", 1421);
    v12 = *(v13 + 304);
    if (v14)
    {
      sub_1A8C0(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_CF9A0(&v13, 0, a2, a3, v12, a7);
  sub_C8A80(a1, a4, &v13);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_CFADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CFAF8(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  result = 1;
  if (a2->mSelector > 1953790308)
  {
    if (mSelector == 1953790309)
    {
      return result;
    }

    if (mSelector != 1986225268 && mSelector != 1986225266)
    {
LABEL_5:
      sub_4DFC0(a1);
      return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
    }
  }

  else if (mSelector != 1668576114)
  {
    if (mSelector == 1853059619)
    {
      return result;
    }

    if (mSelector != 1953002354)
    {
      goto LABEL_5;
    }
  }

  return sub_2993E8();
}

_BYTE *sub_CFBCC(_BYTE *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_13;
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
  if (v7 != a2 + 8 && *(v7 + 32) <= a3 && *(v7 + 72) == 1)
  {

    return sub_C90FC(result, v7 + 48);
  }

  else
  {
LABEL_13:
    if (a3 == 1768776806)
    {
      *result = 0;
      result[24] = 0;
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
            v13 = v15 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v17 = "RoutingTypes.cpp";
            v18 = 1024;
            v19 = 837;
            v20 = 2080;
            v21 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      return sub_CFBCC(v5, a2, 1768776806);
    }
  }

  return result;
}

void sub_CFDB4(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  operator delete();
}

uint64_t sub_CFE14(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      if (v5 == a4)
      {
        v6 = 1;
      }

      else
      {
        v7 = -1;
        v8 = a4;
        do
        {
          v8 = v8[1];
          ++v7;
        }

        while (v8 != v5);
        v6 = v7 + 2;
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v9 = v5[1];
    v10 = *a4;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *a2;
    *(v11 + 8) = a4;
    *a4 = v11;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void *sub_CFE94(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v3[4];
    if (v7)
    {
      v9 = v3[4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v10 = a3[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a3;
      sub_1A8C0(v11);
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v12 = 0;
  if (v7)
  {
LABEL_12:
    sub_1A8C0(v7);
  }

LABEL_13:
  if (v9 >= v12)
  {
    return v3;
  }

  v13 = 1;
LABEL_15:
  if (v13)
  {
    v14 = 0;
    v15 = v3;
    while (v15 != a2)
    {
      v16 = v15[1];
      v17 = v15;
      if (v16)
      {
        do
        {
          v15 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v15 = v17[2];
          v18 = *v15 == v17;
          v17 = v15;
        }

        while (!v18);
      }

      if (++v14 == v13)
      {
        v19 = v13;
        v14 = v13;
        goto LABEL_36;
      }
    }

    v19 = v13;
  }

  else
  {
    v19 = 0;
    v14 = 0;
    v15 = v3;
  }

LABEL_36:
  while (v15 != a2)
  {
    v23 = v15[5];
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      v25 = v15[4];
      if (v24)
      {
        v26 = v15[4];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0;
    }

    v27 = a3[1];
    if (!v27 || (v28 = std::__shared_weak_count::lock(v27)) == 0)
    {
      v29 = 0;
      if (!v24)
      {
        goto LABEL_48;
      }

LABEL_47:
      sub_1A8C0(v24);
      goto LABEL_48;
    }

    v29 = *a3;
    sub_1A8C0(v28);
    if (v24)
    {
      goto LABEL_47;
    }

LABEL_48:
    if (v26 >= v29)
    {
      goto LABEL_52;
    }

    v13 *= 2;
    v3 = v15;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = 0;
    v19 = -v13;
    v20 = 1;
    if (-v13 > 1)
    {
      v20 = -v13;
    }

    while (v15 != a2)
    {
      v21 = *v15;
      v22 = v15;
      if (*v15)
      {
        do
        {
          v15 = v21;
          v21 = v21[1];
        }

        while (v21);
      }

      else
      {
        do
        {
          v15 = v22[2];
          v18 = *v15 == v22;
          v22 = v15;
        }

        while (v18);
      }

      if (++v14 == v20)
      {
        v14 = v20;
        goto LABEL_36;
      }
    }
  }

  v15 = a2;
LABEL_52:
  v30 = v14 - v19 + v13;
  if (v30)
  {
    if (v30 == 1)
    {
      return v15;
    }

    while (2)
    {
      v31 = v30 >> 1;
      v32 = v3;
      if (v30 >= 2)
      {
        v33 = v30 >> 1;
        v34 = v3;
        do
        {
          v35 = v34[1];
          if (v35)
          {
            do
            {
              v32 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v32 = v34[2];
              v18 = *v32 == v34;
              v34 = v32;
            }

            while (!v18);
          }

          v34 = v32;
        }

        while (v33-- > 1);
      }

      v37 = v32[5];
      if (v37)
      {
        v38 = std::__shared_weak_count::lock(v37);
        v39 = v32[4];
        if (v38)
        {
          v40 = v32[4];
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
        v38 = 0;
      }

      v41 = a3[1];
      if (v41 && (v42 = std::__shared_weak_count::lock(v41)) != 0)
      {
        v43 = *a3;
        sub_1A8C0(v42);
        if (!v38)
        {
LABEL_75:
          if (v40 < v43)
          {
            v44 = v32[1];
            if (v44)
            {
              do
              {
                v3 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v3 = v32[2];
                v18 = *v3 == v32;
                v32 = v3;
              }

              while (!v18);
            }

            v31 = v30 + ~v31;
          }

          v30 = v31;
          if (!v31)
          {
            return v3;
          }

          continue;
        }
      }

      else
      {
        v43 = 0;
        if (!v38)
        {
          goto LABEL_75;
        }
      }

      break;
    }

    sub_1A8C0(v38);
    goto LABEL_75;
  }

  return v3;
}

void *sub_D01A8(void *result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_CB8B8(*a4, a4[1], (*a2 + 32));
      a4[1] = result;
      v9 = result[1];
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
          v10 = result[2];
          v11 = *v10 == result;
          result = v10;
        }

        while (!v11);
      }

      a4[1] = v10;
      v12 = *a2;
      v13 = *(*a2 + 8);
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

      *a2 = v14;
      v15 = *a3;
      v16 = *(*a3 + 8);
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
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v18 = 0;
      *a3 = v17;
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

  *a5 = v18;
  return result;
}

void sub_D02B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_1416D8(i))
    {
      i -= 144;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_D0330(void ***a1)
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
        v6 = v4 - 328;
        sub_262018((v4 - 320));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_D03B8(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_12790(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_48204(a1, v10);
    }

    sub_189A00();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v14 = *(v11 - 1);
      v11 -= 3;
      if (v14 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(v8++, v6++);
        v12 -= 24;
      }

      while (v12);
      v11 = a1[1];
    }

    a1[1] = sub_48304(a1, v13, a3, v11);
  }
}

void sub_D055C(void *a1, char *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v9 = *(v2 + 4);
        *(v6 + 4) = v9;
        if (v6 != v2)
        {
          sub_D03B8(v6 + 3, *(v2 + 3), *(v2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 4) - *(v2 + 3)) >> 3));
          v9 = *(v6 + 4);
        }

        v8 = *v6;
        *(v6 + 1) = v9;
        v10 = sub_136230(a1, v9, v6 + 4);
        sub_136590(a1, v6, v10);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    sub_4B0A0(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_D06C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_4B0A0(v1);
  __cxa_rethrow();
}

uint64_t sub_D0710(uint64_t a1)
{
  *a1 = off_6BC258;
  if (*(a1 + 496) == 1 && *(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  return sub_9DB70(a1);
}

BOOL sub_D077C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_D0834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void sub_D086C(std::string *a1, int *a2)
{
  sub_53E8(v41, "INACTIVE");
  sub_53E8(v42, "INITIAL_ROUTE");
  sub_53E8(v43, "PARTNER_ROUTE");
  v4 = &v41[24 * *a2];
  std::operator+<char>();
  v5 = std::string::append(&v34, ", ApplyNonStereoHFPCulling: ", 0x1CuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v33, *(a2 + 4));
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v33;
  }

  else
  {
    v7 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v35, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v36, ", Disallowed port: ", 0x13uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = *(a2 + 2);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *(a2 + 1);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  snprintf(__str, 0x13uLL, "%p", v15);
  sub_53E8(__p, __str);
  if ((v32 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v17 = v32;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v37, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v38, ", Allowed port: ", 0x10uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a2 + 4);
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = *(a2 + 3);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  snprintf(__s, 0x13uLL, "%p", v24);
  sub_53E8(__str, __s);
  if ((v46 & 0x80u) == 0)
  {
    v25 = __str;
  }

  else
  {
    v25 = *__str;
  }

  if ((v46 & 0x80u) == 0)
  {
    v26 = v46;
  }

  else
  {
    v26 = v45;
  }

  v27 = std::string::append(&v39, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v40, "}", 1uLL);
  *a1 = *v29;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(*__str);
  }

  if (v23)
  {
    sub_1A8C0(v23);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_1A8C0(v14);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != -72; i -= 24)
  {
    if (v43[i + 23] < 0)
    {
      operator delete(*&v43[i]);
    }
  }
}

void sub_D0C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v63 - 185) < 0)
  {
    operator delete(*(v63 - 208));
  }

  if (*(v63 - 81) < 0)
  {
    operator delete(*(v63 - 104));
  }

  if (v62)
  {
    sub_1A8C0(v62);
  }

  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v61)
  {
    sub_1A8C0(v61);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v65 = (v63 - 105);
  v66 = -72;
  v67 = (v63 - 105);
  while (1)
  {
    v68 = *v67;
    v67 -= 24;
    if (v68 < 0)
    {
      operator delete(*(v65 - 23));
    }

    v65 = v67;
    v66 += 24;
    if (!v66)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_D0D6C()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 176))
    {
      JUMPOUT(0xD0D4CLL);
    }
  }
}

uint64_t sub_D0D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_7FB94(a1, a2);
  *(v4 + 464) = *(a2 + 464);
  v5 = (v4 + 480);
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 472) = v4 + 480;
  v6 = *(a2 + 472);
  if (v6 != (a2 + 480))
  {
    do
    {
      v7 = *v5;
      v8 = (v4 + 480);
      if (*(a1 + 472) == v5)
      {
        goto LABEL_8;
      }

      v9 = *v5;
      v10 = (v4 + 480);
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = v6[4];
      if (v8[4] < v12)
      {
LABEL_8:
        if (v7)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = (v4 + 480);
        }
      }

      else
      {
        v13 = (v4 + 480);
        if (v7)
        {
          v13 = (v4 + 480);
          while (1)
          {
            while (1)
            {
              v16 = v7;
              v17 = v7[4];
              if (v12 >= v17)
              {
                break;
              }

              v7 = *v16;
              v13 = v16;
              if (!*v16)
              {
                goto LABEL_12;
              }
            }

            if (v17 >= v12)
            {
              break;
            }

            v13 = v16 + 1;
            v7 = v16[1];
            if (!v7)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_12:
        operator new();
      }

      v14 = v6[1];
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
          v15 = v6[2];
          v11 = *v15 == v6;
          v6 = v15;
        }

        while (!v11);
      }

      v6 = v15;
    }

    while (v15 != (a2 + 480));
  }

  sub_D11D4((a1 + 496), (a2 + 496));
  sub_D11D4((a1 + 520), (a2 + 520));
  sub_D11D4((a1 + 544), (a2 + 544));
  sub_44E44((a1 + 568), a2 + 568);
  sub_44E44((a1 + 592), a2 + 592);
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  if (*(a2 + 624) == 1)
  {
    sub_98A64((a1 + 616), *(a2 + 616));
    *(a1 + 624) = 1;
  }

  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  v18 = *(a2 + 632);
  v19 = *(a2 + 640);
  if (v19 != v18)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 4);
    if (v20 < 0x555555555555556)
    {
      sub_3A9764(v20);
    }

    sub_189A00();
  }

  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  if (*(a2 + 672) == 1)
  {
    sub_98A64((a1 + 664), *(a2 + 664));
    *(a1 + 672) = 1;
  }

  *(a1 + 680) = *(a2 + 680);
  v21 = *(a2 + 688);
  if (v21)
  {
    CFRetain(*(a2 + 688));
  }

  *(a1 + 688) = v21;
  v22 = *(a2 + 696);
  *(a1 + 700) = *(a2 + 700);
  *(a1 + 696) = v22;
  *(a1 + 704) = *(a2 + 704);
  v23 = *(a2 + 712);
  *(a1 + 712) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 720) = *(a2 + 720);
  v24 = *(a2 + 728);
  *(a1 + 728) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
  }

  sub_D1368(a1 + 736, a2 + 736);
  *(a1 + 768) = 0;
  *(a1 + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_75848((a1 + 768), a2 + 768);
    *(a1 + 792) = 1;
  }

  v25 = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 800) = v25;
  return a1;
}

void sub_D10F0(_Unwind_Exception *a1)
{
  if (*(v1 + 792) == 1)
  {
    sub_76304((v1 + 768));
  }

  if (*(v1 + 760) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *(v1 + 744) = v5;
      operator delete(v5);
    }
  }

  sub_3AA01C(v1 + 696);
  sub_46228((v1 + 688));
  sub_3A6658(v1 + 664);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 640) = v6;
    operator delete(v6);
  }

  sub_3A6658(v1 + 616);
  sub_477A0(*(v1 + 600));
  sub_477A0(*(v1 + 576));
  sub_477A0(*(v1 + 552));
  sub_477A0(*(v1 + 528));
  sub_477A0(*(v1 + 504));
  sub_477A0(*(v1 + 480));
  sub_4AF90(v1);
  _Unwind_Resume(a1);
}

void *sub_D11D4(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

uint64_t sub_D1368(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_46980(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_D13C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D13F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_44E98(a1, a2);
  *(v4 + 464) = *(a2 + 464);
  *(v4 + 472) = *(a2 + 472);
  v5 = v4 + 480;
  v6 = *(a2 + 480);
  v7 = *(a2 + 488);
  *(v4 + 480) = v6;
  *(v4 + 488) = v7;
  if (v7)
  {
    *(v6 + 16) = v5;
    *(a2 + 472) = a2 + 480;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
  }

  else
  {
    *(a1 + 472) = v5;
  }

  *(a1 + 496) = *(a2 + 496);
  v8 = a1 + 504;
  v9 = *(a2 + 504);
  v10 = *(a2 + 512);
  *(a1 + 504) = v9;
  *(a1 + 512) = v10;
  if (v10)
  {
    *(v9 + 16) = v8;
    *(a2 + 496) = a2 + 504;
    *(a2 + 504) = 0;
    *(a2 + 512) = 0;
  }

  else
  {
    *(a1 + 496) = v8;
  }

  *(a1 + 520) = *(a2 + 520);
  v11 = a1 + 528;
  v12 = *(a2 + 528);
  *(a1 + 528) = v12;
  v13 = *(a2 + 536);
  *(a1 + 536) = v13;
  if (v13)
  {
    *(v12 + 16) = v11;
    *(a2 + 520) = a2 + 528;
    *(a2 + 528) = 0;
    *(a2 + 536) = 0;
  }

  else
  {
    *(a1 + 520) = v11;
  }

  *(a1 + 544) = *(a2 + 544);
  v14 = a1 + 552;
  v15 = *(a2 + 552);
  *(a1 + 552) = v15;
  v16 = *(a2 + 560);
  *(a1 + 560) = v16;
  if (v16)
  {
    *(v15 + 16) = v14;
    *(a2 + 544) = a2 + 552;
    *(a2 + 552) = 0;
    *(a2 + 560) = 0;
  }

  else
  {
    *(a1 + 544) = v14;
  }

  *(a1 + 568) = *(a2 + 568);
  v17 = a1 + 576;
  v18 = *(a2 + 576);
  *(a1 + 576) = v18;
  v19 = *(a2 + 584);
  *(a1 + 584) = v19;
  if (v19)
  {
    *(v18 + 16) = v17;
    *(a2 + 568) = a2 + 576;
    *(a2 + 576) = 0;
    *(a2 + 584) = 0;
  }

  else
  {
    *(a1 + 568) = v17;
  }

  *(a1 + 592) = *(a2 + 592);
  v20 = a1 + 600;
  v21 = *(a2 + 600);
  *(a1 + 600) = v21;
  v22 = *(a2 + 608);
  *(a1 + 608) = v22;
  if (v22)
  {
    *(v21 + 16) = v20;
    *(a2 + 592) = a2 + 600;
    *(a2 + 600) = 0;
    *(a2 + 608) = 0;
  }

  else
  {
    *(a1 + 592) = v20;
  }

  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  if (*(a2 + 624) == 1)
  {
    *(a1 + 616) = *(a2 + 616);
    *(a2 + 616) = 0;
    *(a1 + 624) = 1;
  }

  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  if (*(a2 + 672) == 1)
  {
    *(a1 + 664) = *(a2 + 664);
    *(a2 + 664) = 0;
    *(a1 + 672) = 1;
  }

  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 688) = 0;
  v23 = *(a2 + 696);
  *(a1 + 700) = *(a2 + 700);
  *(a1 + 696) = v23;
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0uLL;
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0uLL;
  *(a1 + 736) = 0;
  *(a1 + 760) = 0;
  if (*(a2 + 760) == 1)
  {
    *(a1 + 752) = 0;
    *(a1 + 736) = 0uLL;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a2 + 752) = 0;
    *(a2 + 736) = 0uLL;
    *(a1 + 760) = 1;
  }

  *(a1 + 768) = 0;
  *(a1 + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_3A9FD8((a1 + 768), (a2 + 768));
    *(a1 + 792) = 1;
  }

  v24 = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 800) = v24;
  return a1;
}

void sub_D169C(void *a1)
{
  if (a1)
  {
    sub_D169C(*a1);
    sub_D169C(a1[1]);
    sub_65310(a1 + 5);

    operator delete(a1);
  }
}

void sub_D16F0(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_D1734(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v53 = sub_5544(14);
    v54 = sub_468EC(1, *v53, *(v53 + 8));
    v55 = v54;
    if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4332;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
    }
  }

  if (!*a3)
  {
    if (sub_3A1764(a3[1]))
    {
      v31 = a3[1];
      sub_27A4();
      v32 = atomic_load(&qword_6E9558);
      if (v32 != pthread_self())
      {
        v59 = sub_5544(14);
        v60 = sub_468EC(1, *v59, *(v59 + 8));
        v61 = v60;
        if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4950;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
        }
      }

      v34 = a2[18];
      for (i = a2[19]; v34 != i; ++v34)
      {
        v35 = *v34;
        v36 = (*(**v34 + 544))(*v34);
        v37 = atomic_load((v36 + 96));
        if (v37 != pthread_self())
        {
          v38 = atomic_load((v36 + 200));
          if (v38 != pthread_self())
          {
            continue;
          }
        }

        v39 = sub_5544(14);
        v40 = sub_468EC(1, *v39, *(v39 + 8));
        v41 = v40;
        if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v42 = *(v35 + 8);
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4955;
          v76 = 1024;
          *v77 = v42;
          *&v77[4] = 2048;
          *&v77[6] = v35;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The IO monitor for device ID %u (%p) is held by this thread.", buf, 0x22u);
        }
      }

      if (v31 == 1919186544 || v31 == 1920360819)
      {
        sub_AEEB4(buf, a2[15]);
        sub_AF140(&v67, a2, buf);
        sub_76304(buf);
      }

      else
      {
        v67 = 0;
      }

      if (a2[24])
      {
        v62 = sub_5544(14);
        v63 = sub_468EC(1, *v62, *(v62 + 8));
        v64 = v63;
        if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4961;
          _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: route changes in progress!.", buf, 0x12u);
        }
      }

      sub_27A4();
      (*(qword_6E94F8 + 24))();
      v65 = a3[1];
      sub_D2794(buf, &v65);
      v47 = sub_BF6FC(a2[14]);
      v48 = sub_BF890(a2[14]);
      v49 = _os_feature_enabled_impl();
      if (v47 == 1668509810)
      {
        v50 = 1668309362;
      }

      else
      {
        v50 = v47;
      }

      v51 = v50 == 1668114797;
      v52 = v50 | (v48 << 32);
      if ((v51 & v49) != 0)
      {
        v52 = 0x64706C62636D756CLL;
      }

      v72[0] = v52;
      v72[1] = 0;
      sub_D2868(&buf[16], v72);
      v71 = sub_BF890(a2[14]);
      sub_D293C(&v77[12], "mode", &v71);
      memset(&__p, 0, sizeof(__p));
      sub_D2A08(&__p, buf, &v80, 3uLL);
    }

    sub_16BA5C(buf, a2, a3);
  }

  sub_27A4();
  v7 = atomic_load(&qword_6E9558);
  if (v7 != pthread_self())
  {
    v56 = sub_5544(14);
    v57 = sub_468EC(1, *v56, *(v56 + 8));
    v58 = v57;
    if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5008;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
    }
  }

  v9 = a2[18];
  for (j = a2[19]; v9 != j; v9 += 8)
  {
    v10 = *v9;
    v72[0] = *(*v9 + 384);
    v11 = sub_DA5E8((a2 + 22), v72[0], HIDWORD(v72[0]));
    v12 = (*(*v10 + 544))(v10);
    v13 = atomic_load((v12 + 96));
    v14 = pthread_self();
    if (a2 + 23 == v11)
    {
      if (v13 != v14)
      {
        v23 = atomic_load((v12 + 200));
        if (v23 != pthread_self())
        {
          continue;
        }
      }

      v24 = sub_5544(14);
      v25 = sub_468EC(1, *v24, *(v24 + 8));
      if (!v25)
      {
        goto LABEL_25;
      }

      v18 = v25;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_68108(&__p, v72);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v27 = v10[2];
        *buf = 136316162;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5022;
        v76 = 2080;
        *v77 = p_p;
        *&v77[8] = 1024;
        *&v77[10] = v27;
        v78 = 2048;
        v79 = v10;
        v21 = v18;
        v22 = "%25s:%-5d ASSERTION FAILURE: route is not changing on device %s, but the IO monitor for device ID %u (%p) is already held by this thread.";
        goto LABEL_22;
      }
    }

    else
    {
      if (v13 == v14)
      {
        continue;
      }

      v15 = atomic_load((v12 + 200));
      if (v15 == pthread_self())
      {
        continue;
      }

      v16 = sub_5544(14);
      v17 = sub_468EC(1, *v16, *(v16 + 8));
      if (!v17)
      {
LABEL_25:
        v18 = 0;
        goto LABEL_26;
      }

      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_68108(&__p, v72);
        v19 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        v20 = v10[2];
        *buf = 136316162;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5018;
        v76 = 2080;
        *v77 = v19;
        *&v77[8] = 1024;
        *&v77[10] = v20;
        v78 = 2048;
        v79 = v10;
        v21 = v18;
        v22 = "%25s:%-5d ASSERTION FAILURE: route is changing on device %s, but the IO monitor for device ID %u (%p) is not held by this thread.";
LABEL_22:
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x2Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_26:
  }

  sub_27A4();
  (*(qword_6E94F8 + 24))();
  if (a2[24])
  {
    __p.__r_.__value_.__r.__words[0] = off_6CDFF0;
    __p.__r_.__value_.__l.__size_ = a2;
    v74 = &__p;
    sub_51FD0(buf, 1, &__p);
    sub_4C70(&__p);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v28 = a2[18];
    v29 = a2[19];
    if (v28 == v29)
    {
      v44 = 0;
      v43 = 0;
    }

    else
    {
      do
      {
        v30 = *v28;
        if (a2 + 23 != sub_DA5E8((a2 + 22), *(*v28 + 96), *(*v28 + 97)))
        {
          sub_221830(v30, &v68);
        }

        ++v28;
      }

      while (v28 != v29);
      v43 = v68;
      v44 = v69;
    }

    sub_DED5C(v43, v44);
    v72[0] = &v68;
    sub_DECD0(v72);
    sub_53BA4(buf);
  }

  sub_3A4124(a2, a3);
  v45 = sub_3A557C(*a3);
  *buf = 0;
  *&buf[8] = 0;
  v46 = sub_69CE8(buf);
  v65 = v45;
  v66 = v46;
  sub_D99B8(a1, "Route change failed", &v65);
  if (v46)
  {
    CFRelease(v46);
  }
}

void sub_D2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  a25 = &a29;
  sub_65830(&a25);
  sub_46228(&a18);
  _Unwind_Resume(v29);
}

void sub_D2770(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(v2);
}

uint64_t sub_D2794(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "route change reason");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_D2834(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D2868(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "category");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_D2908(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D293C(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_D29D4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void *sub_D2A98(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = CFRetain(*a2);
  }

  *v3 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    result = CFRetain(v5);
  }

  v3[1] = v5;
  return result;
}

void sub_D2AF4(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  if (a3 != a4)
  {
    for (i = a3; i != a4; i += 48)
    {
      v8 = sub_5544(2);
      if (*(v8 + 8))
      {
        v9 = *v8;
        if (v9)
        {
          v10 = v9;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v23, *i);
            v24 = *(i + 4);
            v25 = *(i + 12);
            sub_22CE0(&__p);
          }
        }
      }

      v11 = sub_758D4(*i, 0, *a2, a2[1]);
      if (v11)
      {
        v12 = v11;
        if (*(i + 4) == 1853059700)
        {
          if (*(i + 32) != 8)
          {
            v19 = sub_5544(14);
            v20 = sub_468EC(1, *v19, *(v19 + 8));
            v21 = v20;
            if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v28 = "VirtualAudio_PlugIn.mm";
              v29 = 1024;
              v30 = 5407;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Precondition failure.");
          }

          sub_D3304(v23, v11, **(i + 40));
          v13 = LOBYTE(v23[0]);
          sub_4B0F4(v23[2]);
          if (v13 == 1)
          {
            v23[0] = *(v12 + 384);
            sub_147938(a1, v23[0], HIDWORD(v23[0]));
          }
        }

        if (!AudioObjectSetPropertyData(*(v12 + 8), (i + 4), *(i + 16), *(i + 24), *(i + 32), *(i + 40)))
        {
          continue;
        }

        v14 = sub_5544(2);
        if ((*(v14 + 8) & 1) == 0)
        {
          continue;
        }

        v15 = *v14;
        if (!v15)
        {
          continue;
        }

        v16 = v15;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(i + 4);
          v25 = *(i + 12);
          sub_22CE0(v23);
        }
      }

      else
      {
        v17 = sub_5544(2);
        if ((*(v17 + 8) & 1) == 0)
        {
          continue;
        }

        v18 = *v17;
        if (!v18)
        {
          continue;
        }

        v16 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v28 = "VirtualAudio_PlugIn.mm";
          v29 = 1024;
          v30 = 5399;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client specified a device hint for a device type that does not exist in the new route.", buf, 0x12u);
        }
      }
    }
  }
}

void sub_D3304(uint64_t a1, uint64_t a2, double a3)
{
  (*(**(a2 + 872) + 200))(&v25);
  v24 = 0.0;
  sub_D46DC(&v25, &v24);
  v6 = v24;
  if (v24 == a3)
  {
    sub_D67EC(v23, &v25);
  }

  else
  {
    (*(**(a2 + 872) + 208))(v23, a3);
  }

  if (v6 == a3)
  {
    goto LABEL_35;
  }

  if (v26[1] != v23[2])
  {
    v22 = 1;
    goto LABEL_37;
  }

  v7 = v25;
  if (v25 == v26)
  {
LABEL_35:
    v22 = 0;
    goto LABEL_37;
  }

  v8 = v23[0];
  do
  {
    v9 = *(v7 + 5);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      v11 = *(v7 + 4);
      if (v10)
      {
        v12 = *(v7 + 4);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    v13 = *(v8 + 5);
    if (!v13 || (v14 = std::__shared_weak_count::lock(v13)) == 0)
    {
      v15 = v12 == 0;
      if (!v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      sub_1A8C0(v10);
      goto LABEL_19;
    }

    v15 = v12 == *(v8 + 4);
    sub_1A8C0(v14);
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = v7[6] == v8[6] && v15;
    if (!v16)
    {
      break;
    }

    v17 = *(v7 + 1);
    v18 = v7;
    if (v17)
    {
      do
      {
        v7 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v7 = *(v18 + 2);
        v19 = *v7 == v18;
        v18 = v7;
      }

      while (!v19);
    }

    v20 = *(v8 + 1);
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
        v21 = *(v8 + 2);
        v19 = *v21 == v8;
        v8 = v21;
      }

      while (!v19);
    }

    v8 = v21;
  }

  while (v7 != v26);
  v22 = !v16;
LABEL_37:
  *a1 = v22;
  sub_D67EC((a1 + 8), v23);
  sub_4B0F4(v23[1]);
  sub_4B0F4(v26[0]);
}

void sub_D351C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_4B0F4(a11);
  sub_4B0F4(a15);
  _Unwind_Resume(a1);
}

void sub_D3540(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_4EBC(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (a1 + 184);
  v5 = *(a1 + 192);
  if (v5 != (a1 + 184))
  {
    do
    {
      v10 = 0;
      v11 = 0;
      v6 = v5[3];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7;
        if (v7)
        {
          v9 = v5[2];
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v10 = v9;
          v11 = v7;
          sub_1A8C0(v7);
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      sub_D3628(a2, &v10);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v5 = v5[1];
    }

    while (v5 != v4);
  }
}

void sub_D3608(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  sub_4B0F4(*v2);
  _Unwind_Resume(a1);
}

void sub_D3628(uint64_t a1, uint64_t *a2)
{
  sub_8D290(&v6, a2, "", 125);
  v4 = (*(*v6 + 104))(v6);
  sub_D43B4(a1, a2, v4);
  v5 = v7;
  if (v7)
  {

    sub_1A8C0(v5);
  }
}

void sub_D36C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_D36DC(uint64_t a1)
{
  v5 = 0.0;
  v4 = 8;
  v2 = 0x676C6F626E737274;
  v3 = 0;
  (*(*a1 + 40))(a1, &v2, 0, 0, &v4, &v5);
  return v5;
}

void sub_D3750(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v36 = *a2;
      LODWORD(v37) = a2[2];
      sub_22CE0(v40);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v36 = *a2;
      LODWORD(v37) = a2[2];
      sub_22CE0(v40);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 561211770;
  }

  if (!a6)
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v36 = *a2;
      LODWORD(v37) = a2[2];
      sub_22CE0(v40);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = &off_6DDDD0;
    v29[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 > 1835103843)
  {
    switch(v12)
    {
      case 1986164323:
        v39 = 1886613611;
        v40[1] = 0;
        v41 = 0;
        v40[0] = 0;
        sub_4625C(v40, &v39, v40, 1uLL);
        *theData = *v40;
        v43 = v41;
        strcpy(v44, "cwdv");
        v44[8] = 0;
        HIDWORD(v45) = 3;
        v47[0] = 0;
        v47[1] = 0;
        v46 = v47;
        v48 = 44739242;
        v50 = 0;
        v51 = 0;
        __p = 0;
        sub_161C7C(&v36, a1, theData);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p);
        }

        sub_477A0(v47[0]);
        if (theData[0])
        {
          theData[1] = theData[0];
          operator delete(theData[0]);
        }

        if (v38 == 1)
        {
          v18 = *(v37 + 24);
          if (v18)
          {
            v19 = *(v37 + 16);
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v20 = std::__shared_weak_count::lock(v18);
            if (v20)
            {
              v21 = v20;
              if (v19)
              {
                (*(*v19 + 40))(v19, a2, a3, a4, a5, a6);
              }

              sub_1A8C0(v21);
            }

            std::__shared_weak_count::__release_weak(v18);
          }
        }

        sub_65310(&v36);
        break;
      case 1937208176:
        v22 = *a5;
        if (v22 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v34 = sub_5544(14);
          if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
          {
            v36 = *a2;
            LODWORD(v37) = a2[2];
            sub_22CE0(v40);
          }

          v35 = __cxa_allocate_exception(0x10uLL);
          *v35 = &off_6DDDD0;
          v35[2] = 561211770;
        }

        *a6 = sub_45168();
        break;
      case 1835103844:
        v15 = *a5;
        if (v15 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v32 = sub_5544(14);
          if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
          {
            v36 = *a2;
            LODWORD(v37) = a2[2];
            sub_22CE0(v40);
          }

          v33 = __cxa_allocate_exception(0x10uLL);
          *v33 = &off_6DDDD0;
          v33[2] = 561211770;
        }

        LODWORD(v40[0]) = 1986290211;
        *(v40 + 4) = *(a2 + 1);
        LODWORD(v36) = 16;
        sub_5C0D8(a1, v40, 0, 0, &v36, theData);
        v16 = *theData;
        *a6 = v16;
        break;
      default:
LABEL_32:

        sub_5C0D8(a1, a2, a3, a4, a5, a6);
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1064725619:
        v17 = *a5;
        if (v17 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v30 = sub_5544(14);
          if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
          {
            v36 = *a2;
            LODWORD(v37) = a2[2];
            sub_22CE0(v40);
          }

          v31 = __cxa_allocate_exception(0x10uLL);
          *v31 = &off_6DDDD0;
          v31[2] = 561211770;
        }

        *a6 = 1;
        break;
      case 1668049764:

        sub_168034(a1, a5, a6);
        break;
      case 1684435056:
        if (a3 == 8 && *a4 == 1936748595 && a4[1] == 64001)
        {
          sub_3E76D4(theData, a1);
          v13 = theData[1];
          if (theData[1])
          {
            BytePtr = CFDataGetBytePtr(theData[1]);
            v13 = theData[1];
          }

          else
          {
            BytePtr = 0;
          }

          v23 = sub_3E7DD8(v13);
          memcpy(a6, BytePtr, v23);
          sub_8AAAC(theData);
        }

        return;
      default:
        goto LABEL_32;
    }
  }
}

void sub_D4348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D43B4(uint64_t a1, void *a2, double a3)
{
  v3 = a2[1];
  *buf = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3;
  if (!*sub_871F0(a1, &v4, buf))
  {
    operator new();
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_D4658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    sub_1A8C0(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D469C(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_871F0(a1, &v4, a2);
  if (!v2)
  {
    sub_DE7DC("map::at:  key not found");
  }

  return v2 + 48;
}

uint64_t sub_D46DC(void *a1, double *a2)
{
  *a2 = 0.0;
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 0;
  }

  v5 = v3[1];
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
    v7 = v3;
    do
    {
      v6 = v7[2];
      v8 = *v6 == v7;
      v7 = v6;
    }

    while (!v8);
  }

  v9 = *(v3 + 6);
  while (v6 != v2)
  {
    v10 = v6[1];
    v11 = v6;
    if (v10)
    {
      do
      {
        v12 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v12 = v11[2];
        v8 = *v12 == v11;
        v11 = v12;
      }

      while (!v8);
    }

    v13 = *(v6 + 6);
    v6 = v12;
    if (v13 != v9)
    {
      return 0;
    }
  }

  *a2 = v9;
  return 1;
}

void sub_D477C(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  sub_4EBC(a1);
  (*(*a1 + 136))(&v14, a1);
  sub_5659C(&v16, &v14, "", 153);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v6 = v16;
  v7 = (*(*v16 + 296))(v16, a3);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  sub_D66A8(&v14, a1 + 184, 159);
  v8 = v15;
  if (v15 != &v14)
  {
    do
    {
      v9 = v8[2];
      if (v9 == v6)
      {
        v11 = v7;
      }

      else
      {
        if ((*(*a1 + 496))(a1))
        {
          v10.n128_f64[0] = a3;
        }

        else
        {
          v10.n128_f64[0] = v7;
        }

        (*(*v8[2] + 296))(v8[2], v10);
        v9 = v8[2];
      }

      v12 = v8[3];
      v13[0] = v9;
      v13[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_D43B4(a2, v13, v11);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v8 = v8[1];
    }

    while (v8 != &v14);
  }

  sub_87980(&v14);
  if (v17)
  {
    sub_1A8C0(v17);
  }
}

void sub_D4964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_4B0F4(*v16);
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(a1);
}

void sub_D49C4(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[27];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v7 = a1 + 26;
  v8 = a1[26];
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v5);
  v9 = std::__shared_weak_count::lock(v6);
  if (v9)
  {
    sub_1A8C0(v9);
    v10 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  v7 = (*(a1[69] + 24) + 16);
LABEL_9:
  v11 = v7[1];
  *a2 = *v7;
  a2[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  if ((v10 & 1) == 0)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_D4AA4(uint64_t a1)
{
  v1 = (*(*a1 + 88))(a1, 1);
  if (!v1)
  {
    v3 = 0;
    v2 = 0;
LABEL_24:
    for (i = 0; ; i = 1)
    {
      v28 = i;
      v10 = (*(*a1 + 88))(a1, i & 1);
      if (v10)
      {
        v12 = 0;
        v26 = v10;
        do
        {
          memset(buf, 0, 24);
          v13 = (*(*a1 + 96))(a1, v28 & 1, v12);
          (*(*v13 + 104))(v13, buf);
          v14 = *buf;
          if (*buf != *&buf[8])
          {
            do
            {
              v15 = *(v14 + 8);
              if (v15 == 1819304813)
              {
                goto LABEL_44;
              }

              if (v3)
              {
                v16 = v15 == 1633889587 || v15 == 1667326771;
                if (v16 || v15 == 1667588915)
                {
                  goto LABEL_44;
                }
              }

              if (v2)
              {
                if (v15 > 1836343850)
                {
                  if (v15 == 1836344107)
                  {
                    goto LABEL_44;
                  }

                  v18 = 1836343851;
                }

                else
                {
                  if (v15 == 1667443507)
                  {
                    goto LABEL_44;
                  }

                  v18 = 1667509043;
                }

                if (v15 == v18)
                {
LABEL_44:
                  v19 = *(v14 + 40);
                  operator new();
                }
              }

              v14 += 56;
            }

            while (v14 != *&buf[8]);
            v14 = *buf;
          }

          if (v14)
          {
            *&buf[8] = v14;
            operator delete(v14);
          }

          v12 = (v12 + 1);
        }

        while (v12 != v26);
      }

      if (v28)
      {
        v20 = 0;
        do
        {
          v21 = v20;
          v11.n128_u64[0] = 3.0;
          v20 = 1;
        }

        while ((v21 & 1) == 0);
        v22 = sub_D5B94(0, 0, 0, 1, v11);
        sub_4DB20C(0, 0, 0, 1, v22);
        v23 = sub_5544(14);
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "PhysicalDeviceUtilities.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 307;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Did not find a valid matching sample rate", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Did not find a valid matching sample rate");
      }
    }
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = (*(*a1 + 96))(a1, 1, v4);
    (*(*v5 + 120))(v5, buf);
    if (*&buf[8] <= 1667588914)
    {
      break;
    }

    if (*&buf[8] == 1667588915)
    {
      goto LABEL_13;
    }

    if (*&buf[8] != 1836343851 && *&buf[8] != 1836344107)
    {
      goto LABEL_14;
    }

    v2 = 1;
LABEL_21:
    v4 = (v4 + 1);
    if (v1 == v4)
    {
      goto LABEL_24;
    }
  }

  if (*&buf[8] != 1633889587 && *&buf[8] != 1667326771)
  {
LABEL_14:
    v8 = *&buf[8] == 1667443507 || *&buf[8] == 1667509043;
    v2 |= v8;
    goto LABEL_21;
  }

LABEL_13:
  v3 = 1;
  goto LABEL_21;
}

uint64_t sub_D5304(uint64_t a1, uint64_t a2, AudioObjectPropertySelector a3)
{
  if (*a2 != *(a2 + 8))
  {
    v52 = sub_5544(14);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "Stream_HAL_Common.cpp";
      v66 = 1024;
      v67 = 288;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): specified StreamFormatList is not empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "specified StreamFormatList is not empty");
  }

  v6 = *(a1 + 80);
  if (a3 != 1885762657 && a3 != 1936092513)
  {
    v55 = sub_5544(14);
    v56 = *v55;
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "Stream_HAL_Common.cpp";
      v66 = 1024;
      v67 = 289;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
    }

    v57 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v57, "specified inSelector is not valid");
  }

  outDataSize = 0;
  inAddress.mSelector = a3;
  *&inAddress.mScope = 1735159650;
  PropertyDataSize = AudioObjectGetPropertyDataSize(v6, &inAddress, 0, 0, &outDataSize);
  PropertyData = PropertyDataSize;
  if (PropertyDataSize)
  {
    v9 = sub_5544(23);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v60, PropertyData);
      if (v61 >= 0)
      {
        v11 = v60;
      }

      else
      {
        v11 = v60[0];
      }

      v12 = *(a1 + 80);
      *buf = 136316162;
      v65 = "Stream_HAL_Common.cpp";
      v66 = 1024;
      v67 = 300;
      v68 = 1024;
      *v69 = PropertyData;
      *&v69[4] = 2080;
      *&v69[6] = v11;
      v70 = 1024;
      v71 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') determining the number of stream formats for stream %u", buf, 0x28u);
      if (v61 < 0)
      {
        operator delete(v60[0]);
      }
    }
  }

  else if (outDataSize >= 0x38)
  {
    v59 = &v58;
    LODWORD(v15) = outDataSize / 0x38;
    __chkstk_darwin(PropertyDataSize);
    v17 = &v58 - v16;
    outDataSize = 56 * v15;
    PropertyData = AudioObjectGetPropertyData(*(a1 + 80), &inAddress, 0, 0, &outDataSize, &v58 - v16);
    if (PropertyData)
    {
      v18 = sub_5544(23);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v60, PropertyData);
        v20 = v61 >= 0 ? v60 : v60[0];
        v21 = *(a1 + 80);
        *buf = 136316162;
        v65 = "Stream_HAL_Common.cpp";
        v66 = 1024;
        v67 = 314;
        v68 = 1024;
        *v69 = PropertyData;
        *&v69[4] = 2080;
        *&v69[6] = v20;
        v70 = 1024;
        v71 = v21;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') reading the stream formats for stream %u", buf, 0x28u);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }
      }
    }

    else
    {
      v22 = outDataSize / 0x38;
      if (outDataSize / 0x38 < v15)
      {
        v23 = sub_5544(23);
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v65 = "Stream_HAL_Common.cpp";
            v66 = 1024;
            v67 = 321;
            v68 = 1024;
            *v69 = v22;
            *&v69[4] = 1024;
            *&v69[6] = v15;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The HAL returned fewer stream formats (%u) than were expected (%u)", buf, 0x1Eu);
          }
        }
      }

      if (v22 > v15)
      {
        v25 = sub_5544(23);
        v26 = *v25;
        if (*v25)
        {
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v65 = "Stream_HAL_Common.cpp";
            v66 = 1024;
            v67 = 324;
            v68 = 1024;
            *v69 = v22;
            *&v69[4] = 1024;
            *&v69[6] = v15;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d The HAL returned more stream formats (%u) than were expected (%u)", buf, 0x1Eu);
          }
        }
      }

      v27 = sub_5544(23);
      if (*(v27 + 8))
      {
        v29 = *v27;
        if (*v27)
        {
          if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
          {
            v30 = "virtual";
            v31 = *(a1 + 80);
            *buf = 136315906;
            v65 = "Stream_HAL_Common.cpp";
            v66 = 1024;
            v67 = 328;
            if (a3 == 1885762657)
            {
              v30 = "physical";
            }

            v68 = 2080;
            *v69 = v30;
            *&v69[8] = 1024;
            *&v69[10] = v31;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Querying HAL for %s formats on stream ID %u:", buf, 0x22u);
          }
        }
      }

      if (v22 >= v15)
      {
        v15 = v15;
      }

      else
      {
        v15 = v22;
      }

      if (v15)
      {
        v32 = 0;
        *&v28 = 136315906;
        v58 = v28;
        do
        {
          v33 = *(a2 + 8);
          v34 = *(a2 + 16);
          if (v33 >= v34)
          {
            v39 = 0x6DB6DB6DB6DB6DB7 * ((v33 - *a2) >> 3);
            v40 = v39 + 1;
            if ((v39 + 1) > 0x492492492492492)
            {
              sub_189A00();
            }

            v41 = 0x6DB6DB6DB6DB6DB7 * ((v34 - *a2) >> 3);
            if (2 * v41 > v40)
            {
              v40 = 2 * v41;
            }

            if (v41 >= 0x249249249249249)
            {
              v42 = 0x492492492492492;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              sub_2AE238(v42);
            }

            v43 = 56 * v39;
            v44 = *v17;
            v45 = *(v17 + 1);
            v46 = *(v17 + 2);
            *(v43 + 48) = *(v17 + 6);
            *(v43 + 16) = v45;
            *(v43 + 32) = v46;
            *v43 = v44;
            v38 = 56 * v39 + 56;
            v47 = *(a2 + 8) - *a2;
            v48 = 56 * v39 - v47;
            memcpy((v43 - v47), *a2, v47);
            v49 = *a2;
            *a2 = v48;
            *(a2 + 8) = v38;
            *(a2 + 16) = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            v35 = *v17;
            v36 = *(v17 + 1);
            v37 = *(v17 + 2);
            *(v33 + 48) = *(v17 + 6);
            *(v33 + 16) = v36;
            *(v33 + 32) = v37;
            *v33 = v35;
            v38 = v33 + 56;
          }

          *(a2 + 8) = v38;
          v50 = sub_5544(23);
          if ((*(v50 + 8) & 1) != 0 && *v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
          {
            sub_1243E4(v60);
          }

          ++v32;
          v17 += 56;
        }

        while (v15 != v32);
      }
    }
  }

  else
  {
    v13 = sub_5544(23);
    PropertyData = 2003329396;
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "Stream_HAL_Common.cpp";
      v66 = 1024;
      v67 = 339;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream does not have any virtual formats", buf, 0x12u);
    }
  }

  return PropertyData;
}

__n128 sub_D5B94(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-1].n128_u64;
  n128_f64 = a2[-2].n128_f64;
  v11 = a2[-3].n128_f64;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = *n128_u64;
        if (*n128_u64 >= *v12)
        {
          return result;
        }

LABEL_107:
        v119 = *v12;
        *v12 = *n128_u64;
        result = v119;
LABEL_108:
        *n128_u64 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v56 = (v12 + 16);
      v58 = *(v12 + 16);
      v59 = (v12 + 32);
      v60 = *(v12 + 32);
      if (v58 >= *v12)
      {
        if (v60 < v58)
        {
          result = *v56;
          *v56 = *v59;
          *v59 = result;
          if (*(v12 + 16) < *v12)
          {
            v122 = *v12;
            *v12 = *v56;
            result.n128_u64[1] = v122.n128_u64[1];
            *v56 = v122;
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          v120 = *v12;
          *v12 = *v59;
          result = v120;
          goto LABEL_177;
        }

        v124 = *v12;
        *v12 = *v56;
        *v56 = v124;
        if (v60 < *(v12 + 16))
        {
          result = *v56;
          *v56 = *v59;
LABEL_177:
          *v59 = result;
        }
      }

      result.n128_u64[0] = *n128_u64;
      if (*n128_u64 >= v59->n128_f64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *n128_u64;
      *n128_u64 = result;
      result.n128_u64[0] = v59->n128_u64[0];
      if (v59->n128_f64[0] >= v56->n128_f64[0])
      {
        return result;
      }

      result = *v56;
      *v56 = *v59;
      *v59 = result;
LABEL_181:
      result.n128_u64[0] = *(v12 + 16);
      if (result.n128_f64[0] < *v12)
      {
        v125 = *v12;
        *v12 = *v56;
        result = v125;
        *v56 = v125;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_2F7F08(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v61 = (v12 + 16);
      v63 = v12 == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = v12;
          do
          {
            v66 = v61;
            result.n128_u64[0] = *(v65 + 16);
            if (result.n128_f64[0] < *v65)
            {
              v67 = *(v65 + 24);
              v68 = v64;
              while (1)
              {
                *(v12 + v68 + 16) = *(v12 + v68);
                if (!v68)
                {
                  break;
                }

                v69 = *(v12 + v68 - 16);
                v68 -= 16;
                if (result.n128_f64[0] >= v69)
                {
                  v70 = (v12 + v68 + 16);
                  goto LABEL_127;
                }
              }

              v70 = v12;
LABEL_127:
              *v70 = result.n128_u64[0];
              v70[1] = v67;
            }

            v61 = v66 + 1;
            v64 += 16;
            v65 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v97 = v61;
          result.n128_u64[0] = *(a1 + 16);
          if (result.n128_f64[0] < *a1)
          {
            v98 = *(a1 + 24);
            v99 = v61;
            do
            {
              *v99 = v99[-1];
              v100 = v99[-2].n128_f64[0];
              --v99;
            }

            while (result.n128_f64[0] < v100);
            v99->n128_u64[0] = result.n128_u64[0];
            v99->n128_u64[1] = v98;
          }

          ++v61;
          a1 = v97;
        }

        while (&v97[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v71 = (v13 - 2) >> 1;
        v72 = v71;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = (v12 + 16 * v74);
            if (2 * v73 + 2 < v13 && *v75 < v75[2])
            {
              v75 += 2;
              v74 = 2 * v73 + 2;
            }

            v76 = (v12 + 16 * v73);
            v77 = *v76;
            if (*v75 >= *v76)
            {
              v78 = *(v76 + 1);
              do
              {
                v79 = v76;
                v76 = v75;
                *v79 = *v75;
                if (v71 < v74)
                {
                  break;
                }

                v80 = 2 * v74;
                v74 = (2 * v74) | 1;
                v75 = (v12 + 16 * v74);
                v81 = v80 + 2;
                if (v81 < v13 && *v75 < v75[2])
                {
                  v75 += 2;
                  v74 = v81;
                }
              }

              while (*v75 >= v77);
              *v76 = v77;
              *(v76 + 1) = v78;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        do
        {
          v82 = 0;
          v121 = *v12;
          v83 = v12;
          do
          {
            v84 = v83;
            v85 = &v83[v82];
            v83 = v85 + 1;
            v86 = 2 * v82;
            v82 = (2 * v82) | 1;
            v87 = v86 + 2;
            if (v87 < v13)
            {
              v89 = v85[2].n128_f64[0];
              v88 = v85 + 2;
              if (v88[-1].n128_f64[0] < v89)
              {
                v83 = v88;
                v82 = v87;
              }
            }

            *v84 = *v83;
          }

          while (v82 <= ((v13 - 2) >> 1));
          if (v83 == --a2)
          {
            result = v121;
            *v83 = v121;
          }

          else
          {
            *v83 = *a2;
            result = v121;
            *a2 = v121;
            v90 = (&v83[1] - v12) >> 4;
            v91 = v90 < 2;
            v92 = v90 - 2;
            if (!v91)
            {
              v93 = v92 >> 1;
              v94 = (v12 + 16 * v93);
              result.n128_u64[0] = v83->n128_u64[0];
              if (v94->n128_f64[0] < v83->n128_f64[0])
              {
                v95 = v83->n128_i64[1];
                do
                {
                  v96 = v83;
                  v83 = v94;
                  *v96 = *v94;
                  if (!v93)
                  {
                    break;
                  }

                  v93 = (v93 - 1) >> 1;
                  v94 = (v12 + 16 * v93);
                }

                while (v94->n128_f64[0] < result.n128_f64[0]);
                v83->n128_u64[0] = result.n128_u64[0];
                v83->n128_u64[1] = v95;
              }
            }
          }

          v91 = v13-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *n128_u64;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v103 = *v14;
          *v14 = *n128_u64;
          *n128_u64 = v103;
          if (*v14 < *v12)
          {
            v104 = *v12;
            *v12 = *v14;
            *v14 = v104;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v101 = *v12;
          *v12 = *n128_u64;
          goto LABEL_26;
        }

        v107 = *v12;
        *v12 = *v14;
        *v14 = v107;
        if (*n128_u64 < *v14)
        {
          v101 = *v14;
          *v14 = *n128_u64;
LABEL_26:
          *n128_u64 = v101;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      v22 = *n128_f64;
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v108 = *v20;
          *v20 = *n128_f64;
          *n128_f64 = v108;
          if (*v20 < *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *n128_f64;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*n128_f64 < *v20)
        {
          v110 = *v20;
          *v20 = *n128_f64;
          v23 = v110;
LABEL_38:
          *n128_f64 = v23;
        }
      }

      v26 = (v12 + 32);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = *v11;
      if (v28 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v111 = *v27;
          *v27 = *v11;
          *v11 = v111;
          if (*v27 < *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 < *v27)
        {
          v112 = *v27;
          *v27 = *v11;
          v31 = v112;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 >= *v20)
      {
        if (v35 < v34)
        {
          v114 = *v15;
          *v15 = *v27;
          *v27 = v114;
          if (*v15 < *v20)
          {
            v115 = *v20;
            *v20 = *v15;
            *v15 = v115;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v113 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v116 = *v20;
        *v20 = *v15;
        *v15 = v116;
        if (*v27 < *v15)
        {
          v113 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v113;
        }
      }

      v117 = *v12;
      *v12 = *v15;
      result.n128_u64[1] = v117.n128_u64[1];
      *v15 = v117;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 >= *v14)
    {
      if (v16 < v18)
      {
        v105 = *v12;
        *v12 = *n128_u64;
        result.n128_u64[1] = v105.n128_u64[1];
        *n128_u64 = v105;
        if (*v12 < *v14)
        {
          v106 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v106.n128_u64[1];
          *v12 = v106;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v109 = *v14;
      *v14 = *v12;
      result.n128_u64[1] = v109.n128_u64[1];
      *v12 = v109;
      if (*n128_u64 >= *v12)
      {
        goto LABEL_58;
      }

      v102 = *v12;
      *v12 = *n128_u64;
    }

    else
    {
      v102 = *v14;
      *v14 = *n128_u64;
    }

    result.n128_u64[1] = v102.n128_u64[1];
    *n128_u64 = v102;
LABEL_58:
    --a3;
    result.n128_u64[0] = *v12;
    if ((a4 & 1) != 0 || *(v12 - 16) < result.n128_f64[0])
    {
      v36 = *(v12 + 8);
      v37 = v12;
      do
      {
        v38 = v37;
        v39 = *(v37 + 16);
        v37 += 16;
      }

      while (v39 < result.n128_f64[0]);
      v40 = a2;
      if (v38 == v12)
      {
        v40 = a2;
        do
        {
          if (v37 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v42 >= result.n128_f64[0]);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v41 >= result.n128_f64[0]);
      }

      v12 = v37;
      if (v37 < v40)
      {
        v43 = v40;
        do
        {
          v44 = *v12;
          *v12 = *v43;
          *v43 = v44;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < result.n128_f64[0]);
          do
          {
            v46 = v43[-1].n128_f64[0];
            --v43;
          }

          while (v46 >= result.n128_f64[0]);
        }

        while (v12 < v43);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v36;
      if (v37 < v40)
      {
        goto LABEL_79;
      }

      v47 = sub_2F808C(a1, (v12 - 16), result);
      if (sub_2F808C(v12, a2, v48))
      {
        a2 = (v12 - 16);
        if (!v47)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v47)
      {
LABEL_79:
        sub_D5B94(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (result.n128_f64[0] >= *n128_u64)
      {
        v50 = v12 + 16;
        do
        {
          v12 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v50 += 16;
        }

        while (result.n128_f64[0] >= *v12);
      }

      else
      {
        do
        {
          v49 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v49);
      }

      v51 = a2;
      if (v12 < a2)
      {
        v51 = a2;
        do
        {
          v52 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v52);
      }

      v53 = *(a1 + 8);
      while (v12 < v51)
      {
        v118 = *v12;
        *v12 = *v51;
        *v51 = v118;
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v54);
        do
        {
          v55 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v55);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v53;
    }
  }

  v56 = (v12 + 16);
  result.n128_u64[0] = *(v12 + 16);
  v57 = *n128_u64;
  if (result.n128_f64[0] >= *v12)
  {
    if (v57 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v56;
    *v56 = *n128_u64;
    *n128_u64 = result;
    goto LABEL_181;
  }

  if (v57 < result.n128_f64[0])
  {
    goto LABEL_107;
  }

  v123 = *v12;
  *v12 = *v56;
  result.n128_u64[1] = v123.n128_u64[1];
  *v56 = v123;
  result.n128_u64[0] = *n128_u64;
  if (*n128_u64 < *(v12 + 16))
  {
    result = *v56;
    *v56 = *n128_u64;
    goto LABEL_108;
  }

  return result;
}

void sub_D66A8(void *a1, uint64_t a2, int a3)
{
  v4[0] = v4;
  v4[1] = v4;
  v4[2] = 0;
  v3 = *(a2 + 8);
  if (v3 != a2)
  {
    sub_5659C(&v5, (v3 + 16), "", a3);
    operator new();
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_87980(v4);
}

void sub_D67C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_87980(va);
  _Unwind_Resume(a1);
}

void *sub_D67EC(void *a1, void *a2)
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
      v6 = a1[1];
      if (*a1 == v3)
      {
        v8 = v3;
        if (!v6)
        {
LABEL_9:
          v14 = v3;
LABEL_14:
          operator new();
        }
      }

      else
      {
        v7 = v3;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = v6[1];
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        if (!sub_87164(v8 + 4, v5 + 4))
        {
          v10 = sub_871F0(a1, &v14, v5 + 4);
          goto LABEL_13;
        }

        if (!*v3)
        {
          goto LABEL_9;
        }
      }

      v14 = v8;
      v10 = v8 + 1;
LABEL_13:
      if (!*v10)
      {
        goto LABEL_14;
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }

  return a1;
}

void *sub_D6978(void *a1, uint64_t *a2)
{
  if (!sub_B4754(a2[38], a2[39]))
  {
    goto LABEL_5;
  }

  v4 = a2[109];
  strcpy(buf, "rrapbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v5 = sub_59410(v4);
  *(&v8 + 1) = v6;
  *&v8 = v5;
  v7 = v8 >> 32;
  if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

  if (v7 && (_os_feature_enabled_impl() & 1) != 0)
  {
LABEL_5:
    if (!a2[54])
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a1 + 1;
      sub_D7364();
    }

    *buf = (*(*a2[109] + 104))(a2[109]);
    *&buf[8] = *buf;
    return sub_214D98(a1, buf, 1);
  }

  else
  {
LABEL_7:
    *buf = vdupq_n_s64(0x40E7700000000000uLL);
    return sub_214D98(a1, buf, 1);
  }
}

void sub_D7204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_477A0(*v26);
  _Unwind_Resume(a1);
}

BOOL sub_D72B0(uint64_t *a1, double a2)
{
  sub_D6978(&v10, a1);
  v3 = v10;
  if (v10 != v11)
  {
    while (v3[4] > a2 || v3[5] < a2)
    {
      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v11)
      {
        v3 = v11;
        break;
      }
    }
  }

  v8 = v3 != v11;
  sub_477A0(v11[0]);
  return v8;
}

void sub_D757C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (v14)
  {
    *(v13 + 8) = v14;
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_D75A8(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_D760C(a1, &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    operator delete(v4);
  }

  return (v2 - v1) >> 4;
}

void sub_D75F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D760C(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v6 = 0;
    do
    {
      v6 += (*(v2 + 48) - *(v2 + 40)) >> 4;
      v2 += 64;
    }

    while (v2 != v3);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        sub_D7934(*(a1 + 56), *(a1 + 64), i, &v9);
        v12 = v7;
        sub_D77F8(&v10, a2, &v11);
        v7 = v11;
        sub_D79C4(a2, v11, v12, (v12 - v11) >> 4);
      }

      if (v7)
      {

        operator delete(v7);
      }
    }
  }
}

void sub_D770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D7724(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_189A00();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1E6364(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_D77F8(double *a1, double **a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_9:
    v16 = *a1;
    sub_D7724(a3, &v16);
    return;
  }

  v8 = *a1;
  if (v6[1] < *a1)
  {
    v9 = v6 + 2;
    while (1)
    {
      sub_D7724(a3, v9 - 1);
      v5 = a2[1];
      if (v9 == v5)
      {
        goto LABEL_9;
      }

      v10 = v9[1];
      v8 = *a1;
      v9 += 2;
      if (v10 >= *a1)
      {
        v6 = v9 - 2;
        break;
      }
    }
  }

  v11 = a1[1];
  if (*v6 <= v11)
  {
    v13 = v6 + 2;
    do
    {
      v12 = v13;
      if (v13 == v5)
      {
        break;
      }

      v13 += 2;
    }

    while (*v12 <= v11);
    if (v8 >= *v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = a1;
    }

    v15 = *v14;
    if (*(v12 - 1) >= v11)
    {
      v11 = *(v12 - 1);
    }

    *&v16 = *v14;
    *(&v16 + 1) = v11;
    sub_D7724(a3, &v16);
  }

  else
  {
    *&v16 = v8;
    *(&v16 + 1) = v11;
    sub_D7724(a3, &v16);
    v12 = v6;
  }

  while (v12 != a2[1])
  {
    sub_D7724(a3, v12);
    v12 += 2;
  }
}

__int128 *sub_D7934(__int128 *result, __int128 *a2, unsigned int a3, uint64_t a4)
{
  if (result != a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 + ((*(result + 6) - *(result + 5)) >> 4);
      v6 = a3 >= v4;
      v7 = a3 - v4;
      if (v6 && v5 > a3)
      {
        break;
      }

      result += 4;
      v4 = v5;
      if (result == a2)
      {
        return result;
      }
    }

    v8 = *result;
    v9 = result[1];
    *(a4 + 32) = *(result + 4);
    *a4 = v8;
    *(a4 + 16) = v9;
    v10 = *(result + 5);
    if (v7 >= (*(result + 6) - v10) >> 4)
    {
      sub_269EF8();
    }

    *(a4 + 40) = *(v10 + 16 * v7);
    v11 = *(a4 + 40);
    if (v11 == *(a4 + 48))
    {
      *a4 = v11;
    }
  }

  return result;
}

void *sub_D79C4(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 60))
      {
        sub_1E6364(v11);
      }
    }

    sub_189A00();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_D7B08(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_D760C(a1, &v6);
  v5 = v6;
  if (a2 >= ((v7 - v6) >> 4))
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *a3 = *(v6 + a2);
  }

  operator delete(v5);
}

void sub_D7B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_D7B84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_844AC(v7);
  return v4;
}

BOOL sub_D7C0C(uint64_t a1, double a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_D760C(a1, &v10);
  v3 = v11;
  v4 = v10;
  do
  {
    v5 = v4;
    if (v4 == v11)
    {
      break;
    }

    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
  }

  while (*v5 > a2 || v7 < a2);
  if (v10)
  {
    operator delete(v10);
  }

  return v5 != v3;
}

void sub_D7C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D7C9C(AudioObjectID a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(a1, a2, a3, a4, &outDataSize);
  if (PropertyDataSize)
  {
    v7 = sub_5544(17);
    p_mSelector = &a2->mSelector;
    v9 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v19, *p_mSelector);
      v10 = v20;
      v11 = v19[0];
      sub_22170(__p, PropertyDataSize);
      v12 = v19;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315906;
      v23 = "AggregateDevice_CommonBase.cpp";
      v24 = 1024;
      v25 = 3623;
      v26 = 2080;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyDataSize() for selector '%s' returned status '%s'.", buf, 0x26u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "AggregateDevice_CommonBase.cpp";
      v24 = 1024;
      v25 = 3624;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to determine the property's data size.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = PropertyDataSize;
  }

  return outDataSize;
}

void sub_D7EB0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double *sub_D7ED0(void *a1, double *a2, double a3)
{
  v3 = a2;
  v4 = (a1 + 1);
  if (a1 + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = *(v12 + 2);
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (v8[4] < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = v14[4];
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v14;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v14 + 1;
      v14 = *(v14 + 1);
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return v3;
  }

  v9 = a2 + 1;
  v10 = *(a2 + 1);
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = *(v11 + 2);
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && v11[4] <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = v18[4];
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v18 + 1;
      v18 = *(v18 + 1);
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v3 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return v3;
}

double *sub_D80AC(double *result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_D7ED0(*a4, *(a4 + 8), *(*a2 + 32));
      *(a4 + 8) = result;
      v9 = *(result + 1);
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
          v10 = *(result + 2);
          v11 = *v10 == result;
          result = v10;
        }

        while (!v11);
      }

      *(a4 + 8) = v10;
      v12 = *a2;
      v13 = *(*a2 + 8);
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

      *a2 = v14;
      v15 = *a3;
      v16 = *(*a3 + 8);
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
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v18 = 0;
      *a3 = v17;
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

  *a5 = v18;
  return result;
}

double *sub_D81B4(double *a1, double *a2, double a3)
{
  if (a1 != a2)
  {
    if (a1[4] >= a3)
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

        v6 = *(v5 + 1);
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
            v5 = *(v7 + 2);
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
    while (v5 != a2 && v5[4] < a3)
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
            v11 = *(v11 + 1);
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = *(v12 + 2);
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
            v18 = *(v17 + 1);
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
                v15 = *(v17 + 2);
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (v15[4] < a3)
        {
          v20 = *(v15 + 1);
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
              a1 = *(v15 + 2);
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

_BYTE *sub_D8384(uint64_t a1, int a2)
{
  if (((*(*a1 + 472))(a1) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "VirtualAudio_Device.cpp";
      v10 = 1024;
      v11 = 4071;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Buffer size isn't valid", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return sub_D8D98(a1, a2, 1);
}

uint64_t sub_D84E0(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (!v1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v10 = 1024;
      v11 = 3736;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: mDevice is NULL", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v7 = 0x676C6F6266737A23;
  v8 = 0;
  v6 = 16;
  (*(*v1 + 40))(v1, &v7, 0, 0, &v6, buf);
  return *buf;
}

void sub_D86E0(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, double *a6)
{
  if (a2->mSelector != 1718843939)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 3375;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  outData = 0uLL;
  PropertyData = AudioObjectGetPropertyData(*(a1 + 128), a2, a3, a4, a5, &outData);
  if (PropertyData)
  {
    v18 = sub_5544(17);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v29, a2->mSelector);
      v20 = v30;
      v21 = v29[0];
      sub_22170(__p, PropertyData);
      v22 = v29;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if (v28 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 3379;
      v35 = 2080;
      v36 = v22;
      v37 = 2080;
      v38 = v23;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData() for selector '%s' returned status '%s'.", buf, 0x26u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 3380;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to obtain property data.", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = PropertyData;
  }

  if (sub_C26B4(a1))
  {
    strcpy(buf, "rrapbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v11 = sub_59410(a1);
    *(&v14 + 1) = v12;
    *&v14 = v11;
    v13 = v14 >> 32;
    if ((v13 & 0x100000000) == 0 || !v13 || (_os_feature_enabled_impl() & 1) == 0)
    {
      outData = vmulq_f64(outData, vdupq_n_s64(0x3FB0000000000000uLL));
    }
  }

  sub_D8BD8(a5, a6, outData.f64[0], outData.f64[1]);
}

void sub_D8A34(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D8A64(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (!v1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v10 = "VirtualAudio_Device.cpp";
      *&v10[8] = 1024;
      *&v10[10] = 3748;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: mDevice is NULL", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v7 = 0x676C6F6266737A23;
  v8 = 0;
  v6 = 16;
  (*(*v1 + 40))(v1, &v7, 0, 0, &v6, buf);
  if (*&v10[4] >= 0x1000)
  {
    return 4096;
  }

  else
  {
    return *&v10[4];
  }
}

void sub_D8BD8(_DWORD *a1, double *a2, double a3, double a4)
{
  if (!a2)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "StandardUtilities.h";
      v15 = 1024;
      v16 = 174;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a1 <= 0xFu)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "StandardUtilities.h";
        v15 = 1024;
        v16 = 175;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) <= ioDataSize", &v13, 0x12u);
      }
    }
  }

  *a1 = 16;
  *a2 = a3;
  a2[1] = a4;
}

_BYTE *sub_D8D98(uint64_t a1, int a2, int a3)
{
  v23 = a2;
  if (!*(a1 + 872))
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 4091;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to set buffer frame size without an active device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v6 = sub_5544(1);
  v7 = sub_5544(32);
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
      goto LABEL_8;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_8:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "VirtualAudio_Device.cpp";
    v25 = 1024;
    v26 = 4097;
    v27 = 1024;
    v28 = a2;
    v29 = 1024;
    v30 = a3 ^ 1;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Client request to set I/O buffer frame size to %u sample frames (quiet = %u)", buf, 0x1Eu);
  }

  if (a3)
  {
    v12 = 1718839674;
  }

  else
  {
    if ((*(**(a1 + 872) + 88))(*(a1 + 872), 0) && (*(**(a1 + 872) + 288))(*(a1 + 872)))
    {
      v13 = sub_5544(1);
      v14 = sub_5544(32);
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
          goto LABEL_21;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_21:
      v18 = *v13;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v25 = 1024;
        v26 = 4102;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Client request to quietly set I/O buffer frame size while input is active and I/O is runnning, which will likely fail", buf, 0x12u);
      }
    }

    v12 = 1902539642;
  }

  *buf = v12;
  *&buf[4] = 1735159650;
  (*(**(a1 + 872) + 48))(*(a1 + 872), buf, 0, 0, 4, &v23);
  result = sub_C2EB4(a1);
  if ((a3 & 1) == 0)
  {
    result = *(a1 + 440);
    if (result)
    {
      sub_ED368(result);
    }
  }

  return result;
}

BOOL sub_D9160(AudioObjectID a1, const AudioObjectPropertyAddress *a2)
{
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(a1, a2, &outIsSettable);
  if (IsPropertySettable)
  {
    v4 = sub_5544(17);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v13, a2->mSelector);
        v6 = v14;
        v7 = v13[0];
        sub_22170(__p, IsPropertySettable);
        v8 = v13;
        if (v6 < 0)
        {
          v8 = v7;
        }

        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136315906;
        v17 = "AggregateDevice_CommonBase.cpp";
        v18 = 1024;
        v19 = 3876;
        v20 = 2080;
        v21 = v8;
        v22 = 2080;
        v23 = v9;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectIsPropertySettable() for selector '%s' returned status '%s'.", buf, 0x26u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }
    }
  }

  return outIsSettable != 0;
}

void sub_D92C4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D92E4(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (a2->mSelector != 1718839674 && a2->mSelector != 1902539642)
  {
    v50 = sub_5544(14);
    v51 = *v50;
    if (*v50)
    {
      if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v64 = 1024;
        v65 = 3326;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v13 = *a6;
  *(a1 + 752) = *a6;
  *(a1 + 756) = 1;
  if (sub_C26B4(a1))
  {
    strcpy(buf, "rrapbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v14 = sub_59410(a1);
    *(&v17 + 1) = v15;
    *&v17 = v14;
    v16 = v17 >> 32;
    if ((v16 & 0x100000000) == 0 || !v16 || (_os_feature_enabled_impl() & 1) == 0)
    {
      v13 *= 16;
    }
  }

  v18 = (*(*a1 + 560))(a1, 1735159650);
  if ((v18 & 0x100000000) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  inData = v19;
  for (i = *(a1 + 640); i != *(a1 + 648); i += 16)
  {
    if (*(*(*i + 152) + 799) == 1)
    {
      v21 = dword_6E6738;
      if (v19 < dword_6E6738)
      {
        inData = dword_6E6738;
        v22 = sub_5544(17);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = (*(*a1 + 120))(a1);
          *buf = 136316162;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          v64 = 1024;
          v65 = 3347;
          v66 = 1024;
          *v67 = v13;
          *&v67[4] = 1024;
          *&v67[6] = v21;
          LOWORD(v68) = 1024;
          *(&v68 + 2) = v24;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The requested frame size (%u) is below the performant threshold of %u when voice isolation is active, setting the frame size to that threshold on aggregate device %u.", buf, 0x24u);
        }

        v19 = v21;
      }

      break;
    }
  }

  strcpy(buf, "rsfbptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  v25 = sub_59410(a1);
  *(&v28 + 1) = v26;
  *&v28 = v25;
  v27 = v28 >> 32;
  if ((v27 & 0x100000000) != 0)
  {
    if (v27)
    {
      if ((v19 & 0x1F) != 0)
      {
        v29 = v19 & 0xFFFFFFE0;
        v19 = (v19 & 0xFFFFFFE0) + 32;
        inData = v29 + 32;
        v30 = sub_5544(17);
        v31 = *v30;
        if (*v30)
        {
          if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = (*(*a1 + 120))(a1);
            *buf = 136315906;
            *&buf[4] = "AggregateDevice_CommonBase.cpp";
            v64 = 1024;
            v65 = 3359;
            v66 = 1024;
            *v67 = v19;
            *&v67[4] = 1024;
            *&v67[6] = v32;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Buffer size is restricted, rounding up to nearest multiple of 32: %u for aggregate device %u.", buf, 0x1Eu);
          }
        }
      }
    }
  }

  v33 = sub_5544(17);
  v34 = *v33;
  if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *a6;
    v36 = (*(*a1 + 120))(a1);
    *buf = 136316162;
    *&buf[4] = "AggregateDevice_CommonBase.cpp";
    v64 = 1024;
    v65 = 3362;
    v66 = 1024;
    *v67 = v35;
    *&v67[4] = 1024;
    *&v67[6] = v19;
    LOWORD(v68) = 1024;
    *(&v68 + 2) = v36;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requested to set %u, setting buffer frame size of %u on aggregate device %u.", buf, 0x24u);
  }

  result = AudioObjectSetPropertyData(*(a1 + 128), a2, a3, a4, a5, &inData);
  v38 = result;
  if (result)
  {
    mSelector = a2->mSelector;
    v40 = a2->mSelector == 1902539642;
    v41 = sub_5544(17);
    v42 = *v41;
    if (v40)
    {
      if (!v42 || !os_log_type_enabled(*v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      sub_22170(v61, 0x7166737Au);
      v43 = v62;
      v44 = v61[0];
      sub_22170(__p, v38);
      v45 = v61;
      if (v43 < 0)
      {
        v45 = v44;
      }

      if (v60 >= 0)
      {
        v46 = __p;
      }

      else
      {
        v46 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice.cpp";
      v64 = 1024;
      v65 = 617;
      v66 = 2080;
      *v67 = v45;
      *&v67[8] = 2080;
      v68 = v46;
      v47 = "%25s:%-5d This is not necessarily a problem, but the HAL returned an error here: AudioObjectSetPropertyData() for selector '%s' returned status '%s'.";
      v48 = v42;
      v49 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!v42 || !os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      sub_22170(v61, mSelector);
      v53 = v62;
      v54 = v61[0];
      sub_22170(__p, v38);
      v55 = v61;
      if (v53 < 0)
      {
        v55 = v54;
      }

      if (v60 >= 0)
      {
        v56 = __p;
      }

      else
      {
        v56 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice.cpp";
      v64 = 1024;
      v65 = 621;
      v66 = 2080;
      *v67 = v55;
      *&v67[8] = 2080;
      v68 = v56;
      v47 = "%25s:%-5d AudioObjectSetPropertyData() for selector '%s' returned status '%s'.";
      v48 = v42;
      v49 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_0, v48, v49, v47, buf, 0x26u);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

LABEL_58:
    v57 = __cxa_allocate_exception(0x10uLL);
    *v57 = &off_6DDDD0;
    v57[2] = v38;
  }

  return result;
}