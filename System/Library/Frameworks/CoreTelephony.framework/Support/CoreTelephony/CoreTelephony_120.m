uint64_t *sub_1007E10F0(void *a1)
{
  v2 = a1;
  (*(**a1 + 16))(*a1);
  return sub_10024BAAC(&v2);
}

void sub_1007E1148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024BAAC(va);
  _Unwind_Resume(a1);
}

void sub_1007E122C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E1254(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_1015662DC(v3, *(a1 + 16), *(a1 + 24) - *(a1 + 16), *(a1 + 8));
  v1 = 0;
  v2 = 0;
  sub_1015689C4();
}

void sub_1007E1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

size_t sub_1007E14C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1007E1578(uint64_t *a1, uint64_t a2)
{
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = sub_1001FA964(a1 + 3, a2);
  }

  else
  {
    sub_1001C787C(a1[4], a2);
    result = v3 + 128;
    a1[4] = v3 + 128;
  }

  a1[4] = result;
  return result;
}

void sub_1007E15D8(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  sub_1007E1950(__dst, a2, a3);
  v4 = a1[11];
  v5 = a1[12];
  if (v4 >= v5)
  {
    v8 = a1[10];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v22[4] = a1 + 10;
    if (v12)
    {
      sub_1001904B4((a1 + 10), v12);
    }

    v13 = 48 * v9;
    v22[0] = 0;
    v22[1] = v13;
    v22[3] = 0;
    v14 = *__dst;
    *(v13 + 16) = v19;
    *v13 = v14;
    __dst[1] = 0;
    v19 = 0;
    __dst[0] = 0;
    v15 = *__p;
    *(v13 + 40) = v21;
    *(v13 + 24) = v15;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    v22[2] = 48 * v9 + 48;
    sub_1006FAE88(a1 + 10, v22);
    v16 = a1[11];
    sub_1001C7794(v22);
    v17 = SHIBYTE(v21);
    a1[11] = v16;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__dst;
    *(v4 + 16) = v19;
    *v4 = v6;
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = v21;
    *(v4 + 24) = *__p;
    *(v4 + 40) = v7;
    v19 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    a1[11] = v4 + 48;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007E1754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1001C7794(va1);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E1778(uint64_t a1)
{
  *a1 = off_101E80488;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1007E17E8(uint64_t a1)
{
  *a1 = off_101E80488;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void *sub_1007E1878(void *a1)
{
  *a1 = off_101E804D8;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1007E18D4(void *a1)
{
  *a1 = off_101E804D8;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  operator delete();
}

char *sub_1007E1950(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1007E19CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007E1AAC(void *a1, void *a2, __int128 *a3, int *a4, __int128 *a5, int *a6, __int128 *a7, uint64_t *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E80528;
  sub_100462D68((a1 + 3), a2, a3, *a4, a5, *a6, a7, *a8, *a9);
  return a1;
}

void sub_1007E1B48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E80528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007E1BC4(uint64_t result)
{
  *result = off_101E805B8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_1007E1BEC(void **a1)
{
  *a1 = off_101E805B8;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
}

void sub_1007E1C48(void **a1)
{
  *a1 = off_101E805B8;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
  operator delete();
}

uint64_t sub_1007E1E0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "pendingInstallStatus", *(a1 + 36));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E1EDC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_70;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 4)
      {
        *(a1 + 40) |= 2u;
        v33 = *(this + 1);
        v32 = *(this + 2);
        v34 = *this;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v49 = v32 - v33;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v34 + v33);
          v51 = v33 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v37) = 0;
              *(this + 24) = 1;
              goto LABEL_65;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_57:
              LODWORD(v37) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v37) = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(this + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 36) = v37;
      }

      else if (v22 == 3)
      {
        *(a1 + 40) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v43 = v23 - v24;
          if (!v17)
          {
            v43 = 0;
          }

          v44 = (v25 + v24);
          v45 = v24 + 1;
          while (1)
          {
            if (!v43)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_62;
            }

            v46 = *v44;
            *(this + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            --v43;
            ++v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_49:
              LODWORD(v28) = 0;
              goto LABEL_62;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 32) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          sub_1007E22A8();
        }

        if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_1007E23F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6, 1u);
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 32), 3u);
    v7 = *(v3 + 40);
  }

  if ((v7 & 2) != 0)
  {
    v8 = *(v3 + 36);

    return PB::Writer::writeVarInt(this, v8, 4u);
  }

  return result;
}

void sub_1007E248C(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_7:
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177F960();
    }

    *a4 = 0;
    *(a4 + 688) = 0;
    if (v16)
    {
      return;
    }

LABEL_49:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = a3[1];
  }

  v20 = [NSData nonOwningDataWithBytes:v18 length:v19];
  v21 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Decoding chatbot render information JSON document using BlastDoor", buf, 2u);
  }

  v48 = 0;
  v49 = 0;
  v47 = 0;
  (*(*v15 + 16))(&v47, v15);
  bzero(buf, 0x2B0uLL);
  v25[0] = 0;
  v25[1] = &v49;
  (*(*v47 + 128))(buf);
  sub_1003A5C24(v25);
  v22 = v49;
  if (v49)
  {
    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177F8B4(v22, v23);
    }

LABEL_34:
    *a4 = 0;
    *(a4 + 688) = 0;
    goto LABEL_35;
  }

  if ((v46 & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177F92C();
    }

    goto LABEL_34;
  }

  sub_1007D41A0(buf, v25);
  sub_100734EA0(a4, v25);
  *(a4 + 568) = 0;
  *(a4 + 592) = 0;
  v24 = v28;
  if (v28 == 1)
  {
    *(a4 + 568) = v26;
    *(a4 + 576) = v27;
    v27 = 0uLL;
    v26 = 0;
    *(a4 + 592) = 1;
  }

  *(a4 + 600) = v29;
  *(a4 + 608) = v30;
  *(a4 + 624) = v31;
  v30 = 0uLL;
  v31 = 0;
  *(a4 + 648) = v33;
  *(a4 + 632) = v32;
  v33 = 0;
  v32 = 0uLL;
  *(a4 + 656) = 0;
  *(a4 + 680) = 0;
  if (v36 == 1)
  {
    *(a4 + 656) = v34;
    *(a4 + 672) = v35;
    v34 = 0uLL;
    v35 = 0;
    *(a4 + 680) = 1;
  }

  *(a4 + 688) = 1;
  if (v24)
  {
    v50 = &v26;
    sub_100191E28(&v50);
  }

  sub_1006FA044(v25);
LABEL_35:
  if (v46 == 1)
  {
    if (v45 == 1 && v44 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38[24] == 1)
    {
      v25[0] = v38;
      sub_1007E2E10(v25);
    }

    sub_1007E3070(buf);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  sub_1003A5A8C(&v49);

  if ((v16 & 1) == 0)
  {
    goto LABEL_49;
  }
}

void sub_1007E2888(_Unwind_Exception *a1)
{
  sub_1007E2D78(&STACK[0x2B0]);
  v6 = *(v4 - 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1003A5A8C((v4 - 96));

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1007E28D8()
{
  if (v0)
  {
    JUMPOUT(0x1007E28D0);
  }

  JUMPOUT(0x1007E28C8);
}

void sub_1007E28E8(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5)
  {

    sub_1007E296C(a1, a2, a3, a4);
  }

  else
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177F994();
    }

    *a4 = 0;
    a4[24] = 0;
  }
}

void sub_1007E296C(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (!v13)
  {
    v15 = 0;
LABEL_11:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_7:
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177FAA8();
    }

    *a4 = 0;
    *(a4 + 24) = 0;
    goto LABEL_36;
  }

LABEL_12:
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = a3[1];
  }

  v20 = [NSData nonOwningDataWithBytes:v18 length:v19];
  v21 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Decoding suggestions JSON document using BlastDoor, with options: ", buf, 2u);
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  (*(*v15 + 16))(&v26, v15);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *buf = 0u;
  v31 = 0u;
  *&v24 = 0;
  *(&v24 + 1) = &v28;
  (*(*v26 + 136))(buf);
  sub_1003A5C24(&v24);
  v22 = v28;
  if (v28)
  {
    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177F9C8(v22, v23);
    }
  }

  else if (BYTE8(v51) == 1 && (v51 & 1) != 0)
  {
    if (DWORD2(v50) == 2)
    {
      sub_1007D43C0(&v24, buf);
      *a4 = v24;
      *(a4 + 16) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a4 + 24) = 1;
      v29 = &v24;
      sub_10019029C(&v29);
      goto LABEL_30;
    }

    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177FA74();
    }
  }

  else if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
  {
    sub_10177FA40();
  }

  *a4 = 0;
  *(a4 + 24) = 0;
