unint64_t sub_2391ED87C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1A00;
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

void sub_2391EDB48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EDBFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EDC2C(uint64_t a1)
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

uint64_t sub_2391EDCC4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EDD84(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EDDB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EDDC8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EDE88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1B00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EDEB8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EDED0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EDF90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1B80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EDFC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EDFD4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EE020(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1C80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1D00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1D80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EE1FC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EE1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EE1FC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2391EE508(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391EE508(v30, &v32, a5, a10);
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
          v32 = &unk_284BB1C00;
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

void sub_2391EE4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391EE508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 16))
    {

      return sub_2391EE698(a1, a2, a3, a4);
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

      return sub_2391EE5CC(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391EE5CC(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391EE720(a1, a2, a3);
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

    v10 = sub_2391EE720(a1, a2, a3);
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

unint64_t sub_2391EE698(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
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

    return sub_2391EE7A8(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391EE720(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F2ADF0(v8, 2uLL, a3);
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

unint64_t sub_2391EE7A8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391EE874(a1, a2, a3);
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

    v10 = sub_2391EE874(a1, a2, a3);
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

unint64_t sub_2391EE874(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_2393C8364(v8, 2uLL, *a3, *(a3 + 8));
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

__n128 sub_2391EE970(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1C00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EE9A0(uint64_t a1)
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

uint64_t sub_2391EEA38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EEAF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EEB28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EEB3C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1CE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EEBFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EEC2C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EEC44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1D60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EED04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EED34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EED48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EED94(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB1E80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB1F00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB1F80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EEF70(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EEF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EEF70(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB1E00;
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

void sub_2391EF23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391EF2F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391EF320(uint64_t a1)
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

uint64_t sub_2391EF3B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EF478(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1E80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EF4A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EF4BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EF57C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1F00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EF5AC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391EF5C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1F60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391EF684(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB1F80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391EF6B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391EF6C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB1FE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391EF714(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2080;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2100;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2180;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391EF8F0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391EF8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391EF8F0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2391EFBFC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391EFBFC(v30, &v32, a5, a10);
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
          v32 = &unk_284BB2000;
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

void sub_2391EFBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391EFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 32))
    {

      return sub_2391EFD8C(a1, a2, a3, a4);
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

      return sub_2391EFCC0(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391EFCC0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391EFE14(a1, a2, a3);
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

    v10 = sub_2391EFE14(a1, a2, a3);
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

unint64_t sub_2391EFD8C(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
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

    return sub_2391EFEC4(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391EFE14(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_2391EFE9C(v8, 2uLL, a3);
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

unint64_t sub_2391EFE9C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 32))
  {
    return sub_238F0106C(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_2391EFEC4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391EFF90(a1, a2, a3);
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

    v10 = sub_2391EFF90(a1, a2, a3);
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

unint64_t sub_2391EFF90(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F0106C(a3, v8, 2uLL);
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

__n128 sub_2391F0090(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2000;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F00C0(uint64_t a1)
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

uint64_t sub_2391F0158(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F0218(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F0248(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F025C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB20E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F031C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F034C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F0364(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F0424(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F0454(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F0468(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB21E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F04B4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2280;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2300;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2380;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F0690(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F0644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F0690(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2200;
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

void sub_2391F095C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F0A10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F0A40(uint64_t a1)
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

uint64_t sub_2391F0AD8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F0B98(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2280;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F0BC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F0BDC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB22E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F0C9C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2300;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F0CCC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F0CE4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F0DA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F0DD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F0DE8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB23E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F0E34(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2480;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2500;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2580;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F1010(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F1010(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F131C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F131C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB2400;
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

void sub_2391F12DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F131C(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, char *a4)
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

    return sub_2391F13A4(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391F13A4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
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
  v10 = sub_2391F1470(a1, a2, a3);
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

    v10 = sub_2391F1470(a1, a2, a3);
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

unint64_t sub_2391F1470(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
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

  v5 = sub_238F36444(a3, v8, 2uLL);
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

__n128 sub_2391F1570(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F15A0(uint64_t a1)
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

uint64_t sub_2391F1638(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F16F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2480;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F1728(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F173C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB24E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F17FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2500;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F182C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F1844(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F1904(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F1934(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F1948(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB25E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F1994(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2680;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2700;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2780;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F1B70(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F1B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F1B70(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2600;
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

void sub_2391F1E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F1EF0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F1F20(uint64_t a1)
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

uint64_t sub_2391F1FB8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F2078(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2680;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F20A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F20BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB26E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F217C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F21AC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F21C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F2284(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F22B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F22C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB27E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F2314(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2880;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2900;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2980;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F24F0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F24A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F24F0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2800;
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

void sub_2391F27BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F2870(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F28A0(uint64_t a1)
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

uint64_t sub_2391F2938(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F29F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2880;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F2A28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F2A3C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB28E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F2AFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F2B2C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F2B44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F2C04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2980;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F2C34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F2C48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB29E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F2C94(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2A80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2B00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2B80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F2E70(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F2E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F2E70(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2A00;
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

void sub_2391F313C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F31F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F3220(uint64_t a1)
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

uint64_t sub_2391F32B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F3378(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F33A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F33BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F347C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2B00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F34AC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F34C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F3584(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2B80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F35B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F35C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F3614(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2C80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2D00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2D80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F37F0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F37A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F37F0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2C00;
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

void sub_2391F3ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F3B70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2C00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F3BA0(uint64_t a1)
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

uint64_t sub_2391F3C38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F3CF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F3D28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F3D3C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2CE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F3DFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F3E2C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F3E44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2D60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F3F04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F3F34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F3F48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F3F94(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB2E80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB2F00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB2F80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F4170(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F4124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F4170(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB2E00;
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

void sub_2391F443C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F44F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F4520(uint64_t a1)
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

uint64_t sub_2391F45B8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F4678(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2E80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F46A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F46BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F477C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2F00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F47AC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F47C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2F60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F4884(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB2F80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F48B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F48C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB2FE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F4914(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3080;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3100;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3180;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F4AF0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F4AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F4AF0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB3000;
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

void sub_2391F4DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F4E70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3000;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F4EA0(uint64_t a1)
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

uint64_t sub_2391F4F38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F4FF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F5028(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F503C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB30E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F50FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F512C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F5144(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F5204(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F5234(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F5248(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB31E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F5294(uint64_t a1, int *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3280;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3300;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3380;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F5470(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F5424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F5470(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F577C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F577C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3200;
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

void sub_2391F573C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F577C(uint64_t a1, uint64_t *a2, int *a3, char *a4)
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

    return sub_2391F5804(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391F5804(uint64_t a1, unsigned __int16 *a2, int *a3)
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
  v10 = sub_2391F58D0(a1, a2, a3);
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

    v10 = sub_2391F58D0(a1, a2, a3);
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

unint64_t sub_2391F58D0(uint64_t a1, unsigned __int16 *a2, int *a3)
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

__n128 sub_2391F59CC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F59FC(uint64_t a1)
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

uint64_t sub_2391F5A94(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F5B54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3280;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F5B84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F5B98(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB32E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F5C58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3300;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F5C88(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F5CA0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F5D60(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F5D90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F5DA4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB33E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F5DF0(uint64_t a1, float *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3480;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3500;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3580;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F5FCC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F5F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F5FCC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, float *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F62D8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F62D8(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3400;
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

void sub_2391F6298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F62D8(uint64_t a1, uint64_t *a2, float *a3, char *a4)
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

    return sub_2391F6360(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391F6360(uint64_t a1, unsigned __int16 *a2, float *a3)
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
  v10 = sub_2391F642C(a1, a2, a3);
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

    v10 = sub_2391F642C(a1, a2, a3);
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

unint64_t sub_2391F642C(uint64_t a1, unsigned __int16 *a2, float *a3)
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

  v5 = sub_2393C8344(v8, 2uLL, *a3);
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

__n128 sub_2391F6528(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F6558(uint64_t a1)
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

uint64_t sub_2391F65F0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F66B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3480;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F66E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F66F4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB34E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F67B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3500;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F67E4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F67FC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F68BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F68EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F6900(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB35E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F694C(uint64_t a1, double *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3680;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3700;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3780;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F6B28(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F6ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F6B28(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, double *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F6E34(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F6E34(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3600;
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

void sub_2391F6DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F6E34(uint64_t a1, uint64_t *a2, double *a3, char *a4)
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

    return sub_2391F6EBC(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391F6EBC(uint64_t a1, unsigned __int16 *a2, double *a3)
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
  v10 = sub_2391F6F88(a1, a2, a3);
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

    v10 = sub_2391F6F88(a1, a2, a3);
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

unint64_t sub_2391F6F88(uint64_t a1, unsigned __int16 *a2, double *a3)
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

  v5 = sub_2393C8354(v8, 2uLL, *a3);
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

__n128 sub_2391F7084(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F70B4(uint64_t a1)
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

uint64_t sub_2391F714C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F720C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3680;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F723C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F7250(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB36E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F7310(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F7340(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F7358(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F7418(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F7448(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F745C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB37E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F74A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3880;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3900;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3980;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F7684(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F7638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F7684(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391EE698(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391EE698(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3800;
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

void sub_2391F7950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391F7A04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F7A34(uint64_t a1)
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

uint64_t sub_2391F7ACC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F7B8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3880;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F7BBC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F7BD0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB38E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F7C90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F7CC0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F7CD8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F7D98(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3980;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F7DC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F7DDC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB39E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F7E28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3A80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3B00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3B80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F8004(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F7FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F8004(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F8310(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F8310(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3A00;
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

void sub_2391F82D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F8310(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
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
    v6 = sub_2391F8470(a1, &v16, a3, &v14, &v15);
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
      if (*(a3 + 8) > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_2391F8558(a3, v10);
          v6 = sub_2391C8DE4(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (*(a3 + 8) <= v9)
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

unint64_t sub_2391F8470(uint64_t a1, unsigned __int16 *a2, unsigned __int8 **a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v22);
    *a5 = 0;
    v11 = a3[1];
    if (v11)
    {
      for (i = *a3; ; ++i)
      {
        v13 = v10[2];
        v14 = v13[3];
        v16 = *v13;
        v15 = v13[1];
        v24 = v13[2];
        v25 = v14;
        v22 = v16;
        v23 = v15;
        result = sub_2393C8140(v13, 0x100uLL, *i);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        if (!--v11)
        {
          return sub_2394D2A18(a1);
        }
      }

      v18 = v10[2];
      v19 = v22;
      v20 = v23;
      v21 = v25;
      v18[2] = v24;
      v18[3] = v21;
      *v18 = v19;
      v18[1] = v20;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2391F8558(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + a2;
}

__n128 sub_2391F85F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F8624(uint64_t a1)
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

uint64_t sub_2391F86BC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F877C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F87AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F87C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F8880(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3B00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F88B0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F88C8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F8988(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3B80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F89B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F89CC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391F8A18(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3C80;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3D00;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3D80;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F8BF4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F8BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F8BF4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F8F00(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F8F00(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3C00;
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

void sub_2391F8EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F8F00(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
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
    v6 = sub_2391F9060(a1, &v16, a3, &v14, &v15);
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
          v6 = sub_2391EE7A8(a1, &v16, v11);
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

unint64_t sub_2391F9060(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
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
      v13 = v12 + 16 * v11;
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
        result = sub_2393C8364(v14, 0x100uLL, *v12, *(v12 + 8));
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
        if (v12 == v13)
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

__n128 sub_2391F91C0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3C00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391F91F0(uint64_t a1)
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

uint64_t sub_2391F9288(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F9348(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F9378(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F938C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3CE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F944C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F947C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391F9494(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3D60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391F9554(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391F9584(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391F9598(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391F95E4(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB3E00;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_2391F9690(void *a1)
{
  *a1 = &unk_284BB3E00;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C80A8B86D25);
  }

  return a1;
}

void sub_2391F96EC(void *a1)
{
  *a1 = &unk_284BB3E00;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C80A8B86D25);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391F9768(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB3EB8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB3F38;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB3FB8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391F9944(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391F98F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391F9944(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391F9C50(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391F9C50(v30, &v32, a5, a10);
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
          v32 = &unk_284BB3E38;
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

void sub_2391F9C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391F9C50(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
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
    v6 = sub_2391F9DB0(a1, &v16, a3, &v14, &v15);
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
          v6 = sub_2391F9EA0(a1, &v16, v11);
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

unint64_t sub_2391F9DB0(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
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
        result = sub_238F32588(v12, v14, 0x100uLL);
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

unint64_t sub_2391F9EA0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391F9F6C(a1, a2, a3);
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

    v10 = sub_2391F9F6C(a1, a2, a3);
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

unint64_t sub_2391F9F6C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F32588(a3, v8, 2uLL);
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

__n128 sub_2391FA06C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FA09C(uint64_t a1)
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

uint64_t sub_2391FA134(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FA1F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FA224(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FA238(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FA2F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FA328(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FA340(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB3F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FA400(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB3FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FA430(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FA444(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FA490(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB40B8;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4138;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB41B8;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FA66C(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FA620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FA66C(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB4038;
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

void sub_2391FA938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391FA9EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FAA1C(uint64_t a1)
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

uint64_t sub_2391FAAB4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FAB74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB40B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FABA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FABB8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FAC78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FACA8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FACC0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FAD80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB41B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FADB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FADC4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391FAE10(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB4238;
  is_mul_ok(a2, 0x190uLL);
  operator new[]();
}

void *sub_2391FAEDC(void *a1)
{
  *a1 = &unk_284BB4238;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x10D2C808E6421E2);
  }

  return a1;
}

void sub_2391FAF38(void *a1)
{
  *a1 = &unk_284BB4238;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x10D2C808E6421E2);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391FAFB4(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB42F0;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4370;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB43F0;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FB190(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FB144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FB190(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391FB49C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391FB49C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB4270;
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

void sub_2391FB45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391FB49C(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
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
    v6 = sub_2391FB5FC(a1, &v16, a3, &v14, &v15);
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
          v11 = sub_2391FB7B8(a3, v10);
          v6 = sub_2391FB6EC(a1, &v16, v11);
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

unint64_t sub_2391FB5FC(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _BYTE *a4, _WORD *a5)
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
      v13 = 400 * v11;
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
        result = sub_238F30FA8(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 400;
        v13 -= 400;
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

unint64_t sub_2391FB6EC(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391FB7E4(a1, a2, a3);
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

    v10 = sub_2391FB7E4(a1, a2, a3);
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

uint64_t sub_2391FB7B8(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 400 * a2;
}

unint64_t sub_2391FB7E4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F30FA8(a3, v8, 2uLL);
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

__n128 sub_2391FB8E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FB914(uint64_t a1)
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

uint64_t sub_2391FB9AC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB42D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FBA6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB42F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FBA9C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FBAB0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FBB70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4370;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FBBA0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FBBB8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB43D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FBC78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB43F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FBCA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FBCBC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FBD08(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB44F0;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4570;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB45F0;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FBEE4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FBE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FBEE4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB4470;
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

void sub_2391FC1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391FC264(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4470;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FC294(uint64_t a1)
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

uint64_t sub_2391FC32C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB44D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FC3EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB44F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FC41C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FC430(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FC4F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4570;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FC520(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FC538(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB45D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FC5F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB45F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FC628(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FC63C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FC688(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB46F0;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4770;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB47F0;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FC864(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FC818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FC864(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391FCB70(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391FCB70(v30, &v32, a5, a10);
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
          v32 = &unk_284BB4670;
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

void sub_2391FCB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391FCB70(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, char *a4)
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

    return sub_2391FCBF8(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391FCBF8(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391FCCC4(a1, a2, a3);
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

    v10 = sub_2391FCCC4(a1, a2, a3);
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

unint64_t sub_2391FCCC4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F31C50(a3, v8, 2uLL);
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

__n128 sub_2391FCDC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FCDF4(uint64_t a1)
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

uint64_t sub_2391FCE8C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB46D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FCF4C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB46F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FCF7C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FCF90(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FD050(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FD080(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FD098(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB47D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FD158(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB47F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FD188(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FD19C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2391FD1E8(void *a1, unint64_t a2)
{
  *a1 = &unk_284BB4870;
  is_mul_ok(a2, 0x70uLL);
  operator new[]();
}

void *sub_2391FD2AC(void *a1)
{
  *a1 = &unk_284BB4870;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C809509A43ELL);
  }

  return a1;
}

void sub_2391FD308(void *a1)
{
  *a1 = &unk_284BB4870;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C809509A43ELL);
  }

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2391FD384(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB4928;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB49A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB4A28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FD560(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FD514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FD560(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391FD86C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391FD86C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB48A8;
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

void sub_2391FD82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391FD86C(uint64_t a1, uint64_t *a2, void *a3, char *a4)
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
    v6 = sub_2391FD9CC(a1, &v16, a3, &v14, &v15);
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
          v11 = sub_2391FDB88(a3, v10);
          v6 = sub_2391FDABC(a1, &v16, v11);
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

unint64_t sub_2391FD9CC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
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
      v13 = 112 * v11;
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
        result = sub_238F31F1C(v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        v12 += 112;
        v13 -= 112;
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

unint64_t sub_2391FDABC(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391FDBB4(a1, a2, a3);
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

    v10 = sub_2391FDBB4(a1, a2, a3);
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

uint64_t sub_2391FDB88(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C650();
  }

  return *a1 + 112 * a2;
}

unint64_t sub_2391FDBB4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F31F1C(a3, v8, 2uLL);
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

__n128 sub_2391FDCB4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB48A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FDCE4(uint64_t a1)
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

uint64_t sub_2391FDD7C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4908))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FDE3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FDE6C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FDE80(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4988))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FDF40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB49A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FDF70(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FDF88(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4A08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FE048(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4A28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FE078(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FE08C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4A88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FE0D8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB4B28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4BA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB4C28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FE2B4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FE268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FE2B4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
          v32 = &unk_284BB4AA8;
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

void sub_2391FE580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_2391FE634(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FE664(uint64_t a1)
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

uint64_t sub_2391FE6FC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4B08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FE7BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FE7EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FE800(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4B88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FE8C0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FE8F0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FE908(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4C08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FE9C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4C28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FE9F8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FEA0C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4C88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FEA58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB4D28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4DA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB4E28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FEC34(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FEBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FEC34(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
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
        v24 = sub_2391FEF40(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391FEF40(v30, &v32, a5, a10);
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
          v32 = &unk_284BB4CA8;
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

void sub_2391FEF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391FEF40(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
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

    return sub_2391FEFC8(a1, &v9, a3);
  }

  return result;
}

unint64_t sub_2391FEFC8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2391FF094(a1, a2, a3);
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

    v10 = sub_2391FF094(a1, a2, a3);
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

unint64_t sub_2391FF094(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F362F4(a3, v8, 2uLL);
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

__n128 sub_2391FF194(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4CA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FF1C4(uint64_t a1)
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

uint64_t sub_2391FF25C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4D08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FF31C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FF34C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FF360(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FF420(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FF450(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2391FF468(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4E08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FF528(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4E28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FF558(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FF56C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4E88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2391FF5B8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB4F28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB4FA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5028;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2391FF794(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2391FF748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2391FF794(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2391FFAA0(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2391FFAA0(v30, &v32, a5, a10);
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
          v32 = &unk_284BB4EA8;
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

void sub_2391FFA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2391FFAA0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
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

      return sub_2391FFB64(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2391FFB64(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_2391FFC30(a1, a2, a3);
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

    v10 = sub_2391FFC30(a1, a2, a3);
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

unint64_t sub_2391FFC30(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_2391FFCB8(v8, 2uLL, a3);
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

unint64_t sub_2391FFCB8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[1])
  {
    return sub_2393C8140(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_2391FFD40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4EA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2391FFD70(uint64_t a1)
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

uint64_t sub_2391FFE08(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4F08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FFEC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4F28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FFEF8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2391FFF0C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB4F88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2391FFFCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB4FA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2391FFFFC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239200014(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5008))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392000D4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5028;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239200104(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239200118(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5088))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239200164(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5128;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB51A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5228;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239200340(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2392002F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239200340(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_23920064C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_23920064C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB50A8;
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

void sub_23920060C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_23920064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      return sub_239200710(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239200710(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
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
  v10 = sub_2392007DC(a1, a2, a3);
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

    v10 = sub_2392007DC(a1, a2, a3);
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

unint64_t sub_2392007DC(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
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

  v5 = sub_239200864(v8, 2uLL, a3);
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

unint64_t sub_239200864(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  if (a3[1])
  {
    return sub_2393C818C(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_2392008EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB50A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_23920091C(uint64_t a1)
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

uint64_t sub_2392009B4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5108))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239200A74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239200AA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239200AB8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5188))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239200B78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB51A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239200BA8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239200BC0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5208))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}