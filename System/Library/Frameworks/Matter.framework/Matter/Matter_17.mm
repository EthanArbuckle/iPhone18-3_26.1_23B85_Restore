__n128 sub_239200C80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239200CB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239200CC4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5288))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239200D10(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5328;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB53A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5428;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239200EEC(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239200EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239200EEC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2392011F8(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2392011F8(v30, &v32, a5, a10);
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
          v32 = &unk_284BB52A8;
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

void sub_2392011B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2392011F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      return sub_2392012BC(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2392012BC(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239201388(a1, a2, a3);
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

    v10 = sub_239201388(a1, a2, a3);
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

unint64_t sub_239201388(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F39514(v8, 2uLL, a3);
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

__n128 sub_239201484(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB52A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2392014B4(uint64_t a1)
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

uint64_t sub_23920154C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5308))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920160C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5328;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920163C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239201650(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5388))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239201710(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB53A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239201740(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239201758(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5408))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239201818(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5428;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239201848(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920185C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5488))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2392018A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5528;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB55A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5628;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239201A84(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239201A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239201A84(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239201D90(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239201D90(v30, &v32, a5, a10);
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
          v32 = &unk_284BB54A8;
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

void sub_239201D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239201D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 8))
    {

      return sub_2391D2398(a1, a2, a3, a4);
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

      return sub_239201E54(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239201E54(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239201F20(a1, a2, a3);
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

    v10 = sub_239201F20(a1, a2, a3);
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

unint64_t sub_239201F20(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_239201FA8(v8, 2uLL, a3);
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

unint64_t sub_239201FA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    return sub_2393C8154(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_239202030(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB54A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239202060(uint64_t a1)
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

uint64_t sub_2392020F8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5508))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392021B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5528;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392021E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392021FC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392022BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB55A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392022EC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239202304(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392023C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392023F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239202408(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5688))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239202454(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5728;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB57A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5828;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239202630(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2392025E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239202630(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_23920293C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_23920293C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB56A8;
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

void sub_2392028FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_23920293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 8))
    {

      return sub_2391D2398(a1, a2, a3, a4);
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

      return sub_239202A00(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239202A00(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239202ACC(a1, a2, a3);
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

    v10 = sub_239202ACC(a1, a2, a3);
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

unint64_t sub_239202ACC(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238EFD454(v8, 2uLL, a3);
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

__n128 sub_239202BC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB56A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239202BF8(uint64_t a1)
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

uint64_t sub_239202C90(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5708))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239202D50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239202D80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239202D94(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5788))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239202E54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB57A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239202E84(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239202E9C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5808))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239202F5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5828;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239202F8C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239202FA0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5888))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239202FEC(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5928;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB59A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5A28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2392031C8(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_23920317C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2392031C8(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_2392034D4(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_2392034D4(v30, &v32, a5, a10);
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
          v32 = &unk_284BB58A8;
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

void sub_239203494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2392034D4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[1])
    {

      return sub_2391DDFC8(a1, a2, a3, a4);
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

      return sub_239203598(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239203598(uint64_t a1, unsigned __int16 *a2, char *a3)
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
  v10 = sub_239203664(a1, a2, a3);
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

    v10 = sub_239203664(a1, a2, a3);
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

unint64_t sub_239203664(uint64_t a1, unsigned __int16 *a2, char *a3)
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

  v5 = sub_238F38D40(v8, 2uLL, a3);
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

__n128 sub_239203760(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB58A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239203790(uint64_t a1)
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

uint64_t sub_239203828(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5908))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392038E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239203918(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920392C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5988))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392039EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB59A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239203A1C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239203A34(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5A08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239203AF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5A28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239203B24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239203B38(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5A88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239203B84(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5B28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB5BA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5C28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239203D60(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239203D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239203D60(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_23920406C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_23920406C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB5AA8;
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

void sub_23920402C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_23920406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 2))
    {

      return sub_2391DEB24(a1, a2, a3, a4);
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

      return sub_239204130(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239204130(uint64_t a1, unsigned __int16 *a2, __int16 *a3)
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
  v10 = sub_2392041FC(a1, a2, a3);
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

    v10 = sub_2392041FC(a1, a2, a3);
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

unint64_t sub_2392041FC(uint64_t a1, unsigned __int16 *a2, __int16 *a3)
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

  v5 = sub_238F2A5AC(v8, 2uLL, a3);
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

__n128 sub_2392042F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239204328(uint64_t a1)
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

uint64_t sub_2392043C0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5B08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239204480(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392044B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392044C4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5B88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239204584(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392045B4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2392045CC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5C08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920468C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5C28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392046BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392046D0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5C88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23920471C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5D28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB5DA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB5E28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_2392048F8(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2392048AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2392048F8(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239204C04(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239204C04(v30, &v32, a5, a10);
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
          v32 = &unk_284BB5CA8;
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

void sub_239204BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239204C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 4))
    {

      return sub_2391F577C(a1, a2, a3, a4);
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

      return sub_239204CC8(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239204CC8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239204D94(a1, a2, a3);
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

    v10 = sub_239204D94(a1, a2, a3);
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

unint64_t sub_239204D94(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F387DC(v8, 2uLL, a3);
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

__n128 sub_239204E90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5CA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239204EC0(uint64_t a1)
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

uint64_t sub_239204F58(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5D08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239205018(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239205048(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920505C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920511C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920514C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239205164(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5E08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239205224(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5E28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239205254(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239205268(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5E88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2392052B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB5F28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB5FA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6028;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239205490(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239205444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239205490(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_23920579C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_23920579C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB5EA8;
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

void sub_23920575C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_23920579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 8))
    {

      return sub_2391D845C(a1, a2, a3, a4);
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

      return sub_239205860(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239205860(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_23920592C(a1, a2, a3);
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

    v10 = sub_23920592C(a1, a2, a3);
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

unint64_t sub_23920592C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F23B88(v8, 2uLL, a3);
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

__n128 sub_239205A28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5EA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239205A58(uint64_t a1)
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

uint64_t sub_239205AF0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5F08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239205BB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5F28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239205BE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239205BF4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB5F88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239205CB4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB5FA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239205CE4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239205CFC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6008))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239205DBC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6028;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239205DEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239205E00(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6088))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239205E4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6128;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB61A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6228;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239206028(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239205FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239206028(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239206334(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239206334(v30, &v32, a5, a10);
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
          v32 = &unk_284BB60A8;
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

void sub_2392062F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239206334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 4))
    {

      return sub_2391F62D8(a1, a2, a3, a4);
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

      return sub_2392063F8(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_2392063F8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_2392064C4(a1, a2, a3);
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

    v10 = sub_2392064C4(a1, a2, a3);
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

unint64_t sub_2392064C4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_23920654C(v8, 2uLL, a3);
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

unint64_t sub_23920654C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    return sub_2393C8344(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_2392065D4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB60A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239206604(uint64_t a1)
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

uint64_t sub_23920669C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6108))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920675C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920678C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392067A0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6188))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239206860(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB61A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239206890(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_2392068A8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6208))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239206968(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239206998(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392069AC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6288))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2392069F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6328;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB63A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6428;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239206BD4(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239206B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239206BD4(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239206EE0(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239206EE0(v30, &v32, a5, a10);
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
          v32 = &unk_284BB62A8;
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

void sub_239206EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239206EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 8))
    {

      return sub_2391F6E34(a1, a2, a3, a4);
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

      return sub_239206FA4(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239206FA4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239207070(a1, a2, a3);
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

    v10 = sub_239207070(a1, a2, a3);
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

unint64_t sub_239207070(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_2392070F8(v8, 2uLL, a3);
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

unint64_t sub_2392070F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    return sub_2393C8354(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_239207180(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB62A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2392071B0(uint64_t a1)
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

uint64_t sub_239207248(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6308))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239207308(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6328;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239207338(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920734C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6388))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920740C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB63A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920743C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239207454(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6408))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239207514(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6428;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239207544(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239207558(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6488))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2392075A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6528;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB65A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6628;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239207780(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239207734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239207780(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239207A8C(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239207A8C(v30, &v32, a5, a10);
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
          v32 = &unk_284BB64A8;
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

void sub_239207A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239207A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 16))
    {

      return sub_2391CDDBC(a1, a2, a3, a4);
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

      return sub_239207B50(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239207B50(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_239207C1C(a1, a2, a3);
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

    v10 = sub_239207C1C(a1, a2, a3);
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

unint64_t sub_239207C1C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_238F37AF8(v8, 2uLL, a3);
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

__n128 sub_239207D18(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB64A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239207D48(uint64_t a1)
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

uint64_t sub_239207DE0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6508))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239207EA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6528;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239207ED0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239207EE4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239207FA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB65A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239207FD4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239207FEC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392080AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392080DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392080F0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6688))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23920813C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6728;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB67A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6828;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239208318(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2392082CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239208318(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
          v32 = &unk_284BB66A8;
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

void sub_2392085E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_239208698(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB66A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2392086C8(uint64_t a1)
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

uint64_t sub_239208760(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6708))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239208820(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239208850(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239208864(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6788))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239208924(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB67A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239208954(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_23920896C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6808))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239208A2C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6828;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239208A5C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239208A70(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6888))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239208ABC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6928;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB69A8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6A28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239208C98(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_239208C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239208C98(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_239208FA4(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_239208FA4(v30, &v32, a5, a10);
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
          v32 = &unk_284BB68A8;
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

void sub_239208F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_239208FA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (a3[64])
    {

      return sub_2391FCB70(a1, a2, a3, a4);
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

      return sub_239209068(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_239209068(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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
  v10 = sub_239209134(a1, a2, a3);
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

    v10 = sub_239209134(a1, a2, a3);
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

unint64_t sub_239209134(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
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

  v5 = sub_238F390B8(v8, 2uLL, a3);
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

__n128 sub_239209230(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB68A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239209260(uint64_t a1)
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

uint64_t sub_2392092F8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6908))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392093B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392093E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_2392093FC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6988))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392094BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB69A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392094EC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239209504(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6A08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2392095C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6A28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2392095F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239209608(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6A88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239209654(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6B28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB6BA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6C28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_239209830(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_2392097E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239209830(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
          v32 = &unk_284BB6AA8;
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

void sub_239209AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

__n128 sub_239209BB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_239209BE0(uint64_t a1)
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

uint64_t sub_239209C78(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6B08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239209D38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239209D68(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239209D7C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6B88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239209E3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239209E6C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_239209E84(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6C08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_239209F44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6C28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_239209F74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_239209F88(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6C88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239209FD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  sub_238EA903C(a1 + 16, v23);
  v18 = sub_238DE36B8(v23);
  v19 = *(a1 + 56);
  v27[0] = &unk_284BB6D28;
  v27[1] = a3;
  v27[2] = a6;
  v27[3] = v27;
  v26[0] = &unk_284BB6DA8;
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = v26;
  v25[0] = &unk_284BB6E28;
  v25[1] = a3;
  v25[2] = a9;
  v25[3] = v25;
  v20 = sub_23920A1B0(v18, v19, a4, a5, a2, v27, v26, a8, v25, a10, 0);
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

void sub_23920A164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23920A1B0(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, void *a11)
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
        v24 = sub_23920A4BC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_23920A4BC(v30, &v32, a5, a10);
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
          v32 = &unk_284BB6CA8;
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

void sub_23920A47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_23920A4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    if (*(a3 + 32))
    {

      return sub_2391FEF40(a1, a2, a3, a4);
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

      return sub_23920A580(a1, &v9, a3);
    }
  }

  return result;
}

unint64_t sub_23920A580(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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
  v10 = sub_23920A64C(a1, a2, a3);
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

    v10 = sub_23920A64C(a1, a2, a3);
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

unint64_t sub_23920A64C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

  v5 = sub_23920A6D4(v8, 2uLL, a3);
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

unint64_t sub_23920A6D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 32))
  {
    return sub_238F362F4(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

__n128 sub_23920A770(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6CA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_23920A7A0(uint64_t a1)
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

uint64_t sub_23920A838(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6D08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920A8F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920A928(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920A93C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920A9FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920AA2C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    return v3(*(result + 8), *a3, a3[1]);
  }

  return result;
}

uint64_t sub_23920AA44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6E08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23920AB04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BB6E28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23920AB34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t sub_23920AB48(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB6E88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23920ABBC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 > 4)
  {
    return 0;
  }

  v4 = 0;
  if (a3)
  {
    v5 = a3;
    do
    {
      v4 = *(a1 - 1 + v5--) | (v4 << 8);
    }

    while (v5);
  }

  v6 = a2 - v4;
  v7 = v4 >= a2;
  v8 = v4 - a2;
  if (v7)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_23920ABFC()
{
  sub_238F41374(0xFFFF);
  sub_2392CAE64();

  return sub_238F40318();
}

uint64_t sub_23920AC50(unsigned __int16 a1, int a2, int a3)
{
  result = sub_238F40400(a1, a2, a3);
  if (result)
  {
    return (*(result + 15) & 0x12) != 2 && (*(result + 15) & 0x10) == 0;
  }

  return result;
}

void sub_23920B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23920B1E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23920B1F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) controller:*(a1 + 40) valueForKey:@"caseResumptionNodeList" securityLevel:0 sharingType:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) _fetchNodeIndex];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

BOOL sub_23920B288(void *a1)
{
  v1 = a1;
  v2 = sub_2392130E4(v1) && ([v1 unsignedLongLongValue] - 1) < 0xFFFFFFEFFFFFFFFFLL;

  return v2;
}

void sub_23920B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_23920B56C(void *a1)
{
  v2 = *(a1[4] + 8);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) valuesForController:a1[5] securityLevel:0 sharingType:0];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

id sub_23920B654(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"caseResumptionByNodeID/%llx", objc_msgSend(v1, "unsignedLongLongValue")];

  return v2;
}

id sub_23920B73C(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 base64EncodedStringWithOptions:0];
  v3 = [v1 stringWithFormat:@"caseResumptionByResumptionID/%s", objc_msgSend(v2, "UTF8String")];

  return v3;
}

void sub_23920BA04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 8);
    v5 = [v2 resumptionID];
    v6 = sub_23920B73C(v5);
    [v4 controller:v3 removeValueForKey:v6 securityLevel:0 sharingType:0];

    v7 = *(a1 + 40);
    os_unfair_lock_lock(v7 + 12);
    v8 = *(*(a1 + 40) + 32);
    v9 = [*(a1 + 56) nodeID];
    [v8 removeObject:v9];

    os_unfair_lock_unlock(v7 + 12);
  }

  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(a1 + 56);
  v13 = [v12 nodeID];
  v14 = sub_23920B654(v13);
  [v11 controller:v10 storeValue:v12 forKey:v14 securityLevel:0 sharingType:0];

  v15 = *(a1 + 48);
  v16 = *(*(a1 + 40) + 8);
  v17 = *(a1 + 56);
  v18 = [v17 resumptionID];
  v19 = sub_23920B73C(v18);
  [v16 controller:v15 storeValue:v17 forKey:v19 securityLevel:0 sharingType:0];

  v20 = *(a1 + 40);
  os_unfair_lock_lock(v20 + 12);
  v21 = *(*(a1 + 40) + 32);
  v22 = [*(a1 + 56) nodeID];
  [v21 addObject:v22];

  v23 = [*(*(a1 + 40) + 32) copy];
  os_unfair_lock_unlock(v20 + 12);
  [*(*(a1 + 40) + 8) controller:*(a1 + 48) storeValue:v23 forKey:@"caseResumptionNodeList" securityLevel:0 sharingType:0];
}

void sub_23920BD64(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);

  _Unwind_Resume(a1);
}

void sub_23920BE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v11 + 12);

  _Unwind_Resume(a1);
}

void sub_23920C04C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v8 = [*(a1 + 48) resumptionID];
  v4 = sub_23920B73C(v8);
  [v3 controller:v2 removeValueForKey:v4 securityLevel:0 sharingType:0];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  v9 = [*(a1 + 48) nodeID];
  v7 = sub_23920B654(v9);
  [v6 controller:v5 removeValueForKey:v7 securityLevel:0 sharingType:0];
}

void sub_23920C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_23920C398(void *a1)
{
  result = [*(a1[4] + 8) controller:a1[5] storeValue:a1[6] forKey:@"lastLocallyUsedControllerNOC" securityLevel:0 sharingType:0];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_23920C61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_23920C65C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 8) controller:a1[5] valueForKey:@"lastLocallyUsedControllerNOC" securityLevel:0 sharingType:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_23920C920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_23920C96C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 8) controller:a1[5] valueForKey:a1[6] securityLevel:0 sharingType:0];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_23920EC4C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _clearStoredClusterDataForNodeID:*(a1 + 40)];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 12);
  v3 = [*(*(a1 + 32) + 40) count];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 40) count] != v3)
  {
    v4 = [*(*(a1 + 32) + 40) count];
    v5 = *(a1 + 32);
    v6 = v4 ? [v5 _storeNodeIndex:v5[5]] : objc_msgSend(v5, "_deleteNodeIndex");
    if ((v6 & 1) == 0)
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(*(a1 + 32) + 40) count];
        *buf = 134217984;
        v11 = v8;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Store failed in clearStoredAttributesForNodeID for nodeIndex (%lu)", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        [*(*(a1 + 32) + 40) count];
        sub_2393D5320(0, 1);
      }
    }
  }

  os_unfair_lock_unlock(v2 + 12);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23920EEAC(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _fetchClusterIndexForNodeID:a1[5] endpointID:a1[6]];
  v3 = [v2 mutableCopy];
  [v3 removeObject:a1[7]];
  v4 = [v3 count];
  if (v4 != [v2 count] && (objc_msgSend(a1[4], "_storeClusterIndex:forNodeID:endpointID:", v3, a1[5], a1[6]) & 1) == 0)
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [a1[5] unsignedLongLongValue];
      v7 = [a1[6] unsignedShortValue];
      *buf = 134218240;
      *v21 = v6;
      *&v21[8] = 1024;
      *&v21[10] = v7;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "clearStoredClusterDataForNodeID: _storeClusterIndex failed for node 0x%016llX endpoint %u", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v18 = [a1[5] unsignedLongLongValue];
      v19 = [a1[6] unsignedShortValue];
      sub_2393D5320(0, 1);
    }
  }

  v8 = [a1[4] _deleteClusterDataForNodeID:a1[5] endpointID:a1[6] clusterID:{a1[7], v18, v19}];
  v9 = sub_2393D9044(0);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1[6] unsignedShortValue];
      v12 = [a1[7] unsignedLongValue];
      v13 = [a1[5] unsignedLongLongValue];
      *buf = 67109632;
      *v21 = v11;
      *&v21[4] = 2048;
      *&v21[6] = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "clearStoredClusterDataForNodeID: Deleted endpoint %u cluster 0x%08lX for node 0x%016llX successfully", buf, 0x1Cu);
    }

    if (sub_2393D5398(2u))
    {
      [a1[6] unsignedShortValue];
      [a1[7] unsignedLongValue];
      [a1[5] unsignedLongLongValue];
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1[5] unsignedLongLongValue];
      v15 = [a1[6] unsignedShortValue];
      v16 = [a1[7] unsignedLongValue];
      *buf = 134218496;
      *v21 = v14;
      *&v21[8] = 1024;
      *&v21[10] = v15;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "clearStoredClusterDataForNodeID: _deleteClusterDataForNodeID failed for node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      [a1[5] unsignedLongLongValue];
      [a1[6] unsignedShortValue];
      [a1[7] unsignedLongValue];
      sub_2393D5320(0, 1);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23920F2AC(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (([a1[4] _removeEndpointFromEndpointIndex:a1[5] forNodeID:a1[6]] & 1) == 0)
  {
    v2 = sub_2393D9044(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [a1[5] unsignedShortValue];
      v4 = [a1[6] unsignedLongLongValue];
      *buf = 67109376;
      *v33 = v3;
      *&v33[4] = 2048;
      *&v33[6] = v4;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "removeEndpointFromEndpointIndex for endpointID %u failed for node 0x%016llX", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v23 = [a1[5] unsignedShortValue];
      v25 = [a1[6] unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }
  }

  [a1[4] _fetchClusterIndexForNodeID:a1[6] endpointID:{a1[5], v23, v25}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if (([a1[4] _deleteClusterDataForNodeID:a1[6] endpointID:a1[5] clusterID:{v9, v24, v26, v27}] & 1) == 0)
        {
          v10 = sub_2393D9044(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [a1[6] unsignedLongLongValue];
            v12 = [a1[5] unsignedShortValue];
            v13 = [v9 unsignedLongValue];
            *buf = 134218496;
            *v33 = v11;
            *&v33[8] = 1024;
            *&v33[10] = v12;
            v34 = 2048;
            v35 = v13;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Delete failed for clusterData for node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            v14 = [a1[6] unsignedLongLongValue];
            v26 = [a1[5] unsignedShortValue];
            v27 = [v9 unsignedLongValue];
            v24 = v14;
            sub_2393D5320(0, 1);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  v15 = [a1[4] _deleteClusterIndexForNodeID:a1[6] endpointID:a1[5]];
  v16 = sub_2393D9044(0);
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [a1[6] unsignedLongLongValue];
      v19 = [a1[5] unsignedShortValue];
      *buf = 134218240;
      *v33 = v18;
      *&v33[8] = 1024;
      *&v33[10] = v19;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Delete failed for clusterIndex for node 0x%016llX endpoint %u", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      [a1[6] unsignedLongLongValue];
      [a1[5] unsignedShortValue];
      sub_2393D5320(0, 1);
    }
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [a1[5] unsignedShortValue];
    v21 = [a1[6] unsignedLongLongValue];
    *buf = 67109376;
    *v33 = v20;
    *&v33[4] = 2048;
    *&v33[6] = v21;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "clearStoredClusterDataForNodeID: Deleted endpoint %u for node 0x%016llX successfully", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    [a1[5] unsignedShortValue];
    [a1[6] unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23920F948(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) endpoint];
  v7 = [*v2 cluster];
  LOBYTE(v3) = [v3 _storeClusterData:v4 forNodeID:v5 endpointID:v6 clusterID:v7];

  v8 = sub_2393D9044(0);
  v9 = v8;
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 48) unsignedLongLongValue];
      v11 = [*(a1 + 56) endpoint];
      *buf = 134218240;
      v24 = v10;
      v25 = 1024;
      v26 = [v11 unsignedShortValue];
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "removeAttributes: _storeClusterData failed for node 0x%016llX endpoint %u", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      [*(a1 + 48) unsignedLongLongValue];
      v12 = [*(a1 + 56) endpoint];
      [v12 unsignedShortValue];
      sub_2393D5320(0, 1);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 64);
    v14 = [*(a1 + 56) endpoint];
    v15 = [v14 unsignedShortValue];
    v16 = [*(a1 + 56) cluster];
    v17 = [v16 unsignedLongValue];
    v18 = [*(a1 + 48) unsignedLongLongValue];
    *buf = 138413058;
    v24 = v13;
    v25 = 1024;
    v26 = v15;
    v27 = 2048;
    v28 = v17;
    v29 = 2048;
    v30 = v18;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "removeAttributes: Deleted attributes %@ from endpoint %u cluster 0x%08lX for node 0x%016llX successfully", buf, 0x26u);
  }

  if (sub_2393D5398(2u))
  {
    v19 = *(a1 + 64);
    v20 = [*(a1 + 56) endpoint];
    [v20 unsignedShortValue];
    v21 = [*(a1 + 56) cluster];
    [v21 unsignedLongValue];
    [*(a1 + 48) unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23920FCBC(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 12);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _clearStoredClusterDataForNodeID:*(*(&v10 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  if (([*(a1 + 32) _deleteNodeIndex] & 1) == 0)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Delete failed for nodeIndex", v9, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(v2 + 12);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_239210140(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v37 = *(a1 + 32);
  os_unfair_lock_lock(v37 + 12);
  v2 = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [v3 _fetchEndpointIndexForNodeID:v4];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v5 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v5)
    {
      v39 = *v49;
      v6 = 0x278A6F000uLL;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v48 + 1) + 8 * i);
          v8 = [*(a1 + 32) _fetchClusterIndexForNodeID:*(a1 + 40) endpointID:{v7, v34}];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = v8;
          v9 = [v42 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v9)
          {
            v10 = *v45;
            v41 = *v45;
            do
            {
              v43 = v9;
              for (j = 0; j != v43; ++j)
              {
                if (*v45 != v10)
                {
                  objc_enumerationMutation(v42);
                }

                v12 = *(*(&v44 + 1) + 8 * j);
                v13 = [*(a1 + 32) _fetchClusterDataForNodeID:*(a1 + 40) endpointID:v7 clusterID:{v12, v34, v35, v36}];
                if (v13)
                {
                  v14 = [*(v6 + 2656) clusterPathWithEndpointID:v7 clusterID:v12];
                  v15 = *(*(*(a1 + 48) + 8) + 40);
                  if (!v15)
                  {
                    v16 = [MEMORY[0x277CBEB38] dictionary];
                    v17 = *(*(a1 + 48) + 8);
                    v18 = *(v17 + 40);
                    *(v17 + 40) = v16;

                    v15 = *(*(*(a1 + 48) + 8) + 40);
                  }

                  [v15 setObject:v13 forKeyedSubscript:v14];
                }

                else
                {
                  v19 = sub_2393D9044(0);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = v6;
                    v21 = v5;
                    v22 = [*(a1 + 40) unsignedLongLongValue];
                    v23 = [v7 unsignedShortValue];
                    v24 = [v12 unsignedLongValue];
                    *buf = 134218496;
                    v53 = v22;
                    v54 = 1024;
                    v55 = v23;
                    v56 = 2048;
                    v57 = v24;
                    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Fetch got no value for clusterData @ node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
                    v5 = v21;
                    v6 = v20;
                    v10 = v41;
                  }

                  if (sub_2393D5398(2u))
                  {
                    v25 = [*(a1 + 40) unsignedLongLongValue];
                    v35 = [v7 unsignedShortValue];
                    v36 = [v12 unsignedLongValue];
                    v34 = v25;
                    sub_2393D5320(0, 2);
                  }
                }
              }

              v9 = [v42 countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v9);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v5);
    }

    v26 = obj;
    v27 = obj;
  }

  else
  {
    v27 = [v3 _fetchEndpointIndexForNodeID:v4];
    v28 = sub_2393D9044(0);
    v29 = v28;
    if (v27)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        *buf = 138412290;
        v53 = v30;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Persistent attribute cache contains orphaned entry for nodeID %@ - deleting", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v34 = *(a1 + 40);
        sub_2393D5320(0, 1);
      }

      [*(a1 + 32) _clearStoredClusterDataForNodeID:{*(a1 + 40), v34}];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) unsignedLongLongValue];
      *buf = 134217984;
      v53 = v31;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_DEFAULT, "Fetch got no value for endpointIndex @ node 0x%016llX", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      [*(a1 + 40) unsignedLongLongValue];
      sub_2393D5320(0, 2);
    }

    v32 = *(*(a1 + 48) + 8);
    v26 = *(v32 + 40);
    *(v32 + 40) = 0;
  }

  os_unfair_lock_unlock(v37 + 12);
  v33 = *MEMORY[0x277D85DE8];
}

void sub_2392108D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_239210928(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchClusterDataForNodeID:*(a1 + 40) endpointID:*(a1 + 48) clusterID:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_239211164(uint64_t a1)
{
  v1 = a1;
  v104 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    v82 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    v82 = 0;
  }

  v81 = [MEMORY[0x277CBEB38] dictionary];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v1[5];
  v3 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (!v3)
  {
    v74 = 0;
    goto LABEL_23;
  }

  v74 = 0;
  v79 = *v92;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v92 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v91 + 1) + 8 * i);
      v6 = [v1[5] objectForKeyedSubscript:v5];
      v7 = v1[4];
      v8 = v1[6];
      if (v82)
      {
        v9 = [v5 endpoint];
        v10 = [v5 cluster];
        v11 = [v7 _clusterDataKeyForNodeID:v8 endpointID:v9 clusterID:v10];
        [v82 setObject:v6 forKeyedSubscript:v11];

LABEL_11:
        goto LABEL_17;
      }

      v12 = [v5 endpoint];
      v13 = [v5 cluster];
      v14 = [v7 _storeClusterData:v6 forNodeID:v8 endpointID:v12 clusterID:v13];

      if ((v14 & 1) == 0)
      {
        v15 = sub_2393D9044(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [v1[6] unsignedLongLongValue];
          v17 = [v5 endpoint];
          v18 = [v17 unsignedShortValue];
          v19 = [v5 cluster];
          v20 = [v19 unsignedLongValue];
          *buf = 134218496;
          v98 = v16;
          v99 = 1024;
          v100 = v18;
          v101 = 2048;
          v102 = v20;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Store failed for clusterData @ node 0x%016llX endpoint %u cluster 0x%08lX", buf, 0x1Cu);
        }

        ++v74;
        if (sub_2393D5398(1u))
        {
          v21 = [v1[6] unsignedLongLongValue];
          v9 = [v5 endpoint];
          v22 = [v9 unsignedShortValue];
          v10 = [v5 cluster];
          v69 = v22;
          v70 = [v10 unsignedLongValue];
          v68 = v21;
          sub_2393D5320(0, 1);
          goto LABEL_11;
        }
      }

LABEL_17:
      v23 = [v5 endpoint];
      v24 = [v81 objectForKeyedSubscript:v23];

      if (!v24)
      {
        v25 = [MEMORY[0x277CBEB58] set];
        v26 = [v5 endpoint];
        [v81 setObject:v25 forKeyedSubscript:v26];

        v24 = v25;
      }

      v27 = [v5 cluster];
      [v24 addObject:v27];
    }

    v3 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  }

  while (v3);
LABEL_23:

  v28 = [v1[4] _fetchEndpointIndexForNodeID:v1[6]];
  v72 = v28 == 0;
  v71 = v28;
  if (v28)
  {
    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v1[6] unsignedLongLongValue];
      *buf = 134217984;
      v98 = v30;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_DEFAULT, "No entry found for endpointIndex @ node 0x%016llX - creating", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v68 = [v1[6] unsignedLongLongValue];
      sub_2393D5320(0, 2);
    }

    v31 = [v71 mutableCopy];
  }

  else
  {
    v31 = [MEMORY[0x277CBEB18] array];
  }

  v75 = v31;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v76 = v81;
  v32 = [v76 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v32)
  {
    v73 = *v88;
    do
    {
      v33 = 0;
      do
      {
        if (*v88 != v73)
        {
          objc_enumerationMutation(v76);
        }

        v34 = *(*(&v87 + 1) + 8 * v33);
        if (([v75 containsObject:{v34, v68}] & 1) == 0)
        {
          [v75 addObject:v34];
          v72 = 1;
        }

        v35 = [v76 objectForKeyedSubscript:v34];
        v36 = [v1[4] _fetchClusterIndexForNodeID:v1[6] endpointID:v34];
        v37 = v36 == 0;
        obja = v33;
        v80 = v36;
        if (v36)
        {
          v38 = sub_2393D9044(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v1[6] unsignedLongLongValue];
            v40 = [v34 unsignedShortValue];
            *buf = 134218240;
            v98 = v39;
            v99 = 1024;
            v100 = v40;
            _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "No entry found for clusterIndex @ node 0x%016llX endpoint %u - creating", buf, 0x12u);
          }

          if (sub_2393D5398(2u))
          {
            v68 = [v1[6] unsignedLongLongValue];
            v69 = [v34 unsignedShortValue];
            sub_2393D5320(0, 2);
          }

          v41 = [v80 mutableCopy];
        }

        else
        {
          v41 = [MEMORY[0x277CBEB18] array];
        }

        v42 = v41;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v43 = v35;
        v44 = [v43 countByEnumeratingWithState:&v83 objects:v95 count:16];
        v45 = v32;
        v46 = v1;
        if (v44)
        {
          v47 = *v84;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v84 != v47)
              {
                objc_enumerationMutation(v43);
              }

              v49 = *(*(&v83 + 1) + 8 * j);
              if (([v42 containsObject:v49] & 1) == 0)
              {
                [v42 addObject:v49];
                v37 = 1;
              }
            }

            v44 = [v43 countByEnumeratingWithState:&v83 objects:v95 count:16];
          }

          while (v44);
        }

        v50 = obja;
        v1 = v46;
        v32 = v45;
        if (v37)
        {
          v51 = v46[4];
          if (v82)
          {
            v52 = [v51 _clusterIndexKeyForNodeID:v46[6] endpointID:v34];
            [v82 setObject:v42 forKeyedSubscript:v52];
          }

          else if (([v51 _storeClusterIndex:v42 forNodeID:v46[6] endpointID:v34] & 1) == 0)
          {
            v53 = sub_2393D9044(0);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v54 = [v46[6] unsignedLongLongValue];
              v55 = [v34 unsignedShortValue];
              *buf = 134218240;
              v98 = v54;
              v99 = 1024;
              v100 = v55;
              _os_log_impl(&dword_238DAE000, v53, OS_LOG_TYPE_ERROR, "Store failed for clusterIndex @ node 0x%016llX endpoint %u", buf, 0x12u);
              v50 = obja;
            }

            ++v74;
            if (sub_2393D5398(1u))
            {
              v68 = [v46[6] unsignedLongLongValue];
              v69 = [v34 unsignedShortValue];
              sub_2393D5320(0, 1);
            }
          }
        }

        v33 = v50 + 1;
      }

      while (v33 != v45);
      v32 = [v76 countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v32);
  }

  if (v72)
  {
    v56 = v1[4];
    if (v82)
    {
      v57 = [v56 _endpointIndexKeyForNodeID:v1[6]];
      [v82 setObject:v75 forKeyedSubscript:v57];
    }

    else if (([v56 _storeEndpointIndex:v75 forNodeID:v1[6]] & 1) == 0)
    {
      v58 = sub_2393D9044(0);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = [v1[6] unsignedLongLongValue];
        *buf = 134217984;
        v98 = v59;
        _os_log_impl(&dword_238DAE000, v58, OS_LOG_TYPE_ERROR, "Store failed for endpointIndex @ node 0x%016llX", buf, 0xCu);
      }

      ++v74;
      if (sub_2393D5398(1u))
      {
        v68 = [v1[6] unsignedLongLongValue];
        sub_2393D5320(0, 1);
      }
    }
  }

  v60 = v1[4];
  os_unfair_lock_lock(v60 + 12);
  if ([*(v1[4] + 5) containsObject:v1[6]])
  {
    os_unfair_lock_unlock(v60 + 12);
    goto LABEL_76;
  }

  [*(v1[4] + 5) addObject:v1[6]];
  v61 = [*(v1[4] + 5) copy];
  os_unfair_lock_unlock(v60 + 12);
  if (v61)
  {
    v62 = v82;
    if (v82)
    {
      [v82 setObject:v61 forKeyedSubscript:@"attrCacheNodeIndex"];
LABEL_77:
      if (([v1[4] _bulkStoreAttributeCacheValues:{v62, v68}] & 1) == 0)
      {
        v63 = sub_2393D9044(0);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = [v62 count];
          *buf = 134217984;
          v98 = v64;
          _os_log_impl(&dword_238DAE000, v63, OS_LOG_TYPE_ERROR, "Store failed for bulk values count %lu", buf, 0xCu);
        }

        ++v74;
        if (sub_2393D5398(1u))
        {
          [v62 count];
          sub_2393D5320(0, 1);
        }
      }
    }

    else if (([v1[4] _storeNodeIndex:v61] & 1) == 0)
    {
      v65 = sub_2393D9044(0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v65, OS_LOG_TYPE_ERROR, "Store failed for nodeIndex", buf, 2u);
      }

      ++v74;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  else
  {
LABEL_76:
    v61 = 0;
    v62 = v82;
    if (v82)
    {
      goto LABEL_77;
    }
  }

  if (v74)
  {
    [v1[4] _pruneEmptyStoredClusterDataBranches];
    v66 = sub_2393D9044(0);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v98 = v74;
      _os_log_impl(&dword_238DAE000, v66, OS_LOG_TYPE_ERROR, "Store failed in -storeClusterData:forNodeID: failure count %lu", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v67 = *MEMORY[0x277D85DE8];
}

void sub_23921218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2392121CC(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = a1[4];
    v5 = v4[1];
    v6 = [v4 _deviceDataKeyForNodeID:a1[5]];
    v7 = [v5 controller:WeakRetained valueForKey:v6 securityLevel:0 sharingType:0];

    objc_autoreleasePoolPop(v3);
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = *v15;
          while (2)
          {
            v11 = 0;
            do
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v14 + 1) + 8 * v11);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_14;
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong((*(a1[6] + 8) + 40), v7);
LABEL_14:
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_239212494(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = a1[4];
    v4 = a1[5];
    v5 = v3[1];
    v6 = [v3 _deviceDataKeyForNodeID:a1[6]];
    [v5 controller:v7 storeValue:v4 forKey:v6 securityLevel:0 sharingType:0];

    WeakRetained = v7;
  }
}

void sub_2392125DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = v3[1];
    v5 = [v3 _deviceDataKeyForNodeID:*(a1 + 40)];
    [v4 controller:v6 removeValueForKey:v5 securityLevel:0 sharingType:0];

    WeakRetained = v6;
  }
}

uint64_t sub_239212714(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2392127B8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);

  _Unwind_Resume(a1);
}

void sub_239212E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

id MTRDeviceControllerStorageClasses()
{
  v6[8] = *MEMORY[0x277D85DE8];
  v0 = &unk_27DF77000;
  if ((atomic_load_explicit(&qword_27DF775C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF775C0))
  {
    v4 = MEMORY[0x277CBEB98];
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v6[2] = objc_opt_class();
    v6[3] = objc_opt_class();
    v6[4] = objc_opt_class();
    v6[5] = objc_opt_class();
    v6[6] = objc_opt_class();
    v6[7] = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
    qword_27DF775B8 = [v4 setWithArray:v5];

    __cxa_guard_release(&qword_27DF775C0);
    v0 = &unk_27DF77000;
  }

  v1 = v0[183];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

BOOL sub_2392130E4(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 compare:&unk_284C40658] != -1;

  return v2;
}

uint64_t sub_23921324C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBE278;
  sub_2394E6448(a1 + 8);
  *(a1 + 248) = 0;
  *(a1 + 256) = &unk_284BAA120;
  *(a1 + 264) = a1;
  *(a1 + 272) = 0;
  *a1 = &unk_284BB6EA8;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 352) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 129);
  *(a1 + 320) = a2;
  v4 = sub_238DB7D20();
  sub_238DB817C(v4, a1);
  v5 = [[MTROTAImageTransferHandlerWrapper alloc] initWithMTROTAImageTransferHandler:a1];
  v6 = *(a1 + 336);
  *(a1 + 336) = v5;

  return a1;
}

unint64_t sub_239213364(uint64_t a1, uint64_t a2)
{
  v4 = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 139);
  *(a1 + 296) = sub_23921351C(v4, a2);
  *(a1 + 304) = v5;
  v6 = +[MTRDeviceControllerFactory sharedInstance];
  v7 = sub_23952B954(v6, *(a1 + 304));

  if (!v7)
  {
    v15 = 0x8F00000000;
LABEL_12:
    v16 = 3;
    goto LABEL_16;
  }

  v8 = [v7 otaProviderDelegate];
  v9 = *(a1 + 312);
  *(a1 + 312) = v8;

  v10 = [v7 otaProviderDelegateQueue];
  v11 = *(a1 + 328);
  *(a1 + 328) = v10;

  if (!*(a1 + 312))
  {
    v15 = 0x9500000000;
    goto LABEL_12;
  }

  if (!*(a1 + 328))
  {
    v15 = 0x9600000000;
    goto LABEL_12;
  }

  *(a1 + 345) = [v7 definitelyUsesThreadForDevice:*(a1 + 296)];
  v12 = sub_23947AA38();
  v13 = v12;
  if ((v12 & 0x10000) == 0)
  {
    v13 = 50;
  }

  *(a1 + 348) = v13;
  if (*(a1 + 345) == 1 && (sub_23947AB88() & 0x100) != 0)
  {
    v17 = sub_23947AB88();
    if ((v17 & 0x100) == 0)
    {
      sub_238EA195C();
    }

    v14 = 95 * v17 - 59;
  }

  else
  {
    v14 = 1024;
  }

  v18 = sub_2394E2660(a1, *(a1 + 320), a2, 1, 32, v14, 300000);
  v15 = v18 & 0xFFFFFFFF00000000;
  v16 = v18;
LABEL_16:

  return v15 | v16;
}

uint64_t sub_23921351C(uint64_t a1, uint64_t a2)
{
  sub_238EA6DC0(a2, &v9);
  v2 = (*(*v9 + 16))(v9);
  v3 = v9;
  if (v2 == 2)
  {
    v4 = sub_239495304(v9);
    v5 = (*(*v4 + 48))(v4);
  }

  else
  {
    if ((*(*v9 + 16))(v9) != 3 && (*(*v3 + 16))(v3) != 4)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = sub_239495400(v9);
    v5 = (*(*v6 + 48))(v6);
  }

  v7 = v5;
LABEL_7:
  (*(*v9 + 32))(v9);
  return v7;
}

void *sub_2392136BC(uint64_t a1)
{
  *a1 = &unk_284BB6EA8;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 176);
  if (*(a1 + 344) == 1)
  {
    sub_239213774(a1, 0xB4000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm");
  }

  v2 = sub_238DB7D20();
  sub_238DB81B4(v2, a1);
  [*(a1 + 336) setOtaImageTransferHandler:0];

  return sub_2394E1FC4(a1);
}

void sub_239213774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 281);
  *(a1 + 344) = 0;
  v6 = +[MTRDeviceControllerFactory sharedInstance];
  v7 = sub_23952B954(v6, *(a1 + 304));

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 296)];
    v9 = *(a1 + 312);
    v10 = *(a1 + 328);
    v11 = v10;
    if (!v9 || !v10)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v39 = sub_2393C9138();
        *&v39[8] = 2080;
        *&v39[10] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
        v40 = 1024;
        v41 = 292;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      goto LABEL_14;
    }

    v26 = [MTRDevice deviceWithNodeID:v8 controller:v7];
    v12 = [v26 vendorID];
    *buf = 2;
    *&v39[4] = "dwnfw__ota__device_vendor_id";
    *&v39[12] = [v12 unsignedIntValue];
    v39[16] = 2;

    sub_23948BD20(buf);
    v13 = [v26 productID];
    v14 = [v13 unsignedIntValue];
    *buf = 2;
    *&v39[4] = "dwnfw__ota__device_product_id";
    *&v39[12] = v14;
    v39[16] = 2;

    sub_23948BD20(buf);
    v15 = *(a1 + 345);
    *buf = 2;
    *&v39[4] = "dwnfw__ota__device_uses_thread_BOOL";
    *&v39[12] = v15;
    v39[16] = 1;
    sub_23948BD20(buf);
    v16 = *(a1 + 352);
    *buf = 2;
    *&v39[4] = "dwnfw__ota__num_bytes_processed";
    *&v39[12] = v16;
    v39[16] = 2;
    sub_23948BD20(buf);
    *buf = 1;
    *&v39[4] = "dwnfw__ota__transfer";
    *&v39[12] = a2;
    v39[16] = 3;
    sub_23948BD20(buf);
    v17 = +[MTRMetricsCollector sharedInstance];
    v18 = [v17 metricSnapshotForCategory:@"ota" removeMetrics:1];

    v19 = sub_23921C1E4(MTRError, a2, a3);
    if (objc_opt_respondsToSelector())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2392145A4;
      block[3] = &unk_278A723D0;
      v33 = v9;
      v34 = v8;
      v35 = v7;
      v36 = v18;
      v37 = v19;
      dispatch_async(v11, block);

      v20 = &v33;
      v21 = &v34;
      v22 = &v35;
      v23 = &v36;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_2392145B8;
      v27[3] = &unk_278A73AC8;
      v20 = &v28;
      v28 = v9;
      v21 = &v29;
      v29 = v8;
      v22 = &v30;
      v30 = v7;
      v23 = &v31;
      v31 = v19;
      dispatch_async(v11, v27);
    }

    goto LABEL_13;
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

