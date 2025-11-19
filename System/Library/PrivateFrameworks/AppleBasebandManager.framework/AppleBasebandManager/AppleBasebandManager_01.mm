void sub_24012F780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, xpc_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  xpc_release(v22);
  xpc_release(*(v25 - 88));
  _Unwind_Resume(a1);
}

void abm::client::PerformWithRetry(uint64_t ***a1@<X0>, void **a2@<X2>, void **a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    v9 = *a2;
    object = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object = xpc_null_create();
    }

    abm::client::Manager::perform(v5, &object, a3, &v18);
    v13 = v18;
    v10 = v19;
    v16 = v20;
    HIBYTE(v20) = 0;
    LOBYTE(v19) = 0;
    xpc_release(object);
    if (v13)
    {
      v14 = *a1;
      v15 = *a2;
      object = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        object = xpc_null_create();
      }

      abm::client::Manager::perform(v14, &object, a3, &v18);
      v12 = v18;
      if ((*(&v16 + 1) & 0x8000000000000000) != 0)
      {
        operator delete(v10);
      }

      v10 = v19;
      v16 = v20;
      HIBYTE(v20) = 0;
      LOBYTE(v19) = 0;
      xpc_release(object);
    }

    else
    {
      v12 = 0;
    }

    v11 = v16;
  }

  else
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    v11 = xmmword_240146B80;
    v12 = -534716414;
  }

  *a4 = v12;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
}

void sub_24012FA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  if (a9 < 0)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void abm::client::SetTraceModeWithOwnership(uint64_t ***a1@<X0>, int a2@<W1>, xpc_object_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    v11 = operator new(0x20uLL);
    strcpy(v11, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v11;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v8 = xpc_null_create();
  v85[0] = 0xAAAAAAAAAAAAAAAALL;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v85[0] = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v85[0] = v10;
    if (!v10)
    {
      v12 = xpc_null_create();
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86468])
  {
    xpc_retain(v10);
    goto LABEL_11;
  }

  v12 = xpc_null_create();
LABEL_10:
  v85[0] = v12;
LABEL_11:
  xpc_release(v10);
  v13 = xpc_int64_create(15000);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v85[0], "Timeout", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_string_create("BasebandTrace");
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v85[0], "kKeyTraceName", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_BOOL_create(1);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v85[0], "kKeyTracePropertyWaitForCompletion", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v63 = a2;
  if (!a2)
  {
    v64 = 0;
    v26 = 0;
    goto LABEL_38;
  }

  v19 = xpc_string_create("Enabled");
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v85[0], "kKeyTracePropertyName", v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_string_create("false");
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v85[0], "kKeyTracePropertyValue", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = a1[1];
  v80[0] = *a1;
  v80[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  }

  v62 = v8;
  v24 = operator new(0x20uLL);
  v79 = xmmword_240146B70;
  strcpy(v24, "kCommandSetTraceProperty");
  v25 = v85[0];
  v77 = v85[0];
  v78 = v24;
  if (v85[0])
  {
    xpc_retain(v85[0]);
    object = v8;
    if (v8)
    {
LABEL_26:
      xpc_retain(v8);
      goto LABEL_30;
    }
  }

  else
  {
    v25 = xpc_null_create();
    v77 = v25;
    object = v8;
    if (v8)
    {
      goto LABEL_26;
    }
  }

  object = xpc_null_create();
LABEL_30:
  v27 = a3;
  abm::client::PerformWithRetry(v80, &v77, &object, &v81);
  v28 = v81;
  v29 = v82;
  v30 = v83;
  v64 = v84;
  HIBYTE(v84) = 0;
  LOBYTE(v82) = 0;
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v77 = 0;
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (v23 && !atomic_fetch_add(v23 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    ((*v23)[2])(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (v28)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  if (!v28)
  {
LABEL_37:
    a3 = v27;
    v26 = v29;
    v8 = v62;
LABEL_38:
    v31 = xpc_string_create("TraceOwnership");
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    xpc_dictionary_set_value(v85[0], "kKeyTracePropertyName", v31);
    v32 = xpc_null_create();
    xpc_release(v31);
    xpc_release(v32);
    v81 = v85;
    v82 = "kKeyTracePropertyValue";
    xpc::dict::object_proxy::operator=(&v75, &v81, *a3, "TraceOwnership");
    xpc_release(v75);
    v33 = a1[1];
    v74[0] = *a1;
    v74[1] = v33;
    v75 = 0;
    if (v33)
    {
      atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
    }

    v78 = operator new(0x20uLL);
    v61 = xmmword_240146B70;
    v79 = xmmword_240146B70;
    strcpy(v78, "kCommandSetTraceProperty");
    qmemcpy(v60, "PropertykCommandSetTrace", sizeof(v60));
    v34 = v85[0];
    v73 = v85[0];
    if (v85[0])
    {
      xpc_retain(v85[0]);
      v35 = v64;
      v72 = v8;
      if (v8)
      {
LABEL_44:
        xpc_retain(v8);
        goto LABEL_47;
      }
    }

    else
    {
      v35 = v64;
      v34 = xpc_null_create();
      v72 = v8;
      v73 = v34;
      if (v8)
      {
        goto LABEL_44;
      }
    }

    v72 = xpc_null_create();
LABEL_47:
    v36 = a3;
    abm::client::PerformWithRetry(v74, &v73, &v72, &v81);
    v37 = v81;
    if (v35 < 0)
    {
      operator delete(v26);
    }

    v39 = v82;
    v38 = v83;
    v40 = v84;
    HIBYTE(v84) = 0;
    LOBYTE(v82) = 0;
    xpc_release(v72);
    v72 = 0;
    xpc_release(v34);
    v73 = 0;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78);
    }

    if (v33 && !atomic_fetch_add(v33 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      ((*v33)[2])(v33);
      std::__shared_weak_count::__release_weak(v33);
      if (v37)
      {
        goto LABEL_54;
      }
    }

    else if (v37)
    {
LABEL_54:
      *a4 = v37;
      *(a4 + 8) = v39;
      *(a4 + 16) = v38;
      *(a4 + 24) = v40;
      goto LABEL_98;
    }

    v41 = xpc_string_create("Mode");
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    xpc_dictionary_set_value(v85[0], "kKeyTracePropertyName", v41);
    v42 = xpc_null_create();
    xpc_release(v41);
    xpc_release(v42);
    v81 = v85;
    v82 = "kKeyTracePropertyValue";
    xpc::dict::object_proxy::operator=(&v71, &v81, *v36, "Mode");
    xpc_release(v71);
    v43 = a1[1];
    v70[0] = *a1;
    v70[1] = v43;
    v71 = 0;
    if (v43)
    {
      atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
    }

    v44 = operator new(0x20uLL);
    v78 = v44;
    v79 = v61;
    *v44 = *&v60[1];
    *(v44 + 2) = v60[0];
    *(v44 + 24) = 0;
    v45 = v85[0];
    v69 = v85[0];
    if (v85[0])
    {
      xpc_retain(v85[0]);
      v68 = v8;
      if (v8)
      {
LABEL_62:
        xpc_retain(v8);
LABEL_65:
        abm::client::PerformWithRetry(v70, &v69, &v68, &v81);
        v46 = v81;
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v47 = v82;
        v48 = v83;
        v49 = v84;
        HIBYTE(v84) = 0;
        LOBYTE(v82) = 0;
        xpc_release(v68);
        v68 = 0;
        xpc_release(v45);
        v69 = 0;
        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78);
        }

        if (v43 && !atomic_fetch_add(v43 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          ((*v43)[2])(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        if (v46)
        {
          *a4 = v46;
          *(a4 + 8) = v47;
          *(a4 + 16) = v48;
          *(a4 + 24) = v49;
        }

        else
        {
          if (!v63)
          {
            goto LABEL_96;
          }

          v50 = xpc_string_create("Enabled");
          if (!v50)
          {
            v50 = xpc_null_create();
          }

          xpc_dictionary_set_value(v85[0], "kKeyTracePropertyName", v50);
          v51 = xpc_null_create();
          xpc_release(v50);
          xpc_release(v51);
          v52 = xpc_string_create("true");
          if (!v52)
          {
            v52 = xpc_null_create();
          }

          xpc_dictionary_set_value(v85[0], "kKeyTracePropertyValue", v52);
          v53 = xpc_null_create();
          xpc_release(v52);
          xpc_release(v53);
          v54 = *a1;
          v55 = a1[1];
          v67[0] = v54;
          v67[1] = v55;
          if (v55)
          {
            atomic_fetch_add_explicit(v55 + 1, 1uLL, memory_order_relaxed);
          }

          v56 = operator new(0x20uLL);
          v78 = v56;
          v79 = v61;
          *v56 = *&v60[1];
          *(v56 + 2) = v60[0];
          *(v56 + 24) = 0;
          v57 = v85[0];
          v66 = v85[0];
          if (v85[0])
          {
            xpc_retain(v85[0]);
          }

          else
          {
            v57 = xpc_null_create();
            v66 = v57;
          }

          v65 = v8;
          if (v8)
          {
            xpc_retain(v8);
          }

          else
          {
            v65 = xpc_null_create();
          }

          abm::client::PerformWithRetry(v67, &v66, &v65, &v81);
          v58 = v81;
          if (v49 < 0)
          {
            operator delete(v47);
          }

          v47 = v82;
          v59 = v83;
          v49 = v84;
          HIBYTE(v84) = 0;
          LOBYTE(v82) = 0;
          xpc_release(v65);
          v65 = 0;
          xpc_release(v57);
          v66 = 0;
          if (SHIBYTE(v79) < 0)
          {
            operator delete(v78);
          }

          if (v55 && !atomic_fetch_add(v55 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            ((*v55)[2])(v55);
            std::__shared_weak_count::__release_weak(v55);
          }

          if (v58)
          {
            *a4 = v58;
            *(a4 + 8) = v47;
            *(a4 + 16) = v59;
            *(a4 + 24) = v49;
          }

          else
          {
LABEL_96:
            *a4 = 0;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            *(a4 + 8) = 0;
            if (v49 < 0)
            {
              operator delete(v47);
            }
          }
        }

        goto LABEL_98;
      }
    }

    else
    {
      v45 = xpc_null_create();
      v68 = v8;
      v69 = v45;
      if (v8)
      {
        goto LABEL_62;
      }
    }

    v68 = xpc_null_create();
    goto LABEL_65;
  }

LABEL_35:
  *a4 = v28;
  *(a4 + 8) = v29;
  *(a4 + 16) = v30;
  *(a4 + 24) = v64;
  v8 = v62;
LABEL_98:
  xpc_release(v85[0]);
  xpc_release(v8);
}

void sub_2401303FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, char a20, uint64_t a21, xpc_object_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, xpc_object_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, xpc_object_t a32)
{
  xpc_release(object);
  xpc_release(v33);
  if (*(v36 - 145) < 0)
  {
    operator delete(*(v36 - 168));
  }

  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a20);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  xpc_release(*(v36 - 96));
  xpc_release(v32);
  _Unwind_Resume(a1);
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result == 5)
      {
        a2[23] = 10;
        strcpy(a2, "CDMAHybrid");
        return result;
      }

      if (result == 7)
      {
        a2[23] = 3;
        *a2 = 21580;
        a2[2] = 69;
        a2[3] = 0;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 8:
          a2[23] = 5;
          *a2 = 1414297649;
          a2[4] = 69;
          a2[5] = 0;
          return result;
        case 9:
          a2[23] = 7;
          strcpy(a2, "TDSCDMA");
          return result;
        case 0xA:
          a2[23] = 2;
          strcpy(a2, "NR");
          return result;
      }
    }

    goto LABEL_23;
  }

  if (result <= 1)
  {
    if (result == -1)
    {
      a2[23] = 13;
      strcpy(a2, "Uninitialized");
      return result;
    }

    if (!result)
    {
      a2[23] = 3;
      *a2 = 21319;
      a2[2] = 77;
      a2[3] = 0;
      return result;
    }

LABEL_23:
    a2[23] = 7;
    strcpy(a2, "Unknown");
    return result;
  }

  if (result == 2)
  {
    a2[23] = 5;
    *a2 = 1095914581;
    a2[4] = 78;
    a2[5] = 0;
  }

  else if (result == 3)
  {
    a2[23] = 6;
    strcpy(a2, "CDMA1x");
  }

  else
  {
    a2[23] = 8;
    strcpy(a2, "CDMAEVDO");
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_6:
      a2[23] = 7;
      strcpy(a2, "Invalid");
      return result;
    }

    a2[23] = 20;
    strcpy(a2, "Non-Emergency-Stewie");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 16;
        strcpy(a2, "Emergency-Stewie");
        return result;
      }

      goto LABEL_6;
    }

    a2[23] = 4;
    strcpy(a2, "None");
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 9;
        strcpy(a2, "Telephony");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Factory");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "Manager");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "Unsupported");
      return result;
    }

    a2[23] = 5;
    *a2 = 1969382724;
    a2[4] = 103;
    a2[5] = 0;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 10;
        strcpy(a2, "24hr_Timer");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Profile");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "ABMtool");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "UnSpecified");
      return result;
    }

    a2[23] = 2;
    strcpy(a2, "UI");
  }

  return result;
}