LABEL_30:
  if (BYTE8(v51) == 1 && v51 == 1)
  {
    sub_1006A1BA0(buf);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_1003A5A8C(&v28);

LABEL_36:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1007E2CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, const void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, int a60, char a61)
{
  if ((a61 & 1) != 0 && a59 == 1)
  {
    sub_1006A1BA0(&a17);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1003A5A8C(&a15);

  if ((v63 & 1) == 0)
  {
    sub_100004A34(v61);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007E2D78(uint64_t a1)
{
  if (*(a1 + 680) == 1)
  {
    if (*(a1 + 672) == 1 && *(a1 + 671) < 0)
    {
      operator delete(*(a1 + 648));
    }

    if (*(a1 + 647) < 0)
    {
      operator delete(*(a1 + 624));
    }

    if (*(a1 + 623) < 0)
    {
      operator delete(*(a1 + 600));
    }

    if (*(a1 + 584) == 1)
    {
      v3 = (a1 + 560);
      sub_1007E2E10(&v3);
    }

    sub_1007E3070(a1);
  }

  return a1;
}

void sub_1007E2E10(void ***a1)
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
        v6 = v4 - 248;
        sub_1007E2E98((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007E2E98(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E805F8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_1007E2EF8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_1007E2F40(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1007E2F40(void ***a1)
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
        v6 = v4 - 248;
        sub_1007E2FC8((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007E2FC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E80608[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_1007E3028(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_1006A1D8C(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1007E3070(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v3 = (a1 + 528);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 520) == 1 && *(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 488) == 1 && *(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 456) == 1 && *(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 424) == 1 && *(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 392) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 296) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1)
  {
    sub_1007E31AC(a1);
  }

  return a1;
}

uint64_t sub_1007E31AC(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v3 = (a1 + 232);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 224) == 1)
  {
    v3 = (a1 + 200);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    sub_10003CA58(&v3);
  }

  if (*(a1 + 128) == 1)
  {
    v3 = (a1 + 104);
    sub_1007E32B0(&v3);
  }

  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
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
  }

  return a1;
}

void sub_1007E32B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007E3304(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007E3304(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 16) == 1 && *(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  a1[1] = v2;
}

double sub_1007E3370(uint64_t a1)
{
  *a1 = off_101E80628;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007E33A0(void **a1)
{
  *a1 = off_101E80628;
  v2 = (a1 + 1);
  v3 = a1 + 2;
  sub_100140868(&v3);
  sub_100140928(v2, 0);
  PB::Base::~Base(a1);
}

void sub_1007E3410(void **a1)
{
  sub_1007E33A0(a1);

  operator delete();
}

uint64_t sub_1007E359C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 40));
    v6 = *(a1 + 48);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 44));
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "updatedSubscription");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E3684(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_58;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 2u;
          v32 = *(this + 1);
          if (v32 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*this + v32);
            *(this + 1) = v33;
            v35 = v34 != 0;
          }

          *(a1 + 44) = v35;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v36 = 0;
            v37 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v38 = v23 - v24;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v25 + v24);
            v40 = v24 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v28 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v28) = 0;
                goto LABEL_53;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 40) = v28;
          goto LABEL_54;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          sub_1007E3A08();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007E3B54(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeSubmessage(this, v7, 2u);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44), 3u);
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::writeVarInt(this, v9, 4u);
  }

  return result;
}

double sub_1007E3C00(uint64_t a1)
{
  *a1 = off_101E80678;
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

void sub_1007E3C38(uint64_t a1)
{
  *a1 = off_101E80678;
  v4 = *(a1 + 56);
  v2 = (a1 + 56);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    sub_100140988(a1 + 48, v5);
  }

  sub_100140928((a1 + 40), 0);
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    sub_100140988(a1 + 32, v6);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7)
  {
    sub_100140988(a1 + 24, v7);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007E3D20(uint64_t a1)
{
  sub_1007E3C38(a1);

  operator delete();
}

uint64_t sub_1007E3D58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 76))
  {
    PB::TextFormatter::format(this, "consentState", *(a1 + 64));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "details");
  }

  if ((*(a1 + 76) & 2) != 0)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 68));
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 76) & 4) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 72));
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    PB::TextFormatter::format(this, "targetCsn", v7);
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E3EB8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_90;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 76) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v45 = 0;
              v46 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v47 = v27 - v28;
              if (!v17)
              {
                v47 = 0;
              }

              v48 = (v29 + v28);
              v49 = v28 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_85;
                }

                v50 = *v48;
                *(this + 1) = v49;
                v32 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
LABEL_70:
                  LODWORD(v32) = 0;
                  goto LABEL_85;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_85:
            *(a1 + 64) = v32;
            goto LABEL_58;
          }

          if (v22 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              operator new();
            case 9:
              operator new();
            case 0xA:
              operator new();
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 76) |= 4u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 72) = v26;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 76) |= 2u;
            v37 = *(this + 1);
            v36 = *(this + 2);
            v38 = *this;
            if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
            {
              v51 = 0;
              v52 = 0;
              v41 = 0;
              v17 = v36 >= v37;
              v53 = v36 - v37;
              if (!v17)
              {
                v53 = 0;
              }

              v54 = (v38 + v37);
              v55 = v37 + 1;
              while (1)
              {
                if (!v53)
                {
                  LODWORD(v41) = 0;
                  *(this + 24) = 1;
                  goto LABEL_88;
                }

                v56 = *v54;
                *(this + 1) = v55;
                v41 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
LABEL_80:
                  LODWORD(v41) = 0;
                  goto LABEL_88;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = (v38 + v37);
              v43 = v37 + 1;
              while (1)
              {
                *(this + 1) = v43;
                v44 = *v42++;
                v41 |= (v44 & 0x7F) << v39;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                ++v43;
                v14 = v40++ > 8;
                if (v14)
                {
                  goto LABEL_80;
                }
              }
            }

LABEL_88:
            *(a1 + 68) = v41;
            goto LABEL_58;
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v58 = 0;
        return v58 & 1;
      }

LABEL_58:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_90:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t sub_1007E4528(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 76);
  if ((v5 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 72), 2u);
    v5 = *(v3 + 76);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 68), 3u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  v6 = *(v3 + 40);
  if (v6)
  {
    result = PB::Writer::write(this, v6, 5u);
  }

  if (*(v3 + 76))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 64), 6u);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7, 7u);
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007E4638(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

void sub_1007E46FC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1007E4710(uint64_t a1, uint64_t a2, char a3)
{
  LazuliProvisioningServerWrapper::stopTimers(a1);
  sub_10098ED28(*(a1 + 360));
  if (v6)
  {

    LazuliProvisioningServerWrapper::startUnauthorizedXmlTimer(a1);
  }

  v7 = sub_10098E620(*(a1 + 360));
  if (v8)
  {
    v9 = v7;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = v7 - a2;
    if (v7 - a2 < 0)
    {
      v10 = a2 - v7;
    }

    if (v10 > 0x258)
    {
LABEL_21:

      LazuliProvisioningServerWrapper::startFullXmlTimer(a1);
    }

    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v9;
      v19 = 2048;
      v20 = a2;
      v12 = "#I Not starting FULL XML timer for %zu as its vicinity-banned : %zu";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v17, 0x16u);
    }
  }

  else
  {
    v13 = sub_10098E9A4(*(a1 + 360));
    if (v14)
    {
      v15 = v13;
      if ((a3 & 1) == 0)
      {
        goto LABEL_24;
      }

      v16 = v13 - a2;
      if (v13 - a2 < 0)
      {
        v16 = a2 - v13;
      }

      if (v16 > 0x258)
      {
LABEL_24:

        LazuliProvisioningServerWrapper::startRefreshXmlTimer(a1);
      }

      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218240;
        v18 = v15;
        v19 = 2048;
        v20 = a2;
        v12 = "#I Not starting REFRESH XML timer for %zu as its vicinity-banned : %zu";
        goto LABEL_19;
      }
    }
  }
}

void sub_1007E4990(LazuliProvisioningServerWrapper *a1)
{
  LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(a1);

  operator delete();
}

void MaxDataRateManager::submit5GSDMStatusToCA_sync(Registry **this)
{
  v2 = this + 7;
  ServiceMap = Registry::getServiceMap(this[7]);
  v4 = ServiceMap;
  if (v5 < 0)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_66;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_66;
  }

LABEL_10:
  v13 = Registry::getServiceMap(*v2);
  v14 = v13;
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

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19 && (v20 = v19[4]) != 0)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v14);
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v20);
    v21 = 0;
  }

  else
  {
    std::mutex::unlock(v14);
    v20 = 0;
    v21 = 1;
  }

  v22 = Registry::getServiceMap(*v2);
  v23 = v22;
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

  std::mutex::lock(v22);
  v28 = this;
  *buf = v24;
  v29 = sub_100009510(&v23[1].__m_.__sig, buf);
  v53 = v21;
  if (v29)
  {
    v30 = v10;
    v32 = v29[3];
    v31 = v29[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = v31;
      sub_100004A34(v31);
      v34 = 0;
      v10 = v30;
      goto LABEL_26;
    }

    v10 = v30;
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v23);
  v33 = 0;
  v34 = 1;
