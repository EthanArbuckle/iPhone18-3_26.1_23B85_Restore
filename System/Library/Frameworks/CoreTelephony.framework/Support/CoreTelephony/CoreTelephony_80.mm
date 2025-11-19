void sub_10051E1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051E26C(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ActivatingStateSubscriptionCheckTimer fired!", buf, 2u);
        }

        v7 = *(v3 + 1000);
        *(v3 + 1000) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = *(v3 + 1040);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 0x40000000;
        v10[2] = sub_10051E3DC;
        v10[3] = &unk_101E540D8;
        v10[4] = v3;
        v9 = _Block_copy(v10);
        v11 = v9;
        cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(v3, v8, 0, 1, &v11);
        if (v9)
        {
          _Block_release(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10051E3B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::recheckSubscriptionIfNeeded_sync(cellplan::CellularPlanControllerPhone *this, int a2)
{
  if ((*(this + 999) & 0x8000000000000000) != 0)
  {
    if (!*(this + 123))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 999))
  {
LABEL_5:
    if (!cellplan::CellularPlanControllerPhone::isRioLiveID_sync(this))
    {
      return;
    }
  }

  if (a2)
  {
    *(this + 129) = 0;
    *(this + 127) = *(this + 126);
    v4 = *(this + 125);
    *(this + 125) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    theArray = 0;
    (*(**(this + 16) + 680))(&v42);
    (*(*v42 + 80))(&theArray);
    if (v43)
    {
      sub_100004A34(v43);
    }

    v5 = (this + 1008);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v9 = ValueAtIndex;
          LODWORD(v42) = 0;
          if (ValueAtIndex)
          {
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v42, v9, v11);
            }
          }

          v12 = *(this + 127);
          v13 = *(this + 128);
          if (v12 >= v13)
          {
            v15 = *v5;
            v16 = v12 - *v5;
            v17 = v16 >> 2;
            v18 = (v16 >> 2) + 1;
            if (v18 >> 62)
            {
              sub_1000CE3D4();
            }

            v19 = v13 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              sub_100016740(this + 1008, v20);
            }

            *(4 * v17) = v42;
            v14 = 4 * v17 + 4;
            memcpy(0, v15, v16);
            v21 = *(this + 126);
            *(this + 126) = 0;
            *(this + 127) = v14;
            *(this + 128) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v12 = v42;
            v14 = (v12 + 4);
          }

          *(this + 127) = v14;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101773D60();
      }

      v22 = *(this + 127);
      v23 = *(this + 128);
      if (v22 >= v23)
      {
        v25 = *v5;
        v26 = v22 - *v5;
        v27 = v26 >> 2;
        v28 = (v26 >> 2) + 1;
        if (v28 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v25) >> 1 > v28)
        {
          v28 = (v23 - v25) >> 1;
        }

        if (v23 - v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v28 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          sub_100016740(this + 1008, v28);
        }

        v23 = 0;
        *(4 * v27) = 300;
        v24 = (4 * v27 + 4);
        memcpy(0, v25, v26);
        v29 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v24;
        *(this + 128) = 0;
        if (v29)
        {
          operator delete(v29);
          v23 = *(this + 128);
        }
      }

      else
      {
        *v22 = 300;
        v24 = v22 + 4;
      }

      *(this + 127) = v24;
      if (v24 >= v23)
      {
        v31 = *v5;
        v32 = v24 - *v5;
        v33 = v32 >> 2;
        v34 = (v32 >> 2) + 1;
        if (v34 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v31) >> 1 > v34)
        {
          v34 = (v23 - v31) >> 1;
        }

        if (v23 - v31 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v34 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          sub_100016740(this + 1008, v34);
        }

        v23 = 0;
        *(4 * v33) = 600;
        v30 = (4 * v33 + 4);
        memcpy(0, v31, v32);
        v35 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v30;
        *(this + 128) = 0;
        if (v35)
        {
          operator delete(v35);
          v23 = *(this + 128);
        }
      }

      else
      {
        *v24 = 600;
        v30 = v24 + 4;
      }

      *(this + 127) = v30;
      if (v30 >= v23)
      {
        v37 = *v5;
        v38 = v30 - *v5;
        v39 = v38 >> 2;
        v40 = (v38 >> 2) + 1;
        if (v40 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v37) >> 1 > v40)
        {
          v40 = (v23 - v37) >> 1;
        }

        if (v23 - v37 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          sub_100016740(this + 1008, v40);
        }

        *(4 * v39) = 1800;
        v36 = 4 * v39 + 4;
        memcpy(0, v37, v38);
        v41 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v36;
        *(this + 128) = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v30 = 1800;
        v36 = (v30 + 4);
      }

      *(this + 127) = v36;
    }

    sub_100010250(&theArray);
  }

  if (*(this + 129) < ((*(this + 127) - *(this + 126)) >> 2) && ((*(**(this + 20) + 128))(*(this + 20), *(this + 260), this + 976) & 1) == 0)
  {
    cellplan::CellularPlanControllerPhone::recheckSubscriptionWithTimer_sync(this);
  }
}

void sub_10051E8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10051E934(uint64_t result, uint64_t a2)
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

void sub_10051E950(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t cellplan::CellularPlanControllerPhone::isRioLiveID_sync(cellplan::CellularPlanControllerPhone *this)
{
  rest::PairedDeviceInfoList::getActiveDevice(&v6, (this + 896));
  v2 = v6;
  sub_100DB14E0(&v6);
  if (v2 != 1)
  {
    return 0;
  }

  (*(**(this + 16) + 680))(&v6);
  v5 = 0;
  v3 = (*(*v6 + 152))(v6, &v5, *(this + 260), 1);
  sub_10001021C(&v5);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return v3;
}

void sub_10051EA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11)
{
  sub_10001021C(&a9);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::submitRemotePlanProfilesStatus(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void cellplan::CellularPlanControllerPhone::updatePlan_sync(uint64_t a1, uint64_t *a2, std::string *__str, uint64_t *a4, uint64_t a5)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  *v26 = 0u;
  memset(v25, 0, sizeof(v25));
  if ((__str[1].__r_.__value_.__l.__data_ & 0xFFFFFFFE) == 2)
  {
    goto LABEL_5;
  }

  (*(**(a1 + 128) + 680))(&v23);
  v10 = (*v23)[21](v23);
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v10)
  {
LABEL_5:
    std::string::operator=(v25, __str);
    *&v25[24] = __str[1].__r_.__value_.__l.__data_;
    std::string::operator=(v26, (__str + 32));
    std::string::operator=(&v27[1], (__str + 56));
    LODWORD(v28) = __str[3].__r_.__value_.__r.__words[1];
  }

  else
  {
    *&v25[24] = 1;
  }

  v11 = *(a1 + 144);
  v12 = *a2;
  v13 = a2[1];
  if ((v25[23] & 0x80000000) != 0)
  {
    sub_100005F2C(__dst, *v25, *&v25[8]);
  }

  else
  {
    *__dst = *v25;
    v16 = *&v25[16];
  }

  v17 = *&v25[24];
  if (SHIBYTE(v27[0]) < 0)
  {
    sub_100005F2C(&v18, v26[0], v26[1]);
  }

  else
  {
    v18 = *v26;
    v19 = v27[0];
  }

  if (SHIBYTE(v27[3]) < 0)
  {
    sub_100005F2C(&__p, v27[1], v27[2]);
  }

  else
  {
    __p = *&v27[1];
    v21 = v27[3];
  }

  v22 = v28;
  v29[0] = 0;
  memset(v30, 0, sizeof(v30));
  sub_10052F088(v30, *a4, a4[1], 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v29[0] = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_10051EF3C;
  v14[3] = &unk_101E54130;
  v14[4] = a5;
  v14[5] = a1;
  (*(*v11 + 80))(v11, v12, v13, __dst, v29, v14);
  if (v29[0] == 1)
  {
    v23 = v30;
    sub_1005235F4(&v23);
    v29[0] = 0;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(**(a1 + 96) + 16))(*(a1 + 96));
  if (SHIBYTE(v27[3]) < 0)
  {
    operator delete(v27[1]);
  }

  if (SHIBYTE(v27[0]) < 0)
  {
    operator delete(v26[0]);
  }

  if ((v25[23] & 0x80000000) != 0)
  {
    operator delete(*v25);
  }
}

void sub_10051EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1001FA910(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_10051EF3C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(v4 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 2)
  {
    if (v7)
    {
      v13 = 136315138;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I updatePlan error: %s", &v13, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      if (v5 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      if (a2[1])
      {
        v8 = "succeeded";
      }

      else
      {
        v8 = "failed";
      }

      v13 = 136315138;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I updatePlan result: %s", &v13, 0xCu);
      v5 = *a2;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v10);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v11);
    }
  }

  (*(*(a1 + 32) + 16))();
  return (*(**(v4 + 96) + 16))(*(v4 + 96));
}

uint64_t cellplan::CellularPlanControllerPhone::isProvisioningRemotePlan_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = *(this + 32);
  if (v1 && (v2 = (*(*v1 + 96))(v1), v2 <= 2))
  {
    v3 = v2 << 32;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

uint64_t cellplan::CellularPlanControllerPhone::checkImeiMeidMatch_sync(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  *__p = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v3 = 408;
  if (*(a1 + 1224))
  {
    v3 = 1232;
  }

  sub_10027E51C(v19, (a1 + v3));
  if (*(a2 + 16) != 1 || BYTE8(v20) != 1)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 47);
  if (v4 >= 0)
  {
    v5 = *(a2 + 47);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = BYTE7(v22);
  if (SBYTE7(v22) < 0)
  {
    v6 = v21[1];
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 24);
    }

    if ((SBYTE7(v22) & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v21[0];
    }

    v9 = memcmp(v7, v8, v5) == 0;
  }

  else
  {
LABEL_18:
    v9 = 0;
  }

  if (*(a2 + 48) == 1 && BYTE8(v22) == 1)
  {
    v10 = *(a2 + 79);
    if (v10 >= 0)
    {
      v11 = *(a2 + 79);
    }

    else
    {
      v11 = *(a2 + 64);
    }

    v12 = BYTE7(v24);
    if (SBYTE7(v24) < 0)
    {
      v12 = v23[1];
    }

    if (v11 == v12)
    {
      v15 = *(a2 + 56);
      v14 = (a2 + 56);
      v13 = v15;
      if (v10 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v13;
      }

      if ((SBYTE7(v24) & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v23[0];
      }

      v9 |= memcmp(v16, v17, v11) == 0;
    }
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v22) == 1)
  {
    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    BYTE8(v22) = 0;
  }

  if (BYTE8(v20) == 1)
  {
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    BYTE8(v20) = 0;
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(v19[0]);
  }

  return v9 & 1;
}

void cellplan::CellularPlanControllerPhone::fetchActivePlans_sync(uint64_t a1, int a2, const void **a3, void *a4)
{
  if (!a4[2])
  {
    return;
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    v36 = 0;
    v37 = 0;
    v36 = (*(*v8 + 104))(v8);
    v37 = v9;
    ctu::hex(&__p, &v36, 0x10, v10);
    v11 = v30;
    if ((v30 & 0x80u) == 0)
    {
      v12 = v30;
    }

    else
    {
      v12 = v29;
    }

    v13 = *(a3 + 23);
    v14 = v13;
    if (v13 < 0)
    {
      v13 = a3[1];
    }

    if (v12 == v13)
    {
      if ((v30 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v14 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = memcmp(p_p, v16, v12) == 0;
      if (v11 < 0)
      {
LABEL_23:
        operator delete(__p);
        if (!v17)
        {
          return;
        }

LABEL_24:
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        v33 = 0u;
        std::string::operator=(v34, (*a4 + 32));
        v18 = *(a1 + 160);
        v22 = 0;
        v21 = 0uLL;
        sub_100F11F00(v26, &v33);
        v27 = 1;
        sub_100520D38(&__p, a2, &v21, v26, 0);
        (*(*v18 + 96))(v18, 1, &__p);
        if (v32[216] == 1)
        {
          sub_100E3A5D4(v32);
        }

        if (v31 < 0)
        {
          operator delete(v29);
        }

        if (v27 == 1)
        {
          sub_100E3A5D4(v26);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21);
        }

        v19 = *(a1 + 256);
        v20 = *a4;
        v23[0] = 0;
        if (*(v20 + 79) < 0)
        {
          sub_100005F2C(&v24, *(v20 + 56), *(v20 + 64));
        }

        else
        {
          v24 = *(v20 + 56);
          v25 = *(v20 + 72);
        }

        v23[0] = 1;
        (*(*v19 + 120))(v19, &v36, v20 + 32, v23);
        if (v23[0] == 1)
        {
          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24);
          }

          v23[0] = 0;
        }

        (*(**(a1 + 96) + 16))(*(a1 + 96));
        sub_100E3A5D4(&v33);
        return;
      }
    }

    else
    {
      v17 = 0;
      if (v30 < 0)
      {
        goto LABEL_23;
      }
    }

    if (!v17)
    {
      return;
    }

    goto LABEL_24;
  }

  v33 = 0uLL;
  sub_1009222A0();
  if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(a1, 0, &v33) && *a4 != a4 + 1)
  {
    v36 = 0;
    v37 = 0;
    sub_10032E870();
  }
}