{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "Last_Used");
  }

  else if (result)
  {
    a2[23] = 11;
    strcpy(a2, "UnSpecified");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "Default");
  }

  return result;
}

void abm::client::GetBasebandBootState(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = xpc_null_create();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v7;
  a3[1] = v7;
  v8 = *(a1 + 8);
  v17 = *a1;
  v18 = v8;
  v19 = v6;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = operator new(0x20uLL);
  __p[1] = 27;
  strcpy(__p[0], "CommandGetBasebandBootState");
  v9 = xpc_null_create();
  abm::client::PerformCommand(&v17, v9, &v19, a3);
  operator delete(__p[0]);
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v19;
    v12 = MEMORY[0x277D86468];
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = v19;
    v12 = MEMORY[0x277D86468];
    if (v19)
    {
      goto LABEL_11;
    }
  }

  v11 = xpc_null_create();
  if (!v11)
  {
    v13 = xpc_null_create();
    v11 = 0;
    goto LABEL_14;
  }

LABEL_11:
  if (MEMORY[0x245CBA9E0](v11) == v12)
  {
    xpc_retain(v11);
    v13 = v11;
  }

  else
  {
    v13 = xpc_null_create();
  }

LABEL_14:
  xpc_release(v11);
  if (!*a3 && MEMORY[0x245CBA9E0](v13) == v12)
  {
    value = xpc_dictionary_get_value(v13, "KeyBasebandBootState");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = 0x8000000000000020;
    xpc_release(object);
  }

  xpc_release(v13);
}