LABEL_26:
  if (v32)
  {
    v51 = v34;
    v52 = v12;
    v49 = v33;
    v50 = v20;
    subscriber::makeSimSlotRange();
    v36 = *buf;
    v35 = v59;
    if (*buf != v59)
    {
      v37 = v60;
      do
      {
        if (v37(*v36))
        {
          break;
        }

        ++v36;
      }

      while (v36 != v35);
      v38 = v59;
      if (v36 != v59)
      {
        v39 = (this + 21);
        v48 = (this + 28);
        do
        {
          v40 = *v36;
          v56 = 0;
          v57 = 0;
          MaxDataRateManager::getModel_sync(this, v40, &v56);
          if (v56)
          {
            v54 = 0;
            v55 = 0;
            (*(*v32 + 8))(&v54, v32, v40);
            if (v54)
            {
              if (*(v54 + 48))
              {
                v41 = *v39;
                if (*v39)
                {
                  v42 = (this + 21);
                  do
                  {
                    if (*(v41 + 8) >= v40)
                    {
                      v42 = v41;
                    }

                    v41 = *&v41[8 * (*(v41 + 8) < v40)];
                  }

                  while (v41);
                  if (v42 != v39 && v40 >= *(v42 + 8))
                  {
                    v43 = (this + 28);
                    v44 = *v48;
                    if (*v48)
                    {
                      do
                      {
                        if (*(v44 + 7) >= v40)
                        {
                          v43 = v44;
                        }

                        v44 = *&v44[8 * (*(v44 + 7) < v40)];
                      }

                      while (v44);
                      if (v43 != v48 && v40 >= *(v43 + 7))
                      {
                        v45 = *(v43 + 33);
                        if (*(v56 + 496) == 2 || (v45 & 1) == 0 && *(v56 + 616) == 2)
                        {
                          operator new();
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v55)
            {
              sub_100004A34(v55);
            }
          }

          if (v57)
          {
            sub_100004A34(v57);
          }

          do
          {
            ++v36;
          }

          while (v36 != v35 && (v37(*v36) & 1) == 0);
        }

        while (v36 != v38);
      }
    }

    v12 = v52;
    v46 = v53;
    v33 = v49;
    v20 = v50;
    if (v51)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v47 = this[5];
    if (os_log_type_enabled(v28[5], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
    }

    v46 = v53;
    if (v34)
    {
      goto LABEL_64;
    }
  }

  sub_100004A34(v33);
LABEL_64:
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v20);
  }

LABEL_66:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1007E4F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, int a15, char a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  (*(*a11 + 8))(a11);
  if (a32)
  {
    sub_100004A34(a32);
  }

  if (a34)
  {
    sub_100004A34(a34);
  }

  if ((a16 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if ((a18 & 1) == 0)
  {
    sub_100004A34(a14);
  }

  if ((a17 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::submitSwitchStateToCA_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(a3 + 24))
  {
    v4 = (a1 + 56);
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      v12 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v14 = 0;
        if (!v12)
        {
LABEL_56:
          if ((v14 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          return;
        }

LABEL_12:
        v50 = v13;
        v15 = Registry::getServiceMap(*v4);
        v16 = v15;
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

        std::mutex::lock(v15);
        *buf = v17;
        v21 = sub_100009510(&v16[1].__m_.__sig, buf);
        if (v21 && (v22 = v21[4]) != 0)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v16);
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = v22;
          sub_100004A34(v22);
          v49 = 0;
        }

        else
        {
          std::mutex::unlock(v16);
          v48 = 0;
          v49 = 1;
        }

        v23 = Registry::getServiceMap(*v4);
        v24 = v23;
        if (v25 < 0)
        {
          v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v27 = 5381;
          do
          {
            v25 = v27;
            v28 = *v26++;
            v27 = (33 * v27) ^ v28;
          }

          while (v28);
        }

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        if (v29)
        {
          v31 = v29[3];
          v30 = v29[4];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v24);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = v30;
            sub_100004A34(v30);
            v33 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v32 = 0;
        v33 = 1;
LABEL_27:
        if (v31)
        {
          v45 = v33;
          v46 = v14;
          v44 = v32;
          subscriber::makeSimSlotRange();
          v34 = *buf;
          v35 = v56;
          if (*buf != v56)
          {
            v36 = v57;
            do
            {
              if (v36(*v34))
              {
                break;
              }

              ++v34;
            }

            while (v34 != v35);
            v37 = v56;
            if (v34 != v56)
            {
              v47 = (a1 + 168);
              do
              {
                v38 = *v34;
                v53 = 0;
                v54 = 0;
                MaxDataRateManager::getModel_sync(a1, v38, &v53);
                if (v53)
                {
                  v51 = 0;
                  v52 = 0;
                  (*(*v31 + 8))(&v51, v31, v38);
                  if (v51)
                  {
                    if (*(v51 + 48))
                    {
                      v39 = a1 + 168;
                      v40 = *v47;
                      if (*v47)
                      {
                        do
                        {
                          if (*(v40 + 32) >= v38)
                          {
                            v39 = v40;
                          }

                          v40 = *(v40 + 8 * (*(v40 + 32) < v38));
                        }

                        while (v40);
                        if (v39 != v47 && v38 >= *(v39 + 32))
                        {
                          operator new();
                        }
                      }
                    }
                  }

                  if (v52)
                  {
                    sub_100004A34(v52);
                  }
                }

                if (v54)
                {
                  sub_100004A34(v54);
                }

                do
                {
                  ++v34;
                }

                while (v34 != v35 && (v36(*v34) & 1) == 0);
              }

              while (v34 != v37);
            }
          }

          v13 = v50;
          v14 = v46;
          v41 = v48;
          v42 = v49;
          v32 = v44;
          if (v45)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v43 = *(a1 + 40);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
          }

          v41 = v48;
          v42 = v49;
          if (v33)
          {
            goto LABEL_54;
          }
        }

        sub_100004A34(v32);
LABEL_54:
        if ((v42 & 1) == 0)
        {
          sub_100004A34(v41);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }
}

void sub_1007E5584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, char a13, uint64_t a14, std::__shared_weak_count *a15, int a16, char a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  (*(*a10 + 8))(a10);
  if (a34)
  {
    sub_100004A34(a34);
  }

  v36 = *(v34 - 120);
  if (v36)
  {
    sub_100004A34(v36);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  if ((a17 & 1) == 0)
  {
    sub_100004A34(a15);
  }

  if ((a13 & 1) == 0)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit5GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E80738;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenterNrSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E573C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit4GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E807C8;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenter4GSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E57DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit3GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E80848;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenter3GSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E587C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::submitLegacyRatsSwitchStateToCA_sync(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v10 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v10);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      if (!v9)
      {
        sub_100004A34(v8);
        return;
      }

LABEL_10:
      operator new();
    }

    std::mutex::unlock(v2);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    std::mutex::unlock(v2);
  }
}

void sub_1007E5A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v22 + 8))(v22);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007E5B5C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 16) == 2), *(v3 + 496) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5BB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5BC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007E5C14(uint64_t a1)
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

uint64_t sub_1007E5D1C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 136) == 2), *(v3 + 616) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5D70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5D88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007E5E5C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 256) == 2), *(v3 + 736) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5EB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5EC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007E5F14(uint64_t a1)
{
  *a1 = off_101E80A78;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1007E5F58()
{
  LODWORD(v1[0]) = 2;
  v1[1] = &event::radio::reset;
  sub_1007E8A48(v2, v1);
  v0 = sub_100080734(&unk_101FB34A0);
  sub_1007E7EE4(v0);
}

uint64_t sub_1007E6318(uint64_t a1)
{
  sub_1007E6398((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1007E6358(uint64_t a1)
{
  sub_100082A40((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void (***sub_1007E6398(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1007E66AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007E6834(a1, a2);
  sub_1007E68A0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1007E6834(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_1007E68A0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1007E6908(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6974(&v2);
}

void sub_1007E69E4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E6A24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

void sub_1007E6AA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6B10(&v2);
}

void sub_1007E6B80(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete();
  }

  __cxa_rethrow();
}

uint64_t sub_1007E6BD0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1007E6C04(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6C70(&v2);
}

void sub_1007E6CE0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E6D20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_1007E6D9C(pthread_mutex_t *a1)
{
  if (pthread_mutex_init(a1, 0))
  {
    sub_10177FADC();
  }

  return a1;
}

void sub_1007E6DD0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6E3C(&v2);
}

void sub_1007E6EAC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E6ED4(v1);
  __cxa_rethrow();
}

pthread_mutex_t *sub_1007E6ED4(pthread_mutex_t *result)
{
  if (result)
  {
    sub_1007E6F88(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_1007E6F2C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_1007E6F88(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_1007E6F88(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }

  return a1;
}

void sub_1007E6FDC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E7048(&v2);
}

void sub_1007E70B8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E70F8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1007E721C(uint64_t a1)
{
  *a1 = off_101E80A78;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1007E7280@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1007E7408(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1007E74FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100243024(a1, a2);
  sub_100243090((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void sub_1007E7684(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E76F0(&v2);
}

void sub_1007E7760(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E77A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

void sub_1007E7820(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E788C(&v2);
}

void sub_1007E78FC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E793C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1007E79B8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1007E79FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E7A68(&v2);
}

void sub_1007E7AD8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E7B18(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t *sub_1007E7B94(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1000814B8(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_1007E7C00(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100080854(a1);
  if (sub_100080810(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100080854(a1);
    v8 = *(sub_100080810(v7) + 8);
    sub_100080898(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_1007E7DA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1007E6C04(&v2, a2);
}

uint64_t sub_1007E7E00(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1007E7EE4(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1007E7FDC(a1, v3);
}

void sub_1007E7FAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7FDC(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1007E80D8(a1, a2);
}

void sub_1007E80C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1007E8170(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100080778(a1, a2, 1, 2);
}

void sub_1007E8294(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E80BD8;
  operator new();
}

void sub_1007E83A4(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_1007E840C(uint64_t a1)
{
  sub_1007E8760(a1);

  operator delete();
}

uint64_t sub_1007E8444(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1007E87D8(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1007E84F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1007E8520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1007E8578(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E85E4(&v2);
}

void sub_1007E8654(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E867C(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E867C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1007E6398((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E86F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1007E6398((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E8760(uint64_t a1)
{
  *a1 = off_101E80BD8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1007E87D8(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1000814B8(result + 4); ; i += 6)
    {
      result = sub_1000814B8(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1007E88C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1007E88E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E894C(&v2);
}

void sub_1007E89BC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1007E8A00(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_OWORD *sub_1007E8A48(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1007E8AB8(a1 + 24, &v4);
  return a1;
}

void sub_1007E8A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_1007E6398((v12 + 24));
  a12 = v12;
  sub_1001018AC(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E8AB8(uint64_t a1, int *a2)
{
  v3 = *(a2 + 1);
  v6 = *a2;
  v7 = v3;
  v5 = off_101E80CE0;
  sub_1007E8B28(&v5, a1);
  sub_1007E6398(&v5);
  return a1;
}

void (***sub_1007E8B28(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1007E8C44(v4, result);
    sub_1007E8C44(v3, a2);
    sub_1007E8C44(a2, v4);
    return sub_1007E6398(v4);
  }

  return result;
}

uint64_t sub_1007E8BA4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23CSINotificationToSignalINS0_5bind0INS_11EventLoggerIFvvENS_14CSIEventLoggerEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23CSINotificationToSignalINS0_5bind0INS_11EventLoggerIFvvENS_14CSIEventLoggerEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 1) = *(result + 8);
  }

  return result;
}

uint64_t sub_1007E8C44(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1007E8CD8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void sub_1007E8CFC(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1007E8DF4(a1, v3);
}

void sub_1007E8DC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E8DF4(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1007E8EF0(a1, a2);
}

void sub_1007E8ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1007E8F88(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100081D4C(a1, a2, 1, 2);
}

void sub_1007E90AC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E80D10;
  operator new();
}

void sub_1007E91BC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_1007E9224(uint64_t a1)
{
  sub_1007E9578(a1);

  operator delete();
}

uint64_t sub_1007E925C(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1007E95F0(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1007E9308(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1007E9338@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1007E9390(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E93FC(&v2);
}

void sub_1007E946C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E9494(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E9494(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100082A40((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E9508(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100082A40((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E9578(uint64_t a1)
{
  *a1 = off_101E80D10;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1007E95F0(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100082118(result + 4); ; i += 6)
    {
      result = sub_100082118(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1007E96D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1007E96F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E9764(&v2);
}

void sub_1007E97D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1007E9818(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_OWORD *sub_1007E9860(_OWORD *a1, int *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1007E98C0(a1 + 24, *a2);
  return a1;
}

void sub_1007E98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100082A40((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E98C0(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = (off_101E80DD0 + 1);
  sub_1007E9928(&v4, a1);
  sub_100082A40(&v4);
  return a1;
}

void (***sub_1007E9928(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1007E9A3C(v4, result);
    sub_1007E9A3C(v3, a2);
    sub_1007E9A3C(a2, v4);
    return sub_100082A40(v4);
  }

  return result;
}

uint64_t sub_1007E99A4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23SignalToCSINotificationE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23SignalToCSINotificationE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1007E9A3C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1007E9AD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

_OWORD *sub_1007E9AF4(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1007E9B64(a1 + 24, &v4);
  return a1;
}

void sub_1007E9B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_1007E6398((v12 + 24));
  a12 = v12;
  sub_1001018AC(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E9B64(uint64_t a1, int *a2)
{
  v3 = *(a2 + 1);
  v6 = *a2;
  v7 = v3;
  v5 = off_101E80DF0;
  sub_1007E8B28(&v5, a1);
  sub_1007E6398(&v5);
  return a1;
}

uint64_t sub_1007E9BD4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23CSINotificationToSignalINS0_5bind0IN5boost8signals26signalIFvvENS4_19optional_last_valueIvEEiNSt3__14lessIiEENS3_8functionIS6_EENSC_IFvRKNS4_10connectionEEEENS4_5mutexEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23CSINotificationToSignalINS0_5bind0IN5boost8signals26signalIFvvENS4_19optional_last_valueIvEEiNSt3__14lessIiEENS3_8functionIS6_EENSC_IFvRKNS4_10connectionEEEENS4_5mutexEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 1) = *(result + 8);
  }

  return result;
}

void sub_1007E9C74()
{
  if ((byte_101FB3490 & 1) == 0)
  {
    byte_101FB3490 = 1;
    sub_1007E63E8(&qword_101FB3478);
  }

  if ((byte_101FB34B0 & 1) == 0)
  {
    byte_101FB34B0 = 1;
    sub_1007E63E8(&qword_101FB3498);
  }

  sub_1007E7174(&qword_101FCB968);
}

uint64_t sub_1007E9D68(uint64_t result)
{
  *result = off_101E80E20;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_1007E9D90(void **a1)
{
  *a1 = off_101E80E20;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
}

void sub_1007E9DEC(void **a1)
{
  *a1 = off_101E80E20;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
  operator delete();
}

uint64_t sub_1007E9E5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 36));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E9F2C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        sub_1007E22A8();
      }

      if (v22 == 2)
      {
        *(a1 + 40) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_44:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_50:
        *(a1 + 32) = v32;
      }

      else if (v22 == 1)
      {
        *(a1 + 40) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 36) = v26;
      }

      else if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007EA24C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 36), 1u);
    v4 = *(v3 + 40);
  }

  if (v4)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 32), 2u);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    result = PB::Writer::writeSubmessage(this, v7, 3u);
  }

  return result;
}

double sub_1007EA2C8(uint64_t a1)
{
  *a1 = off_101E80E70;
  *(a1 + 52) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007EA2FC(uint64_t a1)
{
  *a1 = off_101E80E70;
  v4 = *(a1 + 40);
  v2 = (a1 + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    sub_100140988(a1 + 32, v5);
  }

  sub_100140928((a1 + 24), 0);
  sub_100140928((a1 + 16), 0);
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    sub_100140988(a1 + 8, v6);
  }

  PB::Base::~Base(a1);
}

void sub_1007EA3A0(uint64_t a1)
{
  sub_1007EA2FC(a1);

  operator delete();
}

uint64_t sub_1007EA3D8(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *result = off_101E80E70;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 52))
  {
    v2 = *(a2 + 48);
    *(result + 52) |= 1u;
    *(result + 48) = v2;
  }

  return result;
}

uint64_t sub_1007EA634(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 52))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 48));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "payload", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "senderEID", v6);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007EA70C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_59;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            *(a1 + 52) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v32 = 0;
              v33 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v34 = v23 - v24;
              if (!v17)
              {
                v34 = 0;
              }

              v35 = (v25 + v24);
              v36 = v24 + 1;
              while (1)
              {
                if (!v34)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_54;
                }

                v37 = *v35;
                *(this + 1) = v36;
                v28 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                --v34;
                ++v35;
                ++v36;
                v14 = v33++ > 8;
                if (v14)
                {
LABEL_50:
                  LODWORD(v28) = 0;
                  goto LABEL_54;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_50;
                }
              }
            }

LABEL_54:
            *(a1 + 48) = v28;
            goto LABEL_55;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_55:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_59:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007EAB1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 3u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 5u);
  }

  if (*(v3 + 52))
  {
    v6 = *(v3 + 48);

    return PB::Writer::writeVarInt(this, v6, 6u);
  }

  return result;
}

void sub_1007EAC48(void *a1)
{
  *a1 = off_101E80EC0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1007EACA8(void *a1)
{
  sub_1007EAC48(a1);

  operator delete();
}

uint64_t sub_1007EACE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100293290(v4, a2);
    sub_1007EADB0(v2, v4);
    return sub_10028ED7C(v4);
  }

  else
  {

    return sub_100186828(a2, 4);
  }
}

void sub_1007EAD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

void sub_1007EADB0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CellularPlanCrossPlatformTransportUtility);
  v5 = *(a1 + 192);
  *(a1 + 192) = v4;

  v6 = +[D2DConnectionFactory sharedInstance];
  (***(a1 + 56))(v27);
  v28 = *v27;
  v27[0] = 0;
  v27[1] = 0;
  v7 = *(a1 + 24);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = [v6 createConnectionWithRegistry:&v28 queue:&object];
  v9 = *(a1 + 144);
  *(a1 + 144) = v8;

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v28 + 1))
  {
    sub_100004A34(*(&v28 + 1));
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  (***(a1 + 56))(v27);
  ServiceMap = Registry::getServiceMap(v27[0]);
  v11 = ServiceMap;
  v12 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v13 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v22 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v22);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
LABEL_17:
  v19 = *(a1 + 176);
  *(a1 + 168) = v18;
  *(a1 + 176) = v17;
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  v20 = *(a1 + 144);
  sub_100004AA0(&v22, (a1 + 8));
  sub_1007EBC40(&v22, v27);
  if (v27[0])
  {
    v21 = v27[0] + 136;
  }

  else
  {
    v21 = 0;
  }

  v24 = v21;
  v25 = v27[1];
  v27[0] = 0;
  v27[1] = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3321888768;
  v29[2] = sub_1007EBCC4;
  v29[3] = &unk_101E47410;
  v29[4] = a1;
  sub_100293290(v30, a2);
  [v20 setDelegate:&v24 forTarget:1 completion:v29];
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_10028ED7C(v30);
}

void sub_1007EB07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028ED7C(v19 + 40);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1007EB11C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_1007EB130(v1);
  }
}

void sub_1007EB130(uint64_t a1)
{
  sub_100A843E8(a1);
  [*(a1 + 144) stop:sub_1007D1B8C(a1)];
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
}

uint64_t sub_1007EB184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1007EB1C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_1007EB1D8(v1);
  }
}

void sub_1007EB1D8(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FB08();
  }
}

void sub_1007EB214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1007EB224(v3, a2, a3);
  }
}

void sub_1007EB224(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [*(a1 + 208) objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v9 = objc_alloc_init(ObjcSimTransferStatus);
    [(ObjcSimTransferStatus *)v9 setIccid:v6];
    -[ObjcSimTransferStatus setStatus:](v9, "setStatus:", [*(a1 + 192) convertPendingStateToTransferStatus:a3]);
    [*(a1 + 208) setObject:v9 forKeyedSubscript:v6];
    v10 = objc_alloc_init(ObjcSimTransferProfileNotification);
    [(ObjcSimTransferProfileNotification *)v10 setSessionID:*(a1 + 200)];
    v11 = [*(a1 + 208) allValues];
    [(ObjcSimTransferProfileNotification *)v10 setStatus:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(ObjcSimTransferProfileNotification *)v10 status];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          *(a1 + 128) = [v16 status];
          v17 = [v16 status];
          if ((v17 - 6) >= 6 && v17 != 1)
          {
            goto LABEL_20;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v13);
    }

LABEL_20:

    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(ObjcSimTransferProfileNotification *)v10 status];
      *buf = 138412290;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I send ProfileNotification %@", buf, 0xCu);
    }

    [(CellularPlanCrossPlatformTransferMessageCodec *)v8 encodeProfileNotification:v10];
    objc_claimAutoreleasedReturnValue();
    v22 = v8;
    v27 = 0;
    operator new();
  }

  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10177FB3C(v6, v19);
  }
}

void *sub_1007EB5CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (*(v3 + 239) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 216), *(v3 + 224));
    }

    else
    {
      v4 = *(v3 + 216);
      *(a2 + 16) = *(v3 + 232);
      *a2 = v4;
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 24) = v3;
  return result;
}

char *sub_1007EB62C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[239] < 0)
  {
    result = sub_100005F2C(a2, *(result + 27), *(result + 28));
  }

  else
  {
    *a2 = *(result + 216);
    *(a2 + 16) = *(result + 29);
  }

  *(a2 + 24) = 1;
  return result;
}

