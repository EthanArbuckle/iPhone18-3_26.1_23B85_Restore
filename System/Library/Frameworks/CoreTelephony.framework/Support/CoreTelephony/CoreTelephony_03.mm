void sub_23751AB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 40));
  _Unwind_Resume(a1);
}

void sub_23751AC5C(uint64_t a1, ...)
{
  va_start(va, a1);
  GsmCell::~GsmCell(va);
  JUMPOUT(0x23751AC4CLL);
}

void sub_23751AF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 40));
  _Unwind_Resume(a1);
}

void sub_23751B0C8(uint64_t a1, ...)
{
  va_start(va, a1);
  GsmCell::~GsmCell(va);
  JUMPOUT(0x23751B0B8);
}

void sub_23751B448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 40));
  _Unwind_Resume(a1);
}

void sub_23751B5AC(uint64_t a1, ...)
{
  va_start(va, a1);
  GsmCell::~GsmCell(va);
  JUMPOUT(0x23751B59CLL);
}

void sub_23751B940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 40));
  _Unwind_Resume(a1);
}

void sub_23751BAA4(uint64_t a1, ...)
{
  va_start(va, a1);
  GsmCell::~GsmCell(va);
  JUMPOUT(0x23751BA94);
}

void sub_23751BE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  xpc_release(object);
  xpc_release(*(v18 - 40));
  _Unwind_Resume(a1);
}

void sub_23751C050(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GsmCell::~GsmCell(va);
  JUMPOUT(0x23751C040);
}

