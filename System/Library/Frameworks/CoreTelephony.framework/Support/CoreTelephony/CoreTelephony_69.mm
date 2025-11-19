void sub_10046BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046C084(uint64_t a1, BOOL a2, BOOL a3, BOOL a4, BOOL a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v10 = ServiceMap;
  if (v11 < 0)
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
  v29 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_10:
  v33 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v33 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v33 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v33 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  v31 = xpc_BOOL_create(a3);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "is_bootstrap_active";
  sub_10000F688(&v29, &v31, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v31);
  v31 = 0;
  v27 = xpc_BOOL_create(a4);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "has_wifi";
  sub_10000F688(&v29, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_BOOL_create(a5);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "has_internet";
  sub_10000F688(&v29, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(a2);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "is_renewal";
  sub_10000F688(&v29, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v22 = v33;
  v23 = 0;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v22 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanPurchaseComplete", &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v33);
LABEL_30:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046C3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a20);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10046C42C()
{
  VinylSlotIdToInt();

  return sub_1007A0368();
}

BOOL sub_10046C458(uint64_t a1, int a2)
{
  VinylSlotIdToInt();
  if (a2)
  {

    return sub_1007A00F0();
  }

  else
  {

    return sub_1007A0B98();
  }
}

void sub_10046C4D8(uint64_t a1, int a2, BOOL a3, BOOL a4, BOOL a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v10 = ServiceMap;
  if (v11 < 0)
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
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_10:
  v36 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v36 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v36 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v36 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  sub_1006327E0(a2, &__p);
  if (v33 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  object = xpc_string_create(p_p);
  if (!object)
  {
    object = xpc_null_create();
  }

  v30[0] = &v36;
  v30[1] = "failure";
  sub_10000F688(v30, &object, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(object);
  object = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v28 = xpc_BOOL_create(a4);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  __p = &v36;
  v32 = "has_wifi";
  sub_10000F688(&__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(a5);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p = &v36;
  v32 = "has_internet";
  sub_10000F688(&__p, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_BOOL_create(a3);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p = &v36;
  v32 = "is_bootstrap_active";
  sub_10000F688(&__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v23 = v36;
  v24 = 0;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v23 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanFailure", &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v36);
LABEL_35:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046C8E8(uint64_t a1, uint64_t a2, int a3, int a4, char a5, char a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 16);
  }

  if ((a3 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (a4 == 2)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2 * (a4 == 1);
  }

  sub_1007A0814(__p, v10, v11, a5, a6);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10046C994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046C9B0(uint64_t a1, char a2)
{
  sub_10000501C(__p, "");
  sub_1007A0814(__p, 1, 0, a2, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10046CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046CA2C(uint64_t a1, int a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  __p[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_29;
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
    goto LABEL_29;
  }

LABEL_10:
  v23 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v23 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v23 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v23 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  sub_1006327E0(a2, __p);
  if (v20 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v21 = xpc_string_create(v16);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v18[0] = &v23;
  v18[1] = "failure";
  sub_10000F688(v18, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v17 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanFailure", &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v23);
LABEL_29:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046CC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 56));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046CCD0(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_50;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_50;
  }

LABEL_10:
  v35 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v35 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v35 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    xpc_retain(v18);
    goto LABEL_18;
  }

  v19 = xpc_null_create();
LABEL_17:
  v35 = v19;
LABEL_18:
  xpc_release(v18);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      goto LABEL_26;
    }

LABEL_23:
    object = xpc_string_create(a2);
    if (!object)
    {
      object = xpc_null_create();
    }

    __p[0] = &v35;
    __p[1] = "carrier_name";
    sub_10000F688(__p, &object, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(object);
    object = 0;
    goto LABEL_26;
  }

  if (a2[1])
  {
    a2 = *a2;
    goto LABEL_23;
  }

LABEL_26:
  if ((a3 - 1) >= 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  sub_1007A3D24(v20, __p);
  if (v30 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v31 = xpc_string_create(v21);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v27 = &v35;
  v28 = "flow_type";
  sub_10000F688(&v27, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (a4 == 2)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2 * (a4 == 1);
  }

  sub_1007A3D10(v22, __p);
  if (v30 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  v25 = xpc_string_create(v23);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v35;
  v28 = "plan_type";
  sub_10000F688(&v27, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v24 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterRemoteCellularPlanSignUpCallBackReceived", &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v35);
LABEL_50:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10046D040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10046D0AC(uint64_t a1, uint64_t a2, int a3, int a4, BOOL a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v10 = ServiceMap;
  if (v11 < 0)
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
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_49;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_49;
  }

LABEL_10:
  v41 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v41 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v41 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_17:
    v41 = v21;
    goto LABEL_18;
  }

  xpc_retain(v20);
LABEL_18:
  xpc_release(v20);
  if (*(a2 + 23) >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  object = xpc_string_create(v22);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p = &v41;
  v35 = "carrier_name";
  sub_10000F688(&__p, &object, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(object);
  object = 0;
  if (a3 == 2)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2 * (a3 == 1);
  }

  sub_1007A3D10(v23, &__p);
  if (v36 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v37 = xpc_string_create(p_p);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  v32 = &v41;
  v33 = "plan_type";
  sub_10000F688(&v32, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (a4 == 6)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2 * (a4 == 7);
  }

  sub_1007A3D38(v25, &__p);
  if (v36 >= 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  v30 = xpc_string_create(v26);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v32 = &v41;
  v33 = "prev_status";
  sub_10000F688(&v32, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v28 = xpc_BOOL_create(a5);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  __p = &v41;
  v35 = "did_released";
  sub_10000F688(&__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v27 = v41;
  v28 = 0;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v27 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanPendingProfileReleased", &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v41);
LABEL_49:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046D464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10046D4E8(uint64_t a1, void *a2, uint64_t a3)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100471C54(v31, 524552);
  v6 = v31[0];
  if (v31[0])
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
      *(v31[0] + 52) |= 2u;
      v8 = *(v6 + 16);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, a3);
    }

    v9 = a2[1];
    if (*a2 != v9)
    {
      v10 = (*a2 + 32);
      v11 = "set_plan_type";
      while (1)
      {
        v12 = v31[0];
        v13 = *(v31[0] + 36);
        v14 = *(v31[0] + 32);
        if (v14 >= v13)
        {
          if (v13 == *(v31[0] + 40))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v31[0] + 24), v13 + 1);
            v13 = *(v12 + 36);
          }

          *(v12 + 36) = v13 + 1;
          sub_1004716E8();
        }

        v15 = *(v31[0] + 24);
        *(v31[0] + 32) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = &v10[-2].__r_.__value_.__s.__data_[16];
        v18 = v10[-2].__r_.__value_.__s.__data_[16];
        v19 = v18 == 2 ? 3 : (2 * (v18 == 1));
        if ((awd::metrics::CommCenterCellularPlanType_IsValid(v19, v5) & 1) == 0)
        {
          break;
        }

        *(v16 + 32) |= 1u;
        *(v16 + 8) = v19;
        if ((v10[-2].__r_.__value_.__s.__data_[17] - 2) > 3u)
        {
          v21 = 1;
        }

        else
        {
          v21 = dword_101807D30[(v10[-2].__r_.__value_.__s.__data_[17] - 2)];
        }

        if (!awd::metrics::RemotePlanSubscriptionStatus_IsValid(v21, v20))
        {
          v27 = 6512;
          v11 = "set_subscription_status";
          v28 = "::awd::metrics::RemotePlanSubscriptionStatus_IsValid(value)";
LABEL_34:
          __assert_rtn(v11, "CCMetricsCP.pb.h", v27, v28);
        }

        v22 = *(v16 + 32);
        *(v16 + 12) = v21;
        *(v16 + 32) = v22 | 6;
        v23 = *(v16 + 16);
        if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v23, v10 - 1);
        if (v10->__r_.__value_.__s.__data_[1] == 1)
        {
          v24 = v10->__r_.__value_.__s.__data_[0];
          *(v16 + 32) |= 8u;
          *(v16 + 24) = v24;
        }

        v10 = (v10 + 40);
        if (v17 + 40 == v9)
        {
          return sub_100471D3C(v31);
        }
      }

      v27 = 6489;
      v28 = "::awd::metrics::CommCenterCellularPlanType_IsValid(value)";
      goto LABEL_34;
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v29, kCtLoggingSystemName, "cp.awd");
    v25 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v29 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CommCenterRemoteCellularPlanProfilesStatus metric is not collectable", &v29, 2u);
    }
  }

  return sub_100471D3C(v31);
}

void sub_10046D7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100471D3C(va);
  _Unwind_Resume(a1);
}

void sub_10046D7EC(uint64_t a1, char a2, uint64_t *a3, BOOL a4, unsigned int a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v10 = ServiceMap;
  if (v11 < 0)
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
  v30 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v30);
  if (!v15)
  {
    v17 = 0;
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_10:
  v34 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v34 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    xpc_retain(v20);
    goto LABEL_18;
  }

  v21 = xpc_null_create();
LABEL_17:
  v34 = v21;
LABEL_18:
  xpc_release(v20);
  if ((a2 - 2) > 3u)
  {
    v22 = 1;
  }

  else
  {
    v22 = qword_101807C70[(a2 - 2)];
  }

  v32 = xpc_int64_create(v22);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "subscription_status";
  sub_10000F688(&v30, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (!*(a3 + 23))
    {
      goto LABEL_31;
    }

LABEL_28:
    v28 = xpc_string_create(a3);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v30 = &v34;
    v31 = "carrier_name";
    sub_10000F688(&v30, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
    goto LABEL_31;
  }

  if (a3[1])
  {
    a3 = *a3;
    goto LABEL_28;
  }

LABEL_31:
  v26 = xpc_BOOL_create(a4);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "esim_modification_allowed";
  sub_10000F688(&v30, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(a5);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "device_subtype";
  sub_10000F688(&v30, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v23 = v34;
  v24 = 0;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v23 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "commCenterCellularPlanProfilesStatus", &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v34);
LABEL_39:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10046DB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a20);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046DBD4(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_101807C90[(a1 - 1)];
  }
}

uint64_t sub_10046DBFC(char a1)
{
  if (((a1 - 1) & 0xF8) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 - 1) + 1;
  }
}

uint64_t sub_10046DC10(uint64_t a1, uint64_t a2)
{
  VinylSlotIdToInt();
  v3 = *(a2 + 4);
  sub_10046DBFC(*(a2 + 5));
  sub_10046DBD4(v3);
  return sub_1007A12F4();
}

uint64_t sub_10046DD0C(uint64_t result)
{
  if (result >= 8)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10046DD18(int a1)
{
  if ((a1 - 1) < 7)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10046DD2C(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_101807CD8[(a1 - 1)];
  }
}

void sub_10046DD54(uint64_t a1, uint64_t a2)
{
  v3 = sub_10046DD0C(*(a2 + 24));
  if (*(a2 + 25) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (*(a2 + 25))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 26);
  v7 = *(a2 + 27);
  v8 = *(a2 + 28);
  v9 = *(a2 + 29);
  v10 = *(a2 + 30);
  v11 = *(a2 + 31);
  v12 = *(a2 + 36);
  v24 = *(a2 + 88);
  v25 = *(a2 + 44);
  if (*(a2 + 90) - 1 < 5)
  {
    v13 = (*(a2 + 90) - 1) + 1;
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  sub_10006F264(&v47, (a2 + 56));
  if (*(a2 + 91) - 1 < 3)
  {
    v14 = (*(a2 + 91) - 1) + 1;
  }

  else
  {
    v14 = 0;
  }

  v21 = *(a2 + 92);
  v22 = v14;
  v19 = *(a2 + 96);
  v20 = *(a2 + 93);
  sub_10006F264(&v44, (a2 + 104));
  v18 = v12;
  sub_10006F264(&v41, (a2 + 136));
  v17 = v10;
  v15 = sub_10046DD18(*(a2 + 232));
  sub_10006F264(&v38, (a2 + 240));
  v16 = *(a2 + 32);
  sub_10006F264(&v35, (a2 + 272));
  sub_10006F264(v32, (a2 + 304));
  sub_10006F264(v29, (a2 + 336));
  sub_10006F264(__p, (a2 + 368));
  sub_1007A17E4(a2, v3, v5, v6, v7, v8, v9, v17, v11, v18, v25, v24, SHIDWORD(v24), v23, &v47, v22, v21, v20, v19, &v44, &v41, a2 + 168, a2 + 184, a2 + 208, a2 + 216, v15, &v38, v16, &v35, v32, v29, __p);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }
}

void sub_10046E034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58)
{
  if (a44 == 1 && a43 < 0)
  {
    operator delete(__p);
  }

  if (a51 == 1 && a50 < 0)
  {
    operator delete(a45);
  }

  if (a58 == 1 && a57 < 0)
  {
    operator delete(a52);
  }

  if (*(v58 - 224) == 1 && *(v58 - 225) < 0)
  {
    operator delete(*(v58 - 248));
  }

  if (*(v58 - 192) == 1 && *(v58 - 193) < 0)
  {
    operator delete(*(v58 - 216));
  }

  if (*(v58 - 160) == 1 && *(v58 - 161) < 0)
  {
    operator delete(*(v58 - 184));
  }

  if (*(v58 - 128) == 1 && *(v58 - 129) < 0)
  {
    operator delete(*(v58 - 152));
  }

  if (*(v58 - 96) == 1 && *(v58 - 97) < 0)
  {
    operator delete(*(v58 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_10046E164(uint64_t a1, uint64_t a2)
{
  v52 = 0u;
  v53 = 0u;
  if (*(a2 + 68) == 1)
  {
    v3 = sub_100649C94(*(a2 + 67));
    sub_10000501C(&v50, v3);
    if (BYTE8(v53) == 1)
    {
      if (SBYTE7(v53) < 0)
      {
        operator delete(v52);
      }

      v52 = v50;
      *&v53 = v51;
    }

    else
    {
      v52 = v50;
      *&v53 = v51;
      BYTE8(v53) = 1;
    }
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  v6 = *(a2 + 63);
  v7 = *(a2 + 66);
  v25 = *(a2 + 65);
  sub_10006F264(&v47, &v52);
  v8 = *(a2 + 56);
  v9 = *(a2 + 57);
  v10 = *(a2 + 58);
  v11 = *(a2 + 59);
  if (*(a2 + 69) - 1 < 3)
  {
    v12 = (*(a2 + 69) - 1) + 1;
  }

  else
  {
    v12 = 0;
  }

  sub_10006F264(&v44, (a2 + 72));
  v24 = v12;
  v22 = *(a2 + 112);
  v23 = *(a2 + 104);
  sub_10006F264(&v41, (a2 + 120));
  v19 = v10;
  v20 = v9;
  v21 = v8;
  v17 = *(a2 + 160);
  v18 = *(a2 + 152);
  v13 = *(a2 + 168);
  v14 = sub_10046DD18(*(a2 + 176));
  sub_10006F264(v38, (a2 + 184));
  v15 = *(a2 + 61);
  v16 = *(a2 + 62);
  sub_10006F264(v35, (a2 + 216));
  sub_10006F264(v32, (a2 + 248));
  sub_10006F264(v29, (a2 + 280));
  sub_10006F264(__p, (a2 + 312));
  sub_1007A2508(a2, &v47, a2 + 32, v21, v20, v19, v11, v5 & v6 & 1, v7 & v25 & 1, v4 | ((v4 != 0) << 32), v24, &v44, v23, v22, &v41, v18, v17, v13, v14, v38, v15, v16, v35, v32, v29, __p);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
  {
    operator delete(v52);
  }
}

void sub_10046E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a42 == 1 && a41 < 0)
  {
    operator delete(__p);
  }

  if (a49 == 1 && a48 < 0)
  {
    operator delete(a43);
  }

  if (a56 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  if (a70 == 1 && a69 < 0)
  {
    operator delete(a64);
  }

  if (*(v70 - 224) == 1 && *(v70 - 225) < 0)
  {
    operator delete(*(v70 - 248));
  }

  if (*(v70 - 192) == 1 && *(v70 - 193) < 0)
  {
    operator delete(*(v70 - 216));
  }

  if (*(v70 - 160) == 1 && *(v70 - 161) < 0)
  {
    operator delete(*(v70 - 184));
  }

  if (*(v70 - 104) == 1 && *(v70 - 105) < 0)
  {
    operator delete(*(v70 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10046DD0C(a3);

  return sub_1007A3440();
}

void sub_10046E648(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v52 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v52);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_68;
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
    goto LABEL_68;
  }

LABEL_10:
  v56 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v56 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v56 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v56 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v54 = xpc_BOOL_create(*a2);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "in_buddy";
  sub_10000F688(&v52, &v54, &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  v50 = xpc_int64_create(*(a2 + 4));
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "transferable_plans";
  sub_10000F688(&v52, &v50, &v51);
  xpc_release(v51);
  v51 = 0;
  xpc_release(v50);
  v50 = 0;
  v48 = xpc_int64_create(*(a2 + 8));
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_transferable_plans";
  sub_10000F688(&v52, &v48, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(v48);
  v48 = 0;
  v46 = xpc_int64_create(*(a2 + 12));
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "als_plans";
  sub_10000F688(&v52, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_int64_create(*(a2 + 16));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_als_plans";
  sub_10000F688(&v52, &v44, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v44);
  v44 = 0;
  v42 = xpc_int64_create(*(a2 + 20));
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "oda_plans";
  sub_10000F688(&v52, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  v40 = xpc_int64_create(*(a2 + 24));
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "source_devices_count";
  sub_10000F688(&v52, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  v38 = xpc_int64_create(*(a2 + 28));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_source_devices_count";
  sub_10000F688(&v52, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (*(a2 + 55) >= 0)
  {
    v16 = (a2 + 32);
  }

  else
  {
    v16 = *(a2 + 32);
  }

  v36 = xpc_string_create(v16);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "transferable_plans_carriers";
  sub_10000F688(&v52, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  if (*(a2 + 79) >= 0)
  {
    v17 = (a2 + 56);
  }

  else
  {
    v17 = *(a2 + 56);
  }

  v34 = xpc_string_create(v17);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_transferable_plans_carriers";
  sub_10000F688(&v52, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  if (*(a2 + 103) >= 0)
  {
    v18 = (a2 + 80);
  }

  else
  {
    v18 = *(a2 + 80);
  }

  v32 = xpc_string_create(v18);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "als_plans_carriers";
  sub_10000F688(&v52, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  if (*(a2 + 127) >= 0)
  {
    v19 = (a2 + 104);
  }

  else
  {
    v19 = *(a2 + 104);
  }

  v30 = xpc_string_create(v19);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_als_plans_carriers";
  sub_10000F688(&v52, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if (*(a2 + 151) >= 0)
  {
    v20 = (a2 + 128);
  }

  else
  {
    v20 = *(a2 + 128);
  }

  v28 = xpc_string_create(v20);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "oda_plans_carriers";
  sub_10000F688(&v52, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v23 = *(a2 + 152);
  v22 = a2 + 152;
  v21 = v23;
  if (*(v22 + 23) >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v26 = xpc_string_create(v24);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v52 = &v56;
  v53 = "selected_oda_plans_carriers";
  sub_10000F688(&v52, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v25 = v56;
  v26 = 0;
  if (v56)
  {
    xpc_retain(v56);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanSimSetupUsage", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v56);
LABEL_68:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046ED08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 72));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046EDF8(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v21 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v21);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_28;
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
    goto LABEL_28;
  }

LABEL_10:
  v25 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v25 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v25 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v23 = xpc_BOOL_create(*a2);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "success";
  sub_10000F688(&v21, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  v19 = xpc_BOOL_create(*(a2 + 1));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "skipped";
  sub_10000F688(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_int64_create(*(a2 + 4));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "duration";
  sub_10000F688(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v16 = v25;
  v17 = 0;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v16 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanAutoReconnectionDetails", &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v25);
LABEL_28:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10046F0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 56));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046F124(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v29 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v29);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_10:
  v33 = 0;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v15;
  if (v15)
  {
    v33 = v15;
  }

  else
  {
    v16 = xpc_null_create();
    v33 = v16;
    if (!v16)
    {
      v17 = xpc_null_create();
      v16 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v16) != &_xpc_type_dictionary)
  {
    v17 = xpc_null_create();
LABEL_17:
    v33 = v17;
    goto LABEL_18;
  }

  xpc_retain(v16);
LABEL_18:
  xpc_release(v16);
  v31 = xpc_int64_create(*a2);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_reasons";
  sub_10000F688(&v29, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  v27 = xpc_int64_create(a2[1]);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_type";
  sub_10000F688(&v29, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_BOOL_create(*(a2 + 8));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "result";
  sub_10000F688(&v29, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(*(a2 + 9));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "isBlocklisting";
  sub_10000F688(&v29, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_int64_create(a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "upload_count";
  sub_10000F688(&v29, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_int64_create(a2[3]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "error_code";
  sub_10000F688(&v29, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v18 = v33;
  v19 = 0;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v18 = xpc_null_create();
  }

  (*(*v13 + 16))(v13, "commCenterCellularPlanCloudUploadDetails", &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v33);
LABEL_34:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10046F4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 72));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10046F57C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_47;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_47;
  }

LABEL_10:
  v36 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v36 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v36 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_17:
    v36 = v19;
    goto LABEL_18;
  }

  xpc_retain(v18);
LABEL_18:
  xpc_release(v18);
  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  object = xpc_string_create(v20);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p[0] = &v36;
  __p[1] = "carrier_name";
  sub_10000F688(__p, &object, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(object);
  object = 0;
  if (a3 == 2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2 * (a3 == 1);
  }

  sub_1007A3D10(v21, __p);
  if (v31 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  v32 = xpc_string_create(v22);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v28 = &v36;
  v29 = "plan_type";
  sub_10000F688(&v28, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a4 - 1) > 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_101807D24[(a4 - 1)];
  }

  sub_1007A3D4C(v23, __p);
  if (v31 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v26 = xpc_string_create(v24);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28 = &v36;
  v29 = "notification_type";
  sub_10000F688(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterCellularPlanCarrierPushNotification", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v36);
LABEL_47:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10046F8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046F960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v24 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v24);
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
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  (*(*v16 + 256))(v22, v16);
  if (v23 < 0)
  {
    v19 = v22[1] == 6 && *v22[0] == 1869107305 && *(v22[0] + 2) == 25966;
    operator delete(v22[0]);
    if (v17)
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_100004A34(v15);
    goto LABEL_31;
  }

  if (v23 == 6)
  {
    v19 = LODWORD(v22[0]) == 1869107305 && WORD2(v22[0]) == 25966;
    if (v17)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v19)
  {
    sub_10046DD2C(*a7);
  }

  return sub_1007A0F64();
}

void sub_10046FB94(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046FBB0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
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
  v37 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v37);
  if (!v19)
  {
    v21 = 0;
LABEL_9:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
      goto LABEL_64;
    }

    goto LABEL_10;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_10:
  v41 = 0;
  v23 = xpc_dictionary_create(0, 0, 0);
  v24 = v23;
  if (v23)
  {
    v41 = v23;
  }

  else
  {
    v24 = xpc_null_create();
    v41 = v24;
    if (!v24)
    {
      v25 = xpc_null_create();
      v24 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v24) == &_xpc_type_dictionary)
  {
    xpc_retain(v24);
    goto LABEL_18;
  }

  v25 = xpc_null_create();
LABEL_17:
  v41 = v25;
LABEL_18:
  xpc_release(v24);
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_26;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_26;
  }

  object = xpc_string_create(a2);
  if (!object)
  {
    object = xpc_null_create();
  }

  v37 = &v41;
  v38 = "action";
  sub_10000F688(&v37, &object, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(object);
  object = 0;
LABEL_26:
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_34;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_34;
  }

  v35 = xpc_string_create(a3);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "carrier_name";
  sub_10000F688(&v37, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
LABEL_34:
  v33 = xpc_uint64_create(a4);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "daysSinceNotification";
  sub_10000F688(&v37, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  if (*(a5 + 23) < 0)
  {
    if (!a5[1])
    {
      goto LABEL_44;
    }

    a5 = *a5;
  }

  else if (!*(a5 + 23))
  {
    goto LABEL_44;
  }

  v31 = xpc_string_create(a5);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "eventResult";
  sub_10000F688(&v37, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
LABEL_44:
  if (*(a6 + 23) < 0)
  {
    if (!a6[1])
    {
      goto LABEL_52;
    }

    a6 = *a6;
  }

  else if (!*(a6 + 23))
  {
    goto LABEL_52;
  }

  v29 = xpc_string_create(a6);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v37 = &v41;
  v38 = "eventType";
  sub_10000F688(&v37, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
LABEL_52:
  if ((*(a7 + 23) & 0x80000000) == 0)
  {
    if (!*(a7 + 23))
    {
      goto LABEL_60;
    }

LABEL_57:
    v27 = xpc_string_create(a7);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    v37 = &v41;
    v38 = "notificationResult";
    sub_10000F688(&v37, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
    goto LABEL_60;
  }

  if (a7[1])
  {
    a7 = *a7;
    goto LABEL_57;
  }

LABEL_60:
  v26 = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v26 = xpc_null_create();
  }

  (*(*v21 + 16))(v21, "commCenterCellularPlanInstallReplace", &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v41);
LABEL_64:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

void sub_100470060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 88));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004700B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 24);
  if (v4 == 1)
  {
    v5 = *(a2 + 104);
    v6 = v5 < v3;
    v7 = v5 - v3;
    if (v6)
    {
      v8 = 255;
    }

    else
    {
      v8 = v7;
    }

    if (v6)
    {
      v9 = -256;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v15 = *(a2 + 64);
  v14 = *(a2 + 72);
  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v16 = *(a2 + 26);
  v17 = *(a2 + 112);
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v19 = ServiceMap;
  if ((v20 & 0x8000000000000000) != 0)
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

  std::mutex::lock(ServiceMap);
  v56 = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &v56);
  if (!v24)
  {
    v26 = 0;
LABEL_17:
    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_18;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
  if (!v26)
  {
    goto LABEL_64;
  }

LABEL_18:
  v60[0] = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v60[0] = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v60[0] = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_25;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_26;
  }

  v30 = xpc_null_create();
LABEL_25:
  v60[0] = v30;
LABEL_26:
  xpc_release(v29);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v31 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_34;
    }

LABEL_31:
    v58 = xpc_string_create(v31);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    v56 = v60;
    v57 = "carrier_name";
    sub_10000F688(&v56, &v58, &v59);
    xpc_release(v59);
    v59 = 0;
    xpc_release(v58);
    v58 = 0;
    goto LABEL_34;
  }

  if (*(a2 + 8))
  {
    v31 = *a2;
    goto LABEL_31;
  }

LABEL_34:
  v54 = xpc_BOOL_create(*(a2 + 24));
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v56 = v60;
  v57 = "is_enabled";
  sub_10000F688(&v56, &v54, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v54);
  v54 = 0;
  v32 = sub_10046DD0C(*(a2 + 27));
  v52 = xpc_int64_create(v32);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  v56 = v60;
  v57 = "transfer_type";
  sub_10000F688(&v56, &v52, &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v52);
  v52 = 0;
  v50 = xpc_uint64_create((v11 - v10));
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  v56 = v60;
  v57 = "ta_duration";
  sub_10000F688(&v56, &v50, &v51);
  xpc_release(v51);
  v51 = 0;
  xpc_release(v50);
  v50 = 0;
  v48 = xpc_uint64_create((v12 - v13));
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  v56 = v60;
  v57 = "ta_via_webservice_duration";
  sub_10000F688(&v56, &v48, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(v48);
  v48 = 0;
  v46 = xpc_uint64_create((v14 - v15));
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  v56 = v60;
  v57 = "tss_duration";
  sub_10000F688(&v56, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_BOOL_create(*(a2 + 26));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v56 = v60;
  v57 = "used_discover_service";
  sub_10000F688(&v56, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (v16)
  {
    v42 = xpc_uint64_create((v34 - v33));
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    v56 = v60;
    v57 = "als_duration";
    sub_10000F688(&v56, &v42, &v43);
    xpc_release(v43);
    v43 = 0;
    xpc_release(v42);
    v42 = 0;
  }

  if (v17 != 0.0)
  {
    v40 = xpc_uint64_create((v34 - v17));
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    v56 = v60;
    v57 = "websheet_duration";
    sub_10000F688(&v56, &v40, &v41);
    xpc_release(v41);
    v41 = 0;
    xpc_release(v40);
    v40 = 0;
  }

  v38 = xpc_uint64_create((v3 - v34));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v56 = v60;
  v57 = "fetch_duration";
  sub_10000F688(&v56, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (v4)
  {
    v36 = xpc_uint64_create(v9 | v8);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    v56 = v60;
    v57 = "service_up_duration";
    sub_10000F688(&v56, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v36);
    v36 = 0;
  }

  v35 = v60[0];
  if (v60[0])
  {
    xpc_retain(v60[0]);
  }

  else
  {
    v35 = xpc_null_create();
  }

  (*(*v26 + 16))(v26, "commCenterCellularPlanTransferDurations", &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v60[0]);
LABEL_64:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }
}

void sub_100470730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v14 - 160));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1004707D4(uint64_t a1, uint64_t a2, BOOL a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v27 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_10:
  v31 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v31 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_17:
    v31 = v19;
    goto LABEL_18;
  }

  xpc_retain(v18);
LABEL_18:
  xpc_release(v18);
  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v29 = xpc_string_create(v20);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "InstallType";
  sub_10000F688(&v27, &v29, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v29);
  v29 = 0;
  v25 = xpc_BOOL_create(a3);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "ReceiptSent";
  sub_10000F688(&v27, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if (*(a4 + 23) >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  v23 = xpc_string_create(v21);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "Reason";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v22 = v31;
  v23 = 0;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v22 = xpc_null_create();
  }

  (*(*v15 + 16))(v15, "commCenterCellularPlanInstallReceipt", &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v31);
LABEL_34:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_100470ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(a18);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100470B28(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v17[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v17);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_24;
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
    goto LABEL_24;
  }

LABEL_10:
  v20 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v20 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v20 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  v18 = xpc_uint64_create(a2);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v17[0] = &v20;
  v17[1] = "ManateeAccessDurationSeconds";
  sub_10000F688(v17, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v16 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanManateeAccessDuration", &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v20);
LABEL_24:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_100470D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100470D98(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v27 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v27);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_38;
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
    goto LABEL_38;
  }

LABEL_10:
  v31 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v31 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_17:
    v31 = v15;
    goto LABEL_18;
  }

  xpc_retain(v14);
LABEL_18:
  xpc_release(v14);
  if (*a2)
  {
    v16 = "Buddy";
  }

  else
  {
    v16 = "Postbuddy";
  }

  v29 = xpc_string_create(v16);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "buddyState";
  sub_10000F688(&v27, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  if (*(a2 + 31) >= 0)
  {
    v17 = (a2 + 8);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v25 = xpc_string_create(v17);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "carrierName";
  sub_10000F688(&v27, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_int64_create(*(a2 + 32));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupType";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_int64_create(*(a2 + 36));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupResult";
  sub_10000F688(&v27, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_int64_create(*(a2 + 40));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "setupDuration";
  sub_10000F688(&v27, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v18 = v31;
  v19 = 0;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v18 = xpc_null_create();
  }

  (*(*v11 + 16))(v11, "commCenterCellularPlanSetupTime", &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v31);
LABEL_38:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_100471128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 56));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004711AC(uint64_t a1, BOOL a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
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
  v33 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v33);
  if (!v17)
  {
    v19 = 0;
LABEL_9:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_10:
  v37 = 0;
  v21 = xpc_dictionary_create(0, 0, 0);
  v22 = v21;
  if (v21)
  {
    v37 = v21;
  }

  else
  {
    v22 = xpc_null_create();
    v37 = v22;
    if (!v22)
    {
      v23 = xpc_null_create();
      v22 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v22) != &_xpc_type_dictionary)
  {
    v23 = xpc_null_create();
LABEL_17:
    v37 = v23;
    goto LABEL_18;
  }

  xpc_retain(v22);
LABEL_18:
  xpc_release(v22);
  v35 = xpc_BOOL_create(a2);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "dynamicBootstrap";
  sub_10000F688(&v33, &v35, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v35);
  v35 = 0;
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  v31 = xpc_string_create(a3);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "registrationStatus";
  sub_10000F688(&v33, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v29 = xpc_string_create(a4);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "roamingStatus";
  sub_10000F688(&v33, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  if (a5[23] < 0)
  {
    a5 = *a5;
  }

  v27 = xpc_string_create(a5);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "internetStatus";
  sub_10000F688(&v33, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  if (a6[23] < 0)
  {
    a6 = *a6;
  }

  v25 = xpc_string_create(a6);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v33 = &v37;
  v34 = "buddyState";
  sub_10000F688(&v33, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v24 = v37;
  v25 = 0;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v24 = xpc_null_create();
  }

  (*(*v19 + 16))(v19, "commCenterBootstrapAssertion", &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v37);
LABEL_40:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_100471564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 88));
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1004715EC(void *a1)
{
  sub_10047174C(a1);

  operator delete();
}

void *sub_100471688(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  *(__dst + 25) = *(a2 + 25);
  return __dst;
}

void sub_10047174C(void *a1)
{
  *a1 = off_101E4E6B8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  TMKXPCServer.shutdown()();
}

uint64_t sub_1004717B4(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_10047189C(uint64_t *a1)
{
  sub_1004718F8(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_1004718F8(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_100471970(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100471970(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 52))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 52) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100471A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100471A98(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100471B24(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100471B24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100471B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100471BB8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = objc_retainBlock(*(a2 + 48));
  a1[6] = result;
  return result;
}

void sub_100471BFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_100471C54(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100471D3C(uint64_t *a1)
{
  sub_100471D98(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_100471D98(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_100471E10(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100471E10(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 52))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 52) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100471EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100471F38()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sub_100471F60(NSObject ***a1)
{
  v2 = a1[1];
  v3 = **a1;
  result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    v7 = "#E lock: fPrefs nullptr !";
    v8 = v3;
    v9 = 2;
    goto LABEL_18;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I lockPreferences start...", &v14, 2u);
  }

  if (SCPreferencesLock(a1[1], 1u))
  {
    v5 = 0;
LABEL_6:
    v6 = **a1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I lockPreferences complete (attempt %u)", &v14, 8u);
    }

    result = 1;
    *(a1 + 16) = 1;
    return result;
  }

  v10 = 1;
  while (SCError() == 3005)
  {
    SCPreferencesSynchronize(a1[1]);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v5 = 1;
    v10 = 0;
    if (SCPreferencesLock(a1[1], 1u))
    {
      goto LABEL_6;
    }
  }

  v11 = **a1;
  result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = SCError();
    v13 = SCErrorString(v12);
    v14 = 136446210;
    v15 = v13;
    v7 = "#E Unable to lock SCPreferences: %{public}s";
    v8 = v11;
    v9 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
    return 0;
  }

  return result;
}

BOOL sub_100472128(NSObject ***a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v7 = **a1;
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    v8 = "#E apply: fPrefs nullptr !";
    v9 = v7;
    v10 = 2;
    goto LABEL_16;
  }

  v3 = SCPreferencesCommitChanges(v2);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v11 = SCError();
    v14 = 136446210;
    v15 = SCErrorString(v11);
    v8 = "#E SCPreferencesCommitChanges failed with %{public}s";
LABEL_15:
    v9 = v4;
    v10 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    return 0;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SCPreferencesCommitChanges succeeded", &v14, 2u);
  }

  v6 = SCPreferencesApplyChanges(a1[1]);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!result)
    {
      return result;
    }

    v12 = SCError();
    v13 = SCErrorString(v12);
    v14 = 136446210;
    v15 = v13;
    v8 = "#E SCPreferencesApplyChanges failed with %{public}s";
    goto LABEL_15;
  }

  if (result)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SCPreferencesApplyChanges succeeded", &v14, 2u);
  }

  return 1;
}

BOOL sub_1004722E4(NSObject ***a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v6 = **a1;
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v11) = 0;
    v7 = "#E unlock: fPrefs nullptr !";
    v8 = v6;
    v9 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v3 = SCPreferencesUnlock(v2);
  v4 = **a1;
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    v10 = SCError();
    v11 = 136446210;
    v12 = SCErrorString(v10);
    v7 = "#E Unable to unlock SCPreferences: %{public}s";
    v8 = v4;
    v9 = 12;
    goto LABEL_11;
  }

  if (result)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I unlockPreferences complete", &v11, 2u);
  }

  *(a1 + 16) = 0;
  return 1;
}

void sub_1004724C4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1004725F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100472664(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: bootstrap ...", buf, 2u);
  }

  sub_100473C84(a1);
  *(a1 + 416) = 1;
  *(a1 + 608) = 2;
  (*(*a1 + 24))(a1, a1 + 272, a1 + 276, a1 + 280, a1 + 284);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Created PDP manager", v4, 2u);
  }
}

void sub_100472754(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  if (*a2 && (v4 = *(*a2 + 8)) != 0)
  {
    v5 = SCNetworkSetCopyCurrent(v4);
    *a3 = v5;
    v8[0] = 0;
    sub_1004865C4(v8);
    if (!v5)
    {
      Default = _SCNetworkSetCreateDefault();
      *a3 = Default;
      v8[0] = 0;
      sub_1004865C4(v8);
      if (Default)
      {
        SCNetworkSetEstablishDefaultConfiguration();
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E copyNetworkSet: fPrefs nullptr !", v8, 2u);
    }
  }
}

const void **sub_100472844@<X0>(uint64_t a1@<X0>, SCNetworkSetRef *a2@<X1>, void *a3@<X8>)
{
  cf1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (cf1)
  {
    v5 = SCNetworkSetCopyServices(*a2);
    theArray = v5;
    if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        if (Interface)
        {
          BSDName = SCNetworkInterfaceGetBSDName(Interface);
          if (BSDName)
          {
            if (CFEqual(cf1, BSDName))
            {
              break;
            }
          }
        }

        if (Count == ++v7)
        {
          goto LABEL_9;
        }
      }

      sub_100486AFC(a3, ValueAtIndex);
    }

    else
    {
LABEL_9:
      *a3 = 0;
    }

    sub_100010250(&theArray);
  }

  else
  {
    *a3 = 0;
  }

  return sub_100005978(&cf1);
}

void sub_100472938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100010250(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_100472968(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2 && *(*a2 + 8))
  {
    v5 = a2[1];
    v11[0] = *a2;
    v11[1] = v5;
    cf[0] = 0;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100472754(a1, v11, cf);
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = cf[0];
    if (cf[0])
    {
      *a3 = 0;
      v9 = v6;
      CFRetain(v6);
      sub_100472844(a1, &v9, a3);
      sub_1004865C4(&v9);
    }

    else
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I copyServiceForUnit: cannot copy network set", buf, 2u);
      }

      *a3 = 0;
    }

    sub_1004865C4(cf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E copyServiceForUnit: no SCPreferencesRef", cf, 2u);
    }

    *a3 = 0;
  }
}

void sub_100472AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1004865C4(va);
  sub_1004865C4(va1);
  _Unwind_Resume(a1);
}

const void **sub_100472AD4@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  cf2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (!cf2)
  {
    return sub_100005978(&cf2);
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  v25 = NetworkServiceEntity;
  if (!NetworkServiceEntity)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771918();
    }

    goto LABEL_34;
  }

  values = NetworkServiceEntity;
  v5 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v23 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017718E4();
    }

    goto LABEL_33;
  }

  v6 = SCDynamicStoreCopyMultiple(0, 0, v5);
  theDict = v6;
  if (!v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017718B0();
    }

    goto LABEL_32;
  }

  Count = CFDictionaryGetCount(v6);
  v8 = Count;
  if (Count < 1)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Found no interfaces", buf, 2u);
    }

    goto LABEL_32;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  if (Count < 0x11)
  {
    Typed = buf;
    v10 = v27;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
    v10 = CFAllocatorAllocateTyped();
  }

  CFDictionaryGetKeysAndValues(theDict, Typed, v10);
  ptr = Typed;
  v12 = 0;
  while (1)
  {
    v13 = CFGetTypeID(v10[v12]);
    if (v13 != CFDictionaryGetTypeID())
    {
      goto LABEL_25;
    }

    Value = CFDictionaryGetValue(v10[v12], kSCPropNetInterfaceType);
    if (!Value)
    {
      goto LABEL_25;
    }

    if (!CFEqual(Value, @"com.apple.CommCenter"))
    {
      goto LABEL_25;
    }

    v15 = CFDictionaryGetValue(v10[v12], kSCPropNetInterfaceDeviceName);
    if (!v15 || !CFEqual(v15, cf2))
    {
      goto LABEL_25;
    }

    theArray = 0;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, ptr[v12], @"/");
    theArray = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings)
    {
      break;
    }

    sub_100010250(&theArray);
LABEL_25:
    if (v8 == ++v12)
    {
      goto LABEL_26;
    }
  }

  if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 3);
    sub_10021D11C(a2, &ValueAtIndex);
  }

  sub_100010250(&theArray);
LABEL_26:
  if (!*a2)
  {
    v19 = theDict;
    if (theDict)
    {
      CFRetain(theDict);
    }

    sub_100472F48(a1, "serviceID: if dict: ", &v19);
    sub_10001021C(&v19);
  }

  if (ptr != buf)
  {
    CFAllocatorDeallocate(kCFAllocatorDefault, ptr);
    CFAllocatorDeallocate(kCFAllocatorDefault, v10);
  }

LABEL_32:
  sub_10001021C(&theDict);
LABEL_33:
  sub_100010250(&v23);
LABEL_34:
  sub_100005978(&v25);
  return sub_100005978(&cf2);
}

void sub_100472EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  sub_100010250(va);
  sub_10001021C(va1);
  sub_100010250(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  sub_100005978(v5);
  _Unwind_Resume(a1);
}

void sub_100472F48(uint64_t a1, const char *a2, const __CFDictionary **a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = *a3;
  if (!*a3)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v12 = v4;
    v9 = "#I %s: {null};";
    goto LABEL_11;
  }

  context = a1;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: {", buf, 0xCu);
    v5 = *a3;
  }

  CFDictionaryApplyFunction(v5, sub_100486C7C, &context);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = v4;
    v9 = "#I }; <<== %s";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
  }
}

void sub_1004730B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_100473238(a1, &v14);
  if (v14)
  {
    v4 = v15;
    *a2 = v14;
    a2[1] = v4;
    v14 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    std::mutex::unlock(v6);
    goto LABEL_11;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    if (!v13)
    {
      sub_100004A34(v12);
LABEL_11:
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_15;
    }
  }

  else
  {
    std::mutex::unlock(v6);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  (*(*v13 + 64))(v13, *(a1 + 120));
  if (v12)
  {
    sub_100004A34(v12);
  }

LABEL_15:
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_100473208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100473238(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 768);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 760);
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1004732EC(uint64_t a1@<X0>, uint64_t a2@<X1>, CIPFamily *a3@<X8>)
{
  v5 = *(a1 + 768);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(a1 + 760)) == 0)
  {
LABEL_6:
    CIPFamily::CIPFamily(a3);
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(*v8 + 48))(v8, a2);
LABEL_7:

  sub_100004A34(v7);
}

uint64_t sub_1004733BC(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 760);
  if (v5)
  {
    v6 = (*(*v5 + 104))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_100473450(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Writing Service Entry after SCDynamicStore restart at object: %p", &v3, 0xCu);
  }

  sub_1004734F4(a1);
}

void sub_1004734F4(uint64_t a1)
{
  sub_100004AA0(&v2 + 1, (a1 + 8));
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100473608(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I revive: trying to reset important stuff", buf, 2u);
  }

  if (!*(a1 + 792))
  {
    v18 = 0;
    sub_100473880(a1, &v18);
    sub_100005978(&v18);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100473998;
    aBlock[3] = &unk_101E4E8A8;
    aBlock[4] = a1;
    v3 = _Block_copy(aBlock);
    Registry::getTimerService(buf, *(a1 + 48));
    v4 = *buf;
    sub_10000501C(__p, "ConfigdRestartTimeout");
    v5 = *(a1 + 24);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;
    sub_100D23364(v4, __p, 0, 5000000, &object, &v10);
    v7 = v16;
    v16 = 0;
    v8 = *(a1 + 792);
    *(a1 + 792) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v16;
      v16 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (v10)
    {
      _Block_release(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v3)
    {
      _Block_release(v3);
    }
  }
}

void sub_100473808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_100473880(uint64_t a1, const void **a2)
{
  v4 = *a2;
  v6 = (a1 + 128);
  result = *(a1 + 128);
  if (v4)
  {
    if (result && CFEqual(result, v4))
    {
      return 0;
    }

LABEL_6:
    sub_100222570(v6, a2);
    v7[0] = 0;
    v7[1] = 0;
    sub_100004AA0(v7, (a1 + 8));
    operator new();
  }

  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100473998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[99];
  if (v2)
  {
    v1[99] = 0;
    (*(*v2 + 8))(v2);
  }

  if (!v1[10])
  {
    sub_100473C84(v1);
    sub_100473D14(v1);
  }

  sub_100473DEC(v1, &v5);
  sub_100005978(&v5);
  v4 = 0;
  v3 = v1;
  sub_100004AA0(&v3 + 1, v1 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  operator new();
}

void sub_100473C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_10001021C(&a11);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100473C84(uint64_t a1)
{
  v4.version = 0;
  v4.info = a1;
  memset(&v4.retain, 0, 24);
  v2 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:SCDisconnectCallBack", 0, &v4);
  v3 = *(a1 + 80);
  *(a1 + 80) = v2;
  v5 = v3;
  sub_10048662C(&v5);
  if (!*(a1 + 80) && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177194C();
  }
}

void sub_100473D14(uint64_t a1)
{
  v2 = SCDynamicStoreSetDisconnectCallBack();
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Disconnect Callback for Dynamic Store registered successfully!", v4, 2u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101771980();
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 80), *(a1 + 24)) != 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017719B4();
  }
}

const void **sub_100473DEC@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  sub_100472AD4(a1, a2);
  sub_10005C7A4(&v5, a2);
  sub_100473880(a1, &v5);
  return sub_100005978(&v5);
}

void sub_100473E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void sub_100473E5C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 680);
  sub_100004AA0(&v6 + 1, (a1 + 8));
  v7 = a2;
  sub_1000224C8(v8, a3);
  v8[8] = v5;
  operator new();
}

void sub_100473F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100473FBC(uint64_t a1, uint64_t *a2, int a3, const void **a4, CSIPacketAddress **a5)
{
  v10 = *a4;
  v11 = *(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I notifySystemConfigOfSettings: family %s", buf, 0xCu);
    }

    sub_100010024(&v62, a4);
    sub_100472F48(a1, "notifySystemConfigOfSettings: ip dict: special dict", &v62);
    sub_10001021C(&v62);
  }

  else if (v12)
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I notifySystemConfigOfSettings for %s", buf, 0xCu);
  }

  serviceID = 0;
  sub_100473DEC(a1, &serviceID);
  if (serviceID)
  {
    keysToSet = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!keysToSet)
    {
      v18 = 0;
LABEL_72:
      sub_1000296E0(&keysToSet);
      goto LABEL_73;
    }

    value = 0;
    theDict = 0;
    v13 = *a4;
    if (a3 == 1)
    {
      if (v13)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
        v15 = theDict;
        theDict = MutableCopy;
        *buf = v15;
        v16 = sub_1000296E0(buf);
LABEL_23:
        if (capabilities::ct::supportsGemini(v16))
        {
          *buf = 0uLL;
          sub_10047DFB8(a1, buf);
          v29 = *(a1 + 120);
          v30 = subscriber::simSlotAsInstance();
          v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: SIM %u", v29, v30);
          v32 = value;
          value = v31;
          v63 = v32;
          sub_100005978(&v63);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        else
        {
          v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d", *(a1 + 120));
          v34 = value;
          value = v33;
          *buf = v34;
          sub_100005978(buf);
        }

        v28 = &kSCEntNetIPv4;
        goto LABEL_28;
      }

      sub_10048001C(a1, &v63);
      *buf = theDict;
      theDict = v63;
      v63 = 0;
      sub_1000296E0(buf);
      v16 = sub_1000296E0(&v63);
      if (theDict)
      {
        goto LABEL_23;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A84();
      }

      goto LABEL_51;
    }

    if (v13)
    {
      v19 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
      v20 = theDict;
      theDict = v19;
      *buf = v20;
      v21 = sub_1000296E0(buf);
    }

    else
    {
      v40 = *(a1 + 88);
      if (!v40)
      {
        v44 = *(a1 + 40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#N IPv6 dictionary for SC is not ready yet, bailing out", buf, 2u);
        }

        goto LABEL_51;
      }

      v41 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v40);
      v42 = theDict;
      theDict = v41;
      *buf = v42;
      v21 = sub_1000296E0(buf);
      if (!theDict)
      {
LABEL_51:
        v18 = 0;
LABEL_71:
        sub_100005978(&value);
        sub_1000296E0(&theDict);
        goto LABEL_72;
      }
    }

    if (capabilities::ct::supportsGemini(v21))
    {
      *buf = 0uLL;
      sub_10047DFB8(a1, buf);
      v22 = *(a1 + 120);
      v23 = subscriber::simSlotAsInstance();
      v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: SIM %u: ipv6", v22, v23);
      v25 = value;
      value = v24;
      v63 = v25;
      sub_100005978(&v63);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: ipv6", *(a1 + 120));
      v27 = value;
      value = v26;
      *buf = v27;
      sub_100005978(buf);
    }

    v28 = &kSCEntNetIPv6;
LABEL_28:
    v35 = *v28;
    if (theDict && value)
    {
      CFDictionarySetValue(theDict, @"NetworkSignature", value);
    }

    v63 = 0;
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, v35);
    v63 = NetworkServiceEntity;
    if (!NetworkServiceEntity)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A50();
      }

      v18 = 0;
      goto LABEL_70;
    }

    CFDictionarySetValue(keysToSet, NetworkServiceEntity, theDict);
    v37 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:notifySystemConfigOfSettings", 0, 0);
    store = v37;
    if (!v37)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A1C();
      }

      goto LABEL_68;
    }

    if (*a4)
    {
      goto LABEL_34;
    }

    if (a3 == 1)
    {
      v43 = 296;
    }

    else
    {
      if (a3 != 2)
      {
        v49 = *(a1 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = a3;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#E no IP model available: family=%u", buf, 8u);
        }

        goto LABEL_68;
      }

      v43 = 488;
    }

    v45 = *a2;
    v46 = a2[1];
    v55[0] = v45;
    v55[1] = v46;
    v56 = 0;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = serviceID;
    v54 = v37;
    CFRetain(v37);
    sub_10047ADAC(a1, v55, a1 + v43, a5, v47, &v54, &v56);
    sub_10048662C(&v54);
    if (v46)
    {
      sub_100004A34(v46);
    }

    if (v56)
    {
      v48 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
      *buf = v48;
      if (v48)
      {
        CFDictionarySetValue(keysToSet, v48, v56);
        sub_100005978(buf);
        sub_10001021C(&v56);
LABEL_34:
        sub_100010180(&v53, &keysToSet);
        sub_100472F48(a1, "notifySystemConfigOfSettings: ip dict", &v53);
        sub_10001021C(&v53);
        v38 = SCDynamicStoreSetMultiple(store, keysToSet, 0, 0);
        v18 = v38 != 0;
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v38 != 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I SCDynamicStoreSetMultiple() result %u", buf, 8u);
        }

        goto LABEL_69;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017719E8();
      }

      sub_100005978(buf);
    }

    else
    {
      v50 = *(a1 + 40);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = asString();
        *buf = 136315138;
        *&buf[4] = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#E Failed to create SCD Dict for DNS for %s, bailing out", buf, 0xCu);
      }
    }

    sub_10001021C(&v56);