void sub_1007EB67C(uint64_t a1, char a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "t.xtp");
  sub_1007D0FF4(a1, a2, &object, &v12, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E80F18;
  *(a1 + 136) = off_101E80FB8;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  v9 = objc_opt_new();
  v10 = *(a1 + 208);
  *(a1 + 208) = v9;

  (***(a1 + 56))(v11);
  v11[3] = a1 + 40;
  sub_10039C900();
}

void sub_1007EB9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10039CE5C(&a17);
  sub_100009970(&a9, a10);
  if (*(v26 + 239) < 0)
  {
    operator delete(*(v26 + 216));
  }

  v28 = *(v26 + 176);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v26 + 160);
  if (v29)
  {
    sub_100004A34(v29);
  }

  TMKXPCServer.shutdown()();
  sub_1007D10DC(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EBAF4(uint64_t a1)
{
  *a1 = off_101E80F18;
  *(a1 + 136) = off_101E80FB8;
  sub_1007EB130(a1);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    sub_100004A34(v3);
  }

  TMKXPCServer.shutdown()();

  return sub_1007D10DC(a1);
}

void sub_1007EBBCC(uint64_t a1)
{
  sub_1007EBAF4(a1);

  operator delete();
}

void sub_1007EBC04(uint64_t a1)
{
  sub_1007EBAF4(a1 - 136);

  operator delete();
}