void sub_239213CB4(uint64_t a1)
{
  sub_2392136BC(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239213CEC(uint64_t a1, __int16 a2)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 189);
  v4 = *(a1 + 96);
  if (v4 > 0xFF)
  {
    result = 0xC100000003;
  }

  else
  {
    sub_238DB9BD8(v34, *(a1 + 88), v4);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v34[0] length:v34[1] encoding:4];
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 24)];
      v7 = +[MTRDeviceControllerFactory sharedInstance];
      v8 = sub_23952B954(v7, *(a1 + 304));

      if (v8)
      {
        *(a1 + 352) = 0;
        *buf = 0;
        *&v36[4] = "dwnfw__ota__transfer";
        v36[16] = 0;
        sub_23948BD20(buf);
        v9 = *(a1 + 24);
        *buf = 2;
        *&v36[4] = "dwnfw__ota__transfer_offset";
        *&v36[12] = v9;
        v36[16] = 2;
        sub_23948BD20(buf);
        objc_initWeak(&location, *(a1 + 336));
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_239214184;
        v29[3] = &unk_278A73BB8;
        v31[1] = a1;
        v10 = v8;
        v30 = v10;
        objc_copyWeak(v31, &location);
        v32 = a2;
        v11 = MEMORY[0x23EE78590](v29);
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 296)];
        v13 = *(a1 + 312);
        v14 = *(a1 + 328);
        v15 = v14;
        if (v13 && v14)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_239214534;
          block[3] = &unk_278A73BE0;
          v23 = v13;
          v24 = v12;
          v25 = v10;
          v26 = v5;
          v27 = v6;
          v28 = v11;
          dispatch_async(v15, block);
          *(a1 + 344) = 1;

          v16 = 0;
          v17 = 0;
        }

        else
        {
          v19 = sub_2393D9044(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = sub_2393C9138();
            *buf = 136315650;
            *v36 = v20;
            *&v36[8] = 2080;
            *&v36[10] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
            v37 = 1024;
            v38 = 255;
            _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0, 1);
          }

          v17 = 0x10000000000;
          v16 = 3;
        }

        objc_destroyWeak(v31);
        objc_destroyWeak(&location);
      }

      else
      {
        v17 = 0xCC00000000;
        v16 = 3;
      }
    }

    else
    {
      v17 = 0xC600000000;
      v16 = 3;
    }

    result = v17 | v16;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239214104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a27);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_239214184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239214274;
  v7[3] = &unk_278A73B90;
  v9[1] = v4;
  objc_copyWeak(v9, (a1 + 40));
  v8 = v3;
  v10 = *(a1 + 56);
  v6 = v3;
  [v5 asyncDispatchToMatterQueue:v7 errorHandler:&unk_284BB6EF8];

  objc_destroyWeak(v9);
}

