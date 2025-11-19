void sub_2391C6B44(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2391C6D48;
      block[3] = &unk_278A715B0;
      v16 = a1;
      v14 = v6;
      v15 = v5;
      dispatch_async(v8, block);
    }

    else
    {
      v9 = sub_2393D9044(9u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 64) UTF8String];
        [*(a1 + 56) timeIntervalSinceNow];
        *buf = 136315394;
        v18 = v10;
        v19 = 2048;
        v20 = -v11;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "%s %f seconds: can't dispatch response; no queue", buf, 0x16u);
      }

      if (sub_2393D5398(3u))
      {
        [*(a1 + 64) UTF8String];
        [*(a1 + 56) timeIntervalSinceNow];
        sub_2393D5320(9u, 3);
      }

      if ((*(a1 + 16) & 1) == 0)
      {
        (*(*a1 + 8))(a1);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_2391C6D48(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1[6] + 64) UTF8String];
    [*(a1[6] + 56) timeIntervalSinceNow];
    *buf = 136315394;
    v9 = v3;
    v10 = 2048;
    v11 = -v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "%s %f seconds", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    [*(a1[6] + 64) UTF8String];
    [*(a1[6] + 56) timeIntervalSinceNow];
    sub_2393D5320(9u, 3);
  }

  v5 = a1[5];
  (*(*(a1[6] + 24) + 16))(*(a1[6] + 24), a1[4]);
  result = a1[6];
  if (result && (result[16] & 1) == 0)
  {
    result = (*(*result + 8))(result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2391C6EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23921C1E4(MTRError, a2, a3);
  sub_2391C6B44(a1, v4, 0);
}

void sub_2391C6F28(id *a1)
{
  sub_238EF5014(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391C6F88(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAAA40;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAAAC0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAAB40;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391C7164(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391C7118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391C7164(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C7470(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C7470(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAA9C0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391C7430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391C7470(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391C74F8(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391C74F8(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391C75C4(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391C75C4(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391C75C4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C818C(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391C76C0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA9C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391C76F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391C7788(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAA20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C7848(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAA40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C7878(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C788C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAAA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C794C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAAC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C797C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391C7994(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAB20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C7A54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAB40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C7A84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C7A98(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAABB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391C7AE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAAC50;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAACD0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAAD50;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391C7CC0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391C7C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391C7CC0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C7FCC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C7FCC(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAABD0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391C7F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391C7FCC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[1])
    {

      return sub_2391C815C(a1, a2, a3, a4);
    }

    else
    {
      v9 = *(a2 + 8);
      v11 = *a2;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *a4;
      if (v14 == 1)
      {
        v15 = *(a4 + 4);
      }

      return sub_2391C8090(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391C8090(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391C81E4(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391C81E4(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391C815C(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391C826C(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391C81E4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F37DA4(v8, 2uLL, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

unint64_t sub_2391C826C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391C8338(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391C8338(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391C8338(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v9 = *a3;
  if (v9 == 3)
  {
    v6 = 0x5C00000000;
    LODWORD(v5) = 1415;
    return v6 | v5;
  }

  v5 = sub_2393C8140(v8, 2uLL, v9);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391C8450(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAABD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391C8480(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391C8518(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAC30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C85D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAC50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C8608(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C861C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAACB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C86DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAACD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C870C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391C8724(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAD30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C87E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAD50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C8814(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C8828(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAADB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391C8874(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAAE50;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAAED0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAAF50;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391C8A50(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391C8A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391C8A50(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C8D5C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C8D5C(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAADD0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391C8D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391C8D5C(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391C8DE4(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391C8DE4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391C8EB0(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391C8EB0(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391C8EB0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C8140(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391C8FAC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAADD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391C8FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391C9074(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAE30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9134(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAE50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9164(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C9178(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAEB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9238(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAED0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9268(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391C9280(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAF30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9340(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAF50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9370(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C9384(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAAFB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391C93D0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAB050;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAB0D0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAB150;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391C95AC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391C9560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391C95AC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C98B8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C98B8(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAAFD0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391C9878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391C98B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[1])
    {

      return sub_2391C8D5C(a1, a2, a3, a4);
    }

    else
    {
      v9 = *(a2 + 8);
      v11 = *a2;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *a4;
      if (v14 == 1)
      {
        v15 = *(a4 + 4);
      }

      return sub_2391C997C(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391C997C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391C9A48(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391C9A48(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391C9A48(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F13404(v8, 2uLL, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391C9B44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAAFD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391C9B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391C9C0C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB030))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9CCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9CFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C9D10(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB0B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9DD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB0D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9E00(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391C9E18(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB130))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391C9ED8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391C9F08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391C9F1C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB1B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391C9F68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAB250;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAB2D0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAB350;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CA144(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CA0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CA144(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CA450(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CA450(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAB1D0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CA410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CA450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 2))
    {

      return sub_2391C7470(a1, a2, a3, a4);
    }

    else
    {
      v9 = *(a2 + 8);
      v11 = *a2;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *a4;
      if (v14 == 1)
      {
        v15 = *(a4 + 4);
      }

      return sub_2391CA514(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391CA514(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CA5E0(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CA5E0(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391CA5E0(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238EFD4A8(v8, 2uLL, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CA6DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB1D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CA70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CA7A4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB230))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CA864(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB250;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CA894(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CA8A8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB2B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CA968(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB2D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CA998(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CA9B0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CAA70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB350;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CAAA0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CAAB4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB3B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391CAB00(void *a1, unint64_t a2)
{
  *a1 = &unk_284BAB3D0;
  is_mul_ok(a2, 0x28uLL);
  operator new[]();
}

void *sub_2391CABA4(void *a1)
{
  *a1 = &unk_284BAB3D0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80304EB043);
  }

  return a1;
}

void sub_2391CAC00(void *a1)
{
  *a1 = &unk_284BAB3D0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80304EB043);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391CAC7C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAB488;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAB508;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAB588;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CAE58(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CAE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CAE58(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CB164(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CB164(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAB408;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CB124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CB164(uint64_t a1, uint64_t *a2, void *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391CB2C4(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391CB480(a3, v10);
          v6 = sub_2391CB3B4(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391CB2C4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
      v13 = 40 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238F02078(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 40;
        v13 -= 40;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391CB3B4(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CB4AC(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CB4AC(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391CB480(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 40 * a2;
}

unint64_t sub_2391CB4AC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x16A00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F02078(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CB5AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB408;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CB5DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CB674(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB468))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CB734(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB488;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CB764(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CB778(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB4E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CB838(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CB868(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CB880(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB568))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CB940(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CB970(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CB984(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB5E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2391CBA6C(void *a1)
{
  *a1 = &unk_284BAB608;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1072C80E6E657DALL);
  }

  return a1;
}

void sub_2391CBAC8(void *a1)
{
  *a1 = &unk_284BAB608;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1072C80E6E657DALL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_2391CBB44(void *a1, unint64_t a2)
{
  *a1 = &unk_284BAB640;
  is_mul_ok(a2, 0x14uLL);
  operator new[]();
}

void *sub_2391CBBEC(void *a1)
{
  *a1 = &unk_284BAB640;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8044078E89);
  }

  return a1;
}

void sub_2391CBC48(void *a1)
{
  *a1 = &unk_284BAB640;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8044078E89);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391CBCC4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAB6F8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAB778;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAB7F8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CBEA0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CBE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CBEA0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CC1AC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CC1AC(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAB678;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CC16C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CC1AC(uint64_t a1, uint64_t *a2, void *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391CC30C(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391CC4C4(a3, v10);
          v6 = sub_2391CC3F8(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391CC30C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
      v13 = v11 << 6;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238EFE4CC(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 64;
        v13 -= 64;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391CC3F8(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CC4EC(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CC4EC(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391CC4C4(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + (a2 << 6);
}

unint64_t sub_2391CC4EC(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x16A00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238EFE4CC(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CC5EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB678;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CC61C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CC6B4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB6D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CC774(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB6F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CC7A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CC7B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB758))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CC878(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB778;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CC8A8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CC8C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB7D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CC980(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB7F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CC9B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CC9C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB858))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391CCA10(void *a1, unint64_t a2)
{
  *a1 = &unk_284BAB878;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_2391CCAA8(void *a1)
{
  *a1 = &unk_284BAB878;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C8052ED3223);
  }

  return a1;
}

void sub_2391CCB04(void *a1)
{
  *a1 = &unk_284BAB878;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C8052ED3223);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391CCB80(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAB930;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAB9B0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BABA30;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CCD5C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CCD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CCD5C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CD068(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CD068(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAB8B0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CD028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CD068(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391CD1C8(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391CD384(a3, v10);
          v6 = sub_2391CD2B8(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391CD1C8(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = a3[1];
    if (v11)
    {
      v12 = *a3;
      v13 = 24 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238EFE894(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 24;
        v13 -= 24;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391CD2B8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CD3B0(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CD3B0(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391CD384(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 24 * a2;
}

unint64_t sub_2391CD3B0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x16A00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238EFE894(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CD4B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB8B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CD4E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CD578(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB910))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CD638(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CD668(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CD67C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAB990))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CD73C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAB9B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CD76C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CD784(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABA10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CD844(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABA30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CD874(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CD888(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABA90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391CD8D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BABB30;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BABBB0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BABC30;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CDAB0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CDA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CDAB0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CDDBC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CDDBC(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BABAB0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CDD7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CDDBC(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391CDE44(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391CDE44(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CDF10(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CDF10(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391CDF10(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C85FC(v8, 2uLL, *a3, *(a3 + 8));
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CE00C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABAB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CE03C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CE0D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABB10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CE194(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABB30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CE1C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CE1D8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABB90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CE298(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABBB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CE2C8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CE2E0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABC10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CE3A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABC30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CE3D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CE3E4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABC90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391CE430(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BABD30;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BABDB0;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BABE30;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CE60C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CE5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CE60C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CE918(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CE918(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BABCB0;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CE8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CE918(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391CE9A0(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391CE9A0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CEA6C(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CEA6C(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391CEA6C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C7E38(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CEB68(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABCB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CEB98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CEC30(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABD10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CECF0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABD30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CED20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CED34(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABD90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CEDF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABDB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CEE24(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CEE3C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABE10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CEEFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABE30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CEF2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CEF40(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABE90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2391CF01C(void *a1)
{
  *a1 = &unk_284BABEB0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C801E18E2A0);
  }

  return a1;
}

void sub_2391CF078(void *a1)
{
  *a1 = &unk_284BABEB0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C801E18E2A0);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391CF0F4(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BABF68;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BABFE8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAC068;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391CF2D0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CF284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391CF2D0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391CF5DC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391CF5DC(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BABEE8;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391CF59C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391CF5DC(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391CF73C(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391CF8F4(a3, v10);
          v6 = sub_2391CF828(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391CF73C(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = a3[1];
    if (v11)
    {
      v12 = *a3;
      v13 = 16 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238F23CB8(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 16;
        v13 -= 16;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391CF828(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391CF91C(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391CF91C(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391CF8F4(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 16 * a2;
}

unint64_t sub_2391CF91C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x16A00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F23CB8(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391CFA1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABEE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391CFA4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391CFAE4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABF48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CFBA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABF68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CFBD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CFBE8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BABFC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CFCA8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BABFE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CFCD8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391CFCF0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC048))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391CFDB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391CFDE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391CFDF4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC0C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391CFE40(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAC168;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAC1E8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAC268;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D001C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391CFFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D001C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D0328(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D0328(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAC0E8;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D02E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D0328(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D03B0(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D03B0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D047C(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D047C(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D047C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v9 = *a3;
  if (v9 == 2)
  {
    v6 = 0x5C00000000;
    LODWORD(v5) = 1415;
    return v6 | v5;
  }

  v5 = sub_2393C8140(v8, 2uLL, v9);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D0594(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC0E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D05C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D065C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC148))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D071C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC168;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D074C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D0760(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC1C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D0820(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC1E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D0850(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D0868(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC248))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D0928(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC268;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D0958(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D096C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC2C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D09B8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAC368;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAC3E8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAC468;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D0B94(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D0B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D0B94(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D0EA0(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D0EA0(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAC2E8;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D0E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D0EA0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D0F28(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D0F28(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D0FF4(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D0FF4(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D0FF4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v9 = *a3;
  if (v9 == 12)
  {
    v6 = 0x5C00000000;
    LODWORD(v5) = 1415;
    return v6 | v5;
  }

  v5 = sub_2393C8140(v8, 2uLL, v9);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D110C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC2E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D113C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D11D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC348))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D1294(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D12C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D12D8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC3C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D1398(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC3E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D13C8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D13E0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC448))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D14A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D14D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D14E4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC4C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D1530(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAC568;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAC5E8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAC668;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D170C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D16C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D170C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C815C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C815C(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAC4E8;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D19D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391D1A8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC4E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D1ABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D1B54(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC548))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D1C14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC568;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D1C44(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D1C58(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC5C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D1D18(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC5E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D1D48(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D1D60(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC648))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D1E20(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC668;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D1E50(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D1E64(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC6C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D1EB0(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAC768;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAC7E8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAC868;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D208C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D2040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D208C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D2398(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D2398(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAC6E8;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D2358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D2398(uint64_t a1, uint64_t *a2, unint64_t *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D2420(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D2420(uint64_t a1, unsigned __int16 *a2, unint64_t *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D24EC(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D24EC(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D24EC(uint64_t a1, unsigned __int16 *a2, unint64_t *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C8154(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D25E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC6E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D2618(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D26B0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC748))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D2770(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC768;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D27A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D27B4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC7C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D2874(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC7E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D28A4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D28BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC848))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D297C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC868;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D29AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D29C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC8C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391D2A0C(void *a1, unint64_t a2)
{
  *a1 = &unk_284BAC8E8;
  is_mul_ok(a2, 6uLL);
  operator new[]();
}

void *sub_2391D2AA4(void *a1)
{
  *a1 = &unk_284BAC8E8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C805D080610);
  }

  return a1;
}

void sub_2391D2B00(void *a1)
{
  *a1 = &unk_284BAC8E8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C805D080610);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391D2B7C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAC9A0;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BACA20;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BACAA0;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D2D58(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D2D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D2D58(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D3064(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D3064(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAC920;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D3024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D3064(uint64_t a1, uint64_t *a2, void *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391D31C4(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391D3380(a3, v10);
          v6 = sub_2391D32B4(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391D31C4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
      v13 = 6 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238F1975C(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 3;
        v13 -= 6;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391D32B4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D33AC(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D33AC(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391D3380(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 6 * a2;
}

unint64_t sub_2391D33AC(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x16A00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F1975C(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D34AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC920;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D34DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D3574(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAC980))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D3634(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAC9A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D3664(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D3678(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACA00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D3738(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACA20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D3768(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D3780(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACA80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D3840(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACAA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D3870(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D3884(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACB00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2391D3958(void *a1)
{
  *a1 = &unk_284BACB20;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C807EF9F939);
  }

  return a1;
}

void sub_2391D39B4(void *a1)
{
  *a1 = &unk_284BACB20;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C807EF9F939);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391D3A30(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BACBD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BACC58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BACCD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D3C0C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D3BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D3C0C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D3F18(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D3F18(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BACB58;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D3ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D3F18(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_2391D4078(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391D4230(a3, v10);
          v6 = sub_2391D4164(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2391D4078(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = a3[1];
    if (v11)
    {
      v12 = *a3;
      v13 = 32 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238F06280(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 32;
        v13 -= 32;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391D4164(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D4258(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D4258(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

uint64_t sub_2391D4230(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 32 * a2;
}

unint64_t sub_2391D4258(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F06280(a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D4358(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACB58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D4388(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D4420(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D44E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACBD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D4510(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D4524(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D45E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACC58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D4614(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D462C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACCB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D46EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACCD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D471C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D4730(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACD38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D477C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BACDD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BACE58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BACED8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D4958(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D490C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D4958(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D4C64(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D4C64(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BACD58;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D4C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D4C64(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[1])
    {

      return sub_2391D4DF4(a1, a2, a3, a4);
    }

    else
    {
      v9 = *(a2 + 8);
      v11 = *a2;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *a4;
      if (v14 == 1)
      {
        v15 = *(a4 + 4);
      }

      return sub_2391D4D28(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391D4D28(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D4E7C(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D4E7C(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D4DF4(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D4F78(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D4E7C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2391D4F04(v8, 2uLL, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

unint64_t sub_2391D4F04(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 4)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_2391D4F78(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D5044(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D5044(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D5044(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v9 = *a3;
  if (v9 == 4)
  {
    v6 = 0x5C00000000;
    LODWORD(v5) = 1415;
    return v6 | v5;
  }

  v5 = sub_2393C8140(v8, 2uLL, v9);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D515C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACD58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D518C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D5224(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D52E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACDD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5314(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D5328(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D53E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5418(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D5430(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D54F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5520(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D5534(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D5580(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BACFD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAD058;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAD0D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D575C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D5710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D575C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D4DF4(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D4DF4(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BACF58;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D5A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391D5ADC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACF58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D5B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D5BA4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BACFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D5C64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BACFD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5C94(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D5CA8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D5D68(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5D98(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D5DB0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD0B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D5E70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD0D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D5EA0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D5EB4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D5F00(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAD1D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAD258;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAD2D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D60DC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D6090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D60DC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C815C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C815C(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAD158;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D63A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391D645C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D648C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D6524(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD1B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D65E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD1D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D6614(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D6628(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D66E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D6718(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D6730(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD2B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D67F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD2D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D6820(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D6834(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D6880(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAD3D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAD458;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAD4D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D6A5C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D6A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D6A5C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D6D68(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D6D68(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAD358;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D6D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D6D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 4))
    {

      return sub_2391D6EF8(a1, a2, a3, a4);
    }

    else
    {
      v9 = *(a2 + 8);
      v11 = *a2;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *a4;
      if (v14 == 1)
      {
        v15 = *(a4 + 4);
      }

      return sub_2391D6E2C(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391D6E2C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D6F80(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D6F80(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D6EF8(uint64_t a1, uint64_t *a2, unsigned int *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D7008(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D6F80(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238F16CC4(v8, 2uLL, a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

unint64_t sub_2391D7008(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D70D4(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D70D4(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D70D4(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C81D4(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D71D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D7200(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D7298(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D7358(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD3D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D7388(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D739C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D745C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD458;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D748C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D74A4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD4B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D7564(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD4D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D7594(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D75A8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D75F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAD5D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAD658;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAD6D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D77D0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D7784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D77D0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391C8D5C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391C8D5C(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAD558;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D7A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391D7B50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D7B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D7C18(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD5B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D7CD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD5D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D7D08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D7D1C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D7DDC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D7E0C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D7E24(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD6B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D7EE4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD6D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D7F14(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D7F28(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D7F74(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAD7D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAD858;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAD8D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D8150(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D8104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D8150(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D845C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D845C(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAD758;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D841C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D845C(uint64_t a1, uint64_t *a2, unint64_t *a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_2391D84E4(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391D84E4(uint64_t a1, unsigned __int16 *a2, unint64_t *a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_2391D85B0(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_2391D85B0(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_2391D85B0(uint64_t a1, unsigned __int16 *a2, unint64_t *a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_2393C8284(v8, 2uLL, *a3);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_2391D86AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD758;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D86DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D8774(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD7B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D8834(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD7D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D8864(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D8878(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD838))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D8938(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D8968(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D8980(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD8B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D8A40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD8D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D8A70(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D8A84(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD938))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D8AD0(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAD9D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BADA58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BADAD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D8CAC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
  sub_238EF66BC(v25);
  sub_238EF663C(v26);
  sub_238EF65BC(v27);
  if (v23[0] == 1)
  {
    (*(*v24 + 32))(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2391D8C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D8CAC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_2391D6EF8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D6EF8(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAD958;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_2391D8F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391D902C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D905C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_2391D90F4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAD9B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D91B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAD9D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D91E4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D91F8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADA38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}