void sub_240130A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v11);
  if (*(v10 + 31) < 0)
  {
    operator delete(*(v10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_240130AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240130B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void abm::client::GetBasebandOperatingMode(void *aBlock@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    v6 = operator new(0x20uLL);
    strcpy(v6, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v6;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN3abm6client24GetBasebandOperatingModeENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v13[3] = &__block_descriptor_tmp_5;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlocka = v7;
  v8 = *a2;
  __p = operator new(0x20uLL);
  v12 = xmmword_240146B60;
  strcpy(__p, "CommandGetBasebandOperatingMode");
  object = xpc_null_create();
  abm::client::Manager::perform(v8, &__p, v13, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v9 = aBlocka;
    if (!aBlocka)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v9 = aBlocka;
  if (aBlocka)
  {
LABEL_13:
    _Block_release(v9);
  }

LABEL_14:
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_240130CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abm6client24GetBasebandOperatingModeENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v6 = xpc_null_create();
  v7 = v6;
  if (!*a2)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86468])
      {
        xpc_retain(v10);
        v8 = v10;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v11 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v11);
    value = xpc_dictionary_get_value(*a3, "KeyBasebandOperatingMode");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v14 = xpc_int64_create(v13);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "KeyBasebandOperatingMode", v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    v9 = *(a1 + 32);
    LODWORD(object) = *a2;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
    goto LABEL_18;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  LODWORD(object) = *a2;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  __p = *(a2 + 8);
LABEL_18:
  (*(v9 + 16))(v9, &object, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v8);
}

void sub_240130F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void abm::client::SetBasebandOperatingMode(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    v10 = operator new(0x20uLL);
    strcpy(v10, "Invalid manager object passed");
    *a4 = -534716414;
    *(a4 + 8) = v10;
    *(a4 + 16) = xmmword_240146B80;
    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v11 = xpc_int64_create(a2);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, "KeyBasebandOperatingMode", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1174405120;
  v19[2] = ___ZN3abm6client24SetBasebandOperatingModeENSt3__110shared_ptrINS0_7ManagerEEEiU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v19[3] = &__block_descriptor_tmp_156;
  if (a3)
  {
    v13 = _Block_copy(a3);
  }

  else
  {
    v13 = 0;
  }

  aBlock = v13;
  v14 = *a1;
  object = v9;
  __p = operator new(0x20uLL);
  v18 = xmmword_240146B60;
  strcpy(__p, "CommandSetBasebandOperatingMode");
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v14, &__p, v19, &object);
  xpc_release(object);
  object = 0;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v15 = aBlock;
    if (!aBlock)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  operator delete(__p);
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v15 = aBlock;
  if (aBlock)
  {
LABEL_23:
    _Block_release(v15);
  }

LABEL_24:
  if (a3)
  {
    _Block_release(a3);
  }

  xpc_release(v9);
}

void sub_240131260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client24SetBasebandOperatingModeENSt3__110shared_ptrINS0_7ManagerEEEiU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v2 + 16))(v2, &v3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_240131384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::GetBasebandTime(void *aBlock@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    v6 = operator new(0x20uLL);
    strcpy(v6, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v6;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN3abm6client15GetBasebandTimeENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v13[3] = &__block_descriptor_tmp_159;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlocka = v7;
  v8 = *a2;
  strcpy(__p, "CommandGetBasebandTime");
  v12 = 22;
  object = xpc_null_create();
  abm::client::Manager::perform(v8, __p, v13, &object);
  xpc_release(object);
  object = 0;
  if (v12 < 0)
  {
    operator delete(*__p);
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v9 = aBlocka;
    if (!aBlocka)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v9 = aBlocka;
  if (aBlocka)
  {
LABEL_13:
    _Block_release(v9);
  }

LABEL_14:
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_240131550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  _Unwind_Resume(a1);
}

void abm::client::GetBasebandWakeReason(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v5;
  a3[1] = v5;
  v6 = *(a1 + 8);
  v10 = *a1;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p = operator new(0x20uLL);
  strcpy(__p, "CommandGetBasebandWakeReason");
  v7 = xpc_null_create();
  abm::client::PerformCommand(&v10, v7, a2, a3);
  operator delete(__p);
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2401316A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2401316B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void abm::client::GetBasebandLTEStatistics(void *aBlock@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    v6 = operator new(0x20uLL);
    strcpy(v6, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v6;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN3abm6client24GetBasebandLTEStatisticsENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v13[3] = &__block_descriptor_tmp_162;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlocka = v7;
  v8 = *a2;
  __p = operator new(0x20uLL);
  v12 = xmmword_240146B60;
  strcpy(__p, "CommandGetBasebandLTEStatistics");
  object = xpc_null_create();
  abm::client::Manager::perform(v8, &__p, v13, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v9 = aBlocka;
    if (!aBlocka)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v9 = aBlocka;
  if (aBlocka)
  {
LABEL_13:
    _Block_release(v9);
  }

LABEL_14:
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_2401318A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abm6client24GetBasebandLTEStatisticsENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a3;
    v5 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v3 + 16))(v3, &v5, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2401319AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::ResetBaseband(uint64_t *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!*a1)
  {
    goto LABEL_9;
  }

  v8 = a2;
  if ((a2[23] & 0x8000000000000000) != 0)
  {
    if (*(a2 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    v12 = operator new(0x20uLL);
    strcpy(v12, "Invalid manager object passed");
    *a5 = -534716414;
    *(a5 + 8) = v12;
    *(a5 + 16) = xmmword_240146B80;
    return;
  }

  if (!a2[23])
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v10) == MEMORY[0x277D86468])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  if (v8[23] < 0)
  {
    v8 = *v8;
  }

  v13 = xpc_string_create(v8);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, "KeyBasebandResetType", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_string_create("Other Errors");
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, "KeyBasebandResetSubType", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  v17 = xpc_string_create(a3);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, "KeyBasebandResetReason", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN3abm6client13ResetBasebandENSt3__110shared_ptrINS0_7ManagerEEENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_U13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v25[3] = &__block_descriptor_tmp_165;
  if (a4)
  {
    v19 = _Block_copy(a4);
  }

  else
  {
    v19 = 0;
  }

  aBlock = v19;
  v20 = *a1;
  v24 = 20;
  strcpy(__p, "CommandResetBaseband");
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v20, __p, v25, &object);
  xpc_release(object);
  object = 0;
  if ((v24 & 0x80000000) == 0)
  {
    *a5 = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    v21 = aBlock;
    if (!aBlock)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  operator delete(*__p);
  *a5 = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  v21 = aBlock;
  if (aBlock)
  {
LABEL_34:
    _Block_release(v21);
  }

LABEL_35:
  if (a4)
  {
    _Block_release(a4);
  }

  xpc_release(v11);
}

void sub_240131D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client13ResetBasebandENSt3__110shared_ptrINS0_7ManagerEEENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_U13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v2 + 16))(v2, &v3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_240131E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::SyncBasebandFilesystem(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v8 = operator new(0x20uLL);
    strcpy(v8, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v8;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v6) == MEMORY[0x277D86468])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v9 = xpc_BOOL_create(1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "KeyFSSyncWaitForCompletion", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  if (a2)
  {
    a2 = _Block_copy(a2);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1174405120;
  v17[2] = ___ZN3abm6client22SyncBasebandFilesystemENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v17[3] = &__block_descriptor_tmp_168;
  if (a2)
  {
    v11 = _Block_copy(a2);
  }

  else
  {
    v11 = 0;
  }

  aBlock = v11;
  v12 = *a1;
  v16 = 21;
  strcpy(__p, "CommandBasebandSyncFS");
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v12, __p, v17, &object);
  xpc_release(object);
  object = 0;
  if ((v16 & 0x80000000) == 0)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v13 = aBlock;
    if (!aBlock)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  operator delete(*__p);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v13 = aBlock;
  if (aBlock)
  {
LABEL_23:
    _Block_release(v13);
  }

LABEL_24:
  if (a2)
  {
    _Block_release(a2);
  }

  xpc_release(v7);
}

void sub_24013210C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client22SyncBasebandFilesystemENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v2 + 16))(v2, &v3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_240132224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abm::client::EraseBasebandFilesystem(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v8 = operator new(0x20uLL);
    strcpy(v8, "Invalid manager object passed");
    *a3 = -534716414;
    *(a3 + 8) = v8;
    *(a3 + 16) = xmmword_240146B80;
    return;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v6) == MEMORY[0x277D86468])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v9 = xpc_string_create("BasebandNVDataErase");
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, "KeyBasebandNVDataAction", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  if (a2)
  {
    a2 = _Block_copy(a2);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1174405120;
  v17[2] = ___ZN3abm6client23EraseBasebandFilesystemENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke;
  v17[3] = &__block_descriptor_tmp_171;
  if (a2)
  {
    v11 = _Block_copy(a2);
  }

  else
  {
    v11 = 0;
  }

  aBlock = v11;
  v12 = *a1;
  v16 = 21;
  strcpy(__p, "CommandBasebandNVData");
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::client::Manager::perform(v12, __p, v17, &object);
  xpc_release(object);
  object = 0;
  if ((v16 & 0x80000000) == 0)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v13 = aBlock;
    if (!aBlock)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  operator delete(*__p);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v13 = aBlock;
  if (aBlock)
  {
LABEL_23:
    _Block_release(v13);
  }

LABEL_24:
  if (a2)
  {
    _Block_release(a2);
  }

  xpc_release(v7);
}

void sub_2401324D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void ___ZN3abm6client23EraseBasebandFilesystemENSt3__110shared_ptrINS0_7ManagerEEEU13block_pointerFvN12TelephonyXPC6ResultEPvE_block_invoke(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 2);
    }

    (*(v2 + 16))(v2, &v3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2401325F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::AccessorySimulate::create(xpc_object_t *a1)
{
  if (MEMORY[0x245CBA9E0](*a1) != MEMORY[0x277D86468] || !xpc_dictionary_get_value(*a1, "kAccessorySimulateEnabled"))
  {
    return 170;
  }

  value = xpc_dictionary_get_value(*a1, "kAccessorySimulateEnabled");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  return v4 | 0x100u;
}

void abm::AccessorySimulate::toDict(abm::AccessorySimulate *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_BOOL_create(*this);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kAccessorySimulateEnabled", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
}

const char *abm::AccessorySimulate::asString(abm::AccessorySimulate *this)
{
  if (*this)
  {
    return "enabled";
  }

  else
  {
    return "disabled";
  }
}

const char *abm::asString(int a1)
{
  if (!(!v2 & v1))
  {
    result = "Generic";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        return "Lightning to Headphone Jack Adapter";
      case 2:
        return "EarPods with Lightning";
      case 3:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        goto LABEL_9;
      case 4:
        return "Lightning Cable";
      case 5:
        return "Charging Dock";
      case 12:
        return "SmartKeyboard";
      case 13:
        return "DisplayCover";
      case 14:
        return "Pencil";
      case 15:
        return "MagSafeCharger";
      case 16:
        return "MagSafeBatteryPack";
      case 17:
        return "USB3";
      case 18:
        return "DisplayPort";
      case 19:
        return "USB-C to Headphone Jack Adapter";
      case 20:
        return "EarPods with USB-C";
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 2048:
      result = "AppleMagSafeSiliconCase";
      break;
    case 2049:
      result = "AppleMagSafeLeatherCase";
      break;
    case 2050:
      result = "AppleMagSafeClearCase";
      break;
    case 2051:
      result = "AppleMagSafeSleeve";
      break;
    case 2052:
      result = "AppleMagSafeWallet";
      break;
    case 2053:
      result = "AppleMagSafeBatteryPack";
      break;
    case 2054:
      result = "AppleMagSafeChargingMat";
      break;
    case 2055:
      result = "AppleMagSafeChargingCable";
      break;
    case 2056:
      result = "AppleMagSafeRuggedCase";
      break;
    case 2057:
      result = "AppleMagSafeTextileCase";
      break;
    case 2058:
      result = "AppleMagSafeTextileCase2025";
      break;
    case 2059:
      result = "AppleMagSafeSiliconCase2025";
      break;
    case 2060:
      result = "AppleMagSafeBatteryPack2025";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "Unknown";
      }

      else
      {
LABEL_9:
        result = "???";
      }

      break;
  }

  return result;
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278C99688[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_278C996A0[a1 - 1];
  }
}

const char *abm::asString(__int16 a1)
{
  if ((a1 + 1) > 5u)
  {
    return "???";
  }

  else
  {
    return off_278C99480[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 4u)
  {
    return "???";
  }

  else
  {
    return off_278C994B0[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 4u)
  {
    return "???";
  }

  else
  {
    return off_278C994D8[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 5u)
  {
    return "???";
  }

  else
  {
    return off_278C99500[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 5u)
  {
    return "NotApplicable";
  }

  else
  {
    return off_278C99530[(a1 + 1)];
  }
}

unint64_t abm::AccessoryInfo::create(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v80 = v2;
  v79 = v2;
  v78 = v2;
  v77 = v2;
  v76 = v2;
  v75 = 0xAAAAAAAAAAAAAAAALL;
  v73 = v2;
  v72 = v2;
  v71[1] = 0xAAAAAAAAAAAAAAAALL;
  *&v70[80] = v2;
  *&v70[64] = v2;
  *&v70[48] = v2;
  *&v70[32] = v2;
  *v70 = v2;
  *&v70[16] = v2;
  v69 = v2;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0;
  v3 = MEMORY[0x277D82898] + 64;
  v71[0] = MEMORY[0x277D82898] + 64;
  v4 = *(MEMORY[0x277D82820] + 16);
  v68 = *(MEMORY[0x277D82820] + 8);
  *(&v68 + *(v68 - 24)) = v4;
  *&v69 = 0;
  v5 = (&v68 + *(v68 - 24));
  std::ios_base::init(v5, &v69 + 8);
  v6 = MEMORY[0x277D82898] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v68 = v6;
  v71[0] = v3;
  v54 = MEMORY[0x277D82868] + 16;
  *(&v69 + 1) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CBA570](v70);
  memset(&v70[8], 0, 80);
  v7 = MEMORY[0x277D82878] + 16;
  *(&v69 + 1) = MEMORY[0x277D82878] + 16;
  *&v70[88] = 8;
  if (&v70[56] != a1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(&v70[56], *a1, *(a1 + 8));
    }

    else
    {
      *&v70[56] = *a1;
      *&v70[72] = *(a1 + 16);
    }
  }

  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v69 + 8);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = &v70[8];
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v55 = -1;
  v56 = 0;
  while (2)
  {
    LOBYTE(__dst) = -86;
    MEMORY[0x245CBA520](&__dst, &v68, 1);
    if (__dst != 1)
    {
      goto LABEL_48;
    }

    if (SHIBYTE(v67) < 0)
    {
      *v65 = 0;
      v66 = 0;
    }

    else
    {
      LOBYTE(v65) = 0;
      HIBYTE(v67) = 0;
    }

    v8 = 0;
    while (1)
    {
      v9 = *&v70[*(v68 - 24) + 16];
      v10 = v9[3];
      if (v10 == v9[4])
      {
        break;
      }

      v9[3] = v10 + 1;
      v11 = *v10;
LABEL_14:
      if (v11 == 44)
      {
        v24 = 0;
        goto LABEL_47;
      }

      v13 = HIBYTE(v67);
      if (SHIBYTE(v67) < 0)
      {
        v15 = (v67 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v66 == v15)
        {
          if ((v67 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v65;
          if (v15 > 0x3FFFFFFFFFFFFFF2)
          {
            v19 = 0;
            v18 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_21:
            if (v15 + 1 > 2 * v15)
            {
              v16 = v15 + 1;
            }

            else
            {
              v16 = 2 * v15;
            }

            if ((v16 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v16 | 7) + 1;
            }

            if (v16 >= 0x17)
            {
              v18 = v17;
            }

            else
            {
              v18 = 23;
            }

            v19 = v15 == 22;
          }

          v20 = operator new(v18);
          v21 = v20;
          if (v15)
          {
            memmove(v20, v14, v15);
          }

          if (!v19)
          {
            operator delete(v14);
          }

          v65 = v21;
          v67 = v18 | 0x8000000000000000;
          goto LABEL_39;
        }

        v21 = v65;
        v15 = v66;
LABEL_39:
        v66 = v15 + 1;
        v23 = &v21[v15];
        *v23 = v11;
        v23[1] = 0;
        --v8;
        if (SHIBYTE(v67) < 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (HIBYTE(v67) == 22)
        {
          v14 = &v65;
          v15 = 22;
          goto LABEL_21;
        }

        HIBYTE(v67) = (HIBYTE(v67) + 1) & 0x7F;
        v22 = &v65 + v13;
        *v22 = v11;
        v22[1] = 0;
        --v8;
        if (SHIBYTE(v67) < 0)
        {
LABEL_40:
          if (v66 == 0x7FFFFFFFFFFFFFF7)
          {
            v24 = 4;
            goto LABEL_47;
          }
        }
      }
    }

    v12 = (*(*v9 + 80))(v9);
    v11 = v12;
    if (v12 != -1)
    {
      goto LABEL_14;
    }

    if (v8)
    {
      v24 = 2;
    }

    else
    {
      v24 = 6;
    }

LABEL_47:
    std::ios_base::clear((&v68 + *(v68 - 24)), *&v70[*(v68 - 24) + 8] | v24);
LABEL_48:
    if ((v60[*(v68 - 24)] & 5) == 0)
    {
      if (v67 >= 0)
      {
        v25 = HIBYTE(v67);
      }

      else
      {
        v25 = v66;
      }

      if (v67 >= 0)
      {
        v26 = &v65;
      }

      else
      {
        v26 = v65;
      }

      if (v25)
      {
        v27 = memchr(v26, 58, v25);
        if (v27)
        {
          v28 = v27 - v26;
        }

        else
        {
          v28 = -1;
        }
      }

      else
      {
        v28 = -1;
      }

      v63 = 0xAAAAAAAAAAAAAAAALL;
      v64 = 0xAAAAAAAAAAAAAAAALL;
      if (v25 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v25;
      }

      __dst = 0xAAAAAAAAAAAAAAAALL;
      if (v29 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v29 >= 0x17)
      {
        if ((v29 | 7) == 0x17)
        {
          v35 = 25;
        }

        else
        {
          v35 = (v29 | 7) + 1;
        }

        p_dst = operator new(v35);
        v63 = v29;
        v64 = v35 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v64) = v29;
        p_dst = &__dst;
        if (!v29)
        {
          LOBYTE(__dst) = 0;
          v31 = v28 + 1;
          memset(__p, 170, sizeof(__p));
          v32 = SHIBYTE(v67);
          if ((SHIBYTE(v67) & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

LABEL_75:
          v32 = v66;
          if (v66 >= v31)
          {
            v33 = v65;
            v34 = v66 - v31;
            if (v66 - v31 <= 0x7FFFFFFFFFFFFFF7)
            {
LABEL_77:
              if (v34 >= 0x17)
              {
                if ((v34 | 7) == 0x17)
                {
                  v42 = 25;
                }

                else
                {
                  v42 = (v34 | 7) + 1;
                }

                v36 = operator new(v42);
                __p[1] = v34;
                __p[2] = (v42 | 0x8000000000000000);
                __p[0] = v36;
              }

              else
              {
                HIBYTE(__p[2]) = v34;
                v36 = __p;
                if (v32 == v31)
                {
                  *(__p + v34) = 0;
                  v37 = SHIBYTE(v64);
                  if ((SHIBYTE(v64) & 0x80000000) == 0)
                  {
                    goto LABEL_80;
                  }

LABEL_100:
                  if (v63)
                  {
                    v38 = *__dst;
                    v39 = SHIBYTE(__p[2]);
                    if (v38 > 0x6F)
                    {
                      goto LABEL_102;
                    }

LABEL_82:
                    switch(v38)
                    {
                      case 'c':
                        if (v39 >= 0)
                        {
                          v45 = __p;
                        }

                        else
                        {
                          v45 = __p[0];
                        }

                        if (!strcasecmp("NotApplicable", v45))
                        {
                          v41 = 0;
                        }

                        else if (!strcasecmp("Lightning", v45))
                        {
                          v41 = 0x10000;
                        }

                        else if (!strcasecmp("USBC", v45))
                        {
                          v41 = 0x20000;
                        }

                        else if (!strcasecmp("NFC", v45))
                        {
                          v41 = 196608;
                        }

                        else if (!strcasecmp("SmartConnector", v45))
                        {
                          v41 = 0x40000;
                        }

                        else
                        {
                          v41 = -65536;
                        }

                        v52 = v59;
LABEL_201:
                        v59 = v41 | v52;
                        break;
                      case 'i':
                        if (v39 >= 0)
                        {
                          v48 = __p;
                        }

                        else
                        {
                          v48 = __p[0];
                        }

                        if (!strcasecmp("Generic", v48))
                        {
                          v55 = 0;
                        }

                        else if (!strcasecmp("Lightning to Headphone Jack Adapter", v48))
                        {
                          v55 = 1;
                        }

                        else if (!strcasecmp("EarPods with Lightning", v48))
                        {
                          v55 = 2;
                        }

                        else if (!strcasecmp("Lightning Cable", v48))
                        {
                          v55 = 4;
                        }

                        else if (!strcasecmp("Charging Dock", v48))
                        {
                          v55 = 5;
                        }

                        else if (!strcasecmp("SmartKeyboard", v48))
                        {
                          v55 = 12;
                        }

                        else if (!strcasecmp("DisplayCover", v48))
                        {
                          v55 = 13;
                        }

                        else if (!strcasecmp("Pencil", v48))
                        {
                          v55 = 14;
                        }

                        else if (!strcasecmp("USB3", v48))
                        {
                          v55 = 17;
                        }

                        else if (!strcasecmp("DisplayPort", v48))
                        {
                          v55 = 18;
                        }

                        else if (!strcasecmp("USB-C to Headphone Jack Adapter", v48))
                        {
                          v55 = 19;
                        }

                        else if (!strcasecmp("EarPods with USB-C", v48))
                        {
                          v55 = 20;
                        }

                        else if (!strcasecmp("MagSafeCharger", v48))
                        {
                          v55 = 15;
                        }

                        else if (!strcasecmp("MagSafeBatteryPack", v48))
                        {
                          v55 = 16;
                        }

                        else if (!strcasecmp("AppleMagSafeSiliconCase", v48))
                        {
                          v55 = 2048;
                        }

                        else if (!strcasecmp("AppleMagSafeLeatherCase", v48))
                        {
                          v55 = 2049;
                        }

                        else if (!strcasecmp("AppleMagSafeClearCase", v48))
                        {
                          v55 = 2050;
                        }

                        else if (!strcasecmp("AppleMagSafeSleeve", v48))
                        {
                          v55 = 2051;
                        }

                        else if (!strcasecmp("AppleMagSafeWallet", v48))
                        {
                          v55 = 2052;
                        }

                        else if (!strcasecmp("AppleMagSafeBatteryPack", v48))
                        {
                          v55 = 2053;
                        }

                        else if (!strcasecmp("AppleMagSafeChargingMat", v48))
                        {
                          v55 = 2054;
                        }

                        else if (!strcasecmp("AppleMagSafeChargingCable", v48))
                        {
                          v55 = 2055;
                        }

                        else if (!strcasecmp("AppleMagSafeRuggedCase", v48))
                        {
                          v55 = 2056;
                        }

                        else if (!strcasecmp("AppleMagSafeTextileCase", v48))
                        {
                          v55 = 2057;
                        }

                        else if (!strcasecmp("AppleMagSafeTextileCase2025", v48))
                        {
                          v55 = 2058;
                        }

                        else if (!strcasecmp("AppleMagSafeSiliconCase2025", v48))
                        {
                          v55 = 2059;
                        }

                        else
                        {
                          if (!strcasecmp("AppleMagSafeBatteryPack2025", v48))
                          {
                            v49 = 2060;
                          }

                          else
                          {
                            v49 = -1;
                          }

                          v55 = v49;
                        }

                        break;
                      case 'm':
                        if (v39 >= 0)
                        {
                          v40 = __p;
                        }

                        else
                        {
                          v40 = __p[0];
                        }

                        if (!strcasecmp("NotApplicable", v40))
                        {
                          v41 = 0;
                        }

                        else if (!strcasecmp("Leather", v40))
                        {
                          v41 = 1;
                        }

                        else if (!strcasecmp("Silicone", v40))
                        {
                          v41 = 2;
                        }

                        else if (!strcasecmp("Plastic", v40))
                        {
                          v41 = 3;
                        }

                        else if (!strcasecmp("Textile", v40))
                        {
                          v41 = 4;
                        }

                        else
                        {
                          v41 = 0xFFFF;
                        }

                        v52 = v59 & 0xFFFF0000;
                        goto LABEL_201;
                    }

LABEL_202:
                    if (v39 < 0)
                    {
                      operator delete(__p[0]);
                      if ((v37 & 0x80000000) == 0)
                      {
                        continue;
                      }
                    }

                    else if ((v37 & 0x80000000) == 0)
                    {
                      continue;
                    }

                    operator delete(__dst);
                    continue;
                  }

                  goto LABEL_238;
                }
              }

              memmove(v36, &v33[v31], v34);
              *(v36 + v34) = 0;
              v37 = SHIBYTE(v64);
              if (SHIBYTE(v64) < 0)
              {
                goto LABEL_100;
              }

LABEL_80:
              if (v37)
              {
                v38 = __dst;
                v39 = SHIBYTE(__p[2]);
                if (__dst <= 0x6Fu)
                {
                  goto LABEL_82;
                }

LABEL_102:
                switch(v38)
                {
                  case 'p':
                    if (v39 >= 0)
                    {
                      v46 = __p;
                    }

                    else
                    {
                      v46 = __p[0];
                    }

                    if (!strcasecmp("NotApplicable", v46))
                    {
                      v58 = 0;
                    }

                    else if (!strcasecmp("Battery", v46))
                    {
                      v58 = 1;
                    }

                    else if (!strcasecmp("Wired", v46))
                    {
                      v58 = 2;
                    }

                    else
                    {
                      if (!strcasecmp("Inductive", v46))
                      {
                        v47 = 3;
                      }

                      else
                      {
                        v47 = 0xFFFFFFFFLL;
                      }

                      v58 = v47;
                    }

                    break;
                  case 'r':
                    if (v39 >= 0)
                    {
                      v50 = __p;
                    }

                    else
                    {
                      v50 = __p[0];
                    }

                    if (!strcasecmp("NotApplicable", v50))
                    {
                      v57 = 0;
                    }

                    else if (!strcasecmp("White", v50))
                    {
                      v57 = 1;
                    }

                    else if (!strcasecmp("Black", v50))
                    {
                      v57 = 2;
                    }

                    else
                    {
                      if (!strcasecmp("Brown", v50))
                      {
                        v51 = 3;
                      }

                      else
                      {
                        v51 = -1;
                      }

                      v57 = v51;
                    }

                    break;
                  case 's':
                    if (v39 >= 0)
                    {
                      v43 = __p;
                    }

                    else
                    {
                      v43 = __p[0];
                    }

                    if (!strcasecmp("NotApplicable", v43))
                    {
                      v56 = 0;
                    }

                    else if (!strcasecmp("Detached", v43))
                    {
                      v56 = 1;
                    }

                    else if (!strcasecmp("Attached", v43))
                    {
                      v56 = 2;
                    }

                    else if (!strcasecmp("Opened", v43))
                    {
                      v56 = 3;
                    }

                    else
                    {
                      if (!strcasecmp("Closed", v43))
                      {
                        v44 = 4;
                      }

                      else
                      {
                        v44 = -1;
                      }

                      v56 = v44;
                    }

                    break;
                }

                goto LABEL_202;
              }

LABEL_238:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

LABEL_240:
            std::string::__throw_length_error[abi:ne200100]();
          }

          goto LABEL_237;
        }
      }

      memmove(p_dst, v26, v29);
      *(p_dst + v29) = 0;
      v31 = v28 + 1;
      memset(__p, 170, sizeof(__p));
      v32 = SHIBYTE(v67);
      if ((SHIBYTE(v67) & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

LABEL_67:
      if (v31 <= v32)
      {
        v33 = &v65;
        v34 = v32 - v31;
        if (v32 - v31 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_77;
        }

        goto LABEL_240;
      }

LABEL_237:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    break;
  }

  if (v67 < 0)
  {
    operator delete(v65);
  }

  v68 = *MEMORY[0x277D82820];
  *(&v68 + *(v68 - 24)) = *(MEMORY[0x277D82820] + 24);
  *(&v69 + 1) = v7;
  if ((v70[79] & 0x80000000) != 0)
  {
    operator delete(*&v70[56]);
  }

  *(&v69 + 1) = v54;
  std::locale::~locale(v70);
  std::istream::~istream();
  MEMORY[0x245CBA5B0](v71);
  return (v57 << 32) | (v58 << 48) | (v56 << 16) | v55;
}

void sub_240133A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  __cxa_end_catch();
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a37);
  MEMORY[0x245CBA5B0](a12);
  _Unwind_Resume(a1);
}

unint64_t abm::AccessoryInfo::create(xpc_object_t *a1)
{
  if (MEMORY[0x245CBA9E0](*a1) != MEMORY[0x277D86468])
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = -1;
    return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
  }

  if (xpc_dictionary_get_value(*a1, "kAccessoryID"))
  {
    value = xpc_dictionary_get_value(*a1, "kAccessoryID");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v7 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = v7;
    if (xpc_dictionary_get_value(*a1, "kAccessoryState"))
    {
LABEL_11:
      v8 = xpc_dictionary_get_value(*a1, "kAccessoryState");
      objecta = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        objecta = xpc_null_create();
      }

      v9 = xpc::dyn_cast_or_default();
      xpc_release(objecta);
      v4 = v9;
      if (xpc_dictionary_get_value(*a1, "kAccessoryColor"))
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v5 = -1;
    if (xpc_dictionary_get_value(*a1, "kAccessoryState"))
    {
      goto LABEL_11;
    }
  }

  v4 = 0;
  if (!xpc_dictionary_get_value(*a1, "kAccessoryColor"))
  {
    goto LABEL_8;
  }

LABEL_15:
  v10 = xpc_dictionary_get_value(*a1, "kAccessoryColor");
  objectb = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    objectb = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(objectb);
LABEL_19:
  if (!xpc_dictionary_get_value(*a1, "kAccessoryPower"))
  {
    v2 = 0;
    if (xpc_dictionary_get_value(*a1, "kAccessoryMaterial"))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (!xpc_dictionary_get_value(*a1, "kAccessoryConnection"))
    {
      return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
    }

    goto LABEL_31;
  }

  v11 = xpc_dictionary_get_value(*a1, "kAccessoryPower");
  objectc = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    objectc = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default();
  xpc_release(objectc);
  v2 = v12;
  if (!xpc_dictionary_get_value(*a1, "kAccessoryMaterial"))
  {
    goto LABEL_23;
  }

LABEL_27:
  v13 = xpc_dictionary_get_value(*a1, "kAccessoryMaterial");
  objectd = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    objectd = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(objectd);
  if (xpc_dictionary_get_value(*a1, "kAccessoryConnection"))
  {
LABEL_31:
    v14 = xpc_dictionary_get_value(*a1, "kAccessoryConnection");
    objecte = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      objecte = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(objecte);
  }

  return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
}

void abm::AccessoryInfo::toDict(abm::AccessoryInfo *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(*this);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kAccessoryID", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 1));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryState", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_int64_create(*(this + 2));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryColor", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(*(this + 3));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryPower", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(*(this + 4));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryMaterial", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(*(this + 5));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryConnection", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C98EA8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_240122000);
  }

  return result;
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_240122000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ConnectionObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance, &dword_240122000);
  }

  return result;
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_280AFDB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFDB18))
  {
    qword_280AFDB20 = 0;
    unk_280AFDB28 = 0;
    __cxa_guard_release(&qword_280AFDB18);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
  }

  return &qword_280AFDB20;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(uint64_t a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, __s, v7);
  }

  *(v8 + v7) = 0;
  v10 = *a3;
  v11 = strlen(*a3);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *(a1 + 32) = v12;
    *(a1 + 40) = v14 | 0x8000000000000000;
    *(a1 + 24) = v13;
  }

  else
  {
    v13 = (a1 + 24);
    *(a1 + 47) = v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  memmove(v13, v10, v12);
LABEL_19:
  *(v13 + v12) = 0;
  return a1;
}