void sub_239214274(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 216);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained otaImageTransferHandler])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = sub_23921D408(MTRError, v5);
      if (v6)
      {
        v7 = sub_2393D9044(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v18 = sub_2393C9138();
          *&v18[8] = 2080;
          *&v18[10] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
          *&v18[18] = 1024;
          LODWORD(v19) = 226;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }
      }

      sub_2394E26E8(v2, *(a1 + 56), v6);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      buf[0] = 32;
      *&buf[2] = *(v2 + 40);
      *&v18[4] = *(v2 + 24);
      v8 = sub_2394E6BDC(v2 + 8, buf);
      if (v8)
      {
        v9 = sub_2393D9044(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v11 = 136315650;
          v12 = sub_2393C9138();
          v13 = 2080;
          v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
          v15 = 1024;
          v16 = 241;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%s at %s:%d", v11, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }
      }

      sub_2394E26E8(v2, *(a1 + 56), v8);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239214534(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  if (v3)
  {

    return MEMORY[0x2821F9670](v4, sel_handleBDXTransferSessionBeginForNodeID_controller_fileDesignator_offset_completion_);
  }

  else
  {

    return MEMORY[0x2821F9670](v4, sel_handleBDXTransferSessionBeginForNodeID_controller_fileDesignator_offset_completionHandler_);
  }
}

uint64_t sub_2392145A4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  return MEMORY[0x2821F9670](a1[4], sel_handleBDXTransferSessionEndForNodeID_controller_metrics_error_);
}