void *sub_1007EBC40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_1007EBCC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (*(a1 + 64))
  {
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start connection", v4, 2u);
    }

    [*(v1 + 144) start];
    sub_100186828(a1 + 40, 0);
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_10176E298();
  }
}

void sub_1007EBD70(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 152);
  sub_10000501C(__p, [v8 UTF8String]);
  (*(*v9 + 24))(v9, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v8;
  sub_10000501C(__p, [v8 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = *__p;
  *(a1 + 112) = v16;
  sub_100004AA0(__p, (a1 + 8));
  v12 = __p[0];
  v11 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v13 = *(a1 + 144);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_1007EC798;
  v17[3] = &unk_101E81000;
  v19 = a1;
  v20 = v12;
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v8;
  v18 = v14;
  sub_10009CF40(v22, a4);
  [v13 send:v7 completion:v17];
  sub_10002B644(v22);

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1007EBF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  sub_10002B644(v25 + 64);

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1007EBFD8(uint64_t a1)
{
  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1007EC0DC(uint64_t a1, int a2)
{
  if (*(a1 + 48) != 2)
  {
    sub_10177FBB4();
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I connection state changed to %d", buf, 8u);
  }

  v20 = 0;
  v21 = 0;
  (*(*a1 + 32))(&v20, a1);
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v16);
  Registry::getNotificationSenderFactory(buf, v16);
  v5 = *buf;
  (***(a1 + 56))(&v12);
  Registry::getTimerService(&v14, v12);
  (*(*v5 + 168))(&v18, v5, &v14, a1 + 24);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    v6 = objc_opt_new();
    v7 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v6 setObject:v7 forKey:@"kCrossTransferEndpoint"];

    v8 = [NSNumber numberWithBool:a2 == 1];
    [v6 setObject:v8 forKey:@"kCrossTransferConnected"];

    v9 = v18;
    v11 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    (*(*v9 + 40))(v9, &v11);
    sub_10001021C(&v11);
  }

  if (a2 == 1)
  {
    v10 = *(a1 + 152);
    sub_10000501C(buf, "kConnected");
    (*(*v10 + 24))(v10, buf);
    if (v24 < 0)
    {
      operator delete(*buf);
    }
  }

  else if (!a2)
  {
    sub_1007EBFD8(a1);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_1007EC400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EC4EC(uint64_t a1, uint64_t *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  (***(a1 + 56))(&v15);
  Registry::getNotificationSenderFactory(&v17, v15);
  v4 = v17;
  (***(a1 + 56))(&v11);
  Registry::getTimerService(&v13, v11);
  (*(*v4 + 168))(v19, v4, &v13, a1 + 24);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v19[0])
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKey:@"kCrossTransferTimeout"];

    v9 = v19[0];
    v10 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v9 + 40))(v9, &v10);
    sub_10001021C(&v10);
  }

  sub_1007EBFD8(a1);
}

void sub_1007EC6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);

  v5 = *(v3 - 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1007EC798(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 40);
        if (v3)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = a1[4];
            v10 = [v3 localizedDescription];
            sub_10177FBE0(v9, v10, &v13, v8);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[4];
          v13 = 138412290;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Send %@ Success", &v13, 0xCu);
        }

        v12 = a1[11];
        if (!v12)
        {
          sub_100022DB4();
        }

        (*(*v12 + 48))(v12);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1007EC8E8(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_1007EC90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a1 + 64, a2 + 64);
}

void sub_1007EC950(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EC968(uint64_t a1)
{
  sub_10002B644(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1007EC9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1007D114C(a1, 0, 1);
  v4[0] = off_101E81280;
  v4[1] = a1;
  v4[3] = v4;
  sub_1007EBD70(a1, v3, @"ObjcSimTransferEndSessionRequest", v4);
  sub_10002B644(v4);
}

void sub_1007ECA68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);

  _Unwind_Resume(a1);
}

BOOL sub_1007ECA90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Get Error Start SessionResponse", v10, 2u);
    }

    a1[15] = a2;
    sub_1007ECBA0(a1, a2);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:a1[25]];
    v8 = [v5 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v8);
  }

  return a2 != 0;
}

void sub_1007ECBA0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 - a2;
  }

  sub_1007ECF24(a1, v2);
}

uint64_t sub_1007ECBB8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v20 = a3;
  v5 = [v19 items];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177FC7C();
    }

    (*(*(a1 + 184) + 16))();
    sub_1007ECF24(a1, 9);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:*(a1 + 200)];
    v8 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v19 items];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = objc_alloc_init(ObjcSimTransferStatus);
          v15 = [v13 iccid];
          [(ObjcSimTransferStatus *)v14 setIccid:v15];

          [(ObjcSimTransferStatus *)v14 setStatus:11];
          [v8 addObject:v14];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    *(a1 + 128) = 11;
    [(ObjcSimTransferEndSessionRequest *)v7 setStatus:v8];
    v16 = [v20 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v16);

LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  if (!v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177FC48();
    }

    *(a1 + 128) = 11;
    sub_1007ECF24(a1, 8);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:*(a1 + 200)];
    v8 = [v20 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v8);
    goto LABEL_17;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

void sub_1007ECF24(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v14);
  Registry::getNotificationSenderFactory(&v16, v14);
  v4 = v16;
  (***(a1 + 56))(&v10);
  Registry::getTimerService(&v12, v10);
  (*(*v4 + 168))(&v18, v4, &v12, a1 + 24);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v18)
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    v7 = [NSNumber numberWithInteger:a2];
    [v5 setObject:v7 forKey:@"kCrossTransferSessionError"];

    v8 = v18;
    v9 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v8 + 40))(v8, &v9);
    sub_10001021C(&v9);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FCB0();
  }

  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_1007ED140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);

  v5 = *(v3 - 40);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007ED1D0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[7];
  v8 = [v5 mcc];
  sub_10000501C(buf, [v8 UTF8String]);
  v9 = [v5 mnc];
  v10 = v9;
  sub_10000501C(v46, [v9 UTF8String]);
  v11 = [v5 gid1];
  v12 = v11;
  sub_10000501C(v44, [v11 UTF8String]);
  v13 = [v5 gid2];
  v14 = v13;
  sub_10000501C(v42, [v13 UTF8String]);
  v15 = [v5 iccid];
  v16 = v15;
  sub_10000501C(__p, [v15 UTF8String]);
  v17 = (*(*v7 + 256))(v7, buf, v46, v44, v42, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*buf);
  }

  if ((v17 & 1) == 0)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v39 = [v5 mcc];
      v25 = v39;
      v37 = [v39 UTF8String];
      v38 = [v5 mnc];
      v26 = v38;
      v36 = [v38 UTF8String];
      v27 = [v5 gid1];
      v28 = v27;
      v29 = [v27 UTF8String];
      v30 = [v5 gid2];
      v31 = v30;
      v32 = [v30 UTF8String];
      v33 = [v5 iccid];
      v34 = v33;
      v35 = [v33 UTF8String];
      *buf = 136316162;
      *&buf[4] = v37;
      v50 = 2080;
      v51 = v36;
      v52 = 2080;
      v53 = v29;
      v54 = 2080;
      v55 = v32;
      v56 = 2080;
      v57 = v35;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(mcc:%s, mnc:%s, gid1:%s, gid2:%s, iccid:%s) does not support cross platform SIM transfer on target", buf, 0x34u);
    }

    a1[16] = 11;
    sub_1007ECF24(a1, 13);
    v19 = objc_alloc_init(ObjcSimTransferStatus);
    v20 = [v5 iccid];
    [(ObjcSimTransferStatus *)v19 setIccid:v20];

    [(ObjcSimTransferStatus *)v19 setStatus:11];
    v21 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v21 setSessionID:a1[25]];
    v48 = v19;
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    [(ObjcSimTransferEndSessionRequest *)v21 setStatus:v22];

    v23 = [v6 encodeEndSessionRequest:v21];
    sub_1007EC9B4(a1, v23);
  }

  return v17 ^ 1u;
}

void sub_1007ED730(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s is not eligible for cross platform transfer", buf, 0xCu);
  }

  v10 = objc_alloc_init(ObjcSimTransferStatus);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = [NSString stringWithUTF8String:v11];
  [(ObjcSimTransferStatus *)v10 setIccid:v12];

  [(ObjcSimTransferStatus *)v10 setStatus:a3];
  v13 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
  [(ObjcSimTransferEndSessionRequest *)v13 setSessionID:*(a1 + 200)];
  v16 = v10;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  [(ObjcSimTransferEndSessionRequest *)v13 setStatus:v14];

  v15 = [v7 encodeEndSessionRequest:v13];
  sub_1007EC9B4(a1, v15);
}