void sub_23751C314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void write_rest_value(const RegisteredNetworkInfo *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v54 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v54 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v54 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v54 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v52, v7, v8, v9);
  v50 = &v54;
  v51 = "rat";
  xpc::dict::object_proxy::operator=(&v50, &v52, &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v52);
  v52 = 0;
  v10 = *(a1 + 1);
  v11 = asString();
  ctu::rest::detail::write_enum_string_value(&v48, v10, v11, v12);
  v50 = &v54;
  v51 = "data_mode";
  xpc::dict::object_proxy::operator=(&v50, &v48, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(v48);
  v48 = 0;
  v13 = *(a1 + 2);
  v14 = asString();
  ctu::rest::detail::write_enum_string_value(&v46, v13, v14, v15);
  v50 = &v54;
  v51 = "reg_status";
  xpc::dict::object_proxy::operator=(&v50, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_BOOL_create(*(a1 + 804));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v50 = &v54;
  v51 = "is_satellite_system";
  xpc::dict::object_proxy::operator=(&v50, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (*(a1 + 104) == 1)
  {
    write_rest_value((a1 + 16), &v42);
    v50 = &v54;
    v51 = "gsm";
    xpc::dict::object_proxy::operator=(&v50, &v42, &v43);
    xpc_release(v43);
    v43 = 0;
    xpc_release(v42);
    v42 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "gsm";
    xpc::dict::object_proxy::operator=(&v41, &v50);
    xpc_release(v41);
    v41 = 0;
  }

  if (*(a1 + 208) == 1)
  {
    write_rest_value(a1 + 56, &v39);
    v50 = &v54;
    v51 = "umts";
    xpc::dict::object_proxy::operator=(&v50, &v39, &v40);
    xpc_release(v40);
    v40 = 0;
    xpc_release(v39);
    v39 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "umts";
    xpc::dict::object_proxy::operator=(&object, &v50);
    xpc_release(object);
    object = 0;
  }

  if (*(a1 + 312) == 1)
  {
    write_rest_value(a1 + 108, &v36);
    v50 = &v54;
    v51 = "tds";
    xpc::dict::object_proxy::operator=(&v50, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v36);
    v36 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "tds";
    xpc::dict::object_proxy::operator=(&v35, &v50);
    xpc_release(v35);
    v35 = 0;
  }

  if (*(a1 + 448) == 1)
  {
    write_rest_value(a1 + 160, &v33);
    v50 = &v54;
    v51 = "lte";
    xpc::dict::object_proxy::operator=(&v50, &v33, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(v33);
    v33 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "lte";
    xpc::dict::object_proxy::operator=(&v32, &v50);
    xpc_release(v32);
    v32 = 0;
  }

  if (*(a1 + 600) == 1)
  {
    write_rest_value(a1 + 228, &v30);
    v50 = &v54;
    v51 = "nr";
    xpc::dict::object_proxy::operator=(&v50, &v30, &v31);
    xpc_release(v31);
    v31 = 0;
    xpc_release(v30);
    v30 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "nr";
    xpc::dict::object_proxy::operator=(&v29, &v50);
    xpc_release(v29);
    v29 = 0;
  }

  if (*(a1 + 712) == 1)
  {
    write_rest_value(a1 + 304, &v27);
    v50 = &v54;
    v51 = "1x";
    xpc::dict::object_proxy::operator=(&v50, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "1x";
    xpc::dict::object_proxy::operator=(&v26, &v50);
    xpc_release(v26);
    v26 = 0;
  }

  if (*(a1 + 792) == 1)
  {
    write_rest_value(a1 + 360, &v24);
    v50 = &v54;
    v51 = "evdo";
    xpc::dict::object_proxy::operator=(&v50, &v24, &v25);
    xpc_release(v25);
    v25 = 0;
    xpc_release(v24);
    v24 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "evdo";
    xpc::dict::object_proxy::operator=(&v23, &v50);
    xpc_release(v23);
    v23 = 0;
  }

  if (*(a1 + 801) == 1)
  {
    v21 = xpc_int64_create(*(a1 + 800));
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    v50 = &v54;
    v51 = "hdr";
    xpc::dict::object_proxy::operator=(&v50, &v21, &v22);
    xpc_release(v22);
    v22 = 0;
    xpc_release(v21);
    v21 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "hdr";
    xpc::dict::object_proxy::operator=(&v20, &v50);
    xpc_release(v20);
    v20 = 0;
  }

  if (*(a1 + 803) == 1)
  {
    v18 = xpc_BOOL_create(*(a1 + 802));
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v50 = &v54;
    v51 = "is_home";
    xpc::dict::object_proxy::operator=(&v50, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

  else
  {
    v50 = &v54;
    v51 = "is_home";
    xpc::dict::object_proxy::operator=(&v17, &v50);
    xpc_release(v17);
    v17 = 0;
  }

  v16 = v54;
  *a2 = v54;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v54);
}

void xpc::dict::object_proxy::operator=(xpc_object_t *a1, uint64_t a2)
{
  object = xpc_null_create();
  xpc::dict::object_proxy::operator=(a2, &object, a1);
  xpc_release(object);
}

void read_rest_value(RegisteredNetworkInfo *a1, void **a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  xdict = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    *&v31 = &xdict;
    *(&v31 + 1) = "rat";
    xpc::dict::object_proxy::operator xpc::object(&v31, &object);
    v5 = MEMORY[0x2383CD810](object);
    v6 = MEMORY[0x277D864C0];
    v7 = MEMORY[0x277D86448];
    if (v5 == MEMORY[0x277D864C0])
    {
      LODWORD(v27) = *a1;
      ctu::rest::detail::read_enum_string_value();
      *a1 = v27;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
    *&v31 = &xdict;
    *(&v31 + 1) = "data_mode";
    xpc::dict::object_proxy::operator xpc::object(&v31, &object);
    v8 = MEMORY[0x2383CD810](object);
    if (v8 == v6)
    {
      LODWORD(v27) = *(a1 + 1);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 1) = v27;
    }

    else if (v8 == v7 || v8 == MEMORY[0x277D86498] || v8 == MEMORY[0x277D864C8])
    {
      *(a1 + 1) = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
    *&v31 = &xdict;
    *(&v31 + 1) = "reg_status";
    xpc::dict::object_proxy::operator xpc::object(&v31, &object);
    v9 = MEMORY[0x2383CD810](object);
    if (v9 == v6)
    {
      LODWORD(v27) = *(a1 + 2);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 2) = v27;
    }

    else if (v9 == v7 || v9 == MEMORY[0x277D86498] || v9 == MEMORY[0x277D864C8])
    {
      *(a1 + 2) = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
    *&v31 = &xdict;
    *(&v31 + 1) = "is_satellite_system";
    xpc::dict::object_proxy::operator xpc::object(&v31, &object);
    *(a1 + 804) = xpc::dyn_cast_or_default();
    xpc_release(object);
    object = &xdict;
    v29 = "gsm";
    if (xpc_dictionary_get_value(xdict, "gsm"))
    {
      *v32 = 0u;
      memset(v33, 0, 56);
      v31 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      BYTE8(v33[2]) = 0;
      *(&v33[2] + 10) = 0;
      *&v33[3] = 0;
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v10 = *(a1 + 104);
      *(a1 + 8) = v31;
      if (v10 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        *(a1 + 88) = *(&v33[2] + 8);
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 56), (v33 + 8));
        *(a1 + 88) = *(&v33[2] + 8);
        *(a1 + 104) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "umts";
    if (xpc_dictionary_get_value(xdict, "umts"))
    {
      memset(v33, 0, 64);
      v31 = 0u;
      *v32 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      BYTE8(v33[2]) = 0;
      memset(&v33[2] + 10, 0, 18);
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v11 = *(a1 + 208);
      *(a1 + 56) = v31;
      if (v11 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        *(a1 + 184) = *(&v33[2] + 8);
        *(a1 + 50) = DWORD2(v33[3]);
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 152), (v33 + 8));
        *(a1 + 184) = *(&v33[2] + 8);
        *(a1 + 50) = DWORD2(v33[3]);
        *(a1 + 208) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "tds";
    if (xpc_dictionary_get_value(xdict, "tds"))
    {
      memset(v33, 0, 64);
      v31 = 0u;
      *v32 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      BYTE8(v33[2]) = 0;
      memset(&v33[2] + 10, 0, 18);
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v12 = *(a1 + 312);
      *(a1 + 108) = v31;
      if (v12 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        *(a1 + 18) = *(&v33[2] + 8);
        *(a1 + 76) = DWORD2(v33[3]);
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 256), (v33 + 8));
        *(a1 + 18) = *(&v33[2] + 8);
        *(a1 + 76) = DWORD2(v33[3]);
        *(a1 + 312) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "lte";
    if (xpc_dictionary_get_value(xdict, "lte"))
    {
      memset(v33, 0, 96);
      v31 = 0u;
      *v32 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      BYTE8(v33[2]) = 0;
      DWORD2(v33[4]) = 0;
      BYTE12(v33[4]) = 0;
      LODWORD(v33[5]) = 0;
      WORD2(v33[5]) = 0;
      *(&v33[5] + 1) = 0;
      *(&v33[2] + 12) = 0;
      *(&v33[3] + 2) = 0;
      *(&v33[3] + 12) = 0;
      *(&v33[4] + 3) = 0;
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v13 = *(a1 + 448);
      *(a1 + 160) = v31;
      if (v13 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        v14 = *(&v33[3] + 8);
        *(a1 + 392) = *(&v33[2] + 8);
        *(a1 + 408) = v14;
        *(a1 + 424) = *(&v33[4] + 8);
        *(a1 + 55) = *(&v33[5] + 1);
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 360), (v33 + 8));
        v15 = *(&v33[3] + 8);
        *(a1 + 392) = *(&v33[2] + 8);
        *(a1 + 408) = v15;
        *(a1 + 424) = *(&v33[4] + 8);
        *(a1 + 55) = *(&v33[5] + 1);
        *(a1 + 448) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "nr";
    if (xpc_dictionary_get_value(xdict, "nr"))
    {
      *v32 = 0u;
      memset(v33, 0, 112);
      v31 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      WORD4(v33[2]) = 0;
      HIDWORD(v33[4]) = 0;
      LOBYTE(v33[5]) = 0;
      DWORD1(v33[5]) = 0;
      WORD4(v33[5]) = 0;
      memset(&v33[2] + 12, 0, 18);
      *&v33[4] = 0;
      *(&v33[4] + 7) = 0;
      HIDWORD(v33[5]) = 3;
      v33[6] = 0uLL;
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v16 = *(a1 + 600);
      *(a1 + 228) = v31;
      if (v16 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        v17 = *(&v33[3] + 8);
        v18 = *(&v33[5] + 8);
        *(a1 + 35) = *(&v33[4] + 8);
        *(a1 + 36) = v18;
        *(a1 + 74) = *(&v33[6] + 1);
        *(a1 + 33) = *(&v33[2] + 8);
        *(a1 + 34) = v17;
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 496), (v33 + 8));
        v19 = *(&v33[3] + 8);
        v20 = *(&v33[5] + 8);
        *(a1 + 35) = *(&v33[4] + 8);
        *(a1 + 36) = v20;
        *(a1 + 74) = *(&v33[6] + 1);
        *(a1 + 33) = *(&v33[2] + 8);
        *(a1 + 34) = v19;
        *(a1 + 600) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "1x";
    if (xpc_dictionary_get_value(xdict, "1x"))
    {
      memset(v33, 0, 72);
      v31 = 0u;
      *v32 = 0u;
      MCC::MCC((&v31 + 8));
      MNC::MNC((v33 + 8));
      BYTE8(v33[2]) = 0;
      *(&v33[2] + 10) = 0;
      *(&v33[3] + 4) = 0;
      *(&v33[3] + 10) = 0;
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v21 = *(a1 + 712);
      *(a1 + 304) = v31;
      if (v21 == 1)
      {
        MCC::operator=();
        MCC::operator=();
        *(a1 + 680) = *(&v33[2] + 8);
        *(a1 + 690) = *(&v33[3] + 2);
      }

      else
      {
        MCC::MCC();
        MCC::MCC((a1 + 648), (v33 + 8));
        *(a1 + 680) = *(&v33[2] + 8);
        *(a1 + 690) = *(&v33[3] + 2);
        *(a1 + 712) = 1;
      }

      if (SBYTE7(v33[2]) < 0)
      {
        operator delete(*&v33[1]);
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    object = &xdict;
    v29 = "evdo";
    if (xpc_dictionary_get_value(xdict, "evdo"))
    {
      memset(v33, 0, 40);
      v31 = 0u;
      *v32 = 0u;
      MCC::MCC((&v31 + 8));
      BYTE8(v33[0]) = 0;
      memset(v33 + 10, 0, 28);
      xpc::dict::object_proxy::operator xpc::object(&object, &v27);
      read_rest_value(&v31, &v27);
      xpc_release(v27);
      v22 = *(a1 + 792);
      *(a1 + 360) = v31;
      v23 = (a1 + 760);
      if (v22 == 1)
      {
        MCC::operator=();
        *v23 = *(v33 + 8);
        *(a1 + 774) = *(&v33[1] + 6);
      }

      else
      {
        MCC::MCC();
        *v23 = *(v33 + 8);
        *(a1 + 774) = *(&v33[1] + 6);
        *(a1 + 792) = 1;
      }

      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(v32[0]);
      }
    }

    *&v31 = &xdict;
    *(&v31 + 1) = "hdr";
    if (xpc_dictionary_get_value(xdict, "hdr"))
    {
      xpc::dict::object_proxy::operator xpc::object(&v31, &object);
      v24 = xpc::dyn_cast_or_default();
      xpc_release(object);
      *(a1 + 400) = v24 | 0x100;
    }

    *&v31 = &xdict;
    *(&v31 + 1) = "is_home";
    if (xpc_dictionary_get_value(xdict, "is_home"))
    {
      xpc::dict::object_proxy::operator xpc::object(&v31, &object);
      v25 = xpc::dyn_cast_or_default();
      xpc_release(object);
      *(a1 + 401) = v25 | 0x100;
    }
  }

  else
  {
    RegisteredNetworkInfo::RegisteredNetworkInfo(&v31);
    RegisteredNetworkInfo::operator=();
    RegisteredNetworkInfo::~RegisteredNetworkInfo(&v31);
  }

  xpc_release(xdict);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_23751D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 647) < 0)
  {
    operator delete(*(v20 + 624));
  }

  GsmCell::~GsmCell(&a13);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void read_rest_value(_BYTE *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v8 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v8 = v3;
  }

  if (MEMORY[0x2383CD810](v3) == v4)
  {
    v5 = &v8;
    v6 = "selection";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = &v8;
    v6 = "internal";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    a1[1] = xpc::dyn_cast_or_default();
    xpc_release(object);
    v3 = v8;
  }

  else
  {
    *a1 = 0;
    a1[2] = 0;
  }

  xpc_release(v3);
}

void sub_23751DC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v22 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v22 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v22 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v18 = &v22;
  v19 = "limited_service";
  xpc::dict::object_proxy::operator=(&v18, &object, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(object);
  object = 0;
  v7 = *(a1 + 4);
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v16, v7, v8, v9);
  v18 = &v22;
  v19 = "bearer_support";
  xpc::dict::object_proxy::operator=(&v18, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v10 = *(a1 + 8);
  v11 = asString();
  ctu::rest::detail::write_enum_string_value(&v14, v10, v11, v12);
  v18 = &v22;
  v19 = "access_barred";
  xpc::dict::object_proxy::operator=(&v18, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v22;
  *a2 = v22;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v22);
}

{
  v18 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_BOOL_create(*a1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "saDisabled";
  xpc::dict::object_proxy::operator=(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v12 = xpc_int64_create(*(a1 + 4));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "saReasonMask";
  xpc::dict::object_proxy::operator=(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_BOOL_create(*(a1 + 8));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "nsaDisabled";
  xpc::dict::object_proxy::operator=(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 12));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "nsaReasonMask";
  xpc::dict::object_proxy::operator=(&v14, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v18;
  *a2 = v18;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void read_rest_value(NRDisableStatus *a1, void **a2)
{
  NRDisableStatus::NRDisableStatus(&v8);
  *a1 = v8;
  v4 = *a2;
  v7 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CD810](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v5)
  {
    *&v8 = &v7;
    *(&v8 + 1) = "saDisabled";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    *&v8 = &v7;
    *(&v8 + 1) = "saReasonMask";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default();
    xpc_release(object);
    *&v8 = &v7;
    *(&v8 + 1) = "nsaDisabled";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 8) = xpc::dyn_cast_or_default();
    xpc_release(object);
    *&v8 = &v7;
    *(&v8 + 1) = "nsaReasonMask";
    xpc::dict::object_proxy::operator xpc::object(&v8, &object);
    *(a1 + 3) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  xpc_release(v7);
}

void sub_23751E59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

BOOL rest::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  return *(a1 + 24) == *(a2 + 24);
}

void rest::write_rest_value(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v20 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v20 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v20 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v18, v7, v8, v9);
  v16 = &v20;
  v17 = "adjusted";
  xpc::dict::object_proxy::operator=(&v16, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v10 = a1[1];
  v11 = asString();
  ctu::rest::detail::write_enum_string_value(&v14, v10, v11, v12);
  v16 = &v20;
  v17 = "actual";
  xpc::dict::object_proxy::operator=(&v16, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v20;
  *a2 = v20;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v20);
}

void rest::read_rest_value(int *a1, void **a2)
{
  v3 = *a2;
  v12 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    v9 = &v12;
    v10 = "adjusted";
    xpc::dict::object_proxy::operator xpc::object(&v9, &object);
    v5 = MEMORY[0x2383CD810](object);
    v6 = MEMORY[0x277D864C0];
    v7 = MEMORY[0x277D86448];
    if (v5 == MEMORY[0x277D864C0])
    {
      v13 = *a1;
      ctu::rest::detail::read_enum_string_value();
      *a1 = v13;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
    v9 = &v12;
    v10 = "actual";
    xpc::dict::object_proxy::operator xpc::object(&v9, &object);
    v8 = MEMORY[0x2383CD810](object);
    if (v8 == v6)
    {
      v13 = a1[1];
      ctu::rest::detail::read_enum_string_value();
      a1[1] = v13;
    }

    else if (v8 == v7 || v8 == MEMORY[0x277D86498] || v8 == MEMORY[0x277D864C8])
    {
      a1[1] = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
  }

  else
  {
    *a1 = -1;
  }

  xpc_release(v12);
}

uint64_t rest::operator==(uint64_t a1, uint64_t a2)
{
  result = MCCAndMNC::operator==();
  if (result)
  {
    return *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 69) == *(a2 + 69);
  }

  return result;
}

void rest::write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v21 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v21 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v21 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v21 = v6;
LABEL_9:
  xpc_release(v5);
  write_rest_value(a1, &v19);
  v17 = &v21;
  v18 = "plmn";
  xpc::dict::object_proxy::operator=(&v17, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v7 = *(a1 + 64);
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v15, v7, v8, v9);
  v17 = &v21;
  v18 = "rat";
  xpc::dict::object_proxy::operator=(&v17, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = xpc_BOOL_create(*(a1 + 68));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "home_country";
  xpc::dict::object_proxy::operator=(&v17, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_BOOL_create(*(a1 + 69));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "is_satellite_system";
  xpc::dict::object_proxy::operator=(&v17, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v21;
  *a2 = v21;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v21);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    v23 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CD810](v7) == MEMORY[0x277D86440])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = *a1;
  v10 = *(a1 + 8);
  while (v9 != v10)
  {
    v11 = *v9;
    v12 = asString();
    ctu::rest::detail::write_enum_string_value(&value, v11, v12, v13);
    xpc_array_append_value(v8, value);
    xpc_release(value);
    ++v9;
  }

  v21 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v8);
  value = &v23;
  v20 = "data_modes";
  xpc::dict::object_proxy::operator=(&value, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  v14 = *(a1 + 24);
  v15 = sd::imsServiceMaskToUint();
  v17 = xpc_int64_create(v15);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  value = &v23;
  v20 = "services";
  xpc::dict::object_proxy::operator=(&value, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v23;
  *a2 = v23;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

void rest::read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  v13 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v13 && MEMORY[0x2383CD810](v13) == v3)
  {
    xpc_retain(v13);
  }

  else
  {
    v13 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    v5 = &v13;
    v6 = "plmn";
    xpc::dict::object_proxy::operator xpc::object(&v5, &v12);
    read_rest_value(a1, &v12);
    xpc_release(v12);
    v5 = &v13;
    v6 = "rat";
    xpc::dict::object_proxy::operator xpc::object(&v5, &v12);
    v4 = MEMORY[0x2383CD810](v12);
    if (v4 == MEMORY[0x277D864C0])
    {
      v14 = *(a1 + 64);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 64) = v14;
    }

    else if (v4 == MEMORY[0x277D86448] || v4 == MEMORY[0x277D86498] || v4 == MEMORY[0x277D864C8])
    {
      *(a1 + 64) = xpc::dyn_cast_or_default();
    }

    xpc_release(v12);
    v5 = &v13;
    v6 = "home_country";
    xpc::dict::object_proxy::operator xpc::object(&v5, &v12);
    *(a1 + 68) = xpc::dyn_cast_or_default();
    xpc_release(v12);
    v5 = &v13;
    v6 = "is_satellite_system";
    xpc::dict::object_proxy::operator xpc::object(&v5, &v12);
    *(a1 + 69) = xpc::dyn_cast_or_default();
    xpc_release(v12);
  }

  else
  {
    MCCAndMNC::MCCAndMNC(&v5);
    v10 = 11;
    v11 = 0;
    MCC::operator=();
    MCC::operator=();
    *(a1 + 64) = v10;
    *(a1 + 68) = v11;
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6);
    }
  }

  xpc_release(v13);
}

{
  v3 = *a2;
  v28 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v28 = v3;
  }

  if (MEMORY[0x2383CD810](v3) == v4)
  {
    v26[0] = &v28;
    v26[1] = "data_modes";
    xpc::dict::object_proxy::operator xpc::object(v26, &v27);
    v6 = v27;
    v7 = MEMORY[0x277D86440];
    if (v27 && MEMORY[0x2383CD810](v27) == v7)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    *(a1 + 8) = *a1;
    if (MEMORY[0x2383CD810](v6) == v7)
    {
      object[0] = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v32, object, 0);
      xpc_release(object[0]);
      v30[0] = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v30[0] = xpc_null_create();
      }

      v25 = v6;
      if (MEMORY[0x2383CD810](v6) == v7)
      {
        count = xpc_array_get_count(v6);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(object, v30, count);
      xpc_release(v30[0]);
      v9 = v33;
      v10 = MEMORY[0x277D864C0];
      v11 = MEMORY[0x277D86448];
      v12 = MEMORY[0x277D86498];
      while (v9 != object[1] || v32 != object[0])
      {
        v30[0] = &v32;
        v30[1] = v9;
        v14 = *(a1 + 8);
        v13 = *(a1 + 16);
        if (v14 >= v13)
        {
          v16 = *a1;
          v17 = v14 - *a1;
          v18 = (v17 >> 2) + 1;
          if (v18 >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v19 = v13 - v16;
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<DataMode>>(v20);
          }

          v21 = (4 * (v17 >> 2));
          *v21 = 0;
          v15 = v21 + 1;
          memcpy(0, v16, v17);
          v22 = *a1;
          *a1 = 0;
          *(a1 + 8) = v15;
          *(a1 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = 0;
          v15 = v14 + 1;
        }

        *(a1 + 8) = v15;
        xpc::array::object_proxy::operator xpc::object(v30, &v29);
        v23 = MEMORY[0x2383CD810](v29);
        if (v23 == v10)
        {
          v34 = *(v15 - 1);
          ctu::rest::detail::read_enum_string_value();
          *(v15 - 1) = v34;
        }

        else if (v23 == v11 || v23 == v12 || v23 == MEMORY[0x277D864C8])
        {
          *(v15 - 1) = xpc::dyn_cast_or_default();
        }

        xpc_release(v29);
        v9 = ++v33;
      }

      xpc_release(object[0]);
      xpc_release(v32);
      v6 = v25;
    }

    xpc_release(v6);
    xpc_release(v27);
    v32 = &v28;
    v33 = "services";
    xpc::dict::object_proxy::operator xpc::object(&v32, object);
    v24 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    *(a1 + 24) = sd::imsServiceMaskFromUint(v24);
    v3 = v28;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v5;
      operator delete(v5);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  xpc_release(v3);
}

void sub_23751F288(_Unwind_Exception *a1)
{
  xpc_release(*(v1 - 56));
  xpc_release(*(v1 - 48));
  _Unwind_Resume(a1);
}

void rest::write_rest_value(unsigned __int8 *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v15 = &v19;
  v16 = "cause_code_PS";
  xpc::dict::object_proxy::operator=(&v15, &object, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(object);
  object = 0;
  v13 = xpc_int64_create(a1[1]);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "cause_code_CS";
  xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v7 = *(a1 + 1);
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v11, v7, v8, v9);
  v15 = &v19;
  v16 = "rat";
  xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v19;
  *a2 = v19;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void rest::read_rest_value(uint64_t a1, void **a2)
{
  v3 = *a2;
  v9 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v9 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v4)
  {
    v6 = &v9;
    v7 = "cause_code_PS";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    *a1 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v6 = &v9;
    v7 = "cause_code_CS";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v6 = &v9;
    v7 = "rat";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    v5 = MEMORY[0x2383CD810](object);
    if (v5 == MEMORY[0x277D864C0])
    {
      v10 = *(a1 + 4);
      ctu::rest::detail::read_enum_string_value();
      *(a1 + 4) = v10;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *(a1 + 4) = xpc::dyn_cast_or_default();
    }

    xpc_release(object);
  }

  else
  {
    *a1 = 0;
    *(a1 + 4) = 11;
  }

  xpc_release(v9);
}

void sub_23751FDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, xpc_object_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a20);
  xpc_release(a10);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

BOOL rest::operator!=(void *a1, void *a2)
{
  return !rest::operator==(a1, a2);
}

{
  return !rest::operator==(a2, a1);
}

{
  return !rest::operator==(a1, a2);
}

BOOL rest::operator==(void *a1, void *a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  v8 = v3 == v2 || v6 == v5;
  if (v8)
  {
    v9 = v6;
    v10 = v3;
    return v10 == v2 && v9 == v5;
  }

  else
  {
    while (*(v3 + 7) == *(v6 + 7) && *(v3 + 8) == *(v6 + 8))
    {
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v10 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v9 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v8 = *v9 == v6;
          v6 = v9;
        }

        while (!v8);
      }

      if (v10 != v2)
      {
        v3 = v10;
        v6 = v9;
        if (v9 != v5)
        {
          continue;
        }
      }

      return v10 == v2 && v9 == v5;
    }

    return 0;
  }
}