uint64_t sub_2392145B8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x2821F9670](a1[4], sel_handleBDXTransferSessionEndForNodeID_controller_error_);
}

uint64_t sub_2392145C8(uint64_t a1, int a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 324);
  v4 = 0x14A00000000;
  v5 = 172;
  if (a2 == 11)
  {
    v4 = 0x14800000000;
    v5 = 50;
  }

  if (a2 == 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
  }

  if (a2 == 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (a2 == 8)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  sub_239213774(a1, v8 | v7, v6);
  if (a2 == 8)
  {
    sub_2394E26E8(a1, 8u, v8 | v7);
  }

  return v8 | v7;
}

uint64_t sub_239214688(uint64_t a1, __int16 a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 343);
  v6 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 40)];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 212)];
  v7 = +[MTRDeviceControllerFactory sharedInstance];
  v8 = sub_23952B954(v7, *(a1 + 304));

  if (v8)
  {
    objc_initWeak(&location, *(a1 + 336));
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_239214B8C;
    v39[3] = &unk_278A73C30;
    v42[1] = a1;
    v9 = v8;
    v40 = v9;
    objc_copyWeak(v42, &location);
    v43 = a2;
    v10 = v25;
    v41 = v10;
    v23 = MEMORY[0x23EE78590](v39);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 296)];
    v12 = *(a1 + 312);
    v13 = *(a1 + 328);
    v14 = v13;
    if (v12 && v13)
    {
      if (*(a1 + 345) == 1)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2392150D8;
        v34[3] = &unk_278A73C80;
        v37 = a1;
        v38 = v6;
        v36 = v23;
        v35 = v14;
        v15 = MEMORY[0x23EE78590](v34);
      }

      else
      {
        v15 = MEMORY[0x23EE78590](v23);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239215248;
      block[3] = &unk_278A73CA8;
      v27 = v12;
      v28 = v11;
      v29 = v9;
      v30 = v10;
      v32 = v15;
      v33 = a3;
      v31 = v24;
      v20 = v15;
      dispatch_async(v14, block);

      v17 = 0;
      v16 = 0;
    }

    else
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315650;
        v46 = v19;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
        v49 = 1024;
        v50 = 412;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v16 = 0x19D00000000;
      v17 = 3;
    }

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = 0x16100000000;
    v17 = 3;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16 | v17;
}