void sub_1007ED91C(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v7 = a2;
  v8 = a3;
  v23 = 0;
  v24 = 0;
  (***(a1 + 56))(&v19);
  Registry::getNotificationSenderFactory(&v21, v19);
  v9 = v21;
  (***(a1 + 56))(&v15);
  Registry::getTimerService(&v17, v15);
  (*(*v9 + 168))(&v23, v9, &v17, a1 + 24);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v23)
  {
    sub_10006F22C(&v14, a4);
    v10 = v7;
    v11 = v8;
    v25 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FCB0();
  }

  v12 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
  [(ObjcSimTransferEndSessionRequest *)v12 setSessionID:*(a1 + 200)];
  v13 = [v8 encodeEndSessionRequest:v12];
  sub_1007EC9B4(a1, v13);

  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_1007EDBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1007EDC5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I receive session response : %@", buf, 0xCu);
  }

  v8 = *(a1 + 200);
  v9 = [v5 sessionID];
  LOBYTE(v8) = v8 == [v9 longLongValue];

  if (v8)
  {
    if (!sub_1007ECA90(a1, [v5 msgError], v6) && (sub_1007ECBB8(a1, v5, v6) & 1) == 0)
    {
      v10 = [v5 items];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = *(a1 + 88);
      *(a1 + 88) = v11;

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      *buf = 0u;
      v13 = *(a1 + 192);
      if (v13 && ([v13 getTransferDeviceInfoFromSessionResponse:v5], v14 = *(a1 + 192), v19 = 0, v14))
      {
        [v14 serializeDeviceInfo:buf];
      }

      else
      {
        v19 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177FCE4();
      }

      (*(*(a1 + 184) + 16))();
      *(a1 + 120) = 2;
      sub_1007ECF24(a1, 11);
      v17 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v17 setSessionID:*(a1 + 200)];
      v18 = [v6 encodeEndSessionRequest:v17];
      sub_1007EC9B4(a1, v18);

      sub_10001021C(&v19);
      sub_100111C2C(buf);
    }
  }

  else
  {
    sub_1007ECF24(a1, 7);
    *(a1 + 120) = 1;
    v15 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v15 setSessionID:*(a1 + 200)];
    v16 = [v6 encodeEndSessionRequest:v15];
    sub_1007EC9B4(a1, v16);
  }
}

void sub_1007EE1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_10001021C(&a33);
  sub_100111C2C(&a42);

  _Unwind_Resume(a1);
}

void sub_1007EE308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 56))(&v13);
  ServiceMap = Registry::getServiceMap(v13);
  v6 = ServiceMap;
  v7 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v14);
  if (v11 && (v12 = v11[4]) != 0)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  else
  {
    std::mutex::unlock(v6);
  }

  sub_1007F15F4(v15, a3);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  __p[6] = 0;
  operator new();
}

void sub_1007EE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007F1574(v6 + 8);
  operator delete(v6);
  sub_1007EF090(va);
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  if (a4)
  {
    sub_100004A34(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EE5E8(uint64_t a1)
{
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

void sub_1007EE63C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Receive profile response : %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v6 = [v3 sessionID];
  if ([v3 sessionID] == *(a1 + 200))
  {
    if ([v3 msgError])
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10177FD74(buf, [v3 msgError], v7);
      }

      *(a1 + 120) = [v3 msgError];
      (*(*(a1 + 184) + 16))();
      sub_1007ECBA0(a1, [v3 msgError]);
      v8 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v8 setSessionID:v6];
      v9 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v8];
      sub_1007EC9B4(a1, v9);
    }

    else
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
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *buf = 0u;
      v13 = *(a1 + 192);
      if (v13 && ([v13 getTransferDeviceInfoFromProfileResponse:v3], v14 = *(a1 + 192), v17 = 0, v14))
      {
        [v14 serializeDeviceInfo:buf];
      }

      else
      {
        v17 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177FE24();
      }

      *(a1 + 120) = 2;
      (*(*(a1 + 184) + 16))();
      sub_1007ECF24(a1, 11);
      v15 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v15 setSessionID:v6];
      v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v15];
      sub_1007EC9B4(a1, v16);

      sub_10001021C(&v17);
      sub_100111C2C(buf);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177FD18((a1 + 200), buf, [v3 sessionID], v10);
    }

    *(a1 + 120) = 1;
    (*(*(a1 + 184) + 16))();
    sub_1007ECF24(a1, 7);
    v11 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v11 setSessionID:v6];
    v12 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v11];
    sub_1007EC9B4(a1, v12);
  }
}

void sub_1007EEC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EEE20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 184))
  {
    v4 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v5 = [(CellularPlanCrossPlatformTransferMessageCodec *)v4 decodeMessage:v3];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 138412290;
      *(__p + 4) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Timer received: %@", __p, 0xCu);
    }

    v9 = v7;
    sub_10000501C(__p, [v7 UTF8String]);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 96) = *__p;
    *(a1 + 112) = v13;
    v10 = *(a1 + 152);
    v11 = v7;
    sub_10000501C(__p, [v7 UTF8String]);
    (*(*v10 + 24))(v10, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_1007EDC5C(a1, v5, v4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_1007EE63C(a1, v5);
      }
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FE58();
  }
}

void sub_1007EF02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EF090(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return sub_1007F1574(a1);
}

void sub_1007EF0D4(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FE8C();
  }
}

void sub_1007EF16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EF190(uint64_t a1, uint64_t a2)
{
  sub_1007D1B2C(a1, a2);

  sub_1007D114C(a1, 0, 0);
}

void sub_1007EF1D0(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 136;
  sub_1007D1B2C(a1 - 136, a2);

  sub_1007D114C(v2, 0, 0);
}

id sub_1007EF214(uint64_t a1)
{
  v1 = *(a1 + 144);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007EF288;
  v3[3] = &unk_101E81030;
  v3[4] = a1;
  return [v1 getDCTCodeWithCompletion:v3];
}

void sub_1007EF288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3 && [(__CFString *)v3 length])
  {
    sub_100016890((v5 + 216), [(__CFString *)v4 UTF8String]);
  }

  else if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FEC0();
  }

  if (*(v5 + 48) != 2)
  {
    __assert_rtn("onCodeReady_block_invoke", "CellularPlanCrossPlatformTargetTransportController.mm", 688, "cellplan::PlanTransferEndpoint::kTarget == fEndpoint");
  }

  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (v5 + 216);
    if (*(v5 + 239) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I getQRCode in onCodeReady %s will send notification", buf, 0xCu);
  }

  *buf = 0uLL;
  (***(v5 + 56))(&v20);
  Registry::getNotificationSenderFactory(&v22, v20);
  v8 = v22;
  (***(v5 + 56))(&v16);
  Registry::getTimerService(&v18, v16);
  (*(*v8 + 168))(buf, v8, &v18, v5 + 24);
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (*(&v22 + 1))
  {
    sub_100004A34(*(&v22 + 1));
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (*buf)
  {
    v9 = objc_opt_new();
    v10 = [NSString stringWithUTF8String:sub_100649BE0(*(v5 + 48))];
    [v9 setObject:v10 forKey:@"kCrossTransferEndpoint"];

    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = &stru_101F6AFB8;
    }

    [v9 setObject:v11 forKey:@"kCrossTransferDCTCode"];
    v12 = *(v5 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (v5 + 216);
      if (*(v5 + 239) < 0)
      {
        v13 = *v13;
      }

      LODWORD(v22) = 136315138;
      *(&v22 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Send update with %s", &v22, 0xCu);
    }

    v14 = *buf;
    v15 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    (*(*v14 + 40))(v14, &v15);
    sub_10001021C(&v15);
  }

  else if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FDF0();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1007EF5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007EF6B4(uint64_t a1)
{
  v1 = a1 - 136;
  v2 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007EF288;
  v4[3] = &unk_101E81030;
  v4[4] = v1;
  return [v2 getDCTCodeWithCompletion:v4];
}

void sub_1007EF728(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = a2;
  v50 = a3;
  cf = a4;
  v52 = a5;
  v9 = objc_retainBlock(v52);
  v10 = *(a1 + 184);
  *(a1 + 184) = v9;

  if ((atomic_load_explicit(&qword_101FBABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBABF0))
  {
    qword_101FBABE8 = [NSString stringWithUTF8String:sub_100649C38(0), v50, v52];
    __cxa_guard_release(&qword_101FBABF0);
  }

  if ((atomic_load_explicit(&qword_101FBAC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC00))
  {
    qword_101FBABF8 = [NSString stringWithUTF8String:sub_100649C38(1)];
    __cxa_guard_release(&qword_101FBAC00);
  }

  v54 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v71 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if ([v56 isEqualToString:{qword_101FBABE8, v50}])
  {
    *__p = 0u;
    *v66 = 0u;
    v63 = 0u;
    *v64 = 0u;
    *v62 = 0u;
    sub_10092DF68(&v71, v62);
    v11 = objc_alloc_init(ObjcSimTransferStartSessionRequest);
    v12 = [*(a1 + 192) getSupportVersions];
    [(ObjcSimTransferStartSessionRequest *)v11 setVersions:v12];

    v13 = sub_1007F0064();
    *(a1 + 200) = v13;
    [(ObjcSimTransferStartSessionRequest *)v11 setSessionID:v13];
    v70 = 0;
    (***(a1 + 56))(buf);
    ServiceMap = Registry::getServiceMap(*buf);
    v15 = ServiceMap;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(ServiceMap);
    v72 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v72);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v15);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
LABEL_35:
        (*(*v22 + 152))(&v70, v22);
        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        [(ObjcSimTransferStartSessionRequest *)v11 setFriendlyDeviceName:v70];
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = SHIBYTE(__p[0]);
          v41 = v64[0];
          v42 = [(ObjcSimTransferStartSessionRequest *)v11 versions];
          v43 = v42;
          v44 = *(a1 + 200);
          v45 = v64;
          *buf = 136315650;
          if (v40 < 0)
          {
            v45 = v41;
          }

          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v42;
          v76 = 2048;
          v77 = v44;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I send listing request from: %s, with supported versions: %@, session:%lld", buf, 0x20u);
        }

        v28 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeStartSessionRequest:v11];
        sub_100005978(&v70);

        if (SHIBYTE(v66[1]) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v64[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(*&v62[8]);
        }

        v29 = @"ObjcSimTransferStartSessionRequest";
LABEL_61:
        if (v28)
        {
          v73[0] = off_101E814A0;
          v73[3] = v73;
          sub_1007EBD70(a1, v28, v29, v73);
          sub_10002B644(v73);
        }

        goto LABEL_67;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if ([v56 isEqualToString:qword_101FBABF8])
  {
    v61 = v71;
    if (v71)
    {
      CFRetain(v71);
    }

    sub_1009217EC(&v61, v62);
    sub_10001021C(&v61);
    v24 = objc_alloc_init(ObjcSimTransferProfileRequest);
    v25 = *(&v63 + 1);
    if (v64[0] == *(&v63 + 1))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177FEF4();
      }
    }

    else
    {
      v26 = *(a1 + 88);
      if (!v26)
      {
LABEL_19:
        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        v27 = [NSString stringWithUTF8String:v25];
        [(ObjcSimTransferProfileRequest *)v24 setIccid:v27];

        [(ObjcSimTransferProfileRequest *)v24 setSessionID:*(a1 + 200)];
        v28 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeProfileRequest:v24];
        v29 = @"ObjcSimTransferProfileRequest";
        v30 = 1;
LABEL_53:

        if (v69 < 0)
        {
          operator delete(v68);
        }

        if (v67 < 0)
        {
          operator delete(v66[1]);
        }

        *buf = __p;
        sub_1000087B4(buf);
        *buf = &v63 + 8;
        sub_1000087B4(buf);
        if (SBYTE7(v63) < 0)
        {
          operator delete(*v62);
          if ((v30 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v30 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

      if ((sub_1007ED1D0(a1, v26, v54) & 1) == 0)
      {
        v25 = *(&v63 + 1);
        goto LABEL_19;
      }
    }

    v30 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_53;
  }

  if ([v56 isEqualToString:@"TransferResults"])
  {
    v31 = v71;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v31 objectForKeyedSubscript:@"Results"];
    v32 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v32)
    {
      v33 = *v58;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v57 + 1) + 8 * i);
          v36 = [v31 objectForKeyedSubscript:@"Results"];
          v37 = [v36 objectForKeyedSubscript:v35];
          v38 = [v37 intValue];

          if (v38 == 10002 && *(a1 + 128) == 4)
          {
            v46 = *(a1 + 40);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Delayed Downlaod ECS, timeout", v62, 2u);
            }

            v47 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
            [(ObjcSimTransferEndSessionRequest *)v47 setSessionID:*(a1 + 200)];
            v48 = [*(a1 + 208) allValues];
            [(ObjcSimTransferEndSessionRequest *)v47 setStatus:v48];

            v49 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeEndSessionRequest:v47];
            sub_1007EC9B4(a1, v49);

            goto LABEL_66;
          }
        }

        v32 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_66:
  v28 = 0;