{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  v8 = v3 == v2 || v6 == v5;
  if (v8)
  {
    v9 = v6;
    v10 = v3;
    return v10 == v2 && v9 == v5;
  }

  else
  {
    while (*(v3 + 7) == *(v6 + 7) && *(v3 + 8) == *(v6 + 8))
    {
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v10 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v9 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v8 = *v9 == v6;
          v6 = v9;
        }

        while (!v8);
      }

      if (v10 != v2)
      {
        v3 = v10;
        v6 = v9;
        if (v9 != v5)
        {
          continue;
        }
      }

      return v10 == v2 && v9 == v5;
    }

    return 0;
  }
}

{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  v8 = v3 == v2 || v6 == v5;
  if (v8)
  {
    v9 = v6;
    v10 = v3;
    return v10 == v2 && v9 == v5;
  }

  else
  {
    while (*(v3 + 7) == *(v6 + 7) && *(v3 + 32) == *(v6 + 32))
    {
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v10 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v9 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v8 = *v9 == v6;
          v6 = v9;
        }

        while (!v8);
      }

      if (v10 != v2)
      {
        v3 = v10;
        v6 = v9;
        if (v9 != v5)
        {
          continue;
        }
      }

      return v10 == v2 && v9 == v5;
    }

    return 0;
  }
}