void sub_239214B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, id a41)
{
  objc_destroyWeak(&a41);

  objc_destroyWeak((v45 - 168));
  _Unwind_Resume(a1);
}

void sub_239214B8C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 56);
  if (v5)
  {
    v7[44] += [v5 length];
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239214CC8;
  v10[3] = &unk_278A73C08;
  v13[1] = v7;
  objc_copyWeak(v13, (a1 + 48));
  v9 = v6;
  v11 = v9;
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v15 = a3;
  [v8 asyncDispatchToMatterQueue:v10 errorHandler:&unk_284BB6F18];

  objc_destroyWeak(v13);
}

void sub_239214CC8(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 363);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (!WeakRetained || ![WeakRetained otaImageTransferHandler])
  {
    goto LABEL_22;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *([v4 otaImageTransferHandler] + 300);
      v12 = *([v4 otaImageTransferHandler] + 296);
      v13 = *([v4 otaImageTransferHandler] + 304);
      *buf = 67109632;
      *v32 = v11;
      *&v32[4] = 1024;
      *&v32[6] = v12;
      *v33 = 1024;
      *&v33[2] = v13;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Nil OTA data block when updating <%08X%08X, %d>", buf, 0x14u);
    }

    if (sub_2393D5398(1u))
    {
      v14 = *([v4 otaImageTransferHandler] + 300);
      v24 = *([v4 otaImageTransferHandler] + 296);
      v25 = *([v4 otaImageTransferHandler] + 304);
      sub_2393D5320(0, 1);
    }

    goto LABEL_21;
  }

  v6 = [v5 length];
  if (v6 != [*(a1 + 40) unsignedLongLongValue] && (*(a1 + 66) & 1) == 0)
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) length];
      v17 = *([v4 otaImageTransferHandler] + 300);
      v18 = *([v4 otaImageTransferHandler] + 296);
      v19 = *([v4 otaImageTransferHandler] + 304);
      v20 = *(a1 + 40);
      *buf = 134219010;
      *v32 = v16;
      *&v32[8] = 1024;
      *v33 = v17;
      *&v33[4] = 1024;
      *&v33[6] = v18;
      *v34 = 1024;
      *&v34[2] = v19;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Invalid OTA block size %lu for non-final block when updating <%08X%08X, %d>.  Expected block of size %@", buf, 0x28u);
    }

    if (sub_2393D5398(1u))
    {
      [*(a1 + 32) length];
      v21 = *([v4 otaImageTransferHandler] + 300);
      v22 = *([v4 otaImageTransferHandler] + 296);
      v26 = *([v4 otaImageTransferHandler] + 304);
      v27 = *(a1 + 40);
      sub_2393D5320(0, 1);
    }