LABEL_68:
    v18 = 0;
LABEL_69:
    sub_10048662C(&store);
LABEL_70:
    sub_100005978(&v63);
    goto LABEL_71;
  }

  v17 = *(a1 + 40);
  v18 = 0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N not setting IP address or DNS", buf, 2u);
    v18 = 0;
  }

LABEL_73:
  sub_100005978(&serviceID);
  return v18;
}

void sub_100474730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va6, a7);
  va_start(va5, a7);
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v16 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v18 = va_arg(va6, const void *);
  v20 = va_arg(va6, void);
  sub_10001021C(va);
  sub_10048662C(va1);
  sub_100005978(va6);
  sub_100005978(va2);
  sub_1000296E0(va3);
  sub_1000296E0(va4);
  sub_100005978(va5);
  _Unwind_Resume(a1);
}

uint64_t sub_100474838(uint64_t a1, void *a2, NSObject **a3, NSObject **a4, NSObject **a5, unsigned int a6)
{
  PDPManagerInterface::PDPManagerInterface(a1);
  if (a6 > 9)
  {
    v12 = "DATA.pkt:N:";
  }

  else
  {
    v12 = off_101E4EEA8[a6];
  }

  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, v12);
  sub_100474B34((a1 + 8), a3, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101E4E8D8;
  v13 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  *(a1 + 64) = *a4;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a5;
  *(a1 + 72) = *a5;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = a6;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 140) = 257;
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 850045863;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 276) = 0u;
  v16 = *a3;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = sub_100474BC0(a6, 1);
  sub_100485900(a1 + 296, &object, v17);
  if (object)
  {
    dispatch_release(object);
  }

  v18 = *a3;
  v21 = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v19 = sub_100474BC0(a6, 2);
  sub_100485900(a1 + 488, &v21, v19);
  if (v21)
  {
    dispatch_release(v21);
  }

  *(a1 + 680) = 0xFFFFFFFF00000000;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 1450;
  *(a1 + 780) = 0;
  *(a1 + 782) = 0;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  return a1;
}