uint64_t rest::operator!=(void *a1, void *a2)
{
  return rest::operator==(a1, a2) ^ 1;
}

{
  return rest::operator==(a1, a2) ^ 1;
}

{
  return rest::operator==(a1, a2) ^ 1;
}

uint64_t rest::operator==(void *a1, void *a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  v4 = a2 + 1;
  v5 = *a2;
  v6 = *a1 == a1 + 1 || v5 == v4;
  if (v6)
  {
    v7 = *a2;
    v8 = *a1;
    return v8 == v2 && v7 == v4;
  }

  else
  {
    while (*(v3 + 8) == *(v5 + 8))
    {
      result = MCCAndMNC::operator==();
      if (!result)
      {
        return result;
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v6 = *v8 == v3;
          v3 = v8;
        }

        while (!v6);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v7 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v6 = *v7 == v5;
          v5 = v7;
        }

        while (!v6);
      }

      if (v8 != v2)
      {
        v3 = v8;
        v5 = v7;
        if (v7 != v4)
        {
          continue;
        }
      }

      return v8 == v2 && v7 == v4;
    }

    return 0;
  }
}

{
  v2 = a1 + 1;
  v3 = *a1;
  v4 = a2 + 1;
  v5 = *a2;
  v6 = *a1 == a1 + 1 || v5 == v4;
  if (v6)
  {
    v7 = *a2;
    v8 = *a1;
    return v8 == v2 && v7 == v4;
  }

  else
  {
    while (*(v3 + 8) == *(v5 + 8))
    {
      result = MCC::operator==();
      if (!result)
      {
        return result;
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v6 = *v8 == v3;
          v3 = v8;
        }

        while (!v6);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v7 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v6 = *v7 == v5;
          v5 = v7;
        }

        while (!v6);
      }

      if (v8 != v2)
      {
        v3 = v8;
        v5 = v7;
        if (v7 != v4)
        {
          continue;
        }
      }

      return v8 == v2 && v7 == v4;
    }

    return 0;
  }
}