void sub_10051F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v13 = *(v11 - 64);
  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::sendSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 144) + 152))(*(a1 + 144));
  v2 = *(**(a1 + 96) + 16);

  return v2();
}

uint64_t non-virtual thunk tocellplan::CellularPlanControllerPhone::sendSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 64) + 152))(*(a1 + 64));
  v2 = *(**(a1 + 16) + 16);

  return v2();
}

void cellplan::CellularPlanControllerPhone::sendActivateProfile_sync(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v11 = *(a3 + 2);
  }

  sub_10011C9B0(v8, &__dst, 1);
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  v8[3] = a1;
  sub_1000224C8(v9, a4);
  v9[7] = 0;
  operator new();
}

void sub_10051FCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100112FB8(&a21);
  sub_10000FF50(v21 + 8);
  sub_100009970(&a9, a10);
  sub_100009970(&a13, a14);
  if (*(v22 - 57) < 0)
  {
    operator delete(*(v22 - 80));
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::clearPendingPlanNotification_sync(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*(a1 + 1208) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 1135);
  if (v4 >= 0)
  {
    v5 = *(a1 + 1135);
  }

  else
  {
    v5 = *(a1 + 1120);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_14;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 1112);
  }

  else
  {
    v8 = *(a1 + 1112);
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v8, a2, v5))
  {
LABEL_14:
    (***(a1 + 128))(&v19);
    ServiceMap = Registry::getServiceMap(v19);
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
    v21 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v21);
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
LABEL_22:
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v17)
        {
          (*(*v17 + 24))(v17, v2);
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
    goto LABEL_22;
  }

  sub_100503374(a1 + 1112);
}

void sub_10051FF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *cellplan::CellularPlanControllerPhone::getPhoneNumberForSlot_sync@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 110);
  if (!v3)
  {
    return sub_10000501C(a3, "");
  }

  v4 = result + 880;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 880 || *(v4 + 8) > a2)
  {
    return sub_10000501C(a3, "");
  }

  if (v4[87] < 0)
  {
    return sub_100005F2C(a3, *(v4 + 8), *(v4 + 9));
  }

  v5 = *(v4 + 4);
  *(a3 + 16) = *(v4 + 10);
  *a3 = v5;
  return result;
}

uint64_t sub_100520028(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void cellplan::CellularPlanControllerPhone::debugRemoteFetchProfileOnly(uint64_t a1, const void **a2)
{
  sub_10005C7A4(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::debugRemoteVinylInfo(uint64_t a1, uint64_t a2)
{
  v3 = 328;
  if (*(a1 + 1224))
  {
    v3 = 1368;
  }

  v4 = a1 + v3;
  v5 = *(a1 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    v11 = 0;
    (*(a2 + 16))(a2, &v11, 0);
    return sub_10001021C(&v11);
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(a1 + 144);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1005202B0;
    v10[3] = &unk_101E54198;
    v10[4] = a2;
    return (*(*v8 + 128))(v8, v6, v7, v10);
  }
}

void sub_1005202B0(uint64_t a1, unsigned __int8 *a2)
{
  v29 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v29 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v29 = v5;
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
  v29 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a2;
  if (v7 == 1)
  {
    if (a2[8] == 1)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      sub_100F11B6C(&v30, (a2 + 16));
      v28[0] = 0;
      v28[1] = 0;
      ctu::TextConverter::TextConverter(v28);
      ctu::TextConverter::pushConversion();
      ctu::TextConverter::setSource(v28, &v31, 0x10uLL);
      ctu::TextConverter::readChars(&__p, v28, 0x7FFFFFFFuLL);
      if (v25 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v26 = xpc_string_create(p_p);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v22[0] = &v29;
      v22[1] = "CSN";
      sub_10000F688(v22, &v26, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v26);
      v26 = 0;
      if (v25 < 0)
      {
        operator delete(__p);
      }

      v20 = xpc_int64_create(SHIDWORD(v30));
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      __p = &v29;
      v24 = "Available";
      sub_10000F688(&__p, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
      v18 = xpc_int64_create(SDWORD1(v30));
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      __p = &v29;
      v24 = "SlotId";
      sub_10000F688(&__p, &v18, &v19);
      xpc_release(v19);
      v19 = 0;
      xpc_release(v18);
      v18 = 0;
      if (v35 == 1)
      {
        v16 = xpc_int64_create(0x84BDA12F684BDA13 * ((v34 - *(&v33 + 1)) >> 3));
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        __p = &v29;
        v24 = "NumProfiles";
        sub_10000F688(&__p, &v16, &v17);
        xpc_release(v17);
        v17 = 0;
        xpc_release(v16);
        v16 = 0;
        v22[0] = 0;
        if ((v35 & 1) == 0)
        {
          sub_1000D1644();
        }

        sub_100466C6C(&v33 + 1, v22);
        ctu::cf_to_xpc(&v14, v22[0], v10);
        __p = &v29;
        v24 = "Profiles";
        sub_10000F688(&__p, &v14, &v15);
        xpc_release(v15);
        v15 = 0;
        xpc_release(v14);
        v14 = 0;
        sub_100010250(v22);
      }

      ctu::TextConverter::~TextConverter(v28);
      if (v35 == 1)
      {
        __p = &v33 + 8;
        sub_100112120(&__p);
      }

      if (SBYTE7(v33) < 0)
      {
        operator delete(v32);
      }
    }
  }

  else if (v7 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
  }

  v11 = *(a1 + 32);
  __p = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    __p = xpc_null_create();
  }

  xpc::bridge(&v30, &__p, v12);
  sub_100010180(&v13, &v30);
  (*(v11 + 16))(v11, &v13, 0);
  sub_10001021C(&v13);
  sub_10000A1EC(&v30);
  xpc_release(__p);
  xpc_release(v29);
}

void sub_1005206E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, xpc_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1005207F4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (v4 == 1 && (v5 & 1) != 0)
  {
    if ((cellplan::operator==() & 1) == 0)
    {
LABEL_4:
      sub_10053068C(a1, a2);
      return 1;
    }
  }

  else if (v4 != v5)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_10052085C(uint64_t a1)
{
  sub_100220B4C(a1 + 32);

  return sub_10052089C(a1);
}

uint64_t sub_10052089C(uint64_t a1)
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

void sub_10052091C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100520970(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100520970(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1005209C4(a1, i))
  {
    i -= 216;
  }

  *(a1 + 8) = a2;
}

void sub_1005209C4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 176);
  sub_100112048(&v3);
  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 64) = 0;
  }

  if (*(a2 + 32) == 1)
  {
    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }

    *(a2 + 32) = 0;
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_100520A6C(uint64_t a1, _BYTE *a2, __int128 *a3, __int128 *a4)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  v8 = *(a3 + 3);
  *(a1 + 40) = 0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10027E628(a1 + 40, *(a3 + 4), *(a3 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 5) - *(a3 + 4)) >> 3));
  v9 = *(a3 + 7);
  *(a1 + 72) = *(a3 + 16);
  *(a1 + 64) = v9;
  sub_10027E51C((a1 + 80), a4);
  return a1;
}

uint64_t sub_100520B54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 16) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 72) = v5;
  *(a1 + 8) = 1;
  *(a1 + 88) = 0;
  sub_10027E51C((a1 + 96), (a2 + 80));
  *(a1 + 88) = 1;
  return a1;
}

_BYTE *sub_100520C0C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_100520C48(a1);
  }

  return a1;
}

void sub_100520C48(uint64_t a1)
{
  v2 = (a1 + 40);
  sub_100112048(&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = 0;
}

uint64_t sub_100520C94(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 120) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 120) = 0;
    }

    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      *(a1 + 56) = 0;
    }

    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      *(a1 + 24) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100520D38(uint64_t a1, int a2, __int128 *a3, uint64_t a4, char a5)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  sub_100520DC8((a1 + 32), a4);
  *(a1 + 256) = a5;
  return a1;
}

void sub_100520DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100520DC8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[216] = 0;
  if (*(a2 + 216) == 1)
  {
    sub_100F11F00(a1, a2);
    a1[216] = 1;
  }

  return a1;
}

void sub_100520E10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    sub_100E3A5D4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100520E30(uint64_t a1)
{
  v3 = (a1 + 200);
  sub_100112048(&v3);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10027E6B0(a1 + 32);
  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100520EA4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1000DD7C8(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100520EF8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000DD644(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_1000DDB98((96 * v2), a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  sub_100521028(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100521174(&v13);
  return v12;
}

void sub_100521014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100521174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100521028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_1000DD7C8(a1, v5);
      v5 += 96;
    }
  }

  return sub_10052113C(v13);
}

uint64_t sub_10052113C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000DD774(a1);
  }

  return a1;
}

uint64_t sub_100521174(uint64_t a1)
{
  sub_1005211AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005211AC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1000DD7C8(v5, v4 - 96);
  }
}

uint64_t sub_1005211F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  *(a1 + 64) = *(a2 + 64);
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

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v9 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v9;
  }

  return a1;
}

void sub_10052131C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100521398(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_10016E9C0(a1 + 16, a2 + 16);
  sub_10016E9C0(a1 + 48, a2 + 48);
  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v4 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v4;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10016E9C0(a1 + 112, a2 + 112);
  return a1;
}

void sub_100521414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    *(v1 + 48) = 0;
  }

  if (*(v1 + 16) == 1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100521480(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 16) = 0;
  }

  return a1;
}

uint64_t sub_100521514(uint64_t a1)
{
  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_100522C04(&v3);
    v3 = (a1 + 184);
    sub_100522C58(&v3);
    if (*(a1 + 152) == 1)
    {
      if (*(a1 + 183) < 0)
      {
        operator delete(*(a1 + 160));
      }

      *(a1 + 152) = 0;
    }

    if (*(a1 + 120) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 120) = 0;
    }

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
  }

  return a1;
}

uint64_t sub_1005215FC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  sub_10006F264(v4 + 24, (a2 + 24));
  result = sub_10006F264(v4 + 56, (a2 + 56));
  *(v4 + 88) = *(a2 + 44);
  *(a1 + 8) = v4 + 96;
  return result;
}

uint64_t sub_1005216C8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100280E54(a1, v6);
  }

  v7 = 96 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_10006F264(v7 + 24, (a2 + 24));
  sub_10006F264(v7 + 56, (a2 + 56));
  *(v7 + 88) = *(a2 + 44);
  *&v17 = v17 + 96;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  sub_100521870(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100521A48(&v15);
  return v14;
}

void sub_100521820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 48) == 1 && *(v4 + 47) < 0)
  {
    operator delete(*(v4 + 24));
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_100521A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100521870(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_100521934(a4, v7);
      v7 += 6;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1005219C8(a1, v5);
      v5 += 96;
    }
  }

  return sub_100280C60(v9);
}

uint64_t sub_100521934(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(result + 72) = *(a2 + 9);
    *(result + 56) = v4;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(result + 80) = 1;
  }

  *(result + 88) = *(a2 + 44);
  return result;
}