void sub_240134850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_240122000);
  }

  return result;
}

void _GLOBAL__sub_I_BasebandNVRAM_mm()
{
  v78 = *MEMORY[0x277D85DE8];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(v30, "boot-args", kBootArgsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v34, "boot-command", kBootCommadShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v38, "auto-boot", kAutoBootShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v42, "bootdelay", kBootDelayShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v46, "boot-script", kBootScriptShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v50, "boot-device", kBootDeviceShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v54, "debug-soc", kDebugSocShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v58, "debug-uarts", kDebugUartsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v62, "force-ctrr-lock", kForceCtrrLockShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v66, "enable-auth-debug", kEnableAuthDebugShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v70, "reconfig-breakpoints", kReconfigBreakpointsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v74, "reconfig-behavior", kReconfigBehaviorShort);
  v0 = 0;
  v1 = 0;
  qword_280AFDBB8 = 0;
  qword_280AFDBB0 = 0;
  mNVRAMItems = &qword_280AFDBB0;
  v2 = v30;
LABEL_5:
  v4 = &qword_280AFDBB0;
  while (1)
  {
    if (!v0)
    {
      goto LABEL_51;
    }

    v16 = v4 + 1;
    if (!v4[1])
    {
      goto LABEL_52;
    }

LABEL_61:
    v1 += 6;
    if (v1 == 72)
    {
      break;
    }

    v0 = qword_280AFDBB0;
    v2 = &v30[v1];
    if (mNVRAMItems == &qword_280AFDBB0)
    {
      goto LABEL_5;
    }

    v3 = qword_280AFDBB0;
    if (qword_280AFDBB0)
    {
      do
      {
        v4 = v3;
        v3 = *(v3 + 8);
      }

      while (v3);
    }

    else
    {
      v5 = &qword_280AFDBB0;
      do
      {
        v4 = v5[2];
        v6 = *v4 == v5;
        v5 = v4;
      }

      while (v6);
    }

    v7 = *(v4 + 55);
    if (v7 >= 0)
    {
      v8 = v4 + 4;
    }

    else
    {
      v8 = v4[4];
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 55);
    }

    else
    {
      v9 = v4[5];
    }

    v10 = *(v2 + 23);
    if (v10 >= 0)
    {
      v11 = &v30[v1];
    }

    else
    {
      v11 = *v2;
    }

    if (v10 >= 0)
    {
      v12 = *(v2 + 23);
    }

    else
    {
      v12 = v2[1];
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    v14 = memcmp(v8, v11, v13);
    if (v14)
    {
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v9 >= v12)
    {
LABEL_25:
      if (v0)
      {
        v15 = v0;
        while (1)
        {
          v4 = v15;
          v19 = v15[4];
          v17 = v15 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          if (v20 >= 0)
          {
            v21 = v17;
          }

          else
          {
            v21 = v18;
          }

          if (v20 >= 0)
          {
            v22 = *(v17 + 23);
          }

          else
          {
            v22 = v17[1];
          }

          if (v22 >= v12)
          {
            v23 = v12;
          }

          else
          {
            v23 = v22;
          }

          v24 = memcmp(v11, v21, v23);
          if (v24)
          {
            if (v24 < 0)
            {
              goto LABEL_27;
            }

LABEL_41:
            v25 = memcmp(v21, v11, v23);
            if (v25)
            {
              if ((v25 & 0x80000000) == 0)
              {
                goto LABEL_61;
              }
            }

            else if (v22 >= v12)
            {
              goto LABEL_61;
            }

            v15 = v4[1];
            if (!v15)
            {
              v16 = v4 + 1;
              goto LABEL_52;
            }
          }

          else
          {
            if (v12 >= v22)
            {
              goto LABEL_41;
            }

LABEL_27:
            v15 = *v4;
            v16 = v4;
            if (!*v4)
            {
              goto LABEL_52;
            }
          }
        }
      }

LABEL_51:
      v16 = &qword_280AFDBB0;
      v4 = &qword_280AFDBB0;
LABEL_52:
      v26 = operator new(0x50uLL);
      v27 = v26;
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v26 + 32), *v2, v2[1]);
      }

      else
      {
        *(v26 + 2) = *v2;
        *(v26 + 6) = v2[2];
      }

      if (*(v2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external((v27 + 56), v2[3], v2[4]);
      }

      else
      {
        *(v27 + 56) = *(v2 + 3);
        *(v27 + 9) = v2[5];
      }

      *v27 = 0;
      *(v27 + 1) = 0;
      *(v27 + 2) = v4;
      *v16 = v27;
      if (*mNVRAMItems)
      {
        mNVRAMItems = *mNVRAMItems;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_280AFDBB0, v27);
      ++qword_280AFDBB8;
      goto LABEL_61;
    }
  }

  if (v77 < 0)
  {
    operator delete(__p);
    if (v75 < 0)
    {
      goto LABEL_90;
    }

LABEL_66:
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_91:
    operator delete(v72);
    if (v71 < 0)
    {
      goto LABEL_92;
    }

LABEL_68:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_93:
    operator delete(v68);
    if (v67 < 0)
    {
      goto LABEL_94;
    }

LABEL_70:
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_95:
    operator delete(v64);
    if (v63 < 0)
    {
      goto LABEL_96;
    }

LABEL_72:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_97:
    operator delete(v60);
    if (v59 < 0)
    {
      goto LABEL_98;
    }

LABEL_74:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_99:
    operator delete(v56);
    if (v55 < 0)
    {
      goto LABEL_100;
    }

LABEL_76:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_101:
    operator delete(v52);
    if (v51 < 0)
    {
      goto LABEL_102;
    }

LABEL_78:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_103:
    operator delete(v48);
    if (v47 < 0)
    {
      goto LABEL_104;
    }

LABEL_80:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_105:
    operator delete(v44);
    if (v43 < 0)
    {
      goto LABEL_106;
    }

LABEL_82:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_107:
    operator delete(v40);
    if (v39 < 0)
    {
      goto LABEL_108;
    }

LABEL_84:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_109:
    operator delete(v36);
    if (v35 < 0)
    {
      goto LABEL_110;
    }

LABEL_86:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

LABEL_111:
    operator delete(v32);
    if (v31 < 0)
    {
      goto LABEL_112;
    }

LABEL_88:
    v28 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_90:
    operator delete(v74);
    if (v73 < 0)
    {
      goto LABEL_91;
    }

LABEL_67:
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_92:
    operator delete(v70);
    if (v69 < 0)
    {
      goto LABEL_93;
    }

LABEL_69:
    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_94:
    operator delete(v66);
    if (v65 < 0)
    {
      goto LABEL_95;
    }

LABEL_71:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_96:
    operator delete(v62);
    if (v61 < 0)
    {
      goto LABEL_97;
    }

LABEL_73:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_98:
    operator delete(v58);
    if (v57 < 0)
    {
      goto LABEL_99;
    }

LABEL_75:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_100:
    operator delete(v54);
    if (v53 < 0)
    {
      goto LABEL_101;
    }

LABEL_77:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_102:
    operator delete(v50);
    if (v49 < 0)
    {
      goto LABEL_103;
    }

LABEL_79:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

LABEL_104:
    operator delete(v46);
    if (v45 < 0)
    {
      goto LABEL_105;
    }

LABEL_81:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_106:
    operator delete(v42);
    if (v41 < 0)
    {
      goto LABEL_107;
    }

LABEL_83:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_108:
    operator delete(v38);
    if (v37 < 0)
    {
      goto LABEL_109;
    }

LABEL_85:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_110:
    operator delete(v34);
    if (v33 < 0)
    {
      goto LABEL_111;
    }

LABEL_87:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_112:
    operator delete(v30[0]);
    v29 = *MEMORY[0x277D85DE8];
  }
}