{
  v2 = a1 + 1;
  v3 = *a1;
  v4 = a2 + 1;
  v5 = *a2;
  v6 = *a1 == a1 + 1 || v5 == v4;
  if (v6)
  {
    v7 = *a2;
    v8 = *a1;
    return v8 == v2 && v7 == v4;
  }

  else
  {
    while (*(v3 + 8) == *(v5 + 8))
    {
      result = MCC::operator==();
      if (!result)
      {
        return result;
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v6 = *v8 == v3;
          v3 = v8;
        }

        while (!v6);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v7 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v6 = *v7 == v5;
          v5 = v7;
        }

        while (!v6);
      }

      if (v8 != v2)
      {
        v3 = v8;
        v5 = v7;
        if (v7 != v4)
        {
          continue;
        }
      }

      return v8 == v2 && v7 == v4;
    }

    return 0;
  }
}

rest::GeoPlmn *rest::GeoPlmn::GeoPlmn(rest::GeoPlmn *this, const MCCAndMNC *a2)
{
  MCCAndMNC::getMcc(v7, a2);
  MCCAndMNC::getMnc(v5, a2);
  MCCAndMNC::MCCAndMNC(this, v7, v5);
  if (v6 < 0)
  {
    operator delete(v5[1]);
  }

  if (v8 < 0)
  {
    operator delete(v7[1]);
  }

  return this;
}

void sub_2375204C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void rest::write_rest_value(rest *this@<X0>, xpc_object_t *a2@<X8>)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v18 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v18 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v18 = v7;
LABEL_9:
  xpc_release(v6);
  MCCAndMNC::getMcc(&v13, this);
  write_rest_value(&v13, &v16);
  v11 = &v18;
  v12 = "mcc";
  xpc::dict::object_proxy::operator=(&v11, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  MCCAndMNC::getMnc(&v13, this);
  write_rest_value(&v13, &v9);
  v11 = &v18;
  v12 = "mnc";
  xpc::dict::object_proxy::operator=(&v11, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v8 = v18;
  *a2 = v18;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  v7 = MEMORY[0x277D86468];
  if (v5)
  {
    v28 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v28 = v6;
    if (!v6)
    {
      v8 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v6) == v7)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v28 = v8;
LABEL_9:
  xpc_release(v6);
  v26 = xpc_BOOL_create(*this);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v31 = &v28;
  v32 = "lockdownmode";
  xpc::dict::object_proxy::operator=(&v31, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v9 = xpc_array_create(0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CD810](v9) == MEMORY[0x277D86440])
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v11 = *(this + 1);
  v12 = this + 16;
  if (v11 != this + 16)
  {
    do
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v35 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v35 = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_25;
        }
      }

      if (MEMORY[0x2383CD810](v14) != v7)
      {
        v15 = xpc_null_create();
LABEL_25:
        v35 = v15;
        goto LABEL_26;
      }

      xpc_retain(v14);
LABEL_26:
      xpc_release(v14);
      v16 = *(v11 + 7);
      v17 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v33, v16, v17, v18);
      v31 = &v35;
      v32 = "first";
      xpc::dict::object_proxy::operator=(&v31, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      v29 = xpc_BOOL_create(v11[32]);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "second";
      xpc::dict::object_proxy::operator=(&v31, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v19 = v35;
      if (v35)
      {
        xpc_retain(v35);
      }

      else
      {
        v19 = xpc_null_create();
      }

      xpc_release(v35);
      xpc_array_append_value(v10, v19);
      xpc_release(v19);
      v20 = *(v11 + 1);
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
          v21 = *(v11 + 2);
          v22 = *v21 == v11;
          v11 = v21;
        }

        while (!v22);
      }

      v11 = v21;
    }

    while (v21 != v12);
  }

  v24 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_release(v10);
  v31 = &v28;
  v32 = "2g_restriction";
  xpc::dict::object_proxy::operator=(&v31, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  v23 = v28;
  *a2 = v28;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v28);
}

void sub_237520698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v20 - 40));
  _Unwind_Resume(a1);
}

void rest::read_rest_value(rest *this, xpc_object_t *a2, const xpc::object *a3)
{
  v15 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v15 && MEMORY[0x2383CD810](v15) == v3)
  {
    xpc_retain(v15);
  }

  else
  {
    v15 = xpc_null_create();
  }

  if (MEMORY[0x2383CD810]() == v3)
  {
    *v8 = 0u;
    v9 = 0u;
    MCC::MCC(v8);
    *v6 = 0u;
    v7 = 0u;
    MNC::MNC(v6);
    v10 = &v15;
    v11 = "mcc";
    xpc::dict::object_proxy::operator xpc::object(&v10, &object);
    read_rest_value(v8, &object);
    xpc_release(object);
    v10 = &v15;
    v11 = "mnc";
    xpc::dict::object_proxy::operator xpc::object(&v10, &object);
    read_rest_value(v6, &object);
    xpc_release(object);
    MCCAndMNC::MCCAndMNC(&v10, v8, v6);
    MCC::operator=();
    MCC::operator=();
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[1]);
    }

    if (SHIBYTE(v9) < 0)
    {
      v4 = v8[1];
      goto LABEL_18;
    }
  }

  else
  {
    MCCAndMNC::MCCAndMNC(&v10);
    MCC::operator=();
    MCC::operator=();
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      v4 = v11;
LABEL_18:
      operator delete(v4);
    }
  }

  xpc_release(v15);
}

{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CD810](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  if (MEMORY[0x2383CD810](v4) == v5)
  {
    v6 = &v9;
    v7 = "5g";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    *this = xpc::dyn_cast_or_default();
    xpc_release(object);
    v6 = &v9;
    v7 = "sa";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    *(this + 1) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v6 = &v9;
    v7 = "provisioned";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    *(this + 2) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v4 = v9;
  }

  else
  {
    *this = 0;
    *(this + 2) = 0;
  }

  xpc_release(v4);
}

void sub_23752089C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  xpc_release(*(v26 - 40));
  _Unwind_Resume(a1);
}