void sub_100474A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_100485A6C((v12 + 27));
  std::mutex::~mutex(v17);
  std::mutex::~mutex(v16);
  sub_100005978(v15);
  sub_100010250(v14);
  sub_100010250(v12 + 3);
  sub_10001021C(v13);
  sub_10001021C(v12 + 1);
  sub_10048662C(v12);
  v19 = v11[9];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = v11[8];
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = v11[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v11 + 5));
  sub_1000C0544(v11 + 1);
  PDPManagerInterface::~PDPManagerInterface(v11);
  _Unwind_Resume(a1);
}

void *sub_100474B34(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100474B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

const char *sub_100474BC0(unsigned int a1, int a2)
{
  v2 = "DATA.pkt:N:m6:";
  if (a2 == 1)
  {
    v2 = "DATA.pkt:N:m4:";
  }

  if (a1 <= 9)
  {
    v3 = off_101E4EF48;
    if (a2 == 1)
    {
      v3 = off_101E4EEF8;
    }

    return v3[a1];
  }

  return v2;
}

void sub_100474C04(uint64_t a1)
{
  *a1 = off_101E4E8D8;
  v2 = *(a1 + 792);
  *(a1 + 792) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 768);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_10006DCAC(a1 + 736, *(a1 + 744));
  sub_10048662C((a1 + 728));
  sub_10048662C((a1 + 720));
  sub_1004873AC((a1 + 704), 0);
  sub_1004873AC((a1 + 688), 0);
  sub_100485A6C(a1 + 488);
  sub_100485A6C(a1 + 296);
  std::mutex::~mutex((a1 + 208));
  std::mutex::~mutex((a1 + 144));
  sub_100005978((a1 + 128));
  sub_100010250((a1 + 112));
  sub_100010250((a1 + 104));
  sub_10001021C((a1 + 96));
  sub_10001021C((a1 + 88));
  sub_10048662C((a1 + 80));
  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PDPManagerInterface::~PDPManagerInterface(a1);
}