void sub_24013517C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (*(v12 + 55) < 0)
  {
    operator delete(*(v12 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(qword_280AFDBB0);
  std::pair<std::string const,std::string>::~pair(a3);
  std::pair<std::string const,std::string>::~pair(a10);
  std::pair<std::string const,std::string>::~pair(a11);
  std::pair<std::string const,std::string>::~pair(a12);
  std::pair<std::string const,std::string>::~pair(a2);
  std::pair<std::string const,std::string>::~pair(a4);
  std::pair<std::string const,std::string>::~pair(a5);
  std::pair<std::string const,std::string>::~pair(a6);
  std::pair<std::string const,std::string>::~pair(a7);
  std::pair<std::string const,std::string>::~pair(a8);
  std::pair<std::string const,std::string>::~pair(a9);
  std::pair<std::string const,std::string>::~pair(va1);
  _Unwind_Resume(a1);
}

void *abm::client::Event::Event(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void abm::client::Event::getData(xpc_object_t **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  *a2 = 0;
  value = xpc_dictionary_get_value(*v3, kKeyEventData);
  v5 = value;
  v6 = MEMORY[0x277D86468];
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v5 = xpc_null_create();
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == v6)
  {
    xpc_retain(v5);
    v7 = v5;
  }

  else
  {
    v7 = xpc_null_create();
  }

LABEL_8:
  xpc_release(v5);
  if (MEMORY[0x245CBA9E0](v7) == v6)
  {
    object = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::bridge();
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFDictionaryGetTypeID())
      {
        CFRetain(cf);
        v9 = cf;
        *a2 = cf;
      }

      else
      {
        v9 = cf;
        *a2 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      *a2 = 0;
    }

    xpc_release(object);
  }

  xpc_release(v7);
}

void sub_2401353E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10)
{
  xpc_release(object);
  xpc_release(v11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v10);
  _Unwind_Resume(a1);
}

void abm::client::Event::State::name(xpc_object_t *this)
{
  value = xpc_dictionary_get_value(*this, kKeyEvent);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
}