void rest::NREntitlementStatus::dumpState(rest::NREntitlementStatus *this, os_log_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = CSIBOOLAsString();
    v6 = *(this + 1);
    v7 = CSIBOOLAsString();
    if ((*this & 1) != 0 || *(this + 1) == 1)
    {
      v8 = *(this + 2);
    }

    v9 = CSIBOOLAsString();
    v10 = *(this + 2);
    v11 = CSIBOOLAsString();
    v12 = *(this + 1);
    v14 = 136316162;
    v15 = v5;
    v16 = 2080;
    v17 = v7;
    v18 = 2080;
    v19 = v9;
    v20 = 2080;
    v21 = v11;
    v22 = 2080;
    v23 = CSIBOOLAsString();
    _os_log_impl(&dword_2374EE000, v3, OS_LOG_TYPE_DEFAULT, "#I Controlled by entitlement: {5G: %s, SA: %s, Provisioned: %s (%s)}, SA switch visible: %s", &v14, 0x34u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void rest::write_rest_value(BOOL *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "5g";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_BOOL_create(a1[1]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "sa";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_BOOL_create(a1[2]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "provisioned";
  xpc::dict::object_proxy::operator=(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v16;
  *a2 = v16;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

void sub_237520DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::RATSRestrictionInfo::dumpState(rest::RATSRestrictionInfo *this, os_log_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    *buf = 136315138;
    v15 = CSIBOOLAsString();
    _os_log_impl(&dword_2374EE000, v4, OS_LOG_TYPE_DEFAULT, "#I 2G restriction info: LockDownModeEnabled: %s", buf, 0xCu);
  }

  v6 = *(this + 1);
  if (v6 != (this + 16))
  {
    do
    {
      v7 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(v6 + 28) & 0x100000000) != 0)
        {
          v8 = "restricted";
        }

        else
        {
          v8 = "not restricted";
        }

        v9 = subscriber::asString();
        *buf = 136315394;
        v15 = v8;
        v16 = 2080;
        v17 = v9;
        _os_log_impl(&dword_2374EE000, v7, OS_LOG_TYPE_DEFAULT, "#I     2G is %s on slot %s", buf, 0x16u);
      }

      v10 = *(v6 + 1);
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
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != (this + 16));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_237521448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(v21);
  xpc_release(v20);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void rest::read_rest_value(xpc_object_t *this, xpc_object_t *a2, const xpc::object *a3)
{
  v4 = *a2;
  v32 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CD810](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v32 = v4;
  }

  if (MEMORY[0x2383CD810](v4) == v5)
  {
    p_object = &v32;
    v30 = "lockdownmode";
    xpc::dict::object_proxy::operator xpc::object(&p_object, &object);
    *this = xpc::dyn_cast_or_default();
    xpc_release(object);
    v27[0] = &v32;
    v27[1] = "2g_restriction";
    xpc::dict::object_proxy::operator xpc::object(v27, &v28);
    v14 = v28;
    v15 = MEMORY[0x277D86440];
    if (v28 && MEMORY[0x2383CD810](v28) == v15)
    {
      xpc_retain(v14);
    }

    else
    {
      v14 = xpc_null_create();
    }

    v16 = (this + 2);
    std::__tree<STKRegisteredEvent>::destroy(this[2]);
    this[2] = 0;
    this[3] = 0;
    this[1] = this + 2;
    if (MEMORY[0x2383CD810](v14) != v15)
    {
LABEL_69:
      xpc_release(v14);
      xpc_release(v28);
      v4 = v32;
      goto LABEL_70;
    }

    p_object = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      p_object = xpc_null_create();
    }

    xpc::array::iterator::iterator(&object, &p_object, 0);
    xpc_release(p_object);
    p_object = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      p_object = xpc_null_create();
    }

    if (MEMORY[0x2383CD810](v14) == v15)
    {
      count = xpc_array_get_count(v14);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v34, &p_object, count);
    xpc_release(p_object);
    for (i = v36; ; i = ++v36)
    {
      if (i == v34[1] && object == v34[0])
      {
        xpc_release(v34[0]);
        xpc_release(object);
        goto LABEL_69;
      }

      v33 = 0;
      p_object = &object;
      v30 = i;
      xpc::array::object_proxy::operator xpc::dict(&p_object, &v33);
      if (MEMORY[0x2383CD810](v33) == v5)
      {
        break;
      }

LABEL_67:
      xpc_release(v33);
    }

    v19 = v33;
    if (v33)
    {
      xpc_retain(v33);
      v38 = v19;
    }

    else
    {
      v19 = xpc_null_create();
      v38 = v19;
      if (!v19)
      {
        v20 = xpc_null_create();
        v19 = 0;
        goto LABEL_49;
      }
    }

    if (MEMORY[0x2383CD810](v19) == v5)
    {
      xpc_retain(v19);
      v20 = v19;
LABEL_50:
      if (MEMORY[0x2383CD810](v20) == v5)
      {
        p_object = &v38;
        v30 = "first";
        xpc::dict::object_proxy::operator xpc::object(&p_object, &v37);
        v22 = MEMORY[0x2383CD810](v37);
        if (v22 == MEMORY[0x277D864C0])
        {
          v39 = 0;
          ctu::rest::detail::read_enum_string_value();
          v21 = v39;
        }

        else if (v22 == MEMORY[0x277D86448] || v22 == MEMORY[0x277D86498] || v22 == MEMORY[0x277D864C8])
        {
          v21 = xpc::dyn_cast_or_default();
        }

        else
        {
          v21 = 0;
        }

        xpc_release(v37);
        p_object = &v38;
        v30 = "second";
        xpc::dict::object_proxy::operator xpc::object(&p_object, &v37);
        xpc::dyn_cast_or_default();
        xpc_release(v37);
        v20 = v38;
      }

      else
      {
        v21 = 0;
      }

      xpc_release(v20);
      xpc_release(v19);
      v23 = *v16;
      if (!*v16)
      {
LABEL_66:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v24 = v23;
          v25 = *(v23 + 28);
          if (v25 <= v21)
          {
            break;
          }

          v23 = *v24;
          if (!*v24)
          {
            goto LABEL_66;
          }
        }

        if (v25 >= v21)
        {
          goto LABEL_67;
        }

        v23 = v24[1];
        if (!v23)
        {
          goto LABEL_66;
        }
      }
    }

    v20 = xpc_null_create();
LABEL_49:
    v38 = v20;
    goto LABEL_50;
  }

  LOBYTE(p_object) = 0;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  if (&p_object == this)
  {
    v13 = 0;
  }

  else
  {
    *this = 0;
    if (this[3])
    {
      v7 = this[2];
      v6 = this + 2;
      v8 = *(v6 - 1);
      *(v6 - 1) = v6;
      v7[2] = 0;
      *v6 = 0;
      v6[1] = 0;
      if (v8[1])
      {
        v9 = v8[1];
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        v10 = v9[2];
        if (v10)
        {
          v11 = *v10;
          if (*v10 == v9)
          {
            *v10 = 0;
            while (1)
            {
              v26 = v10[1];
              if (!v26)
              {
                break;
              }

              do
              {
                v10 = v26;
                v26 = *v26;
              }

              while (v26);
            }
          }

          else
          {
            for (v10[1] = 0; v11; v11 = v10[1])
            {
              do
              {
                v10 = v11;
                v11 = *v11;
              }

              while (v11);
            }
          }

          std::__tree<STKRegisteredEvent>::destroy(v9);
          for (j = v10[2]; j; j = j[2])
          {
            v10 = j;
          }

          v9 = v10;
        }
      }

      std::__tree<STKRegisteredEvent>::destroy(v9);
    }

    v13 = v31[0];
  }

  std::__tree<STKRegisteredEvent>::destroy(v13);
LABEL_70:
  xpc_release(v4);
}

void sub_2375219B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, xpc_object_t a22)
{
  xpc_release(object);
  xpc_release(a20);
  xpc_release(v22);
  xpc_release(a11);
  xpc_release(a16);
  _Unwind_Resume(a1);
}