void sub_100474D7C(uint64_t a1)
{
  sub_100474C04(a1);

  operator delete();
}

void sub_100474DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received the disconnect callback on SCDynamicStore restart at object: %p", &v4, 0xCu);
  }

  sub_100473450(a2);
}

void sub_100474E58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v2;
  v4 = *(a1 + 768);
  *(a1 + 768) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_100474E88(uint64_t a1)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v2 = atomic_load((a1 + 800));
    if ((v2 & 1) == 0)
    {
      atomic_store(sub_100475010(a1, 1), (a1 + 800));
      v3 = *(a1 + 768);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        v5 = v4;
        if (v4 && *(a1 + 760))
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v6[0] = 0;
          v6[1] = 0;
          sub_100004AA0(v6, (a1 + 8));
          operator new();
        }
      }

      else
      {
        v5 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771AB8();
      }

      if (v5)
      {
        sub_100004A34(v5);
      }
    }
  }
}

uint64_t sub_100475010(uint64_t a1, int a2)
{
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    return 1;
  }

  sub_100475354(a1, 0);
  v4 = 1;
  sub_100475354(a1, 0);
  if (a2)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
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
    v17 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v17);
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
        if (!v13)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
LABEL_9:
      if (v14)
      {
        return sub_100475354(a1, 1);
      }

      goto LABEL_19;
    }