LABEL_67:
  sub_10001021C(&v71);
}

void sub_1007EFEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  __cxa_guard_abort(&qword_101FBAC00);

  _Unwind_Resume(a1);
}

unint64_t sub_1007F0064()
{
  v7.__padding_ = 0;
  sub_100344DA8(&v7);
  bzero(v6, 0x9B8uLL);
  v0 = std::random_device::operator()(&v7);
  v5 = v0;
  for (i = 1; i != 312; ++i)
  {
    v0 = i + 0x5851F42D4C957F2DLL * (v0 ^ (v0 >> 62));
    v6[i - 1] = v0;
  }

  v6[311] = 0;
  v4 = xmmword_10183D830;
  v2 = sub_1007F1EA8(&v4, &v5, &v4);
  std::random_device::~random_device(&v7);
  return v2;
}

uint64_t sub_1007F0128(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 48);
  sub_1000087B4(&v3);
  v3 = (a1 + 24);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007F0240(void *a1, char *a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E810B0;
  sub_1007F0338((a1 + 3), a2, a3, a4);
}

void sub_1007F02BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E810B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007F0338(uint64_t a1, char *a2, NSObject **a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1007EB67C(a1, v6, &v11, v10);
}

void sub_1007F03CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F0460(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E81100;
  a2[1] = v2;
  return result;
}

void sub_1007F048C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last received event: %s timeout in %d", &v9, 0x12u);
  }

  sub_1007EC4EC(v5, a2);
}

uint64_t sub_1007F0564(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F05DC(uint64_t a1)
{

  operator delete();
}

id sub_1007F06A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = off_101E81180;
  *(a2 + 8) = v4;
  result = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void sub_1007F0704(id *a1)
{

  operator delete(a1);
}

void sub_1007F0740(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Send EndSessionRequest", v7, 2u);
    }

    v4 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v4 setSessionID:*(v2 + 200)];
    v5 = [*(v2 + 208) allValues];
    [(ObjcSimTransferEndSessionRequest *)v4 setStatus:v5];

    v6 = [*(a1 + 16) encodeEndSessionRequest:v4];
    sub_1007EC9B4(v2, v6);
  }
}

uint64_t sub_1007F0844(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F0890(uint64_t a1)
{
  (***(**a1 + 56))(&v11);
  ServiceMap = Registry::getServiceMap(v11);
  v2 = ServiceMap;
  v3 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v4 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v13[0] = off_101E81200;
  v13[3] = v13;
  (*(*v9 + 1016))(v9, 2, v13);
  sub_10039D5CC(v13);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  operator delete();
}

void sub_1007F0A5C(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  sub_10039D5CC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  if (a3)
  {
    sub_100004A34(a3);
  }

  operator delete();
}

uint64_t sub_1007F0B58(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E81260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F0C14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E81280;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007F0C48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F0CC8(uint64_t a1)
{

  operator delete();
}

id sub_1007F0D90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = off_101E81300;
  a2[1] = v4;
  a2[2] = v5;
  result = *(a1 + 24);
  a2[3] = result;
  return result;
}

void sub_1007F0DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1007F0E24(id *a1)
{

  operator delete(a1);
}

void sub_1007F0E68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 136315394;
    *&v16[4] = asString(v4);
    v17 = 2080;
    v18 = asString(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I handle callback %s, %s", v16, 0x16u);
  }

  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = objc_alloc_init(ObjcSimTransferStatus);
    v10 = [*(a1 + 16) items];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 iccid];
    [(ObjcSimTransferStatus *)v9 setIccid:v12];

    [(ObjcSimTransferStatus *)v9 setStatus:2];
    v13 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v13 setSessionID:*(v6 + 200)];
    *v16 = v9;
    v14 = [NSArray arrayWithObjects:v16 count:1];
    [(ObjcSimTransferEndSessionRequest *)v13 setStatus:v14];

    v15 = [*(a1 + 24) encodeEndSessionRequest:v13];
    sub_1007EC9B4(v6, v15);
  }
}