void abm::client::Event::create(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a1;
  if (v7)
  {
    xpc_retain(v7);
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = xpc_null_create();
    v8 = *a2;
    if (*a2)
    {
LABEL_3:
      v9 = _Block_copy(v8);
      v10 = *(a2 + 8);
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v9 = 0;
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_4:
    dispatch_retain(v10);
  }

LABEL_5:
  v6->~__shared_weak_count = v7;
  if (v7)
  {
    xpc_retain(v7);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6->~__shared_weak_count = xpc_null_create();
    if (v9)
    {
LABEL_7:
      v6->~__shared_weak_count_0 = _Block_copy(v9);
      v6->__on_zero_shared = v10;
      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v6->~__shared_weak_count_0 = 0;
  v6->__on_zero_shared = v10;
  if (v10)
  {
LABEL_8:
    dispatch_retain(v10);
  }

LABEL_9:
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  v11->__vftable = &unk_2852190C8;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v7);
  v12 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *v12 = v6;
  v12[1] = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v12;
  v13 = operator new(0x20uLL);
  *v13 = &unk_285219148;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v12;
  a3[1] = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v11;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v14 = v11;
    if (!v11)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);

    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_24013574C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](va2);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::unique_ptr<abm::client::Event::State>::~unique_ptr[abi:ne200100](va1);
  dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(va);
  xpc_release(v4);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<abm::client::Event::State *,std::shared_ptr<abm::client::Event::State>::__shared_ptr_default_delete<abm::client::Event::State,abm::client::Event::State>,std::allocator<abm::client::Event::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Event::State *,std::shared_ptr<abm::client::Event::State>::__shared_ptr_default_delete<abm::client::Event::State,abm::client::Event::State>,std::allocator<abm::client::Event::State>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abm::client::Event::State::~State(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abm::client::Event::State *,std::shared_ptr<abm::client::Event::State>::__shared_ptr_default_delete<abm::client::Event::State,abm::client::Event::State>,std::allocator<abm::client::Event::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240146C68)
  {
    if (((v2 & 0x8000000240146C68 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240146C68))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240146C68 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::client::Event::State::~State(abm::client::Event::State *this)
{
  if (!*(this + 1) || !*(this + 2))
  {
    goto LABEL_26;
  }

  abm::client::Event::State::name(this);
  v2 = strlen(kValueInvalid);
  if ((SHIBYTE(v12) & 0x8000000000000000) == 0)
  {
    if (v2 == SHIBYTE(v12) && !memcmp(&__s1, kValueInvalid, v2))
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (v2 != v11)
  {
    operator delete(__s1);
    v3 = *this;
    if (*this)
    {
LABEL_7:
      xpc_retain(v3);
      v4 = *(this + 1);
      if (v4)
      {
LABEL_8:
        v5 = _Block_copy(v4);
        goto LABEL_16;
      }

LABEL_15:
      v5 = 0;
LABEL_16:
      v7 = *(this + 2);
      __s1 = MEMORY[0x277D85DD0];
      v11 = 1174405120;
      v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
      v13 = &__block_descriptor_tmp_6;
      if (v5)
      {
        aBlock = _Block_copy(v5);
        object = v3;
        if (v3)
        {
LABEL_18:
          xpc_retain(v3);
LABEL_21:
          dispatch_async(v7, &__s1);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v5)
          {
            _Block_release(v5);
          }

          xpc_release(v3);
          goto LABEL_26;
        }
      }

      else
      {
        aBlock = 0;
        object = v3;
        if (v3)
        {
          goto LABEL_18;
        }
      }

      object = xpc_null_create();
      goto LABEL_21;
    }

LABEL_14:
    v3 = xpc_null_create();
    v4 = *(this + 1);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (v2 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = memcmp(__s1, kValueInvalid, v2);
  operator delete(__s1);
  if (v6)
  {
LABEL_6:
    v3 = *this;
    if (*this)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_26:
  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(*this);
  *this = 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

abm::client::Event::State **std::unique_ptr<abm::client::Event::State>::~unique_ptr[abi:ne200100](abm::client::Event::State **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abm::client::Event::State::~State(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_pointer<abm::client::Event *,std::shared_ptr<abm::client::Event>::__shared_ptr_default_delete<abm::client::Event,abm::client::Event>,std::allocator<abm::client::Event>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::client::Event *,std::shared_ptr<abm::client::Event>::__shared_ptr_default_delete<abm::client::Event,abm::client::Event>,std::allocator<abm::client::Event>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<abm::client::Event *,std::shared_ptr<abm::client::Event>::__shared_ptr_default_delete<abm::client::Event,abm::client::Event>,std::allocator<abm::client::Event>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000240146D3FLL)
  {
    if (((v2 & 0x8000000240146D3FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000240146D3FLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000240146D3FLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const char *abm::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_278C99618[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278C99668[a1];
  }
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x245CBA9E0](*a1) != MEMORY[0x277D86468])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v3 < 5)
  {
    return off_278C99B70[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x245CBA9E0](*a1) != MEMORY[0x277D86468])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_278C99B98[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219198;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x245CBA9E0](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219198;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2852191E0;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x245CBA9E0](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2852191E0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219228;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x245CBA9E0](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219228;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219270;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x245CBA9E0](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_285219270;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CBA9E0](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2852192B8;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x245CBA9E0](*a1) == MEMORY[0x277D86468] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2852192B8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void ConnectionObserver::ConnectionObserver(ConnectionObserver *this)
{
  v22[4] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 24), "com.apple.telephony", "conn.observer");
  *(this + 4) = &unk_285219300;
  v2 = operator new(0x28uLL);
  v3 = operator new(0x20uLL);
  v18 = &v18;
  v19 = &v18;
  v22[0] = 0;
  v22[1] = 0;
  v20 = 0;
  v21 = v22;
  v4 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::grouped_list(v4, &v18);
  *v3 = v4;
  *(v3 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(v3, v4, v3 + 1);
  v5 = operator new(1uLL);
  *(v3 + 3) = 0;
  *(v3 + 2) = v5;
  v6 = operator new(0x18uLL);
  v6[1] = 0x100000001;
  *v6 = &unk_2852193C0;
  v6[2] = v5;
  *(v3 + 3) = v6;
  *v2 = v3;
  v2[1] = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(v2, v3, v2 + 1);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v21, v22[0]);
  if (v20)
  {
    v7 = v19;
    v8 = *(v18 + 8);
    v9 = *v19;
    *(v9 + 8) = v8;
    *v8 = v9;
    v20 = 0;
    if (v7 != &v18)
    {
      do
      {
        v10 = v7[1];
        v11 = v7[3];
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10 != &v18);
    }
  }

  v2[2] = **v2;
  v12 = operator new(0x40uLL);
  pthread_mutex_init(v12, 0);
  v2[4] = 0;
  v2[3] = v12;
  v13 = operator new(0x18uLL);
  *(v13 + 1) = 0x100000001;
  *v13 = &unk_285219420;
  *(v13 + 2) = v12;
  v2[4] = v13;
  *(this + 6) = 0;
  *(this + 5) = v2;
  v14 = operator new(0x18uLL);
  v14[1] = 0x100000001;
  *v14 = &unk_285219480;
  v14[2] = v2;
  *(this + 6) = v14;
  *(this + 7) = 0;
  *(this + 16) = 0;
  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  *(this + 9) = dispatch_queue_create("conn.observer", v15);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, this, ConnectionObserver::handleDaemonReadyNotificationStatic, @"kAppleBasebandManagerDaemonReady", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_24013783C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>(v10);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void ConnectionObserver::handleDaemonReadyNotificationStatic(ConnectionObserver *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  v6 = off_280AFDA78;
  if (!off_280AFDA78)
  {
    v7 = operator new(0x50uLL);
    ConnectionObserver::ConnectionObserver(v7);
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(&v12, v7);
    v8 = v12;
    v12 = 0uLL;
    v9 = *(&off_280AFDA78 + 1);
    off_280AFDA78 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v12 + 1);
    if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v6 = off_280AFDA78;
  }

  v11 = *(&off_280AFDA78 + 1);
  if (*(&off_280AFDA78 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 0x40000000;
  v13 = ___ZN18ConnectionObserver17handleDaemonReadyEv_block_invoke;
  v14 = &__block_descriptor_tmp_5;
  v15 = v6;
  os_unfair_lock_lock(v6 + 4);
  v13(&v12);
  os_unfair_lock_unlock(v6 + 4);
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_240137BE0(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void *boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_285219300;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_285219300;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t ctu::SharedLoggableLockable<ConnectionObserver,ctu::OsLogLogger>::~SharedLoggableLockable(uint64_t a1)
{
  MEMORY[0x245CBA350](a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void ConnectionObserver::~ConnectionObserver(ConnectionObserver *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    dispatch_resume(v2);
    dispatch_release(v2);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, @"kAppleBasebandManagerDaemonReady", 0);
  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    dispatch_resume(v5);
    v6 = *(this + 7);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  *(this + 4) = &unk_285219300;
  v7 = *(this + 6);
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
      if (atomic_fetch_add(v7 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 24))(v7);
      }
    }
  }

  MEMORY[0x245CBA350](this + 24);
  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN18ConnectionObserver6resumeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_240122000, v2, OS_LOG_TYPE_DEBUG, "#D Resuming", v4, 2u);
    v3 = *(v1 + 56);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(v1 + 56);
    if (!v3)
    {
      return;
    }
  }

  *(v1 + 56) = 0;
  dispatch_resume(v3);
  dispatch_release(v3);
}

void ___ZN18ConnectionObserver7suspendEv_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240122000, v2, OS_LOG_TYPE_DEBUG, "#D Suspending", buf, 2u);
    v3 = *(v1 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    v12 = *(v1 + 72);
    if (v12)
    {
      dispatch_retain(*(v1 + 72));
      dispatch_suspend(v12);
    }

    v13 = *(v1 + 56);
    *(v1 + 56) = v12;
    if (v13)
    {
      dispatch_resume(v13);
      dispatch_release(v13);
    }

    goto LABEL_23;
  }

  v3 = *(v1 + 64);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = v3 - 1;
  *(v1 + 64) = v3 - 1;
  v5 = *(v1 + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_debug_impl(&dword_240122000, v5, OS_LOG_TYPE_DEBUG, "#D Extra decreased to %d", buf, 8u);
    if (!*(v1 + 64))
    {
      goto LABEL_23;
    }
  }

  else if (!v4)
  {
    goto LABEL_23;
  }

  pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  v6 = off_280AFDA78;
  if (!off_280AFDA78)
  {
    v7 = operator new(0x50uLL);
    ConnectionObserver::ConnectionObserver(v7);
    memset(buf, 170, sizeof(buf));
    std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(buf, v7);
    v8 = *buf;
    memset(buf, 0, sizeof(buf));
    v9 = *(&off_280AFDA78 + 1);
    off_280AFDA78 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v6 = off_280AFDA78;
  }

  v11 = *(&off_280AFDA78 + 1);
  if (*(&off_280AFDA78 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::operator()(*(v6 + 40));
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_240138170(_Unwind_Exception *a1)
{
  v2 = v1;
  operator delete(v2);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void ___ZN18ConnectionObserver17handleDaemonReadyEv_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240122000, v2, OS_LOG_TYPE_DEBUG, "#D Daemon ready received", buf, 2u);
    if (*(v1 + 56))
    {
LABEL_3:
      pthread_mutex_lock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
      v3 = off_280AFDA78;
      if (!off_280AFDA78)
      {
        v4 = operator new(0x50uLL);
        ConnectionObserver::ConnectionObserver(v4);
        memset(buf, 170, sizeof(buf));
        std::shared_ptr<ConnectionObserver>::shared_ptr[abi:ne200100]<ConnectionObserver,0>(buf, v4);
        v5 = *buf;
        memset(buf, 0, sizeof(buf));
        v6 = *(&off_280AFDA78 + 1);
        off_280AFDA78 = v5;
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v7 = *&buf[8];
        if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v3 = off_280AFDA78;
      }

      v8 = *(&off_280AFDA78 + 1);
      if (*(&off_280AFDA78 + 1))
      {
        atomic_fetch_add_explicit((*(&off_280AFDA78 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
      boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::operator()(*(v3 + 40));
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v9 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_18;
    }
  }

  else if (*(v1 + 56))
  {
    goto LABEL_3;
  }

  v10 = *(v1 + 64) + 1;
  *(v1 + 64) = v10;
  v11 = *(v1 + 24);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_debug_impl(&dword_240122000, v11, OS_LOG_TYPE_DEBUG, "#D Extra increased to %d", buf, 8u);
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_240138454(_Unwind_Exception *a1)
{
  v2 = v1;
  operator delete(v2);
  pthread_mutex_unlock(&ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_285219300;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy((a1 + 3), a1[4]);
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
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    pthread_mutex_destroy(*(a1 + 16));

    operator delete(v1);
  }
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::operator()(uint64_t *a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v2;
  v46 = v2;
  v43 = v2;
  v44 = v2;
  v41 = v2;
  v42 = v2;
  v39 = v2;
  v40 = v2;
  v37 = v2;
  v38 = v2;
  v3 = a1[3];
  *&v47 = 10;
  *(&v47 + 1) = &v37;
  *&v48 = 0;
  *(&v48 + 1) = v3;
  pthread_mutex_lock(v3);
  v4 = a1[1];
  if (!v4)
  {
    v6 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit((v4 + 8), memory_order_acquire);
  v6 = *a1;
  if (explicit == 1)
  {
    v7 = *v6;
    v8 = a1[2];
    if (v8 == *v6)
    {
      v8 = v7[1];
      *&v34 = v8;
      if (v7 == v8)
      {
LABEL_10:
        a1[2] = v8;
        goto LABEL_11;
      }
    }

    else
    {
      *&v34 = a1[2];
    }

    v9 = v8[2];
    if (*(v9 + 24))
    {
      v8 = v8[1];
    }

    else
    {
      v8 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v7, (v9 + 64), &v34);
      v6 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

LABEL_13:
  v10 = v33;
  v32 = v6;
  v33 = v4;
  if (v10)
  {
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
      if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 24))(v10);
      }
    }
  }

  pthread_mutex_unlock(*(&v48 + 1));
  v11 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    if (v48 > 0)
    {
      v24 = *(&v47 + 1) + 16 * v48;
      do
      {
        v25 = *(v24 - 8);
        if (v25)
        {
          if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v25 + 16))(v25);
            if (atomic_fetch_add(v25 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v25 + 24))(v25);
            }
          }
        }

        v24 -= 16;
      }

      while (v24 > v11);
    }

    if (v47 >= 0xB)
    {
      operator delete(*(&v47 + 1));
    }
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v12;
  v51 = v12;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v49 = v12;
  v50 = v12;
  v47 = v12;
  v48 = v12;
  v45 = v12;
  v46 = v12;
  v43 = v12;
  v44 = v12;
  v41 = v12;
  v42 = v12;
  v39 = v12;
  v40 = v12;
  v37 = v12;
  v38 = v12;
  LOBYTE(v37) = 0;
  v53 = 10;
  v54 = &v37 + 8;
  *(&v56 + 4) = 0;
  v55 = 0;
  v57 = 0;
  v13 = v32;
  v14 = *v32;
  v29 = &v37;
  v30 = a1;
  v31 = v14;
  *&v27 = *(v14 + 8);
  *(&v27 + 1) = v14;
  *&v28 = &v37;
  *(&v28 + 1) = v14;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v27);
  v26[0] = *v13;
  v26[1] = v26[0];
  v26[2] = &v37;
  v26[3] = v26[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(v26);
  v34 = v27;
  v35 = v28;
  v15 = v26[0];
  v16 = v27;
  if (v27 == v26[0])
  {
    if (DWORD2(v56) <= DWORD1(v56))
    {
      goto LABEL_35;
    }

LABEL_34:
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(v30, v31);
    goto LABEL_35;
  }

  v17 = v35;
  LOBYTE(v18) = *v35;
  do
  {
    if ((v18 & 1) == 0)
    {
      v19 = *(*(v16 + 16) + 32);
      v20 = *(v19 + 24);
      if (!v20)
      {
        std::runtime_error::runtime_error(&v36, "call to empty boost::function");
        v36.__vftable = &unk_285218E20;
        boost::throw_exception<boost::bad_function_call>(&v36);
      }

      (*((v20 & 0xFFFFFFFFFFFFFFFELL) + 8))(v19 + 32);
      if ((*v17 & 1) == 0)
      {
        *v17 = 1;
      }
    }

    *&v34 = *(v16 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v34);
    v17 = v35;
    v18 = *v35;
    if (v18 == 1)
    {
      LOBYTE(v18) = 0;
      *v35 = 0;
    }

    v16 = v34;
  }

  while (v34 != v15);
  if (*(v29 + 70) > *(v29 + 69))
  {
    goto LABEL_34;
  }

LABEL_35:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v37);
  v22 = v33;
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v22 + 16))(v22);
      if (atomic_fetch_add(v22 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v22 + 24))(v22);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2401391AC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x240139210);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v71[3] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_96;
  }

  v2 = a1;
  if (v1 == a1[1])
  {
    goto LABEL_87;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = *(v3 + 264);
    if (v4)
    {
      v5 = *(v3 + 264);
      if (-24 * v4 < 0)
      {
        v6 = *(v3 + 256) + 24 * v4;
        v7 = *(v3 + 256);
        v8 = v6;
        do
        {
          v9 = *(v8 - 24);
          v8 -= 24;
          if (v9 == v9 >> 31)
          {
            v10 = *(v6 - 8);
            if (v10)
            {
              if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 16))(v10);
                if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v10 + 24))(v10);
                }
              }
            }
          }

          else
          {
            v11 = *(v6 - 16);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          v6 = v8;
        }

        while (v8 > v7);
        v5 = *(v3 + 264);
        v1 = *v2;
      }

      *(v3 + 264) = v5 - v4;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v12;
    v70 = v12;
    v67 = v12;
    v68 = v12;
    v65 = v12;
    v66 = v12;
    v63 = v12;
    v64 = v12;
    v61 = v12;
    v62 = v12;
    v59 = v12;
    v60 = v12;
    v13 = *(v1 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v13;
    (*(*v13 + 24))(v13);
    v14 = *v2;
    v15 = *(*v2 + 16);
    v16 = v2[2];
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = *v17;
      if (*v17 != v17[1])
      {
        v19 = (v16 + 8);
        while (1)
        {
          memset(v71, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v18, v71);
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            if (!(*(**(v18 + 8) + 24))(*(v18 + 8)))
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = *(v18 + 16);
            if (v20 && atomic_load_explicit((v20 + 8), memory_order_acquire))
            {
LABEL_22:
              v21 = *(v16 + 264);
              if (v21 == *(v16 + 248))
              {
                if (v21 == -1)
                {
                  v34 = *(v16 + 256) - 24;
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (4 * v21 <= (v21 + 1))
                  {
                    v22 = v21 + 1;
                  }

                  else
                  {
                    v22 = 4 * v21;
                  }

                  v23 = v19;
                  if (v22 >= 0xB)
                  {
                    if (v22 >= 0xAAAAAAAAAAAAAABLL)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v23 = operator new(24 * v22);
                  }

                  v24 = v19;
                  v58 = v22;
                  if (v21)
                  {
                    v25 = 0;
                    v26 = *(v16 + 256);
                    v27 = v26 + 24 * v21;
                    v28 = v23;
                    do
                    {
                      v30 = *(v26 + 8);
                      if (*v26 == *v26 >> 31)
                      {
                        v28[1] = v30;
                        v31 = *(v26 + 16);
                        v28[2] = v31;
                        if (v31)
                        {
                          atomic_fetch_add_explicit((v31 + 8), 1u, memory_order_relaxed);
                        }
                      }

                      else
                      {
                        v28[1] = (*(*v30 + 16))(v30);
                      }

                      v29 = *v26;
                      v26 += 24;
                      *v28 = v29 ^ (v29 >> 31);
                      v28 += 3;
                      v25 -= 24;
                    }

                    while (v26 != v27);
                  }

                  v19 = v24;
                  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(v24);
                  *(v16 + 248) = v22;
                  *(v16 + 256) = v23;
                  v34 = &v23[3 * *(v16 + 264)];
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
LABEL_48:
                    *(v34 + 8) = v35;
                    v37 = v71[2];
                    *(v34 + 16) = v71[2];
                    if (v37)
                    {
                      atomic_fetch_add_explicit((v37 + 8), 1u, memory_order_relaxed);
                    }

LABEL_53:
                    v32 = 0;
                    *v34 = LODWORD(v71[0]) ^ (SLODWORD(v71[0]) >> 31);
                    ++*(v16 + 264);
                    if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_54;
                  }
                }

                v36 = (*(*v35 + 16))(v35);
              }

              else
              {
                v34 = *(v16 + 256) + 24 * v21;
                v35 = v71[1];
                if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                {
                  goto LABEL_48;
                }

                v36 = (*(*v71[1] + 16))(v71[1]);
              }

              *(v34 + 8) = v36;
              goto LABEL_53;
            }
          }

          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v59);
          }

          v32 = 1;
          if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
          {
LABEL_41:
            v33 = v71[2];
            if (v71[2])
            {
              if (atomic_fetch_add((v71[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v33 + 16))(v33);
                if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v33 + 24))(v33);
                }
              }
            }

            goto LABEL_56;
          }