LABEL_21:
    sub_2394E26E8(v2, *(a1 + 64), 3);
    goto LABEL_22;
  }

  v30 = 0;
  v28[0] = [*(a1 + 32) bytes];
  v28[1] = [*(a1 + 32) length];
  v29 = *(a1 + 66);
  v7 = sub_2394E73C8(v2 + 8, v28);
  if (v7)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315650;
      *v32 = v9;
      *&v32[8] = 2080;
      *v33 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
      *&v33[8] = 1024;
      *v34 = 396;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  sub_2394E26E8(v2, *(a1 + 64), v7);
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2392150D8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = ((*(*off_27DF765E8 + 2))(off_27DF765E8) - *(a1 + 56)) % *(v6 + 348);
  if (v7)
  {
    v8 = dispatch_time(0, 1000000 * v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239215230;
    block[3] = &unk_278A73C58;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    v11 = v5;
    v13 = a3;
    dispatch_after(v8, v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_239215248(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[10]];
  v10 = a1[9];
  v11 = v9;
  if (v3)
  {
    [v4 handleBDXQueryForNodeID:v5 controller:v6 blockSize:v7 blockIndex:v8 bytesToSkip:v9 completion:v10];
  }

  else
  {
    [v4 handleBDXQueryForNodeID:v5 controller:v6 blockSize:v7 blockIndex:v8 bytesToSkip:v9 completionHandler:v10];
  }
}

void sub_239215334(uint64_t a1, unsigned __int16 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 312))
  {
    goto LABEL_25;
  }

  v4 = *a2;
  if (v4 <= 7)
  {
    switch(v4)
    {
      case 2u:
        v15 = sub_239213CEC(a1, 2);
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v21 = sub_2393C9138();
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
          v24 = 1024;
          v25 = 473;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        v11 = a1;
        v12 = 2;
        v13 = v15;
        goto LABEL_24;
      case 5u:
        v5 = 0;
LABEL_18:
        v7 = sub_239214688(a1, *a2, v5);
        if (v7)
        {
          v10 = sub_2393D9044(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v21 = sub_2393C9138();
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
            v24 = 1024;
            v25 = 494;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_25;
      case 6u:
        v5 = *(a2 + 2);
        goto LABEL_18;
    }

LABEL_37:
    sub_238EAC830();
  }

  if (v4 - 10 >= 2 && v4 != 8)
  {
    if (v4 != 9)
    {
      goto LABEL_37;
    }

    v17 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = a2[8];
      *buf = 67109120;
      LODWORD(v21) = v18;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Got StatusReport %x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      v19 = a2[8];
      sub_2393D5320(0xCu, 1);
    }
  }

  v7 = sub_2392145C8(a1, v4);
  if (v7)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315650;
      v21 = v9;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm";
      v24 = 1024;
      v25 = 485;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_23;
    }

LABEL_22:
    sub_2393C9138();
    sub_2393D5320(0, 1);
LABEL_23:
    v11 = a1;
    v12 = v4;
    v13 = v7;
LABEL_24:
    sub_2394E26E8(v11, v12, v13);
  }

LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239215720(uint64_t a1)
{
  result = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 512);
  if (a1)
  {
    v3 = *(*a1 + 8);

    return v3(a1);
  }

  return result;
}

unint64_t sub_239215794(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _WORD **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 532);
  v8 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a3;
    v10 = HIWORD(*(a3 + 1));
    v11 = *(a3 + 1);
    *buf = 67109632;
    *v22 = v9;
    *&v22[4] = 1024;
    *&v22[6] = v11;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTROTAImageTransferHandler: OnMessageReceived: message 0x%x protocol (%u, %u)", buf, 0x14u);
  }

  if (sub_2393D5398(2u))
  {
    v20 = *(a3 + 1);
    v19 = *a3;
    sub_2393D5320(0xCu, 2);
  }

  if (a2)
  {
    LODWORD(v12) = 0;
    if (!*(a3 + 2) && *(a3 + 3) == 2 && *a3 == 4 && (v13 = sub_239213364(a1, a2), v14 = v13, v12 = HIDWORD(v13), v13))
    {
      v15 = sub_2393D9044(9u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_2393C9138();
        *buf = 136315138;
        *v22 = v16;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "OnMessageReceived: Failed to prepare for transfer for BDX: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(9u, 1);
      }
    }

    else
    {
      sub_2394E2328(a1, a2, a3, a4);
      v14 = 0;
    }
  }

  else
  {
    LODWORD(v12) = 537;
    v14 = 3;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14 | (v12 << 32);
}

uint64_t *sub_2392159DC()
{
  if ((atomic_load_explicit(&qword_27DF760A8, memory_order_acquire) & 1) == 0)
  {
    sub_23952C790();
  }

  return &qword_27DF760A0;
}

_BYTE *sub_239215B7C(_BYTE *a1, void *a2, char a3, char a4)
{
  v8 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = MTRAccessGrant;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 2, a2);
      a1[8] = a3;
      a1[9] = a4;
    }
  }

  return a1;
}

void sub_239216158(_Unwind_Exception *a1)
{
  if (!v5)
  {
  }

  _Unwind_Resume(a1);
}

void sub_239216E98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239217154(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392177C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239217FE4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23921837C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23921868C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v36 = v32;

  if (a2 == 1)
  {
    v38 = objc_begin_catch(a1);
    v39 = sub_2393D9044(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(v30);
      v41 = v34 - 128;
      *(v34 - 128) = 138412802;
      *(v41 + 4) = v29;
      *(v34 - 116) = 2112;
      *(v41 + 14) = v40;
      *(v34 - 106) = 2112;
      *(v34 - 104) = v38;
      _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "%@ Exception sending XPC messsage for %@ getter: %@", (v34 - 128), 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v43 = NSStringFromSelector(v30);
      sub_2393D5320(0, 1);
    }

    v42 = *(a24 + 40);
    *(a24 + 40) = v33;

    objc_end_catch();
    JUMPOUT(0x239218614);
  }

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2392187F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_239218808(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@ getter: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_239219664(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239219918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _xpcConnectionRetry];
}

void sub_23921A034(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [WeakRetained xpcParameters];
    v4 = [v3 uniqueIdentifier];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "XPC Connection for device controller interrupted: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v5 = [WeakRetained xpcParameters];
    v7 = [v5 uniqueIdentifier];
    sub_2393D5320(0, 1);
  }

  [WeakRetained setXpcConnectedOrConnecting:{0, v7}];
  [WeakRetained setXpcConnection:0];
  [WeakRetained _startXPCConnectionRetry];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23921A1B4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [WeakRetained xpcParameters];
    v4 = [v3 uniqueIdentifier];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "XPC Connection for device controller invalidated: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v5 = [WeakRetained xpcParameters];
    v7 = [v5 uniqueIdentifier];
    sub_2393D5320(0, 1);
  }

  [WeakRetained setXpcConnectedOrConnecting:{0, v7}];
  [WeakRetained setXpcConnection:0];
  [WeakRetained _startXPCConnectionRetry];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23921B7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16)
{
  os_unfair_lock_unlock((a16 + v17));

  _Unwind_Resume(a1);
}

id *sub_23921BA0C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = MTRAwaitedAttributeState;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      *(v5 + 8) = 0;
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

void sub_23921BDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MTRAttributeValueWaiter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23921BFA0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[7] _forgetAttributeWaiter:WeakRetained];
    v4 = sub_23921C1E4(MTRError, 0xA900000032, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRAttributeValueWaiter.mm");
    [v5 _notifyWithError:v4];

    v3 = v5;
  }
}

void sub_23921C038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

BOOL sub_23921C1B0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_23921C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();

  return sub_23921C230(MTRError, a2, a3, 0);
}

id sub_23921C230(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_self();
  if (!a2)
  {
    v8 = 0;
    goto LABEL_57;
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = sub_2393C9138();
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Creating NSError from %s (context: %@)", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v23 = sub_2393C9138();
    v24 = v6;
    sub_2393D5320(9u, 1);
  }

  if ((a2 & 0xFF000700) != 0x600 && (a2 & 0xFF000700) != 0x500)
  {
    if (a2 > 125)
    {
      if (a2 > 175)
      {
        if (a2 > 215)
        {
          if (a2 == 216)
          {
            v9 = [MEMORY[0x277CCA8D8] mainBundle];
            v10 = [v9 localizedStringForKey:@"Requested resource was not found." value:&stru_284BD0DD8 table:0];
            v11 = 0;
            v12 = 19;
            goto LABEL_53;
          }

          if (a2 == 219)
          {
            v9 = [MEMORY[0x277CCA8D8] mainBundle];
            v10 = [v9 localizedStringForKey:@"Operation cannot be completed at this time: resource busy." value:&stru_284BD0DD8 table:0];
            v11 = 0;
            v12 = 18;
            goto LABEL_53;
          }
        }

        else
        {
          if (a2 == 176)
          {
            v9 = [MEMORY[0x277CCA8D8] mainBundle];
            v10 = [v9 localizedStringForKey:@"TLV decoding failed." value:&stru_284BD0DD8 table:0];
            v11 = 0;
            v12 = 14;
            goto LABEL_53;
          }

          if (a2 == 179)
          {
            v9 = [MEMORY[0x277CCA8D8] mainBundle];
            v10 = [v9 localizedStringForKey:@"Access denied to perform DNS-SD lookups. Check that _matter._tcp and/or _matterc._udp are listed under the NSBonjourServices key in Info.plist" value:&stru_284BD0DD8 table:0];
            v11 = 0;
            v12 = 15;
            goto LABEL_53;
          }
        }
      }

      else if (a2 > 142)
      {
        if (a2 == 143)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"Unexpected integer value." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 3;
          goto LABEL_53;
        }

        if (a2 == 165)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"Access denied." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 17;
          goto LABEL_53;
        }
      }

      else
      {
        if (a2 == 126)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"The device is already a member of this fabric." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 11;
          goto LABEL_53;
        }

        if (a2 == 142)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"Data does not match expected schema." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 13;
          goto LABEL_53;
        }
      }
    }

    else if (a2 > 29)
    {
      if (a2 > 49)
      {
        if (a2 == 50)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"Transaction timed out." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 9;
          goto LABEL_53;
        }

        if (a2 == 116)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"The operation was cancelled." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 16;
          goto LABEL_53;
        }
      }

      else
      {
        if (a2 == 30)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"A list length is invalid." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 2;
          goto LABEL_53;
        }

        if (a2 == 47)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v10 = [v9 localizedStringForKey:@"An argument is invalid." value:&stru_284BD0DD8 table:0];
          v11 = 0;
          v12 = 4;
          goto LABEL_53;
        }
      }
    }

    else if (a2 > 23)
    {
      if (a2 == 24)
      {
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"A message length is invalid." value:&stru_284BD0DD8 table:0];
        v11 = 0;
        v12 = 5;
        goto LABEL_53;
      }

      if (a2 == 25)
      {
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"A buffer is too small." value:&stru_284BD0DD8 table:0];
        v11 = 0;
        v12 = 10;
        goto LABEL_53;
      }
    }

    else
    {
      if (a2 == 3)
      {
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"Invalid object state." value:&stru_284BD0DD8 table:0];
        v11 = 0;
        v12 = 6;
        goto LABEL_53;
      }

      if (a2 == 19)
      {
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"Integrity check failed." value:&stru_284BD0DD8 table:0];
        v11 = 0;
        v12 = 8;
