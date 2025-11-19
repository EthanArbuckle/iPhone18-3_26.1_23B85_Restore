__n128 sub_2391D92B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADA58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D92E8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D9300(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADAB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D93C0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADAD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D93F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D9404(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADB38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D9450(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BADBD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BADC58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BADCD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391D962C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391D95E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391D962C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2391D9938(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391D9938(v30, &v32, a5, a10);
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
          v32 = &unk_284BADB58;
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

void sub_2391D98F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391D9938(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[1])
    {

      return sub_2391CE918(a1, a2, a3, a4);
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

      return sub_2391D99FC(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391D99FC(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391D9AC8(a1, a2, a3);
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

    v10 = sub_2391D9AC8(a1, a2, a3);
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

unint64_t sub_2391D9AC8(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F378FC(v8, 2uLL, a3);
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

__n128 sub_2391D9BC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADB58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391D9BF4(uint64_t a1)
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

uint64_t sub_2391D9C8C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D9D4C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADBD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D9D7C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D9D90(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D9E50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADC58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D9E80(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391D9E98(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADCB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391D9F58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADCD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391D9F88(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391D9F9C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADD38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391D9FE8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BADDD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BADE58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BADED8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DA1C4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DA178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DA1C4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391DA4D0(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391DA4D0(v30, &v32, a5, a10);
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
          v32 = &unk_284BADD58;
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

void sub_2391DA490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391DA4D0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
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

    return sub_2391DA558(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391DA558(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391DA624(a1, a2, a3);
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

    v10 = sub_2391DA624(a1, a2, a3);
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

unint64_t sub_2391DA624(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  if (v9 == 5)
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

__n128 sub_2391DA73C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADD58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DA76C(uint64_t a1)
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

uint64_t sub_2391DA804(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DA8C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADDD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DA8F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DA908(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DA9C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DA9F8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DAA10(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DAAD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DAB00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DAB14(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DAB60(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BADFD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAE058;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAE0D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DAD3C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DACF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DAD3C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BADF58;
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

void sub_2391DB008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DB0BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADF58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DB0EC(uint64_t a1)
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

uint64_t sub_2391DB184(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BADFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DB244(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BADFD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DB274(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DB288(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DB348(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DB378(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DB390(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE0B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DB450(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE0D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DB480(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DB494(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DB4E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAE1D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAE258;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAE2D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DB6BC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DB670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DB6BC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAE158;
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

void sub_2391DB988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DBA3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DBA6C(uint64_t a1)
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

uint64_t sub_2391DBB04(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE1B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DBBC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE1D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DBBF4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DBC08(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DBCC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DBCF8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DBD10(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE2B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DBDD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE2D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DBE00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DBE14(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DBE60(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAE3D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAE458;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAE4D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DC03C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DBFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DC03C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAE358;
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

void sub_2391DC308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DC3BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DC3EC(uint64_t a1)
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

uint64_t sub_2391DC484(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DC544(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE3D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DC574(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DC588(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DC648(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE458;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DC678(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DC690(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE4B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DC750(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE4D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DC780(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DC794(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DC7E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAE5D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAE658;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAE6D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DC9BC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DC970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DC9BC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAE558;
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

void sub_2391DCC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DCD3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DCD6C(uint64_t a1)
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

uint64_t sub_2391DCE04(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE5B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DCEC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE5D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DCEF4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DCF08(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DCFC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DCFF8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DD010(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE6B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DD0D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE6D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DD100(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DD114(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DD160(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAE7D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAE858;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAE8D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DD33C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DD2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DD33C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAE758;
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

void sub_2391DD608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DD6BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE758;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DD6EC(uint64_t a1)
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

uint64_t sub_2391DD784(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE7B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DD844(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE7D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DD874(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DD888(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE838))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DD948(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DD978(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DD990(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE8B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DDA50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE8D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DDA80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DDA94(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE938))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DDAE0(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAE9D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAEA58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAEAD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DDCBC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DDC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DDCBC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391DDFC8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391DDFC8(v30, &v32, a5, a10);
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
          v32 = &unk_284BAE958;
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

void sub_2391DDF88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391DDFC8(uint64_t a1, uint64_t *a2, char *a3, char *a4)
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

    return sub_2391DE050(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391DE050(uint64_t a1, unsigned __int16 *a2, char *a3)
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
  v10 = sub_2391DE11C(a1, a2, a3);
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

    v10 = sub_2391DE11C(a1, a2, a3);
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

unint64_t sub_2391DE11C(uint64_t a1, unsigned __int16 *a2, char *a3)
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

  v5 = sub_2393C827C(v8, 2uLL, *a3);
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

__n128 sub_2391DE218(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DE248(uint64_t a1)
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

uint64_t sub_2391DE2E0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAE9B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DE3A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAE9D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DE3D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DE3E4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEA38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DE4A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEA58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DE4D4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DE4EC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEAB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DE5AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEAD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DE5DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DE5F0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEB38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DE63C(uint64_t a1, __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAEBD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAEC58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAECD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DE818(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DE7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DE818(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, __int16 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391DEB24(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391DEB24(v30, &v32, a5, a10);
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
          v32 = &unk_284BAEB58;
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

void sub_2391DEAE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391DEB24(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4)
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

    return sub_2391DEBAC(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391DEBAC(uint64_t a1, unsigned __int16 *a2, __int16 *a3)
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
  v10 = sub_2391DEC78(a1, a2, a3);
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

    v10 = sub_2391DEC78(a1, a2, a3);
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

unint64_t sub_2391DEC78(uint64_t a1, unsigned __int16 *a2, __int16 *a3)
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

  v5 = sub_2393C827C(v8, 2uLL, *a3);
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

__n128 sub_2391DED74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEB58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DEDA4(uint64_t a1)
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

uint64_t sub_2391DEE3C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DEEFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEBD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DEF2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DEF40(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DF000(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEC58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DF030(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DF048(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAECB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DF108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAECD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DF138(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DF14C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAED38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DF198(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAEDD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAEE58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAEED8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DF374(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DF374(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAED58;
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

void sub_2391DF640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391DF6F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAED58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391DF724(uint64_t a1)
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

uint64_t sub_2391DF7BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DF87C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEDD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DF8AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DF8C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DF980(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DF9B0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391DF9C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391DFA88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391DFAB8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391DFACC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391DFB18(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAEFD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAF058;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAF0D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391DFCF4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391DFCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391DFCF4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E0000(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E0000(v30, &v32, a5, a10);
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
          v32 = &unk_284BAEF58;
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

void sub_2391DFFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E0000(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
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

    return sub_2391E0088(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391E0088(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391E0154(a1, a2, a3);
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

    v10 = sub_2391E0154(a1, a2, a3);
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

unint64_t sub_2391E0154(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  if (v9 == 6)
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

__n128 sub_2391E026C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEF58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E029C(uint64_t a1)
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

uint64_t sub_2391E0334(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAEFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E03F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAEFD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0424(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E0438(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E04F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0528(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E0540(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF0B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E0600(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF0D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0630(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E0644(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E0690(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAF1D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAF258;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAF2D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E086C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E0820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E086C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAF158;
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

void sub_2391E0B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E0BEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E0C1C(uint64_t a1)
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

uint64_t sub_2391E0CB4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF1B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E0D74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF1D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0DA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E0DB8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E0E78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0EA8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E0EC0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF2B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E0F80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF2D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E0FB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E0FC4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E1010(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAF3D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAF458;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAF4D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E11EC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E11A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E11EC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAF358;
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

void sub_2391E14B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E156C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E159C(uint64_t a1)
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

uint64_t sub_2391E1634(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E16F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF3D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E1724(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E1738(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E17F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF458;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E1828(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E1840(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF4B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E1900(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF4D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E1930(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E1944(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E1990(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAF5D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAF658;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAF6D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E1B6C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E1B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E1B6C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAF558;
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

void sub_2391E1E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E1EEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E1F1C(uint64_t a1)
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

uint64_t sub_2391E1FB4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF5B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E2074(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF5D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E20A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E20B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E2178(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E21A8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E21C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF6B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E2280(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF6D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E22B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E22C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E2310(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAF7D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAF858;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAF8D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E24EC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E24A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E24EC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391DA4D0(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391DA4D0(v30, &v32, a5, a10);
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
          v32 = &unk_284BAF758;
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

void sub_2391E27B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E286C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF758;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E289C(uint64_t a1)
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

uint64_t sub_2391E2934(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF7B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E29F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF7D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E2A24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E2A38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF838))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E2AF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E2B28(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E2B40(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF8B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E2C00(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF8D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E2C30(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E2C44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF938))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E2C90(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAF9D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAFA58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAFAD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E2E6C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E2E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E2E6C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAF958;
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

void sub_2391E3138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E31EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E321C(uint64_t a1)
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

uint64_t sub_2391E32B4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAF9B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3374(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAF9D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E33A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E33B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFA38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3478(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFA58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E34A8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E34C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFAB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3580(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFAD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E35B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E35C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFB38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E3610(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAFBD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAFC58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAFCD8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E37EC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E37A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E37EC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAFB58;
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

void sub_2391E3AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E3B6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFB58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E3B9C(uint64_t a1)
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

uint64_t sub_2391E3C34(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3CF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFBD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E3D24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E3D38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3DF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFC58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E3E28(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E3E40(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFCB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E3F00(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFCD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E3F30(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E3F44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFD38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E3F90(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAFDD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BAFE58;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BAFED8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E416C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E4120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E416C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BAFD58;
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

void sub_2391E4438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E44EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFD58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E451C(uint64_t a1)
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

uint64_t sub_2391E45B4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E4674(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFDD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E46A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E46B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E4778(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E47A8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E47C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E4880(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E48B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E48C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E4910(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BAFFD8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0058;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB00D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E4AEC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E4AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E4AEC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, _BYTE *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E4DF8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E4DF8(v30, &v32, a5, a10);
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
          v32 = &unk_284BAFF58;
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

void sub_2391E4DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E4DF8(uint64_t a1, uint64_t *a2, _BYTE *a3, char *a4)
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

    return sub_2391E4E80(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391E4E80(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
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
  v10 = sub_2391E4F4C(a1, a2, a3);
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

    v10 = sub_2391E4F4C(a1, a2, a3);
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

unint64_t sub_2391E4F4C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
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

  if (!*a3)
  {
    v6 = 0x5C00000000;
    LODWORD(v5) = 1415;
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

__n128 sub_2391E5060(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFF58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E5090(uint64_t a1)
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

uint64_t sub_2391E5128(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAFFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E51E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAFFD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E5218(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E522C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E52EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E531C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E5334(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB00B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E53F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB00D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E5424(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E5438(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E5484(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB01D8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0258;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB02D8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E5660(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E5614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E5660(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E596C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E596C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB0158;
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

void sub_2391E592C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E596C(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
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

    return sub_2391E59F4(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391E59F4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391E5AC0(a1, a2, a3);
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

    v10 = sub_2391E5AC0(a1, a2, a3);
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

unint64_t sub_2391E5AC0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  if (v9 == 1)
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

__n128 sub_2391E5BD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E5C08(uint64_t a1)
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

uint64_t sub_2391E5CA0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB01B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E5D60(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB01D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E5D90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E5DA4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E5E64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E5E94(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E5EAC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB02B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E5F6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB02D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E5F9C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E5FB0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391E5FFC(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB0358;
  is_mul_ok(a2, 0x50uLL);
  operator new[]();
}

void *sub_2391E60A8(void *a1)
{
  *a1 = &unk_284BB0358;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1052C801C122B2BLL);
  }

  return a1;
}

void sub_2391E6104(void *a1)
{
  *a1 = &unk_284BB0358;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1052C801C122B2BLL);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391E6180(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0410;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0490;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0510;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E635C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E6310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E635C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E6668(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E6668(v30, &v32, a5, a10);
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
          v32 = &unk_284BB0390;
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

void sub_2391E6628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E6668(uint64_t a1, uint64_t *a2, void *a3, char *a4)
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
    v6 = sub_2391E67C8(a1, &v16, a3, &v14, &v15);
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
          v11 = sub_2391E6984(a3, v10);
          v6 = sub_2391E68B8(a1, &v16, v11);
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

unint64_t sub_2391E67C8(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
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
      v13 = 80 * v11;
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
        result = sub_238F2B37C(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 80;
        v13 -= 80;
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

unint64_t sub_2391E68B8(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391E69B0(a1, a2, a3);
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

    v10 = sub_2391E69B0(a1, a2, a3);
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

uint64_t sub_2391E6984(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 80 * a2;
}

unint64_t sub_2391E69B0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F2B37C(a3, v8, 2uLL);
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

__n128 sub_2391E6AB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0390;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E6AE0(uint64_t a1)
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

uint64_t sub_2391E6B78(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB03F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E6C38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0410;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E6C68(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E6C7C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0470))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E6D3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0490;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E6D6C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E6D84(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB04F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E6E44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0510;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E6E74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E6E88(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0570))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391E6ED4(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB0590;
  is_mul_ok(a2, 0x68uLL);
  operator new[]();
}

void *sub_2391E6F7C(void *a1)
{
  *a1 = &unk_284BB0590;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1072C802B5300AALL);
  }

  return a1;
}

void sub_2391E6FD8(void *a1)
{
  *a1 = &unk_284BB0590;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1072C802B5300AALL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_2391E7054(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB05C8;
  is_mul_ok(a2, 0x30uLL);
  operator new[]();
}

void *sub_2391E70FC(void *a1)
{
  *a1 = &unk_284BB05C8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C80CE6EFACDLL);
  }

  return a1;
}

void sub_2391E7158(void *a1)
{
  *a1 = &unk_284BB05C8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C80CE6EFACDLL);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391E71D4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0680;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0700;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0780;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E73B0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E7364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E73B0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E76BC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E76BC(v30, &v32, a5, a10);
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
          v32 = &unk_284BB0600;
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

void sub_2391E767C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E76BC(uint64_t a1, uint64_t *a2, void *a3, char *a4)
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
    v6 = sub_2391E781C(a1, &v16, a3, &v14, &v15);
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
          v11 = sub_2391E79D8(a3, v10);
          v6 = sub_2391E790C(a1, &v16, v11);
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

unint64_t sub_2391E781C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
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
      v13 = 104 * v11;
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
        result = sub_238F2B0B4(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 104;
        v13 -= 104;
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

unint64_t sub_2391E790C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391E7A04(a1, a2, a3);
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

    v10 = sub_2391E7A04(a1, a2, a3);
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

uint64_t sub_2391E79D8(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 104 * a2;
}

unint64_t sub_2391E7A04(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F2B0B4(a3, v8, 2uLL);
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

__n128 sub_2391E7B04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E7B34(uint64_t a1)
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

uint64_t sub_2391E7BCC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E7C8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0680;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E7CBC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E7CD0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB06E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E7D90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E7DC0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E7DD8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E7E98(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E7EC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E7EDC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB07E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E7F28(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0880;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0900;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0980;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E8104(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E80B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E8104(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E8410(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E8410(v30, &v32, a5, a10);
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
          v32 = &unk_284BB0800;
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

void sub_2391E83D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391E8410(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
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

    return sub_2391E8498(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391E8498(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391E8564(a1, a2, a3);
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

    v10 = sub_2391E8564(a1, a2, a3);
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

unint64_t sub_2391E8564(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  if (v9 == 7)
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

__n128 sub_2391E867C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E86AC(uint64_t a1)
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

uint64_t sub_2391E8744(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E8804(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0880;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E8834(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E8848(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB08E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E8908(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E8938(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E8950(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E8A10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0980;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E8A40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E8A54(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB09E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E8AA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0A80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0B00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0B80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E8C7C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E8C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E8C7C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E0000(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E0000(v30, &v32, a5, a10);
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
          v32 = &unk_284BB0A00;
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

void sub_2391E8F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E8FFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E902C(uint64_t a1)
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

uint64_t sub_2391E90C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9184(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E91B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E91C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9288(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0B00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E92B8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E92D0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9390(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0B80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E93C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E93D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E9420(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0C80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0D00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0D80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E95FC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E95B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E95FC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB0C00;
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

void sub_2391E98C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391E997C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0C00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391E99AC(uint64_t a1)
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

uint64_t sub_2391E9A44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9B04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E9B34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E9B48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0CE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9C08(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E9C38(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391E9C50(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0D60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391E9D10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391E9D40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391E9D54(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391E9DA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB0E80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB0F00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB0F80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391E9F7C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391E9F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391E9F7C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB0E00;
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

void sub_2391EA248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EA2FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EA32C(uint64_t a1)
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

uint64_t sub_2391EA3C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EA484(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0E80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EA4B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EA4C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EA588(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0F00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EA5B8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EA5D0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0F60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EA690(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB0F80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EA6C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EA6D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB0FE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EA720(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1080;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1100;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1180;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EA8FC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EA8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EA8FC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1000;
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

void sub_2391EABC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EAC7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1000;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EACAC(uint64_t a1)
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

uint64_t sub_2391EAD44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EAE04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EAE34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EAE48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB10E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EAF08(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EAF38(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EAF50(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EB010(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EB040(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EB054(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB11E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EB0A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1280;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1300;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1380;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EB27C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EB230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EB27C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1200;
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

void sub_2391EB548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EB5FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EB62C(uint64_t a1)
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

uint64_t sub_2391EB6C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EB784(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1280;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EB7B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EB7C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB12E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EB888(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1300;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EB8B8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EB8D0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EB990(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EB9C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EB9D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB13E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EBA20(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1480;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1500;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1580;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EBBFC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EBBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EBBFC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391E0000(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391E0000(v30, &v32, a5, a10);
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
          v32 = &unk_284BB1400;
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

void sub_2391EBEC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EBF7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EBFAC(uint64_t a1)
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

uint64_t sub_2391EC044(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EC104(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1480;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EC134(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EC148(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB14E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EC208(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1500;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EC238(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EC250(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EC310(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EC340(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EC354(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB15E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EC3A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1680;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1700;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1780;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EC57C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EC530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EC57C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1600;
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

void sub_2391EC848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EC8FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EC92C(uint64_t a1)
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

uint64_t sub_2391EC9C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ECA84(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1680;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ECAB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391ECAC8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB16E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ECB88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ECBB8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391ECBD0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ECC90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ECCC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391ECCD4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB17E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391ECD20(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1880;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1900;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1980;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391ECEFC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391ECEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391ECEFC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1800;
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

void sub_2391ED1C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391ED27C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391ED2AC(uint64_t a1)
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

uint64_t sub_2391ED344(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ED404(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1880;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ED434(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391ED448(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB18E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ED508(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ED538(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391ED550(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391ED610(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1980;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391ED640(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391ED654(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB19E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391ED6A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1A80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1B00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1B80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391ED87C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391ED830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}