LABEL_14:
    (*(*v13 + 808))(v13);
    v15 = *(a1 + 56);
    v17 = *(a1 + 48);
    v18 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::isValidSimSlot();
    if (v18)
    {
      sub_100004A34(v18);
    }

    if (v14)
    {
      return sub_100475354(a1, 1);
    }

LABEL_19:
    sub_100004A34(v12);
    return sub_100475354(a1, 1);
  }

  return v4;
}

void sub_1004751C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004751F0(uint64_t a1)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v2 = atomic_load((a1 + 800));
    if (v2)
    {
      sub_100475010(a1, 0);
      atomic_store(0, (a1 + 800));
      v3 = *(a1 + 768);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        v5 = v4;
        if (v4 && *(a1 + 760))
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v6[0] = 0;
          v6[1] = 0;
          sub_100004AA0(v6, (a1 + 8));
          operator new();
        }
      }

      else
      {
        v5 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771AB8();
      }

      if (v5)
      {
        sub_100004A34(v5);
      }
    }
  }
}

uint64_t sub_100475354(capabilities::ct *a1, char a2)
{
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    return 1;
  }

  v14 = 0u;
  v15 = 0u;
  BYTE8(v15) = a2;
  LODWORD(v15) = *(a1 + 30);
  DWORD1(v15) = -1;
  v16 = 0;
  if (v15)
  {
    v4 = "__OtherInitial__";
  }

  else
  {
    v4 = "__Internet__";
  }

  *(&v14 + 1) = v4;
  v5 = subscriber::simSlotAsInstance();
  LODWORD(v14) = v5 + 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  ApplePDPHelperInterface::getInstance(v5);
  v6 = 1;
  v7 = ApplePDPHelperInterface::setRATConfig();
  Instance = ApplePDPHelperInterface::getInstance(v7);
  v9 = (*(*Instance + 56))(Instance, &v14, v12);
  if ((v9 & 1) == 0)
  {
    v10 = ApplePDPHelperInterface::getInstance(v9);
    return (*(*v10 + 56))(v10, &v14, v12);
  }

  return v6;
}

void sub_100475480(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: starting ...", buf, 2u);
  }

  sub_100475634(a1, 0);
  sub_1004730B0(a1, &v5);
  sub_1004757F8(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100473D14(a1);
  *&buf[8] = 0;
  v4 = 0;
  *buf = a1;
  sub_100004AA0(&buf[8], (a1 + 8));
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  operator new();
}

void sub_1004755E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000FF50(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void sub_100475634(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  if (CSIPDPManager::getInterfaceNameById())
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v16 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
LABEL_8:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771B64();
      }

      goto LABEL_15;
    }

LABEL_14:
    (*(*v12 + 24))(v12, __p, a2);
LABEL_15:
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101771AEC();
  }

LABEL_17:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004757C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004757F8(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_10047F118(a1, v14, a1 + 296);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_10047F118(a1, v13, a1 + 488);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(a1 + 433) == 1)
  {
    v8 = *(a1 + 432);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::lock((a1 + 144));
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 776) = v9;
  if ((v8 & 1) != 0 && v9 >= 0x4ED)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I computeMTU_sync: adjusted for XLAT464", buf, 2u);
    }

    *(a1 + 776) = 1260;
  }

  std::mutex::unlock((a1 + 144));
  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 776);
    *buf = 67109120;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I computeMTU_sync: MTU = %u", buf, 8u);
  }
}

void sub_100475998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004759B4(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: shutting down", v5, 2u);
  }

  if (a1[10])
  {
    SCDynamicStoreSetDisconnectCallBack();
    v3 = a1[10];
    a1[10] = 0;
    v6 = v3;
    sub_10048662C(&v6);
  }

  (*(*a1 + 80))(a1, 1);
  return (*(*a1 + 80))(a1, 2);
}

void sub_100475A94(uint64_t a1@<X0>, int a2@<W1>, CSIPacketAddress *a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_7;
    }

    v5 = 488;
  }

  v6 = a1 + v5;
  if (*(v6 + 116) == 4)
  {
    CSIPacketAddress::CSIPacketAddress(a3, (v6 + 40));
    return;
  }

LABEL_7:
  CSIPacketAddress::CSIPacketAddress(a3);
}

void sub_100475AD4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
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
  *__str = 0u;
  v18 = 0u;
  memset(&__p, 0, sizeof(__p));
  v14 = &a9;
  vsnprintf(__str, 0x100uLL, a3, &a9);
  sub_100016890(&__p, __str);
  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v16 = p_p;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %{public}s", buf, 0xCu);
  }

  if (a2)
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 152) = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  sub_100475C48(a1, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100475C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100475C48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 == 1)
    {
      v6 = *(a2 + 184);
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      if (v6)
      {
        sub_100004A34(v6);
      }
    }

    v7 = *(a2 + 116);
    if (v7 != a3)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7 > 4)
        {
          v9 = "???";
        }

        else
        {
          v9 = off_101E4EFE8[v7];
        }

        if (a3 > 4)
        {
          v10 = "???";
        }

        else
        {
          v10 = off_101E4EFE8[a3];
        }

        *v24 = 136315650;
        *&v24[4] = v9;
        v25 = 2080;
        v26 = v10;
        v27 = 2080;
        v28 = asString();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s->%s (change states) (%s)", v24, 0x20u);
      }

      *(a2 + 116) = a3;
      if (a3 == 4)
      {
        ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
        *v24 = v13;
        v17 = sub_100009510(&v12[1].__m_.__sig, v24);
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
            if (!v19)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v19 = 0;
        }

        std::mutex::unlock(v12);
        v18 = 0;
        v20 = 1;
        if (!v19)
        {
LABEL_26:
          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          if (*(a2 + 116) == 4)
          {
            v22 = a1 + 296;
            if (a1 + 296 == a2)
            {
              v22 = a1 + 488;
            }

            if (*(v22 + 116) != 4)
            {
              v23 = *(a1 + 40);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I online: writing current apn info", v24, 2u);
              }

              *v24 = *(a1 + 680);
              sub_1004802B4(a1, v24);
            }
          }

          return;
        }

LABEL_24:
        v21 = (*(*v19 + 904))(v19);
        if (v21)
        {
          (*(*v21 + 160))(v21);
        }

        goto LABEL_26;
      }
    }
  }
}

void sub_100475F08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100475F38(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100476044;
  v3[3] = &unk_101E4E9F0;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100476050(uint64_t a1, char a2)
{
  v85 = 0;
  v86 = 0uLL;
  v83 = 0;
  v84 = 0uLL;
  cf = 0;
  sub_100473DEC(a1, &v81);
  sub_100005978(&v81);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Run into ipv4ServiceChanged, fIPv4Addresses value is %p", buf, 0xCu);
  }

  if (!*(a1 + 704))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I Got ipv4ServiceChanged without valid fIPv4Service, bailing out";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_21;
  }

  v6 = IPConfigurationServiceCopyInformation();
  v7 = cf;
  cf = v6;
  *buf = v7;
  sub_10001021C(buf);
  if (!cf)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Get IPv4Service Information Failed: serviceInfo is empty";
    goto LABEL_31;
  }

  v8 = CFGetTypeID(cf);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get IPv4Service Information Type: %lu", buf, 0xCu);
  }

  v10 = cf;
  TypeID = CFDictionaryGetTypeID();
  if (!v10 || CFGetTypeID(v10) != TypeID)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Get IPv4Service Information Failed. Maybe configd restarted, ignore";
LABEL_31:
    v26 = v24;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(cf, kSCEntNetIPv4);
  v13 = Value;
  if (!Value || (v14 = CFGetTypeID(Value), v14 != CFDictionaryGetTypeID()))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I No kSCEntNetIPv4 key in IPv4Service Information";
    goto LABEL_20;
  }

  sub_100010024(&v80, (a1 + 96));
  sub_100472F48(a1, "IPv4Service: ip dict: old dictionary", &v80);
  sub_10001021C(&v80);
  v79 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_100472F48(a1, "IPv4Service: ip dict: new (full) dictionary", &v79);
  sub_10001021C(&v79);
  v15 = *(a1 + 96);
  if (v15 && CFEqual(v15, v13))
  {
    v16 = *(a1 + 40);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v17)
      {
        *buf = 0;
        v18 = "#I ipv4ToBeUpdated is true due to refresh";
        v19 = v16;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (!v17)
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Nothing is changed for IPv4Service Information";
    v26 = v16;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    goto LABEL_33;
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v18 = "#I New fIPv4SCDict to be set";
    v19 = v27;
    goto LABEL_42;
  }

LABEL_43:
  v28 = CFDictionaryGetValue(v13, kSCPropNetIPv4Addresses);
  v29 = v28;
  if (!v28 || (v30 = CFGetTypeID(v28), v30 != CFArrayGetTypeID()))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I No kSCPropNetIPv4Addresses array in IPv4Service Info";
    goto LABEL_20;
  }

  __p[0] = 0;
  __p[1] = 0;
  v78 = 0;
  CSIPDPManager::getInterfaceNameById();
  Count = CFArrayGetCount(v29);
  if (Count >= 1)
  {
    v32 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v29, v32);
      if (ValueAtIndex)
      {
        v34 = CFGetTypeID(ValueAtIndex);
        if (v34 == CFStringGetTypeID())
        {
          break;
        }
      }

      if (Count == ++v32)
      {
        goto LABEL_65;
      }
    }

    memset(v88, 0, 24);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *v88 = *buf;
    *&v88[16] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v35 = *buf;
    v87[0] = *&buf[8];
    *(v87 + 7) = *&buf[15];
    v36 = buf[23];
    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    v85 = v35;
    *&v86 = v87[0];
    *(&v86 + 7) = *(v87 + 7);
    HIBYTE(v86) = v36;
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = __p;
      if (v78 < 0)
      {
        v38 = __p[0];
      }

      v39 = v88;
      if ((v88[23] & 0x80u) != 0)
      {
        v39 = *v88;
      }

      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: IPv4iface:%s: Found ipv4 address %s from IPv4Service Info", buf, 0x16u);
    }

    if (v88[23] < 0)
    {
      operator delete(*v88);
    }
  }

LABEL_65:
  if (v86 >= 0)
  {
    v40 = HIBYTE(v86);
  }

  else
  {
    v40 = v86;
  }

  if (v40)
  {
    v41 = CFDictionaryGetValue(v13, kSCPropNetIPv4Router);
    if (v41)
    {
      v42 = CFGetTypeID(v41);
      if (v42 == CFStringGetTypeID())
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v43 = *buf;
        *v88 = *&buf[8];
        *&v88[7] = *&buf[15];
        v44 = buf[23];
        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83);
        }

        v83 = v43;
        *&v84 = *v88;
        *(&v84 + 7) = *&v88[7];
        HIBYTE(v84) = v44;
        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = &v83;
          if (v44 < 0)
          {
            v46 = v43;
          }

          *buf = 136315138;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv4Service Information (received from network)", buf, 0xCu);
        }
      }
    }

    *buf = v13;
    sub_1002A2218((a1 + 96), buf);
    sub_100010024(&v76, (a1 + 96));
    sub_100472F48(a1, "IPv4Service: ip dict: fIPv4SCDict", &v76);
    sub_10001021C(&v76);
    v47 = *(a1 + 40);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 112);
      *buf = 134217984;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I ipv4ServiceChanged succeeded, old fIPv4Addresses value is %p", buf, 0xCu);
    }

    v49 = *(a1 + 112);
    if (!v49 || !CFEqual(v49, v29))
    {
      *buf = v29;
      sub_10044A870((a1 + 112), buf);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101771B98();
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  if (v40)
  {
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: publishing IPv4:", buf, 2u);
    }

    sub_100473238(a1, &v74);
    v73 = 0;
    v51 = sub_100473FBC(a1, &v74, 1, &v73, (a1 + 552));
    sub_10001021C(&v73);
    if (v75)
    {
      sub_100004A34(v75);
    }

    v52 = *(a1 + 40);
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v54 = "#I IPv4Service: publishing IPv4: success";
    }

    else
    {
      if (!v53)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v54 = "#N IPv4Service: publishing IPv4: failure";
    }

    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