void RegisteredNetworkInfo::~RegisteredNetworkInfo(void **this)
{
  if (*(this + 792) == 1 && *(this + 759) < 0)
  {
    operator delete(this[92]);
  }

  if (*(this + 712) == 1)
  {
    if (*(this + 679) < 0)
    {
      operator delete(this[82]);
    }

    if (*(this + 647) < 0)
    {
      operator delete(this[78]);
    }
  }

  if (*(this + 600) == 1)
  {
    if (*(this + 527) < 0)
    {
      operator delete(this[63]);
    }

    if (*(this + 495) < 0)
    {
      operator delete(this[59]);
    }
  }

  if (*(this + 448) == 1)
  {
    if (*(this + 391) < 0)
    {
      operator delete(this[46]);
    }

    if (*(this + 359) < 0)
    {
      operator delete(this[42]);
    }
  }

  if (*(this + 312) == 1)
  {
    if (*(this + 287) < 0)
    {
      operator delete(this[33]);
    }

    if (*(this + 255) < 0)
    {
      operator delete(this[29]);
    }
  }

  if (*(this + 208) == 1)
  {
    if (*(this + 183) < 0)
    {
      operator delete(this[20]);
    }

    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }
  }

  if (*(this + 104) == 1)
  {
    if (*(this + 87) < 0)
    {
      operator delete(this[8]);
    }

    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }
  }
}

void *std::map<subscriber::SimSlot,BOOL>::map[abi:ne200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 7) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = result + 1;
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v12 = v4;
            v13 = *(v4 + 28);
            if (v13 <= v10)
            {
              break;
            }

            v4 = *v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (v13 >= v10)
          {
            break;
          }

          v4 = v12[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v3 += 2;
      if (v3 == &a2[2 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::ServingNetwork>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::ServingNetwork>,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ServingNetwork>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ServingNetwork>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::ServingNetwork>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,MCC>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,MCC>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,MCC>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,MCC>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,MCC>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,MCC>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,MCC>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,MCC>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,MCC>>>::destroy(*(a1 + 1));
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DataMode>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::ImsPreferenceState>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void _GLOBAL__sub_I_RegistrationRestResource_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_2810D7740 = 0;
  qword_2810D7738 = 0;
  rest::kDefaultRadioAccessTechnologies = &qword_2810D7738;
  operator new();
}

void EosCommandDriver::setDelegate(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void EosCommandDriver::start(EosCommandDriver *this)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN16EosCommandDriver5startEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_3;
  v7[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16EosCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7DF48;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void EosCommandDriver::bootstrap(void *a1, NSObject **a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN16EosCommandDriver9bootstrapEN8dispatch13group_sessionE_block_invoke;
  v9[3] = &__block_descriptor_tmp_2_0;
  v3 = *a2;
  v9[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16EosCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7DF48;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void EosCommandDriver::stop(EosCommandDriver *this)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN16EosCommandDriver4stopEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_3_0;
  v7[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16EosCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7DF48;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void *EosCommandDriver::EosCommandDriver(void *a1, void *a2, NSObject **a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v10, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v11);
  MEMORY[0x2383CCDD0](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *a1 = &unk_284A7DE78;
  v8 = a2[1];
  a1[6] = *a2;
  a1[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void EosCommandDriver::~EosCommandDriver(EosCommandDriver *this)
{
  *this = &unk_284A7DE78;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIK16EosCommandDriverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIK16EosCommandDriverEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void CSISMSCommandDriver::create(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  (*(**a2 + 168))(&object);
  v8 = *(a3 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v9 = *a4;
  if (*a4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1174405120;
    v17[2] = ___ZN19CSISMSCommandDriver6createERKNSt3__110shared_ptrIK8RegistryEEN3sms20SMSCommandDriverTypeENS1_I22SmsControllerInterfaceEENS0_8functionIFNS1_IS_EEN8dispatch5queueEEEE_block_invoke;
    v17[3] = &__block_descriptor_tmp_6;
    v10 = a4[1];
    v17[4] = v9;
    v18 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = a1;
    v11 = a2[1];
    v19 = *a2;
    v20 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v9[2];
    if (!v12 || (v13 = v9[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v15 = v14;
    v16 = v9[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableI19CSISMSCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_284A7E200;
    block[5] = v13;
    v24 = v15;
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v17;
    dispatch_async(v16, block);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_237523700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19CSISMSCommandDriver6createERKNSt3__110shared_ptrIK8RegistryEEN3sms20SMSCommandDriverTypeENS1_I22SmsControllerInterfaceEENS0_8functionIFNS1_IS_EEN8dispatch5queueEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 48) = *(a1 + 64);
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 80);
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void *__copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19CSISMSCommandDriverEE48c50_ZTSNSt3__110shared_ptrI22SmsControllerInterfaceEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19CSISMSCommandDriverEE48c50_ZTSNSt3__110shared_ptrI22SmsControllerInterfaceEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *CSISMSCommandDriver::CSISMSCommandDriver(void *a1, void *a2, NSObject **a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v10, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v11);
  MEMORY[0x2383CCDD0](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *a1 = &unk_284A7E0C0;
  v8 = a2[1];
  a1[7] = *a2;
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void CSISMSCommandDriver::~CSISMSCommandDriver(CSISMSCommandDriver *this)
{
  *this = &unk_284A7E0C0;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void CSISMSCommandDriver::clientStarted(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 72);
      if (v7)
      {
        (*(*v7 + 16))(v7, a2, 1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void CSISMSCommandDriver::clientStopped(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 72);
      if (v7)
      {
        (*(*v7 + 16))(v7, a2, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void CSISMSCommandDriver::handleSmsSendTimeout(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v15 = 100000;
    _os_log_error_impl(&dword_2374EE000, v4, OS_LOG_TYPE_ERROR, "Sms send request timed out after %lldms", buf, 0xCu);
  }

  if (*a2)
  {
    v5 = a1[10];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = a1[9];
        if (v7)
        {
          v8 = a2[1];
          v12 = *a2;
          v13 = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v7 + 176))(v7, &v12);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

LABEL_17:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_18;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v10 = a1[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v10, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
    }

    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = a1[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v9, OS_LOG_TYPE_ERROR, "Invalid model.", buf, 2u);
    }
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_237523C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void CSISMSCommandDriver::createBasebandDriver(Registry **a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = 0;
  Registry::getCommandDriversFactory(&v8, *a1);
  *a3 = 0;
  a3[1] = 0;
  v5 = v8;
  v6 = *a2;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(*v5 + 184))(v5, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_237523D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19CSISMSCommandDriverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19CSISMSCommandDriverEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *DataSubscriptionBaseCommandDriver::DataSubscriptionBaseCommandDriver(void *a1, void *a2, NSObject **a3, uint64_t a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7E240;
  a1[6] = 0;
  a1[7] = 0;
  v10 = a2[1];
  a1[8] = *a2;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = a4;
  a1[11] = 0;
  a1[15] = 0;
  return a1;
}

void DataSubscriptionBaseCommandDriver::~DataSubscriptionBaseCommandDriver(DataSubscriptionBaseCommandDriver *this)
{
  *this = &unk_284A7E240;
  std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::~__value_func[abi:ne200100](this + 96);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

uint64_t DataSubscriptionBaseCommandDriver::configureSubscription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 88))(a1) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v11, OS_LOG_TYPE_ERROR, "Client not ready", buf, 2u);
    }

    goto LABEL_8;
  }

  if (*(a1 + 120))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v10, OS_LOG_TYPE_ERROR, "Subscription switch already in-progress", buf, 2u);
    }

LABEL_8:
    result = std::function<void ()(BOOL,subscriber::SimSlot)>::operator()(*(a5 + 24), 0, 0);
    goto LABEL_9;
  }

  if ((SubscriptionSlotConfiguration::isValid() & 1) == 0)
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v18, OS_LOG_TYPE_ERROR, "Invalid configuration", buf, 2u);
    }

    goto LABEL_8;
  }

  std::function<void ()(BOOL,subscriber::SimSlot)>::operator=(a1 + 96, a5);
  Registry::getTimerService(&v21, *(a1 + 64));
  v14 = v21;
  std::string::basic_string[abi:ne200100]<0>(v19, "Data Subscription Operation");
  *__p = *v19;
  v25 = v20;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  *buf = &unk_284A7E370;
  v27 = a1;
  v28 = buf;
  (*(*v14 + 40))(&v23, v14, __p, 1, 20000000, 0, buf);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v23;
  v23 = 0;
  v16 = *(a1 + 88);
  *(a1 + 88) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v23;
    v23 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  result = (*(*a1 + 96))(a1, a2, a3, a4);
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237524264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(BOOL,subscriber::SimSlot)>::operator()(uint64_t a1, char a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::function<void ()(BOOL,subscriber::SimSlot)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        memset(v9, 0, 24);
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_237524594(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 88))(a1) & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_2374EE000, v9, OS_LOG_TYPE_ERROR, "Client not ready", &buf, 2u);
    }

    goto LABEL_8;
  }

  if (*(a1 + 120))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_2374EE000, v8, OS_LOG_TYPE_ERROR, "Subscription switch already in-progress", &buf, 2u);
    }

LABEL_8:
    result = std::function<void ()(BOOL,subscriber::SimSlot)>::operator()(*(a4 + 24), 0, 0);
    goto LABEL_9;
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&dword_2374EE000, v16, OS_LOG_TYPE_ERROR, "Invalid slot (%s)", &buf, 0xCu);
    }

    goto LABEL_8;
  }

  std::function<void ()(BOOL,subscriber::SimSlot)>::operator=(a1 + 96, a4);
  Registry::getTimerService(&v19, *(a1 + 64));
  v12 = v19;
  std::string::basic_string[abi:ne200100]<0>(v17, "Data Subscription Operation");
  *__p = *v17;
  v23 = v18;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  *&buf = &unk_284A7E3F0;
  *(&buf + 1) = a1;
  p_buf = &buf;
  (*(*v12 + 40))(&v21, v12, __p, 1, 20000000, 0, &buf);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&buf);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v21;
  v21 = 0;
  v14 = *(a1 + 88);
  *(a1 + 88) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  result = (*(*a1 + 104))(a1, a2, a3);
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2375248D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void DataSubscriptionBaseCommandDriver::dumpState(DataSubscriptionBaseCommandDriver *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 15);
    v5 = 136315138;
    v6 = CSIBOOLAsString();
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Switch in-flight: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void DataSubscriptionBaseCommandDriver::operationCompleted_sync(void *a1, char a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[15])
  {
    v6 = a1 + 12;
    v15 = 0u;
    v16 = 0u;
    std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::__value_func[abi:ne200100](&v15, (a1 + 12));
    v7 = a1[15];
    a1[15] = 0;
    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v13 = a1[11];
    a1[11] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    std::function<void ()(BOOL,subscriber::SimSlot)>::operator()(*(&v16 + 1), a2, a3);
    std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::~__value_func[abi:ne200100](&v15);
  }

  else
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v15) = 136315138;
      *(&v15 + 4) = subscriber::asString();
      _os_log_error_impl(&dword_2374EE000, v8, OS_LOG_TYPE_ERROR, "Operation already completed (%s)", &v15, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = a1[6];
        if (v12)
        {
          (*(*v12 + 24))(v12, a3);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7E370;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t std::__function::__func<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<DataSubscriptionBaseCommandDriver>::execute_wrapped<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1}>(DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DataSubscriptionBaseCommandDriver::configureSubscription(SubscriptionSlotConfiguration const&,std::string const&,subscriber::SimSlot,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2374EE000, v3, OS_LOG_TYPE_ERROR, "Operation timed out", buf, 2u);
  }

  DataSubscriptionBaseCommandDriver::operationCompleted_sync(v2, 0, 0);
  MEMORY[0x2383CD480](v1, 0x20C4093837F09);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_237524EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2383CD480](v2, v3);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7E3F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t std::__function::__func<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0,std::allocator<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<DataSubscriptionBaseCommandDriver>::execute_wrapped<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1}>(DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DataSubscriptionBaseCommandDriver::changeDefaultDataSubscription(subscriber::SimSlot,DefaultDataSwitchReason,std::function<void ()(BOOL,subscriber::SimSlot)>)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2374EE000, v3, OS_LOG_TYPE_ERROR, "Operation timed out", buf, 2u);
  }

  DataSubscriptionBaseCommandDriver::operationCompleted_sync(v2, 0, 0);
  MEMORY[0x2383CD480](v1, 0x20C4093837F09);
  return std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_237525180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2383CD480](v2, v3);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(BOOL,subscriber::SimSlot)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t read_rest_value()
{
  return MEMORY[0x282113458]();
}