void sub_1005219C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100521A48(uint64_t a1)
{
  sub_100521A80(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100521A80(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1005219C8(v5, v4 - 96);
  }
}

uint64_t sub_100521AC8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

__int128 *sub_100521B2C(__int128 *a1)
{
  if (*(a1 + 3) && *(a1 + 7))
  {
    sub_100521D6C(v5, (a1 + 2));
    v6 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 16);
    operator new();
  }

  sub_100521DEC((a1 + 2));
  v2 = *(a1 + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100521C60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_100521C6C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100521DEC(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_100521CC4(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 48);
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_100022DB4();
  }

  (*(*v1 + 48))(v1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return sub_100521C6C(&v3);
}

void sub_100521D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100521C6C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100521D6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100521DEC(uint64_t a1)
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

__int128 *sub_100521E6C(__int128 *a1)
{
  if (*(a1 + 3) && *(a1 + 7))
  {
    sub_1005220AC(v5, (a1 + 2));
    v6 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 16);
    operator new();
  }

  sub_10052212C((a1 + 2));
  v2 = *(a1 + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100521FA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_100521FAC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10052212C(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_100522004(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 48);
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_100022DB4();
  }

  (*(*v1 + 48))(v1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return sub_100521FAC(&v3);
}

void sub_10052208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100521FAC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005220AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10052212C(uint64_t a1)
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

void sub_1005221AC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_100522308(a1);
    if (a4 <= 0x1C71C71C71C71C7)
    {
      v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      sub_100522348(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    sub_100522530(&v14, a2, a3, v8);
    sub_1005225C8(a1, v12);
  }

  else
  {
    sub_100522530(&v13, a2, a2 + v11, v8);
    a1[1] = sub_100522398(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_100522308(uint64_t *a1)
{
  if (*a1)
  {
    sub_1005225C8(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100522348(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    sub_100522680(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100522398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100521398(v4, v6);
      v6 += 144;
      v4 = v11 + 144;
      v11 += 144;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100522438(v8);
  return v4;
}

uint64_t sub_100522438(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100522484(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100522484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 32) == 1)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        *(v6 - 32) = 0;
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*(v6 - 64));
      }

      if (*(v6 - 96) == 1)
      {
        if (*(v6 - 65) < 0)
        {
          operator delete(*(v6 - 88));
        }

        *(v6 - 96) = 0;
      }

      if (*(v6 - 128) == 1)
      {
        if (*(v6 - 97) < 0)
        {
          operator delete(*(v6 - 120));
        }

        *(v6 - 128) = 0;
      }

      v6 -= 144;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100522530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_10016E810(a4 + 16, v5 + 16);
    sub_10016E810(a4 + 48, v5 + 48);
    std::string::operator=((a4 + 80), (v5 + 80));
    *(a4 + 104) = *(v5 + 104);
    sub_10016E810(a4 + 112, v5 + 112);
    a4 += 144;
    v5 += 144;
  }

  while (v5 != v6);
  return v6;
}

void sub_1005225C8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 144)
  {
    if (*(i - 32) == 1)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 24));
      }

      *(i - 32) = 0;
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }

    if (*(i - 96) == 1)
    {
      if (*(i - 65) < 0)
      {
        operator delete(*(i - 88));
      }

      *(i - 96) = 0;
    }

    if (*(i - 128) == 1)
    {
      if (*(i - 97) < 0)
      {
        operator delete(*(i - 120));
      }

      *(i - 128) = 0;
    }
  }

  *(a1 + 8) = a2;
}

void sub_100522680(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1005226DC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100522838(a1);
    if (a4 <= 0x186186186186186)
    {
      v9 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
      {
        v10 = 0x186186186186186;
      }

      else
      {
        v10 = v9;
      }

      sub_100522878(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xCF3CF3CF3CF3CF3DLL * (v11 >> 3) >= a4)
  {
    sub_100522A50(&v14, a2, a3, v8);
    sub_100522B00(a1, v12);
  }

  else
  {
    sub_100522A50(&v13, a2, a2 + v11, v8);
    a1[1] = sub_1005228C8(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_100522838(uint64_t *a1)
{
  if (*a1)
  {
    sub_100522B00(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100522878(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    sub_100522BA8(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1005228C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1005211F4(v4, v6);
      v6 += 168;
      v4 = v11 + 168;
      v11 += 168;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100522968(v8);
  return v4;
}

uint64_t sub_100522968(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005229B4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1005229B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 24));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 48));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 72));
      }

      if (*(v6 - 73) < 0)
      {
        operator delete(*(v6 - 96));
      }

      if (*(v6 - 105) < 0)
      {
        operator delete(*(v6 - 128));
      }

      if (*(v6 - 129) < 0)
      {
        operator delete(*(v6 - 152));
      }

      v6 -= 168;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100522A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::string::operator=((a4 + 16), (v5 + 16));
    std::string::operator=((a4 + 40), (v5 + 40));
    *(a4 + 64) = *(v5 + 64);
    std::string::operator=((a4 + 72), (v5 + 72));
    std::string::operator=((a4 + 96), (v5 + 96));
    std::string::operator=((a4 + 120), (v5 + 120));
    std::string::operator=((a4 + 144), (v5 + 144));
    a4 += 168;
    v5 += 168;
  }

  while (v5 != v6);
  return v6;
}

void sub_100522B00(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 168)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }

    if (*(i - 105) < 0)
    {
      operator delete(*(i - 128));
    }

    if (*(i - 129) < 0)
    {
      operator delete(*(i - 152));
    }
  }

  *(a1 + 8) = a2;
}

void sub_100522BA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100522C04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100522B00(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100522C58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005225C8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100522CAC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 96);
    sub_100522C04(&v3);
    v3 = (a1 + 72);
    sub_100522C58(&v3);
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 40) = 0;
    }

    if (*(a1 + 8) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100522D48(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 104) = 0;
  }

  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100522DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v8 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_10016F23C(a1, v8);
  }

  v15 = 0;
  v16 = 88 * v4;
  sub_100522F54((88 * v4), a2, a3, a4);
  v17 = (88 * v4 + 88);
  v9 = a1[1];
  v10 = 88 * v4 + *a1 - v9;
  sub_100284388(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100284540(&v15);
  return v14;
}

void sub_100522F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100284540(va);
  _Unwind_Resume(a1);
}

void *sub_100522F54(void *__dst, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
  }

  v13[0] = 0;
  if (*a3 == 1)
  {
    *v14 = *(a3 + 8);
    v15 = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v13[0] = 1;
  }

  v10[0] = 0;
  if (*a4 == 1)
  {
    *__p = *(a4 + 8);
    v12 = *(a4 + 24);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v10[0] = 1;
  }

  sub_1002842CC(__dst, v8, v13, v10);
  if (v10[0] == 1)
  {
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v10[0] = 0;
  }

  if (v13[0] == 1)
  {
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v13[0] = 0;
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  return __dst;
}

void sub_1005230AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a12 == 1)
  {
    sub_101772D60();
  }

  sub_101773D94(&a16, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005230E0(uint64_t a1)
{
  if (*(a1 + 720) == 1 && *(a1 + 719) < 0)
  {
    operator delete(*(a1 + 696));
  }

  if (*(a1 + 688) == 1)
  {
    if (*(a1 + 656) == 1)
    {
      if (*(a1 + 687) < 0)
      {
        operator delete(*(a1 + 664));
      }

      *(a1 + 656) = 0;
    }

    if (*(a1 + 624) == 1)
    {
      if (*(a1 + 655) < 0)
      {
        operator delete(*(a1 + 632));
      }

      *(a1 + 624) = 0;
    }

    if (*(a1 + 623) < 0)
    {
      operator delete(*(a1 + 600));
    }

    v3 = (a1 + 568);
    sub_10016F470(&v3);
    if (*(a1 + 567) < 0)
    {
      operator delete(*(a1 + 544));
    }

    if (*(a1 + 512) == 1)
    {
      if (*(a1 + 543) < 0)
      {
        operator delete(*(a1 + 520));
      }

      *(a1 + 512) = 0;
    }

    if (*(a1 + 480) == 1)
    {
      if (*(a1 + 511) < 0)
      {
        operator delete(*(a1 + 488));
      }

      *(a1 + 480) = 0;
    }

    if (*(a1 + 479) < 0)
    {
      operator delete(*(a1 + 456));
    }

    v3 = (a1 + 424);
    sub_10016F470(&v3);
    if (*(a1 + 423) < 0)
    {
      operator delete(*(a1 + 400));
    }

    if (*(a1 + 399) < 0)
    {
      operator delete(*(a1 + 376));
    }

    if (*(a1 + 344) == 1)
    {
      if (*(a1 + 375) < 0)
      {
        operator delete(*(a1 + 352));
      }

      *(a1 + 344) = 0;
    }
  }

  return sub_10016E64C(a1);
}

uint64_t sub_100523248(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    sub_10016F3D4(a1 + 200);
    sub_10016F3D4(a1 + 56);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*a1 == 1)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1005232B8(uint64_t a1, __int128 *a2)
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
  sub_10016EE9C(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  sub_10016E3EC(a1 + 80, (a2 + 5));
  sub_10016E3EC(a1 + 112, (a2 + 7));
  return a1;
}

_BYTE *sub_100523378(_BYTE *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v6;
  }

  v7 = *(a2 + 3);
  *(__dst + 4) = 0;
  *(__dst + 3) = v7;
  *(__dst + 5) = 0;
  *(__dst + 6) = 0;
  sub_10027E628((__dst + 32), *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v8 = *(a2 + 7);
  *(__dst + 16) = *(a2 + 16);
  *(__dst + 7) = v8;
  sub_10027E51C(__dst + 72, a3);
  return __dst;
}

uint64_t sub_100523454(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 56) = v5;
  *(a1 + 72) = 1;
  sub_10027E51C((a1 + 80), (a2 + 72));
  *(a1 + 216) = 1;
  return a1;
}