LABEL_97:
    v55 = *(a1 + 40);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I IPv4Service onlineSuccess", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    v56 = *(a1 + 40);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      if (v78 >= 0)
      {
        v57 = __p;
      }

      else
      {
        v57 = __p[0];
      }

      v58 = &v83;
      if (v84 < 0)
      {
        v58 = v83;
      }

      *v88 = 136315394;
      *&v88[4] = v57;
      *&v88[12] = 2080;
      *&v88[14] = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: online for IPv4 with IP address %s, router %s", v88, 0x16u);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v59 = *(a1 + 360);
    for (i = *(a1 + 368); v59 != i; v59 += 24)
    {
      v61 = *(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        v62 = v78 >= 0 ? __p : __p[0];
        *v88 = 136446210;
        *&v88[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I fDns:  %{public}s", v88, 0xCu);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(a1 + 412) != 4)
    {
      sub_100475C48(a1, a1 + 296, 4u);
    }

    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I IPv4ServiceUp to be fired", __p, 2u);
    }

    v64 = *(a1 + 768);
    if (v64)
    {
      v65 = std::__shared_weak_count::lock(v64);
      if (v65)
      {
        v66 = *(a1 + 760);
        if (v66)
        {
          (*(*v66 + 24))(v66, buf);
LABEL_127:
          sub_100004A34(v65);
LABEL_128:
          v67 = *(a1 + 472);
          if (v67)
          {
            goto LABEL_129;
          }

          v67 = *(a1 + 664);
          if (v67)
          {
            v69 = *(a1 + 672);
            if (v69)
            {
              atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
            }

            v70 = *(a1 + 480);
            *(a1 + 472) = v67;
            *(a1 + 480) = v69;
            if (!v70 || (sub_100004A34(v70), (v67 = *(a1 + 472)) != 0))
            {
LABEL_129:
              v68 = *(a1 + 480);
              v71 = v67;
              v72 = v68;
              if (v68)
              {
                atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              memset(buf, 0, sizeof(buf));
              (*(*a1 + 168))(a1, &v71, buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v72)
              {
                sub_100004A34(v72);
              }
            }
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v65 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771BCC();
    }

    if (!v65)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_21:
  v22 = *(a1 + 96);
  *(a1 + 96) = 0;
  *buf = v22;
  sub_10001021C(buf);
  sub_100478C1C(a1);
  sub_100478DF8(a1, 1);
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I IPv4Service NOT onlineSuccess", buf, 2u);
  }

  sub_10000501C(__p, "0.0.0.0");
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 368) = *(a1 + 360);
  if (*(a1 + 412) != 1)
  {
    sub_100475C48(a1, a1 + 296, 1u);
  }

LABEL_33:
  sub_10001021C(&cf);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }
}

void sub_100476C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100004A34(v42);
  sub_10001021C(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void sub_100476DB0(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100476EC0;
  v4[3] = &unk_101E4EA10;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100476ED0(uint64_t a1, char a2)
{
  v163 = 0;
  v164 = 0uLL;
  memset(v162, 0, 24);
  cf = 0;
  v161 = 0;
  sub_100473DEC(a1, &v159);
  sub_100005978(&v159);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 104);
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Run into ipv6ServiceChanged, fIPv6Addresses value is %{public}@", buf, 0xCu);
  }

  if (!*(a1 + 688))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "#I Got ipv6ServiceChanged without valid fIPv6Service, bailing out";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  v6 = IPConfigurationServiceCopyInformation();
  v7 = cf;
  cf = v6;
  *buf = v7;
  sub_10001021C(buf);
  if (!cf)
  {
    v15 = *(a1 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "#I Get IPv6Service Information Failed: serviceInfo is empty";
    v11 = v15;
    v12 = 2;
    goto LABEL_11;
  }

  v8 = CFGetTypeID(cf);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    v10 = "#I Get IPv6Service Information Type: %lu";
    v11 = v9;
    v12 = 12;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }

  v16 = cf;
LABEL_13:
  TypeID = CFDictionaryGetTypeID();
  if (v16 && CFGetTypeID(v16) == TypeID)
  {
    cf2 = CFDictionaryGetValue(cf, kSCEntNetIPv6);
    if (cf2)
    {
      v18 = CFGetTypeID(cf2);
      if (v18 == CFDictionaryGetTypeID())
      {
        v19 = (a1 + 88);
        sub_100010024(&v158, (a1 + 88));
        sub_100472F48(a1, "IPv6Service: ip dict: old dictionary", &v158);
        sub_10001021C(&v158);
        v157 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        sub_100472F48(a1, "IPv6Service: ip dict: new (full) dictionary", &v157);
        sub_10001021C(&v157);
        v20 = CFDictionaryGetValue(cf, kSCEntNetIPv4);
        v21 = v20;
        if (v20)
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFDictionaryGetTypeID())
          {
            *buf = v21;
            sub_1002A2218(&v161, buf);
            v156 = v161;
            if (v161)
            {
              CFRetain(v161);
            }

            sub_100472F48(a1, "IPv6Service - IPv4 info: ip dict", &v156);
            sub_10001021C(&v156);
          }
        }

        if (!*v19)
        {
          v23 = 1;
LABEL_111:
          v129 = CFDictionaryGetValue(cf2, kSCPropNetIPv6Addresses);
          if (v129)
          {
            v55 = CFGetTypeID(v129);
            if (v55 == CFArrayGetTypeID())
            {
              __p = 0uLL;
              v169 = 0;
              CSIPDPManager::getInterfaceNameById();
              Count = CFArrayGetCount(v129);
              if (Count >= 1)
              {
                v130 = 0;
                v57 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v129, v57);
                  if (ValueAtIndex)
                  {
                    v59 = CFGetTypeID(ValueAtIndex);
                    if (v59 == CFStringGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_163:
                  if (Count == ++v57)
                  {
                    goto LABEL_199;
                  }
                }

                v154 = 0uLL;
                v155 = 0;
                memset(buf, 0, 24);
                ctu::cf::assign();
                v154 = *buf;
                v155 = *&buf[16];
                if (buf[23] >= 0)
                {
                  v60 = &v154;
                }

                else
                {
                  v60 = v154;
                }

                memset(&v170[8], 0, 20);
                *v170 = 7708;
                if (inet_pton(30, v60, &v170[8]) == 1)
                {
                  v61 = socket(30, 2, 0);
                  if (v61 < 0)
                  {
                    v75 = *(a1 + 40);
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                    {
                      p_p = &__p;
                      if (v169 < 0)
                      {
                        p_p = __p;
                      }

                      *buf = 136315394;
                      *&buf[4] = p_p;
                      *&buf[12] = 2080;
                      *&buf[14] = v60;
                      v73 = v75;
                      v74 = "#I IPv6Service: IPv6iface:%s:sock: %s";
                      goto LABEL_159;
                    }
                  }

                  else
                  {
                    if (v169 >= 0)
                    {
                      v62 = &__p;
                    }

                    else
                    {
                      v62 = __p;
                    }

                    v186 = 0;
                    v184 = 0u;
                    v185 = 0u;
                    v182 = 0u;
                    v183 = 0u;
                    v180 = 0u;
                    v181 = 0u;
                    v178 = 0u;
                    v179 = 0u;
                    v176 = 0u;
                    v177 = 0u;
                    v174 = 0u;
                    v175 = 0u;
                    v172 = 0u;
                    v173 = 0u;
                    *&buf[40] = 0u;
                    strncpy(buf, v62, 0x10uLL);
                    *&buf[16] = *v170;
                    *&buf[28] = *&v170[12];
                    if (ioctl(v61, 0xC1206949uLL, buf) >= 0)
                    {
                      v63 = *&buf[16];
                    }

                    else
                    {
                      v63 = 0;
                    }

                    close(v61);
                    v64 = *(a1 + 40);
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = &__p;
                      if (v169 < 0)
                      {
                        v65 = __p;
                      }

                      *buf = 136315394;
                      *&buf[4] = v65;
                      *&buf[12] = 1024;
                      *&buf[14] = v63;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s:flags: %x", buf, 0x12u);
                    }

                    if ((v63 & 0x80) == 0)
                    {
                      memset(buf, 0, 24);
                      ctu::cf::assign();
                      v66 = *buf;
                      *v170 = *&buf[8];
                      *&v170[7] = *&buf[15];
                      v67 = buf[23];
                      if (SHIBYTE(v164) < 0)
                      {
                        operator delete(v163);
                      }

                      v163 = v66;
                      *&v164 = *v170;
                      *(&v164 + 7) = *&v170[7];
                      HIBYTE(v164) = v67;
                      v68 = *(a1 + 40);
                      v130 = 0;
                      v19 = (a1 + 88);
                      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                      {
                        v69 = &__p;
                        if (v169 < 0)
                        {
                          v69 = __p;
                        }

                        v70 = &v154;
                        if (v155 < 0)
                        {
                          v70 = v154;
                        }

                        *buf = 136315394;
                        *&buf[4] = v69;
                        *&buf[12] = 2080;
                        *&buf[14] = v70;
                        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s: Found non temporary address %s, using it", buf, 0x16u);
                        v130 = 0;
                      }

                      goto LABEL_161;
                    }

                    if (v164 >= 0)
                    {
                      v77 = HIBYTE(v164);
                    }

                    else
                    {
                      v77 = v164;
                    }

                    v78 = *(a1 + 40);
                    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
                    if (!v77)
                    {
                      if (v79)
                      {
                        v82 = &__p;
                        if (v169 < 0)
                        {
                          v82 = __p;
                        }

                        v83 = &v154;
                        if (v155 < 0)
                        {
                          v83 = v154;
                        }

                        *buf = 136315394;
                        *&buf[4] = v82;
                        *&buf[12] = 2080;
                        *&buf[14] = v83;
                        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s: Temporary address found first %s", buf, 0x16u);
                      }

                      memset(buf, 0, 24);
                      ctu::cf::assign();
                      v84 = *buf;
                      *v170 = *&buf[8];
                      *&v170[7] = *&buf[15];
                      v85 = buf[23];
                      if (SHIBYTE(v164) < 0)
                      {
                        operator delete(v163);
                      }

                      v163 = v84;
                      *&v164 = *v170;
                      *(&v164 + 7) = *&v170[7];
                      HIBYTE(v164) = v85;
                      v130 = 1;
                      goto LABEL_160;
                    }

                    if (v79)
                    {
                      v80 = &__p;
                      if (v169 < 0)
                      {
                        v80 = __p;
                      }

                      v81 = &v154;
                      if (v155 < 0)
                      {
                        v81 = v154;
                      }

                      *buf = 136315394;
                      *&buf[4] = v80;
                      *&buf[12] = 2080;
                      *&buf[14] = v81;
                      v73 = v78;
                      v74 = "#I IPv6Service: IPv6iface:%s: ignoring temporary address %s";
LABEL_159:
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v74, buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v71 = *(a1 + 40);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    v72 = &__p;
                    if (v169 < 0)
                    {
                      v72 = __p;
                    }

                    *buf = 136315394;
                    *&buf[4] = v72;
                    *&buf[12] = 2080;
                    *&buf[14] = v60;
                    v73 = v71;
                    v74 = "#I IPv6Service: IPv6iface:%s:inet_pton: %s";
                    goto LABEL_159;
                  }
                }

LABEL_160:
                v19 = (a1 + 88);
LABEL_161:
                if (SHIBYTE(v155) < 0)
                {
                  operator delete(v154);
                }

                goto LABEL_163;
              }

              v130 = 0;
LABEL_199:
              if (v164 >= 0)
              {
                v26 = HIBYTE(v164);
              }

              else
              {
                v26 = v164;
              }

              if (v26)
              {
                v90 = CFDictionaryGetValue(cf2, kSCPropNetIPv6PrefixLength);
                v91 = v90;
                if (v90 && (v92 = CFGetTypeID(v90), v92 == CFArrayGetTypeID()) && (v93 = CFArrayGetValueAtIndex(v91, 0), (v94 = v93) != 0))
                {
                  v95 = CFGetTypeID(v93);
                  v29 = 128;
                  if (v95 == CFNumberGetTypeID())
                  {
                    *buf = 128;
                    ctu::cf::assign(buf, v94, v96);
                    v29 = *buf;
                  }
                }

                else
                {
                  v29 = 128;
                }

                v97 = CFDictionaryGetValue(cf2, kSCPropNetIPv6Router);
                if (v97 && (v98 = CFGetTypeID(v97), v98 == CFStringGetTypeID()))
                {
                  *buf = cf2;
                  sub_1002A2218(v19, buf);
                  memset(buf, 0, 24);
                  ctu::cf::assign();
                  v99 = *buf;
                  *v170 = *&buf[8];
                  *&v170[7] = *&buf[15];
                  v100 = buf[23];
                  if (SHIBYTE(v162[2]) < 0)
                  {
                    operator delete(v162[0]);
                  }

                  v162[0] = v99;
                  v162[1] = *v170;
                  *(&v162[1] + 7) = *&v170[7];
                  HIBYTE(v162[2]) = v100;
                  v101 = *(a1 + 40);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    v102 = v162;
                    if (v100 < 0)
                    {
                      v102 = v99;
                    }

                    *buf = 136315138;
                    *&buf[4] = v102;
                    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv6Service Information (received from network)", buf, 0xCu);
                  }
                }

                else
                {
                  v154 = 0uLL;
                  v155 = 0;
                  CSIPacketAddress::CSIPacketAddress(&v154);
                  if (*(a1 + 600) == 1 && !CSIPacketAddress::isZeroIP((a1 + 576)))
                  {
                    v105 = *(a1 + 40);
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Router in IPv6Service Information, use last configured router", buf, 2u);
                    }

                    CSIPacketAddress::operator=();
                  }

                  else
                  {
                    v103 = *(a1 + 40);
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Router in IPv6Service Information, use first IP Prefix", buf, 2u);
                    }

                    CSIPacketAddress::CSIPacketAddress();
                    CSIPacketAddress::operator=();
                    CSIPacketAddress::applyMaskPrefix(&v154, v29);
                  }

                  CSIPacketAddress::operator std::string();
                  if (SHIBYTE(v162[2]) < 0)
                  {
                    operator delete(v162[0]);
                  }

                  v162[2] = *&buf[16];
                  *v162 = *buf;
                  value = 0;
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    sub_100005F2C(&__dst, v162[0], v162[1]);
                  }

                  else
                  {
                    __dst = *v162;
                    v152 = v162[2];
                  }

                  if (SHIBYTE(v152) < 0)
                  {
                    sub_100005F2C(v170, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    *v170 = __dst;
                    *&v170[16] = v152;
                  }

                  v165 = 0;
                  if (v170[23] < 0)
                  {
                    sub_100005F2C(buf, *v170, *&v170[8]);
                  }

                  else
                  {
                    *buf = *v170;
                    *&buf[16] = *&v170[16];
                  }

                  v166 = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v106 = v165;
                    v165 = v166;
                    v167 = v106;
                    sub_100005978(&v167);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  value = v165;
                  v165 = 0;
                  sub_100005978(&v165);
                  if (v170[23] < 0)
                  {
                    operator delete(*v170);
                  }

                  if (SHIBYTE(v152) < 0)
                  {
                    operator delete(__dst);
                  }

                  v107 = *(a1 + 40);
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    CSIPacketAddress::operator std::string();
                    v108 = buf[23] >= 0 ? buf : *buf;
                    *v170 = 136315138;
                    *&v170[4] = v108;
                    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv6Service Information (constructed)", v170, 0xCu);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  *v170 = 0;
                  *v170 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, cf2);
                  CFDictionarySetValue(*v170, kSCPropNetIPv6Router, value);
                  sub_100010180(&v167, v170);
                  if (v19 != &v167)
                  {
                    *buf = *v19;
                    *v19 = v167;
                    v167 = 0;
                    sub_10001021C(buf);
                  }

                  sub_10001021C(&v167);
                  sub_1000296E0(v170);
                  sub_100005978(&value);
                }

                sub_100010024(&v150, (a1 + 88));
                sub_100472F48(a1, "IPv6Service: ip dict: fIPv6SCDict", &v150);
                sub_10001021C(&v150);
                v109 = *(a1 + 40);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  v110 = *(a1 + 104);
                  *buf = 138543362;
                  *&buf[4] = v110;
                  _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged succeeded, fIPv6Addresses value is %{public}@", buf, 0xCu);
                }

                v111 = *(a1 + 104);
                if (v111 && CFEqual(v111, v129))
                {
                  v104 = v26;
                  LODWORD(v26) = 0;
                }

                else
                {
                  v104 = v26;
                  *buf = v129;
                  sub_10044A870((a1 + 104), buf);
                  LODWORD(v26) = 1;
                }
              }

              else
              {
                v104 = 0;
                LOBYTE(v29) = 0x80;
              }

              if (SHIBYTE(v169) < 0)
              {
                operator delete(__p);
              }

              if (v104)
              {
                if (!v23)
                {
                  goto LABEL_274;
                }

                v112 = *(a1 + 40);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: publishing IPv6:", buf, 2u);
                }

                sub_100473238(a1, &v148);
                v147 = 0;
                v113 = sub_100473FBC(a1, &v148, 2, &v147, (a1 + 360));
                sub_10001021C(&v147);
                if (v149)
                {
                  sub_100004A34(v149);
                }

                v114 = *(a1 + 40);
                v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
                if (v113)
                {
                  if (!v115)
                  {
                    goto LABEL_274;
                  }

                  *buf = 0;
                  v116 = "#I IPv6Service: publishing IPv6: success";
                }

                else
                {
                  if (!v115)
                  {
                    goto LABEL_274;
                  }

                  *buf = 0;
                  v116 = "#N IPv6Service: publishing IPv6: failure";
                }

                _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, v116, buf, 2u);
LABEL_274:
                v28 = v161;
                if (!v161)
                {
LABEL_306:
                  v27 = 1;
LABEL_39:
                  if ((v28 | v23))
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_40;
                }

                v117 = *(a1 + 40);
                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: xlat464: publishing IPv4:", buf, 2u);
                }

                sub_100473238(a1, &v145);
                v144 = v161;
                if (v161)
                {
                  CFRetain(v161);
                }

                sub_100473FBC(a1, &v145, 1, &v144, (a1 + 552));
                sub_10001021C(&v144);
                if (v146)
                {
                  sub_100004A34(v146);
                }

                if (CSIPacketAddress::isZeroIP((a1 + 336)))
                {
                  v118 = CFDictionaryGetValue(v161, kSCPropNetIPv4Addresses);
                  v119 = v118;
                  if (v118 && (v120 = CFGetTypeID(v118), v120 == CFArrayGetTypeID()))
                  {
                    v121 = CFArrayGetCount(v119);
                    if (v121 >= 1)
                    {
                      for (i = 0; i != v121; ++i)
                      {
                        v123 = CFArrayGetValueAtIndex(v119, i);
                        if (v123)
                        {
                          v124 = CFGetTypeID(v123);
                          if (v124 == CFStringGetTypeID())
                          {
                            memset(v170, 0, 24);
                            memset(buf, 0, 24);
                            ctu::cf::assign();
                            *v170 = *buf;
                            *&v170[16] = *&buf[16];
                            v125 = *(a1 + 40);
                            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                            {
                              v126 = v170;
                              if ((v170[23] & 0x80u) != 0)
                              {
                                v126 = *v170;
                              }

                              *buf = 136315138;
                              *&buf[4] = v126;
                              _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: xlat464: IPv4 addr: Found address %s, using it", buf, 0xCu);
                            }

                            CSIPacketAddress::CSIPacketAddress();
                            CSIPacketAddress::operator=();
                            if (*(a1 + 412) != 4)
                            {
                              sub_100475C48(a1, a1 + 296, 4u);
                            }

                            if (v170[23] < 0)
                            {
                              operator delete(*v170);
                            }
                          }
                        }
                      }
                    }

                    if (!CSIPacketAddress::isZeroIP((a1 + 336)))
                    {
                      *(a1 + 432) = 257;
                      sub_10047973C(a1 + 432);
                      sub_100473238(a1, &v142);
                      sub_1004757F8(a1, &v142);
                      if (v143)
                      {
                        sub_100004A34(v143);
                      }

                      goto LABEL_305;
                    }

                    v127 = *(a1 + 40);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v128 = "#N IPv6Service: xlat464: IPv4 address empty";
LABEL_304:
                      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, v128, buf, 2u);
                    }
                  }

                  else
                  {
                    v127 = *(a1 + 40);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v128 = "#E IPv6Service: xlat464: No kSCPropNetIPv4Addresses array in IPv6Service XLAT46 Information";
                      goto LABEL_304;
                    }
                  }
                }

                else
                {
                  v127 = *(a1 + 40);
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v128 = "#N IPv6Service: xlat464: IPv4 address already filled in";
                    goto LABEL_304;
                  }
                }