{
  return MEMORY[0x282113460]();
}

{
  return MEMORY[0x282113468]();
}

uint64_t asString()
{
  return MEMORY[0x282113678]();
}

{
  return MEMORY[0x2821136B0]();
}

{
  return MEMORY[0x2821136D8]();
}

{
  return MEMORY[0x282113710]();
}

uint64_t subscriber::makeSimSlotRange()
{
  return MEMORY[0x2821137E8]();
}

{
  return MEMORY[0x2821137F0]();
}

uint64_t subscriber::asString()
{
  return MEMORY[0x282113830]();
}

{
  return MEMORY[0x282113838]();
}

{
  return MEMORY[0x282113840]();
}

{
  return MEMORY[0x282113848]();
}

{
  return MEMORY[0x282113850]();
}

{
  return MEMORY[0x282113860]();
}

{
  return MEMORY[0x282113868]();
}

{
  return MEMORY[0x282113878]();
}

uint64_t MCC::MCC()
{
  return MEMORY[0x282113B88]();
}

{
  return MEMORY[0x282113B90]();
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2821F6658]();
}

{
  return MEMORY[0x2821F6660]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2821F6888]();
}

{
  return MEMORY[0x2821F6898]();
}

uint64_t ctu::rest::detail::read_enum_string_value()
{
  return MEMORY[0x2821F6970]();
}

{
  return MEMORY[0x2821F6978]();
}

uint64_t ctu::rest::detail::write_enum_string_value(ctu::rest::detail *this, uint64_t a2, const char *a3)
{
  return MEMORY[0x2821F6988](this, a2, a3);
}

{
  return MEMORY[0x2821F6990](this, a2, a3);
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A70]();
}

{
  return MEMORY[0x2821F6A80]();
}

{
  return MEMORY[0x2821F6A88]();
}

{
  return MEMORY[0x2821F6A98]();
}

{
  return MEMORY[0x2821F6AA0]();
}

uint64_t rest::read_rest_value()
{
  return MEMORY[0x282113C38]();
}

{
  return MEMORY[0x282113C40]();
}

uint64_t detail::createOsLogLoggers()
{
  return MEMORY[0x282113C58]();
}

{
  return MEMORY[0x282113C60]();
}

uint64_t detail::createUnknownOsLogLogger()
{
  return MEMORY[0x282113C68]();
}

{
  return MEMORY[0x282113C70]();
}

uint64_t MCCAndMNC::MCCAndMNC()
{
  return MEMORY[0x282113CB0]();
}

{
  return MEMORY[0x282113CB8]();
}

void MCCAndMNC::MCCAndMNC(MCCAndMNC *this)
{
  MEMORY[0x282113CC0](this);
}

{
  MEMORY[0x282113CC8](this);
}

{
  MEMORY[0x282113CD8](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}