uint64_t sub_1007F1084(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F10D0(uint64_t a1)
{
  *a1 = off_101E81380;

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1007F1140(uint64_t a1)
{
  *a1 = off_101E81380;

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1007F1298(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

id sub_1007F12C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E81380;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v6;
  }

  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  return result;
}

void sub_1007F1370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F138C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_1007F13F4(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

const void **sub_1007F1458(uint64_t a1, char *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v11 = *a3;
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v4)
  {
    v9 = a1 + 64;
    v7 = *(a1 + 64);
    v8 = *(v9 + 8);
    v12 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    sub_1007ED91C(v6, v8, v7, &v12);
    sub_100010250(&v12);
  }

  else
  {
    *(v6 + 128) = 11;
    sub_1007ECF24(v6, 10);
    sub_1007ED730(v6, (a1 + 16), 11, *(a1 + 64));
  }

  return sub_100010250(&v11);
}

void sub_1007F1504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100010250(&a10);
  sub_100010250(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F1528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F1574(uint64_t a1)
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

uint64_t sub_1007F15F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007F168C(uint64_t a1)
{
  *a1 = off_101E81410;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_1007F1574(a1 + 8);
  return a1;
}

void sub_1007F16E4(uint64_t a1)
{
  *a1 = off_101E81410;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_1007F1574(a1 + 8);

  operator delete();
}

void sub_1007F17F8(_Unwind_Exception *a1)
{
  sub_1007F1574(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1007F181C(uint64_t a1, void *a2)
{
  *a2 = off_101E81410;
  v3 = a2 + 5;
  result = sub_1007F15F4((a2 + 1), a1 + 8);
  if (*(a1 + 63) < 0)
  {
    return sub_100005F2C(v3, *(a1 + 40), *(a1 + 48));
  }

  v5 = *(a1 + 40);
  v3[2] = *(a1 + 56);
  *v3 = v5;
  return result;
}

void sub_1007F18B8(void *a1)
{
  sub_1007EF090(a1 + 8);

  operator delete(a1);
}

const void **sub_1007F18F4(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  v3 = cf;
  *a2 = 0;
  v4 = v3;
  v5 = v4;
  v29 = v4;
  if (!v4)
  {
    v42[0] = 0;
    sub_1007F1D7C(a1 + 8, 0);
    v23 = v42;
    goto LABEL_40;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = *v38;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v38 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v37 + 1) + 8 * i);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = [v6 remotePlans];
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v8)
      {
        goto LABEL_33;
      }

      v9 = *v34;
      while (2)
      {
        for (j = 0; j != v8; j = j + 1)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v33 + 1) + 8 * j);
          v12 = [v11 iccid];
          v13 = v12;
          sub_10000501C(__p, [v12 UTF8String]);
          v14 = v32;
          if ((v32 & 0x80u) == 0)
          {
            v15 = v32;
          }

          else
          {
            v15 = __p[1];
          }

          v16 = *(a1 + 63);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(a1 + 48);
          }

          if (v15 == v16)
          {
            if ((v32 & 0x80u) == 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            if (v17 >= 0)
            {
              v19 = (a1 + 40);
            }

            else
            {
              v19 = *(a1 + 40);
            }

            v20 = memcmp(v18, v19, v15) == 0;
            if (v14 < 0)
            {
LABEL_27:
              operator delete(__p[0]);
            }
          }

          else
          {
            v20 = 0;
            if (v32 < 0)
            {
              goto LABEL_27;
            }
          }

          v5 = v29;
          if (v20)
          {
            v21 = [v11 transferAttributes];
            v22 = [v21 transferCapability];

            if (v22 <= 0xB && ((1 << v22) & 0x914) != 0)
            {
              __p[0] = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              sub_1007F1D7C(a1 + 8, 1);
              sub_100010250(__p);

              goto LABEL_41;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_33:
    }

    v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v25);
LABEL_35:

  __p[0] = 0;
  sub_1007F1D7C(a1 + 8, 0);
  v23 = __p;
LABEL_40:
  sub_100010250(v23);
LABEL_41:

  return sub_100010250(&cf);
}

void sub_1007F1C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, ...)
{
  va_start(va, a7);

  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F1CB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F1CFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007F1D7C(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1007F1E5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1007F1EA8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_1007F1F64(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 63;
      if (((v6 << v8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = 64;
      }

      v10 = v9 - v8;
      v11 = v10 >> 6;
      if ((v10 & 0x3F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFFFFFFFFFFLL >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_1007F1F64(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

unint64_t sub_1007F1F64(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x138uLL;
  v3 = 0xB5026F5AA96619E9;
  if ((*(a1 + 8 * v2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ *(a1 + 8 * ((v1 + 156) % 0x138uLL)) ^ ((*(a1 + 8 * v2) & 0x7FFFFFFELL | *(a1 + 8 * v1) & 0xFFFFFFFF80000000) >> 1);
  *(a1 + 8 * v1) = v4;
  *(a1 + 2496) = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

void sub_1007F201C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1007F2968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1006EE2D8(&STACK[0x260]);
  if (a58)
  {
    operator delete(a58);
  }

  sub_1007F2DE4(&a72);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F2B30@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_10000C320(&v11);
  sub_10000C030(&v12);
  v4 = std::ostream::operator<<();
  sub_10000C030(v4);
  v5 = std::ostream::operator<<();
  v6 = sub_10000C030(v5);
  if (*(a1 + 40) == 1)
  {
    sub_100A97768((a1 + 16), __p);
  }

  else
  {
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
  }

  sub_10000C030(v6);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_100061574(&v11, __p);
  sub_100C180E0(a2);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *&v12 = v7;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007F2DE4(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(this);
}

uint64_t sub_1007F2E24(uint64_t *a1, double *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  v7 = v4 - v3;
  if (v4 - v3 < 3)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v3[v10];
    if (v12 != aNan_0[v10] && v12 != aNan[v10])
    {
      break;
    }

    v11 = v10++ > 1;
  }

  while (v10 != 3);
  if (!v11)
  {
    if (v7 == 3)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v21 = v3[v20];
        if (v21 != aInfinity_0[v20] && v21 != aInfinity[v20])
        {
          break;
        }

        v18 = v20++ > 1;
      }

      while (v20 != 3);
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v3[v17];
        if (v19 != aInfinity_0[v17] && v19 != aInfinity[v17])
        {
          break;
        }

        v18 = v17++ > 6;
      }

      while (v17 != 8);
    }

    if (v18)
    {
      v14 = v5 == 45;
      v15 = INFINITY;
      v16 = -INFINITY;
      goto LABEL_34;
    }

LABEL_8:
    result = sub_1007F300C(a1);
    if (result)
    {
      v9 = *(a1[1] - 1) - 43;
      if (v9 <= 0x3A)
      {
        return result & ((0x400000004000005uLL >> v9) ^ 1);
      }
    }

    return result;
  }

  v13 = v3 + 3;
  if (v13 != v4 && (v4 - v13 < 2 || *v13 != 40 || *(v4 - 1) != 41))
  {
    goto LABEL_8;
  }

  v14 = v5 == 45;
  v15 = NAN;
  v16 = NAN;
LABEL_34:
  if (v14)
  {
    v15 = v16;
  }

  *a2 = v15;
  return 1;
}

BOOL sub_1007F300C(uint64_t *a1)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  std::locale::locale(&v13);
  v15 = 0uLL;
  v16 = 0;
  v2 = *a1;
  v3 = a1[1];
  __sb = off_101E81520;
  *(&v13 + 1) = v2;
  *&v14 = v2;
  *(&v14 + 1) = v3;
  v11 = 0u;
  memset(&v10.__fmtflags_, 0, 128);
  v9[1] = 0;
  std::ios_base::init(&v10, &__sb);
  *&v11 = 0;
  DWORD2(v11) = -1;
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= ~0x1000u;
  *(&v9[2] + *(v5 - 24)) = 17;
  v6 = std::istream::operator>>();
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(&v13);
  return v7;
}

void sub_1007F3218(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

void *sub_1007F3268(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

std::locale *sub_1007F3278(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1007F32BC(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

double sub_1007F3320@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1007F33D0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

void sub_1007F3418(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "cu.policy.ne");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(v2, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *a1 = off_101E815D0;
  v5 = 0;
  sub_100805FE8();
}

void sub_1007F3524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007F3D5C(va);
  ctu::OsLogLogger::~OsLogLogger(v5);
  NetworkPolicyDriverInterface::~NetworkPolicyDriverInterface(v4);
  _Unwind_Resume(a1);
}

void sub_1007F3574(uint64_t a1)
{
  *a1 = off_101E815D0;
  sub_1007F35F4(a1);
  sub_100246FAC(a1 + 56, *(a1 + 64));
  sub_1007F3DDC((a1 + 16), 0);
  sub_1007F3D5C(a1 + 24);
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  NetworkPolicyDriverInterface::~NetworkPolicyDriverInterface(a1);
}

void sub_1007F35F4(uint64_t a1)
{
  v1 = a1;
  (*(**(a1 + 16) + 24))(*(a1 + 16));
  (*(**(v1 + 16) + 40))(*(v1 + 16));
  v2 = *(v1 + 64);
  v1 += 64;
  sub_100246FAC(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
}

void sub_1007F367C(uint64_t a1)
{
  sub_1007F3574(a1);

  operator delete();
}

void sub_1007F36B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*a2, (a2 + 8), ", ", 2, &__p);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136446210;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Denying network access to %{public}s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *a2;
  v6 = (a2 + 8);
  v7 = v8;
  if (v8 == v6)
  {
    goto LABEL_24;
  }

  v9 = 0;
  do
  {
    p_size = &v7[1].__r_.__value_.__l.__size_;
    (*(**(a1 + 16) + 16))(&__p);
    v11 = __p.__r_.__value_.__r.__words[2];
    sub_10006DCAC(&__p, __p.__r_.__value_.__l.__size_);
    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v12 = *(a1 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v7[2].__r_.__value_.__s.__data_[7] < 0)
        {
          p_size = *p_size;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = p_size;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Condition not added for %{public}s", &__p, 0xCu);
      }
    }

    size = v7->__r_.__value_.__l.__size_;
    if (size)
    {
      do
      {
        v14 = size;
        size = size->__r_.__value_.__r.__words[0];
      }

      while (size);
    }

    else
    {
      do
      {
        v14 = v7->__r_.__value_.__r.__words[2];
        v15 = v14->__r_.__value_.__r.__words[0] == v7;
        v7 = v14;
      }

      while (!v15);
    }

    v7 = v14;
  }

  while (v14 != v6);
  if ((v9 & 1) == 0)
  {
LABEL_24:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10178013C(v16);
    }
  }

  else
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }
}

BOOL sub_1007F38FC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v7 = *(a2 + 16);
    }

    v5 = sub_1007F39B8(a1, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  else
  {

    return sub_1007F3C0C(a1, a2);
  }
}

void sub_1007F399C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F39B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A6C(a1 + 56, a2);
  if (a1 + 64 == v4)
  {
    return 0;
  }

  v5 = v4;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  sub_1004C0AD4(&v16, v4 + 56);
  v6 = v16;
  if (v16 == v17)
  {
    goto LABEL_19;
  }

  v7 = 0;
  do
  {
    v15 = *(v6 + 7);
    if ((*(**(a1 + 16) + 32))(*(a1 + 16)))
    {
      sub_1007F3E0C((v5 + 7), &v15);
      v7 = 1;
    }

    else
    {
      v8 = *(a1 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = a2;
        if (*(a2 + 23) < 0)
        {
          v12 = *a2;
        }

        *buf = 67109378;
        v19 = v15;
        v20 = 2080;
        v21 = v12;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to remove policy id %u for %s", buf, 0x12u);
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

  while (v10 != v17);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    v13 = 0;
  }

  else
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
    v13 = 1;
  }

  if (!v5[9])
  {
    sub_1000194D8((a1 + 56), v5);
    sub_100247008((v5 + 4));
    operator delete(v5);
  }

  sub_10006DCAC(&v16, v17[0]);
  return v13;
}

BOOL sub_1007F3C0C(uint64_t a1, void **a2)
{
  if (a1 + 64 != sub_100007A6C(a1 + 56, a2))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(**(a1 + 16) + 16))(&v8);
  v4 = v10 != 0;
  if (v10)
  {
    v11 = a2;
    v5 = (sub_1007F3E90(a1 + 56, a2) + 56);
    if (v5 != &v8)
    {
      sub_1004C08D0(v5, v8, &v9);
    }

    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }

  else
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101780180(a2, v6);
    }
  }

  sub_10006DCAC(&v8, v9);
  return v4;
}

uint64_t sub_1007F3D5C(uint64_t a1)
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

uint64_t *sub_1007F3DDC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100805EB8((result + 1), v3);
  }

  return result;
}

uint64_t sub_1007F3E0C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_1007F3E90(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007F3F44();
  }

  return v2;
}

double sub_1007F3FE8(uint64_t a1)
{
  *a1 = &off_101E81658;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007F4014(void **this)
{
  *this = &off_101E81658;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    sub_100140988((this + 1), v2);
  }

  PB::Base::~Base(this);
}

void sub_1007F408C(void **a1)
{
  sub_1007F4014(a1);

  operator delete();
}

uint64_t sub_1007F40C4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E81658;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  std::string::operator=((a1 + 16), (a2 + 16));
  if (*(a2 + 8))
  {
    operator new();
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_1007F41A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  PB::TextFormatter::format(this, "isAltEmAddressUpdateUrl", *(a1 + 40));
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  PB::TextFormatter::format();

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F4224(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_37;
          }

          v13 = v20;
          v21 = *v19;
          *(this + 1) = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          *(this + 1) = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        if (v13 >= v2)
        {
          v24 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = *(v7 + v13);
          *(this + 1) = v13 + 1;
          v24 = v23 != 0;
        }

        *(a1 + 40) = v24;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          PB::Reader::read();
        }

        else if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v26 = 0;
          return v26 & 1;
        }
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_37:
  v26 = v4 ^ 1;
  return v26 & 1;
}