LABEL_54:
          if (v71[1])
          {
            (*(*v71[1] + 8))(v71[1]);
          }

LABEL_56:
          if ((v32 & 1) == 0)
          {
            v18 += 24;
            if (v18 != *(*(v15 + 32) + 8))
            {
              continue;
            }
          }

          v2 = a1;
          v14 = *a1;
          v15 = *(*a1 + 16);
          v16 = a1[2];
          break;
        }
      }
    }

    if ((*(v15 + 24) & 1) == 0)
    {
      ++*(v16 + 280);
LABEL_69:
      v41 = 1;
      goto LABEL_70;
    }

    ++*(v16 + 276);
    v38 = *(v15 + 16);
    if (v38)
    {
      if (atomic_load_explicit((v38 + 8), memory_order_acquire))
      {
        goto LABEL_69;
      }

      v16 = v2[2];
      v14 = *v2;
    }

    v2[3] = v14;
    if (v2[1] == v14)
    {
      v46 = *(v16 + 288);
      if (v46)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v46, &v59);
      }

      v41 = 0;
      *(v16 + 288) = 0;
    }

    else
    {
      v39 = *(v14 + 16);
      v40 = *(v16 + 288);
      if (v40)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v40, &v59);
      }

      *(v16 + 288) = v39;
      v41 = 0;
      if (v39)
      {
        ++*(v39 + 28);
      }
    }

LABEL_70:
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v42 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v44 = __p[1] + 16 * v70;
        do
        {
          v45 = *(v44 - 1);
          if (v45)
          {
            if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 16))(v45);
              if (atomic_fetch_add(v45 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v45 + 24))(v45);
              }
            }
          }

          v44 -= 16;
        }

        while (v44 > v42);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    v1 = *v2;
    v43 = v2[1];
    if (!v41)
    {
      break;
    }

    v1 = *(v1 + 8);
    *v2 = v1;
    if (v1 == v43)
    {
      v48 = v43;
      v47 = v2[3];
      if (v47 != v48)
      {
        goto LABEL_90;
      }

      goto LABEL_96;
    }
  }

  if (v1 == v43)
  {
LABEL_87:
    v47 = v2[3];
    if (v47 == v1)
    {
      goto LABEL_96;
    }

LABEL_90:
    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v67 = v49;
    v68 = v49;
    v65 = v49;
    v66 = v49;
    v63 = v49;
    v64 = v49;
    v61 = v49;
    v62 = v49;
    v59 = v49;
    v60 = v49;
    v50 = *(v47 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v50;
    (*(*v50 + 24))(v50);
    v51 = v2[2];
    v2[3] = v2[1];
    v52 = *(v51 + 288);
    if (v52)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v52, &v59);
    }

    *(v51 + 288) = 0;
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v53 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v55 = __p[1] + 16 * v70;
        do
        {
          v56 = *(v55 - 1);
          if (v56)
          {
            if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v56 + 16))(v56);
              if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v56 + 24))(v56);
              }
            }
          }

          v55 -= 16;
        }

        while (v55 > v53);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }
  }

LABEL_96:
  v54 = *MEMORY[0x277D85DE8];
}

void sub_240139BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_240139C7C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 4) == *(v5 - 4) >> 31)
        {
          v6 = *v5;
          if (*v5 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        else
        {
          v7 = *(v5 - 1);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x240139DA0);
}

void sub_240139D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  __cxa_end_catch();
  boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(va);
  boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(v3 - 120);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va1);
  _Unwind_Resume(a1);
}

void sub_240139D98(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_240139F7C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x240139F6CLL);
}

uint64_t boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 280) > *(*result + 276))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[8] = v4;
  v20[9] = v4;
  v20[6] = v4;
  v20[7] = v4;
  v20[4] = v4;
  v20[5] = v4;
  v20[2] = v4;
  v20[3] = v4;
  v20[0] = v4;
  v20[1] = v4;
  v5 = a1[3];
  v21 = 10;
  __p = v20;
  v23 = 0;
  v24 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      v11 = v8[3];
      *(v7 + 2) = v8[2];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(a1, v7);
    }

    v12 = **a1;
    v13 = v12[1];
    v19 = v13;
    if (v12 != v13)
    {
      do
      {
        while (1)
        {
          v14 = v13[2];
          if ((*(v14 + 24) & 1) == 0)
          {
            break;
          }

          v13 = v13[1];
          v19 = v13;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

        v13 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v12, (v14 + 64), &v19);
        v12 = **a1;
        v19 = v13;
      }

      while (v13 != v12);
LABEL_12:
      v13 = v12;
    }

    a1[2] = v13;
  }

  pthread_mutex_unlock(v24);
  v15 = __p;
  if (__p)
  {
    if (v23 > 0)
    {
      v17 = __p + 16 * v23;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v18 + 16))(v18);
            if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 24))(v18);
            }
          }
        }

        v17 -= 16;
      }

      while (v17 > v15);
    }

    if (v21 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24013A228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  boost::detail::shared_count::~shared_count(v12);
  operator delete(v11);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a11);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24013A460(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ConnectionObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<ConnectionObserver,ConnectionObserver,ctu::PthreadMutexGuardPolicy<ConnectionObserver>>::sInstance, &dword_240122000);
  }

  return result;
}