LABEL_305:
                v28 = 0;
                goto LABEL_306;
              }

LABEL_38:
              v30 = *(a1 + 88);
              *(a1 + 88) = 0;
              *buf = v30;
              sub_10001021C(buf);
              sub_1004793DC(a1);
              sub_100478DF8(a1, 2);
              v27 = 0;
              v28 = 1;
              goto LABEL_39;
            }
          }

          v86 = *(a1 + 40);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Addresses array in IPv6Service Information", buf, 2u);
          }

LABEL_37:
          LODWORD(v26) = 0;
          v130 = 0;
          LOBYTE(v29) = 0x80;
          goto LABEL_38;
        }

        v23 = 1;
        if (!CFEqual(*v19, cf2) || (a2 & 1) != 0)
        {
          goto LABEL_111;
        }

        if (v161)
        {
          v23 = 0;
          goto LABEL_111;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = "#I Nothing is changed for IPv6Service Information, ignore";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "#I No kSCEntNetIPv6 key in IPv6Service Information";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v25 = "#I Get IPv6Service Information Failed. Maybe configd restarted, ignore";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
  }

LABEL_32:
  v130 = 0;
  LODWORD(v26) = 0;
  v27 = 0;
  v28 = 0;
  LOBYTE(v29) = 0x80;
LABEL_40:
  if (v161)
  {
    goto LABEL_41;
  }

LABEL_49:
  if (v27)
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I IPv6Service onlineSuccess", buf, 2u);
    }

    memset(v170, 0, 24);
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::setPrefixLen(v170, v29);
    CSIPacketAddress::operator=();
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      if (v169 >= 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      v36 = "";
      if (v130)
      {
        v36 = "(temporary only)";
      }

      v37 = v162;
      *buf = 136315650;
      if (SHIBYTE(v162[2]) < 0)
      {
        v37 = v162[0];
      }

      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      *&buf[22] = 2080;
      *&buf[24] = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: online for IPv6 with IP address %s%s, router %s", buf, 0x20u);
      if (SHIBYTE(v169) < 0)
      {
        operator delete(__p);
      }
    }

    v38 = *(a1 + 552);
    for (j = *(a1 + 560); v38 != j; v38 += 24)
    {
      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        v41 = buf[23] >= 0 ? buf : *buf;
        LODWORD(__p) = 136446210;
        *(&__p + 4) = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I fDns:  %{public}s", &__p, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (*(a1 + 604) != 4)
    {
      sub_100475C48(a1, a1 + 488, 4u);
    }

    if ((v130 & 1) == 0)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = asStringBool();
        v44 = asStringBool(*(a1 + 440) != 0);
        *buf = 136315394;
        *&buf[4] = v43;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp: ipv4ConfigState=%s, ipv4Timer=%s", buf, 0x16u);
      }

      if (*(a1 + 433) == 1 && (*(a1 + 432) & 1) == 0)
      {
        v52 = *(a1 + 440);
        v53 = *(a1 + 40);
        v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
        if (v52)
        {
          if (v54)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired after timer - the timer already set", buf, 2u);
          }
        }

        else
        {
          if (v54)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired after timer anyway if XLAT not configured properly", buf, 2u);
          }

          *&buf[8] = 0;
          *buf = 0;
          sub_1002306AC((a1 + 8), buf);
          Registry::getTimerService(&__p, *(a1 + 48));
          v87 = __p;
          sub_10000501C(v139, "XlatTimer");
          v88 = *(a1 + 24);
          object = v88;
          if (v88)
          {
            dispatch_retain(v88);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_1004795B8;
          aBlock[3] = &unk_101E4EA30;
          aBlock[4] = a1;
          aBlock[5] = *buf;
          v135 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          }

          CSIPacketAddress::CSIPacketAddress(&v136, v170);
          v137 = _Block_copy(aBlock);
          sub_100D23364(v87, v139, 0, 1000000, &object, &v137);
          v89 = *(a1 + 440);
          *(a1 + 440) = v141;
          v141 = 0;
          if (v89)
          {
            (*(*v89 + 8))(v89);
          }

          if (v137)
          {
            _Block_release(v137);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v140 < 0)
          {
            operator delete(v139[0]);
          }

          if (*(&__p + 1))
          {
            sub_100004A34(*(&__p + 1));
          }

          if (v135)
          {
            std::__shared_weak_count::__release_weak(v135);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }
        }
      }

      else
      {
        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired", buf, 2u);
        }

        v46 = *(a1 + 768);
        if (v46)
        {
          v47 = std::__shared_weak_count::lock(v46);
          if (v47)
          {
            v48 = *(a1 + 760);
            if (v48)
            {
              (*(*v48 + 16))(v48, v170);
LABEL_106:
              sub_100004A34(v47);
              goto LABEL_41;
            }
          }
        }

        else
        {
          v47 = 0;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101771C00();
        }

        if (v47)
        {
          goto LABEL_106;
        }
      }
    }
  }

  else if (v28)
  {
    v49 = *(a1 + 40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I IPv6Service NOT onlineSuccess", buf, 2u);
    }

    sub_10000501C(v170, "0.0.0.0");
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (v170[23] < 0)
    {
      operator delete(*v170);
    }

    *(a1 + 560) = *(a1 + 552);
    if (*(a1 + 604) != 1)
    {
      sub_100475C48(a1, a1 + 488, 1u);
    }
  }

LABEL_41:
  if (v26)
  {
    v31 = *(a1 + 664);
    if (v31)
    {
      goto LABEL_43;
    }

    v31 = *(a1 + 472);
    if (v31)
    {
      v50 = *(a1 + 480);
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 664) = v31;
      v51 = *(a1 + 672);
      *(a1 + 672) = v50;
      if (!v51 || (sub_100004A34(v51), (v31 = *(a1 + 664)) != 0))
      {
LABEL_43:
        v32 = *(a1 + 672);
        v132 = v31;
        v133 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        memset(buf, 0, 24);
        (*(*a1 + 168))(a1, &v132, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v133)
        {
          sub_100004A34(v133);
        }
      }
    }

    sub_10047983C(0x8004F);
  }

  sub_10001021C(&cf);
  sub_10001021C(&v161);
  if (SHIBYTE(v162[2]) < 0)
  {
    operator delete(v162[0]);
  }

  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163);
  }
}

void sub_1004788EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *aBlock, dispatch_object_t object, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, const void *a59, const void *a60, void *__p, uint64_t a62, int a63)
{
  if (a39)
  {
    sub_100004A34(a39);
  }

  sub_10001021C(&a59);
  sub_10001021C(&a60);
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100478C1C(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fIPv4SCDict...", buf, 2u);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[12] = 0;
    *buf = v3;
    sub_10001021C(buf);
  }

  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fDSRefForIPv4...", buf, 2u);
  }

  v5 = a1[91];
  if (v5)
  {
    SCDynamicStoreSetDispatchQueue(v5, 0);
    v6 = a1[91];
    a1[91] = 0;
    *buf = v6;
    sub_10048662C(buf);
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fIPv4Service...", buf, 2u);
  }

  v8 = a1[88];
  v9 = a1[5];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv4Service tear down...", buf, 2u);
      v8 = a1[88];
    }

    a1[88] = 0;
    cf = v8;
    sub_10047B508(a1, &cf);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: already empty", buf, 2u);
  }

  return 2;
}

