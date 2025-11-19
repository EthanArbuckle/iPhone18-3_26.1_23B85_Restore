unint64_t sub_2393D30C4(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0;
  v20 = 0u;
  v17 = 128;
  result = accept(*(a1 + 120), &v19, &v17);
  v3 = result;
  if (result != -1)
  {
    goto LABEL_34;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_30;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_30;
  }

  v4 = __error();
  result = sub_2393D948C(*v4, "src/inet/TCPEndPointImplSockets.cpp", 0x3E4u);
  v6 = result;
  if (!result)
  {
LABEL_34:
    if (*(a1 + 72))
    {
      if (v19.sa_family == 2)
      {
        sub_2393CF990(&v18, &v19.sa_data[2]);
        goto LABEL_12;
      }

      if (v19.sa_family == 30)
      {
        sub_2393CF9A8(&v18, &v19.sa_data[6]);
LABEL_12:
        v10 = *v19.sa_data;
        v16 = 0;
        result = sub_2393D3604(*(a1 + 24), &v16);
        v9 = v16;
        if (!result)
        {
          *(v16 + 120) = v3;
          result = (*(**(*(a1 + 24) + 16) + 88))(*(*(a1 + 24) + 16), v3, v9 + 128);
          if (!result)
          {
            *(v9 + 88) = 4;
            v12 = v19.sa_family == 30 ? 2 : 1;
            *(v9 + 124) = v12;
            sub_2393D0FB4((v9 + 8));
            v13 = *(*(v9 + 24) + 16);
            result = (*(*v13 + 96))(v13, *(v9 + 128), sub_2393D20B0, v9);
            if (!result)
            {
              result = (*(*v13 + 104))(v13, *(v9 + 128));
              if (!result)
              {
                result = (*(a1 + 72))(a1, v9, &v18, bswap32(v10) >> 16);
                goto LABEL_30;
              }
            }
          }
        }

        v7 = v11;
        v8 = HIDWORD(result);
        v6 = result;
        goto LABEL_22;
      }

      v9 = 0;
      v6 = 3;
      v8 = 1022;
    }

    else
    {
      v9 = 0;
      v6 = 8;
      v8 = 1002;
    }

    v7 = "src/inet/TCPEndPointImplSockets.cpp";
LABEL_22:
    if (v3 != -1)
    {
      result = close(v3);
    }

    if (v9)
    {
      if (*(v9 + 88) == 4)
      {
        sub_2393D1598(v9 + 8);
      }

      result = sub_2393D1598(v9 + 8);
    }

    goto LABEL_28;
  }

  v7 = v5;
  v8 = HIDWORD(result);
LABEL_28:
  v14 = *(a1 + 80);
  if (v14)
  {
    result = v14(a1, v6 | (v8 << 32), v7);
  }

LABEL_30:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2393D3384(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
    sub_2393D9BEC(v3);
    v19 = v3;
    if (sub_2393D980C(v3))
    {
      sub_2393D9870(v3);
      v4 = 0;
      goto LABEL_9;
    }

    sub_2393D9C18(0xFA00uLL, 0, &v18);
    sub_2393D96C8(v3);
  }

  else
  {
    sub_2393D9C18(0xFA00uLL, 0, &v18);
  }

  v3 = v18;
  v19 = v18;
  if (!v18)
  {
    sub_2393D133C(a1, 0x3630000000BLL, "src/inet/TCPEndPointImplSockets.cpp", 0);
    goto LABEL_30;
  }

  v4 = 1;
LABEL_9:
  v5 = *(a1 + 120);
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  v8 = sub_2393D980C(v3);
  v9 = recv(v5, (v6 + v7), v8, 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    *(a1 + 114) = *(a1 + 112);
    if (v9)
    {
      v10 = *(v19 + 3);
      if (v4)
      {
        sub_2393D97A0(v19, v10 + v9, 0);
        sub_2393D955C(&v19);
        v11 = *(a1 + 96);
        if (v11)
        {
          sub_2393D982C(v11, &v19);
        }

        else
        {
          *(a1 + 96) = v19;
          v19 = 0;
        }
      }

      else
      {
        sub_2393D97A0(v19, v10 + v9, *(a1 + 96));
      }
    }

    else
    {
      if (*(a1 + 88) == 4 && *(a1 + 64))
      {
        v14 = 6;
      }

      else
      {
        v14 = 7;
      }

      *(a1 + 88) = v14;
      (*(**(*(a1 + 24) + 16) + 120))(*(*(a1 + 24) + 16), *(a1 + 128));
      v17 = *(a1 + 64);
      if (v17)
      {
        v17(a1);
      }
    }

    goto LABEL_29;
  }

  v12 = *__error();
  if (v12 != 35)
  {
    v15 = sub_2393D948C(v12, "src/inet/TCPEndPointImplSockets.cpp", 0x392u);
    sub_2393D133C(a1, v15, v16, 0);
LABEL_29:
    sub_2393D1960(a1);
    goto LABEL_30;
  }

  v13 = sub_2393D9044(1u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "recv: EAGAIN, will retry", &v18, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(1u, 1);
  }

LABEL_30:
  if (v19)
  {
    sub_2393D96C8(v19);
  }
}

uint64_t sub_2393D3604(_BYTE *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/inet/InetLayer.h", 82);
  if (a1[8] == 2)
  {
    v4 = (*(*a1 + 16))(a1);
    *a2 = v4;
    if (v4)
    {
      v5 = sub_2393DA0AC();
      v6 = *(v5 + 2) + 1;
      *(v5 + 2) = v6;
      if (*(sub_2393DA0B8() + 2) >= v6)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v7 = sub_2393DA0B8();
        v8 = 0;
        v9 = 0;
        *(v7 + 2) = v6;
      }
    }

    else
    {
      v10 = sub_2393D9044(1u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = "TCP";
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s endpoint pool FULL", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1u, 1);
      }

      v8 = 0x5900000000;
      v9 = 193;
    }
  }

  else
  {
    v8 = 0x5300000000;
    v9 = 3;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

void sub_2393D37A0(void *a1)
{
  sub_2393D37D8(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2393D37D8(void *a1)
{
  *a1 = &unk_284BB81A8;
  v2 = a1[13];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[13] = 0;
  v3 = a1[12];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[12] = 0;
  return a1;
}

unint64_t sub_2393D3838(_BYTE *a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5)
{
  if (a1[32] > 1u)
  {
    v13 = 0x3200000000;
    LODWORD(v12) = 3;
  }

  else
  {
    v16 = v5;
    v17 = v6;
    if (!sub_2393CF944(a3, &xmmword_27DF7BD44) || sub_2393CFC5C(a3) == 3 || sub_2393CFC5C(a3) == a2)
    {
      v15 = *a5;
      v12 = (*(*a1 + 72))(a1, a2, a3, a4, &v15);
      if (v12)
      {
        v13 = v12 & 0xFFFFFFFF00000000;
      }

      else
      {
        LODWORD(v12) = 0;
        v13 = 0;
        a1[32] = 1;
      }
    }

    else
    {
      v13 = 0x3700000000;
      LODWORD(v12) = 257;
    }
  }

  return v13 | v12;
}

unint64_t sub_2393D3954(_BYTE *a1, uint64_t a2, int *a3)
{
  if (a1[32] > 1u)
  {
    v7 = 0x4500000000;
    LODWORD(v6) = 3;
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v9 = *a3;
    v6 = (*(*a1 + 80))(a1, a2, &v9);
    if (v6)
    {
      v7 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v6) = 0;
      v7 = 0;
      a1[32] = 1;
    }
  }

  return v7 | v6;
}

unint64_t sub_2393D39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
    *(a1 + 16) = a4;
    v7 = (*(*a1 + 88))(a1);
    if (v7)
    {
      v6 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v7) = 0;
      v6 = 0;
      *(a1 + 32) = 2;
    }
  }

  else
  {
    v5 = v4 == 2;
    v6 = 0x5800000000;
    if (v5)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = 3;
    }

    if (v5)
    {
      v6 = 0;
    }
  }

  return v6 | v7;
}

uint64_t sub_2393D3AA0(uint64_t a1, __int128 *a2, __int16 a3, uint64_t a4, int *a5)
{
  v13 = 0;
  sub_2393CFEFC(v11);
  v12 = *a2;
  v14 = a3;
  v13 = *a5;
  result = (*(*a1 + 96))(a1, v11, a4);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2393D3B44(uint64_t a1)
{
  result = (*(*a1 + 96))(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

_BYTE *sub_2393D3B88(_BYTE *result)
{
  if (result[32] != 3)
  {
    result[32] = 3;
    return (*(*result + 104))();
  }

  return result;
}

unint64_t sub_2393D3BC4(uint64_t a1, int *a2, _DWORD *a3)
{
  if (!sub_2393CFAB0(a3))
  {
    v8 = 0x8700000000;
LABEL_9:
    LODWORD(v7) = 257;
    return v7 | v8;
  }

  v6 = sub_2393CFC5C(a3);
  if (v6 == 2)
  {
    v10 = *a2;
    v7 = (*(*a1 + 64))(a1, &v10, a3, 1);
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v8 = 0x9500000000;
    goto LABEL_9;
  }

  v11 = *a2;
  v7 = (*(*a1 + 56))(a1, &v11, a3, 1);
LABEL_7:
  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_2393D3CC4(uint64_t a1, int *a2, _DWORD *a3)
{
  if (!sub_2393CFAB0(a3))
  {
    v8 = 0x9B00000000;
LABEL_9:
    LODWORD(v7) = 257;
    return v7 | v8;
  }

  v6 = sub_2393CFC5C(a3);
  if (v6 == 2)
  {
    v10 = *a2;
    v7 = (*(*a1 + 64))(a1, &v10, a3, 0);
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v8 = 0xA900000000;
    goto LABEL_9;
  }

  v11 = *a2;
  v7 = (*(*a1 + 56))(a1, &v11, a3, 0);
LABEL_7:
  v8 = v7 & 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_2393D3DC4(uint64_t a1, int a2, void *a3, unsigned int a4, socklen_t *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D4070(a1, a2);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    goto LABEL_3;
  }

  if (a2 == 1)
  {
    v19 = *(a1 + 56);
    *&v23.sa_len = 512;
    *&v23.sa_data[10] = 0;
    *v23.sa_data = __rev16(a4);
    *&v23.sa_data[2] = sub_2393CF9B4(a3);
    if (bind(v19, &v23, 0x10u))
    {
      v20 = __error();
      v11 = sub_2393D948C(*v20, "src/inet/UDPEndPointImplSockets.cpp", 0x90u);
    }

    else
    {
      v22 = 1;
      setsockopt(v19, 0xFFFF, 32, &v22, 4u);
      setsockopt(v19, 0, 9, &v23, 0x10u);
      v11 = 0;
    }

    v22 = 64;
    setsockopt(v19, 0, 10, &v22, 4u);
    v12 = v11;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a2 != 2)
    {
      v11 = 0xC100000000;
      v12 = 257;
      goto LABEL_3;
    }

    v15 = *(a1 + 56);
    v16 = *a5;
    *&v23.sa_len = 7680;
    *v23.sa_data = __rev16(a4);
    *&v23.sa_data[6] = sub_2393CF9BC(a3);
    v24 = v17;
    v22 = v16;
    v25 = v16;
    if (bind(v15, &v23, 0x1Cu))
    {
      v18 = __error();
      v11 = sub_2393D948C(*v18, "src/inet/UDPEndPointImplSockets.cpp", 0x6Du);
      v12 = v11;
      v21 = 64;
      setsockopt(v15, 41, 10, &v21, 4u);
      if (v11)
      {
        goto LABEL_3;
      }
    }

    else
    {
      setsockopt(v15, 41, 9, &v22, 4u);
      v21 = 64;
      setsockopt(v15, 41, 10, &v21, 4u);
    }
  }

  *(a1 + 76) = a4;
  *(a1 + 72) = *a5;
  if (!a4)
  {
    v22 = 128;
    if (!getsockname(*(a1 + 56), &v23, &v22) && (v23.sa_family == 30 || v23.sa_family == 2))
    {
      *(a1 + 76) = bswap32(*v23.sa_data) >> 16;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_3:
  v13 = *MEMORY[0x277D85DE8];
  return v11 & 0xFFFFFFFF00000000 | v12;
}

unint64_t sub_2393D4070(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == -1)
  {
    if (a2 == 2)
    {
      v6 = 30;
    }

    else
    {
      if (a2 != 1)
      {
        v4 = 0x1D300000000;
        v5 = 257;
        goto LABEL_14;
      }

      v6 = 2;
    }

    v7 = socket(v6, 2, 0);
    *(a1 + 56) = v7;
    if (v7 == -1)
    {
      v9 = __error();
      v10 = sub_2393D948C(*v9, "src/inet/UDPEndPointImplSockets.cpp", 0x1D9u);
      v5 = v10;
      v4 = v10 & 0xFFFFFFFF00000000;
      goto LABEL_14;
    }

    v8 = (*(**(*(a1 + 24) + 16) + 88))(*(*(a1 + 24) + 16), v7, a1 + 64);
    v5 = v8;
    if (v8)
    {
      v4 = v8 & 0xFFFFFFFF00000000;
      close(*(a1 + 56));
      *(a1 + 56) = -1;
      goto LABEL_14;
    }

    *(a1 + 60) = a2;
    v28 = 1;
    setsockopt(*(a1 + 56), 0xFFFF, 4, &v28, 4u);
    if (setsockopt(*(a1 + 56), 0xFFFF, 512, &v28, 4u))
    {
      v13 = sub_2393D9044(1u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        *buf = 67109120;
        v30 = v14;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "SO_REUSEPORT failed: %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        v24 = *__error();
        sub_2393D5320(1u, 1);
      }
    }

    v15 = *(a1 + 56);
    if (a2 == 2)
    {
      if (setsockopt(v15, 41, 27, &v28, 4u))
      {
        v16 = sub_2393D9044(1u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *__error();
          *buf = 67109120;
          v30 = v17;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "IPV6_V6ONLY failed: %d", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          v25 = *__error();
          sub_2393D5320(1u, 1);
        }
      }

      if (!setsockopt(*(a1 + 56), 41, 61, &v28, 4u))
      {
        goto LABEL_36;
      }

      v18 = sub_2393D9044(1u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *__error();
        *buf = 67109120;
        v30 = v19;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "IPV6_PKTINFO failed: %d", buf, 8u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!setsockopt(v15, 0, 26, &v28, 4u))
      {
        goto LABEL_36;
      }

      v20 = sub_2393D9044(1u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        *buf = 67109120;
        v30 = v21;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "IP_PKTINFO failed: %d", buf, 8u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_36;
      }
    }

    v26 = *__error();
    sub_2393D5320(1u, 1);
LABEL_36:
    if (setsockopt(*(a1 + 56), 0xFFFF, 4130, &v28, 4u))
    {
      v22 = sub_2393D9044(1u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *__error();
        *buf = 67109120;
        v30 = v23;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "SO_NOSIGPIPE failed: %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        v27 = *__error();
        sub_2393D5320(1u, 1);
      }
    }

    goto LABEL_3;
  }

  if (*(a1 + 60) != a2)
  {
    v4 = 0x23200000000;
    v5 = 3;
    goto LABEL_14;
  }

LABEL_3:
  v4 = 0;
  v5 = 0;
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

unint64_t sub_2393D4500(uint64_t a1, int a2)
{
  result = sub_2393D4070(a1, a2);
  if (!result)
  {
    return 0x1020000002DLL;
  }

  return result;
}

uint64_t sub_2393D4548(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 16);
  result = (*(*v2 + 96))(v2, *(a1 + 64), sub_2393D45F8, a1);
  if (!result)
  {
    v4 = *(a1 + 64);
    v5 = *(*v2 + 104);

    return v5(v2, v4);
  }

  return result;
}

unint64_t sub_2393D4608(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    v8 = 0x11B00000000;
LABEL_9:
    LODWORD(v7) = 47;
    goto LABEL_10;
  }

  v6 = sub_2393CFC5C((a2 + 16));
  v7 = sub_2393D4070(a1, v6);
  if (v7)
  {
LABEL_3:
    v8 = v7 & 0xFFFFFFFF00000000;
    goto LABEL_10;
  }

  v9 = *(a1 + 60);
  if (v9 != sub_2393CFC5C((a2 + 16)))
  {
    v8 = 0x12200000000;
    goto LABEL_9;
  }

  v10 = *a3;
  if (**a3)
  {
    v8 = 0x12500000000;
    LODWORD(v7) = 4;
    goto LABEL_10;
  }

  v13 = v10[1];
  v14 = v10[3];
  v23[0] = v13;
  v23[1] = v14;
  memset(v32, 0, sizeof(v32));
  *&v22.msg_namelen = 0;
  memset(&v22.msg_iovlen, 0, 24);
  v22.msg_iov = v23;
  v22.msg_iovlen = 1;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22.msg_name = &v24;
  if (*(a1 + 60) == 2)
  {
    BYTE1(v24) = 30;
    WORD1(v24) = bswap32(*(a2 + 38)) >> 16;
    *(&v24 + 1) = sub_2393CF9BC((a2 + 16));
    *&v25 = v15;
    v16 = *(a2 + 32);
    DWORD2(v25) = v16;
    v17 = 28;
  }

  else
  {
    BYTE1(v24) = 2;
    WORD1(v24) = bswap32(*(a2 + 38)) >> 16;
    DWORD1(v24) = sub_2393CF9B4(a2 + 16);
    v16 = *(a2 + 32);
    v17 = 16;
  }

  v22.msg_namelen = v17;
  if (!v16)
  {
    v16 = *(a1 + 72);
    if (!v16)
    {
      if (sub_2393CFC5C(a2) == 3)
      {
        goto LABEL_22;
      }

      v16 = 0;
    }
  }

  v22.msg_control = v32;
  v22.msg_controllen = 256;
  v18 = *(a1 + 60);
  if (v18 == 1)
  {
    *&v32[0] = 24;
    DWORD2(v32[0]) = 26;
    HIDWORD(v32[0]) = v16;
    LODWORD(v32[1]) = sub_2393CF9B4(a2);
    v22.msg_controllen = 24;
    v18 = *(a1 + 60);
  }

  if (v18 == 2)
  {
    *&v32[0] = 0x2900000020;
    DWORD2(v32[0]) = 46;
    HIDWORD(v32[1]) = v16;
    *(v32 + 12) = sub_2393CF9BC(a2);
    *(&v32[1] + 4) = v19;
    v22.msg_controllen = 32;
  }

LABEL_22:
  v20 = sendmsg(*(a1 + 56), &v22, 0);
  if (v20 == -1)
  {
    v21 = __error();
    v7 = sub_2393D948C(*v21, "src/inet/UDPEndPointImplSockets.cpp", 0x1A1u);
    goto LABEL_3;
  }

  if (v20 == *(*a3 + 24))
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0x1A800000000;
    LODWORD(v7) = 195;
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

uint64_t sub_2393D48D8(uint64_t result)
{
  if (*(result + 56) != -1)
  {
    v1 = result;
    (*(**(*(result + 24) + 16) + 136))(*(*(result + 24) + 16), result + 64);
    result = close(*(v1 + 56));
    *(v1 + 56) = -1;
  }

  return result;
}

uint64_t sub_2393D4948(_BYTE *a1)
{
  sub_2393D3B88(a1);

  return sub_2393D4980((a1 + 8));
}

uint64_t sub_2393D4980(uint64_t result)
{
  if (!*result)
  {
    sub_239530290();
  }

  v1 = *result - 1;
  *result = v1;
  if (!v1)
  {
    v2 = result - 8;
    v3 = *(result + 16);
    v4 = sub_2393DA0AC();
    --*(v4 + 3);
    v5 = *(*v3 + 24);

    return v5(v3, v2);
  }

  return result;
}

void sub_2393D4A10(uint64_t a1, char a2)
{
  v25[17] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) == 2 && *(a1 + 40) && (a2 & 1) != 0)
  {
    v21 = 0;
    sub_2393CFEFC(v20);
    v23 = *(a1 + 76);
    v21 = *(a1 + 72);
    sub_2393D9C18(0x62FuLL, 0, v24);
    v4 = v24[0];
    v19 = v24[0];
    if (v24[0])
    {
      v18[0] = *(v24[0] + 8);
      v18[1] = sub_2393D980C(v24[0]);
      memset(v25, 0, 128);
      *(&v17.msg_namelen + 1) = 0;
      *(&v17.msg_iovlen + 1) = 0;
      v17.msg_name = v25;
      v17.msg_namelen = 128;
      v17.msg_iov = v18;
      v17.msg_iovlen = 1;
      v17.msg_control = v24;
      v17.msg_flags = 0;
      v17.msg_controllen = 256;
      v5 = recvmsg(*(a1 + 56), &v17, 128);
      if (v5 != -1)
      {
        v6 = v5;
        if (sub_2393D980C(v4) < v5)
        {
          v7 = 194;
          v8 = 0x26C00000000;
LABEL_30:
          v9 = "src/inet/UDPEndPointImplSockets.cpp";
          goto LABEL_31;
        }

        sub_2393D97A0(v4, v6, 0);
        if (BYTE1(v25[0]) == 2)
        {
          sub_2393CF990(&v16, v25 + 1);
        }

        else
        {
          if (BYTE1(v25[0]) != 30)
          {
            v7 = 3;
            v8 = 0x28000000000;
            goto LABEL_30;
          }

          sub_2393CF9A8(&v16, &v25[1]);
        }

        v20[0] = v16;
        v22 = bswap32(WORD1(v25[0])) >> 16;
        goto LABEL_18;
      }

      v10 = __error();
      v11 = sub_2393D948C(*v10, "src/inet/UDPEndPointImplSockets.cpp", 0x268u);
      v7 = v11;
      if (!v11)
      {
LABEL_18:
        if (v17.msg_controllen < 0xC || (msg_control = v17.msg_control) == 0)
        {
LABEL_28:
          sub_2393D955C(&v19);
          (*(a1 + 40))(a1, &v19, v20);
          v4 = v19;
LABEL_34:
          if (v4)
          {
            sub_2393D96C8(v4);
          }

          goto LABEL_36;
        }

        while (1)
        {
          v14 = msg_control[1];
          if (v14 != 41)
          {
            break;
          }

          if (msg_control[2] == 46)
          {
            v21 = msg_control[7];
            sub_2393CF9A8(&v16, (msg_control + 3));
LABEL_26:
            v20[1] = v16;
          }

LABEL_27:
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if ((msg_control + 3) > v17.msg_control + v17.msg_controllen)
          {
            goto LABEL_28;
          }
        }

        if (v14 || msg_control[2] != 26)
        {
          goto LABEL_27;
        }

        v21 = msg_control[3];
        sub_2393CF990(&v16, msg_control + 5);
        goto LABEL_26;
      }

      v9 = v12;
      v8 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = "src/inet/UDPEndPointImplSockets.cpp";
      v8 = 0x2AD00000000;
      v7 = 11;
    }

LABEL_31:
    if (*(a1 + 48) && v7 != sub_2393D948C(35, "src/inet/UDPEndPointImplSockets.cpp", 0x2B7u))
    {
      (*(a1 + 48))(a1, v8 | v7, v9, 0);
    }

    goto LABEL_34;
  }

LABEL_36:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393D4D20(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  if (a2 == 6)
  {
    v6 = 41;
  }

  else
  {
    if (a2 != 4)
    {
      return 0x2DE00000101;
    }

    v6 = 0;
  }

  v10 = v3;
  v11 = v4;
  v9 = a3;
  if (!setsockopt(v5, v6, 11, &v9, 4u))
  {
    return 0;
  }

  v7 = __error();
  return sub_2393D948C(*v7, "src/inet/UDPEndPointImplSockets.cpp", 0x2C4u);
}

uint64_t sub_2393D4DB0(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  if (*a2)
  {
    sub_2393D06DC(v14);
    if (!sub_2393D0718(v14))
    {
LABEL_7:
      sub_2393D06E4(v14);
      return 0x30C00000110;
    }

    while (1)
    {
      sub_2393D0928(v14, &v12);
      if (v12 == *a2 && !sub_2393D07AC(v14, &v13) && sub_2393CFA1C(&v13))
      {
        break;
      }

      sub_2393D0734(v14);
      if ((sub_2393D0718(v14) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v15 = v13;
    sub_2393D06E4(v14);
    v9 = sub_2393CF9B4(&v15);
  }

  else
  {
    v9 = 0;
  }

  DWORD1(v15) = v9;
  LODWORD(v15) = sub_2393CF9B4(a3);
  if (a4)
  {
    v10 = 12;
  }

  else
  {
    v10 = 13;
  }

  if (!setsockopt(*(a1 + 56), 0, v10, &v15, 8u))
  {
    return 0;
  }

  v11 = __error();
  return sub_2393D948C(*v11, "src/inet/UDPEndPointImplSockets.cpp", 0x328u);
}

uint64_t sub_2393D4EE8(int *a1, int *a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    goto LABEL_33;
  }

  sub_2393D0378(&v24);
  if (!sub_2393D03DC(&v24))
  {
    goto LABEL_28;
  }

  v9 = 0;
  if (a4)
  {
    v10 = "join";
  }

  else
  {
    v10 = "leave";
  }

  if (a4)
  {
    v11 = "Joined";
  }

  else
  {
    v11 = "Left";
  }

  do
  {
    if (sub_2393D067C(&v24))
    {
      if (sub_2393D0574(&v24))
      {
        sub_2393D0448(&v24, &v23);
        if (!sub_2393D0B8C(&v23, &v22) && sub_2393CFC5C(&v22) == 2)
        {
          sub_2393D049C(&v24, v30, 0x10uLL);
          *buf = v23;
          v12 = (*(*a1 + 64))(a1, buf, a3, a4);
          v13 = sub_2393D9044(1u);
          v14 = v13;
          if (v12)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v27 = v10;
              v28 = 2080;
              v29 = v30;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "  Failed to %s multicast group on interface %s", buf, 0x16u);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_25;
            }

            v15 = 1;
          }

          else
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v27 = v11;
              v28 = 2080;
              v29 = v30;
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "  %s multicast group on interface %s", buf, 0x16u);
            }

            if (!sub_2393D5398(3u))
            {
              goto LABEL_25;
            }

            v15 = 3;
          }

          sub_2393D5320(1u, v15);
LABEL_25:
          v9 = 1;
        }
      }
    }
  }

  while ((sub_2393D03DC(&v24) & 1) != 0);
  if (v9)
  {
    sub_2393D0384(&v24);
    goto LABEL_38;
  }