LABEL_53:

        v27 = *MEMORY[0x277CCA450];
        v28 = v10;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v17 = v16;
        if (v11)
        {
          v18 = [v16 mutableCopy];
          [v18 addEntriesFromDictionary:v11];
        }

        else
        {
          v18 = v16;
        }

        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:v12 userInfo:{v18, v23}];
        v19 = objc_opt_class();
        v20 = [[MTRErrorHolder alloc] initWithError:a2, a3];
        objc_setAssociatedObject(v8, v19, v20, 1);

        goto LABEL_57;
      }
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"General error: %u" value:&stru_284BD0DD8 table:0];
    v10 = [v13 stringWithFormat:v15, a2];

    v29 = @"errorCode";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v30 = v9;
    v12 = 1;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    goto LABEL_53;
  }

  sub_2393DDF30(buf, a2);
  v25 = buf[0];
  v26 = 0;
  if (buf[0] <= 1u && (*&buf[1] & 0x100) != 0)
  {
    v26 = *&buf[1];
  }

  v8 = sub_23921CB28(MTRError, &v25);
LABEL_57:

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

id sub_23921CB28(uint64_t a1, unsigned __int8 *a2)
{
  objc_opt_self();
  v3 = *a2;
  if (v3 > 0xC2)
  {
    if (*a2 <= 0xC8u)
    {
      if (*a2 > 0xC5u)
      {
        if (v3 == 198)
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v4 localizedStringForKey:@"An Untimed Write or Untimed Invoke interaction was used for an attribute or command that requires a Timed Write or Timed Invoke." value:&stru_284BD0DD8 table:0];
          goto LABEL_48;
        }

        if (v3 == 199)
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          [v4 localizedStringForKey:@"The event indicated is unsupported on the cluster." value:&stru_284BD0DD8 table:0];
        }

        else
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          [v4 localizedStringForKey:@"The receiver has insufficient resources to support the number of paths specified in the request." value:&stru_284BD0DD8 table:0];
        }

        goto LABEL_9;
      }

      if (v3 == 195)
      {
        v4 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [v4 localizedStringForKey:@"The cluster indicated is not supported" value:&stru_284BD0DD8 table:0];
        goto LABEL_48;
      }

      if (v3 == 197)
      {
        v4 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [v4 localizedStringForKey:@"Proxy does not have a subscription to the source." value:&stru_284BD0DD8 table:0];
        goto LABEL_48;
      }
    }

    else
    {
      if (*a2 <= 0xCBu)
      {
        if (v3 == 201)
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v4 localizedStringForKey:@"A request with TimedRequest set to TRUE was issued outside a Timed transaction or a request with TimedRequest set to FALSE was issued inside a Timed transaction." value:&stru_284BD0DD8 table:0];
          goto LABEL_48;
        }

        if (v3 == 202)
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          [v4 localizedStringForKey:@"A request requiring a fail-safe context was invoked without the Fail-Safe context." value:&stru_284BD0DD8 table:0];
        }

        else
        {
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          [v4 localizedStringForKey:@"The received request cannot be handled due to the current operational state of the device." value:&stru_284BD0DD8 table:0];
        }

        v5 = LABEL_9:;
LABEL_48:
        v7 = v5;

        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
        if (a2[2] == 1)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2[1]];
          [v8 setObject:v9 forKeyedSubscript:@"clusterStatus"];
        }

        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRInteractionErrorDomain" code:*a2 userInfo:v8];

        goto LABEL_51;
      }

      switch(v3)
      {
        case 0xCCu:
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v4 localizedStringForKey:@"A CommandDataIB is missing a response in the InvokeResponses of an Invoke Response action." value:&stru_284BD0DD8 table:0];
          goto LABEL_48;
        case 0xCFu:
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v4 localizedStringForKey:@"The value for the data type was not accepted due to runtime validation issues. Command or action not carried out." value:&stru_284BD0DD8 table:0];
          goto LABEL_48;
        case 0xD1u:
          v4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v4 localizedStringForKey:@"Attempt to process on a transport type not valid for this element. Command or action not carried out." value:&stru_284BD0DD8 table:0];
          goto LABEL_48;
      }
    }

LABEL_23:
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"Operation was not successful." value:&stru_284BD0DD8 table:0];
    goto LABEL_48;
  }

  switch(*a2)
  {
    case 0x7Du:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Subscription ID is not active." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x7Eu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The sender of the action or command does not have authorization or access." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x7Fu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The endpoint indicated is unsupported on the node." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x80u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The action is malformed value:has missing fields table:{or fields with invalid values. Action not carried out.", &stru_284BD0DD8, 0}];
      goto LABEL_48;
    case 0x81u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The specified action or command indicated is not supported on the device.Command or action not carried out." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x82u:
    case 0x83u:
    case 0x84u:
    case 0x8Au:
    case 0x8Eu:
    case 0x90u:
    case 0x91u:
    case 0x93u:
    case 0x95u:
    case 0x96u:
    case 0x97u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0x9Bu:
      goto LABEL_23;
    case 0x85u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The cluster command is malformed value:has missing fields table:{or fields with invalid values.Command not carried out.", &stru_284BD0DD8, 0}];
      goto LABEL_48;
    case 0x86u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The specified attribute or attribute data field or entry does not exist on the device." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x87u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Out of range error or set to a reserved value." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x88u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Attempt to write a read-only attribute." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x89u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"An action or operation failed due to insufficient available resources. " value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x8Bu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The indicated data field or entry could not be found." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x8Cu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Reports cannot be issued for this attribute." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x8Du:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The data type indicated is undefined or invalid for the indicated data field. Command or action not carried out." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x8Fu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Attempt to read a write-only attribute." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x92u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Cluster instance data version did not match request path." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x94u:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The transaction was aborted due to time being exceeded." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x9Cu:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"The receiver is busy processing another action that prevents the execution of the incoming action." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    case 0x9Du:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 localizedStringForKey:@"Access to the action or command by the sender is permitted by the ACL but restricted by the ARL." value:&stru_284BD0DD8 table:0];
      goto LABEL_48;
    default:
      if (*a2)
      {
        goto LABEL_23;
      }

      v6 = 0;
      break;
  }

LABEL_51:

  return v6;
}

id sub_23921D3B8(uint64_t a1, unsigned __int8 a2)
{
  v3 = objc_opt_self();
  v6 = a2;
  v7 = 0;
  v4 = sub_23921CB28(v3, &v6);

  return v4;
}

unint64_t sub_23921D408(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 domain];

    if (v3 == @"MTRInteractionErrorDomain")
    {
      buf[0] = [v2 code];
      *&buf[1] = 0;
      v8 = [v2 userInfo];
      if (v8)
      {
        v9 = [v2 userInfo];
        v10 = [v9 objectForKeyedSubscript:@"clusterStatus"];

        if (v10)
        {
          v11 = [v2 userInfo];
          v12 = [v11 objectForKeyedSubscript:@"clusterStatus"];
          buf[1] = [v12 unsignedCharValue];
          buf[2] = 1;
        }
      }

      v13 = sub_2393DD584(buf);
      v7 = v13;
      v6 = v13 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = [v2 domain];

      if (v4 == @"MTRErrorDomain")
      {
        v16 = objc_opt_class();
        v17 = objc_getAssociatedObject(v2, v16);
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v6 = 0;
          v7 = 30;
          switch([v2 code])
          {
            case 1:
              v19 = [v2 userInfo];
              v20 = [v19 objectForKeyedSubscript:@"errorCode"];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v7 = [v20 unsignedLongValue];

                goto LABEL_11;
              }

              goto LABEL_39;
            case 2:
              goto LABEL_16;
            case 3:
              v6 = 0;
              v7 = 143;
              goto LABEL_16;
            case 4:
              v6 = 0;
              v7 = 47;
              goto LABEL_16;
            case 5:
              v6 = 0;
              v7 = 24;
              goto LABEL_16;
            case 6:
              v6 = 0;
              v7 = 3;
              goto LABEL_16;
            case 8:
              v6 = 0;
              v7 = 19;
              goto LABEL_16;
            case 9:
              v6 = 0;
              v7 = 50;
              goto LABEL_16;
            case 10:
              v6 = 0;
              v7 = 25;
              goto LABEL_16;
            case 11:
              v6 = 0;
              v7 = 126;
              goto LABEL_16;
            case 13:
              v6 = 0;
              v7 = 142;
              goto LABEL_16;
            case 14:
              v6 = 0;
              v7 = 176;
              goto LABEL_16;
            case 15:
              v6 = 0;
              v7 = 179;
              goto LABEL_16;
            case 16:
              v6 = 0;
              v7 = 116;
              goto LABEL_16;
            case 17:
              v6 = 0;
              v7 = 165;
              goto LABEL_16;
            case 18:
              v6 = 0;
              v7 = 219;
              goto LABEL_16;
            case 19:
              v6 = 0;
              v7 = 216;
              goto LABEL_16;
            default:
LABEL_39:
              v6 = 0;
              goto LABEL_9;
          }
        }

        v18 = [v17 error];
        v7 = v18;
        v6 = v18 & 0xFFFFFFFF00000000;
      }

      else
      {
        v5 = sub_2393D9044(9u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v2;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Trying to convert non-Matter error %@ to a Matter error code", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v6 = 0x14700000000;
LABEL_9:
        v7 = 172;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_11:
    v6 = 0;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

void sub_23921D8FC(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v6 = v1;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Invalid argument: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v4 = v1;
    sub_2393D5320(0, 1);
  }

  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v1 userInfo:{0, v4}];
  objc_exception_throw(v3);
}

void sub_23921E488(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_23921FFF0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = &v9;
  v7 = 600;
  if (sub_2394A2688(*a1, *(a1 + 8), &v6))
  {
    v1 = sub_2393D9044(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v2;
      _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "Failed to convert Matter certificate to X.509 DER: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v3 = 0;
  }

  else
  {
    sub_238DB6950(&buf, v6, v7);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

unint64_t sub_239220D54(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MTRCertificates convertX509Certificate:a1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_238DB6950(buf, [v7 bytes], objc_msgSend(v7, "length"));

    v17 = *buf;
    v15 = 0;
    v16 = 0;
    v8 = sub_2394A03F4(&v17, &v15, &v16);
    v9 = v8;
    if (v8)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unable to extract node ID and fabric ID from operational certificate: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v12 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      *a2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
      [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
      *a3 = v12 = 0;
    }
  }

  else
  {
    v12 = 0x2A00000000;
    v9 = 47;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 | v9;
}

BOOL sub_239220F58(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; i != 12; i += 4)
  {
    if (*(a1 + i))
    {
      ++v4;
    }
  }

  v6 = 0;
  for (j = 0; j != 12; j += 4)
  {
    if (*(a2 + j))
    {
      ++v6;
    }
  }

  if (v4 != v6)
  {
    return 0;
  }

  result = sub_239221020(a1);
  if (result)
  {
    result = sub_239221020(a2);
    if (result)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(a1 + v9);
        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = *(a2 + v11);
            v13 = v12 == v10 || v11 == 8;
            v11 += 4;
          }

          while (!v13);
          if (v12 != v10)
          {
            break;
          }
        }

        v9 += 4;
        if (v9 == 12)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_239221020(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + 4 * v2);
    if (v3)
    {
      break;
    }

LABEL_9:
    v1 = v2++ > 1;
    if (v2 == 3)
    {
      return v1;
    }
  }

  if (*(a1 + 4 * v2))
  {
    v4 = 0;
    while (1)
    {
      if (v2 != v4)
      {
        v5 = *(a1 + 4 * v4);
        if (v5)
        {
          if ((v5 ^ v3) < 0x10000)
          {
            break;
          }
        }
      }

      if (++v4 == 3)
      {
        goto LABEL_9;
      }
    }
  }

  return v1;
}