void sub_100478DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100478DF8(void *a1, int a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Doing SC cleanup while during offline for IPFamily %u", buf, 8u);
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v26 = v5;
  if (Mutable && v5)
  {
    serviceID = 0;
    sub_100473DEC(a1, &serviceID);
    if (!serviceID)
    {
      v12 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N failed to get serviceID for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_43;
    }

    store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:offline", 0, 0);
    if (!store)
    {
      v13 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I failed create dynamic store for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_42;
    }

    key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
    if (!key)
    {
      v14 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I failed create service entity key for DNS for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_41;
    }

    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!theArray)
    {
      v11 = 0;
LABEL_40:
      sub_1000279DC(&theArray);
LABEL_41:
      sub_100005978(&key);
LABEL_42:
      sub_10048662C(&store);
LABEL_43:
      sub_100005978(&serviceID);
      goto LABEL_44;
    }

    theDict = 0;
    *buf = SCDynamicStoreCopyValue(store, key);
    sub_100138C38(&theDict, buf);
    if (theDict && CFDictionaryContainsKey(theDict, kSCPropNetDNSServerAddresses))
    {
      *buf = 0;
      Value = CFDictionaryGetValue(theDict, kSCPropNetDNSServerAddresses);
      sub_1001FA5E0(buf, &Value);
      if (*buf)
      {
        Count = CFArrayGetCount(*buf);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*buf, i);
            if (sub_10047FF70() != a2)
            {
              CFArrayAppendValue(theArray, ValueAtIndex);
            }
          }
        }
      }

      sub_100010250(buf);
    }

    if (CFArrayGetCount(theArray))
    {
      v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *buf = v9;
      if (!v9)
      {
        sub_1000296E0(buf);
        goto LABEL_38;
      }

      CFDictionarySetValue(v9, kSCPropNetDNSServerAddresses, theArray);
      CFDictionarySetValue(v26, key, *buf);
      sub_1000296E0(buf);
    }

    else
    {
      CFArrayAppendValue(Mutable, key);
    }

    v15 = &kSCEntNetIPv6;
    if (a2 != 2)
    {
      v15 = &kSCEntNetIPv4;
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, *v15);
    v17 = key;
    key = NetworkServiceEntity;
    *buf = v17;
    sub_100005978(buf);
    if (key)
    {
      CFArrayAppendValue(Mutable, key);
      SCDynamicStoreSetMultiple(store, v26, Mutable, 0);
      (*(*a1 + 208))(a1);
      v11 = 1;
LABEL_39:
      sub_10001021C(&theDict);
      goto LABEL_40;
    }

    v18 = a1[5];
    v11 = 0;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I failed create service entity key for IPFamily %u", buf, 8u);
LABEL_38:
    v11 = 0;
    goto LABEL_39;
  }

  v10 = a1[5];
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I failed to create array for keys to remove for IPFamily %u", buf, 8u);
    v11 = 0;
  }

LABEL_44:
  sub_1000296E0(&v26);
  sub_1000279DC(&Mutable);
  return v11;
}

void sub_10047932C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va7, a2);
  va_start(va6, a2);
  va_start(va5, a2);
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v9 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v11 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v13 = va_arg(va6, const void *);
  va_copy(va7, va6);
  v15 = va_arg(va7, const void *);
  sub_100010250(va7);
  sub_10001021C(va);
  sub_1000279DC(va1);
  sub_100005978(va2);
  sub_10048662C(va3);
  sub_100005978(va4);
  sub_1000296E0(va5);
  sub_1000279DC(va6);
  _Unwind_Resume(a1);
}

uint64_t sub_1004793DC(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fIPv6SCDict...", buf, 2u);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    *buf = v3;
    sub_10001021C(buf);
  }

  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fDSRefForIPv6...", buf, 2u);
  }

  v5 = a1[90];
  if (v5)
  {
    SCDynamicStoreSetDispatchQueue(v5, 0);
    v6 = a1[90];
    a1[90] = 0;
    *buf = v6;
    sub_10048662C(buf);
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fIPv6Service...", buf, 2u);
  }

  v8 = a1[86];
  v9 = a1[5];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv6Service tear down...", buf, 2u);
      v8 = a1[86];
    }

    a1[86] = 0;
    cf = v8;
    sub_10047B970(a1, &cf);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: already empty", buf, 2u);
  }

  return 2;
}

void sub_1004795A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

void sub_1004795B8(void *a1)
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
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E ipv4Timer: XLAT464 config has not completed in time", buf, 2u);
        }

        sub_10047973C(v3 + 432);
        v7 = *(v3 + 768);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = *(v3 + 760);
            if (v9)
            {
              v10 = *(v3 + 40);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *v11 = 0;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired - timer expired", v11, 2u);
              }

              (*(*v9 + 16))(v9, a1 + 7);
              goto LABEL_15;
            }
          }
        }

        else
        {
          v8 = 0;
        }

        if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101771C00();
          if (!v8)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v8)
        {
LABEL_15:
          sub_100004A34(v8);
        }
      }

LABEL_16:
      sub_100004A34(v5);
    }
  }
}

void sub_100479718(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10047973C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 16))(result);
    result = *(a1 + 8);
    *(a1 + 8) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1004797D0(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  CSIPacketAddress::CSIPacketAddress((a1 + 7), (a2 + 7));
}

void sub_100479814(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047982C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_10047983C(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_100479968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_1004799E8(id a1, void *a2)
{
  v2 = *(a2 + 9);
  *(a2 + 24) = 1;
  *(a2 + 9) = v2 | 0xA;
  *(a2 + 7) = 6;
}

void sub_100479A0C(uint64_t a1, int a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771CAC();
    }
  }

  else
  {
    v5 = v4;
    *__dst = 0u;
    v19 = 0u;
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
    CSIPDPManager::getInterfaceNameById();
    strlcpy(__dst, __p, 0x10uLL);
    LODWORD(v19) = a2;
    if (ioctl(v5, 0x802069E2uLL, __dst) < 0)
    {
      __error();
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771C34();
      }
    }

    else if (close(v5) < 0)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        *buf = 67109634;
        v13 = v5;
        v14 = 2080;
        v15 = v8;
        v16 = 1024;
        v17 = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error closing socket %d: %s (%d)", buf, 0x18u);
      }
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100479BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100479BEC(uint64_t a1)
{
  v1 = *(a1 + 704);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Refresh IPv4Service", v5, 2u);
    }

    sub_100476050(a1, 1);
  }

  return v1 != 0;
}

BOOL sub_100479C74(uint64_t a1)
{
  v1 = *(a1 + 688);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Refresh IPv6Service", buf, 2u);
    }

    IPConfigurationServiceRefreshConfiguration();
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged to be called", v6, 2u);
    }

    sub_100476ED0(a1, 1);
  }

  return v1 != 0;
}

BOOL sub_100479D48(uint64_t a1, int a2, const CSIPacketAddress **a3, CSIPacketAddress **a4)
{
  if (a2 == 1)
  {
    v32 = a4;
    v7 = 296;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v32 = a4;
    v7 = 488;
LABEL_5:
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I refreshing DNS, ipFamily %u", buf, 8u);
    }

    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v12 = v43 >= 0 ? buf : *buf;
          *v44 = 136446210;
          *&v44[4] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I refreshing DNS:%{public}s", v44, 0xCu);
          if (v43 < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = (v9 + 24);
      }

      while (v9 != v10);
    }

    if (*(a1 + v7 + 120) == 2)
    {
      v13 = "IPv6Service: ";
    }

    else
    {
      v13 = "IPv4Service: ";
    }

    sub_10047A3A4(a1, a3, a1 + v7, v13);
    sub_10047A99C(a1, a3, a1 + v7);
    sub_10047ACCC(v14, a3, a1 + v7);
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I In Function", buf, 2u);
    }

    *v44 = 0;
    sub_100473DEC(a1, v44);
    if (*v44)
    {
      theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (theDict)
      {
        cf = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:refreshDNS", 0, 0);
        if (cf)
        {
          value = 0;
          sub_100473238(a1, &v35);
          v16 = *v44;
          v34 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          sub_10047ADAC(a1, &v35, a1 + v7, v32, v16, &v34, &value);
          sub_10048662C(&v34);
          if (v36)
          {
            sub_100004A34(v36);
          }

          if (value)
          {
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *v44, kSCEntNetDNS);
            *buf = NetworkServiceEntity;
            if (NetworkServiceEntity)
            {
              CFDictionarySetValue(theDict, NetworkServiceEntity, value);
              sub_100010180(&v33, &theDict);
              sub_100472F48(a1, "refreshDNS: ip dict: DNS", &v33);
              sub_10001021C(&v33);
              v18 = SCDynamicStoreSetMultiple(cf, theDict, 0, 0);
              v19 = v18 != 0;
              v20 = *(a1 + 40);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *v40 = 67109120;
                v41 = v18 != 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I SCDynamicStoreSetMultiple() result %u", v40, 8u);
              }
            }

            else
            {
              v29 = *(a1 + 40);
              v19 = 0;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v40 = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Creating key for DNS failed, bailing out", v40, 2u);
                v19 = 0;
              }
            }

            sub_100005978(buf);
          }

          else
          {
            v24 = *v32;
            v25 = v32[1];
            v26 = *(a1 + 40);
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            if (v24 == v25)
            {
              if (v27)
              {
                v31 = asString();
                *buf = 136315138;
                *&buf[4] = v31;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Failed to create SCD Dict for DNS for %s, bailing out", buf, 0xCu);
              }

              v19 = 0;
            }

            else
            {
              if (v27)
              {
                v28 = asString();
                *buf = 136315138;
                *&buf[4] = v28;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DNS for %s is empty, but other DNS is available, bailing out", buf, 0xCu);
              }

              v19 = 1;
            }
          }

          sub_10001021C(&value);
        }

        else
        {
          v23 = *(a1 + 40);
          v19 = 0;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Failed to create SCDynamicStore for notifySystemConfigOfSettings, bailing out", buf, 2u);
            v19 = 0;
          }
        }

        sub_10048662C(&cf);
      }

      else
      {
        v19 = 0;
      }

      sub_1000296E0(&theDict);
    }

    else
    {
      v22 = *(a1 + 40);
      v19 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I not setting DNS", buf, 2u);
        v19 = 0;
      }
    }

    sub_100005978(v44);
    return v19;
  }

  v21 = *(a1 + 40);
  v19 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E no IP model available: family=%u", buf, 8u);
    return 0;
  }

  return v19;
}

void sub_10047A304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_10048662C(va1);
  sub_1000296E0(va2);
  sub_100005978((v10 - 112));
  _Unwind_Resume(a1);
}

void sub_10047A3A4(uint64_t a1, const CSIPacketAddress **a2, uint64_t a3, void *a4)
{
  memset(v48, 0, sizeof(v48));
  v7 = *a2;
  if (a2[1] == v7)
  {
    CSIPacketAddress::CSIPacketAddress(v48);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(v48, v7);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v10 = ServiceMap;
  if (v11 < 0)
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
  v46[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v46);
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
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_12:
  if (CSIPacketAddress::isZeroIP(v48))
  {
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (!v17)
  {
    goto LABEL_39;
  }

  (*(*v17 + 120))(v46, v17);
  if (v47 >= 0)
  {
    v19 = SHIBYTE(v47);
  }

  else
  {
    v19 = v46[1];
  }

  if ((SHIBYTE(v47) & 0x8000000000000000) == 0)
  {
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_39:
    v31 = *(a3 + 64);
    for (i = *(a3 + 72); i == v31; i = *(a3 + 72))
    {
      CSIPacketAddress::CSIPacketAddress(v46);
      sub_10047DF64(a3 + 64, v46);
      v31 = *(a3 + 64);
    }

    CSIPacketAddress::operator=();
    goto LABEL_67;
  }

  operator delete(v46[0]);
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_21:
  (*(*v17 + 120))(v46, v17);
  if (v47 >= 0)
  {
    v20 = SHIBYTE(v47);
  }

  else
  {
    v20 = v46[1];
  }

  if ((SHIBYTE(v47) & 0x8000000000000000) != 0)
  {
    operator delete(v46[0]);
    if (v20)
    {
      goto LABEL_26;
    }
  }

  else if (v20)
  {
LABEL_26:
    while (*(a3 + 72) == *(a3 + 64))
    {
      CSIPacketAddress::CSIPacketAddress(v46);
      sub_10047DF64(a3 + 64, v46);
    }

    (*(*v17 + 120))(__p, v17);
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_67;
  }

LABEL_31:
  if (!CSIPacketAddress::isZeroIP(v48))
  {
    goto LABEL_67;
  }

  v44 = 0;
  v45 = 0;
  sub_10047DFB8(a1, &v44);
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v21 = Registry::getServiceMap(*(a1 + 48));
  v22 = v21;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v21);
  __p[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, __p);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_44;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_44:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_45:
  (*(*v29 + 80))(v40, v29, *(v44 + 52), 1, @"FallbackDNSAddress", 0, 1);
  v43 = 0;
  v42 = 0uLL;
  ctu::cf::assign();
  *v46 = v42;
  v47 = v43;
  v43 = 0;
  v42 = 0uLL;
  sub_10000A1EC(v40);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v33 = HIBYTE(v47);
  v34 = SHIBYTE(v47);
  if (v47 < 0)
  {
    v33 = v46[1];
  }

  if (v33)
  {
    v35 = *(a1 + 40);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v46[0];
      if (v34 >= 0)
      {
        v36 = v46;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = a4;
      WORD2(__p[1]) = 2082;
      *(&__p[1] + 6) = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %sNo DNS address given but falling back to carrier's default DNS address: %{public}s", __p, 0x16u);
      LOBYTE(v34) = HIBYTE(v47);
    }

    memset(__p, 0, 24);
    if ((v34 & 0x80u) == 0)
    {
      v37 = v46;
    }

    else
    {
      v37 = v46[0];
    }

    sub_10000501C(v40, v37);
    CSIPacketAddress::CSIPacketAddress();
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v38 = *(a3 + 64);
    for (j = *(a3 + 72); j == v38; j = *(a3 + 72))
    {
      CSIPacketAddress::CSIPacketAddress(v40);
      sub_10047DF64(a3 + 64, v40);
      v38 = *(a3 + 64);
    }

    CSIPacketAddress::operator=();
    LOBYTE(v34) = HIBYTE(v47);
  }

  if ((v34 & 0x80) != 0)
  {
    operator delete(v46[0]);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

LABEL_67:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}