uint64_t sub_1005234F0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 32);
    sub_100112048(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_100523548(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 32);
  sub_100112048(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005235F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100523648(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100523648(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 11;
      if (*(v3 - 65) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 11;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1005236C0(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 208);
    sub_100112048(&v3);
    if (*(a1 + 199) < 0)
    {
      operator delete(*(a1 + 176));
    }

    sub_10027E6B0(a1 + 40);
    if (*(a1 + 8) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100523744(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 6);
  sub_10016E9C0(a1 + 40, (a2 + 2));
  result = sub_10016E9C0(a1 + 72, (a2 + 4));
  *(a1 + 104) = *(a2 + 24);
  *a1 = 1;
  return result;
}

void sub_1005237C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    *(v1 + 40) = 0;
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_100523884(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100523958);
  __cxa_rethrow();
}

void sub_1005238C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100523918(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100523958(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100523984(ServiceManager::Service *this)
{
  *this = off_101E54340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1005239E0(ServiceManager::Service *this)
{
  *this = off_101E54340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_100523A60(uint64_t a1, atomic_uint **a2)
{
  if (a2)
  {
    sub_100523A60(a1, *a2);
    sub_100523A60(a1, a2[1]);
    sub_100083940(a2 + 6);

    operator delete(a2);
  }
}

void *sub_100523ABC(void *a1)
{
  *a1 = off_101E543C0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100523B08(void *a1)
{
  *a1 = off_101E543C0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100523BE8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E543C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100523C28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100523C38(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100523C78(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[3];
      sub_100004A34(v5);
      if (v6)
      {
        (***(v4 + 128))(&v16);
        *__p = v16;
        v16 = 0uLL;
        subscriber::makeSimSlotRange();
        if (__p[1])
        {
          sub_100004A34(__p[1]);
        }

        if (*(&v16 + 1))
        {
          sub_100004A34(*(&v16 + 1));
        }

        v7 = v17;
        v8 = v18;
        if (v17 != v18)
        {
          v9 = v19;
          do
          {
            if (v9(*v7))
            {
              break;
            }

            ++v7;
          }

          while (v7 != v8);
          v10 = v18;
          while (v7 != v10)
          {
            v11 = *v7;
            (***(v4 + 128))(&v13);
            v16 = v13;
            v13 = 0uLL;
            PersonalityIdFromSlotId();
            v12 = sub_100007A6C(v4 + 848, __p);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }

            if (*(&v16 + 1))
            {
              sub_100004A34(*(&v16 + 1));
            }

            if (*(&v13 + 1))
            {
              sub_100004A34(*(&v13 + 1));
            }

            if (v4 + 856 == v12)
            {
              *&v16 = 0;
              __p[1] = 0;
              v15 = 0;
              __p[0] = &__p[1];
              cellplan::CellularPlanControllerPhone::handleEntitlementChanged(v4, v11, &v16, __p);
              sub_10006DCAC(__p, __p[1]);
            }

            else
            {
              cellplan::CellularPlanControllerPhone::handleEntitlementChanged(v4, v11, (v12 + 56), v12 + 64);
            }

            do
            {
              ++v7;
            }

            while (v7 != v8 && (v9(*v7) & 1) == 0);
          }
        }
      }
    }
  }
}

void sub_100523E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100523EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052401C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005240CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54440;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100524104(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_1005241A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1005241C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005242FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005243AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E544C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1005243E4(void *a1, const object *a2)
{
  v3 = a1[1];
  v16 = 0;
  v4 = *v3->var0.__rep_.__s.__data_;
  data = v3[1].var0.__rep_.__l.__data_;
  v11 = *(&v3->var0.__rep_.__l + 2);
  *__p = v4;
  v3->var0.__rep_.__l.__size_ = 0;
  *(&v3->var0.__rep_.__l + 2) = 0;
  v3->var0.__rep_.__l.__data_ = 0;
  v12 = data;
  v13 = *&v3[1].var0.__rep_.__l.__size_;
  size = v3[2].var0.__rep_.__l.__size_;
  v14 = v3[2].var0.__rep_.__l.__data_;
  *(&v3[1].var0.__rep_.__l + 2) = 0;
  v3[2].var0.__rep_.__l.__data_ = 0;
  v3[1].var0.__rep_.__l.__size_ = 0;
  LODWORD(v16) = *(&v3[2].var0.__rep_.__l + 4);
  v15 = size;
  read_rest_value(v3, a2);
  v7 = a1[3];
  v8 = a1[4];
  v9 = (a1[2] + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v7(v9, __p);
  v17 = &v13;
  sub_100112048(&v17);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1005244DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005246C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54540;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100524704(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524750(uint64_t a1, RemoteDeviceIdentifiers *a2)
{
  v4 = *a1;
  v17 = 0;
  *__p = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  sub_10027E51C(v9, v4);
  cellplan::read_rest_value(v4, a2, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (*(a1 + 8) + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, v9);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v12) == 1)
  {
    if (SBYTE7(v14) < 0)
    {
      operator delete(v13[0]);
    }

    BYTE8(v12) = 0;
  }

  if (BYTE8(v10) == 1)
  {
    if (SBYTE7(v12) < 0)
    {
      operator delete(v11[0]);
    }

    BYTE8(v10) = 0;
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100524998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100524A48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E545C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100524A80(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_100524B8C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_10052091C(&v9);
}

void sub_100524B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10052091C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100524B40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524B8C(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100520970(a1, *a1);
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v9[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v9[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v9, count);
    xpc_release(v9[0]);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v9[0] = &v11;
      v9[1] = i;
      v6 = a1[1];
      if (v6 >= a1[2])
      {
        v7 = sub_100524DD4(a1);
      }

      else
      {
        *(v6 + 208) = 0;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *v6 = 0u;
        v7 = v6 + 216;
      }

      a1[1] = v7;
      sub_100008EF0(v9, &v8);
      cellplan::read_rest_value();
      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_100524D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100524DD4(uint64_t *a1)
{
  v1 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x12F684BDA12F684)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v4 = 0x12F684BDA12F684;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_100524F24(a1, v4);
  }

  v5 = 216 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0;
  *&v14 = 216 * v1 + 216;
  v6 = a1[1];
  v7 = 216 * v1 + *a1 - v6;
  sub_100524F80(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_100525194(&v12);
  return v11;
}

void sub_100524F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100525194(va);
  _Unwind_Resume(a1);
}

void sub_100524F24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100524F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 144;
    do
    {
      v9 = v8 - 144;
      *v4 = *(v8 - 144);
      sub_10027E51C((v4 + 8), (v8 - 136));
      if (*(v8 + 23) < 0)
      {
        sub_100005F2C((v4 + 144), *v8, *(v8 + 8));
      }

      else
      {
        v10 = *v8;
        *(v4 + 160) = *(v8 + 16);
        *(v4 + 144) = v10;
      }

      v11 = *(v8 + 24);
      *(v4 + 176) = 0;
      *(v4 + 168) = v11;
      *(v4 + 184) = 0;
      *(v4 + 192) = 0;
      sub_10027E628(v4 + 176, *(v8 + 32), *(v8 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v8 + 40) - *(v8 + 32)) >> 3));
      v12 = *(v8 + 56);
      *(v4 + 208) = *(v8 + 64);
      *(v4 + 200) = v12;
      v4 = v17 + 216;
      v17 += 216;
      v8 += 216;
    }

    while (v9 + 216 != a3);
    LOBYTE(v15) = 1;
    while (v6 != a3)
    {
      sub_1005209C4(a1, v6);
      v6 += 216;
    }
  }

  return sub_100525108(v14);
}

void sub_1005250C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027E6B0(v9);
  sub_100525108(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100525108(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100525140(a1);
  }

  return a1;
}

void sub_100525140(uint64_t *a1)
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
      v3 -= 216;
      sub_1005209C4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100525194(uint64_t a1)
{
  sub_1005251CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005251CC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 216;
    sub_1005209C4(v5, v4 - 216);
  }
}

void sub_100525300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005253B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54640;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1005253E8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_1005254D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100525524(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E546C0;
  v5[1] = v3;
  v5[3] = v5;
  sub_1005257AC(v5, a1);
  sub_10052089C(v5);
  return a1;
}

uint64_t sub_100525628(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E546C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10052565C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005256A8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (*a2 == 1)
  {
    cellplan::write_rest_value((a2 + 8), a2);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/cellular_plan_remotesubscription_info");
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

void sub_100525768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1005257AC(void *result, void *a2)
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

void sub_100525A0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100525A88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54750;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100525AB4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_null)
  {
    if (*(v3 + 1))
    {
      *(v3 + 1) = 0;
    }
  }

  else
  {
    if ((*(v3 + 1) & 1) == 0)
    {
      *v3 = 256;
    }

    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_100525B1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100525BD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E547D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100525C04(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100525C34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100525CF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54850;
  a2[1] = v2;
  return result;
}

uint64_t sub_100525D1C(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100525D4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100525E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100525F34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E548D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100525F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100525FC0(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  sub_10032CF1C(&v16, a2);
  v11 = 0;
  LOWORD(v11) = *v3;
  v4 = *(v3 + 24);
  *v12 = *(v3 + 8);
  v13 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v5 = *(v3 + 32);
  v15 = *(v3 + 48);
  *__p = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    v17[2] = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101156868(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a1[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_10032D3A4(&v16, v17);
}

void sub_100526114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10032D3A4(va, v6);
  sub_1000EFBF0(va1);
  sub_10032D3A4(v2 - 56, *(v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_1005261C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54950;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005261EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100526324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005263D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E549D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100526414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100526460(uint64_t a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  rest::read_rest_value(*a1, a2, a3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(a1 + 8) + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6);
}

uint64_t sub_10052654C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54A50;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100526578(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_100526614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005267EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100526824(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10052686C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1005268B8(uint64_t a1, int *a2)
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

uint64_t sub_1005269A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100083940(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1005269F4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void sub_100526A40(int a1, uint64_t a2, NSObject *a3, void **a4)
{
  sub_100526CD8(v5, a4, a3);
  sub_100526D20(v6, v5);
  sub_100526B00(v6, a2);
}

void sub_100526B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100526C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

dispatch_object_t *sub_100526CD8(dispatch_object_t *a1, void **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}

_OWORD *sub_100526D20(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100526D78(a1, a2);
  return a1;
}

void sub_100526D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100352130((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100526D78(uint64_t a1, NSObject **a2)
{
  sub_100526E54(v4, a2);
  sub_100526DD0(a1 + 24, v4);
  return sub_100527918(v4);
}

uint64_t sub_100526DD0(uint64_t a1, NSObject **a2)
{
  sub_100526E54(v4, a2);
  sub_100526EA0(v5, v4);
  sub_1003519D0(v5, a1);
  sub_100352130(v5);
  sub_100527918(v4);
  return a1;
}

void sub_100526E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_100352130(&a11);
  sub_100527918(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_100526E54(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

void *sub_100526EA0(void *a1, NSObject **a2)
{
  sub_100526E54(v4, a2);
  sub_100526F00(a1, v4);
  sub_100527918(v4);
  return a1;
}

void *sub_100526F00(void *a1, NSObject **a2)
{
  *a1 = 0;
  sub_100526E54(v4, a2);
  sub_100526F60(a1, v4);
  sub_100527918(v4);
  return a1;
}

uint64_t sub_100526F60(uint64_t a1, NSObject **a2)
{
  sub_100526E54(v6, a2);
  v3 = sub_100527140(off_101E54B60, v6, (a1 + 8));
  result = sub_100527918(v6);
  if (v3)
  {
    v5 = off_101E54B60;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100526FDC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_100526E54(a2, result);
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_100527918(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1005270B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1005271A8(a1);
}

void sub_100527124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100527140(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_100526E54(v7, a2);
  v5 = sub_1005275C0(a1, v7, a3);
  sub_100527918(v7);
  return v5;
}

void sub_1005271A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  aBlock = v1;
  sub_100527248(v3, &aBlock);
  sub_100351C78();
}

void sub_10052721C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void (**a11)(void, void, uint64_t))
{
  sub_100352130(&a11);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void *sub_100527248(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_1005272C4(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_1005272A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005272C4(void *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_100527340(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_100527324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_100527340(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = sub_100527408(off_101E54B80, &aBlock, (a1 + 8));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    v5 = off_101E54B80;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_1005273BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005273D8(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_10052748C(a1, a2, a3);
  }
}

uint64_t sub_100527408(uint64_t a1, void **a2, void **a3)
{
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  v6 = sub_100527560(a1, &aBlock, a3);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v6;
}

void sub_100527470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052748C(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else if (a3 == 2)
    {
      v7 = *a2;
      if (*a2)
      {
LABEL_6:
        _Block_release(v7);
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_100527560(uint64_t a1, const void **a2, void **a3)
{
  if (*a2 && (v4 = _Block_copy(*a2), (v5 = v4) != 0))
  {
    *a3 = _Block_copy(v4);
    _Block_release(v5);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_1005275C0(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_100526E54(v5, a2);
  sub_100526E54(a3, v5);
  sub_100527918(v5);
  return 1;
}

void *sub_100527608(void *a1)
{
  *a1 = off_101E54BB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100527654(void *a1)
{
  *a1 = off_101E54BB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1005276C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_100527770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005277F4(void *a1)
{
  *a1 = off_101E54C00;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100527840(void *a1)
{
  *a1 = off_101E54C00;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100527918(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1005279C0(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  sub_10004ECBC((a1 + 24), a2);
  return a1;
}

uint64_t sub_100527A1C(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100527AC0();
  }

  return result;
}

void sub_100527B5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100527B88(uint64_t result, uint64_t a2)
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

void sub_100527BA4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100527C3C(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "CellularPlanRemoteProvisioning", "", v5, 2u);
    }
  }
}

uint64_t sub_100527CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100527D00(uint64_t a1)
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

uint64_t *sub_100527D80(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v9 = *(v1 + 24);
    *__p = v3;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v10[0] = off_101E54CF8;
  v10[1] = v4;
  v7[1] = 0;
  v10[3] = v10;
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(v2, 1, __p, v10);
  sub_100527D00(v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100527EC8(v7);
  return sub_1000049E0(&v6);
}

void sub_100527E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_100527EC8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100527EC8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

const void **sub_100527F30(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_100527F64(void *a1)
{
  *a1 = off_101E54CF8;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100527FB4(void *a1)
{
  *a1 = off_101E54CF8;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100528094(uint64_t a1, void *a2)
{
  *a2 = off_101E54CF8;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_1005280EC(const void **a1)
{
  sub_100528200(a1 + 1);

  operator delete(a1);
}

const void **sub_100528128(uint64_t a1, const void **a2, const void **a3, _WORD *a4)
{
  v4 = *a2;
  *a2 = 0;
  v6 = *a3;
  v7 = v4;
  *a3 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), (*a4 & 0x100) == 0);
  sub_10001021C(&v6);
  return sub_100005978(&v7);
}

void sub_100528198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005281B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100528200(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_100528224(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005282BC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10052833C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v8 = *(v1 + 24);
    *__p = v3;
  }

  sub_100528224(v9, v1 + 32);
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(v2, 0, __p, v9);
  sub_100527D00(v9);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10052844C(&v6);
  return sub_1000049E0(&v5);
}

void sub_100528408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_10052844C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052844C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100527D00(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005284AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100528544(uint64_t a1)
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

uint64_t sub_1005285C4(uint64_t a1, uint64_t a2)
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

void sub_100528644(char **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1 + 40;
    if (v1[63] < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I user wants to manage remote plan (%s)", buf, 0xCu);
  }

  operator new();
}

void sub_1005288E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21)
{
  sub_1005289E0(&a17);
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
    dispatch_release(v22);
  }

  sub_100004A34(v21);
  sub_100528980(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100528980(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_100528544(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1005289E0(uint64_t a1)
{
  sub_100528544(a1 + 40);
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

void sub_100528A44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100528A98(uint64_t a1)
{
  sub_1005230E0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t *sub_100528AFC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100528544(v1 + 40);
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100528B64(void *a1)
{
  v17 = a1;
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[1] == 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_6:
  if (a1[8])
  {
    if (v5)
    {
LABEL_16:
      *buf = 0;
      __p[0] = 0;
      sub_10052911C((a1 + 5), buf, __p, 1);
      goto LABEL_17;
    }

    v6 = a1[3];
    if (!v6)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773ADC();
      }

      goto LABEL_16;
    }

    v7 = *(v6 + 784);
    if (v7)
    {
      *buf = 0;
      __p[0] = 0;
      sub_10052911C((a1 + 5), buf, __p, v7);
LABEL_17:
      sub_10001021C(__p);
      sub_1002030AC(buf);
      goto LABEL_18;
    }

    URLString = 0;
    v9 = (v6 + 32);
    if (*(v6 + 55) < 0)
    {
      sub_100005F2C(__dst, *(v6 + 32), *(v6 + 40));
    }

    else
    {
      *__dst = *v9;
      v19 = *(v6 + 48);
    }

    if (SHIBYTE(v19) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v23 = v19;
    }

    v21 = 0;
    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v27 = v23;
    }

    v24 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v21;
      v21 = v24;
      cf = v10;
      sub_100005978(&cf);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(*buf);
    }

    URLString = v21;
    v21 = 0;
    sub_100005978(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    __p[0] = 0;
    __p[0] = CFURLCreateWithString(kCFAllocatorDefault, URLString, 0);
    cf = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v12 = cf;
      cf = Mutable;
      *buf = v12;
      sub_1000296E0(buf);
    }

    if (*(v6 + 392) == 1)
    {
      v24 = cf;
      if (cf)
      {
        CFRetain(cf);
        if ((*(v6 + 392) & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      v13 = (v6 + 56);
      sub_100984AE4(&v24, (v6 + 56));
      sub_1000296E0(&v24);
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v6 + 79) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315138;
        *&buf[4] = v13;
LABEL_54:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Manage Plan PostData: %s", buf, 0xCu);
      }
    }

    else if (*(v6 + 776) == 1)
    {
      sub_100029714(&v24, &cf);
      if ((*(v6 + 776) & 1) == 0)
      {
        sub_1000D1644();
      }

      v15 = (v6 + 752);
      sub_100986AFC(&v24, v6 + 752);
      sub_1000296E0(&v24);
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(v6 + 776) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (*(v6 + 775) < 0)
        {
          v15 = *v15;
        }

        *buf = 136315138;
        *&buf[4] = v15;
        goto LABEL_54;
      }
    }

    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 55) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Manage Plan Url: %s", buf, 0xCu);
    }

    *buf = __p[0];
    if (__p[0])
    {
      CFRetain(__p[0]);
    }

    sub_100010180(&v21, &cf);
    sub_10052911C((a1 + 5), buf, &v21, *(v6 + 784));
    sub_10001021C(&v21);
    sub_1002030AC(buf);
    sub_1000296E0(&cf);
    sub_1002030AC(__p);
    sub_100005978(&URLString);
    if (v4)
    {
      goto LABEL_19;
    }

    return sub_100528AFC(&v17);
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773DE8();
  }

LABEL_18:
  if (v4)
  {
LABEL_19:
    sub_100004A34(v4);
  }

  return sub_100528AFC(&v17);
}

void sub_100529010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, int a30, const void *a31)
{
  sub_1000296E0(&a31);
  sub_1002030AC(&__p);
  sub_100005978(&a18);
  if (v31)
  {
    sub_100004A34(v31);
  }

  sub_100528AFC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10052911C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t *sub_100529170(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  (***(*v1 + 128))(&v8);
  v9 = v8;
  v8 = 0uLL;
  isValidSimSlot = subscriber::isValidSimSlot();
  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (isValidSimSlot)
  {
    v4 = *(v1 + 8);
    *&v9 = _NSConcreteStackBlock;
    *(&v9 + 1) = 1174405120;
    v10 = sub_1005293C0;
    v11 = &unk_101E54DC8;
    v12 = v2;
    sub_1005284AC(v13, v1 + 16);
    v14 = *(v1 + 12);
    v13[8] = *(v1 + 8);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, &v9);
    sub_100528544(v13);
  }

  else
  {
    *&v9 = 0;
    *&v8 = 0;
    sub_10052911C(v1 + 16, &v9, &v8, 6);
    sub_10001021C(&v8);
    sub_1002030AC(&v9);
  }

  sub_100529370(&v7);
  return sub_1000049E0(&v6);
}

void sub_10052930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100528544(v10 + 40);
  sub_100529370(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100529370(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100528544(v1 + 16);
    operator delete();
  }

  return result;
}

const void **sub_1005293C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v31 = a2;
  *(&v31 + 1) = a3;
  if (a4)
  {
    v26[0] = 0;
    v25 = 0;
    sub_10052911C(a1 + 40, v26, &v25, a4);
    sub_10001021C(&v25);
    v5 = v26;
  }

  else
  {
    v6 = *(a1 + 32);
    if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v6, *(a1 + 76), &v31))
    {
      *(v6 + 1040) = *(a1 + 72);
      (*(**(v6 + 256) + 8))(*(v6 + 256), &v31);
      *(v22 + 3) = 0;
      v22[0] = 0;
      v21 = 0;
      (*(**(v6 + 128) + 120))(&v21);
      if (v21)
      {
        *buf = 0;
        v18 = 0;
        v19 = 0;
        ctu::cf::assign();
        v22[0] = 0;
        *(v22 + 3) = 0;
      }

      sub_100005978(&v21);
      rest::PairedDeviceInfoList::getActiveDevice(buf, (v6 + 896));
      if (buf[0] == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      sub_100DB14E0(buf);
      (*(**(v6 + 128) + 680))(buf);
      v16 = 0;
      v9 = (*(**buf + 152))(*buf, &v16, *(v6 + 1040), v8);
      sub_10001021C(&v16);
      if (v18)
      {
        sub_100004A34(v18);
      }

      rest::PairedDeviceInfoList::getActiveDevice(buf, (v6 + 896));
      v10 = v20;
      sub_100DB14E0(buf);
      v11 = *(v6 + 208);
      __p[0] = 0;
      __p[1] = 0;
      *v14 = v22[0];
      *&v14[3] = *(v22 + 3);
      v15 = 0;
      (*(*v11 + 88))(v11, __p, 0, v8, v10 != 1, v9);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *(*(**(v6 + 48) + 16))(*(v6 + 48), *(a1 + 72));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I get signup info via carrier entitlement", buf, 2u);
      }

      v30 = 0;
      v26[1] = v6;
      v27 = *(a1 + 72);
      v28 = v31;
      sub_1005284AC(v29, a1 + 40);
      v29[7] = 0;
      operator new();
    }

    v23 = 0;
    v24 = 0;
    sub_10052911C(a1 + 40, &v24, &v23, 3);
    sub_10001021C(&v23);
    v5 = &v24;
  }

  return sub_1002030AC(v5);
}

void *sub_100529900(void *a1)
{
  *a1 = off_101E54E08;
  sub_100528544((a1 + 5));
  return a1;
}

void sub_100529944(void *a1)
{
  *a1 = off_101E54E08;
  sub_100528544((a1 + 5));

  operator delete();
}

uint64_t sub_100529A34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54E08;
  v2 = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = v2;
  return sub_1005284AC(a2 + 40, a1 + 40);
}

void sub_100529A78(void *a1)
{
  sub_100528544(a1 + 40);

  operator delete(a1);
}

const void **sub_100529AB4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = (*(**(v6 + 48) + 16))(*(v6 + 48), *(a1 + 16));
  if (v5 == 1 && (*(a3 + 392) & 1) != 0)
  {
    v8 = v7;
    v22 = 0;
    if (*(a3 + 55) < 0)
    {
      sub_100005F2C(&__dst, *(a3 + 32), *(a3 + 40));
    }

    else
    {
      __dst = *(a3 + 32);
      v21 = *(a3 + 48);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(&v24, __dst, *(&__dst + 1));
    }

    else
    {
      v24 = __dst;
      v25 = v21;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(__p, v24, *(&v24 + 1));
    }

    else
    {
      *__p = v24;
      v19 = v25;
    }

    v26 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v23;
      v23 = v26;
      v27 = v10;
      sub_100005978(&v27);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v22 = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst);
    }

    v27 = 0;
    v11 = CFURLCreateWithString(kCFAllocatorDefault, v22, 0);
    v26 = 0;
    v27 = v11;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = v26;
      v26 = Mutable;
      __p[0] = v13;
      sub_1000296E0(__p);
    }

    v23 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if ((*(a3 + 392) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_100984AE4(&v23, (a3 + 56));
    sub_1000296E0(&v23);
    (*(**(v6 + 128) + 688))(&v24);
    if ((**v24)(v24, *(a1 + 16)))
    {
      rest::PairedDeviceInfoList::getActiveDevice(__p, (v6 + 896));
      v14 = LOBYTE(__p[0]) == 1;
      sub_100DB14E0(__p);
    }

    else
    {
      v14 = 0;
    }

    if (*(&v24 + 1))
    {
      sub_100004A34(*(&v24 + 1));
    }

    if (v14)
    {
      v15 = *v8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I carrier needs VoLTE setting to default", __p, 2u);
      }

      (*(**(v6 + 128) + 688))(__p);
      (*(*__p[0] + 16))(__p[0]);
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }

      (*(**(v6 + 128) + 688))(__p);
      (*(*__p[0] + 8))(__p[0]);
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }
    }

    v16 = *(v6 + 256);
    if (v16)
    {
      __p[0] = 0;
      (*(*v16 + 168))(v16, __p);
      if (__p[0])
      {
        _Block_release(__p[0]);
      }
    }

    *&v24 = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    sub_100010180(&v17, &v26);
    sub_10052911C(a1 + 40, &v24, &v17, 0);
    sub_10001021C(&v17);
    sub_1002030AC(&v24);
    sub_1000296E0(&v26);
    sub_1002030AC(&v27);
    return sub_100005978(&v22);
  }

  else
  {
    __p[0] = 0;
    *&v24 = 0;
    sub_10052911C(a1 + 40, __p, &v24, 5);
    sub_10001021C(&v24);
    sub_1002030AC(__p);
    result = *(v6 + 256);
    if (result)
    {
      return (*(*result + 18))(result, a1 + 20);
    }
  }

  return result;
}

void sub_100529F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100005978((v16 - 104));
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  if (*(v16 - 121) < 0)
  {
    operator delete(*(v16 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052A080(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E54E68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052A0CC(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(v1 + 1216);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(v1 + 1216);
    *(v1 + 1216) = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  operator delete();
}

uint64_t *sub_10052A174(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18[0] = v1;
  v2 = *v1;
  v23 = 0uLL;
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773EB8();
    }

    (*(*(v1 + 32) + 16))();
  }

  else
  {
    v23 = *(v5 + 16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    (*(**(v2 + 160) + 272))(&v19);
    v6 = v19;
    v7 = v20;
    if (v19 == v20)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E84();
      }
    }

    else if (*(v2 + 256))
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E1C();
      }
    }

    else
    {
      v8 = (v1 + 8);
      v9 = *(v1 + 31);
      if (v9 >= 0)
      {
        v10 = *(v1 + 31);
      }

      else
      {
        v10 = *(v1 + 16);
      }

      while (1)
      {
        v11 = *(v6 + 95);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v6 + 80);
        }

        if (v11 == v10)
        {
          v13 = v12 >= 0 ? (v6 + 72) : *(v6 + 72);
          v14 = (v9 >= 0 ? v1 + 8 : *v8);
          if (!memcmp(v13, v14, v10))
          {
            break;
          }
        }

        v6 += 312;
        if (v6 == v7)
        {
          goto LABEL_30;
        }
      }

      if (v6 == v7)
      {
LABEL_30:
        v15 = *(v2 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (v9 < 0)
          {
            v8 = *v8;
          }

          *buf = 136315138;
          *&buf[4] = v8;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Plan matching ICCID hash (%s) not found", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v2, 0, &v23))
      {
        v18[9] = 0;
        v18[10] = 0;
        sub_10032E870();
      }

      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E50();
      }
    }

LABEL_31:
    (*(*(v1 + 32) + 16))();
    *buf = &v19;
    sub_1000DC8D4(buf);
  }

  sub_10052A810(v18);
  return sub_1000049E0(&v17);
}

void sub_10052A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, char *a59)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  a59 = &a28;
  sub_1000DC8D4(&a59);
  sub_10052A810(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052A810(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_10052A878(void *a1)
{
  *a1 = off_101E54E88;
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10052A8D4(void *a1)
{
  *a1 = off_101E54E88;
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_10052A9E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54E88;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a2 + 32) = result;
  return result;
}

void sub_10052AA50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10052AAA4(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_10052AAF4(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_30;
  }

  v3 = a1[1];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4 || !a1[2])
  {
LABEL_30:
    *v18 = 0;
    v28.i8[0] = 4;
    sub_10051AF70(a1 + 4, v18);
    sub_100010250(v18);
    if (!v4)
    {
      return;
    }

    goto LABEL_31;
  }

  v34 = 0;
  v35 = 0uLL;
  v17 = v4;
  (***(v3 + 128))(&v28);
  *v18 = v28;
  v28 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*&v18[8])
  {
    sub_100004A34(*&v18[8]);
  }

  if (v28.i64[1])
  {
    sub_100004A34(v28.i64[1]);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v5 = v34;
  v6 = v35;
  *v18 = v34;
  *&v18[8] = vextq_s8(v6, v6, 8uLL);
  v7 = v35.i64[0];
  if (v34 != v35.i64[0])
  {
    v8 = v35.i64[1];
    do
    {
      if (v8(*v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != v7);
    *v18 = v5;
    v6 = v35;
  }

  v28 = v6;
  v29 = v6.i64[0];
  sub_10052B060(&__p, v18, &v28);
  v28.i64[0] = 0;
  v28.i64[1] = &v28;
  v29 = 0x2000000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  v9 = v34;
  v10 = v35.i64[0];
  if (v34 != v35.i64[0])
  {
    v11 = v32 - __p;
    v12 = v35.i64[1];
    do
    {
      if (v12(*v9))
      {
        break;
      }

      ++v9;
    }

    while (v9 != v10);
    v13 = v35.i64[0];
    if (v9 != v35.i64[0])
    {
      v14 = v11 >> 2;
      do
      {
        v15 = *v9;
        *v18 = _NSConcreteStackBlock;
        *&v18[8] = 1174405120;
        *&v18[16] = sub_10052AEC8;
        v19 = &unk_101E54F00;
        v24 = v15;
        v20 = v26;
        v21 = &v28;
        v22 = v3;
        v25 = v14;
        v16 = a1[4];
        if (v16)
        {
          v16 = _Block_copy(v16);
        }

        aBlock = v16;
        cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v3, v15, v18);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        do
        {
          ++v9;
        }

        while (v9 != v10 && (v12(*v9) & 1) == 0);
      }

      while (v9 != v13);
    }
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v4 = v17;
LABEL_31:
  sub_100004A34(v4);
}

void sub_10052ADD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052AE7C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E54F30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052AEC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v5 = *(a1 + 48);
  if (!a4 && cellplan::CellularPlanControllerPhone::shouldRunGetPlansFetch_sync(*(a1 + 48), *(a1 + 64), &v11))
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      v7 = 3;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    *(v6 + 24) = v7;
  }

  if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 68))
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 56);
    if (v9)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(v5, v8, &v11, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_10052AFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void *sub_10052B008(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_10052B03C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10052B060(void *a1, unsigned int **a2, unsigned int **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2[1];
    v10 = a2[2];
    do
    {
      do
      {
        ++v6;
      }

      while (v6 != v10 && ((v9)(*v6) & 1) == 0);
      ++v8;
    }

    while (v6 != v7);
  }

  v14 = *a2;
  v15 = a2[2];
  v12 = *a3;
  v13 = a3[2];
  sub_10052B12C(a1, &v14, &v12, v8);
  return a1;
}

uint64_t sub_10052B12C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_10052B1A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B1C4(uint64_t result, unsigned int **a2, unsigned int **a3)
{
  v3 = result;
  v4 = *a2;
  v5 = *a3;
  if (*a2 == *a3)
  {
    v8 = *(result + 8);
  }

  else
  {
    v6 = a2[1];
    v7 = a2[2];
    v8 = *(result + 8);
    do
    {
      v9 = *v4++;
      *v8 = v9;
      while (v4 != v7)
      {
        result = (v6)(*v4);
        if (result)
        {
          break;
        }

        ++v4;
      }

      ++v8;
    }

    while (v4 != v5);
  }

  *(v3 + 8) = v8;
  return result;
}

uint64_t sub_10052B25C(uint64_t a1)
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

uint64_t *sub_10052B2DC(uint64_t *a1)
{
  v10 = a1;
  v11 = *a1;
  v1 = *v11;
  v19 = 0;
  v20 = 0;
  sub_10052B560((v11 + 8), &v19);
  v2 = v19;
  v3 = *(v19 + 8);
  *v19 = 0;
  *(v2 + 8) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(v1))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v4 = *(v1 + 20);
    sub_10000501C(&__p, "");
    (*(*v4 + 264))(&v16, v4, &__p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }

    v5 = v16;
    v6 = v17;
    if (v16 == v17)
    {
      *(v19 + 16) = 1;
    }

    else
    {
      do
      {
        cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(v1, v5);
        v5 += 72;
      }

      while (v5 != v6);
      __p = 0;
      v14 = 0;
      v15 = 0;
      cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync(v1, &__p);
      sub_100927EE4(&v16, &v12);
      v7 = v12;
      v12 = 0uLL;
      v8 = *(v19 + 8);
      *v19 = v7;
      if (v8)
      {
        sub_100004A34(v8);
      }

      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }

      *(v19 + 16) = 0;
      sub_100009970(&__p, v14);
    }

    __p = &v16;
    sub_10052B744(&__p);
  }

  else
  {
    *(v19 + 16) = 5;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_10052B4F4(&v11);
  return sub_1000049E0(&v10);
}

void sub_10052B478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_100009970(&__p, a14);
  __p = &a19;
  sub_10052B744(&__p);
  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_10052B4F4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052B4F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      sub_100521B2C(v2);
      operator delete();
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10052B560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && *(result + 24) && *(result + 56))
  {
    sub_10052B584();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10052B650(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E54F50;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 24);
  *(a2 + 24) = 0;
  sub_100521D6C(a1 + 56, a2 + 32);
  return a1;
}

void sub_10052B6E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052B744(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052B798(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10052B798(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = v3 - 3;
      sub_10052B818(&v5);
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 9;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_10052B818(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100520EA4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *sub_10052B86C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  sub_10052BB38((v1 + 8), &v13);
  v3 = v13;
  v4 = *(v13 + 8);
  *v13 = 0;
  *(v3 + 8) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(v2))
  {
    v15 = 0uLL;
    v16 = 0;
    ctu::cf::assign();
    *__p = v15;
    v12 = v16;
    v5 = *(v2 + 20);
    v15 = 0uLL;
    v16 = 0;
    (*(*v5 + 264))(&v15);
    if (v15 != *(&v15 + 1))
    {
      cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(v2, v15);
      memset(v10, 0, sizeof(v10));
      cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync(v2, v10);
      sub_100927B5C();
    }

    v6 = *(v2 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101773EEC(__p, v6);
    }

    *(v13 + 16) = 16;
    v10[0] = &v15;
    sub_10052B744(v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v13 + 16) = 5;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_10052BAC4(&v9);
  return sub_1000049E0(&v8);
}

void sub_10052BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100009970(&a14, a15);
  a14 = (v22 - 40);
  sub_10052B744(&a14);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  v24 = *(v22 - 48);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10052BAC4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052BAC4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 16));
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      sub_100521E6C(v2);
      operator delete();
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10052BB38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && *(result + 24) && *(result + 56))
  {
    sub_10052BB5C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10052BC28(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E54FA0;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 24);
  *(a2 + 24) = 0;
  sub_1005220AC(a1 + 56, a2 + 32);
  return a1;
}

void sub_10052BCBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052BD1C(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 256))
  {
    rest::PairedDeviceInfoList::getActiveDevice(buf, (v1 + 896));
    sub_100DB14E0(buf);
    (*(**(v1 + 128) + 680))(buf);
    v9 = 0;
    v2 = (*(**buf + 152))(*buf, &v9);
    sub_10001021C(&v9);
    if (v11)
    {
      sub_100004A34(v11);
    }

    v3 = *(v1 + 40);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I websheet dismiss", buf, 2u);
      }

      v6 = *(v1 + 256);
      v7 = (*v6 + 160);
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I websheet quit", buf, 2u);
      }

      v6 = *(v1 + 256);
      v7 = (*v6 + 176);
    }

    (*v7)(v6, v5);
  }

  else
  {
    v8 = *(v1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I no provisioning operation", buf, 2u);
    }
  }

  operator delete();
}

void sub_10052BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_10052BF90(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10052BF90(a1, *a2);
    sub_10052BF90(a1, *(a2 + 1));
    v4 = (a2 + 136);
    sub_100522C04(&v4);
    v4 = (a2 + 112);
    sub_100522C58(&v4);
    if (a2[80] == 1)
    {
      if (a2[111] < 0)
      {
        operator delete(*(a2 + 11));
      }

      a2[80] = 0;
    }

    if (a2[48] == 1 && a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t *sub_10052C03C(uint64_t a1, int *a2)
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

void sub_10052C130(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 136);
    sub_100522C04(&v3);
    v3 = (a2 + 112);
    sub_100522C58(&v3);
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 111) < 0)
      {
        operator delete(*(a2 + 88));
      }

      *(a2 + 80) = 0;
    }

    if (*(a2 + 48) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_10052C1D0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10052C228(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10052C228(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10052C2B0(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_10052C2B0(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10052C340();
  }

  return result;
}

void sub_10052C3C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10052C130(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10052C3E4(void *a1, uint64_t *a2)
{
  v4 = sub_10016E9C0(a1, a2);
  sub_10016E9C0(v4 + 32, (a2 + 4));
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_10052C4EC((a1 + 8), a2[8], a2[9], 0x8E38E38E38E38E39 * ((a2[9] - a2[8]) >> 4));
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  sub_10052C574((a1 + 11), a2[11], a2[12], 0xCF3CF3CF3CF3CF3DLL * ((a2[12] - a2[11]) >> 3));
  return a1;
}

void sub_10052C490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100522C58(va);
  if (*(v2 + 32) == 1)
  {
    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    *(v2 + 32) = 0;
  }

  if (*v2 == 1)
  {
    sub_101772D60();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052C4EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522348(result, a4);
  }

  return result;
}

void sub_10052C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100522C58(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10052C574(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522878(result, a4);
  }

  return result;
}

void sub_10052C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100522C04(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_10052C5FC(std::string *__dst, std::string *__str)
{
  v3 = __dst;
  if (__dst->__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(&__dst->__r_.__value_.__r.__words[1], __str);
    v4 = *(__str[1].__r_.__value_.__r.__words + 5);
    v3[1].__r_.__value_.__l.__size_ = __str[1].__r_.__value_.__r.__words[0];
    *(&v3[1].__r_.__value_.__r.__words[1] + 5) = v4;

    return std::string::operator=(v3 + 2, (__str + 40));
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      __dst = sub_100005F2C(&__dst->__r_.__value_.__s.__data_[8], __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      __dst[1].__r_.__value_.__r.__words[0] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__r.__words[1] = v5;
    }

    data = __str[1].__r_.__value_.__l.__data_;
    *(&v3[1].__r_.__value_.__r.__words[1] + 5) = *(__str[1].__r_.__value_.__r.__words + 5);
    v3[1].__r_.__value_.__l.__size_ = data;
    if (__str[2].__r_.__value_.__s.__data_[15] < 0)
    {
      __dst = sub_100005F2C(&v3[2], __str[1].__r_.__value_.__r.__words[2], __str[2].__r_.__value_.__r.__words[0]);
    }

    else
    {
      v7 = *&__str[1].__r_.__value_.__r.__words[2];
      v3[2].__r_.__value_.__r.__words[2] = __str[2].__r_.__value_.__l.__size_;
      *&v3[2].__r_.__value_.__l.__data_ = v7;
    }

    v3->__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

void sub_10052C6E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052C700(_BYTE *a1, char **a2)
{
  if (*a1 == 1)
  {

    sub_10052C760(a1, a2);
  }

  else
  {
    sub_10000501C(a1 + 8, *a2);
    *a1 = 1;
  }
}

double sub_10052C760(uint64_t a1, char **a2)
{
  sub_10000501C(&v4, *a2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10052C7B4(uint64_t a1, uint64_t a2)
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

void *sub_10052C8B8(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E54FF0;
  sub_10016F74C(a1 + 3, a2);
  return a1;
}

void sub_10052C934(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052C988(uint64_t a1)
{
  sub_1005230E0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void *sub_10052C9EC(void *a1)
{
  *a1 = off_101E55040;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10052CA4C(void *a1)
{
  *a1 = off_101E55040;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10052CB6C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10052CB8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E55040;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10052C7B4(a2 + 32, a1 + 32);
  v6 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10052CC10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052CC28(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10052CC80(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10052CCD4(void *a1, unsigned __int8 *a2)
{
  v33 = 0;
  *v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  sub_10052D458(&v21, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5 && a1[2])
    {
      v6 = a1[8];
      if (!v6)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773B44();
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v34[0] = 0;
        v34[1] = 0;
        *&v35 = 0;
        *(&v35 + 7) = 0;
        __p[0] = 0;
        __p[1] = 0;
        *&v37[0] = 0;
        BYTE8(v37[0]) = 0;
        sub_1005167B8((a1 + 4), 0);
        sub_1005230E0(v37 + 8);
        if (SBYTE7(v37[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v35) < 0)
        {
          operator delete(v34[0]);
        }

        goto LABEL_47;
      }

      if (v21 == 1)
      {
        if (v24 >= 0)
        {
          v8 = HIBYTE(v24);
        }

        else
        {
          v8 = v24;
        }

        v9 = *(v6 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v6 + 8);
        }

        if (v8 != v9 || (v24 >= 0 ? (v11 = &v23[1]) : (v11 = v23[1]), v10 >= 0 ? (v12 = a1[8]) : (v12 = *v6), memcmp(v11, v12, v8)))
        {
          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            if (v10 < 0)
            {
              v6 = *v6;
            }

            v13 = sub_10052D3B8(&v21);
            sub_101773F74(v6, v13, v34);
          }

          goto LABEL_46;
        }

        std::string::operator=((v6 + 32), v30);
        if (v21 == 1)
        {
          if (v33 == 1)
          {
            sub_1001696A4((a1[8] + 752), &v31[1]);
          }

          else
          {
            v14 = a1[8];
            if ((*(v14 + 392) & 1) == 0)
            {
              v38 = 0;
              v40 = 0u;
              memset(v37, 0, sizeof(v37));
              v35 = 0u;
              *__p = 0u;
              *v34 = 0u;
              v39 = &v40;
              v41 = 1;
              sub_10016DFC8(v14 + 56, v34);
              sub_10016E64C(v34);
              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsError::~ResultIsError;
                  ctu::ResultIsError::ResultIsError(exception);
                }

                else
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                  ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
                }

                __cxa_throw(exception, v20, v19);
              }
            }

            std::string::operator=((v14 + 56), &v31[1]);
          }

          *(a1[8] + 24) = 0;
          goto LABEL_46;
        }

        if (v21 == 2)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          v16 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v15);
LABEL_65:
          __cxa_throw(v15, v17, v16);
        }
      }

      else if (v21 == 2)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10052D318(&v21);
          v7 = asString();
          sub_101773FC0(v7, v34);
        }

LABEL_46:
        sub_1005167B8((a1 + 4), 1);
LABEL_47:
        sub_100004A34(v5);
        goto LABEL_48;
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
      goto LABEL_65;
    }
  }

  else
  {
    v5 = 0;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v34[0] = 0;
  v34[1] = 0;
  *&v35 = 0;
  *(&v35 + 7) = 0;
  __p[0] = 0;
  __p[1] = 0;
  *&v37[0] = 0;
  BYTE8(v37[0]) = 0;
  sub_1005167B8((a1 + 4), 0);
  sub_1005230E0(v37 + 8);
  if (SBYTE7(v37[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v5)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v21 == 1)
  {
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[1]);
    }

    if (SHIBYTE(v31[0]) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_10052D1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  __cxa_free_exception(v36);
  sub_100004A34(v35);
  if (a9 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052D24C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052D298(uint64_t a1, uint64_t a2)
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

unsigned __int8 *sub_10052D318(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v5 = &ctu::ResultIsNotError::~ResultIsNotError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

unsigned __int8 *sub_10052D3B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v5 = &ctu::ResultIsError::~ResultIsError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

unsigned __int8 *sub_10052D458(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    sub_10052D590(a1, a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_10052D4B0(a1, (a2 + 8));
  }

  return a1;
}

__n128 sub_10052D4B0(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_10052D5E4(a1 + 8, a2);
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = *a2;
    v3 = *(a2 + 8);
    *(a1 + 32) = *(a2 + 24);
    *(a1 + 16) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v4 = *(a2 + 32);
    *(a1 + 56) = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 64) = *(a2 + 56);
    v5 = *(a2 + 64);
    *(a1 + 88) = *(a2 + 80);
    *(a1 + 72) = v5;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v6 = *(a2 + 88);
    *(a1 + 112) = *(a2 + 104);
    *(a1 + 96) = v6;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    v7 = *(a2 + 112);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 120) = v7;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v8 = *(a2 + 136);
    *(a1 + 160) = *(a2 + 152);
    *(a1 + 144) = v8;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    result = *(a2 + 160);
    *(a1 + 184) = *(a2 + 176);
    *(a1 + 168) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a1 + 192) = *(a2 + 184);
  }

  return result;
}

unsigned __int8 *sub_10052D590(unsigned __int8 *result, _BYTE *a2)
{
  v3 = result;
  v4 = *result;
  if (v4 == 1)
  {
    result = sub_10011289C((result + 8));
LABEL_5:
    *v3 = 2;
    goto LABEL_6;
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v3[8] = *a2;
  return result;
}

uint64_t sub_10052D5E4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v7;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v9;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v10 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v10;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v11 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v11;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

void sub_10052D768(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E550D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10052D7C8(void *a1)
{
  *a1 = off_101E55120;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10052D838(void *a1)
{
  *a1 = off_101E55120;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

void sub_10052D978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E55120;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a2 + 32);
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_10052DA0C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10052DA74(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_10052DAD8(void *a1, unsigned __int8 *a2)
{
  v33 = 0;
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  sub_10052D458(&v21, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[2])
      {
LABEL_35:
        sub_100004A34(v6);
        goto LABEL_36;
      }

      v7 = a1[5];
      if (!v7)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773ADC();
        }

        goto LABEL_35;
      }

      if (v21 == 1)
      {
        if (v24 >= 0)
        {
          v9 = HIBYTE(v24);
        }

        else
        {
          v9 = v24;
        }

        v10 = *(v7 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v7 + 8);
        }

        if (v9 != v10 || (v24 >= 0 ? (v12 = &v23[1]) : (v12 = v23[1]), v11 >= 0 ? (v13 = v7) : (v13 = *v7), memcmp(v12, v13, v9)))
        {
          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            if (v11 < 0)
            {
              v7 = *v7;
            }

            v14 = sub_10052D3B8(&v21);
            sub_101773F74(v7, v14, v34);
          }

          goto LABEL_35;
        }

        std::string::operator=((v7 + 32), v30);
        if (v21 == 1)
        {
          if (v33 == 1)
          {
            sub_1001696A4((v7 + 752), &__p[1]);
          }

          else
          {
            if ((*(v7 + 392) & 1) == 0)
            {
              v35 = 0;
              v37 = 0u;
              memset(v34, 0, sizeof(v34));
              v36 = &v37;
              v38 = 1;
              sub_10016DFC8(v7 + 56, v34);
              sub_10016E64C(v34);
              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsError::~ResultIsError;
                  ctu::ResultIsError::ResultIsError(exception);
                }

                else
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                  ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
                }

                __cxa_throw(exception, v20, v19);
              }
            }

            std::string::operator=((v7 + 56), &__p[1]);
          }

          *(v7 + 24) = 0;
          goto LABEL_35;
        }

        if (v21 == 2)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          v16 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v15);
LABEL_53:
          __cxa_throw(v15, v17, v16);
        }
      }

      else if (v21 == 2)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10052D318(&v21);
          v8 = asString();
          sub_101773FF8(v8, v34);
        }

        goto LABEL_35;
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
      goto LABEL_53;
    }
  }

LABEL_36:
  if (v21 == 1)
  {
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_10052DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  __cxa_free_exception(v11);
  sub_100004A34(v10);
  if (a9 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052DF28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052DF74(uint64_t **a1)
{
  v1 = **a1;
  __p = 0;
  v10 = 0uLL;
  if (*(v1 + 920))
  {
    (*(**(v1 + 128) + 120))(v8);
    v11 = 0;
    v12 = 0uLL;
    ctu::cf::assign();
    __p = v11;
    *&v10 = v12;
    *(&v10 + 7) = *(&v12 + 7);
    HIBYTE(v10) = HIBYTE(v12);
    sub_100005978(v8);
  }

  v11 = 0;
  v12 = 0uLL;
  (*(**(v1 + 160) + 192))(&v11);
  memset(v8, 0, sizeof(v8));
  v7[0] = v8;
  v7[1] = &v11;
  v7[2] = v1;
  v6[0] = v1;
  v6[1] = &v11;
  v6[2] = v7;
  v2 = *(v1 + 360);
  if (v2 != *(v1 + 368))
  {
    sub_10052E1CC(v6, v2, 1uLL);
  }

  v3 = *(v1 + 544);
  v4 = *(v1 + 552);
  while (v3 != v4)
  {
    v5 = *(v3 + 176);
    if (v5 != *(v3 + 184))
    {
      sub_10052E1CC(v6, v5, 2uLL);
    }

    v3 += 216;
  }

  (*(**(v1 + 208) + 112))(*(v1 + 208), v8, &__p);
  v7[0] = v8;
  sub_10052EF38(v7);
  sub_10052EFDC(&v11, v12);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10052E140(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 33) < 0)
  {
    operator delete(*(v24 - 56));
  }

  sub_100005978(&a16);
  operator delete();
}

void sub_10052E1CC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 12) == 3)
  {
    v3 = a3;
    v5 = *a1;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    sub_100922314((a2 + 16), a3, &v98);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v6 = *(v5 + 304);
    v7 = *(v5 + 312);
    if (v6 == v7)
    {
      goto LABEL_50;
    }

    do
    {
      if (subscriber::isSimReady())
      {
        v8 = a1[1];
        v11 = *v8;
        v10 = (v8 + 1);
        v9 = v11;
        if (v11 != v10)
        {
          if (v100 >= 0)
          {
            v12 = HIBYTE(v100);
          }

          else
          {
            v12 = v99;
          }

          if (v100 >= 0)
          {
            v13 = &v98;
          }

          else
          {
            v13 = v98;
          }

          while (1)
          {
            v14 = *(v9 + 87);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(v9 + 9);
            }

            if (v14 == v12)
            {
              v16 = v15 >= 0 ? v9 + 4 : *(v9 + 8);
              if (!memcmp(v16, v13, v12))
              {
                v17 = *(v9 + 143);
                if (v17 >= 0)
                {
                  v18 = *(v9 + 143);
                }

                else
                {
                  v18 = *(v9 + 16);
                }

                v19 = *(v6 + 95);
                v20 = v19;
                if ((v19 & 0x80u) != 0)
                {
                  v19 = *(v6 + 80);
                }

                if (v18 == v19)
                {
                  v21 = v17 >= 0 ? (v9 + 120) : *(v9 + 15);
                  v22 = v20 >= 0 ? (v6 + 72) : *(v6 + 72);
                  if (!memcmp(v21, v22, v18) && *(v9 + 113) == v3 && (v9[7] & 0xFE) == 2)
                  {
                    break;
                  }
                }
              }
            }

            v23 = *(v9 + 1);
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
                v24 = *(v9 + 2);
                v25 = *v24 == v9;
                v9 = v24;
              }

              while (!v25);
            }

            v9 = v24;
            if (v24 == v10)
            {
              goto LABEL_48;
            }
          }
        }

        if (v9 != v10)
        {
          v26 = v96;
          if (v96 >= v97)
          {
            v28 = sub_1000053A0(&v95, v9 + 2);
          }

          else
          {
            if (*(v9 + 55) < 0)
            {
              sub_100005F2C(v96, *(v9 + 4), *(v9 + 5));
            }

            else
            {
              v27 = v9[2];
              v96[2] = *(v9 + 6);
              *v26 = v27;
            }

            v28 = v26 + 3;
          }

          v96 = v28;
        }
      }

LABEL_48:
      v6 += 168;
    }

    while (v6 != v7);
    v29 = v95;
    v30 = v96;
    if (v95 == v96)
    {
LABEL_50:
      memset(v107, 0, 24);
      v31 = a1[1];
      v34 = *v31;
      v32 = v31 + 1;
      v33 = v34;
      if (v34 != v32)
      {
        v35 = 0.0;
        while (1)
        {
          v36 = *(v33 + 87);
          if (v36 >= 0)
          {
            v37 = *(v33 + 87);
          }

          else
          {
            v37 = v33[9];
          }

          v38 = HIBYTE(v100);
          if (v100 < 0)
          {
            v38 = v99;
          }

          if (v37 != v38)
          {
            goto LABEL_73;
          }

          v39 = v36 >= 0 ? v33 + 8 : v33[8];
          v40 = v100 >= 0 ? &v98 : v98;
          if (memcmp(v39, v40, v37) || *(v33 + 113) != v3)
          {
            goto LABEL_73;
          }

          if ((*(v33 + 143) & 0x8000000000000000) != 0)
          {
            if (!v33[16])
            {
LABEL_70:
              if ((v33[14] & 0xFE) == 2)
              {
                v41 = *(v33 + 7);
                if (v41 > v35)
                {
                  std::string::operator=(v107, (v33 + 4));
                  v35 = v41;
                }
              }
            }
          }

          else if (!*(v33 + 143))
          {
            goto LABEL_70;
          }

LABEL_73:
          v42 = v33[1];
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v33[2];
              v25 = *v43 == v33;
              v33 = v43;
            }

            while (!v25);
          }

          v33 = v43;
          if (v43 == v32)
          {
            v44 = v107[23];
            v45 = *&v107[8];
            goto LABEL_81;
          }
        }
      }

      v45 = 0;
      v44 = 0;
LABEL_81:
      if ((v44 & 0x80u) == 0)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        v47 = v96;
        if (v96 >= v97)
        {
          v49 = sub_10016B30C(&v95, v107);
        }

        else
        {
          if ((v44 & 0x80) != 0)
          {
            sub_100005F2C(v96, *v107, v45);
          }

          else
          {
            v48 = *v107;
            v96[2] = *&v107[16];
            *v47 = v48;
          }

          v49 = v47 + 3;
          v96 = v47 + 3;
        }

        v96 = v49;
      }

      if ((v107[23] & 0x80000000) != 0)
      {
        operator delete(*v107);
      }

      v29 = v95;
      v30 = v96;
    }

    if (v29 == v30)
    {
      memset(v107, 0, 24);
      v50 = a1[1];
      v53 = *v50;
      v51 = v50 + 1;
      v52 = v53;
      if (v53 == v51)
      {
        v64 = 0;
        v63 = 0;
      }

      else
      {
        v54 = 0.0;
        do
        {
          v55 = *(v52 + 87);
          if (v55 >= 0)
          {
            v56 = *(v52 + 87);
          }

          else
          {
            v56 = v52[9];
          }

          v57 = HIBYTE(v100);
          if (v100 < 0)
          {
            v57 = v99;
          }

          if (v56 == v57)
          {
            v58 = v55 >= 0 ? v52 + 8 : v52[8];
            v59 = v100 >= 0 ? &v98 : v98;
            if (!memcmp(v58, v59, v56) && *(v52 + 113) == v3)
            {
              v60 = *(v52 + 7);
              if (v60 > v54)
              {
                std::string::operator=(v107, (v52 + 4));
                v54 = v60;
              }
            }
          }

          v61 = v52[1];
          if (v61)
          {
            do
            {
              v62 = v61;
              v61 = *v61;
            }

            while (v61);
          }

          else
          {
            do
            {
              v62 = v52[2];
              v25 = *v62 == v52;
              v52 = v62;
            }

            while (!v25);
          }

          v52 = v62;
        }

        while (v62 != v51);
        v63 = v107[23];
        v64 = *&v107[8];
      }

      if ((v63 & 0x80u) == 0)
      {
        v65 = v63;
      }

      else
      {
        v65 = v64;
      }

      if (v65)
      {
        v66 = v96;
        if (v96 >= v97)
        {
          v68 = sub_10016B30C(&v95, v107);
        }

        else
        {
          if ((v63 & 0x80) != 0)
          {
            sub_100005F2C(v96, *v107, v64);
          }

          else
          {
            v67 = *v107;
            v96[2] = *&v107[16];
            *v66 = v67;
          }

          v68 = v66 + 3;
          v96 = v66 + 3;
        }

        v96 = v68;
      }

      if ((v107[23] & 0x80000000) != 0)
      {
        operator delete(*v107);
      }

      v29 = v95;
      v30 = v96;
    }

    v69 = a1[2];
    v70 = v69[2];
    if (v29 == v30)
    {
      *&v108 = 0;
      memset(v107, 0, sizeof(v107));
      v107[0] = v3;
      v71 = *v69;
      v72 = (*v69)[1];
      if (v72 >= (*v69)[2])
      {
        v75 = sub_10052EB7C(*v69, v107);
      }

      else
      {
        *v72 = *v107;
        v73 = (v72 + 8);
        if ((v107[31] & 0x80000000) != 0)
        {
          sub_100005F2C(v73, *&v107[8], *&v107[16]);
        }

        else
        {
          v74 = *&v107[8];
          *(v72 + 24) = *&v107[24];
          *v73 = v74;
        }

        *(v72 + 32) = v108;
        v75 = v72 + 40;
        v71[1] = v72 + 40;
      }

      v71[1] = v75;
      if ((v107[31] & 0x80000000) != 0)
      {
        operator delete(*&v107[8]);
      }

      v29 = v95;
      v30 = v96;
    }

    if (v29 != v30)
    {
      while (1)
      {
        v76 = sub_1000E20F0(v69[1], v29);
        v102 = 0;
        memset(v101, 0, sizeof(v101));
        LOBYTE(v101[0]) = *(v76 + 57);
        BYTE1(v101[0]) = *(v76 + 56);
        if (*(v76 + 87) < 0)
        {
          v79 = *(v76 + 72);
          if (!v79)
          {
LABEL_174:
            LOWORD(v102) = 257;
            v111 = 0uLL;
            memset(v110, 0, sizeof(v110));
            v108 = 0uLL;
            v109 = 0uLL;
            memset(v107, 0, sizeof(v107));
            VinylInfo::findProfile();
            if (BYTE8(v111) == 1)
            {
              std::string::operator=(&v101[1], v110);
              if (BYTE8(v111))
              {
                sub_100E3A5D4(v107);
              }
            }

            goto LABEL_182;
          }

          LOWORD(v102) = 256;
          v78 = v70[38];
          v77 = v70[39];
          sub_100005F2C(__p, *(v76 + 64), v79);
        }

        else
        {
          if (!*(v76 + 87))
          {
            goto LABEL_174;
          }

          LOWORD(v102) = 256;
          v78 = v70[38];
          v77 = v70[39];
          *__p = *(v76 + 64);
          v105 = *(v76 + 80);
        }

        v80 = HIBYTE(v105);
        if (v78 == v77)
        {
          break;
        }

        if (v105 >= 0)
        {
          v81 = HIBYTE(v105);
        }

        else
        {
          v81 = __p[1];
        }

        if (v105 >= 0)
        {
          v82 = __p;
        }

        else
        {
          v82 = __p[0];
        }

        v83 = v78 + 72;
        while (1)
        {
          v84 = *(v83 + 23);
          v85 = v84;
          if ((v84 & 0x80u) != 0)
          {
            v84 = *(v83 + 8);
          }

          if (v84 == v81)
          {
            v86 = v85 >= 0 ? v83 : *v83;
            if (!memcmp(v86, v82, v81))
            {
              break;
            }
          }

          v87 = v83 + 96;
          v83 += 168;
          if (v87 == v77)
          {
            v78 = v77;
            goto LABEL_169;
          }
        }

        v78 = v83 - 72;
        if (v80 < 0)
        {
          goto LABEL_170;
        }

LABEL_171:
        if (v78 == v70[39])
        {
          goto LABEL_178;
        }

        v103 = 0;
        (*(*v70[16] + 120))(&v103);
        if (!v103)
        {
          sub_100005978(&v103);
LABEL_178:
          v88 = 0;
          v89 = 0;
          *(v106 + 7) = 0;
          v106[0] = 0;
          goto LABEL_179;
        }

        memset(v107, 0, 24);
        ctu::cf::assign();
        v106[0] = *&v107[8];
        v88 = *v107;
        *(v106 + 7) = *&v107[15];
        v89 = v107[23];
        sub_100005978(&v103);
LABEL_179:
        if (SHIBYTE(v101[3]) < 0)
        {
          operator delete(v101[1]);
        }

        v101[1] = v88;
        v101[2] = v106[0];
        *(&v101[2] + 7) = *(v106 + 7);
        HIBYTE(v101[3]) = v89;
LABEL_182:
        v90 = *v69;
        v91 = (*v69)[1];
        if (v91 >= (*v69)[2])
        {
          v94 = sub_10052EB7C(*v69, v101);
        }

        else
        {
          *v91 = v101[0];
          v92 = (v91 + 8);
          if (SHIBYTE(v101[3]) < 0)
          {
            sub_100005F2C(v92, v101[1], v101[2]);
          }

          else
          {
            v93 = *&v101[1];
            *(v91 + 24) = v101[3];
            *v92 = v93;
          }

          *(v91 + 32) = v102;
          v94 = v91 + 40;
          v90[1] = v91 + 40;
        }

        v90[1] = v94;
        if (SHIBYTE(v101[3]) < 0)
        {
          operator delete(v101[1]);
        }

        v29 += 3;
        if (v29 == v30)
        {
          goto LABEL_194;
        }
      }

LABEL_169:
      if ((v80 & 0x80) == 0)
      {
        goto LABEL_171;
      }

LABEL_170:
      operator delete(__p[0]);
      goto LABEL_171;
    }

LABEL_194:
    *v107 = &v95;
    sub_1000087B4(v107);
    if (SHIBYTE(v100) < 0)
    {
      operator delete(v98);
    }
  }
}