uint64_t sub_239221084(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = [v3 count];
  if (v4 >= 4)
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v27 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%llu CASE Authenticated Tags cannot be represented in a certificate.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v6 = 0x1E00000000;
    v7 = 47;
    goto LABEL_30;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v3 allObjects];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_29;
  }

  v11 = 0;
  v12 = *v22;
  while (2)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [*(*(&v21 + 1) + 8 * v13) unsignedLongLongValue];
      v16 = v15;
      if (HIDWORD(v15))
      {
        v17 = sub_2393D9044(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v27 = v16;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "0x%llx is not a valid CASE Authenticated Tag value.", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        v6 = 0x2600000000;
        goto LABEL_28;
      }

      if (!v15)
      {
        v18 = sub_2393D9044(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v27) = v16;
          _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "0x%x is not a valid CASE Authenticated Tag value.", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        v6 = 0x2C00000000;
LABEL_28:
        v7 = 47;
        goto LABEL_29;
      }

      v11 = v14 + 1;
      *(a2 + 4 * v14) = v15;
      ++v13;
      ++v14;
    }

    while (v10 != v13);
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v6 = 0;
    v7 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

id sub_2392213E0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = 0;
  for (i = 0; i != 12; i += 4)
  {
    if (*(a1 + i))
    {
      ++v3;
    }
  }

  v5 = [v2 initWithCapacity:v3];
  for (j = 0; j != 12; j += 4)
  {
    if (*(a1 + j))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v5 addObject:v7];
    }
  }

  v8 = [MEMORY[0x277CBEB98] setWithSet:v5];

  return v8;
}

uint64_t sub_2392214D0(void *a1, _DWORD *a2)
{
  [a1 timeIntervalSince1970];
  v4 = v3 * 1000000.0;
  if (v4 < 0x35D013B37E000)
  {
    return 0;
  }

  v5 = v4 - 946684800000000;
  if (v5 > 0xF423FFFFFFFFFLL)
  {
    return 0;
  }

  *a2 = v5 / 0xF4240;
  return 1;
}

BOOL sub_239221564(void *a1, void *a2)
{
  [a1 timeIntervalSince1970];
  v4 = (v3 * 1000000.0);
  if (v4 >= 0x35D013B37E000)
  {
    *a2 = v4 - 946684800000000;
  }

  return v4 > 0x35D013B37DFFFLL;
}

BOOL sub_2392215DC(void *a1, unint64_t *a2)
{
  [a1 timeIntervalSince1970];
  v4 = (v3 * 1000000.0);
  if (v4 >= 0x35D013B37E000)
  {
    *a2 = (v4 - 946684800000000) / 0x3E8;
  }

  return v4 > 0x35D013B37DFFFLL;
}

void sub_239222908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nullsub_56(&a13, a2);
  nullsub_56(&a33, v36);

  _Unwind_Resume(a1);
}

void sub_239222B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_2393F96B4(&a45);

  _Unwind_Resume(a1);
}

void sub_2392233F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MTRDeviceControllerXPCProxyHandle;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23922368C(uint64_t a1)
{
  v2 = [*(a1 + 32) proxyHandle];
  if (v2)
  {
LABEL_8:
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) workQueue];
    (*(v8 + 16))(v8, v9, v2);

    goto LABEL_9;
  }

  v3 = [*(a1 + 32) connectBlock];
  v4 = v3[2]();

  if (v4)
  {
    v5 = [*(a1 + 32) remoteDeviceServerProtocol];
    [v4 setRemoteObjectInterface:v5];

    v6 = [*(a1 + 32) remoteDeviceClientProtocol];
    [v4 setExportedInterface:v6];

    [v4 setExportedObject:*(a1 + 32)];
    [v4 resume];
    v2 = [[MTRDeviceControllerXPCProxyHandle alloc] initWithXPCConnection:v4];
    [*(a1 + 32) setProxyHandle:v2];
    objc_initWeak(location, *(a1 + 32));
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23922399C;
    v13[3] = &unk_278A72CD0;
    objc_copyWeak(&v14, location);
    [v4 setInvalidationHandler:v13];
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "CHIP XPC connection established", v12, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);

    goto LABEL_8;
  }

  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Cannot connect to XPC server for remote controller", location, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v11 = *(a1 + 40);
  v2 = [*(a1 + 32) workQueue];
  (*(v11 + 16))(v11, v2, 0);
LABEL_9:
}

void sub_23922399C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239223A48;
    block[3] = &unk_278A72320;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t sub_239223A48(uint64_t a1)
{
  [*(a1 + 32) setProxyHandle:0];
  [*(a1 + 32) setProxyRetainerForReports:0];
  v2 = [*(a1 + 32) reportRegistry];
  [v2 removeAllObjects];

  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "CHIP XPC connection disconnected", v5, 2u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    return sub_2393D5320(0, 3);
  }

  return result;
}

void sub_239223BF4(uint64_t a1)
{
  v9 = [*(a1 + 32) reportRegistry];
  v2 = [v9 count];

  v10 = [*(a1 + 32) reportRegistry];
  v3 = [v10 objectForKeyedSubscript:*(a1 + 40)];

  v4 = v3;
  if (!v3)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [*(a1 + 32) reportRegistry];
    [v5 setObject:v11 forKey:*(a1 + 40)];

    v4 = v11;
  }

  v12 = v4;
  v6 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v12 setObject:v6 forKey:*(a1 + 48)];
  }

  v7 = MEMORY[0x23EE78590](*(a1 + 56));
  [v6 addObject:v7];

  if (!v2)
  {
    v8 = [*(a1 + 32) proxyHandle];
    [*(a1 + 32) setProxyRetainerForReports:v8];
  }
}

void sub_239223E84(uint64_t a1)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23922401C;
  v13[3] = &unk_278A73DE0;
  v8 = *(a1 + 32);
  v2 = *(&v8 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v14 = v8;
  v15 = v4;
  v5 = MEMORY[0x23EE78590](v13);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_239224114;
  v9[3] = &unk_278A73E30;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v5;
  v7 = v5;
  [v6 getProxyHandleWithCompletion:v9];
}

void sub_23922401C(uint64_t a1)
{
  v2 = [*(a1 + 32) reportRegistry];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v3 = [v4 objectForKeyedSubscript:*(a1 + 48)];
    if (v3)
    {
      [v4 removeObjectForKey:*(a1 + 48)];
      if (![v4 count])
      {
        [*(a1 + 32) setProxyRetainerForReports:0];
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_239224114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_2393D9044(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "CHIP XPC connection requests to stop reports", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    v9 = [v6 proxy];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) unsignedLongLongValue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_239224320;
    v12[3] = &unk_278A73E08;
    v13 = v6;
    v14 = v5;
    v15 = *(a1 + 48);
    [v9 stopReportsWithController:v10 nodeId:v11 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "CHIP XPC connection failed to stop reporting", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_239224420(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportRegistry];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 64)];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (v5)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(a1 + 48);
            v11 = *(a1 + 56);
            (*(*(*(&v13 + 1) + 8 * v9) + 16))(*(*(&v13 + 1) + 8 * v9));
            ++v9;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2392246CC(void *a1)
{
  v2 = objc_opt_new();
  v3 = a1[1];
  a1[1] = v2;

  v4 = objc_opt_new();
  v5 = a1[2];
  a1[2] = v4;

  result = a1[9];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_239224744(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    dispatch_block_cancel(v2);
    v3 = *(a1 + 192);
    *(a1 + 192) = 0;
  }

  v9 = *(a1 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;

  v5 = MEMORY[0x23EE78590](*(a1 + 24));
  v6 = *(a1 + 16);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;

  v8 = MEMORY[0x23EE78590](*(a1 + 32));
  if (v5 && [v9 count])
  {
    (v5)[2](v5, v9);
  }

  if (v8 && [v6 count])
  {
    (v8)[2](v8, v6);
  }
}

void sub_23922485C(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    block[7] = v1;
    block[8] = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23922491C;
    block[3] = &unk_278A73E78;
    block[4] = a1;
    v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v5 = *(a1 + 192);
    *(a1 + 192) = v4;

    if (qword_27DF7BD08 != -1)
    {
      sub_23952CF0C(v6);
    }

    dispatch_async(qword_27DF7BCD0, *(a1 + 192));
  }
}

void sub_23922491C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_239224744(v1);
  v2 = objc_opt_new();
  v3 = *(v1 + 8);
  *(v1 + 8) = v2;

  v4 = objc_opt_new();
  v5 = *(v1 + 16);
  *(v1 + 16) = v4;
}

uint64_t sub_23922497C(uint64_t a1)
{
  sub_239224744(a1);
  result = *(a1 + 80);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_2392249CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_239224744(a1);

  sub_239224A20(a1, a2, a3, 0);
}

void sub_239224A20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_23921C1E4(MTRError, a2, a3);
  if (v6 && (*(a1 + 176) & 1) == 0)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = a1;
    v7 = MEMORY[0x23EE78590](*(a1 + 40));
    v8 = *(a1 + 40);
    *(a1 + 40) = 0;

    v9 = *(a1 + 24);
    *(a1 + 24) = 0;

    v10 = *(a1 + 32);
    *(a1 + 32) = 0;

    v11 = MEMORY[0x23EE78590](*(a1 + 184));
    v12 = *(a1 + 184);
    *(a1 + 184) = 0;

    v13 = (v7)[2](v7, v6);
    if (v11)
    {
      v13 = v11[2](v11);
    }

    if (a4)
    {
      *(a1 + 176) = 1;
      if (qword_27DF7BD08 != -1)
      {
        sub_23952CF0C(v13);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239225004;
      block[3] = &unk_278A73EA0;
      block[4] = v15;
      dispatch_async(qword_27DF7BCD0, block);
    }

    _Block_object_dispose(v15, 8);
  }
}

void sub_239224B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}