LABEL_28:
  v16 = sub_2393D9044(1u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "No valid IPv6 multicast interface found", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(1u, 1);
  }

  sub_2393D0384(&v24);
  v7 = *a2;
LABEL_33:
  v25 = v7;
  *&v24.if_index = sub_2393CF9BC(a3);
  v24.if_name = v17;
  if (a4)
  {
    v18 = 12;
  }

  else
  {
    v18 = 13;
  }

  if (setsockopt(a1[14], 41, v18, &v24, 0x14u))
  {
    v19 = __error();
    result = sub_2393D948C(*v19, "src/inet/UDPEndPointImplSockets.cpp", 0x37Du);
  }

  else
  {
LABEL_38:
    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D524C()
{
  if (atomic_fetch_add(dword_27DF77738, 1u) <= 0)
  {
    return sub_2393D52B8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393D528C(uint64_t result, uint64_t a2)
{
  v2 = atomic_load(dword_27DF77738);
  if (v2 >= 1 && atomic_fetch_add(dword_27DF77738, 0xFFFFFFFF) == 1)
  {
    return nullsub_56(result, a2);
  }

  return result;
}

char *sub_2393D52F8(int a1)
{
  if (a1 >= 45)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return &asc_2395C2001[4 * v1];
}

uint64_t sub_2393D534C(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x2D)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  v3 = &asc_2395C2001[4 * v2];
  v4 = atomic_load(&qword_27DF77740);
  if (v4)
  {
    return v4(v3);
  }

  else
  {
    return nullsub_56(v3, a2);
  }
}

uint64_t sub_2393D53B0(unsigned __int8 *a1, int a2, _BYTE *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a3;
  v5 = a3;
  if (a2)
  {
    v7 = a2;
    v9 = a3;
    do
    {
      v10 = *a1;
      v11 = 16 * (v10 & 3);
      if (v7 == 1)
      {
        v7 = 0;
        v12 = 255;
        ++a1;
      }

      else
      {
        v13 = a1[1];
        v11 = v11 | (v13 >> 4);
        v12 = 4 * (v13 & 0xF);
        if (v7 != 2)
        {
          v15 = a1[2];
          v12 = v12 | (v15 >> 6);
          v14 = v15 & 0x3F;
          a1 += 3;
          v7 -= 3;
          goto LABEL_9;
        }

        v7 = 0;
        a1 += 2;
      }

      v14 = 255;
LABEL_9:
      *v9 = a4(v10 >> 2);
      v9[1] = a4(v11);
      v9[2] = a4(v12);
      v16 = a4(v14);
      v5 = v9 + 4;
      v9[3] = v16;
      v9 += 4;
    }

    while (v7);
  }

  return (v5 - v4);
}

uint64_t sub_2393D54BC(unsigned int a1)
{
  v1 = a1 - 52;
  v2 = (a1 - 52);
  if (v2 == 11)
  {
    v3 = 47;
  }

  else
  {
    v3 = 61;
  }

  if (v2 == 10)
  {
    v4 = 43;
  }

  else
  {
    v4 = v3;
  }

  if (v1 <= 9)
  {
    v5 = v1 | 0x30;
  }

  else
  {
    v5 = v4;
  }

  if (a1 - 26 <= 0x19)
  {
    v6 = a1 + 71;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 0x19)
  {
    return (a1 + 65);
  }

  return v6;
}

uint64_t sub_2393D5524(unsigned int a1)
{
  v1 = a1 - 52;
  v2 = (a1 - 52);
  if (v2 == 11)
  {
    v3 = 95;
  }

  else
  {
    v3 = 61;
  }

  if (v2 == 10)
  {
    v4 = 45;
  }

  else
  {
    v4 = v3;
  }

  if (v1 <= 9)
  {
    v5 = v1 | 0x30;
  }

  else
  {
    v5 = v4;
  }

  if (a1 - 26 <= 0x19)
  {
    v6 = a1 + 71;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 0x19)
  {
    return (a1 + 65);
  }

  return v6;
}

uint64_t sub_2393D5578(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, uint64_t (*a4)(uint64_t))
{
  LODWORD(v8) = 0;
  do
  {
    if (a2 >= 0xBFFD)
    {
      v9 = 49149;
    }

    else
    {
      v9 = a2;
    }

    v10 = sub_2393D53B0(a1, v9, a3, a4);
    v8 = v8 + v10;
    a1 += v9;
    a3 += v10;
    a2 -= v9;
  }

  while (a2);
  return v8;
}

uint64_t sub_2393D55F8(unsigned __int8 *a1, unsigned int a2, _BYTE *a3)
{
  LODWORD(v6) = 0;
  do
  {
    if (a2 >= 0xBFFD)
    {
      v7 = 49149;
    }

    else
    {
      v7 = a2;
    }

    v8 = sub_2393D53B0(a1, v7, a3, sub_2393D54BC);
    v6 = v6 + v8;
    a1 += v7;
    a3 += v8;
    a2 -= v7;
  }

  while (a2);
  return v6;
}

uint64_t sub_2393D5678(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a3;
  LOWORD(v5) = a3;
  if (a2)
  {
    v7 = a2;
    v5 = (a3 + 2);
    v9 = MEMORY[0x277D85DE0];
    v10 = a3;
    while (1)
    {
      v11 = *a1;
      if ((v11 & 0x80000000) != 0)
      {
        if (!__maskrune(v11, 0x800uLL))
        {
          goto LABEL_17;
        }
      }

      else if ((*(v9 + 4 * v11 + 60) & 0x800) == 0)
      {
        goto LABEL_17;
      }

      if (v7 == 1)
      {
        return -1;
      }

      v12 = (a4)(*a1);
      v13 = (a4)(a1[1]);
      v14 = -1;
      if (v12 == 255)
      {
        return v14;
      }

      v15 = v13;
      if (v13 == 255)
      {
        return v14;
      }

      *(v5 - 2) = (v13 >> 4) | (4 * v12);
      if (v7 == 2)
      {
        LOWORD(v5) = v10 + 1;
        return (v5 - v4);
      }

      if (a1[2] == 61)
      {
        LOWORD(v5) = v5 - 1;
        return (v5 - v4);
      }

      v16 = a4();
      if (v16 == 255)
      {
        return -1;
      }

      v17 = v16;
      *(v5 - 1) = (v16 >> 2) | (16 * v15);
      if (v7 == 3)
      {
        return (v5 - v4);
      }

      if (a1[3] == 61)
      {
        break;
      }

      v18 = a4();
      if (v18 == 255)
      {
        return -1;
      }

      v7 -= 4;
      v10 += 3;
      *v5 = v18 | (v17 << 6);
      v5 += 3;
      a1 += 4;
      if (!v7)
      {
LABEL_17:
        LOWORD(v5) = v5 - 2;
        return (v5 - v4);
      }
    }

    LOWORD(v5) = v10 + 2;
  }

  return (v5 - v4);
}

uint64_t sub_2393D57FC(int a1)
{
  v1 = a1 - 65;
  if ((a1 - 97) >= 0x1A)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1 - 71;
  }

  if (v1 >= 0x1A)
  {
    LOBYTE(v1) = v2;
  }

  if ((a1 - 48) <= 9)
  {
    v3 = a1 + 4;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == 47)
  {
    v3 = 63;
  }

  if (a1 == 43)
  {
    return 62;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2393D585C(int a1)
{
  v1 = a1 - 65;
  if ((a1 - 97) >= 0x1A)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1 - 71;
  }

  if (v1 >= 0x1A)
  {
    LOBYTE(v1) = v2;
  }

  if ((a1 - 48) <= 9)
  {
    v3 = a1 + 4;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == 95)
  {
    v3 = 63;
  }

  if (a1 == 45)
  {
    return 62;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2393D58A8(unsigned __int8 *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if (a2 >= 0xFFFC)
  {
    v8 = 65532;
  }

  else
  {
    v8 = a2;
  }

  v9 = sub_2393D5678(a1, v8, a3, a4);
  if (v9 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v10) = 0;
  while (1)
  {
    v10 = v10 + v9;
    v6 -= v8;
    if (!v6)
    {
      break;
    }

    v7 += v8;
    v5 += v9;
    if (v6 >= 0xFFFC)
    {
      v8 = 65532;
    }

    else
    {
      v8 = v6;
    }

    v9 = sub_2393D5678(v7, v8, v5, a4);
    if (v9 == 0xFFFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

double sub_2393D5964(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 24))
  {
    if (*(a1 + 16))
    {
      *a2 = **(a1 + 8);
      v2 = *(a1 + 16) - 1;
      ++*(a1 + 8);
      *(a1 + 16) = v2;
    }

    else
    {
      *&result = 0x9600000019;
      *(a1 + 24) = 0x9600000019;
      *(a1 + 32) = "src/lib/support/BufferReader.h";
    }
  }

  return result;
}

double sub_2393D59B4(uint64_t a1, BOOL *a2)
{
  if (!*(a1 + 24))
  {
    if (*(a1 + 16))
    {
      *a2 = **(a1 + 8) != 0;
      v2 = *(a1 + 16) - 1;
      ++*(a1 + 8);
      *(a1 + 16) = v2;
    }

    else
    {
      *&result = 0x9600000019;
      *(a1 + 24) = 0x9600000019;
      *(a1 + 32) = "src/lib/support/BufferReader.h";
    }
  }

  return result;
}

uint64_t sub_2393D5A0C(uint64_t result, _WORD *a2)
{
  if (!*(result + 24))
  {
    if (*(result + 16) <= 1uLL)
    {
      v3 = 0;
      *(result + 24) = 0x9600000019;
      *(result + 32) = "src/lib/support/BufferReader.h";
    }

    else
    {
      *a2 = **(result + 8);
      v2 = *(result + 16);
      *(result + 8) += 2;
      v3 = v2 - 2;
    }

    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2393D5A68(uint64_t result, _DWORD *a2)
{
  if (!*(result + 24))
  {
    if (*(result + 16) <= 3uLL)
    {
      v3 = 0;
      *(result + 24) = 0x9600000019;
      *(result + 32) = "src/lib/support/BufferReader.h";
    }

    else
    {
      *a2 = **(result + 8);
      v2 = *(result + 16);
      *(result + 8) += 4;
      v3 = v2 - 4;
    }

    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2393D5AC4(uint64_t result, void *a2)
{
  if (!*(result + 24))
  {
    if (*(result + 16) <= 7uLL)
    {
      v3 = 0;
      *(result + 24) = 0x9600000019;
      *(result + 32) = "src/lib/support/BufferReader.h";
    }

    else
    {
      *a2 = **(result + 8);
      v2 = *(result + 16);
      *(result + 8) += 8;
      v3 = v2 - 8;
    }

    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2393D5B20(uint64_t a1, void *__dst, size_t a3)
{
  if (*(a1 + 16) >= a3)
  {
    memcpy(__dst, *(a1 + 8), a3);
    v6 = *(a1 + 16);
    *(a1 + 8) += a3;
    v4 = v6 - a3;
  }

  else
  {
    v4 = 0;
    *(a1 + 24) = 0x9600000019;
    *(a1 + 32) = "src/lib/support/BufferReader.h";
  }

  *(a1 + 16) = v4;
  return a1;
}

uint64_t sub_2393D5B98(uint64_t result, _WORD *a2)
{
  if (*(result + 16) <= 1uLL)
  {
    v3 = 0;
    *(result + 24) = 0x9600000019;
    *(result + 32) = "src/lib/support/BufferReader.h";
  }

  else
  {
    *a2 = bswap32(**(result + 8)) >> 16;
    v2 = *(result + 16);
    *(result + 8) += 2;
    v3 = v2 - 2;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_2393D5BF0(void *result, int *a2)
{
  if (result[2] <= 3uLL)
  {
    v6 = 0;
    result[3] = 0x9600000019;
    result[4] = "src/lib/support/BufferReader.h";
  }

  else
  {
    v2 = 0;
    for (i = 0; i != 4; ++i)
    {
      *a2 = v2 << 8;
      v4 = *(result[1] + i) | (v2 << 8);
      *a2 = v4;
      v2 = v4;
    }

    v5 = result[2];
    result[1] += 4;
    v6 = v5 - 4;
  }

  result[2] = v6;
  return result;
}

void *sub_2393D5C64(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  v6 = a1[2];
  if (v4)
  {
    v7 = a1[1];
    v8 = v7 >= v6;
    v9 = v7 > v6;
    v10 = v7 - v6;
    if (v9)
    {
      if (!v8)
      {
        v10 = 0;
      }

      if (v10 >= v4)
      {
        v11 = v4;
      }

      else
      {
        v11 = v10;
      }

      memmove((*a1 + v6), __s, v11);
      v6 = a1[2];
    }
  }

  a1[2] = v6 + v5;
  return a1;
}

void *sub_2393D5CDC(void *a1, const void *a2, size_t a3)
{
  v3 = a3;
  v5 = a1[2];
  if (a3)
  {
    v6 = a1[1];
    v7 = v6 >= v5;
    v8 = v6 > v5;
    v9 = v6 - v5;
    if (v8)
    {
      if (!v7)
      {
        v9 = 0;
      }

      if (v9 < a3)
      {
        a3 = v9;
      }

      memmove((*a1 + v5), a2, a3);
      v5 = a1[2];
    }
  }

  a1[2] = v5 + v3;
  return a1;
}

void *sub_2393D5D3C(void *result, char a2)
{
  v2 = result[2];
  if (v2 < result[1])
  {
    *(*result + v2) = a2;
    v2 = result[2];
  }

  result[2] = v2 + 1;
  return result;
}

void *sub_2393D5D60(void *result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    do
    {
      if (v3 < result[1])
      {
        *(*result + v3) = a2;
        v3 = result[2];
      }

      result[2] = ++v3;
      a2 >>= 8;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *sub_2393D5D98(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    do
    {
      if (v3 < result[1])
      {
        *(*result + v3) = a2;
        v3 = result[2];
      }

      result[2] = ++v3;
      a2 >>= 8;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *sub_2393D5DD0(void *result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    v4 = 8 * a3 - 8;
    do
    {
      if (v3 < result[1])
      {
        *(*result + v3) = a2 >> v4;
        v3 = result[2];
      }

      result[2] = ++v3;
      v4 -= 8;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *sub_2393D5E14(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    v4 = 8 * a3 - 8;
    do
    {
      if (v3 < result[1])
      {
        *(*result + v3) = a2 >> v4;
        v3 = result[2];
      }

      result[2] = ++v3;
      v4 -= 8;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_2393D5E58(char *a1, uint64_t a2, _BYTE *a3, unint64_t a4, unsigned int a5)
{
  if (!a1 && a2)
  {
    v5 = 0x6700000000;
LABEL_11:
    v6 = 47;
    return v6 | v5;
  }

  if (!a3 && a4)
  {
    v5 = 0x6C00000000;
    goto LABEL_11;
  }

  if (a2 < 0)
  {
    v5 = 0x7400000000;
    goto LABEL_11;
  }

  if (((a5 >> 1) & 1 | (2 * a2)) <= a4)
  {
    if (a2)
    {
      if (a5)
      {
        v8 = 55;
      }

      else
      {
        v8 = 87;
      }

      do
      {
        if (*a1 <= 0x9Fu)
        {
          v9 = (*a1 >> 4) | 0x30;
        }

        else
        {
          v9 = v8 + (*a1 >> 4);
        }

        *a3 = v9;
        v10 = *a1++;
        v11 = v8 + (v10 & 0xF);
        v12 = v10 & 0xF | 0x30;
        if ((v10 & 0xFu) <= 9)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        v14 = a3 + 2;
        a3[1] = v13;
        a3 += 2;
        --a2;
      }

      while (a2);
      a3 = v14;
    }

    v5 = 0;
    v6 = 0;
    if ((a5 & 2) != 0)
    {
      *a3 = 0;
    }
  }

  else
  {
    v5 = 0x7B00000000;
    v6 = 25;
  }

  return v6 | v5;
}

uint64_t sub_2393D5F58(unint64_t a1, _BYTE *a2, unint64_t a3, unsigned int a4)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = bswap64(a1);
  result = sub_2393D5E58(v6, 8, a2, a3, a4);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D604C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  if (a1)
  {
    if (a3)
    {
      v5 = 0;
      if ((a2 & 1) == 0 && a2 - 1 < 2 * a4)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = 0;
          v9 = 0;
          v10 = 1;
          do
          {
            v11 = v10;
            v12 = *(a1 + v6 + v9);
            if ((v12 - 48) >= 0xA)
            {
              if ((v12 - 65) >= 6)
              {
                v5 = 0;
                if ((a5 & 1) != 0 || (v12 - 103) < 0xFAu)
                {
                  return v5;
                }

                v13 = -87;
              }

              else
              {
                v13 = -55;
              }
            }

            else
            {
              v13 = -48;
            }

            v10 = 0;
            v8 = v12 + 16 * v8 + v13;
            v9 = 1;
          }

          while ((v11 & 1) != 0);
          *(a3 + (v6 >> 1)) = v8;
          ++v7;
          v6 += 2;
          v5 = v7;
        }

        while (v6 < a2);
      }
    }
  }

  return v5;
}

uint64_t sub_2393D6110(uint64_t a1, unint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v4 = sub_2393D604C(a1, a2, v7, 8, 1);
  result = 0;
  if (v4 == 8)
  {
    *a3 = bswap64(v7[0]);
    result = 8;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D6198(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v5 = 0;
  result = sub_2393D604C(a1, a2, &v5, 4, 1);
  if (result != 4)
  {
    return 0;
  }

  *a3 = bswap32(v5);
  return result;
}

uint64_t sub_2393D61F0(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v5 = 0;
  result = sub_2393D604C(a1, a2, &v5, 2, 1);
  if (result != 2)
  {
    return 0;
  }

  *a3 = bswap32(v5) >> 16;
  return result;
}

uint64_t sub_2393D624C(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a2;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = "";
    }

    while (1)
    {
      v6 = v3 >= 0x20 ? 32 : v3;
      v7 = sub_2393D5E58(v4, v6, v19, 0x41uLL, 3u);
      v8 = sub_2393D9044(0x1Bu);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        break;
      }

      if (v9)
      {
        *buf = 136315394;
        v16 = v5;
        v17 = 2080;
        v18 = v19;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s>>>%s", buf, 0x16u);
      }

      result = sub_2393D5398(2u);
      if (result)
      {
        result = sub_2393D5320(0x1Bu, 2);
      }

      v4 += v6;
      v3 -= v6;
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    if (v9)
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v16 = v13;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Failed to dump hex %s", buf, 0xCu);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      sub_2393C9138();
LABEL_25:
      result = sub_2393D5320(0x1Bu, 2);
    }
  }

  else
  {
    v11 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "";
      if (a1)
      {
        v12 = a1;
      }

      *v19 = 136315138;
      v20 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "%s>>>", v19, 0xCu);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D64AC(unsigned int a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0x100000000;
  if (a1 >= 2)
  {
    v2 = 0;
    if (a1 + 1 > 3)
    {
      v3 = a1 + 1;
    }

    else
    {
      v3 = 3;
    }

    v4 = v3 - 2;
    v5 = 1;
    do
    {
      result = (v5 + v2);
      v2 = v5;
      v5 = result;
      --v4;
    }

    while (v4);
  }

  else
  {
    result = *(v7 + a1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2393D6544()
{
  v6 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD69 & 1) == 0)
  {
    v0 = atexit(sub_2393D663C);
    if (v0)
    {
      v1 = v0;
      v2 = sub_2393D9044(9u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v5 = v1;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "IgnoreLeaksOnExit: atexit failed: %d\n", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }
    }

    byte_27DF7BD69 = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void *sub_2393D664C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = a4;
  result[3] = a2;
  result[4] = a5;
  result[5] = a3;
  if (a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      atomic_store(0, (result[5] + v6));
      v6 += 8;
      v5 += 64;
    }

    while (v5 < result[2]);
  }

  return result;
}

void *sub_2393D6688(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = a4;
  result[3] = a2;
  result[4] = a5;
  result[5] = a3;
  if (a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      atomic_store(0, (result[5] + v5));
      v6 += 64;
      v5 += 8;
    }

    while (v6 < result[2]);
  }

  return result;
}

unint64_t sub_2393D66C4(unint64_t *a1)
{
  if (a1[2])
  {
    v1 = 0;
    v2 = 0;
    while (2)
    {
      v3 = 0;
      v4 = a1[5];
      v5 = *(v4 + 8 * v2);
      while (1)
      {
        v6 = a1[2];
        if (v1 + v3 >= v6)
        {
          break;
        }

        if (((1 << v3) & v5) == 0)
        {
          v7 = v5;
          atomic_compare_exchange_strong((v4 + 8 * v2), &v7, (1 << v3) | v5);
          if (v7 == v5)
          {
            v9 = a1[1];
            v10 = *a1 + 1;
            *a1 = v10;
            v11 = v1 + v3;
            if (v10 > v9)
            {
              a1[1] = v10;
            }

            return a1[3] + a1[4] * v11;
          }

          v5 = *(v4 + 8 * v2);
        }

        if (++v3 == 64)
        {
          v6 = a1[2];
          break;
        }
      }

      ++v2;
      v1 += 64;
      if (v6 > v2 << 6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

unint64_t sub_2393D676C(void *a1, uint64_t a2)
{
  result = sub_2393D67D0(a1, a2);
  if (result >= a1[2])
  {
    sub_239530350();
  }

  if ((atomic_fetch_and((a1[5] + 8 * (result >> 6)), ~(1 << result)) & (1 << result)) == 0)
  {
    sub_2395303E8();
  }

  --*a1;
  return result;
}

unint64_t sub_2393D67D0(void *a1, uint64_t a2)
{
  v2 = a2 - a1[3];
  if ((v2 & 0x8000000000000000) != 0)
  {
    sub_239530480();
  }

  v3 = a1[4];
  if (v2 % v3)
  {
    sub_239530518();
  }

  if (v2 / v3 >= a1[2])
  {
    sub_2395305B0();
  }

  return v2 / v3;
}

uint64_t sub_2393D681C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!a1[2])
  {
    return 2;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = *(a1[5] + 8 * v7);
    while (1)
    {
      v10 = a1[2];
      if (v6 + v8 >= v10)
      {
        break;
      }

      if ((v9 >> v8))
      {
        result = a3(a2, a1[3] + a1[4] * (v6 + v8));
        if (result == 1)
        {
          return result;
        }
      }

      if (++v8 == 64)
      {
        v10 = a1[2];
        break;
      }
    }

    ++v7;
    v6 += 64;
  }

  while (v10 > v7 << 6);
  return 2;
}

unint64_t sub_2393D68D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = 0;
    result = 0;
    v5 = 0;
    v6 = *(a1 + 40);
LABEL_3:
    v7 = 0;
    while (((*(v6 + 8 * v5) >> v7) & 1) == 0)
    {
      ++result;
      if (v7 <= 0x3E && ++v7 + v3 < v1)
      {
        continue;
      }

      ++v5;
      v3 += 64;
      if (v1 > v5 << 6)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = 0;
LABEL_10:
    v8 = result == v1;
    result = v1;
    if (!v8)
    {
      sub_239530648();
    }
  }

  return result;
}

unint64_t sub_2393D695C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    result = 0;
    v6 = 0;
    v7 = *(a1 + 40);
LABEL_3:
    v8 = 0;
    while (((*(v7 + 8 * v6) >> v8) & 1) == 0 || result <= a2)
    {
      ++result;
      if (v8 <= 0x3E && ++v8 + v4 < v2)
      {
        continue;
      }

      ++v6;
      v4 += 64;
      if (v2 > v6 << 6)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
LABEL_11:
    v9 = result == v2;
    result = v2;
    if (!v9)
    {
      sub_2395306E0();
    }
  }

  return result;
}

void *sub_2393D69E8(void *result, uint64_t a2)
{
  v2 = result;
  while (1)
  {
    result = result[1];
    if (result == v2)
    {
      break;
    }

    if (*result == a2)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_2393D6A10(void *a1, uint64_t a2, unsigned int (*a3)(uint64_t))
{
  v4 = a1[3];
  a1[3] = v4 + 1;
  v5 = a1[1];
  if (v5 == a1)
  {
    v8 = 2;
  }

  else
  {
    while (!*v5 || a3(a2) != 1)
    {
      v5 = v5[1];
      if (v5 == a1)
      {
        v8 = 2;
        goto LABEL_8;
      }
    }

    v8 = 1;
LABEL_8:
    v4 = a1[3] - 1;
  }

  a1[3] = v4;
  sub_2393D6AA8(a1);
  return v8;
}

void *sub_2393D6AA8(void *result)
{
  if (!result[3])
  {
    v1 = result;
    if (*(result + 32) == 1)
    {
      result = result[1];
      if (result != v1)
      {
        do
        {
          v2 = result[1];
          if (!*result)
          {
            v3 = result[2];
            v2[2] = v3;
            *(v3 + 8) = result[1];
            j__free(result);
          }

          result = v2;
        }

        while (v2 != v1);
      }

      *(v1 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_2393D6B1C(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      j__free(v2);
    }
  }

  return a1;
}

uint64_t sub_2393D6B58(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2393D6B98(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    sub_239530778();
  }

  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      j__free(v4);
    }
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_2393D6C18(uint64_t a1, size_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v3 >= v4)
  {
    v8 = 0;
    v9 = 0;
  }

  else if (*(a1 + 8))
  {
    v6 = *a1;
    if (*(a1 + 32) == 1)
    {
      v7 = sub_2393D52DC(*(a1 + 8), v6 * v4);
      if (!v7)
      {
        v8 = 0x6000000000;
LABEL_14:
        v9 = 11;
        return v9 | v8;
      }
    }

    else
    {
      v11 = sub_2393D52D0(v4, v6);
      if (!v11)
      {
        v8 = 0x6700000000;
        goto LABEL_14;
      }

      v7 = v11;
      *(a1 + 32) = 1;
      memcpy(v11, *(a1 + 8), *a1 * *(a1 + 16));
    }

    v8 = 0;
    v9 = 0;
    *(a1 + 8) = v7;
    *(a1 + 24) = *(a1 + 16) + a2;
  }

  else
  {
    v10 = sub_2393D52D0(a2, *a1);
    *(a1 + 8) = v10;
    if (!v10)
    {
      v8 = 0x5400000000;
      goto LABEL_14;
    }

    v8 = 0;
    v9 = 0;
    *(a1 + 24) = a2;
    *(a1 + 32) = 1;
  }

  return v9 | v8;
}

uint64_t sub_2393D6D28(size_t *a1, const void *a2)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    v4 = 0x7300000000;
    v5 = 25;
  }

  else
  {
    memcpy((a1[1] + *a1 * v2), a2, *a1);
    v4 = 0;
    v5 = 0;
    ++a1[2];
  }

  return v5 | v4;
}

unint64_t sub_2393D6D94(void *a1, const void *a2, size_t a3)
{
  v6 = sub_2393D6C18(a1, a3);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    memcpy((a1[1] + *a1 * a1[2]), a2, *a1 * a3);
    LODWORD(v6) = 0;
    v7 = 0;
    a1[2] += a3;
  }

  return v7 | v6;
}

unint64_t sub_2393D6E10(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 8))
  {
    return sub_2393D6D94(a1, a2, a3);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a1 + 24))
  {
    sub_239530828();
  }

  if (*(a1 + 32) == 1)
  {
    sub_2395308D8();
  }

  return 0;
}

uint64_t sub_2393D6E5C(uint64_t result, void *a2, void *a3, _BYTE *a4)
{
  *a2 = *(result + 8);
  *a3 = *(result + 16);
  *a4 = *(result + 32);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 24) = 0;
  return result;
}

void **sub_2393D6E84(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    j__free(v2);
  }

  return a1;
}

void **sub_2393D6EB4(void **a1, void **a2)
{
  v4 = *a1;
  if (v4)
  {
    j__free(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void *sub_2393D6EF4(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = a1[1];
  v3 = a1[2];
  v5 = v4 - v3;
  if (v4 < v3)
  {
    v5 = 0;
    v3 = a1[1];
  }

  v6 = vsnprintf((*a1 + v3), v5 + 1, __format, va);
  if (v6 >= 1)
  {
    a1[2] += v6;
  }

  v7 = a1[2];
  if (a1[1] < v7)
  {
    v7 = a1[1];
  }

  *(*a1 + v7) = 0;
  return a1;
}

void *sub_2393D6F78(void *result)
{
  if (result[1] < result[2])
  {
    v1 = 0;
    v2 = -1;
    do
    {
      v3 = result[1];
      if (v3 > v1)
      {
        *(*result + v3 + v2) = 46;
      }

      ++v1;
      --v2;
    }

    while (v1 != 3);
  }

  return result;
}

BOOL sub_2393D6FBC(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFE)
  {
    return 0;
  }

  v2 = a2 == 0;
  if (a2 >= 2)
  {
    v3 = a1 + a2;
    while (1)
    {
      v4 = *(a1 + 1);
      if (v4 == 255)
      {
        break;
      }

      v5 = a1 + v4;
      a1 += v4 + 2;
      v2 = a1 == v3;
      v6 = v5 + 4;
      if (a1 == v3)
      {
        v7 = 1;
        v8 = 0;
      }

      else
      {
        v7 = v6 >= v3;
        v8 = v6 == v3;
      }

      if (!v8 && v7)
      {
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_2393D7010(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 0xFE)
  {
    goto LABEL_12;
  }

  v3 = a3 == 0;
  if (a3 < 2)
  {
LABEL_10:
    if (v3)
    {
      v11 = 0;
      v5 = 0;
      *a1 = a2;
      a1[1] = a3;
      return v5 | v11;
    }

LABEL_12:
    v11 = 0xA800000000;
    v5 = 47;
    return v5 | v11;
  }

  v4 = a2 + a3;
  v5 = 47;
  v6 = a2;
  while (1)
  {
    v7 = *(v6 + 1);
    if (v7 == 255)
    {
      break;
    }

    v8 = v6 + v7;
    v6 += v7 + 2;
    v3 = v6 == v4;
    v9 = v8 + 4;
    if (v6 == v4 || v9 > v4)
    {
      goto LABEL_10;
    }
  }

  v11 = 0xA800000000;
  return v5 | v11;
}

unsigned __int8 *sub_2393D70A0(unsigned __int8 **a1, int a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    return 0;
  }

  result = *a1;
  v4 = &result[v2];
  while (*result != a2)
  {
    result += result[1] + 2;
    if (result >= v4)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2393D70DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a1 + v1;
  v4 = *a1;
  while (*v4 != 1)
  {
    v4 += v4[1] + 2;
    if (v4 >= v3)
    {
      return 0;
    }
  }

  v5 = *a1;
  while (*v5 != 5)
  {
    v5 += v5[1] + 2;
    if (v5 >= v3)
    {
      return 0;
    }
  }

  v6 = *a1;
  while (*v6 != 2)
  {
    v6 += v6[1] + 2;
    if (v6 >= v3)
    {
      return 0;
    }
  }

  do
  {
    result = *v2 == 0;
    if (!*v2)
    {
      break;
    }

    v2 += v2[1] + 2;
  }

  while (v2 < v3);
  return result;
}

uint64_t sub_2393D7194(unint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xC400000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 14)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xC400000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 8)
    {
      v6 = 0;
      v5 = 0;
      *a2 = bswap64(*(v3 + 2));
    }

    else
    {
      v6 = 0xC500000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D7234(unint64_t *a1, _WORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xCD00000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xCD00000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 3)
    {
      if (!*(v3 + 2))
      {
        v6 = 0;
        v5 = 0;
        *a2 = bswap32(*(v3 + 3)) >> 16;
        return v5 | v6;
      }

      v6 = 0xD000000000;
    }

    else
    {
      v6 = 0xCE00000000;
    }

    v5 = 35;
  }

  return v5 | v6;
}

uint64_t sub_2393D72E4(unint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xE900000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 2)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xE900000000;
        return v6 | v5;
      }
    }

    if (*(v3 + 1) == 8)
    {
      v5 = 0;
      v6 = 0;
      *a2 = *(v3 + 2);
    }

    else
    {
      v6 = 0xEA00000000;
      v5 = 35;
    }
  }

  return v6 | v5;
}

uint64_t sub_2393D7380(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v6 = 0xE900000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 2)
    {
      v3 += v3[1] + 2;
      if (v3 >= v4)
      {
        v6 = 0xE900000000;
        return v5 | v6;
      }
    }

    if (v3[1] == 8)
    {
      v6 = 0;
      v5 = 0;
      *a2 = v3 + 2;
      a2[1] = 8;
    }

    else
    {
      v6 = 0xEA00000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D7420(unint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xE900000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 2)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xE900000000;
        return v6 | v5;
      }
    }

    if (*(v3 + 1) == 8)
    {
      v5 = 0;
      v6 = 0;
      *a2 = bswap64(*(v3 + 2));
    }

    else
    {
      v6 = 0xEA00000000;
      v5 = 35;
    }
  }

  return v6 | v5;
}

uint64_t sub_2393D74C0(unint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xF200000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 7)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xF200000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 8)
    {
      v6 = 0;
      v5 = 0;
      *a2 = *(v3 + 2);
    }

    else
    {
      v6 = 0xF300000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D755C(unint64_t *a1, _OWORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0xFB00000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 5)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0xFB00000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 16)
    {
      v6 = 0;
      v5 = 0;
      *a2 = *(v3 + 2);
    }

    else
    {
      v6 = 0xFC00000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D75F8(uint64_t a1, void *__dst)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v7 = 0x10400000000;
    v6 = 118;
  }

  else
  {
    v4 = *a1;
    v5 = *a1 + v2;
    v6 = 118;
    while (*v4 != 3)
    {
      v4 += v4[1] + 2;
      if (v4 >= v5)
      {
        v7 = 0x10400000000;
        return v6 | v7;
      }
    }

    v8 = v4[1];
    if (v8 > 0x10)
    {
      v7 = 0x10500000000;
      v6 = 35;
    }

    else
    {
      memcpy(__dst, v4 + 2, v8);
      v7 = 0;
      v6 = 0;
      *(__dst + v4[1]) = 0;
    }
  }

  return v6 | v7;
}

uint64_t sub_2393D76BC(unint64_t *a1, _WORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0x10E00000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 1)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0x10E00000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 2)
    {
      v6 = 0;
      v5 = 0;
      *a2 = bswap32(*(v3 + 2)) >> 16;
    }

    else
    {
      v6 = 0x10F00000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D7760(unint64_t *a1, _OWORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0x11700000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 4)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0x11700000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 16)
    {
      v6 = 0;
      v5 = 0;
      *a2 = *(v3 + 2);
    }

    else
    {
      v6 = 0x11800000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D77FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v6 = 0x12000000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 53)
    {
      v3 += v3[1] + 2;
      if (v3 >= v4)
      {
        v6 = 0x12000000000;
        return v5 | v6;
      }
    }

    v7 = v3[1];
    if (v3[1])
    {
      v6 = 0;
      v5 = 0;
      *a2 = v3 + 2;
      a2[1] = v7;
    }

    else
    {
      v6 = 0x12100000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D7894(unint64_t *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0x12900000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 12)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0x12900000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 4)
    {
      v6 = 0;
      v5 = 0;
      *a2 = bswap32(*(v3 + 2));
    }

    else
    {
      v6 = 0x12A00000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D7934(unint64_t *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (v2 < 1)
  {
    v6 = 0x13200000000;
    v5 = 118;
  }

  else
  {
    v3 = *a1;
    v4 = *a1 + v2;
    v5 = 118;
    while (*v3 != 52)
    {
      v3 += *(v3 + 1) + 2;
      if (v3 >= v4)
      {
        v6 = 0x13200000000;
        return v5 | v6;
      }
    }

    if (*(v3 + 1) == 4)
    {
      v6 = 0;
      v5 = 0;
      *a2 = bswap32(*(v3 + 2));
    }

    else
    {
      v6 = 0x13300000000;
      v5 = 35;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393D79D4(_OWORD *a1, char *__src, size_t __len)
{
  if (__len > 0xFE)
  {
    v15 = 0x13E00000000;
    v9 = 47;
  }

  else
  {
    v18 = v3;
    v19 = v4;
    v7 = __len == 0;
    if (__len < 2)
    {
LABEL_10:
      if (v7)
      {
        memmove(a1 + 1, __src, __len);
        sub_238DB6950(&v17, (a1 + 1), __len);
        v9 = 0;
        v15 = 0;
        *a1 = v17;
      }

      else
      {
        v15 = 0x13E00000000;
        v9 = 47;
      }
    }

    else
    {
      v8 = &__src[__len];
      v9 = 47;
      v10 = __src;
      while (1)
      {
        v11 = v10[1];
        if (v11 == 255)
        {
          break;
        }

        v12 = &v10[v11];
        v10 += v11 + 2;
        v7 = v10 == v8;
        v13 = (v12 + 4);
        if (v10 == v8 || v13 > v8)
        {
          goto LABEL_10;
        }
      }

      v15 = 0x13E00000000;
    }
  }

  return v15 | v9;
}

void *sub_2393D7AC8(void *__dst)
{
  v1 = (__dst + 2);
  if (*__dst != __dst + 2)
  {
    v2 = __dst;
    __dst = memmove(__dst + 2, *__dst, __dst[1]);
    *v2 = v1;
  }

  return __dst;
}

double sub_2393D7B08(uint64_t a1)
{
  v2 = *(a1 + 8);
  memmove((a1 + 16), *a1, v2);
  sub_238DB6950(&v4, a1 + 16, v2);
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_2393D7B54(uint64_t *a1, unsigned __int8 *__dst)
{
  v3 = __dst[1];
  memmove(__dst, &__dst[v3 + 2], *a1 + a1[1] - &__dst[v3 + 2]);
  sub_238DB6950(&v5, *a1, a1[1] - v3 - 2);
  result = *&v5;
  *a1 = v5;
  return result;
}

double sub_2393D7BBC(uint64_t *a1, int a2)
{
  v4 = (a1 + 2);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != a1 + 2)
  {
    memmove(a1 + 2, v5, v6);
    *a1 = v4;
    v5 = v4;
  }

  if (v6 >= 1)
  {
    v8 = &v5[v6];
    while (*v5 != a2)
    {
      v5 += v5[1] + 2;
      if (v5 >= v8)
      {
        return result;
      }
    }

    v9 = v5[1];
    memmove(v5, &v5[v9 + 2], v8 - &v5[v9 + 2]);
    sub_238DB6950(&v10, *a1, a1[1] - v9 - 2);
    result = *&v10;
    *a1 = v10;
  }

  return result;
}

_BYTE *sub_2393D7C7C(uint64_t *a1, int a2, unint64_t a3)
{
  v6 = (a1 + 2);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != a1 + 2)
  {
    memmove(a1 + 2, v7, v8);
    *a1 = v6;
    v7 = v6;
  }

  if (v8 < 1)
  {
LABEL_7:
    if (a3 + v8 + 2 <= 0xFE)
    {
LABEL_13:
      v7 = (v6 + v8);
      *v7 = a2;
      v7[1] = a3;
      sub_238DB6950(&v12, v6, a1[1] + a3 + 2);
      *a1 = v12;
      return v7;
    }

    return 0;
  }

  v9 = &v7[v8];
  while (*v7 != a2)
  {
    v7 += v7[1] + 2;
    if (v7 >= v9)
    {
      goto LABEL_7;
    }
  }

  v10 = v7[1];
  if (v10 != a3)
  {
    if (v10 > a3 || v8 + a3 - v10 <= 0xFE)
    {
      memmove(v7, &v7[v10 + 2], v9 - &v7[v10 + 2]);
      sub_238DB6950(&v12, *a1, a1[1] - v10 - 2);
      *a1 = v12;
      v8 = a1[1];
      goto LABEL_13;
    }

    return 0;
  }

  return v7;
}

uint64_t sub_2393D7DB4(uint64_t *a1, unint64_t a2)
{
  v3 = sub_2393D7C7C(a1, 14, 8uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = bswap64(a2);
  }

  else
  {
    v4 = 0x18500000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D7E10(uint64_t *a1, unsigned int a2)
{
  v3 = sub_2393D7C7C(a1, 0, 3uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v3[2] = 0;
    *(v3 + 3) = __rev16(a2);
  }

  else
  {
    v4 = 0x19000000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D7E70(uint64_t *a1, void *a2)
{
  v3 = sub_2393D7C7C(a1, 2, 8uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = *a2;
  }

  else
  {
    v4 = 0x19900000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D7ECC(uint64_t *a1, _OWORD *a2)
{
  v3 = sub_2393D7C7C(a1, 5, 0x10uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = *a2;
  }

  else
  {
    v4 = 0x1A200000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D7F30(uint64_t *a1, void *a2)
{
  v3 = sub_2393D7C7C(a1, 7, 8uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = *a2;
  }

  else
  {
    v4 = 0x1B000000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D7F8C(uint64_t *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 - 1 > 0xF)
    {
      v7 = 0x1B900000000;
      v8 = 30;
    }

    else
    {
      v5 = v4;
      v6 = sub_2393D7C7C(a1, 3, v4);
      if (v6)
      {
        memcpy(v6 + 2, __s, v5);
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = 0x1BD00000000;
        v8 = 11;
      }
    }
  }

  else
  {
    v7 = 0x1B700000000;
    v8 = 47;
  }

  return v8 | v7;
}

uint64_t sub_2393D8048(uint64_t *a1, unsigned int a2)
{
  v3 = sub_2393D7C7C(a1, 1, 2uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 1) = __rev16(a2);
  }

  else
  {
    v4 = 0x1C600000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D80A4(uint64_t *a1, _OWORD *a2)
{
  v3 = sub_2393D7C7C(a1, 4, 0x10uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = *a2;
  }

  else
  {
    v4 = 0x1CF00000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D8108(uint64_t *a1, const void *a2, unint64_t a3)
{
  if (a3 - 1 > 0xFB)
  {
    v7 = 0x1DB00000000;
    v6 = 47;
  }

  else
  {
    v5 = sub_2393D7C7C(a1, 53, a3);
    if (v5)
    {
      memcpy(v5 + 2, a2, a3);
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0x1DD00000000;
      v6 = 11;
    }
  }

  return v7 | v6;
}

uint64_t sub_2393D8190(uint64_t *a1, unsigned int a2)
{
  v3 = sub_2393D7C7C(a1, 12, 4uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = bswap32(a2);
  }

  else
  {
    v4 = 0x1E600000000;
    v5 = 11;
  }

  return v5 | v4;
}

uint64_t sub_2393D81EC(uint64_t *a1, unsigned int a2)
{
  v3 = sub_2393D7C7C(a1, 52, 4uLL);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(v3 + 2) = bswap32(a2);
  }

  else
  {
    v4 = 0x1EF00000000;
    v5 = 11;
  }

  return v5 | v4;
}

BOOL sub_2393D8248(int a1)
{
  if ((a1 & 3) != 0)
  {
    return 0;
  }

  HIDWORD(v2) = -1030792151 * a1;
  LODWORD(v2) = -1030792151 * a1;
  if ((v2 >> 2) > 0x28F5C28)
  {
    return 1;
  }

  HIDWORD(v3) = -1030792151 * a1;
  LODWORD(v3) = -1030792151 * a1;
  return (v3 >> 4) < 0xA3D70B;
}

uint64_t sub_2393D8298(unsigned int a1, int a2)
{
  if (a2 == 2)
  {
    if ((a1 & 3) == 0)
    {
      HIDWORD(v2) = -1030792151 * a1;
      LODWORD(v2) = -1030792151 * a1;
      if ((v2 >> 2) > 0x28F5C28 || a1 == 400 * ((10737419 * a1) >> 32))
      {
        return 29;
      }
    }

    return byte_2395C20C8[a2 - 1];
  }

  if ((a2 - 1) <= 0xB)
  {
    return byte_2395C20C8[a2 - 1];
  }

  return 0;
}

uint64_t sub_2393D8318(int a1)
{
  if (1 - a1 >= 0)
  {
    v1 = -((1 - a1) & 3);
  }

  else
  {
    v1 = (a1 - 1) & 3;
  }

  return ((5 * v1 + 4 * ((a1 - 1) % 100) + 6 * ((a1 - 1) % 400) + 1) % 7);
}

uint64_t sub_2393D8398(uint64_t result, __int16 a2, _BYTE *a3, _BYTE *a4)
{
  v4 = 59;
  if ((result & 3) == 0)
  {
    HIDWORD(v6) = -1030792151 * result;
    LODWORD(v6) = -1030792151 * result;
    v5 = v6 >> 2;
    HIDWORD(v6) = -1030792151 * result;
    LODWORD(v6) = -1030792151 * result;
    if ((v6 >> 4) < 0xA3D70B || v5 > 0x28F5C28)
    {
      v4 = 60;
    }

    else
    {
      v4 = 59;
    }
  }

  v8 = v4;
  v9 = a2 - 1 - v4;
  if (v8 > (a2 - 1))
  {
    v9 = a2 + 305;
  }

  v10 = 28071682 * (5 * v9 + 2);
  *a3 = BYTE4(v10);
  *a4 = v9 - (153 * BYTE4(v10) + 2) / 5u + 1;
  v11 = *a3;
  if (v11 >= 0xA)
  {
    v12 = -9;
  }

  else
  {
    v12 = 3;
  }

  *a3 = v12 + v11;
  return result;
}

uint64_t sub_2393D8458(uint64_t result, unsigned int a2, __int16 a3, _WORD *a4)
{
  if (a2 <= 2)
  {
    v4 = 9;
  }

  else
  {
    v4 = -3;
  }

  v5 = (v4 + a2);
  HIDWORD(v7) = -1030792151 * result;
  LODWORD(v7) = -1030792151 * result;
  v6 = v7 >> 2;
  HIDWORD(v7) = -1030792151 * result;
  LODWORD(v7) = -1030792151 * result;
  if ((v7 >> 4) < 0xA3D70B || v6 > 0x28F5C28)
  {
    LOBYTE(v9) = 60;
  }

  else
  {
    LOBYTE(v9) = 59;
  }

  if ((result & 3) != 0)
  {
    LOBYTE(v9) = 59;
  }

  v9 = v9;
  if (v5 > 9)
  {
    v9 = -306;
  }

  *a4 = v9 + (153 * v5 + 2) / 5u + a3;
  return result;
}

BOOL sub_2393D84E8(__int16 a1, unsigned int a2, __int16 a3, unsigned int *a4)
{
  if ((a1 - 1970) > 0x66C2u)
  {
    v6 = -1;
  }

  else
  {
    if (a2 >= 3)
    {
      v5 = -3;
    }

    else
    {
      v5 = 9;
    }

    v4 = a2 < 3;
    v6 = 365 * ((a1 - v4) % 0x190u) + 146097 * ((a1 - v4) / 0x190u) - (a1 - v4) % 0x190u / 0x64 + (((a1 - v4) % 0x190u) >> 2) + (a3 + (153 * (v5 + a2) + 2) / 5u - 1) - 719468;
  }

  result = (a1 - 1970) < 0x66C3u;
  *a4 = v6;
  return result;
}

BOOL sub_2393D85A8(unsigned int a1, _WORD *a2, _BYTE *a3, _BYTE *a4)
{
  if (a1 <= 0x16CFE92)
  {
    v4 = (a1 + 719468) % 0x23AB1;
    v5 = v4 / 0x8EAC + v4 - (v4 / 0x23AB0 + v4 / 0x5B4);
    LOWORD(v4) = v4 - 365 * (v5 / 0x16D) - ((v5 / 0x5B4) & 0x3FFF) + (((5243 * ((v5 / 0x5B4) & 0x3FFF)) >> 16) >> 1);
    v6 = 28071682 * (5 * v4 + 2);
    *a3 = BYTE4(v6);
    *a4 = v4 - (153 * BYTE4(v6) + 2) / 5u + 1;
    v7 = *a3;
    if (v7 >= 0xA)
    {
      v8 = -9;
    }

    else
    {
      v8 = 3;
    }

    *a3 = v8 + v7;
    v9 = 400 * ((a1 + 719468) / 0x23AB1) + v5 / 0x16D;
    *a2 = v9;
    if (*a3 <= 2u)
    {
      *a2 = v9 + 1;
    }
  }

  return a1 < 0x16CFE93;
}

BOOL sub_2393D86F8(__int16 *a1, _BYTE *a2, _BYTE *a3, int a4)
{
  v10 = 0;
  if (!sub_2393D84E8(*a1, *a2, *a3, &v10))
  {
    return 0;
  }

  v8 = v10 + a4;
  if (HIDWORD(v8))
  {
    return 0;
  }

  return sub_2393D85A8(v8, a1, a2, a3);
}

BOOL sub_2393D8794(int a1, unsigned int a2, __int16 a3, int a4, int a5, int a6, unsigned int *a7)
{
  v8 = a1 - 1970;
  if ((a1 - 1970) > 0x87)
  {
    v12 = -1;
  }

  else
  {
    v14 = 0;
    sub_2393D84E8(a1, a2, a3, &v14);
    v12 = 3600 * a4 + 60 * a5 + a6 + 86400 * v14;
  }

  result = v8 < 0x88u;
  *a7 = v12;
  return result;
}

BOOL sub_2393D882C(unsigned int a1, _WORD *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v10 = a1 % 0x15180;
  result = sub_2393D85A8(a1 / 0x15180, a2, a3, a4);
  *a5 = v10 / 0xE10;
  v12 = v10 - 3600 * (v10 / 0xE10);
  *a6 = v12 / 0x3C;
  *a7 = v12 % 0x3C;
  return result;
}

BOOL sub_2393D88C0(int a1, unsigned int a2, __int16 a3, int a4, int a5, int a6, _DWORD *a7)
{
  v7 = a1 - 2000;
  if ((a1 - 2000) <= 0x87)
  {
    v13 = 0;
    sub_2393D84E8(a1, a2, a3, &v13);
    *a7 = 60 * a5 + 3600 * a4 + a6 + 86400 * v13 - 946684800;
  }

  return v7 < 0x88u;
}

BOOL sub_2393D895C(unsigned int a1, _WORD *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v10 = a1 + 946684800;
  v11 = (v10 * 0xC22E4506728AuLL) >> 64;
  v12 = v10 - 86400 * v11;
  result = sub_2393D85A8(v11, a2, a3, a4);
  *a5 = v12 / 0xE10;
  v14 = v12 - 3600 * (v12 / 0xE10);
  *a6 = v14 / 0x3C;
  *a7 = v14 % 0x3C;
  return result;
}

BOOL sub_2393D89F8(unint64_t a1, void *a2)
{
  if (a1 <= 0xFFFCA2FEC4C81FFFLL)
  {
    *a2 = a1 + 946684800000000;
  }

  return a1 < 0xFFFCA2FEC4C82000;
}

BOOL sub_2393D8A3C(unint64_t a1, void *a2)
{
  if (a1 >= 0x35D013B37E000)
  {
    *a2 = a1 - 946684800000000;
  }

  return a1 > 0x35D013B37DFFFLL;
}

BOOL sub_2393D8A84(unsigned int a1, _DWORD *a2)
{
  if (a1 >= 0x386D4380)
  {
    *a2 = a1 - 946684800;
  }

  return a1 > 0x386D437F;
}

uint64_t sub_2393D8AB8(uint64_t result, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      if (((v8 - 1) & 7) == 0 && v7 != 0)
      {
        sub_2393D5320(v5, a2);
        v7 = 0;
      }

      result = snprintf(&v14[v7], 50 - v7, "0x%02x, ", *(*a3 + v6));
      if (result <= 0)
      {
        v11 = v5;
        v12 = 1;
        goto LABEL_13;
      }

      v7 += result;
      v6 = v8;
    }

    while (a3[1] > v8++);
    if (!v7)
    {
      goto LABEL_14;
    }

    v11 = v5;
    v12 = a2;
LABEL_13:
    result = sub_2393D5320(v11, v12);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D8BFC(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + v3);
    if (v4 > 3)
    {
      break;
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
        v6 = 0;
        if ((v5 - 144) >= 0x30)
        {
          return v2 & v6;
        }

        goto LABEL_26;
      }

      v6 = 0;
      if (v5 >= -96)
      {
        return v2 & v6;
      }
    }

    else if (v4)
    {
      v6 = 0;
      if ((v5 & 0xE0) != 0xA0)
      {
        return v2 & v6;
      }
    }

    else
    {
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      if ((v5 - 194) >= 0x1E)
      {
        if (v5 == 224)
        {
          v6 = 0;
          v4 = 1;
          goto LABEL_27;
        }

        if ((v5 - 225) >= 0xC)
        {
          if (v5 == 237)
          {
            v6 = 0;
            v4 = 2;
            goto LABEL_27;
          }

          if ((v5 & 0xFE) != 0xEE)
          {
            if (v5 == 240)
            {
              v6 = 0;
              v4 = 3;
            }

            else if ((v5 - 241) >= 3)
            {
              v6 = 0;
              if (v5 != 244)
              {
                return v2 & v6;
              }

              v4 = 4;
            }

            else
            {
              v6 = 0;
              v4 = 7;
            }

            goto LABEL_27;
          }
        }

        v6 = 0;
        goto LABEL_26;
      }

      v6 = 0;
    }

LABEL_20:
    v4 = 5;
LABEL_27:
    v2 = ++v3 >= a2;
    if (a2 == v3)
    {
      v2 = 1;
      return v2 & v6;
    }
  }

  if (v4 > 5)
  {
    if (v4 != 6)
    {
      v6 = 0;
      if (v5 > -65)
      {
        return v2 & v6;
      }

      goto LABEL_26;
    }

    v6 = 0;
    if (v5 >= -64)
    {
      return v2 & v6;
    }

    goto LABEL_20;
  }

  if (v4 == 4)
  {
    v6 = 0;
    if (v5 >= -112)
    {
      return v2 & v6;
    }

LABEL_26:
    v4 = 6;
    goto LABEL_27;
  }

  if (v5 < -64)
  {
LABEL_22:
    v4 = 0;
    v6 = 1;
    goto LABEL_27;
  }

  v6 = 0;
  return v2 & v6;
}

uint64_t sub_2393D8DA8(uint64_t result, int a2)
{
  if (a2 <= result || result <= 0)
  {
    return result;
  }

  else
  {
    return (a2 - result);
  }
}

uint64_t sub_2393D8DB8(int a1, uint64_t a2, int a3, uint64_t a4)
{
  for (result = (a1 % a3); a4; --a4)
  {
    result = (*(a2 + result) % a3);
  }

  return result;
}

uint64_t sub_2393D8DDC(const char *a1)
{
  v2 = strlen(a1);

  return sub_2393D8E18(a1, v2);
}

uint64_t sub_2393D8E18(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (a2 + a1 - 1);
    v5 = 1;
    while (1)
    {
      v6 = *v4--;
      v7 = v6 - 48;
      v8 = (v6 - 48) >= 0xA ? -1 : v7;
      if (v8 < 0)
      {
        break;
      }

      v3 = byte_2395C20D4[(sub_2393D8DB8(v8, &unk_2395C2138, 10, v5++) + 10 * v3)];
      if (v5 > a2)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  else
  {
    v3 = 0;
LABEL_10:
    v9 = sub_2393D8DA8(v3, 5);
    v10 = v9 | 0x30;
    if (v9 >= 0xB)
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_2393D8EDC(unsigned __int8 a1)
{
  v1 = a1 - 48;
  if (v1 >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2393D8EF0(unsigned int a1)
{
  v1 = a1 | 0x30;
  if (a1 >= 0xB)
  {
    return 0;
  }

  return v1;
}

size_t sub_2393D8F78(const char *a1)
{
  result = strlen(a1);
  if (result)
  {
    v3 = a1[result - 1];
    return v3 == sub_2393D8E18(a1, result - 1);
  }

  return result;
}

BOOL sub_2393D8FB8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 - 1;
  v3 = *(a1 + v2);
  return v3 == sub_2393D8E18(a1, v2);
}

os_log_t sub_2393D8FF8(uint64_t a1)
{
  result = os_log_create("com.csa.matter", *(off_278A76590 + ((a1 - &unk_27DF7BD70) >> 1)));
  *(a1 + 8) = result;
  return result;
}

dispatch_once_t sub_2393D9044(unsigned int a1)
{
  if (a1 <= 0x2C)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v2 = (&unk_27DF7BD70 + 16 * v1);
  if (*v2 != -1)
  {
    dispatch_once_f(v2, v2, sub_2393D8FF8);
  }

  return v2[1];
}

void sub_2393D90A4(unsigned int a1, os_log_type_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = sub_2393D9044(a1);
  if (os_log_type_enabled(v5, a2))
  {
    v7 = *a3;
    v6 = a3[1];
    v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:6 * v6];
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if ((~i & 7) != 0)
        {
          v10 = @"0x%02x, ";
        }

        else
        {
          v10 = @"0x%02x,\n";
        }

        [v8 appendFormat:v10, *(v7 + i)];
      }
    }

    if (os_log_type_enabled(v5, a2))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_238DAE000, v5, a2, "%@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2393D91E8(unint64_t *a1)
{
  v1 = a1 + 1;
  v2 = atomic_load(a1 + 1);
  result = (*(*a1 + 32))(a1);
  if (result < v2)
  {
    sub_239530A48();
  }

  atomic_store(result, v1);
  return result;
}

unint64_t sub_2393D9258(unint64_t result, uint64_t a2)
{
  *a2 = (result / 0xF4240);
  *(a2 + 8) = result % 0xF4240;
  return result;
}

unint64_t sub_2393D928C(_DWORD *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = (*(*off_27DF765E8 + 6))(off_27DF765E8, &v11);
  v3 = v2;
  if (v2)
  {
    v4 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      *buf = 136315138;
      v13 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Unable to get current time - err:%s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x1Fu, 1);
    }

    v6 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = v11 / 0x3E8;
    if (sub_2393D8A84(v11 / 0x3E8, a1))
    {
      v3 = 0;
      v6 = 0;
    }

    else
    {
      v8 = sub_2393D9044(0x1Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v13) = v7;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Unable to convert Unix Epoch time to Matter Epoch Time: unixEpoch (%u)", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x1Fu, 1);
      }

      v6 = 0x12E00000000;
      v3 = 3;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v3;
}

uint64_t sub_2393D948C(int a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v3) = a1 & 0xFFFFFF | 0x2000000;
  if (a1)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3 | (v4 << 32);
}

BOOL sub_2393D94C0(char *a1, size_t a2, int a3, uint64_t a4)
{
  v4 = a3 & 0xFF000000;
  if (v4 == 0x2000000)
  {
    v9 = strerror(a3 & 0xFFFFFF);
    sub_2393C9264(a1, a2, "OS", a3, a4, v9);
  }

  return v4 == 0x2000000;
}

uint64_t sub_2393D9540(int a1)
{
  if (a1)
  {
    return -a1 & 0xFFFFFF | 0x2000000u;
  }

  else
  {
    return 0;
  }
}

void sub_2393D955C(_WORD **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (!*v1 && *(v1 + 16) == 1)
    {
      v2 = v1 + 6;
      v3 = v1[1] - (v1 + 6);
      v4 = v3 + v1[3];
      if (v4 + 16 <= v1[5])
      {
        v6 = sub_2393D52C4(v4 + 48);
        if (v6)
        {
          v7 = v6;
          v8 = sub_2393DA0AC();
          v9 = *v8 + 1;
          *v8 = v9;
          if (*sub_2393DA0B8() < v9)
          {
            *sub_2393DA0B8() = v9;
          }

          *v7 = 0;
          v7[1] = v7 + v3 + 48;
          v7[2] = *(*a1 + 2);
          v7[3] = *(*a1 + 3);
          *(v7 + 16) = 1;
          v7[5] = v4;
          memcpy(v7 + 6, v2, v4);
          sub_2393D96C8(*a1);
          *a1 = v7;
        }

        else
        {
          v10 = sub_2393D9044(0x19u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11[0] = 0;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "PacketBuffer: pool EMPTY.", v11, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0x19u, 1);
          }
        }
      }
    }
  }
}

void sub_2393D96C8(_WORD *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      if (!v1[16])
      {
        sub_239530B08();
      }

      v2 = *v1;
      v3 = v1[16] - 1;
      v1[16] = v3;
      if (v3)
      {
        break;
      }

      v4 = sub_2393DA0AC();
      --*v4;
      *(v1 + 5) = 0;
      *(v1 + 2) = 0;
      *(v1 + 3) = 0;
      j__free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *sub_2393D9734(void *result, unint64_t a2)
{
  v2 = result + 6;
  v3 = result[1];
  v4 = (v3 + result[5] - (v3 - (result + 48)));
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (v2 <= a2)
  {
    v2 = v4;
  }

  v5 = v2 - v3;
  v6 = result[3];
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = result[3];
  }

  if (v5 > 0)
  {
    v5 = v7;
  }

  result[2] -= v5;
  result[3] = v6 - v5;
  result[1] = v2;
  return result;
}

uint64_t sub_2393D97A0(uint64_t result, unint64_t a2, void *a3)
{
  v3 = (*(result + 8) - result - 48);
  if (*(result + 40) - (*(result + 8) - result - 48) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(result + 40) - (*(result + 8) - result - 48);
  }

  v5 = v4 - *(result + 24);
  *(result + 16) += v5;
  *(result + 24) = v4;
  if (a3 && a3 != result)
  {
    do
    {
      a3[2] += v5;
      a3 = *a3;
      if (a3)
      {
        v6 = a3 == result;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  return result;
}

void *sub_2393D982C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  do
  {
    v3 = result[2];
    v4 = *(v2 + 16);
    result[2] = v4 + v3;
    if (__CFADD__(v4, v3))
    {
      sub_239530B68();
    }

    v5 = result;
    result = *result;
  }

  while (result);
  *v5 = v2;
  return result;
}

void sub_2393D9870(uint64_t *a1)
{
  v2 = a1 + 6;
  v3 = a1[1];
  v4 = a1[3];
  if (v3 != a1 + 6)
  {
    memmove(a1 + 6, v3, v4);
    a1[1] = v2;
  }

  v5 = a1[5];
  v6 = v5 - v4;
  if (v5 != v4)
  {
    do
    {
      v7 = *a1;
      if (!*a1)
      {
        break;
      }

      if (*(v7 + 32) != 1)
      {
        sub_239530BC8(*a1);
      }

      v8 = *(v7 + 24) >= v6 ? v6 : *(v7 + 24);
      memcpy((a1[1] + a1[3]), *(v7 + 8), v8);
      *(v7 + 8) += v8;
      a1[3] += v8;
      v9 = *(v7 + 24) - v8;
      *(v7 + 16) -= v8;
      *(v7 + 24) = v9;
      if (!v9)
      {
        v10 = *v7;
        *v7 = 0;
        sub_2393D96C8(v7);
        *a1 = v10;
      }

      v6 -= v8;
    }

    while (v6);
  }
}

uint64_t sub_2393D9958(_WORD *a1)
{
  v1 = *a1;
  *a1 = 0;
  sub_2393D96C8(a1);
  return v1;
}

void *sub_2393D9984(void *result, unint64_t a2)
{
  v3 = result[2];
  v2 = result[3];
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = result[3];
  }

  v5 = result[1] + v4;
  result[3] = v2 - v4;
  result[1] = v5;
  result[2] = v3 - v4;
  return result;
}

uint64_t **sub_2393D99AC(uint64_t **a1, unint64_t a2)
{
  if (a1 && a2)
  {
    while (1)
    {
      v2 = a1[3];
      v3 = a2 - v2;
      if (a2 < v2)
      {
        break;
      }

      v4 = *a1;
      *a1 = 0;
      sub_2393D96C8(a1);
      if (v4)
      {
        v5 = v3 == 0;
      }

      else
      {
        v5 = 1;
      }

      a2 = v3;
      a1 = v4;
      if (v5)
      {
        return v4;
      }
    }

    v6 = a1[2];
    v7 = a1[1] + a2;
    a1[3] = (v2 - a2);
    a1[1] = v7;
    a1[2] = (v6 - a2);
  }

  return a1;
}

uint64_t sub_2393D9A20(uint64_t **a1, char *__dst, size_t a3)
{
  if (a1[2] >= a3)
  {
    v5 = a3;
    if (a3)
    {
      v7 = a1;
      v4 = 172;
      while (v7)
      {
        if (v5 >= v7[3])
        {
          v8 = v7[3];
        }

        else
        {
          v8 = v5;
        }

        memcpy(__dst, v7[1], v8);
        __dst += v8;
        v7 = *v7;
        v5 -= v8;
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      v3 = 0x1B500000000;
    }

    else
    {
LABEL_10:
      v3 = 0;
      v4 = 0;
    }
  }

  else
  {
    v3 = 0x1AE00000000;
    v4 = 25;
  }

  return v4 | v3;
}

uint64_t sub_2393D9AD4(void *a1, unsigned int a2)
{
  v4 = a1[1];
  v5 = v4 - a1 - 48;
  if (a2 > v5)
  {
    v6 = a1[3];
    if (v6 + a2 > a1[5])
    {
      return 0;
    }

    v8 = a2 - v5;
    memmove(&v4[(a2 - v5)], v4, v6);
    a1[1] += v8;
  }

  return 1;
}

uint64_t sub_2393D9B44(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = v4 % a2;
  if (v5)
  {
    v6 = a2 - v5;
    v7 = v4 - a1 - 48;
    if ((v7 + v6) >> 16)
    {
      return 0;
    }

    if ((v6 + v7) > v7)
    {
      v8 = a1[3];
      if (v8 + (v6 + v7) > a1[5])
      {
        return 0;
      }

      memmove((v4 + v6), v4, v8);
      a1[1] += v6;
    }
  }

  return 1;
}

uint64_t sub_2393D9BEC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 0xFFFF)
  {
    sub_239530C4C();
  }

  *(result + 32) = v1 + 1;
  return result;
}

uint64_t sub_2393D9C18@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = a1;
  v20 = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
    v6 = sub_2393D9044(0x19u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v18 = v5;
      *&v18[4] = 1024;
      *&v18[6] = v3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "PacketBuffer: AvailableSize of a buffer cannot exceed UINT32_MAX. aAvailableSize = 0x%08X%08X", buf, 0xEu);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = a1 + a2;
  if (v9 >= 0xFA01)
  {
    v10 = sub_2393D9044(0x19u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v18 = v9;
      *&v18[8] = 2048;
      v19 = 64000;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "PacketBuffer: allocation exceeding buffer capacity limits: %lu > %lu", buf, 0x16u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v11 = sub_2393D52C4(v9 + 48);
  if (!v11)
  {
    v15 = sub_2393D9044(0x19u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "PacketBuffer: pool EMPTY.", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = sub_2393D5320(0x19u, 1);
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_2393DA0AC();
  v14 = *v13 + 1;
  *v13 = v14;
  result = sub_2393DA0B8();
  if (*result < v14)
  {
    result = sub_2393DA0B8();
    *result = v14;
  }

  *v12 = 0;
  v12[1] = v12 + a2 + 48;
  v12[2] = 0;
  v12[3] = 0;
  *(v12 + 16) = 1;
  v12[5] = v9;
LABEL_20:
  *a3 = v12;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D9E54@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t *a5@<X8>)
{
  result = sub_2393D9C18(a3 + a2, a4, a5);
  v9 = *a5;
  if (v9)
  {
    result = memcpy(*(v9 + 8), a1, a2);
    *(v9 + 16) = a2;
    *(v9 + 24) = a2;
  }

  return result;
}

void *sub_2393D9EAC(void *result)
{
  result[5] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void **sub_2393D9EB8@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *result = **result;
  *v2 = 0;
  v2[2] = v2[3];
  *a2 = v2;
  return result;
}

void sub_2393D9ED8(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    while (1)
    {
      v5 = v3[5];
      v6 = (*(v3 + 4) - (v3 + 48));
      if (v5 >= 0xFA01)
      {
        if ((v3[3] + v6) >= 0xFA01)
        {
          break;
        }

        v5 = 64000;
      }

      sub_2393D9C18(v5 - v6, (*(v3 + 4) - (v3 + 48)), &v9);
      v7 = v9;
      if (!v9)
      {
        break;
      }

      v8 = v3[3];
      *(v9 + 2) = v8;
      *(v7 + 3) = v8;
      memcpy(v7 + 24, v3 + 6, v5);
      if (v4)
      {
        sub_2393D982C(v4, &v9);
        if (v9)
        {
          sub_2393D96C8(v9);
        }
      }

      else
      {
        v4 = v7;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_18;
      }
    }

    *a2 = 0;
    if (v4)
    {

      sub_2393D96C8(v4);
    }
  }

  else
  {
    v4 = 0;
LABEL_18:
    *a2 = v4;
  }
}

void sub_2393D9FF8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_4;
  }

  v7 = a1[2];
  if (a1[1] < v7)
  {
    sub_2393D96C8(v6);
LABEL_4:
    *a2 = 0;
    goto LABEL_8;
  }

  v8 = (*(v6 + 8) - v6 - 48);
  if (*(v6 + 40) - (*(v6 + 8) - v6 - 48) < v7)
  {
    v7 = *(v6 + 40) - (*(v6 + 8) - v6 - 48);
  }

  *(v6 + 16) = *(v6 + 16) - *(v6 + 24) + v7;
  *(v6 + 24) = v7;
LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a3 = *a2;
  *a2 = 0;
}

uint64_t sub_2393DA088()
{

  return sub_2393D5320(0x19u, 1);
}

_DWORD *sub_2393DA0C4(_DWORD *result)
{
  *result = dword_27DF7C040;
  *(result + 3) = *(&dword_27DF7C040 + 3);
  *(result + 7) = dword_27DF7C047;
  *(result + 10) = *(&dword_27DF7C047 + 3);
  return result;
}

uint64_t sub_2393DA0F8(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = 0;
  v4 = 7;
  do
  {
    v5 = *a2 - *a3;
    *a1 = v5;
    v3 |= v5 > 0;
    a1[7] = a2[7] - a3[7];
    ++a1;
    ++a3;
    ++a2;
    --v4;
  }

  while (v4);
  return v3 & 1;
}

void *sub_2393DA14C(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    sub_239530D5C();
  }

  if (v2 && *a2 >= *v2)
  {
    do
    {
      v3 = v2;
      v2 = v2[5];
      if (!v2)
      {
        break;
      }

      if (v2 == a2)
      {
        sub_239530CAC();
      }
    }

    while (*a2 >= *v2);
    a2[5] = v2;
    v3[5] = a2;
    return *a1;
  }

  else
  {
    a2[5] = v2;
    *a1 = a2;
  }

  return a2;
}

uint64_t sub_2393DA1C4(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 && v2)
  {
    v3 = a1;
    if (v2 == a2)
    {
LABEL_7:
      *v3 = *(a2 + 40);
    }

    else
    {
      while (1)
      {
        v4 = v2;
        v2 = *(v2 + 40);
        if (!v2)
        {
          break;
        }

        if (v2 == a2)
        {
          v3 = (v4 + 40);
          goto LABEL_7;
        }
      }
    }

    *(a2 + 40) = 0;
    return *a1;
  }

  return v2;
}

void *sub_2393DA20C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = v3;
    if (v3[2] == a2 && v3[3] == a3)
    {
      break;
    }

    v3 = v3[5];
    v4 = v5;
    if (!v3)
    {
      return 0;
    }
  }

  if (v4)
  {
    v7 = v4 + 5;
  }

  else
  {
    v7 = a1;
  }

  *v7 = v3[5];
  v3[5] = 0;
  return v5;
}

uint64_t sub_2393DA268(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    *a1 = *(result + 40);
    *(result + 40) = 0;
  }

  return result;
}

unint64_t *sub_2393DA284(unint64_t **a1, unint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (*result >= a2)
    {
      return 0;
    }

    else
    {
      *a1 = result[5];
      result[5] = 0;
    }
  }

  return result;
}

unint64_t *sub_2393DA2B4(unint64_t **a1, unint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (*result >= a2)
    {
      return 0;
    }

    else
    {
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v4[5];
      }

      while (v4 && *v4 < a2);
      *a1 = v4;
      v5[5] = 0;
    }
  }

  return result;
}

uint64_t sub_2393DA2FC(unint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (v3[2] != a2 || v3[3] != a3)
  {
    v3 = v3[5];
    if (!v3)
    {
      return 0;
    }
  }

  v5 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  if (*v3 > v5)
  {
    return *v3 - v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393DA388(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  *a3 = *(*(a1 + 8) + 8);
  v4 = *(*(a1 + 8) + 24);
  v5 = HIDWORD(v4);
  if (HIDWORD(v4))
  {
    v5 = 0x2200000000;
    v6 = 47;
  }

  else
  {
    v6 = 0;
    *a4 = v4;
  }

  return v6 | v5;
}

uint64_t sub_2393DA3CC(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      sub_2393D96C8(v11);
    }

    *(a1 + 16) = 0;
    goto LABEL_8;
  }

  sub_238EF6350((a1 + 16));
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_8:
    LODWORD(v8) = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  *a3 = *(v7 + 8);
  v8 = *(*(a1 + 16) + 24);
  if (!HIDWORD(v8))
  {
LABEL_9:
    v9 = 0;
    v10 = 0;
    *a4 = v8;
    return v10 | v9;
  }

  v9 = 0x3A00000000;
  v10 = 47;
  return v10 | v9;
}

uint64_t sub_2393DA46C(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  *a3 = *(*(a1 + 8) + 8) + *(*(a1 + 8) + 24);
  if (sub_2393D980C(*(a1 + 8)) >> 32)
  {
    v7 = 0x4400000000;
    v8 = 47;
  }

  else
  {
    v6 = sub_2393D980C(*(a1 + 8));
    v7 = 0;
    v8 = 0;
    *a4 = v6;
  }

  return v8 | v7;
}

uint64_t sub_2393DA4E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3 + a4 - *(*(a1 + 16) + 8);
  if (HIDWORD(v4))
  {
    v5 = 0x5000000000;
    v6 = 47;
  }

  else
  {
    sub_2393D97A0(*(a1 + 16), v4, *(a1 + 8));
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_2393DA544(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  if (*(a1 + 24) == 1)
  {
    v17[5] = v4;
    v17[6] = v5;
    sub_238EF6350((a1 + 16));
    v9 = *(a1 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

    sub_2393D9C18(0x62FuLL, 0, v17);
    v13 = *(a1 + 16);
    if (v13)
    {
      sub_2393D96C8(v13);
    }

    v14 = v17[0];
    *(a1 + 16) = v17[0];
    if (!v14)
    {
      v11 = 0x6400000000;
      v12 = 11;
      return v12 | v11;
    }

    v15 = *(a1 + 8);
    sub_2393D9BEC(v14);
    v17[0] = *(a1 + 16);
    sub_2393D982C(v15, v17);
    if (v17[0])
    {
      sub_2393D96C8(v17[0]);
    }

    v9 = *(a1 + 16);
    if (v9)
    {
LABEL_3:
      *a3 = *(v9 + 8);
      if (sub_2393D9788(*(a1 + 16)) >> 32)
      {
        v11 = 0x7100000000;
        v12 = 47;
        return v12 | v11;
      }

      v10 = sub_2393D9788(*(a1 + 16));
    }

    else
    {
      v10 = 0;
      *a3 = 0;
    }

    v11 = 0;
    v12 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0x5B00000000;
    v12 = 11;
  }

  return v12 | v11;
}

void sub_2393DA674(void *a1)
{
  sub_2393B8400(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2393DA6BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, a3, 22, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_2393DA6FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, 0x100uLL, 22, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2393DA738(uint64_t a1, uint64_t a2)
{
  sub_2393C5BDC(a1, a2);
  if (sub_2393C5C40(a1) == 22)
  {
    return sub_2393C6A2C(a1, (a1 + 72));
  }

  else
  {
    return 0x1A00000026;
  }
}

unint64_t sub_2393DA78C(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 1, v5);
  if (!result)
  {
    return sub_2393DD044(a2, v5);
  }

  return result;
}

unint64_t *sub_2393DA7FC(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DCFC8((a1 + 4), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t *sub_2393DA83C(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 0, a2);
    a1[1] = v3;
  }

  return a1;
}

uint64_t sub_2393DA87C(uint64_t *a1)
{
  sub_2393DB7D4(a1);
  result = *a1;
  v3 = a1[1];
  return result;
}

unint64_t sub_2393DA8A4(int *a1, unsigned int a2, int a3, _DWORD *a4)
{
  sub_2393C5AAC(v11);
  v8 = sub_2393C74D8(a1, a2, v11);
  if (!v8)
  {
    *a4 = 0;
    if (sub_2393C5C40(v11) != a3)
    {
      v9 = 0x7B00000000;
      LODWORD(v8) = 38;
      return v9 | v8;
    }

    v8 = sub_2393C5FC8(v11, a4);
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

uint64_t *sub_2393DA93C(uint64_t *a1)
{
  v2 = a1 + 4;
  if (*a1)
  {
    sub_2393DB7CC(a1 + 4, *a1, a1[1]);
  }

  else
  {
    *a1 = sub_2393DD7B8((a1 + 4), a1[2]);
    a1[1] = v3;
  }

  return v2;
}

unint64_t sub_2393DA9A4(int *a1, unsigned int a2, int a3, char *a4)
{
  sub_2393C5AAC(v11);
  v8 = sub_2393C74D8(a1, a2, v11);
  if (!v8)
  {
    *a4 = 0;
    if (sub_2393C5C40(v11) != a3)
    {
      v9 = 0x7B00000000;
      LODWORD(v8) = 38;
      return v9 | v8;
    }

    v8 = sub_2393C5CE4(v11, a4);
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393DAA9C(int *a1, uint64_t a2, int a3)
{
  v6 = sub_2393DA8A4(a1, 3u, 4, (a2 + 4));
  if (v6 || (v6 = sub_2393DA8A4(a1, 4u, 4, (a2 + 8)), v6))
  {
    v7 = HIDWORD(v6);
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 4);
    if (v9 >= 0xFFF50000)
    {
      LODWORD(v6) = 1408;
      LODWORD(v7) = 182;
      return v6 | (v7 << 32);
    }

    if (v9 < 0x8000 || (LODWORD(v6) = 1408, LODWORD(v7) = 182, v9 >= 0x10000) && (v9 + 1024) <= 0x3FEu)
    {
      if ((v10 = *(a2 + 8), v10 < 0xFFF50000) && v10 < 0x5000u || (LODWORD(v6) = 1408, LODWORD(v7) = 183, !HIWORD(v10)) && v10 - 61440 <= 0xFFE)
      {
LABEL_6:
        v12[0] = 0;
        v13 = 0;
        v6 = sub_2393DB300(a1, 5u, 4, v12);
        if (v6 == 33)
        {
          v11 = 0;
          LODWORD(v7) = 0;
        }

        else
        {
          v7 = HIDWORD(v6);
          if (v6)
          {
            return v6 | (v7 << 32);
          }

          if (v13)
          {
            LODWORD(v6) = 181;
            LODWORD(v7) = 198;
            return v6 | (v7 << 32);
          }

          v11 = 4;
        }

        LODWORD(v6) = 0;
        *(a2 + 14) = v11;
      }
    }
  }

  return v6 | (v7 << 32);
}

unint64_t sub_2393DAC08(int *a1, _WORD *a2, int a3)
{
  result = sub_2393DAA9C(a1, a2, a3);
  if (!result)
  {

    return sub_2393DB268(a1, 2u, 4, a2);
  }

  return result;
}

uint64_t sub_2393DAC60(int *a1, uint64_t a2)
{
  v4 = sub_2393DB268(a1, 2u, 4, (a2 + 8));
  if (v4 != 33)
  {
    if (v4)
    {
      v7 = 0xE900000000;
      goto LABEL_32;
    }

    if (*(a2 + 8) == -1)
    {
      v7 = 0xE300000000;
      goto LABEL_32;
    }
  }

  v5 = sub_2393DA8A4(a1, 3u, 4, a2);
  if (v5 == 33)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v7 = 0xF400000000;
    goto LABEL_32;
  }

  v6 = *a2;
  if (*a2 >= 0xFFF50000)
  {
    v7 = 0xEE00000000;
    goto LABEL_32;
  }

  if (v6 < 0x8000 || (v7 = 0xEE00000000, v8 = 1408, v6 >= 0x10000) && (v6 + 1024) <= 0x3FEu)
  {
LABEL_15:
    v9 = sub_2393DA8A4(a1, 4u, 4, (a2 + 4));
    if (v9 == 33)
    {
      goto LABEL_29;
    }

    if (v9)
    {
      v7 = 0xFF00000000;
      goto LABEL_32;
    }

    if ((v10 = *(a2 + 4), v10 < 0xFFF50000) && v10 < 0x5000u || (v7 = 0xF900000000, v8 = 1408, !HIWORD(v10)) && v10 - 61440 <= 0xFFE)
    {
LABEL_29:
      if (*a2 == -1)
      {
        v12 = *(a2 + 4);
        if (v12 != -1)
        {
          v7 = 0x10500000000;
          v8 = 1408;
          if (HIWORD(v12) || *(a2 + 4) - 61440 > 0xFFE)
          {
            return v7 | v8;
          }
        }
      }

      v11 = sub_2393DB268(a1, 5u, 4, (a2 + 10));
      if (v11 == 33)
      {
LABEL_21:
        v8 = 0;
        v7 = 0;
        return v7 | v8;
      }

      if (!v11)
      {
        v7 = 0x10B00000000;
        v8 = 1408;
        if (*(a2 + 4) == -1 || *(a2 + 10) == 0xFFFF)
        {
          return v7 | v8;
        }

        goto LABEL_21;
      }

      v7 = 0x11100000000;
LABEL_32:
      v8 = 1408;
    }
  }

  return v7 | v8;
}

unint64_t *sub_2393DAE68(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 0, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAEA8(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 1uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAEE8(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C818C(a1[2], 2uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAF28(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 3uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAF68(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 4uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAFA8(unint64_t *a1, unsigned __int16 *a2)
{
  if (!*a1)
  {
    *a1 = sub_238EFD4A8(a1[2], 5uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DAFE8(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C818C(a1[2], 5uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DB028(unint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != 0xFFFF && !*a1)
  {
    *a1 = sub_2393C818C(a1[2], 2uLL, v4);
    a1[1] = v5;
  }

  if (*a2 != -1 && !*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 3uLL, *a2);
    a1[1] = v6;
  }

  v7 = *(a2 + 4);
  if (v7 != -1 && !*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 4uLL, v7);
    a1[1] = v8;
  }

  v9 = *(a2 + 10);
  if (v9 != 0xFFFF && !*a1)
  {
    *a1 = sub_2393C818C(a1[2], 5uLL, v9);
    a1[1] = v10;
  }

  sub_2393DB7D4(a1);
  result = *a1;
  v12 = a1[1];
  return result;
}

uint64_t sub_2393DB0F0(uint64_t *a1, unsigned __int16 *a2)
{
  if (*a1 || (v4 = sub_2393C818C(a1[2], 2uLL, *a2), *a1 = v4, a1[1] = v5, v4) || (v6 = sub_2393C81D4(a1[2], 3uLL, *(a2 + 1)), *a1 = v6, a1[1] = v7, v6))
  {
    v8 = 0;
  }

  else
  {
    v13 = sub_2393C81D4(a1[2], 4uLL, *(a2 + 2));
    *a1 = v13;
    a1[1] = v14;
    v8 = v13 == 0;
  }

  v9 = *(a2 + 14);
  if (v9 < 2)
  {
    goto LABEL_6;
  }

  if (v9 == 4)
  {
    LOBYTE(v15) = 0;
    v16 = 0;
    if (v8)
    {
      *a1 = sub_238EFD4A8(a1[2], 5uLL, &v15);
      a1[1] = v12;
    }

LABEL_6:
    sub_2393DB7D4(a1);
    result = *a1;
    v11 = a1[1];
    return result;
  }

  return 0x18B0000002FLL;
}

unint64_t sub_2393DB1D0(int *a1, unsigned int a2, int a3, void *a4)
{
  sub_2393C5AAC(v11);
  v8 = sub_2393C74D8(a1, a2, v11);
  if (!v8)
  {
    *a4 = 0;
    if (sub_2393C5C40(v11) != a3)
    {
      v9 = 0x7B00000000;
      LODWORD(v8) = 38;
      return v9 | v8;
    }

    v8 = sub_2393C5F2C(v11, a4);
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393DB268(int *a1, unsigned int a2, int a3, _WORD *a4)
{
  sub_2393C5AAC(v11);
  v8 = sub_2393C74D8(a1, a2, v11);
  if (!v8)
  {
    *a4 = 0;
    if (sub_2393C5C40(v11) != a3)
    {
      v9 = 0x7B00000000;
      LODWORD(v8) = 38;
      return v9 | v8;
    }

    v8 = sub_2393C5F70(v11, a4);
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393DB300(int *a1, unsigned int a2, int a3, uint64_t a4)
{
  sub_2393C5AAC(v14);
  v8 = sub_2393C74D8(a1, a2, v14);
  v9 = v8;
  v10 = HIDWORD(v8);
  if (!v8)
  {
    if (*(a4 + 2) == 1)
    {
      *(a4 + 2) = 0;
    }

    if (sub_2393C5C40(v14) == a3 || sub_2393C5C40(v14) == 20)
    {
      if (sub_2393C5C40(v14) == a3)
      {
        v13 = 0;
        v12 = sub_2393C5F70(v14, &v13);
        v9 = v12;
        v10 = HIDWORD(v12);
        if (!v12)
        {
          *a4 = v13;
          *(a4 + 2) = 1;
        }
      }
    }

    else
    {
      v9 = 38;
      LODWORD(v10) = 154;
    }
  }

  return v9 | (v10 << 32);
}

unint64_t *sub_2393DB400(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD008((a1 + 4), a1[2]);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t sub_2393DB43C(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 0, v5);
  if (!result)
  {
    return sub_2393DD7F4(a2, v5);
  }

  return result;
}

unint64_t sub_2393DB490(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 1, v5);
  if (!result)
  {
    return sub_2393DD7F4(a2, v5);
  }

  return result;
}

unint64_t *sub_2393DB4E4(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD778((a1 + 4), a1[2], 0);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t *sub_2393DB524(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD778((a1 + 16), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 16;
}

unint64_t *sub_2393DB564(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD7B8((a1 + 4), a1[2]);
    a1[1] = v2;
  }

  return a1 + 4;
}

uint64_t sub_2393DB5A0(uint64_t *a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  if (*a1)
  {
    result = *a1;
    v7 = a1[1];
    return result;
  }

  result = sub_2393DD7B8((a1 + 4), a1[2]);
  *a1 = result;
  a1[1] = v8;
  if (!result)
  {
    v9 = sub_2393DB4E4(a1 + 4);
    result = a1[4];
    if (result)
    {
      v10 = a1[5];
      return result;
    }

    v11 = sub_2393DB71C(v9);
    result = *v9;
    if (*v9)
    {
      goto LABEL_7;
    }

    v13 = sub_2393DAEE8(v11, *a2);
    v14 = sub_2393DAF28(v13, *(a2 + 1));
    v15 = sub_2393DAF68(v14, *(a2 + 2));
    sub_2393DA87C(v15);
    result = *v11;
    if (*v11)
    {
      v16 = v11[1];
    }

    else
    {
      v17 = sub_2393DB75C(v9);
      result = *v9;
      if (*v9)
      {
LABEL_7:
        v12 = v9[1];
        return result;
      }

      sub_2393DD518(v17, a3);
      result = *v17;
      if (*v17)
      {
        v18 = v17[1];
      }

      else
      {
        result = sub_2393DA87C(v9);
        if (!result)
        {

          return sub_2393DA87C(a1 + 4);
        }
      }
    }
  }

  return result;
}

unint64_t sub_2393DB6C8(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 0, v5);
  if (!result)
  {
    return sub_2393DD044(a2, v5);
  }

  return result;
}

unint64_t *sub_2393DB71C(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DCFC8((a1 + 4), a1[2], 0);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t *sub_2393DB75C(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD778((a1 + 8), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 8;
}

double sub_2393DB79C(uint64_t a1)
{
  *&result = 0x2300000003;
  *a1 = 0x2300000003;
  *(a1 + 8) = "src/app/MessageDef/Builder.cpp";
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  return result;
}

uint64_t sub_2393DB7C0(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

void *sub_2393DB7CC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

unint64_t sub_2393DB7D4(unint64_t result)
{
  if (!*result)
  {
    v1 = result;
    result = sub_2393C8DE0(*(result + 16), *(result + 24));
    *v1 = result;
    *(v1 + 8) = v2;
    if (!result)
    {
      *(v1 + 24) = -1;
    }
  }

  return result;
}

unint64_t *sub_2393DB850(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 0, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DB890(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C818C(a1[2], 1uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DB8D0(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 2uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DB910(int *a1, uint64_t a2)
{
  result = sub_2393C74D8(a1, 1, a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_2393DB93C(unint64_t *a1)
{
  *a1 = sub_2393DCFC8((a1 + 4), a1[2], 0);
  a1[1] = v2;
  return a1 + 4;
}

unint64_t sub_2393DB9A4(int *a1, uint64_t a2)
{
  result = sub_2393DBA04(a1, (a2 + 4), (a2 + 8));
  if (!result)
  {

    return sub_2393DB268(a1, 0, 4, a2);
  }

  return result;
}

unint64_t sub_2393DBA04(int *a1, unsigned int *a2, unsigned int *a3)
{
  v6 = sub_2393DA8A4(a1, 1u, 4, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  v8 = *a2;
  if (*a2 >= 0xFFF50000)
  {
    v7 = 0x8100000000;
    LODWORD(v6) = 1408;
    return v7 | v6;
  }

  if (v8 < 0x8000 || (v7 = 0x8100000000, LODWORD(v6) = 1408, v8 >= 0x10000) && (v8 + 1024) <= 0x3FEu)
  {
    v6 = sub_2393DA8A4(a1, 2u, 4, a3);
    if (v6)
    {
LABEL_2:
      v7 = v6 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }

    v9 = *a3;
    v10 = *a3 & 0xFF00;
    v11 = v10 == 0;
    if (v10)
    {
      v12 = 1408;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x8400000000;
    }

    if (v9 < 0xFFF50000)
    {
      LODWORD(v6) = v12;
    }

    else
    {
      LODWORD(v6) = 1408;
    }

    if (v9 < 0xFFF50000)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0x8400000000;
    }
  }

  return v7 | v6;
}

unint64_t *sub_2393DBAFC(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C818C(a1[2], 0, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DBB3C(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 1uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DBB7C(unint64_t *a1, unsigned __int16 *a2)
{
  v3 = a1;
  LODWORD(a1) = *a1;
  if (a2[6])
  {
    if (a1)
    {
      goto LABEL_7;
    }

    a1 = sub_2393C818C(v3[2], 0, *a2);
    *v3 = a1;
    v3[1] = v4;
  }

  if (!a1)
  {
    v5 = sub_2393C81D4(v3[2], 1uLL, *(a2 + 1));
    *v3 = v5;
    v3[1] = v6;
    if (!v5)
    {
      *v3 = sub_2393C81D4(v3[2], 2uLL, *(a2 + 2));
      v3[1] = v7;
    }
  }

LABEL_7:
  sub_2393DB7D4(v3);
  result = *v3;
  v9 = v3[1];
  return result;
}

unint64_t sub_2393DBC00(unint64_t *a1, unsigned __int16 *a2)
{
  if (!*a1)
  {
    v4 = sub_2393C818C(a1[2], 0, *a2);
    *a1 = v4;
    a1[1] = v5;
    if (!v4)
    {
      v6 = sub_2393C81D4(a1[2], 1uLL, *(a2 + 1));
      *a1 = v6;
      a1[1] = v7;
      if (!v6)
      {
        *a1 = sub_2393C81D4(a1[2], 2uLL, *(a2 + 2));
        a1[1] = v8;
      }
    }
  }

  sub_2393DB7D4(a1);
  result = *a1;
  v10 = a1[1];
  return result;
}

unint64_t *sub_2393DBC7C(unint64_t *a1)
{
  *a1 = sub_2393DD7B8((a1 + 4), a1[2]);
  a1[1] = v2;
  return a1 + 4;
}

unint64_t sub_2393DBCB0(unint64_t *a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = sub_2393DD7B8((a1 + 4), a1[2]);
  *a1 = v4;
  a1[1] = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = sub_2393DB71C(a1 + 4);
  v4 = a1[4];
  if (v4)
  {
    v7 = a1[5];
LABEL_6:
    v12 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_7;
  }

  v8 = sub_2393DB890(v6, *(a2 + 12));
  v9 = sub_2393DB8D0(v8, *a2);
  v4 = sub_2393DA87C(v9);
  if (v4)
  {
    goto LABEL_6;
  }

  v10 = sub_238DE3698((a2 + 4));
  v11 = sub_2393DBB3C(a1 + 4, *v10);
  v4 = sub_2393DA87C(v11);
  if (v4)
  {
    goto LABEL_6;
  }

  v15 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 12);
    v17 = HIWORD(*a2);
    v18 = *a2;
    v19 = *sub_238DE3698((a2 + 4));
    *buf = 67109888;
    v25 = v16;
    v26 = 1024;
    v27 = v17;
    v28 = 1024;
    v29 = v18;
    v30 = 1024;
    v31 = v19;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Encoded DataVersionFilter: Endpoint=%u Cluster=0x%04X_%04X Version=%u", buf, 0x1Au);
  }

  if (sub_2393D5398(2u))
  {
    v20 = *(a2 + 12);
    v21 = HIWORD(*a2);
    v22 = *a2;
    v23 = *sub_238DE3698((a2 + 4));
    sub_2393D5320(0xDu, 2);
  }

  LODWORD(v4) = 0;
  v12 = 0;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return v12 | v4;
}

unint64_t sub_2393DBE60(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v7);
  v4 = sub_2393C74D8(a1, 0, v7);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393DD044(a2, v7);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_2393DBF34(uint64_t a1, int *a2, uint64_t a3)
{
  if (sub_2393DB830(a2, a3))
  {
    v5 = 0xCB00000000;
LABEL_5:
    v6 = 182;
    return v5 | v6;
  }

  if (sub_2393DB840(a2, (a3 + 4)))
  {
    v5 = 0xCE00000000;
    goto LABEL_5;
  }

  v8 = sub_2393DAA5C(a2, (a3 + 8));
  v5 = 0xD100000000;
  v6 = 182;
  if (!v8)
  {
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

unint64_t sub_2393DBFCC(int *a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_2393DB1D0(a1, 6u, 4, &v12);
  if (v4 == 33)
  {
    v6 = 0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (*(a2 + 32))
    {
      v5 = 0xE600000000;
LABEL_20:
      LODWORD(v4) = 186;
      return v5 | v4;
    }

    *(a2 + 40) += v12;
    v6 = 1;
  }

  v4 = sub_2393DB1D0(a1, 5u, 4, &v12);
  if (v4 == 33)
  {
    v7 = 0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (*(a2 + 32) != 1)
    {
      v5 = 0xF300000000;
      goto LABEL_20;
    }

    *(a2 + 40) += v12;
    v7 = 1;
  }

  v4 = sub_2393DB1D0(a1, 4u, 4, &v12);
  if (v4 == 33)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (v4)
  {
LABEL_15:
    v5 = v4 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = v12;
  v8 = 1;
LABEL_17:
  if (sub_2393DB1D0(a1, 3u, 4, &v12))
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
    *(a2 + 32) = 1;
    *(a2 + 40) = v12;
  }

  v10 = v7 + v6 + v8 + v9 == 1;
  v5 = 0x11600000000;
  if (v10)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    LODWORD(v4) = 186;
  }

  if (v10)
  {
    v5 = 0;
  }

  return v5 | v4;
}

unint64_t sub_2393DC15C(int *a1, uint64_t a2)
{
  v8 = 0;
  sub_2393DD178(v7);
  v4 = sub_2393DBE60(a1, v7);
  if (v4 || (v4 = sub_2393DBF34(v4, v7, a2), v4) || (v4 = sub_2393DB1D0(a1, 1u, 4, (a2 + 16)), v4) || (v4 = sub_2393DC35C(a1, 2u, 4, &v8), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a2 + 24) = v8;
    v4 = sub_2393DBFCC(a1, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t *sub_2393DC21C(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8140(a1[2], 2uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DC25C(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 3uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DC29C(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 4uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DC2DC(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 5uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DC31C(unint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C8154(a1[2], 6uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DC35C(int *a1, unsigned int a2, int a3, _BYTE *a4)
{
  sub_2393C5AAC(v11);
  v8 = sub_2393C74D8(a1, a2, v11);
  if (!v8)
  {
    *a4 = 0;
    if (sub_2393C5C40(v11) != a3)
    {
      v9 = 0x7B00000000;
      LODWORD(v8) = 38;
      return v9 | v8;
    }

    v8 = sub_2393C5ED0(v11, a4);
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393DC3F4(unint64_t *a1, unint64_t a2)
{
  v4 = sub_2393DD7B8((a1 + 4), a1[2]);
  *a1 = v4;
  a1[1] = v5;
  if (v4 || (v6 = sub_2393DAEA8(a1 + 4, a2), v4 = sub_2393DA87C(v6), v4))
  {
    v7 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393DB7D4(a1);
    if (*a1)
    {
      v4 = *a1;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (*a1)
    {
      v7 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0;
    }

    if (*a1)
    {
      v9 = a1[1];
    }
  }

  return v7 | v4;
}

uint64_t sub_2393DC470(int *a1, uint64_t a2)
{
  if (sub_2393DB268(a1, 1u, 4, a2))
  {
    v4 = 0x9500000000;
LABEL_5:
    v5 = 182;
    return v4 | v5;
  }

  if (sub_2393DA8A4(a1, 2u, 4, (a2 + 4)))
  {
    v4 = 0x9600000000;
    goto LABEL_5;
  }

  v7 = sub_2393DA8A4(a1, 3u, 4, (a2 + 8));
  v4 = 0x9700000000;
  v5 = 182;
  if (!v7)
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | v5;
}

uint64_t sub_2393DC52C(int *a1, uint64_t a2)
{
  v4 = sub_2393DB268(a1, 1u, 4, (a2 + 8));
  if (v4 != 33)
  {
    if (v4)
    {
      v9 = 0xAB00000000;
LABEL_20:
      v8 = 1408;
      return v9 | v8;
    }

    if (*(a2 + 8) == -1)
    {
      v9 = 0xA500000000;
      goto LABEL_20;
    }
  }

  v5 = sub_2393DA8A4(a1, 2u, 4, a2);
  if (v5 == 33)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v9 = 0xB600000000;
    goto LABEL_20;
  }

  if (*a2 == -1)
  {
    v9 = 0xB000000000;
    goto LABEL_20;
  }

LABEL_7:
  v6 = sub_2393DA8A4(a1, 3u, 4, (a2 + 4));
  if (v6 == 33)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = 0xC100000000;
    goto LABEL_20;
  }

  if (*(a2 + 4) == -1)
  {
    v9 = 0xBF00000000;
    goto LABEL_20;
  }

LABEL_10:
  v7 = sub_2393DA9A4(a1, 4u, 8, (a2 + 10));
  if (v7 != 33 && v7)
  {
    v9 = 0xC800000000;
    goto LABEL_20;
  }

  v8 = 0;
  v9 = 0;
  return v9 | v8;
}

unint64_t *sub_2393DC674(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 4uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DC6B4(unint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != 0xFFFF && !*a1)
  {
    *a1 = sub_2393C818C(a1[2], 1uLL, v4);
    a1[1] = v5;
  }

  if (*a2 != -1 && !*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 2uLL, *a2);
    a1[1] = v6;
  }

  v7 = *(a2 + 4);
  if (v7 != -1 && !*a1)
  {
    *a1 = sub_2393C81D4(a1[2], 3uLL, v7);
    a1[1] = v8;
  }

  if (*(a2 + 10) == 1 && !*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 4uLL, 1);
    a1[1] = v9;
  }

  sub_2393DB7D4(a1);
  result = *a1;
  v11 = a1[1];
  return result;
}

unint64_t sub_2393DC77C(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v22 = a3;
  v23 = BYTE2(a3);
  sub_2393DB79C(v16);
  sub_2393DB79C(&v17);
  sub_2393DB79C(&v18);
  sub_2393DB79C(&v19);
  sub_2393DB79C(&v20);
  sub_2393DB79C(&v21);
  v5 = sub_2393DD7B8(v16, a1);
  if (!v5)
  {
    if (LODWORD(v16[0]))
    {
      v5 = v16[0];
    }

    else
    {
      v5 = sub_2393DD778(&v17, v16[2], 0);
      v16[0] = v5;
      v16[1] = v6;
      if (!v5)
      {
        v7 = sub_2393DB71C(&v17);
        v5 = v17;
        if (!v17)
        {
          v8 = sub_2393DB890(v7, *a2);
          v9 = sub_2393DB8D0(v8, *(a2 + 1));
          v10 = sub_2393DAF28(v9, *(a2 + 2));
          v5 = sub_2393DA87C(v10);
          if (!v5)
          {
            v11 = sub_2393DB75C(&v17);
            v12 = sub_2393DD518(v11, &v22);
            v5 = *v12;
            if (*v12)
            {
              v13 = v12[1];
            }

            else
            {
              v5 = sub_2393DA87C(&v17);
              if (!v5)
              {
                sub_2393DB7D4(v16);
                v5 = v16[0];
                if (!LODWORD(v16[0]))
                {
                  v5 = sub_2393C7CB8(a1);
                  if (!v5)
                  {
                    LODWORD(v5) = 0;
                    v14 = 0;
                    return v14 | v5;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v5 & 0xFFFFFFFF00000000;
  return v14 | v5;
}

unint64_t sub_2393DC8EC(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 2, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t sub_2393DC940(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393DD7B8(a1, a2);
  if (v3 || (v3 = sub_2393C7D60(*(a1 + 16), 4u), v3))
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *(a1 + 136) = 1;
  }

  return v4 | v3;
}

unint64_t *sub_2393DC99C(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 1uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DC9DC(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    v4 = a1[2];
    v5 = (a1 + 4);
    if (a2)
    {
      v6 = sub_2393DCAE4(v5, v4, 2u);
    }

    else
    {
      v6 = sub_2393DA6BC(v5, v4, 2u);
    }

    *a1 = v6;
    a1[1] = v7;
  }

  return a1 + 4;
}

uint64_t sub_2393DCA2C(unint64_t a1)
{
  result = *a1;
  if (!result)
  {
    if (*(a1 + 136) != 1)
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    if (*(v3 + 60) != 21169)
    {
      v5 = 0xAF00000000;
      v6 = 3;
      return v6 | v5;
    }

    v4 = *(v3 + 52);
    if (v4 <= 3)
    {
      v5 = 0xB000000000;
      v6 = 11;
      return v6 | v5;
    }

    *(v3 + 52) = v4 - 4;
    *(v3 + 40) += 4;
    *(a1 + 136) = 0;
    if (!*a1)
    {
LABEL_9:
      v7 = sub_2393DD098(a1);
      *a1 = v7;
      *(a1 + 8) = v8;
      if (!v7)
      {
        sub_2393DB7D4(a1);
      }
    }

    result = *a1;
  }

  v9 = *(a1 + 8);
  return result;
}

unint64_t sub_2393DCAE4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_2393DA6BC(a1, a2, a3);
  if (v4 || (v4 = sub_2393C7D60(*(a1 + 16), 1u), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v4) = 0;
    v5 = 0;
    *(a1 + 96) = 1;
  }

  return v5 | v4;
}

uint64_t sub_2393DCB40(unint64_t a1)
{
  if (*(a1 + 96) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 16);
  if (*(v2 + 60) == 21169)
  {
    v3 = *(v2 + 52);
    if (v3)
    {
      *(v2 + 52) = v3 - 1;
      ++*(v2 + 40);
      *(a1 + 96) = 0;
LABEL_5:
      sub_2393DB7D4(a1);
      result = *a1;
      v5 = *(a1 + 8);
      return result;
    }

    v6 = 0xB000000000;
    v7 = 11;
  }

  else
  {
    v6 = 0xAF00000000;
    v7 = 3;
  }

  return v7 | v6;
}

unint64_t *sub_2393DCBD0(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DD778((a1 + 12), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 12;
}

unint64_t sub_2393DCC10(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_2393DA6BC(a1, a2, a3);
  if (v4 || (v4 = sub_2393C7D60(*(a1 + 16), 1u), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v4) = 0;
    v5 = 0;
    *(a1 + 224) = 1;
  }

  return v5 | v4;
}

uint64_t sub_2393DCC6C(unint64_t a1)
{
  if (*(a1 + 224) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 16);
  if (*(v2 + 60) == 21169)
  {
    v3 = *(v2 + 52);
    if (v3)
    {
      *(v2 + 52) = v3 - 1;
      ++*(v2 + 40);
      *(a1 + 224) = 0;
LABEL_5:
      sub_2393DB7D4(a1);
      result = *a1;
      v5 = *(a1 + 8);
      return result;
    }

    v6 = 0xB000000000;
    v7 = 11;
  }

  else
  {
    v6 = 0xAF00000000;
    v7 = 3;
  }

  return v7 | v6;
}

unint64_t sub_2393DCCFC(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 1, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t sub_2393DCD60(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393DD7B8(a1, a2);
  if (v3 || (v3 = sub_2393C7D60(*(a1 + 16), 4u), v3))
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *(a1 + 264) = 1;
  }

  return v4 | v3;
}

unint64_t *sub_2393DCDBC(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    v4 = a1[2];
    v5 = (a1 + 4);
    if (a2)
    {
      v6 = sub_2393DCC10(v5, v4, 1u);
    }

    else
    {
      v6 = sub_2393DA6BC(v5, v4, 1u);
    }

    *a1 = v6;
    a1[1] = v7;
  }

  return a1 + 4;
}

uint64_t sub_2393DCE0C(uint64_t a1, int a2)
{
  if (!*a1)
  {
    if (*(a1 + 265) == 1)
    {
      v3 = *(a1 + 16);
      if (*(v3 + 60) != 21169)
      {
        v7 = 0xAF00000000;
        v8 = 3;
        goto LABEL_7;
      }

      v4 = *(v3 + 52);
      v5 = v4 >= 2;
      v6 = v4 - 2;
      if (!v5)
      {
        v7 = 0xB000000000;
        v8 = 11;
LABEL_7:
        v9 = v8 | v7;
        v10 = "src/lib/core/TLVWriter.h";
LABEL_10:
        *a1 = v9;
        *(a1 + 8) = v10;
        return a1;
      }

      *(v3 + 52) = v6;
      *(v3 + 40) += 2;
      *(a1 + 265) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    v9 = sub_2393C7E38(*(a1 + 16), 2uLL, a2);
    goto LABEL_10;
  }

  return a1;
}

unint64_t sub_2393DCEBC(uint64_t a1)
{
  v2 = sub_2393C7D60(*(a1 + 16), 2u);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 0;
    *(a1 + 265) = 1;
  }

  return v3 | v2;
}

uint64_t sub_2393DCF10(unint64_t a1)
{
  result = *a1;
  if (!result)
  {
    if (*(a1 + 264) != 1)
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    if (*(v3 + 60) != 21169)
    {
      v5 = 0xAF00000000;
      v6 = 3;
      return v6 | v5;
    }

    v4 = *(v3 + 52);
    if (v4 <= 3)
    {
      v5 = 0xB000000000;
      v6 = 11;
      return v6 | v5;
    }

    *(v3 + 52) = v4 - 4;
    *(v3 + 40) += 4;
    *(a1 + 264) = 0;
    if (!*a1)
    {
LABEL_9:
      v7 = sub_2393DD098(a1);
      *a1 = v7;
      *(a1 + 8) = v8;
      if (!v7)
      {
        sub_2393DB7D4(a1);
      }
    }

    result = *a1;
  }

  v9 = *(a1 + 8);
  return result;
}

unint64_t sub_2393DCFC8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, a3, 23, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_2393DD008(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, 0x100uLL, 23, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2393DD044(uint64_t a1, uint64_t a2)
{
  sub_2393C5BDC(a1, a2);
  if (sub_2393C5C40(a1) == 23)
  {
    return sub_2393C6A2C(a1, (a1 + 72));
  }

  else
  {
    return 0x1A00000026;
  }
}

unint64_t sub_2393DD0A8(uint64_t a1, uint64_t a2)
{
  result = sub_2393C7114(a2, 21, 256);
  if (!result)
  {

    return sub_2393DD7F4(a1, a2);
  }

  return result;
}

unint64_t sub_2393DD104(uint64_t a1)
{
  v2 = sub_2393C6A98(a1, *(a1 + 72));
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393C6B34(a1);
    if (v4 == 33)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x2300000000;
    }

    if (v4 == 33)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      LODWORD(v2) = 36;
    }
  }

  return v2 | v3;
}

uint64_t sub_2393DD198(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_2393C5BDC(a1, a2);
  *(a1 + 72) = a3;
  return result;
}

unint64_t sub_2393DD1DC(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 0, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t sub_2393DD230(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 4, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t *sub_2393DD294(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 4), a1[2], 0);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t *sub_2393DD2D4(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 12), a1[2], 4u);
    a1[1] = v2;
  }

  return a1 + 12;
}

unint64_t *sub_2393DD314(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 24), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 24;
}

unint64_t *sub_2393DD354(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 32), a1[2], 2u);
    a1[1] = v2;
  }

  return a1 + 32;
}

unint64_t *sub_2393DD394(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 3uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t sub_2393DD3D4(unint64_t *a1)
{
  if (!*a1)
  {
    v2 = sub_2393DD098(a1);
    *a1 = v2;
    a1[1] = v3;
    if (!v2)
    {
      sub_2393DB7D4(a1);
    }
  }

  result = *a1;
  v5 = a1[1];
  return result;
}

unint64_t *sub_2393DD418(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 4), a1[2], 1u);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t sub_2393DD458(uint64_t a1, _BYTE *a2)
{
  sub_2393C5AAC(v8);
  sub_2393C5BDC(v8, a1);
  while (1)
  {
    while (1)
    {
      do
      {
        if (sub_2393C6B34(v8))
        {
          v5 = 0;
          LODWORD(v4) = 0;
          return v4 | v5;
        }
      }

      while (v9 > 0xFF);
      if (v9 != 1)
      {
        break;
      }

      v7 = 0;
      v4 = sub_2393C5ED0(v8, &v7);
      if (v4)
      {
        goto LABEL_11;
      }

      a2[1] = v7;
      a2[2] = 1;
    }

    if (!v9)
    {
      v4 = sub_238EA4DB4(v8, a2);
      if (v4)
      {
        break;
      }
    }
  }

LABEL_11:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t *sub_2393DD518(unint64_t *a1, unsigned __int8 *a2)
{
  v4 = sub_2393C8140(a1[2], 0, *a2);
  *a1 = v4;
  a1[1] = v5;
  if (!v4)
  {
    if (a2[2] != 1 || (v6 = sub_2393C8140(a1[2], 1uLL, a2[1]), *a1 = v6, a1[1] = v7, !v6))
    {
      sub_2393DB7D4(a1);
    }
  }

  return a1;
}

uint64_t sub_2393DD584(unsigned __int8 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (a1[2] == 1)
  {
    return a1[1] | 0x600;
  }

  return *a1 | 0x500;
}

BOOL sub_2393DD5C8(char *a1, size_t a2, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3 & 0xFF000700;
  if ((a3 & 0xFF000700) == 0x600 || v8 == 1280)
  {
    sub_2393DDF30(&__str, a3);
    if (__str <= 1u && (v13 & 0x100) != 0)
    {
      snprintf(&__str, 0x34uLL, "Cluster-specific error: 0x%02x");
    }

    else
    {
      sub_2393DDC88(__str);
      snprintf(&__str, 0x34uLL, "General error: 0x%02x (%s)");
    }

    sub_2393C9264(a1, a2, "IM", a3, a4, &__str);
  }

  result = v8 == 1280 || v8 == 1536;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393DD6D8(int *a1, _BYTE *a2)
{
  v4 = 0;
  result = sub_2393DB268(a1, 0, 4, &v4);
  *a2 = v4;
  return result;
}

unint64_t *sub_2393DD71C(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    v3 = sub_2393C8140(a1[2], 0, a2);
    *a1 = v3;
    a1[1] = v4;
    if (!v3)
    {
      v5 = sub_2393DD098(a1);
      *a1 = v5;
      a1[1] = v6;
      if (!v5)
      {
        sub_2393DB7D4(a1);
      }
    }
  }

  return a1;
}

unint64_t sub_2393DD778(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, a3, 21, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_2393DD7B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, (a1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_2393DD7F4(uint64_t a1, uint64_t a2)
{
  sub_2393C5BDC(a1, a2);
  if (sub_2393C5C40(a1) == 21)
  {
    v3 = sub_2393C6A2C(a1, (a1 + 72));
    if (!v3)
    {
      v3 = sub_2393DD860(a1);
    }

    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0x1800000000;
    LODWORD(v3) = 38;
  }

  return v4 | v3;
}

unint64_t sub_2393DD860(uint64_t a1)
{
  sub_2393C5AAC(v11);
  sub_2393C5BDC(v11, a1);
  v2 = 0;
  v3 = 1;
  v4 = 36;
  while (1)
  {
    v5 = sub_2393C6B34(v11);
    if (v5)
    {
      break;
    }

    if (v12 <= 0xFF)
    {
      v6 = v3 | (v2 < v12);
      v2 = v12;
      v3 = 0;
      if ((v6 & 1) == 0)
      {
        v7 = 0x3200000000;
        return v7 | v4;
      }
    }
  }

  if (v5 == 33)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v7 = v8 & 0xFFFFFFFF00000000;
    v4 = v5;
  }

  else
  {
    v9 = sub_2393C6A98(v11, *(a1 + 72));
    v4 = v9;
    v7 = v9 & 0xFFFFFFFF00000000;
  }

  return v7 | v4;
}

unint64_t sub_2393DD938(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 3, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t sub_2393DD98C(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 8, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t sub_2393DD9E0(int *a1, uint64_t a2)
{
  sub_2393C5AAC(v5);
  result = sub_2393C74D8(a1, 5, v5);
  if (!result)
  {
    return sub_2393DA738(a2, v5);
  }

  return result;
}

unint64_t *sub_2393DDA44(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 4), a1[2], 3u);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t *sub_2393DDA84(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 12), a1[2], 8u);
    a1[1] = v2;
  }

  return a1 + 12;
}

unint64_t *sub_2393DDAC4(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 24), a1[2], 4u);
    a1[1] = v2;
  }

  return a1 + 24;
}

unint64_t *sub_2393DDB04(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 32), a1[2], 5u);
    a1[1] = v2;
  }

  return a1 + 32;
}

unint64_t *sub_2393DDB44(unint64_t *a1, int a2)
{
  if (!*a1)
  {
    *a1 = sub_2393C7E38(a1[2], 7uLL, a2);
    a1[1] = v3;
  }

  return a1;
}

unint64_t *sub_2393DDB84(unint64_t *a1, unsigned int a2)
{
  if (!*a1)
  {
    v3 = sub_2393C818C(a1[2], 0, a2);
    *a1 = v3;
    a1[1] = v4;
    if (!v3)
    {
      v5 = sub_2393DD098(a1);
      *a1 = v5;
      a1[1] = v6;
      if (!v5)
      {
        sub_2393DB7D4(a1);
      }
    }
  }

  return a1;
}

unint64_t *sub_2393DDBE0(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = sub_2393DA6BC((a1 + 4), a1[2], 2u);
    a1[1] = v2;
  }

  return a1 + 4;
}

unint64_t sub_2393DDC20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2393C5AAC(v7);
  sub_2393C5ADC(v7, *a1, *(a1 + 8));
  result = sub_2393C6B34(v7);
  if (!result)
  {
    return sub_2393C8964(a2, a3, v7);
  }

  return result;
}

const char *sub_2393DDC88(int a1)
{
  switch(a1)
  {
    case 125:
      result = "INVALID_SUBSCRIPTION";
      break;
    case 126:
      result = "UNSUPPORTED_ACCESS";
      break;
    case 127:
      result = "UNSUPPORTED_ENDPOINT";
      break;
    case 128:
      result = "INVALID_ACTION";
      break;
    case 129:
      result = "UNSUPPORTED_COMMAND";
      break;
    case 130:
      result = "Deprecated82";
      break;
    case 131:
      result = "Deprecated83";
      break;
    case 132:
      result = "Deprecated84";
      break;
    case 133:
      result = "INVALID_COMMAND";
      break;
    case 134:
      result = "UNSUPPORTED_ATTRIBUTE";
      break;
    case 135:
      result = "CONSTRAINT_ERROR";
      break;
    case 136:
      result = "UNSUPPORTED_WRITE";
      break;
    case 137:
      result = "RESOURCE_EXHAUSTED";
      break;
    case 138:
      result = "Deprecated8a";
      break;
    case 139:
      result = "NOT_FOUND";
      break;
    case 140:
      result = "UNREPORTABLE_ATTRIBUTE";
      break;
    case 141:
      result = "INVALID_DATA_TYPE";
      break;
    case 142:
      result = "Deprecated8e";
      break;
    case 143:
      result = "UNSUPPORTED_READ";
      break;
    case 144:
      result = "Deprecated90";
      break;
    case 145:
      result = "Deprecated91";
      break;
    case 146:
      result = "DATA_VERSION_MISMATCH";
      break;
    case 147:
      result = "Deprecated93";
      break;
    case 148:
      result = "TIMEOUT";
      break;
    case 149:
      result = "Reserved95";
      break;
    case 150:
      result = "Reserved96";
      break;
    case 151:
      result = "Reserved97";
      break;
    case 152:
      result = "Reserved98";
      break;
    case 153:
      result = "Reserved99";
      break;
    case 154:
      result = "Reserved9a";
      break;
    case 155:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 205:
    case 206:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
      goto LABEL_6;
    case 156:
      result = "BUSY";
      break;
    case 157:
      result = "ACCESS_RESTRICTED";
      break;
    case 192:
      result = "Deprecatedc0";
      break;
    case 193:
      result = "Deprecatedc1";
      break;
    case 194:
      result = "Deprecatedc2";
      break;
    case 195:
      result = "UNSUPPORTED_CLUSTER";
      break;
    case 196:
      result = "Deprecatedc4";
      break;
    case 197:
      result = "NO_UPSTREAM_SUBSCRIPTION";
      break;
    case 198:
      result = "NEEDS_TIMED_INTERACTION";
      break;
    case 199:
      result = "UNSUPPORTED_EVENT";
      break;
    case 200:
      result = "PATHS_EXHAUSTED";
      break;
    case 201:
      result = "TIMED_REQUEST_MISMATCH";
      break;
    case 202:
      result = "FAILSAFE_REQUIRED";
      break;
    case 203:
      result = "INVALID_IN_STATE";
      break;
    case 204:
      result = "NO_COMMAND_RESPONSE";
      break;
    case 207:
      result = "DYNAMIC_CONSTRAINT_ERROR";
      break;
    case 208:
      result = "ALREADY_EXISTS";
      break;
    case 209:
      result = "INVALID_TRANSPORT_TYPE";
      break;
    case 240:
      result = "WRITE_IGNORED";
      break;
    default:
      if (a1)
      {
        if (a1 == 1)
        {
          result = "FAILURE";
        }

        else
        {
LABEL_6:
          result = "Unallocated";
        }
      }

      else
      {
        result = "SUCCESS";
      }

      break;
  }

  return result;
}

uint64_t sub_2393DDF30(uint64_t result, int a2)
{
  *(result + 1) = 0;
  if ((a2 & 0xFF000700) == 0x600)
  {
    *result = 1;
    *(result + 1) = a2 | 0x100;
  }

  else if (a2)
  {
    if ((a2 & 0xFF000700) == 0x500)
    {
      *result = a2;
    }

    else
    {
      *result = 1;
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2393DDF84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) != 16)
  {
    v11 = 0x2300000000;
LABEL_11:
    v12 = 47;
    goto LABEL_12;
  }

  if (*(a2 + 8) != 32)
  {
    v11 = 0x2400000000;
    goto LABEL_11;
  }

  if (*(a3 + 8) != 65)
  {
    v11 = 0x2500000000;
    goto LABEL_11;
  }

  if (*(a6 + 8) < 0x20uLL)
  {
    v11 = 0x2600000000;
    goto LABEL_11;
  }

  v17 = &v19;
  v18 = xmmword_2395C21E0;
  sub_2393D5CDC(&v17, *a2, 0x20uLL);
  sub_2393D5CDC(&v17, *a3, *(a3 + 8));
  sub_2393D5D60(&v17, a4, 8);
  sub_2393D5D60(&v17, a5, 8);
  if (v18 >= *(&v18 + 1))
  {
    v16 = &unk_284BB90C0;
    v15 = sub_2393F847C(&v16, *a1, *(a1 + 8), v17, *(&v18 + 1), *a6, *(a6 + 8));
    v11 = v15 & 0xFFFFFFFF00000000;
    v12 = v15;
    if (!v15)
    {
      sub_238DB8498(a6, 0x20uLL);
    }
  }

  else
  {
    v11 = 0x3300000000;
    v12 = 25;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

uint64_t sub_2393DE11C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v9 = 0x2700000000;
LABEL_12:
    v10 = 47;
    return v10 | v9;
  }

  if (!a3)
  {
    v9 = 0x2800000000;
    goto LABEL_12;
  }

  if (!a7)
  {
    v9 = 0x2900000000;
    goto LABEL_12;
  }

  a1[96] = a3;
  a1[4] = a5;
  a1[5] = a6;
  a1[97] = a4;
  a1[3] = a2;
  a1[98] = a7;
  a1[68] = a7;
  v8 = sub_2393D9044(1u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "CASE Server enabling CASE session setups", &v12, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(1u, 2);
  }

  sub_2394721B4(a1[3], 0, 0x30u, (a1 + 1));
  v12 = 0;
  v13 = 0;
  sub_2393DE228(a1, &v12);
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t sub_2393DE228(uint64_t a1, uint64_t *a2)
{
  sub_2393DF69C(a1 + 64);
  if (*(a1 + 48) == 1)
  {
    (*(**(a1 + 56) + 32))(*(a1 + 56));
  }

  *(a1 + 48) = 0;
  v4 = *(a1 + 768);
  v5 = *(a1 + 776);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_239476008(v9);
  if (sub_2393DFE78(a1 + 64, v4, v5, v6, v7, a1, a2, v9))
  {
    sub_239530ECC();
  }

  sub_2393DEBDC(a1 + 96, v9);
  result = sub_2393DECA4(a1 + 48, v9);
  if (v9[0] == 1)
  {
    result = (*(*v10 + 32))(v10);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    sub_239530F64();
  }

  return result;
}

uint64_t sub_2393DE348(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v10 = 136315394;
    v11 = "CASEServer";
    v12 = 2080;
    v13 = "InitCASEHandshake";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  if (a2)
  {
    v5 = 0;
    v6 = 0;
    *(a2 + 40) = a1 + 72;
  }

  else
  {
    v6 = 0x4000000000;
    v5 = 47;
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    v10 = 136315394;
    v11 = "CASEServer";
    v12 = 2080;
    v13 = "InitCASEHandshake";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2393DE4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    v24 = 2080;
    v25 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 760) && (v9 = sub_2393E93F8(a1 + 64), (v9 & 1) == 0))
  {
    if (*(a1 + 760) == 2)
    {
      v9 = sub_2393E93E8(a1 + 208);
      if (v9 >= 0xFFFF)
      {
        v16 = -1;
      }

      else
      {
        v16 = v9;
      }
    }

    else
    {
      v16 = 5000;
    }

    v17 = sub_2393DE920(v9, a2, v16);
    v14 = v17;
    v15 = HIDWORD(v17);
    if (v17)
    {
      v18 = sub_2393D9044(1u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Failed to send the busy status report, err:%s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(1u, 1);
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_238EA6DC0(a2, buf);
    v10 = (*(**buf + 16))(*buf);
    (*(**buf + 32))(*buf);
    v11 = sub_2393D9044(1u);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = ". Starting handshake.";
        v24 = 2048;
        v25 = a2;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "CASE Server received Sigma1 message %s EC %p", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(1u, 2);
      }

      v13 = sub_2393DE348(a1, a2);
      v14 = v13;
      if (!v13)
      {
        v13 = (*(*(a1 + 64) + 80))(a1 + 64, a2, a3, a4);
        v14 = v13;
      }

      v15 = HIDWORD(v13);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "over encrypted session. Ignoring.";
        v24 = 2048;
        v25 = a2;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "CASE Server received Sigma1 message %s EC %p", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1u, 1);
      }

      v14 = 3;
      LODWORD(v15) = 133;
    }
  }

  v20 = sub_23948B4CC();
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    v24 = 2080;
    v25 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14 | (v15 << 32);
}

unint64_t sub_2393DE920(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = sub_23948B4CC();
  if (os_signpost_enabled(v5))
  {
    *buf = 136315394;
    *v18 = "CASEServer";
    *&v18[8] = 2080;
    v19 = "SendBusyStatusReport";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v6 = sub_2393D9044(1u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Already in the middle of CASE handshake, sending busy status report", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(1u, 2);
  }

  sub_23946FF2C(a3, &v16);
  if (v16)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 112);
      if (sub_2394703E0(a2))
      {
        v8 = 105;
      }

      else
      {
        v8 = 114;
      }

      *buf = 67109376;
      *v18 = v7;
      *&v18[4] = 1024;
      *&v18[6] = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Sending status report, exchange %u%c", buf, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      v9 = *(a2 + 112);
      sub_2394703E0(a2);
      sub_2393D5320(1u, 2);
    }

    *buf = 0;
    v10 = sub_239470478(a2, 0, 64, &v16, buf);
    v11 = v10;
    v12 = HIDWORD(v10);
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }

  else
  {
    v11 = 11;
    LODWORD(v12) = 230;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *v18 = "CASEServer";
    *&v18[8] = 2080;
    v19 = "SendBusyStatusReport";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 | (v12 << 32);
}

uint64_t sub_2393DEBDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result + 40);
  if (*(result + 40) == 1)
  {
    v4 = sub_238DE36B8((result + 40));
    if ((*(**v4 + 16))(*v4) != 2)
    {
      sub_239530FFC();
    }

    v5 = sub_238DE36B8(v3);
    v6 = sub_239495304(*v5);
    *a2 = 1;
    *(a2 + 8) = v6;
    v7 = *(*v6 + 24);

    return v7();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2393DECA4(uint64_t a1, unsigned __int8 *a2)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 8) = v5;
    (*(*v5 + 24))(v5);
    (*(**(a2 + 1) + 32))(*(a2 + 1));
    *a2 = 0;
  }

  return a1;
}

void sub_2393DED68(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    v10 = 2080;
    v11 = "OnSessionEstablishmentError";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v3 = sub_2393D9044(1u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "CASE Session establishment failed: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(1u, 1);
  }

  v5 = sub_23948B4CC();
  if (os_signpost_enabled(v5))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v10 = 2080;
    v11 = "CASEFail";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  *buf = 0;
  buf[8] = 0;
  sub_2393DE228(a1, buf);
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v10 = 2080;
    v11 = "CASEFail";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    v10 = 2080;
    v11 = "OnSessionEstablishmentError";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2393DF010(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    *&buf[12] = 2080;
    v16 = "OnSessionEstablished";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(**a2 + 48))() >> 32;
    v7 = (*(**a2 + 48))();
    (*(**a2 + 48))();
    *buf = 67109632;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = v8;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "CASE Session established to peer: <%08X%08X, %d>", buf, 0x14u);
  }

  if (sub_2393D5398(2u))
  {
    v11 = (*(**a2 + 48))() >> 32;
    (*(**a2 + 48))();
    (*(**a2 + 48))();
    sub_2393D5320(1u, 2);
  }

  *buf = (*(**a2 + 48))(*a2, v9, v10);
  buf[8] = v12;
  sub_2393DE228(a1, buf);
  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "CASEServer";
    *&buf[12] = 2080;
    v16 = "OnSessionEstablished";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2393DF34C(uint64_t a1)
{
  sub_2393DF47C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF3B0(uint64_t a1)
{
  sub_2393DF47C(a1 - 8);

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF41C(uint64_t a1)
{
  sub_2393DF47C(a1 - 16);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393DF47C(uint64_t a1)
{
  *a1 = &unk_284BB8410;
  *(a1 + 8) = &unk_284BB8478;
  *(a1 + 16) = &unk_284BB84B0;
  sub_2393DF53C(a1);
  sub_2393DF8F0(a1 + 64);
  if (*(a1 + 48) == 1)
  {
    (*(**(a1 + 56) + 32))(*(a1 + 56));
  }

  return a1;
}

void sub_2393DF53C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_23947225C(v2, 0, 0x30u);
    *(a1 + 24) = 0;
  }

  sub_2393DF69C(a1 + 64);
  if (*(a1 + 48) == 1)
  {
    (*(**(a1 + 56) + 32))(*(a1 + 56));
  }

  *(a1 + 48) = 0;
}

void *sub_2393DF5B4(void *a1)
{
  *a1 = &unk_284BB8558;
  a1[1] = &unk_284BB8608;
  a1[2] = &unk_284BB8658;
  v2 = (a1 + 4);
  a1[4] = &unk_284BB8698;
  sub_2393DF69C(a1);
  v3 = a1[86];
  if (v3)
  {
    sub_238EF79DC(v3);
  }

  v4 = a1[84];
  if (v4)
  {
    sub_238EF79DC(v4);
  }

  sub_2393F9144(a1 + 50, 32);
  sub_2393F7EB8(a1 + 24);
  v5 = a1[23];
  if (v5)
  {
    sub_2393E9744(v5);
    a1[23] = 0;
  }

  sub_2393DF88C(v2);
  return a1;
}