void BudgetData::BudgetData(BudgetData *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

void BudgetData::~BudgetData(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(*(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(*(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void BudgetData::BudgetData(BudgetData *this, const BudgetData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

void *BudgetData::BudgetData(void *result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

void **BudgetData::operator=(void **result, void **a2)
{
  if (a2 != result)
  {
    v2 = result;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(result, *a2, a2 + 1);
    return v2;
  }

  return result;
}

uint64_t BudgetData::get(uint64_t **a1, unsigned int a2)
{
  v2 = a2;
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 28) = v2;
    *(v6 + 32) = 0;
    *(v6 + 36) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6[4];
}

uint64_t *BudgetData::set(uint64_t *result, unsigned int a2, int a3)
{
  v4 = a2;
  v5 = result;
  v7 = result + 1;
  v6 = result[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = result + 1;
LABEL_8:
    v10 = v8;
    v8 = operator new(0x28uLL);
    *(v8 + 28) = v4;
    *(v8 + 32) = 0;
    *(v8 + 36) = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **v5;
    if (v11)
    {
      *v5 = v11;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v8);
    ++v5[2];
  }

  *(v8 + 8) = a3;
  *(v8 + 36) = 1;
  return result;
}

void BudgetData::clear(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(*(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void *BudgetData::for_each(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      v5 = *(a2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v5 + 48))(v5, v3 + 28, v3 + 4);
      if (!result)
      {
        break;
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v34 = v10[1];
        if (!v34)
        {
          break;
        }

        do
        {
          v10 = v34;
          v34 = *v34;
        }

        while (v34);
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
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 28);
      *(v9 + 28) = v25;
      v26 = *(v24 + 8);
      *(v9 + 36) = *(v24 + 36);
      *(v9 + 8) = v26;
      v27 = *v8;
      v28 = a1 + 1;
      v29 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v28;
      *v29 = v9;
      v30 = **a1;
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v32 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v33 = v10[1];
              if (!v33)
              {
                break;
              }

              do
              {
                v10 = v33;
                v33 = *v33;
              }

              while (v33);
            }
          }

          else
          {
            for (v10[1] = 0; v32; v32 = v10[1])
            {
              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          a2 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v28 = v27;
        if (v25 >= *(v27 + 28))
        {
          break;
        }

        v27 = *v27;
        v29 = v28;
        if (!*v28)
        {
          goto LABEL_38;
        }
      }

      v27 = v27[1];
    }

    while (v27);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v28;
    v28[1] = v9;
    v30 = **a1;
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v30;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = a1 + 1;
    while (1)
    {
      v15 = operator new(0x28uLL);
      v16 = *(a2 + 9);
      *(v15 + 28) = *(a2 + 28);
      *(v15 + 9) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_25:
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (v15[28] >= *(v17 + 28))
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_25;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a1 = v20;
    goto LABEL_27;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

char *ABMGetRootVersionString@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_2401471F0;
  strcpy(result, "AppleBasebandServices_Manager-1397");
  return result;
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 2)
  {
    *(a2 + 23) = 4;
    *a2 = (result << 16) | 0x52304254;
    *(a2 + 4) = 0;
  }

  return result;
}

{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 9)
  {
    if (result)
    {
      if (result == 1)
      {
        *(a2 + 3) = 1667593069;
        *a2 = 1831874609;
      }

      else if (result == 2)
      {
        *(a2 + 23) = 5;
        strcpy(a2, "1msec");
      }
    }

    else
    {
      *(a2 + 23) = 8;
      strcpy(a2, "1000msec");
    }
  }

  else if (result > 11)
  {
    if (result == 12)
    {
      *(a2 + 23) = 9;
      strcpy(a2, "TangierCG");
    }

    else if (result == 13)
    {
      *(a2 + 23) = 3;
      *a2 = 5915974;
    }
  }

  else
  {
    *(a2 + 23) = 9;
    if (result == 10)
    {
      strcpy(a2, "ModemSkin");
    }

    else
    {
      strcpy(a2, "TangierBG");
    }
  }

  return result;
}

uint64_t abm::convertBasebandCPMSPowerBudgetScale(unsigned __int16 *a1)
{
  if (*(a1 + 23) < 0)
  {
    v6 = *(a1 + 1);
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        if (**a1 == 1831874609 && *(*a1 + 3) == 1667593069)
        {
          return 1;
        }

        return 255;
      }

      if (v6 != 8)
      {
        if (v6 == 9)
        {
          v7 = *a1;
          if (**a1 != 0x696B536D65646F4DLL || *(*a1 + 8) != 110)
          {
            if (*v7 != 0x42726569676E6154 || *(v7 + 8) != 71)
            {
              v10 = *v7;
              v11 = *(v7 + 8);
              if (v10 == 0x43726569676E6154 && v11 == 71)
              {
                return 12;
              }

              return 255;
            }

            return 11;
          }

          return 10;
        }

        return 255;
      }

      if (**a1 != 0x6365736D30303031)
      {
        return 255;
      }

      return 0;
    }

    if (v6 != 3)
    {
      if (v6 == 5 && **a1 == 1702063409 && *(*a1 + 4) == 99)
      {
        return 2;
      }

      return 255;
    }

    a1 = *a1;
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        if (*a1 == 1831874609 && *(a1 + 3) == 1667593069)
        {
          return 1;
        }

        return 255;
      }

      if (v1 != 8)
      {
        if (v1 == 9)
        {
          if (*a1 != 0x696B536D65646F4DLL || *(a1 + 8) != 110)
          {
            if (*a1 != 0x42726569676E6154 || *(a1 + 8) != 71)
            {
              if (*a1 == 0x43726569676E6154 && *(a1 + 8) == 71)
              {
                return 12;
              }

              return 255;
            }

            return 11;
          }

          return 10;
        }

        return 255;
      }

      if (*a1 != 0x6365736D30303031)
      {
        return 255;
      }

      return 0;
    }

    if (v1 != 3)
    {
      if (v1 == 5 && *a1 == 1702063409 && *(a1 + 4) == 99)
      {
        return 2;
      }

      return 255;
    }
  }

  v17 = bswap32(*a1 | (*(a1 + 2) << 16));
  v18 = v17 >= 0x46455A00;
  v19 = v17 > 0x46455A00;
  v20 = !v18;
  if (v19 == v20)
  {
    return 13;
  }

  else
  {
    return -1;
  }
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_240122000);
  }

  return result;
}

void abm::client::Manager::create(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl ***a3@<X8>)
{
  v6 = operator new(0x10uLL);
  v6->~__shared_weak_count = 0;
  v6->~__shared_weak_count_0 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = MEMORY[0x277D86468];
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA9E0](v7) == v8)
    {
      xpc_retain(v7);
      v9 = v7;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (MEMORY[0x245CBA9E0](v9) == v8)
  {
    v10 = xpc_string_create("com.apple.basebandd.xpc");
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x277D6F150], v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    v12 = xpc_string_create(abm::client::Manager::kABMDaemonReadyNotification);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x277D6F158], v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    v15 = xpc_string_create(v14);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x277D6F148], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
  }

  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Client::create();
  v17 = v6->~__shared_weak_count_0;
  *&v6->~__shared_weak_count = v26;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(object);
  xpc_release(v9);
  v18 = operator new(0x20uLL);
  v18->__shared_owners_ = 0;
  v18->__vftable = &unk_2852195D8;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v6;
  v19 = operator new(0x18uLL);
  v20 = v19;
  p_shared_owners = &v18->__shared_owners_;
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = *a2;
  if (v22)
  {
    dispatch_retain(v22);
    *v20 = v6;
    v20[1] = v18;
    atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
    v20[2] = v22;
    dispatch_retain(v22);
  }

  else
  {
    *v19 = v6;
    v19[1] = v18;
    atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
    v19[2] = 0;
  }

  *a3 = v20;
  v23 = operator new(0x20uLL);
  *v23 = &unk_285219628;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = v20;
  a3[1] = v23;
  if (v22)
  {
    dispatch_release(v22);
  }

  if (atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v18;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v24 = v18;
    if (!v18)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);

    std::__shared_weak_count::__release_weak(v24);
  }
}

void sub_24013B7A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::unique_ptr<abm::client::Manager>::~unique_ptr[abi:ne200100](va2);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013B7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24013B7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::unique_ptr<AppleBasebandManager>::~unique_ptr[abi:ne200100](va1);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24013B808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v17 = std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](v14);
  operator delete(v17);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_24013B858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *abm::client::Manager::Manager(void *result, void *a2, NSObject **a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a3;
  result[2] = *a3;
  if (v4)
  {
    v5 = result;
    dispatch_retain(v4);
    return v5;
  }

  return result;
}

{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a3;
  result[2] = *a3;
  if (v4)
  {
    v5 = result;
    dispatch_retain(v4);
    return v5;
  }

  return result;
}

void abm::client::Manager::~Manager(abm::client::Manager *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void abm::client::Manager::setEventHandler(uint64_t a1, int a2, xpc_object_t *a3, void *aBlock)
{
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    v8 = *a1;
    v9 = *a3;
    if (v9)
    {
LABEL_3:
      xpc_retain(v9);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v8 = *a1;
    v9 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }
  }

  v9 = xpc_null_create();
LABEL_6:
  aBlocka[0] = MEMORY[0x277D85DD0];
  aBlocka[1] = 1174405120;
  aBlocka[2] = ___ZN3abm6client7Manager15setEventHandlerERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEU13block_pointerFvPvP16dispatch_group_sE_block_invoke;
  aBlocka[3] = &__block_descriptor_tmp_3;
  if (v7)
  {
    v10 = _Block_copy(v7);
  }

  else
  {
    v10 = 0;
  }

  v14 = v10;
  v11 = _Block_copy(aBlocka);
  v12 = *(a1 + 16);
  if (v12)
  {
    dispatch_retain(v12);
  }

  v15[0] = v11;
  v15[1] = v12;
  abm::client::Manager::State::setEventHandler(*v8, a2, v9, v15);
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  xpc_release(v9);
  if (v14)
  {
    _Block_release(v14);
  }

  if (v7)
  {
    _Block_release(v7);
  }
}

void sub_24013BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a15);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v16);
  if (v15)
  {
    _Block_release(v15);
  }

  _Unwind_Resume(a1);
}

void abm::client::Manager::State::setEventHandler(int a1, int a2, xpc_object_t object, uint64_t a4)
{
  v9 = object;
  if (!object)
  {
    v9 = xpc_null_create();
    v5 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(object);
  v5 = *a4;
  if (*a4)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a4 + 8);
  aBlock = v5;
  objecta = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  TelephonyXPC::Client::setEventHandler();
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v9);
}

void sub_24013BC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a10);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c63_ZTSN8dispatch5blockIU13block_pointerFvPvP16dispatch_group_sEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c63_ZTSN8dispatch5blockIU13block_pointerFvPvP16dispatch_group_sEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void abm::client::Manager::setEventHandler(uint64_t a1, int a2, void *a3)
{
  v6 = xpc_null_create();
  v7 = v6;
  abm::client::Manager::setEventHandler(a1, a2, &v7, a3);
  xpc_release(v6);
}

void abm::client::Manager::setEventHandler(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a3)
  {
    v5 = _Block_copy(*a3);
    v6 = *(a3 + 8);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  v6 = *(a3 + 8);
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  v7 = *v4;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    object = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  aBlock = 0;
  object = v6;
  if (v6)
  {
LABEL_6:
    dispatch_retain(v6);
  }

LABEL_7:
  TelephonyXPC::Client::setEventHandler();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_24013BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a11);
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  _Unwind_Resume(a1);
}

void abm::client::Manager::setEventHandler(void **a1, int a2, xpc_object_t *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
    v8 = *a4;
    if (*a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = xpc_null_create();
    v8 = *a4;
    if (*a4)
    {
LABEL_3:
      v9 = _Block_copy(v8);
      v10 = *(a4 + 8);
      v11 = v9;
      v12 = v10;
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v9 = 0;
  v10 = *(a4 + 8);
  v11 = 0;
  v12 = v10;
  if (v10)
  {
LABEL_4:
    dispatch_retain(v10);
  }

LABEL_5:
  abm::client::Manager::State::setEventHandler(*v6, a2, v7, &v11);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v7);
}

void sub_24013BFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  xpc_release(v9);
  _Unwind_Resume(a1);
}

void abm::client::Manager::perform(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v2;
    v8 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *v2;
    v8 = 0;
  }

  TelephonyXPC::Client::perform();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_24013C0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void abm::client::Manager::perform(uint64_t a1, int a2, void *aBlock, xpc_object_t *a4)
{
  if (aBlock)
  {
    v6 = _Block_copy(aBlock);
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  object = *a4;
  if (*a4)
  {
    xpc_retain(*a4);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create();
  xpc_release(object);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  v8 = *a1;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v9 = *v8;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  TelephonyXPC::Client::perform();
  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }
}

void sub_24013C344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va2);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<AppleBasebandManager::State>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24013C36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13)
{
  xpc_release(object);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a13);
  _Unwind_Resume(a1);
}

void abm::client::Manager::perform(uint64_t **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a3 + 8);
  aBlock = v7;
  v13 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  object = *a4;
  if (*a4)
  {
    xpc_retain(*a4);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create();
  xpc_release(object);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v9 = *a1;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v10 = *v9;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  TelephonyXPC::Client::perform();
  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }
}