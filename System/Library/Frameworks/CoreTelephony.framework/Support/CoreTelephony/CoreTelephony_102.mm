void sub_1006A2110(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_1006A21B0(uint64_t a1, uint64_t a2)
{
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

void sub_1006A2214(uint64_t a1, uint64_t a2)
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

void sub_1006A2294(uint64_t a1, uint64_t a2)
{
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

uint64_t sub_1006A2300(uint64_t a1)
{
  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006A2398(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006A23EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006A23EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 136;
    do
    {
      if (*(v4 + 128) == 1)
      {
        v6 = (v4 + 104);
        sub_1006A1D8C(&v6);
      }

      if (*(v4 + 96) == 1 && *(v4 + 95) < 0)
      {
        operator delete(*(v4 + 72));
      }

      if (*(v4 + 64) == 1 && *(v4 + 63) < 0)
      {
        operator delete(*(v4 + 40));
      }

      if (*(v4 + 32) == 1)
      {
        if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        if (*(v4 - 32) == 1 && *(v4 - 33) < 0)
        {
          operator delete(*(v4 - 56));
        }

        if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
        {
          operator delete(*(v4 - 88));
        }

        if (*(v4 - 97) < 0)
        {
          operator delete(*(v4 - 120));
        }

        if (*(v4 - 121) < 0)
        {
          operator delete(*(v4 - 144));
        }
      }

      v5 = v4 - 144;
      v4 -= 280;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1006A2514(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1006A257C(uint64_t a1)
{
  v3 = (a1 + 256);
  sub_1006A2658(&v3);
  v3 = (a1 + 232);
  sub_1001C6984(&v3);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
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

  return a1;
}

void sub_1006A2658(void ***a1)
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
        v4 -= 384;
        sub_1006A1774(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_BYTE *sub_1006A26DC(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  a1[304] = 0;
  sub_1006A2710(a1, a2);
  return a1;
}

_BYTE *sub_1006A2710(_BYTE *result, _BYTE *a2)
{
  if (a2[304] == 1)
  {
    v2 = result;
    *result = *a2;
    result[8] = 0;
    result[296] = 0;
    if (a2[296] == 1)
    {
      result = sub_1002AF704((result + 16), (a2 + 16));
      v2[296] = 1;
    }

    v2[304] = 1;
  }

  return result;
}

_BYTE *sub_1006A2778(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[280] = 0;
  if (*(a2 + 280) == 1)
  {
    sub_1006A15E0(a1, a2);
  }

  return a1;
}

void sub_1006A27BC(uint64_t a1)
{
  if (*(a1 + 960) == 1)
  {
    sub_1006A257C(a1 + 680);
  }

  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  if (*(a1 + 648) == 1 && *(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 600) == 1 && *(a1 + 592) == 1)
  {
    sub_1002AF7A0(a1 + 312);
  }

  sub_1000DD0AC(a1 + 272, *(a1 + 280));
  if (*(a1 + 264) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(a1);
}

_BYTE *sub_1006A28D8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[968] = 0;
  if (*(a2 + 968) == 1)
  {
    sub_1006A0E28(a1, a2);
  }

  return a1;
}

uint64_t sub_1006A291C(uint64_t a1)
{
  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 184) == 1)
  {
    v3 = (a1 + 160);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006A29E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    sub_1006A2A54(a1 + 24, a2 + 24);
    *(a1 + 96) = 1;
  }

  return a1;
}

uint64_t sub_1006A2A54(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1006A2A8C(a1, a2);
  return a1;
}

uint64_t sub_1006A2A8C(uint64_t a1, uint64_t a2)
{
  result = sub_1006A2AF0(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E6FFA0[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

uint64_t sub_1006A2AF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 != -1)
  {
    result = (off_101E6FF90[v2])(&v3, result);
  }

  *(v1 + 64) = -1;
  return result;
}

void sub_1006A2B48(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      *(a2 + 32) = v3;
      operator delete(v3);
    }
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void sub_1006A2BAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      *(a2 + 32) = v3;
      operator delete(v3);
    }
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t sub_1006A2C10(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(result + 48) = 1;
  }

  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t sub_1006A2C7C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(result + 48) = 1;
  }

  *(result + 56) = *(a2 + 56);
  return result;
}

__n128 sub_1006A2CE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 24) = result;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  return result;
}

uint64_t sub_1006A2D54(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 280) == 1)
  {
    if (*(a1 + 272) == 1)
    {
      v3 = *(a1 + 248);
      if (v3)
      {
        *(a1 + 256) = v3;
        operator delete(v3);
      }
    }

    v4 = *(a1 + 208);
    if (v4)
    {
      *(a1 + 216) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 200) == 1)
  {
    sub_1006A2AF0(a1 + 128);
    v5 = *(a1 + 104);
    if (v5)
    {
      *(a1 + 112) = v5;
      operator delete(v5);
    }
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006A2E30(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(result + 64) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_1006A2AF0(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_101E6FFB0[v4])(v6);
    }
  }

  return result;
}

void sub_1006A2EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    sub_1006A2AF0(a1);
    sub_1006A2C10(a1, a3);
    *(a1 + 64) = 0;
  }

  else
  {
    sub_100015184(a2, a3);
    sub_1004EDCD0(a2 + 24, (a3 + 24));
    *(a2 + 56) = *(a3 + 56);
  }
}

void sub_1006A2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    sub_100015184(a2, a3);
    sub_1004EDCD0(a2 + 24, (a3 + 24));
    *(a2 + 56) = *(a3 + 56);
  }

  else
  {
    sub_1006A2AF0(a1);
    sub_1006A2C7C(a1, a3);
    *(a1 + 64) = 1;
  }
}

uint64_t sub_1006A2FA0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100034C50(a1, *a2, a2[1], a2[1] - *a2);
  sub_1006A7F6C(a1 + 24, (a2 + 3));
  *(a1 + 96) = 1;
  return a1;
}

void sub_1006A2FF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A3010(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[968] = 0;
  if (*(a2 + 968) == 1)
  {
    sub_1006A3078(a1, a2);
    a1[968] = 1;
  }

  return a1;
}

void sub_1006A3058(_Unwind_Exception *exception_object)
{
  if (*(v1 + 968) == 1)
  {
    sub_1006A27BC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A3078(uint64_t a1, uint64_t a2)
{
  ctu::OsLogLogger::OsLogLogger(a1, a2);
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  v7 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v8;
  }

  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v9;
  if (*(a2 + 159) < 0)
  {
    sub_100005F2C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
  }

  v11 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v11;
  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v12 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v12;
  }

  v13 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v13;
  sub_1006A7ED8((a1 + 224), (a2 + 224));
  sub_1006A337C((a1 + 272), a2 + 272);
  sub_1006A3824((a1 + 296), (a2 + 296));
  sub_1006A3B5C((a1 + 608), (a2 + 608));
  if (*(a2 + 679) < 0)
  {
    sub_100005F2C((a1 + 656), *(a2 + 656), *(a2 + 664));
  }

  else
  {
    v14 = *(a2 + 656);
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 656) = v14;
  }

  sub_1006A3BF8((a1 + 680), a2 + 680);
  return a1;
}

void sub_1006A3250(_Unwind_Exception *a1)
{
  if (*(v1 + 648) == 1 && *(v1 + 631) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 600) == 1 && *(v1 + 592) == 1)
  {
    sub_1002AF7A0(v1 + 312);
  }

  sub_1000DD0AC(v1 + 272, *(v1 + 280));
  sub_10067A5EC(v1 + 176);
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v1);
  _Unwind_Resume(a1);
}

void sub_1006A3364()
{
  if (*(v0 + 199) < 0)
  {
    operator delete(*(v0 + 176));
  }

  JUMPOUT(0x1006A3304);
}

void *sub_1006A337C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006A33D4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1006A33D4(uint64_t result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006A345C(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_1006A345C(void *a1, void *a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_1006A34FC(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1006A3690();
  }

  return v3;
}

uint64_t *sub_1006A34FC(void *a1, void *a2, void *a3, uint64_t *a4, void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1009172C4(a5, a2 + 4))
  {
    if (!sub_1009172C4(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1009172C4(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1009172C4(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1006A3708(a1, a3, a5);
}

void *sub_1006A3708(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1009172C4(a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1009172C4(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

char *sub_1006A3790(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1006A3808(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A3824(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  a1[304] = 0;
  if (a2[304] == 1)
  {
    *a1 = *a2;
    sub_1006A38A0(a1 + 8, (a2 + 8));
    a1[304] = 1;
  }

  return a1;
}

void sub_1006A3874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 304) == 1 && *(v1 + 296) == 1)
  {
    sub_1002AF7A0(v1 + 16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A38A0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[288] = 0;
  if (*(a2 + 288) == 1)
  {
    sub_1006A390C((a1 + 8), a2 + 8);
    a1[288] = 1;
  }

  return a1;
}

void sub_1006A38EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 288) == 1)
  {
    sub_1002AF7A0(v1 + 8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A390C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_1006A3954(a1, a2);
  return a1;
}

uint64_t sub_1006A3954(uint64_t a1, uint64_t a2)
{
  result = sub_1002AF7A0(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E6FFC0[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

char *sub_1006A39B8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_100034C50((__dst + 48), *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
  *(__dst + 9) = 0;
  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  sub_100034C50((__dst + 72), *(a2 + 9), *(a2 + 10), *(a2 + 10) - *(a2 + 9));
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  sub_100034C50((__dst + 96), *(a2 + 12), *(a2 + 13), *(a2 + 13) - *(a2 + 12));
  *(__dst + 15) = *(a2 + 15);
  return __dst;
}

void sub_1006A3A90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A3AF4(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[128] = 0;
  if (*(a2 + 128) == 1)
  {
    sub_1006A39B8(__dst, a2);
    __dst[128] = 1;
  }

  return __dst;
}

void sub_1006A3B3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 128) == 1)
  {
    sub_1006A0334(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A3B5C(_BYTE *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[40] = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    v5 = *(a2 + 3);
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v5;
    __dst[40] = 1;
  }

  return __dst;
}

void sub_1006A3BD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A3BF8(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[280] = 0;
  if (*(a2 + 280) == 1)
  {
    sub_1006A3C60(__dst, a2);
    __dst[280] = 1;
  }

  return __dst;
}

void sub_1006A3C40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 280) == 1)
  {
    sub_1006A257C(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A3C60(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    sub_100005F2C(__dst + 192, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = a2[12];
    *(__dst + 26) = *(a2 + 26);
    *(__dst + 12) = v12;
  }

  v13 = *(a2 + 216);
  *(__dst + 29) = 0;
  *(__dst + 216) = v13;
  *(__dst + 30) = 0;
  *(__dst + 31) = 0;
  sub_1006A3F44((__dst + 232), *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 4));
  *(__dst + 32) = 0;
  *(__dst + 33) = 0;
  *(__dst + 34) = 0;
  sub_1006A40C8((__dst + 256), *(a2 + 32), *(a2 + 33), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 33) - *(a2 + 32)) >> 7));
  return __dst;
}

void sub_1006A3E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 191) < 0)
  {
    operator delete(*(v10 + 168));
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A3F44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_1006A3FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A3FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1006A407C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A40C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A4150(result, a4);
  }

  return result;
}

void sub_1006A4130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006A2658(&a9);
  _Unwind_Resume(a1);
}

void sub_1006A4150(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    sub_1006A419C(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1006A419C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006A41F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = a4 + v7;
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
      }

      sub_1006A42D8(a4 + v7 + 32, a2 + v7 + 32);
      v7 += 384;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1006A4290(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 384;
    v5 = -v2;
    do
    {
      sub_1006A1774(v4);
      v4 -= 384;
      v5 += 384;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A42D8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 344) = -1;
  sub_1006A4320(a1, a2);
  return a1;
}

uint64_t sub_1006A4320(uint64_t a1, uint64_t a2)
{
  result = sub_1006A17C4(a1);
  v5 = *(a2 + 344);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E6FFD0[v5])(&v6, a2);
    *(a1 + 344) = v5;
  }

  return result;
}

__n128 sub_1006A4384(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t sub_1006A4394(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100034C50(v2, *a2, a2[1], a2[1] - *a2);
}

uint64_t sub_1006A43B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100034C50(v2, *a2, a2[1], a2[1] - *a2);
}

uint64_t sub_1006A43CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_100034C50(v2, *a2, a2[1], a2[1] - *a2);
}

_BYTE **sub_1006A43E8(_BYTE **result, __int128 *a2)
{
  v3 = *result;
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(*result, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(v3 + 24) = *(a2 + 3);
  return result;
}

uint64_t sub_1006A443C(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  sub_1006A4688(*a1, a2);
  sub_1006A47A0((v3 + 144), (a2 + 9));
  return sub_10006F264(v3 + 296, (a2 + 296));
}

void sub_1006A4480(_Unwind_Exception *a1)
{
  sub_1006A1AB4(v1 + 144);
  sub_1006A1B30(v1);
  _Unwind_Resume(a1);
}

void *sub_1006A44AC(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *result;
  *v4 = *a2;
  v5 = v4 + 2;
  if (*(a2 + 31) < 0)
  {
    result = sub_100005F2C(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v5 + 2) = *(a2 + 24);
    *v5 = v6;
  }

  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(v3 + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(v3 + 2) = v7;
  }

  *(v3 + 7) = *(a2 + 56);
  return result;
}

void sub_1006A453C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1006A4558(uint64_t *result, __int128 *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *v3 = v4;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C((v3 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C((v3 + 56), *(a2 + 7), *(a2 + 8));
  }

  v6 = *(a2 + 56);
  *(v3 + 72) = *(a2 + 9);
  *(v3 + 56) = v6;
  return result;
}

void sub_1006A45DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A45F8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100005F2C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_1006A4624(_BYTE **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1006A5B50(*a1, a2);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v4 + 9) = 0;
  return sub_1006A5C3C((v4 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
}

uint64_t sub_1006A4688(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_10006F264(a1 + 24, (a2 + 24));
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v6 = a2[5];
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 80) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v7;
  }

  *(a1 + 128) = a2[8];
  return a1;
}

void sub_1006A4748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A47A0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[144] = 0;
  if (*(a2 + 144) == 1)
  {
    sub_1006A4688(a1, a2);
    a1[144] = 1;
  }

  return a1;
}

void sub_1006A47E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1)
  {
    sub_1006A1B30(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A4808(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[336] = 0;
  if (*(a2 + 336) == 1)
  {
    sub_1006A4870(a1, a2);
    a1[336] = 1;
  }

  return a1;
}

void sub_1006A4850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 336) == 1)
  {
    sub_1006A1BA0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4870(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 328) = -1;
  sub_1006A48B8(a1, a2);
  return a1;
}

uint64_t sub_1006A48B8(uint64_t a1, uint64_t a2)
{
  result = sub_1006A1BA0(a1);
  v5 = *(a2 + 328);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70028[v5])(&v6, a2);
    *(a1 + 328) = v5;
  }

  return result;
}

uint64_t sub_1006A491C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  *v3 = *a2;
  sub_1006A4ACC(v3 + 16, a2 + 1);
  sub_1006A4B1C((v3 + 48), (a2 + 3));
  sub_1006A4CB4(v3 + 232, (a2 + 232));
  sub_1006A4D04(v3 + 264, (a2 + 264));
  return sub_1006A4D54(v3 + 296, a2 + 296);
}

void sub_1006A4980(_Unwind_Exception *a1)
{
  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1 && *(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  sub_100191184(v1 + 48);
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006A4A00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  sub_1006A4ACC(v3 + 16, a2 + 1);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  return sub_1006A5844(v3 + 48, a2[6], a2[7], 0xAF8AF8AF8AF8AF8BLL * ((a2[7] - a2[6]) >> 3));
}

void sub_1006A4A70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4A98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1006A4E18(v2, *a2, a2[1], 0x34F72C234F72C235 * ((a2[1] - *a2) >> 3));
}

uint64_t sub_1006A4ACC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A4AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A4B1C(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[176] = 0;
  if (*(a2 + 176) == 1)
  {
    sub_1006A4B84(__dst, a2);
    __dst[176] = 1;
  }

  return __dst;
}

void sub_1006A4B64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    sub_1006A2300(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A4B84(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_10006F264((__dst + 56), (a2 + 56));
  sub_10006F264((__dst + 88), (a2 + 88));
  v6 = *(a2 + 120);
  *(__dst + 34) = *(a2 + 34);
  *(__dst + 120) = v6;
  sub_10006F264((__dst + 144), a2 + 9);
  return __dst;
}

void sub_1006A4C38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4CB4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A4CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4D04(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A4D34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4D54(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1006A4DB0(a1, a2);
  return a1;
}

void sub_1006A4D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1006A1D8C(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A4DB0(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1006A4E18(result, *a2, *(a2 + 8), 0x34F72C234F72C235 * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1006A4E18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A4EA0(result, a4);
  }

  return result;
}

void sub_1006A4E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006A1D8C(&a9);
  _Unwind_Resume(a1);
}

void sub_1006A4EA0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_1006A4EF0(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1006A4EF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006A4F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_1006A4FEC(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 232;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1006A4FC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 224;
    do
    {
      sub_1006A1E14(v5);
      v5 -= 232;
      v4 += 232;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A4FEC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  sub_1006A5034(a1, a2);
  return a1;
}

uint64_t sub_1006A5034(uint64_t a1, uint64_t a2)
{
  result = sub_1006A1E14(a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70040[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

uint64_t sub_1006A5098(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = v4 + 2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v5 + 2) = *(a2 + 24);
    *v5 = v6;
  }

  sub_1006A51B0((v3 + 8), (a2 + 32));
  return sub_1006A5200((v3 + 18), a2 + 72);
}

uint64_t sub_1006A513C(_BYTE **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  return sub_1006A51B0(v3 + 24, (a2 + 24));
}

void sub_1006A5194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A51B0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A51E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5200(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  sub_1006A5248(a1, a2);
  return a1;
}

uint64_t sub_1006A5248(uint64_t a1, uint64_t a2)
{
  result = sub_1006A1F3C(a1);
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70050[v5])(&v6, a2);
    *(a1 + 136) = v5;
  }

  return result;
}

void *sub_1006A52AC(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *result;
  *v4 = *a2;
  v5 = v4 + 2;
  if (*(a2 + 31) < 0)
  {
    result = sub_100005F2C(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v5 + 2) = *(a2 + 24);
    *v5 = v6;
  }

  if (*(a2 + 55) < 0)
  {
    return sub_100005F2C(v3 + 32, *(a2 + 32), *(a2 + 40));
  }

  v7 = *(a2 + 32);
  *(v3 + 6) = *(a2 + 48);
  *(v3 + 2) = v7;
  return result;
}

void sub_1006A5334(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A5350(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100005F2C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

_BYTE **sub_1006A537C(_BYTE **result, __int128 *a2)
{
  v3 = *result;
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(*result, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  if (*(a2 + 47) < 0)
  {
    return sub_100005F2C((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  v5 = *(a2 + 24);
  *(v3 + 40) = *(a2 + 5);
  *(v3 + 24) = v5;
  return result;
}

void sub_1006A53F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A540C(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100005F2C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void *sub_1006A5438(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100005F2C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_1006A5464(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  sub_1006A56CC(v3 + 24, (a2 + 24));
  sub_10006F264(v3 + 56, (a2 + 56));
  return sub_10006F264(v3 + 88, (a2 + 88));
}

void sub_1006A54BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5520(_BYTE **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  return sub_10006F264(v3 + 24, (a2 + 24));
}

void sub_1006A5578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5594(_BYTE **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  sub_10006F264(v3 + 24, (a2 + 24));
  return sub_10006F264(v3 + 56, (a2 + 56));
}

void sub_1006A55F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5638(_BYTE **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  return sub_10006F264(v3 + 24, (a2 + 24));
}

void sub_1006A5690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A56CC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A56FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006A571C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  sub_10006F264((__dst + 72), (a2 + 72));
  sub_10006F264((__dst + 104), (a2 + 104));
  return __dst;
}

void sub_1006A57D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5844(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001913F8(result, a4);
  }

  return result;
}

void sub_1006A58AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006A2398(&a9);
  _Unwind_Resume(a1);
}

char *sub_1006A58CC(uint64_t a1, uint64_t a2, uint64_t a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1006A4B1C(v4, v6);
      sub_1006A4CB4((v4 + 184), (v6 + 184));
      sub_1006A4D04((v4 + 216), (v6 + 216));
      sub_1006A4D54((v4 + 248), v6 + 248);
      v6 += 280;
      v4 = v11 + 280;
      v11 += 280;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1006A59E8(v8);
  return v4;
}

uint64_t sub_1006A59E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006A5A34(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1006A5A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[3] = v5;
    v10[4] = v6;
    v8 = a3 - 280;
    do
    {
      if (*(v8 + 272) == 1)
      {
        v10[0] = (v8 + 248);
        sub_1006A1D8C(v10);
      }

      if (*(v8 + 240) == 1 && *(v8 + 239) < 0)
      {
        operator delete(*(v8 + 216));
      }

      if (*(v8 + 208) == 1 && *(v8 + 207) < 0)
      {
        operator delete(*(v8 + 184));
      }

      if (*(v8 + 176) == 1)
      {
        if (*(v8 + 168) == 1 && *(v8 + 167) < 0)
        {
          operator delete(*(v8 + 144));
        }

        if (*(v8 + 112) == 1 && *(v8 + 111) < 0)
        {
          operator delete(*(v8 + 88));
        }

        if (*(v8 + 80) == 1 && *(v8 + 79) < 0)
        {
          operator delete(*(v8 + 56));
        }

        if (*(v8 + 47) < 0)
        {
          operator delete(*(v8 + 24));
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }
      }

      v9 = v8 == a5;
      v8 -= 280;
    }

    while (!v9);
  }
}

_BYTE *sub_1006A5B50(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    sub_10006F264(a1, a2);
    sub_1006A5BEC((a1 + 32), (a2 + 32));
    a1[64] = 1;
  }

  return a1;
}

void sub_1006A5BA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 64) == 1)
  {
    sub_100554110(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5BEC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1006A5C1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5C3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5CC4(result, a4);
  }

  return result;
}

void sub_1006A5CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1005809F0(&a9);
  _Unwind_Resume(a1);
}

void sub_1006A5CC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1006A5D10(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1006A5D10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_1006A5D68(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1006A5E2C(v4, *v6, v6[1], 0x2E8BA2E8BA2E8BA3 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1006A6180(v8);
  return v4;
}

uint64_t sub_1006A5E2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5EB4(result, a4);
  }

  return result;
}

void sub_1006A5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100580A64(&a9);
  _Unwind_Resume(a1);
}

void sub_1006A5EB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1006A5F04(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1006A5F04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006A5F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_10006F264(v4, v6);
      *(v4 + 32) = *(v6 + 32);
      sub_1006A6040((v4 + 40), v6 + 40);
      *(v4 + 80) = *(v6 + 80);
      v6 += 88;
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1006A60A8(v8);
  return v4;
}

_BYTE *sub_1006A6040(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_10006F264(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_1006A6088(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1017618D0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A60A8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006A60F4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1006A60F4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      if (*(v6 - 16) == 1 && *(v6 - 24) == 1 && *(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      v6 -= 11;
      if (*(v7 - 64) == 1 && *(v7 - 65) < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_1006A6180(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006A61B8(a1);
  }

  return a1;
}

void sub_1006A61B8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_100580A64(&v3);
  }
}

uint64_t sub_1006A6204(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_101E700B8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_1006A6260(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1006A6284(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_100422B44(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_100004A34(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

BOOL sub_1006A6308(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = sub_1009CE9A4(*a2, a1[1]);
  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
    sub_100914440((*a2 + 152), __p);
    sub_10091665C(*a2, buf);
    v12 = __p;
    v5 = sub_1006A64C4(v3 + 304, __p);
    v6 = v5;
    if (*(v5 + 79) < 0)
    {
      operator delete(*(v5 + 56));
    }

    *(v6 + 56) = *buf;
    *(v6 + 72) = v14;
    v7 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Storing retired conversationID: %s", buf, 0xCu);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_1006A6484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A64C4(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1006A6578();
  }

  return v2;
}

char *sub_1006A6604(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_100C18024(__dst + 24);
  return __dst;
}

void sub_1006A665C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A6678(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1006A66D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100581FF4(result, a4);
  }

  return result;
}

void sub_1006A673C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003CA58(&a9);
  _Unwind_Resume(a1);
}

void *sub_1006A675C(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_1005820F8(v10);
  return v4;
}

uint64_t sub_1006A6824(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_100559E88(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  sub_1006A6944(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D512C(&v16);
  return v15;
}

void sub_1006A6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D512C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A6944(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_1005820F8(v9);
}

void sub_1006A6A00(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1000FA138(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10009A404(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1000FA3BC(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_100004A34(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1000FA3BC(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1006A6B40(a1, (a2 + v12), a3, a1[1]);
  }
}

void *sub_1006A6B40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1006A6BC8(v7);
  return v4;
}

uint64_t sub_1006A6BC8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1006A6C00(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_1006A6C38(a1, a2);
  return a1;
}

uint64_t sub_1006A6C38(uint64_t a1, uint64_t a2)
{
  result = sub_100584588(a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E700E8[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_1006A6C9C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_101E70100[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

uint64_t sub_1006A6D48(void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    sub_1000A58E4("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_1006A6DB8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_1006A6DF0(a1, a2);
  return a1;
}

uint64_t sub_1006A6DF0(uint64_t a1, uint64_t a2)
{
  result = sub_100584468(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70110[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_1006A6E54(uint64_t a1)
{
  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 112) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1006A6F8C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70138;
  sub_1006A7068((a1 + 3), a2, a3);
  return a1;
}

void sub_1006A7008(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70138;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006A7068(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D1A74(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_1006A70C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A70DC(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1006A71A4(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70188;
  sub_1006A729C((a1 + 3), a2, a3);
  return a1;
}

void sub_1006A7220(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006A729C(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  sub_1000D4128(v6, a3);
  sub_1000D1BD0(a1, v4, v6);
  sub_1000D45B0(v6);
  return a1;
}

void sub_1006A72F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D45B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A730C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v3 = (a1 + 24);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1006A73EC(void *a1, int *a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E701D8;
  sub_1006A74E4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1006A7468(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E701D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006A74E4(uint64_t a1, int *a2, uint64_t *a3, int *a4)
{
  v7 = *a2;
  memset(v9, 0, sizeof(v9));
  sub_10004EFD0(v9, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  memset(v10, 0, sizeof(v10));
  sub_1000D4704(v10, a3[3], a3[4], (a3[4] - a3[3]) >> 5);
  sub_1000D2CA4(a1, v7, v9, *a4);
  v11 = v10;
  sub_1000D48DC(&v11);
  v11 = v9;
  sub_1000087B4(&v11);
  return a1;
}

void sub_1006A75A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D2230(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A75D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A7658(result, a4);
  }

  return result;
}

void sub_1006A7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000D4DE8(&a9);
  _Unwind_Resume(a1);
}

void sub_1006A7658(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_1000D4BCC(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1006A7694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      v13 = *(a2 + v7 + 24);
      *(v11 + 28) = *(a2 + v7 + 28);
      *(v11 + 24) = v13;
      if (*(a2 + v7 + 55) < 0)
      {
        sub_100005F2C((v11 + 32), *(v12 + 32), *(v12 + 40));
      }

      else
      {
        v14 = *(v12 + 32);
        *(v11 + 48) = *(v12 + 48);
        *(v11 + 32) = v14;
      }

      *(a4 + v7 + 56) = *(a2 + v7 + 56);
      v7 += 64;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1006A7764(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      sub_1000D4D40(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A7834(void *a1, int *a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70228;
  sub_1006A792C((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1006A78B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006A792C(uint64_t a1, int *a2, uint64_t *a3, int *a4)
{
  v7 = *a2;
  memset(v9, 0, sizeof(v9));
  sub_10004EFD0(v9, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  memset(v10, 0, sizeof(v10));
  sub_1000D4704(v10, a3[3], a3[4], (a3[4] - a3[3]) >> 5);
  sub_1000D2F94(a1, v7, v9, *a4);
  v11 = v10;
  sub_1000D48DC(&v11);
  v11 = v9;
  sub_1000087B4(&v11);
  return a1;
}

void sub_1006A79F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D2230(va);
  _Unwind_Resume(a1);
}

void *sub_1006A7A84(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70278;
  sub_1000D35F4((a1 + 3), *a2);
  return a1;
}

void sub_1006A7B04(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006A7B80(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1006A7BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101779530(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006A7BFC(_BYTE *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[48] = 0;
  if (*(a2 + 48) == 1)
  {
    sub_1006A7C64(__dst, a2);
    __dst[48] = 1;
  }

  return __dst;
}

void sub_1006A7C44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A7C64(void *__dst, __int128 *a2)
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

  __dst[3] = *(a2 + 3);
  *(__dst + 2) = a2[2];
  return __dst;
}

uint64_t sub_1006A7CC4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) == 1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        *(a1 + 48) = v2;
        operator delete(v2);
      }
    }

    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

char *sub_1006A7D20(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  v6 = a2[3];
  *(__dst + 8) = *(a2 + 8);
  *(__dst + 3) = v6;
  sub_1006A7ED8(__dst + 72, (a2 + 72));
  v7 = *(a2 + 16);
  *(__dst + 15) = *(a2 + 15);
  *(__dst + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 159) < 0)
  {
    sub_100005F2C(__dst + 136, *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v8 = *(a2 + 136);
    *(__dst + 19) = *(a2 + 19);
    *(__dst + 136) = v8;
  }

  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  *(__dst + 22) = 0;
  sub_100034C50((__dst + 160), *(a2 + 20), *(a2 + 21), *(a2 + 21) - *(a2 + 20));
  *(__dst + 184) = *(a2 + 184);
  *(__dst + 50) = *(a2 + 50);
  sub_10006F264((__dst + 208), a2 + 13);
  sub_10006F264((__dst + 240), a2 + 15);
  __dst[272] = *(a2 + 272);
  return __dst;
}

void sub_1006A7E3C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10067A5EC(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1006A7EC0()
{
  if (*(v0 + 47) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x1006A7EA8);
}

char *sub_1006A7ED8(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[40] = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    *(__dst + 24) = *(a2 + 24);
    __dst[40] = 1;
  }

  return __dst;
}

void sub_1006A7F4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A7F6C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1006A7FB4(a1, a2);
  return a1;
}

uint64_t sub_1006A7FB4(uint64_t a1, uint64_t a2)
{
  result = sub_1006A2AF0(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E702B8[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

void sub_1006A8018(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 880))
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A8098(v5);
  }

  else
  {
    std::string::operator=(this, __str);
    sub_1006A8218(&this[1], &__str[1]);

    sub_1006A9A7C(&this[2].__r_.__value_.__l.__size_, &__str[2].__r_.__value_.__l.__size_);
  }
}

void sub_1006A8098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(__p, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v7 = *(v2 + 16);
    *__p = v3;
  }

  sub_10018F784(&v8, v2 + 24);
  sub_100190324(&v11, v2 + 56);
  sub_1006A9CB8(v1);
  v4 = *__p;
  *(v1 + 16) = v7;
  *v1 = v4;
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  v5 = v10;
  if (v10 == 1)
  {
    *(v1 + 24) = v8;
    *(v1 + 40) = v9;
    v8 = 0uLL;
    v9 = 0;
    *(v1 + 48) = 1;
  }

  *(v1 + 56) = 0;
  *(v1 + 80) = 0;
  if (v13 != 1)
  {
    *(v1 + 880) = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(v1 + 56) = v11;
  *(v1 + 72) = v12;
  v11 = 0uLL;
  v12 = 0;
  *(v1 + 80) = 1;
  *(v1 + 880) = 0;
  v14 = &v11;
  sub_100190608(&v14);
  if (v10)
  {
LABEL_10:
    v14 = &v8;
    sub_10019029C(&v14);
  }

LABEL_11:
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006A81DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    *(v19 - 40) = v18;
    sub_10019029C((v19 - 40));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A8218(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0x34F72C234F72C235 * ((v3 - *a2) >> 3);
      v5 = *a2;

      sub_1006A82F8(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_10019029C(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10018F848(a1, *a2, *(a2 + 8), 0x34F72C234F72C235 * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

uint64_t sub_1006A82F8(uint64_t result, _DWORD *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0x34F72C234F72C235 * ((*(result + 16) - *result) >> 3) < a4)
  {
    sub_1006A84C4(result);
    if (a4 <= 0x11A7B9611A7B961)
    {
      v9 = 0x69EE58469EE5846ALL * ((v7[2] - *v7) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x34F72C234F72C235 * ((v7[2] - *v7) >> 3)) >= 0x8D3DCB08D3DCB0)
      {
        v10 = 0x11A7B9611A7B961;
      }

      else
      {
        v10 = v9;
      }

      sub_10018F8D0(v7, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(result + 8);
  if (0x34F72C234F72C235 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v16 = a2;
      v17 = *result;
      do
      {
        v18 = *v16;
        v16 += 58;
        *v17 = v18;
        v17 += 58;
        result = sub_1006A8530((v8 + 2), (v6 + 2));
        v8 = v17;
        v6 = v16;
      }

      while (v16 != a3);
      v11 = v7[1];
      v8 = v17;
    }

    for (; v11 != v8; v11 -= 232)
    {
      result = sub_10018FAC8(v11 - 224);
    }

    v7[1] = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      v13 = a2;
      v14 = *result;
      do
      {
        v15 = *v13;
        v13 += 58;
        *v14 = v15;
        v14 += 58;
        sub_1006A8530((v8 + 2), (v6 + 2));
        v8 = v14;
        v6 = v13;
      }

      while (v13 != v12);
      v11 = v7[1];
    }

    result = sub_10018F97C(v7, v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void sub_1006A84C4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 232;
        sub_10018FAC8((v3 - 224));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1006A8530(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 216);
  if (*(result + 216) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10018FAC8(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_101E702C8[v4])(v6);
    }
  }

  return result;
}

void sub_1006A85B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 216))
  {
    v6[0] = a1;
    v6[1] = a3;
    sub_1006A864C(v6);
  }

  else
  {
    *a2 = *a3;
    v5 = a2 + 72;
    std::string::operator=((a2 + 8), (a3 + 8));
    sub_10012BF3C((a2 + 32), (a3 + 32));

    sub_1006A8780(v5, a3 + 72);
  }
}

void sub_1006A864C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (*(v2 + 31) < 0)
  {
    sub_100005F2C(v5, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    v6 = *(v2 + 24);
    *v5 = v3;
  }

  sub_100190010(&__p, (v2 + 32));
  sub_100190060(v10, v2 + 72);
  sub_10018FAC8(v1);
  sub_1006A980C(v1, &v4);
  *(v1 + 216) = 0;
  sub_10018FBF0(v10);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_1006A8780(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 136);
  if (*(result + 136) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10018FBF0(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_101E702D8[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_1006A8820(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 136) == 6)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_10018FBF0(*result);
    *v4 = *a3;
    *(v4 + 136) = 6;
  }

  return result;
}

uint64_t *sub_1006A8894(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 136) == 11)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_10018FBF0(*result);
    *v4 = *a3;
    v4[34] = 11;
  }

  return result;
}

uint64_t *sub_1006A88E8(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 136) == 12)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_10018FBF0(*result);
    *v4 = *a3;
    v4[34] = 12;
  }

  return result;
}

void sub_1006A893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136))
  {
    v5[0] = a1;
    v5[1] = a3;
    sub_1006A89B8(v5);
  }

  else
  {
    v3 = (a3 + 32);
    *a2 = *a3;
    v4 = (a2 + 32);
    std::string::operator=((a2 + 8), (a3 + 8));

    std::string::operator=(v4, v3);
  }
}

__n128 sub_1006A89B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v7 = *v2;
  if (*(v2 + 31) < 0)
  {
    sub_100005F2C(&v8, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    v9 = *(v2 + 24);
    v8 = v3;
  }

  if (*(v2 + 55) < 0)
  {
    sub_100005F2C(&v10, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v4 = *(v2 + 32);
    v11 = *(v2 + 48);
    v10 = v4;
  }

  sub_10018FBF0(v1);
  *v1 = v7;
  v5 = v8;
  *(v1 + 24) = v9;
  *(v1 + 8) = v5;
  result = v10;
  *(v1 + 48) = v11;
  *(v1 + 32) = result;
  *(v1 + 136) = 0;
  return result;
}

void sub_1006A8A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8A98(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 1)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_1006A8AE4(v6).n128_u64[0];
  }

  return result;
}

__n128 sub_1006A8AE4(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100005F2C(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_10018FBF0(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[8].n128_u32[2] = 1;
  return result;
}

double sub_1006A8B54(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 2)
  {
    std::string::operator=(this, __str);

    std::string::operator=(this + 1, __str + 1);
  }

  else
  {
    v6[0] = a1;
    v6[1] = __str;
    return sub_1006A8BCC(v6);
  }

  return result;
}

double sub_1006A8BCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(&v8, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v9 = *(v2 + 16);
    v8 = v3;
  }

  if (*(v2 + 47) < 0)
  {
    sub_100005F2C(&v10, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v4 = *(v2 + 24);
    v11 = *(v2 + 40);
    v10 = v4;
  }

  sub_10018FBF0(v1);
  v5 = v8;
  *(v1 + 16) = v9;
  *v1 = v5;
  v6 = v11;
  result = *&v10;
  *(v1 + 24) = v10;
  *(v1 + 40) = v6;
  *(v1 + 136) = 2;
  return result;
}

void sub_1006A8C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8C9C(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 3)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_1006A8CE8(v6).n128_u64[0];
  }

  return result;
}

__n128 sub_1006A8CE8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100005F2C(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_10018FBF0(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[8].n128_u32[2] = 3;
  return result;
}

double sub_1006A8D58(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 4)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = sub_1006A8DA4(v6).n128_u64[0];
  }

  return result;
}

__n128 sub_1006A8DA4(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100005F2C(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_10018FBF0(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[8].n128_u32[2] = 4;
  return result;
}

void sub_1006A8E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136) == 5)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 16);
    *a2 = v5;
    sub_1006A9084((a2 + 24), (a3 + 24));
    sub_10012BF3C((a2 + 64), (a3 + 64));

    sub_10012BF3C((a2 + 96), (a3 + 96));
  }

  else
  {
    v6[0] = a1;
    v6[1] = a3;
    sub_1006A8EA8(v6);
  }
}

void sub_1006A8EA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v7 = *v2;
  v8 = *(v2 + 16);
  sub_10019010C(v9, v2 + 24);
  sub_10006F264(&__p, (v2 + 64));
  sub_10006F264(&v16, (v2 + 96));
  sub_10018FBF0(v1);
  *(v1 + 16) = v8;
  *v1 = v7;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  if (v12 == 1)
  {
    *(v1 + 48) = 0;
    if (v11 == 1)
    {
      v3 = *v9;
      *(v1 + 40) = v10;
      *(v1 + 24) = v3;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      *(v1 + 48) = 1;
    }

    *(v1 + 56) = 1;
  }

  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  v4 = v15;
  if (v15 == 1)
  {
    v5 = __p;
    *(v1 + 80) = v14;
    *(v1 + 64) = v5;
    v14 = 0;
    __p = 0uLL;
    *(v1 + 88) = 1;
  }

  *(v1 + 96) = 0;
  *(v1 + 120) = 0;
  if (v18 == 1)
  {
    v6 = v16;
    *(v1 + 112) = v17;
    *(v1 + 96) = v6;
    v17 = 0;
    v16 = 0uLL;
    *(v1 + 120) = 1;
  }

  *(v1 + 136) = 5;
  if (v4 && SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v12 == 1 && v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1006A902C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (a20 == 1 && a18 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9084(std::string *__dst, std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[8] == a2[1].__r_.__value_.__s.__data_[8])
  {
    if (__dst[1].__r_.__value_.__s.__data_[8])
    {

      sub_10012BF3C(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[8])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    sub_10006F264(__dst, a2);
    __dst[1].__r_.__value_.__s.__data_[8] = 1;
  }
}

void sub_1006A9110(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 7)
  {
    std::string::operator=(this, __str);
    std::string::operator=(this + 1, __str + 1);
    std::string::operator=(this + 2, __str + 2);
    sub_10012BF3C(this + 3, __str + 3);

    sub_10012BF3C((this + 104), (__str + 104));
  }

  else
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A91AC(v5);
  }
}

void sub_1006A91AC(uint64_t a1)
{
  v1 = *a1;
  sub_100190174(__dst, *(a1 + 8));
  sub_10018FBF0(v1);
  sub_1006A9260(v1, __dst);
  *(v1 + 136) = 7;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  if (v3 < 0)
  {
    operator delete(__dst[0]);
  }
}

__n128 sub_1006A9260(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  result = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = result;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    result = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = result;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 9) = 0;
    *(a1 + 96) = 1;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    result = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = result;
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a1 + 128) = 1;
  }

  return result;
}

void sub_1006A931C(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 8)
  {
    std::string::operator=(this, __str);

    sub_10012BF3C(this + 1, __str + 1);
  }

  else
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A9394(v5);
  }
}

uint64_t sub_1006A9394(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(&v7, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v8 = *(v2 + 16);
    v7 = v3;
  }

  sub_10006F264(&v9, (v2 + 24));
  result = sub_10018FBF0(v1);
  v5 = v7;
  *(v1 + 16) = v8;
  *v1 = v5;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  if (v11 == 1)
  {
    v6 = v9;
    *(v1 + 40) = v10;
    *(v1 + 24) = v6;
    *(v1 + 48) = 1;
  }

  *(v1 + 136) = 8;
  return result;
}

void sub_1006A944C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9468(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 9)
  {
    std::string::operator=(this, __str);
    sub_10012BF3C(this + 1, __str + 1);

    sub_10012BF3C((this + 56), (__str + 56));
  }

  else
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A94EC(v5);
  }
}

void sub_1006A94EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(v4, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v5 = *(v2 + 16);
    *v4 = v3;
  }

  sub_10006F264(&v6, (v2 + 24));
  sub_10006F264(&__p, (v2 + 56));
  sub_1006A9604(v1, v4);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

uint64_t sub_1006A9604(uint64_t a1, __int128 *a2)
{
  sub_10018FBF0(a1);
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v6;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(a1 + 80) = 1;
  }

  *(a1 + 136) = 9;
  return a1;
}

void sub_1006A96C0(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 136) == 10)
  {
    std::string::operator=(this, __str);

    sub_10012BF3C(this + 1, __str + 1);
  }

  else
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A9738(v5);
  }
}

uint64_t sub_1006A9738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(&v7, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v8 = *(v2 + 16);
    v7 = v3;
  }

  sub_10006F264(&v9, (v2 + 24));
  result = sub_10018FBF0(v1);
  v5 = v7;
  *(v1 + 16) = v8;
  *v1 = v5;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  if (v11 == 1)
  {
    v6 = v9;
    *(v1 + 40) = v10;
    *(v1 + 24) = v6;
    *(v1 + 48) = 1;
  }

  *(v1 + 136) = 10;
  return result;
}

void sub_1006A97F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A980C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 1;
  }

  sub_1006A9894(a1 + 72, a2 + 72);
  return a1;
}

uint64_t sub_1006A9894(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  sub_1006A98CC(a1, a2);
  return a1;
}

uint64_t sub_1006A98CC(uint64_t a1, uint64_t a2)
{
  result = sub_10018FBF0(a1);
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70340[v5])(&v6, a2);
    *(a1 + 136) = v5;
  }

  return result;
}

void sub_1006A9930(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 216) == 1)
  {
    std::string::operator=(this, __str);

    sub_10012BF3C(this + 1, __str + 1);
  }

  else
  {
    v5[0] = a1;
    v5[1] = __str;
    sub_1006A99A8(v5);
  }
}

uint64_t sub_1006A99A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(&v7, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v8 = *(v2 + 16);
    v7 = v3;
  }

  sub_100190010(&v9, (v2 + 24));
  result = sub_10018FAC8(v1);
  v5 = v7;
  *(v1 + 16) = v8;
  *v1 = v5;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  if (v11 == 1)
  {
    v6 = v9;
    *(v1 + 40) = v10;
    *(v1 + 24) = v6;
    *(v1 + 48) = 1;
  }

  *(v1 + 216) = 1;
  return result;
}

void sub_1006A9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9A7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 4);
      v5 = *a2;

      sub_1006A9B4C(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100190608(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001903E0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(a1 + 24) = 1;
  }
}

void sub_1006A9B4C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1001C71E8(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_100190468(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_1001C74D8(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1000DD108(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1001C74D8(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_10019050C(a1, __str + v11, a3, *(a1 + 8));
  }
}

uint64_t sub_1006A9CB8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 880);
  if (v2 != -1)
  {
    result = (off_101E703A8[v2])(&v3, result);
  }

  *(v1 + 880) = -1;
  return result;
}

void sub_1006A9D10(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v3 = (a2 + 56);
    sub_100190608(&v3);
  }

  if (*(a2 + 48) == 1)
  {
    v3 = (a2 + 24);
    sub_10019029C(&v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1006A9D80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 376) == 1)
  {
    v4 = (a2 + 352);
    sub_100190608(&v4);
  }

  if (*(a2 + 351) < 0)
  {
    operator delete(*(a2 + 328));
  }

  return sub_1000D45B0(a2);
}

void sub_1006A9DDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) == 1)
  {
    v3 = (a2 + 80);
    sub_100190608(&v3);
  }

  if (*(a2 + 72) == 1)
  {
    v3 = (a2 + 48);
    sub_10019029C(&v3);
  }

  if (*(a2 + 40) == 1 && *(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

uint64_t sub_1006A9E58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 368) == 1)
  {
    v4 = (a2 + 344);
    sub_100190608(&v4);
  }

  return sub_1000D45B0(a2);
}

uint64_t sub_1006A9EA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 576) == 1)
  {
    v4 = (a2 + 552);
    sub_100190608(&v4);
  }

  if (*(a2 + 544) == 1)
  {
    v4 = (a2 + 520);
    sub_10019029C(&v4);
  }

  if (*(a2 + 512) == 1)
  {
    v4 = (a2 + 488);
    sub_100190608(&v4);
  }

  result = sub_100190D9C(a2 + 224);
  if (*(a2 + 216) == 1)
  {
    return sub_100190B88(a2);
  }

  return result;
}

uint64_t sub_1006A9F3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 872) == 1)
  {
    v4 = (a2 + 848);
    sub_100190608(&v4);
  }

  if (*(a2 + 840) == 1)
  {
    v4 = (a2 + 816);
    sub_100190608(&v4);
  }

  sub_100190D9C(a2 + 552);
  if (*(a2 + 544) == 1)
  {
    sub_100190B88(a2 + 328);
  }

  return sub_1000D45B0(a2);
}

void sub_1006A9FC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 352) == 1)
  {
    v3 = (a2 + 328);
    sub_10019029C(&v3);
  }

  sub_100191270(a2 + 48);
  if (*(a2 + 40) == 1 && *(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void sub_1006AA028(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) == 1)
  {
    v3 = (a2 + 80);
    sub_10019029C(&v3);
  }

  v3 = (a2 + 56);
  sub_1001915C8(&v3);
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }
}

void sub_1006AA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 2)
  {
    *a2 = *a3;
    sub_10012BF3C((a2 + 16), (a3 + 16));
    sub_1006A8218(a2 + 48, a3 + 48);

    sub_1006A9A7C(a2 + 80, a3 + 80);
  }

  else
  {
    v5[0] = a1;
    v5[1] = a3;
    sub_1006AA12C(v5);
  }
}

void sub_1006AA12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5 = *v2;
  sub_10006F264(__p, v2 + 1);
  sub_10018F784(&v9, (v2 + 3));
  sub_100190324(&v12, (v2 + 5));
  sub_1006A9CB8(v1);
  *v1 = v5;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  if (v8 == 1)
  {
    v3 = *__p;
    *(v1 + 32) = v7;
    *(v1 + 16) = v3;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    *(v1 + 40) = 1;
  }

  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  v4 = v11;
  if (v11 == 1)
  {
    *(v1 + 48) = v9;
    *(v1 + 64) = v10;
    v9 = 0uLL;
    v10 = 0;
    *(v1 + 72) = 1;
  }

  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  if (v14 != 1)
  {
    *(v1 + 880) = 2;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v1 + 80) = v12;
  *(v1 + 96) = v13;
  v12 = 0uLL;
  v13 = 0;
  *(v1 + 104) = 1;
  *(v1 + 880) = 2;
  v15 = &v12;
  sub_100190608(&v15);
  if (v11)
  {
LABEL_9:
    v15 = &v9;
    sub_10019029C(&v15);
  }

LABEL_10:
  if (v8 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006AA2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    *(v22 - 56) = v21;
    sub_10019029C((v22 - 56));
  }

  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006AA2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 4)
  {
    sub_1006AA66C(a2, a3);
    *(a2 + 224) = *(a3 + 224);
    std::string::operator=((a2 + 232), (a3 + 232));
    std::string::operator=((a2 + 256), (a3 + 256));
    std::string::operator=((a2 + 280), (a3 + 280));
    std::string::operator=((a2 + 304), (a3 + 304));
    v5 = *(a3 + 344);
    *(a2 + 328) = *(a3 + 328);
    *(a2 + 344) = v5;
    sub_1006AA72C(a2 + 352, a3 + 352);
    sub_1006A9A7C(a2 + 488, a3 + 488);
    sub_1006A8218(a2 + 520, a3 + 520);

    sub_1006A9A7C(a2 + 552, a3 + 552);
  }

  else
  {
    v6[0] = a1;
    v6[1] = a3;
    sub_1006AA3D4(v6);
  }
}

void sub_1006AA3D4(uint64_t *a1)
{
  v1 = *a1;
  sub_10019068C(v8, a1[1]);
  sub_1006A9CB8(v1);
  sub_1006AA940(v1, v8);
  *(v1 + 224) = v27;
  v2 = v28;
  *(v1 + 248) = v29;
  *(v1 + 232) = v2;
  v28 = 0uLL;
  v3 = v31;
  *(v1 + 256) = v30;
  *(v1 + 272) = v3;
  v29 = 0;
  v30 = 0uLL;
  v31 = 0;
  v4 = v32;
  *(v1 + 296) = v33;
  *(v1 + 280) = v4;
  v32 = 0uLL;
  v5 = v34;
  *(v1 + 320) = v35;
  *(v1 + 304) = v5;
  v33 = 0;
  v34 = 0uLL;
  v35 = 0;
  v6 = v36;
  *(v1 + 344) = v37;
  *(v1 + 328) = v6;
  sub_1006AA9DC((v1 + 352), &v38);
  *(v1 + 488) = 0;
  *(v1 + 512) = 0;
  if (v41 == 1)
  {
    *(v1 + 488) = v39;
    *(v1 + 496) = v40;
    v39 = 0;
    v40 = 0uLL;
    *(v1 + 512) = 1;
  }

  *(v1 + 520) = 0;
  *(v1 + 544) = 0;
  v7 = v43;
  if (v43 == 1)
  {
    *(v1 + 520) = v42[0];
    *(v1 + 528) = *&v42[1];
    memset(v42, 0, sizeof(v42));
    *(v1 + 544) = 1;
  }

  *(v1 + 552) = 0;
  *(v1 + 576) = 0;
  if (v45 != 1)
  {
    *(v1 + 880) = 4;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v1 + 552) = v44[0];
  *(v1 + 560) = *&v44[1];
  memset(v44, 0, sizeof(v44));
  *(v1 + 576) = 1;
  *(v1 + 880) = 4;
  v46 = v44;
  sub_100190608(&v46);
  if (v43)
  {
LABEL_9:
    v46 = v42;
    sub_10019029C(&v46);
  }

LABEL_10:
  if (v41 == 1)
  {
    v46 = &v39;
    sub_100190608(&v46);
  }

  sub_100190D9C(&v27);
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v22 == 1 && v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (v19 == 1 && v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }
}

void sub_1006AA66C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == *(a2 + 216))
  {
    if (*(a1 + 216))
    {
      *a1 = *a2;
      std::string::operator=((a1 + 8), (a2 + 8));
      std::string::operator=((a1 + 32), (a2 + 32));
      std::string::operator=((a1 + 56), (a2 + 56));

      sub_1006AA72C(a1 + 80, a2 + 80);
    }
  }

  else if (*(a1 + 216))
  {
    sub_100190B88(a1);
    *(a1 + 216) = 0;
  }

  else
  {
    sub_100190828(a1, a2);
    *(a1 + 216) = 1;
  }
}

void sub_1006AA72C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      *a1 = *a2;
      if (a1 == a2)
      {
        sub_1006AA898(a1 + 32, a2 + 32);
        sub_1006AA898(a1 + 64, a2 + 64);
      }

      else
      {
        sub_1001122C4((a1 + 8), *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
        sub_1006AA898(a1 + 32, a2 + 32);
        sub_1006AA898(a1 + 64, a2 + 64);
        sub_1001122C4((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
      }

      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (*(a1 + 128))
  {

    sub_1006AA80C(a1);
  }

  else
  {
    sub_10019099C(a1, a2);
    *(a1 + 128) = 1;
  }
}

void sub_1006AA80C(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }

    if (*(a1 + 88) == 1)
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        *(a1 + 72) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 56) == 1)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        *(a1 + 40) = v4;
        operator delete(v4);
      }
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      *(a1 + 16) = v5;
      operator delete(v5);
    }

    *(a1 + 128) = 0;
  }
}

void sub_1006AA898(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2];
      v5 = *a2;

      sub_1001122C4(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }
}

uint64_t sub_1006AA940(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *a1 = *a2;
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    sub_1006AA9DC((a1 + 80), a2 + 80);
    *(a1 + 216) = 1;
  }

  return a1;
}

_BYTE *sub_1006AA9DC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[128] = 0;
  if (*(a2 + 128) == 1)
  {
    sub_1006AAA20(a1, a2);
  }

  return a1;
}

__n128 sub_1006AAA20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = 1;
  return result;
}

void sub_1006AAAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 6)
  {
    *a2 = *a3;
    sub_10012BF3C((a2 + 16), (a3 + 16));
    sub_1006AAF50((a2 + 48), (a3 + 48));
    sub_10012BF3C((a2 + 232), (a3 + 232));
    sub_10012BF3C((a2 + 264), (a3 + 264));
    sub_1006A8218(a2 + 296, a3 + 296);

    sub_1006A8218(a2 + 328, a3 + 328);
  }

  else
  {
    v5[0] = a1;
    v5[1] = a3;
    sub_1006AABAC(v5);
  }
}

void sub_1006AABAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v13 = *v2;
  sub_100190E64(__p, v2 + 1);
  sub_100190EB4(&v17, (v2 + 3));
  sub_1001910E4(&v34, (v2 + 232));
  sub_100191134(&v37, (v2 + 264));
  sub_10018F784(&v40, v2 + 296);
  sub_10018F784(&v43, v2 + 328);
  sub_1006A9CB8(v1);
  *v1 = v13;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  if (v16 == 1)
  {
    v3 = *__p;
    *(v1 + 32) = v15;
    *(v1 + 16) = v3;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    *(v1 + 40) = 1;
  }

  *(v1 + 48) = 0;
  *(v1 + 224) = 0;
  if (v33 == 1)
  {
    v4 = v17;
    *(v1 + 64) = v18;
    *(v1 + 48) = v4;
    v18 = 0;
    v17 = 0uLL;
    v5 = v20;
    *(v1 + 72) = v19;
    *(v1 + 88) = v5;
    v20 = 0;
    v19 = 0uLL;
    v6 = v21;
    *(v1 + 104) = 0;
    *(v1 + 96) = v6;
    *(v1 + 128) = 0;
    if (v24 == 1)
    {
      v7 = v22;
      *(v1 + 120) = v23;
      *(v1 + 104) = v7;
      v23 = 0;
      v22 = 0uLL;
      *(v1 + 128) = 1;
    }

    *(v1 + 136) = 0;
    *(v1 + 160) = 0;
    if (v27 == 1)
    {
      v8 = v25;
      *(v1 + 152) = v26;
      *(v1 + 136) = v8;
      v26 = 0;
      v25 = 0uLL;
      *(v1 + 160) = 1;
    }

    v9 = v28;
    *(v1 + 192) = 0;
    *(v1 + 184) = v29;
    *(v1 + 168) = v9;
    *(v1 + 216) = 0;
    if (v32 == 1)
    {
      v10 = v30;
      *(v1 + 208) = v31;
      *(v1 + 192) = v10;
      v31 = 0;
      v30 = 0uLL;
      *(v1 + 216) = 1;
    }

    *(v1 + 224) = 1;
  }

  *(v1 + 232) = 0;
  *(v1 + 256) = 0;
  if (v36 == 1)
  {
    v11 = v34;
    *(v1 + 248) = v35;
    *(v1 + 232) = v11;
    v35 = 0;
    v34 = 0uLL;
    *(v1 + 256) = 1;
  }

  *(v1 + 264) = 0;
  *(v1 + 288) = 0;
  if (v39 == 1)
  {
    v12 = v37;
    *(v1 + 280) = v38;
    *(v1 + 264) = v12;
    v38 = 0;
    v37 = 0uLL;
    *(v1 + 288) = 1;
  }

  *(v1 + 296) = 0;
  *(v1 + 320) = 0;
  if (v42 == 1)
  {
    *(v1 + 296) = v40;
    *(v1 + 304) = v41;
    v40 = 0;
    v41 = 0uLL;
    *(v1 + 320) = 1;
  }

  *(v1 + 328) = 0;
  *(v1 + 352) = 0;
  if (v45)
  {
    *(v1 + 328) = v43;
    *(v1 + 336) = v44;
    v43 = 0;
    v44 = 0uLL;
    *(v1 + 352) = 1;
    *(v1 + 880) = 6;
    v46 = &v43;
    sub_10019029C(&v46);
  }

  else
  {
    *(v1 + 880) = 6;
  }

  sub_100191270(&v17);
  if (v16 == 1 && SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006AAF50(char *__dst, std::string *__str)
{
  if (__dst[176] == __str[7].__r_.__value_.__s.__data_[8])
  {
    if (__dst[176])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);
      *(__dst + 6) = __str[2].__r_.__value_.__l.__data_;
      sub_10012BF3C((__dst + 56), (__str + 56));
      sub_10012BF3C((__dst + 88), (__str + 88));
      v4 = *&__str[5].__r_.__value_.__l.__data_;
      *(__dst + 34) = __str[5].__r_.__value_.__r.__words[2];
      *(__dst + 120) = v4;

      sub_10012BF3C(__dst + 6, __str + 6);
    }
  }

  else if (__dst[176])
  {
    if (__dst[168] == 1 && __dst[167] < 0)
    {
      operator delete(*(__dst + 18));
    }

    if (__dst[112] == 1 && __dst[111] < 0)
    {
      operator delete(*(__dst + 11));
    }

    if (__dst[80] == 1 && __dst[79] < 0)
    {
      operator delete(*(__dst + 7));
    }

    if (__dst[47] < 0)
    {
      operator delete(*(__dst + 3));
    }

    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    __dst[176] = 0;
  }

  else
  {
    sub_100190F1C(__dst, __str);
    __dst[176] = 1;
  }
}

__n128 sub_1006AB088(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    result = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = result;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    v3 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v3;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 96);
    *(a1 + 104) = 0;
    *(a1 + 96) = v5;
    *(a1 + 128) = 0;
    if (*(a2 + 128) == 1)
    {
      v6 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v6;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0;
      *(a1 + 128) = 1;
    }

    *(a1 + 136) = 0;
    *(a1 + 160) = 0;
    if (*(a2 + 160) == 1)
    {
      v7 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v7;
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 136) = 0;
      *(a1 + 160) = 1;
    }

    result = *(a2 + 168);
    v8 = *(a2 + 184);
    *(a1 + 192) = 0;
    *(a1 + 184) = v8;
    *(a1 + 168) = result;
    *(a1 + 216) = 0;
    if (*(a2 + 216) == 1)
    {
      result = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 192) = result;
      *(a2 + 200) = 0;
      *(a2 + 208) = 0;
      *(a2 + 192) = 0;
      *(a1 + 216) = 1;
    }

    *(a1 + 224) = 1;
  }

  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    result = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = result;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 232) = 0;
    *(a1 + 256) = 1;
  }

  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    result = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = result;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a2 + 264) = 0;
    *(a1 + 288) = 1;
  }

  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = *(a2 + 296);
    result = *(a2 + 304);
    *(a1 + 304) = result;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a1 + 320) = 1;
  }

  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 328) = *(a2 + 328);
    result = *(a2 + 336);
    *(a1 + 336) = result;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a1 + 352) = 1;
  }

  return result;
}

void sub_1006AB2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 7)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 16);
    *a2 = v5;
    sub_10012BF3C((a2 + 24), (a3 + 24));
    if (a2 != a3)
    {
      sub_1006AB538(a2 + 56, *(a3 + 56), *(a3 + 64), 0xAF8AF8AF8AF8AF8BLL * ((*(a3 + 64) - *(a3 + 56)) >> 3));
    }

    sub_1006A8218(a2 + 80, a3 + 80);
  }

  else
  {
    v6[0] = a1;
    v6[1] = a3;
    sub_1006AB380(v6);
  }
}

void sub_1006AB380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 16);
  sub_100190E64(__p, (v2 + 24));
  v9 = 0uLL;
  v10 = 0;
  sub_100191370(&v9, *(v2 + 56), *(v2 + 64), 0xAF8AF8AF8AF8AF8BLL * ((*(v2 + 64) - *(v2 + 56)) >> 3));
  sub_10018F784(&v11, v2 + 80);
  sub_1006A9CB8(v1);
  *(v1 + 16) = v5;
  *v1 = v4;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  if (v8 == 1)
  {
    v3 = *__p;
    *(v1 + 40) = v7;
    *(v1 + 24) = v3;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    *(v1 + 48) = 1;
  }

  *(v1 + 56) = v9;
  *(v1 + 72) = v10;
  v9 = 0uLL;
  v10 = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  if (v13)
  {
    *(v1 + 80) = v11;
    *(v1 + 96) = v12;
    v11 = 0uLL;
    v12 = 0;
    *(v1 + 104) = 1;
    *(v1 + 880) = 7;
    v14 = &v11;
    sub_10019029C(&v14);
  }

  else
  {
    *(v1 + 880) = 7;
  }

  v14 = &v9;
  sub_1001915C8(&v14);
  if (v8 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006AB4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  *(v19 - 56) = v18;
  sub_1001915C8((v19 - 56));
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006AB538(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1006AB6B0(a1);
    if (a4 <= 0xEA0EA0EA0EA0EALL)
    {
      v9 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
      {
        v10 = 0xEA0EA0EA0EA0EALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1001913F8(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAF8AF8AF8AF8AF8BLL * (v11 >> 3) >= a4)
  {
    sub_1006AB710(&v16, __str, a3, v8);
    v14 = v13;
    result = *(a1 + 8);
    if (result != v13)
    {
      do
      {
        result = sub_100191270(result - 280);
      }

      while (result != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_1006AB710(&v15, __str, (__str + v11), v8);
    result = sub_1001914A4(a1, __str + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_1006AB6B0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_100191270(v3 - 280);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_1006AB710(int a1, std::string *__str, std::string *a3, char *__dst)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    sub_1006AAF50(__dst, v5);
    sub_10012BF3C((__dst + 184), (v5 + 184));
    sub_10012BF3C(__dst + 9, v5 + 9);
    sub_1006A8218((__dst + 248), &v5[10].__r_.__value_.__l.__size_);
    __dst += 280;
    v5 = (v5 + 280);
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1006AB798(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 880) = -1;
  sub_1006AB7D0(a1, a2);
  return a1;
}

uint64_t sub_1006AB7D0(uint64_t a1, uint64_t a2)
{
  result = sub_1006A9CB8(a1);
  v5 = *(a2 + 880);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E703F0[v5])(&v6, a2);
    *(a1 + 880) = v5;
  }

  return result;
}

__n128 sub_1006AB834(__n128 **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = *(a2 + 16);
  *v2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2[1].n128_u8[8] = 0;
  v2[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    v2[1].n128_u64[1] = 0;
    v2[2].n128_u64[0] = 0;
    v2[2].n128_u64[1] = 0;
    result = *(a2 + 24);
    *(v2 + 24) = result;
    v2[2].n128_u64[1] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v2[3].n128_u8[0] = 1;
  }

  v2[3].n128_u8[8] = 0;
  v2[5].n128_u8[0] = 0;
  if (*(a2 + 80) == 1)
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
    v2[4].n128_u64[1] = 0;
    result = *(a2 + 56);
    *(v2 + 56) = result;
    v2[4].n128_u64[1] = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v2[5].n128_u8[0] = 1;
  }

  return result;
}

__n128 sub_1006AB8DC(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u8[0] = 0;
  v2[2].n128_u8[8] = 0;
  if (a2[2].n128_u8[8] == 1)
  {
    result = a2[1];
    v2[2].n128_u64[0] = a2[2].n128_u64[0];
    v2[1] = result;
    a2[1].n128_u64[1] = 0;
    a2[2].n128_u64[0] = 0;
    a2[1].n128_u64[0] = 0;
    v2[2].n128_u8[8] = 1;
  }

  v2[3].n128_u8[0] = 0;
  v2[4].n128_u8[8] = 0;
  if (a2[4].n128_u8[8] == 1)
  {
    v2[3].n128_u64[0] = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
    result = a2[3];
    v2[3] = result;
    v2[4].n128_u64[0] = a2[4].n128_u64[0];
    a2[3].n128_u64[0] = 0;
    a2[3].n128_u64[1] = 0;
    a2[4].n128_u64[0] = 0;
    v2[4].n128_u8[8] = 1;
  }

  v2[5].n128_u8[0] = 0;
  v2[6].n128_u8[8] = 0;
  if (a2[6].n128_u8[8] == 1)
  {
    v2[5].n128_u64[0] = 0;
    v2[5].n128_u64[1] = 0;
    v2[6].n128_u64[0] = 0;
    result = a2[5];
    v2[5] = result;
    v2[6].n128_u64[0] = a2[6].n128_u64[0];
    a2[5].n128_u64[0] = 0;
    a2[5].n128_u64[1] = 0;
    a2[6].n128_u64[0] = 0;
    v2[6].n128_u8[8] = 1;
  }

  return result;
}

double sub_1006AB9AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1006AA940(*a1, a2);
  *(v3 + 224) = *(a2 + 224);
  v4 = *(a2 + 232);
  *(v3 + 248) = *(a2 + 248);
  *(v3 + 232) = v4;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  v5 = *(a2 + 256);
  *(v3 + 272) = *(a2 + 272);
  *(v3 + 256) = v5;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 256) = 0;
  v6 = *(a2 + 280);
  *(v3 + 296) = *(a2 + 296);
  *(v3 + 280) = v6;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 280) = 0;
  v7 = *(a2 + 304);
  *(v3 + 320) = *(a2 + 320);
  *(v3 + 304) = v7;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  v8 = *(a2 + 328);
  *(v3 + 344) = *(a2 + 344);
  *(v3 + 328) = v8;
  sub_1006AA9DC((v3 + 352), a2 + 352);
  *(v3 + 488) = 0;
  *(v3 + 512) = 0;
  if (*(a2 + 512) == 1)
  {
    *(v3 + 488) = 0;
    *(v3 + 496) = 0;
    *(v3 + 504) = 0;
    *(v3 + 488) = *(a2 + 488);
    v9 = *(a2 + 496);
    *(v3 + 496) = v9;
    *(a2 + 488) = 0;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
    *(v3 + 512) = 1;
  }

  *(v3 + 520) = 0;
  *(v3 + 544) = 0;
  if (*(a2 + 544) == 1)
  {
    *(v3 + 536) = 0;
    *&v9 = 0;
    *(v3 + 520) = 0u;
    *(v3 + 520) = *(a2 + 520);
    *(v3 + 528) = *(a2 + 528);
    *(a2 + 536) = 0;
    *(a2 + 520) = 0u;
    *(v3 + 544) = 1;
  }

  *(v3 + 552) = 0;
  *(v3 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    *(v3 + 568) = 0;
    *&v9 = 0;
    *(v3 + 552) = 0u;
    *(v3 + 552) = *(a2 + 552);
    *(v3 + 560) = *(a2 + 560);
    *(a2 + 568) = 0;
    *(a2 + 552) = 0u;
    *(v3 + 576) = 1;
  }

  return *&v9;
}

__n128 sub_1006ABB48(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 4);
  *v2 = v3;
  *(v2 + 24) = 0;
  *(v2 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v4 = *(a2 + 24);
    *(v2 + 40) = *(a2 + 5);
    *(v2 + 24) = v4;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(v2 + 48) = 1;
  }

  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  result = *(a2 + 56);
  *(v2 + 56) = result;
  *(v2 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(v2 + 80) = 0;
  *(v2 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    result = a2[5];
    *(v2 + 80) = result;
    *(v2 + 96) = *(a2 + 12);
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(v2 + 104) = 1;
  }

  return result;
}

__n128 sub_1006ABBF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v4 = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(v2 + 96) = 0;
  *(v2 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v5 = *(a2 + 96);
    *(v2 + 112) = *(a2 + 112);
    *(v2 + 96) = v5;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v6 = *(a2 + 120);
    *(v2 + 136) = *(a2 + 136);
    *(v2 + 120) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v7 = *(a2 + 144);
    *(v2 + 160) = *(a2 + 160);
    *(v2 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(v2 + 168) = 1;
  }

  *(v2 + 176) = 0;
  *(v2 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v8 = *(a2 + 176);
    *(v2 + 192) = *(a2 + 192);
    *(v2 + 176) = v8;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(v2 + 200) = 1;
  }

  *(v2 + 208) = 0;
  *(v2 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    v9 = *(a2 + 208);
    *(v2 + 224) = *(a2 + 224);
    *(v2 + 208) = v9;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 208) = 0;
    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    *(v2 + 248) = 0;
    *(v2 + 232) = *(a2 + 232);
    *(v2 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v10 = *(a2 + 256);
    *(v2 + 272) = *(a2 + 272);
    *(v2 + 256) = v10;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(v2 + 280) = 1;
  }

  result = *(a2 + 288);
  *(v2 + 304) = *(a2 + 304);
  *(v2 + 288) = result;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  v12 = *(a2 + 316);
  *(v2 + 312) = *(a2 + 312);
  *(v2 + 316) = v12;
  *(v2 + 320) = *(a2 + 320);
  return result;
}

__n128 sub_1006ABDB0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v2 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v3 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v3;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v5 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v5;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v6;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v7 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v7;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    v8 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v8;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 208) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v9 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v9;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 1;
  }

  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  v11 = *(a2 + 316);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = v11;
  *(a1 + 320) = *(a2 + 320);
  result = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = result;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  if (*(a2 + 376) == 1)
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    result = *(a2 + 352);
    *(a1 + 352) = result;
    *(a1 + 368) = *(a2 + 368);
    *(a2 + 352) = 0;
    *(a2 + 360) = 0;
    *(a2 + 368) = 0;
    *(a1 + 376) = 1;
  }

  return result;
}

__n128 sub_1006ABFC0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v2 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v3 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v3;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v5 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v5;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v6;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v7 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v7;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    v8 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v8;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 208) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v9 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v9;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 1;
  }

  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  v11 = *(a2 + 316);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = v11;
  *(a1 + 320) = *(a2 + 320);
  result = *(a2 + 328);
  *(a1 + 328) = result;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  if (*(a2 + 368) == 1)
  {
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = *(a2 + 344);
    result = *(a2 + 352);
    *(a1 + 352) = result;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(a2 + 360) = 0;
    *(a1 + 368) = 1;
  }

  return result;
}

uint64_t sub_1006AC1C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v9 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v9;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    v10 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v10;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 208) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v11 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v11;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 1;
  }

  v12 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v12;
  *(a2 + 296) = 0u;
  *(a2 + 288) = 0;
  v13 = *(a2 + 316);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = v13;
  *(a1 + 320) = *(a2 + 320);
  sub_1006AA940(a1 + 328, a2 + 328);
  *(a1 + 552) = *(a2 + 552);
  v14 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v14;
  *(a2 + 568) = 0u;
  *(a2 + 560) = 0;
  v15 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 584) = v15;
  *(a2 + 592) = 0u;
  *(a2 + 584) = 0;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 616) = 0u;
  *(a2 + 608) = 0;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  v18 = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 656) = v18;
  sub_1006AA9DC((a1 + 680), a2 + 680);
  *(a1 + 816) = 0;
  *(a1 + 840) = 0;
  if (*(a2 + 840) == 1)
  {
    *(a1 + 832) = 0;
    *(a1 + 816) = 0u;
    *(a1 + 816) = *(a2 + 816);
    *(a1 + 832) = *(a2 + 832);
    *(a2 + 832) = 0;
    *(a2 + 816) = 0u;
    *(a1 + 840) = 1;
  }

  *(a1 + 848) = 0;
  *(a1 + 872) = 0;
  if (*(a2 + 872) == 1)
  {
    *(a1 + 864) = 0;
    *(a1 + 848) = 0u;
    *(a1 + 848) = *(a2 + 848);
    *(a1 + 864) = *(a2 + 864);
    *(a2 + 864) = 0;
    *(a2 + 848) = 0u;
    *(a1 + 872) = 1;
  }

  return a1;
}

void sub_1006AC4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 1)
  {
    sub_1006AC578(a2, a3);
    v5 = (a2 + 328);
    if (*(a2 + 351) < 0)
    {
      operator delete(*v5);
    }

    v6 = *(a3 + 328);
    *(a2 + 344) = *(a3 + 344);
    *v5 = v6;
    *(a3 + 351) = 0;
    *(a3 + 328) = 0;
    sub_1006AC7C8(a2 + 352, (a3 + 352));
  }

  else
  {
    sub_1006A9CB8(a1);
    sub_1006ABDB0(a1, a3);
    *(a1 + 880) = 1;
  }
}

uint64_t sub_1006AC578(uint64_t a1, uint64_t a2)
{
  sub_100071A6C(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1000D4E6C(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  sub_100280F7C(a1 + 96, (a2 + 96));
  sub_10016A270(a1 + 176, (a2 + 176));
  sub_1006AC69C(a1 + 208, (a2 + 208));
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v6 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v6;
  *(a2 + 311) = 0;
  *(a2 + 288) = 0;
  v7 = *(a2 + 316);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = v7;
  *(a1 + 320) = *(a2 + 320);
  return a1;
}

__n128 sub_1006AC69C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
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
      sub_100015184(a1 + 24, (a2 + 24));
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      *(a1 + 32) = v6;
      operator delete(v6);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 72) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

__n128 sub_1006AC7C8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1001C71E8(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100190608(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_1006AC86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 880) == 3)
  {
    sub_1006AC578(a2, a3);
    *(a2 + 328) = *(a3 + 328);
    sub_1006AC7C8(a2 + 344, (a3 + 344));
  }

  else
  {
    sub_1006A9CB8(a1);
    sub_1006ABFC0(a1, a3);
    *(a1 + 880) = 3;
  }
}

void sub_1006AC8F0(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 880) == 5)
  {
    sub_1006AC578(a2, a3);
    sub_1006ACA8C(a2 + 328, &a3[20].n128_i64[1]);
    sub_1006AC990(a2 + 552, &a3[34].n128_i64[1]);
    sub_1006AC7C8(a2 + 816, a3 + 51);
    sub_1006AC7C8(a2 + 848, a3 + 53);
  }

  else
  {
    sub_1006A9CB8(a1);
    sub_1006AC1C0(a1, a3);
    *(a1 + 880) = 5;
  }
}

uint64_t sub_1006AC990(uint64_t a1, uint64_t a2)
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
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  sub_1006ACBDC(a1 + 128, a2 + 128);
  return a1;
}

void sub_1006ACA8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == *(a2 + 216))
  {
    if (*(a1 + 216))
    {
      v4 = (a2 + 8);
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v5 = *v4;
      *(a1 + 24) = *(a2 + 24);
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
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      v7 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v7;
      *(a2 + 79) = 0;
      *(a2 + 56) = 0;
      sub_1006ACBDC(a1 + 80, a2 + 80);
    }
  }

  else
  {
    if (*(a1 + 216))
    {
      sub_100190B88(a1);
      v8 = 0;
    }

    else
    {
      *a1 = *a2;
      v9 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v9;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v10 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v10;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      v11 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v11;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 56) = 0;
      sub_1006AA9DC((a1 + 80), a2 + 80);
      v8 = 1;
    }

    *(a1 + 216) = v8;
  }
}

double sub_1006ACBDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      *a1 = *a2;
      sub_100015184(a1 + 8, (a2 + 8));
      sub_1004EDCD0(a1 + 32, (a2 + 32));
      sub_1004EDCD0(a1 + 64, (a2 + 64));
      *&result = sub_100015184(a1 + 96, (a2 + 96)).n128_u64[0];
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (*(a1 + 128))
  {

    sub_1006AA80C(a1);
  }

  else
  {

    *&result = sub_1006AAA20(a1, a2).n128_u64[0];
  }

  return result;
}

void sub_1006ACCB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006ACD0C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006ACD0C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 8) == 1 && *(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v5 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 12;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1006ACD84(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_1006ACED0(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1006ACF10(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_1006AD10C(&v14, __str, a3, v8);
    sub_1006ACD0C(a1, v12);
  }

  else
  {
    sub_1006AD10C(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1006ACF5C(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1006ACED0(uint64_t a1)
{
  if (*a1)
  {
    sub_1006ACD0C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1006ACF10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1006AD18C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1006ACF5C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v8 = *(v6 + 24);
      *(v4 + 5) = *(v6 + 5);
      *(v4 + 24) = v8;
      sub_1006A7ED8(v4 + 48, v6 + 3);
      v6 += 6;
      v4 = v13 + 96;
      v13 += 96;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_1006AD04C(v10);
  return v4;
}

uint64_t sub_1006AD04C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006AD098(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1006AD098(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 8) == 1 && *(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      v7 = v6 - 12;
      if (*(v6 - 73) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 12;
    }

    while (v7 != a5);
  }
}

std::string *sub_1006AD10C(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    v7 = v5[1].__r_.__value_.__s.__data_[16];
    *&this[1].__r_.__value_.__l.__data_ = *&v5[1].__r_.__value_.__l.__data_;
    this[1].__r_.__value_.__s.__data_[16] = v7;
    sub_10046562C(&this[2], v5 + 2);
    this += 4;
    v5 += 4;
  }

  while (v5 != v6);
  return v6;
}

void sub_1006AD18C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006AD1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006AD2C4(a1, a2);
  sub_1006AD2C4(v4 + 3, a2 + 24);
  sub_100074920((a1 + 48), a2 + 48);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10004EFD0(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  sub_100041088((a1 + 96), (a2 + 96));
  return a1;
}

void sub_1006AD270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  sub_100009970(v2 + 48, *(v2 + 56));
  sub_100580908(v2 + 24, *(v2 + 32));
  sub_100580908(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

void *sub_1006AD2C4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006AD31C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1006AD31C(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006AD3A4(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1006AD3A4(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1006AD444();
  }

  return v3;
}

void *sub_1006AD4BC(void *__dst, __int128 *a2)
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

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10004EFD0((__dst + 3), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_1006AD534(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006AD550(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_10003C5A4(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 6);
  *(v8 + 28) = *(a2 + 28);
  *(v8 + 24) = v10;
  *&v19 = 32 * v2 + 32;
  v11 = *(a1 + 8);
  v12 = 32 * v2 + *a1 - v11;
  sub_1000D5068(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1000D512C(&v17);
  return v16;
}

void sub_1006AD664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D512C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AD678(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    v3 = (a1 + 72);
    sub_1000087B4(&v3);
    sub_100009970(a1 + 48, *(a1 + 56));
    sub_100580908(a1 + 24, *(a1 + 32));
    sub_100580908(a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006AD704(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_1006AD73C(a1, a2);
  return a1;
}

uint64_t sub_1006AD73C(uint64_t a1, uint64_t a2)
{
  result = sub_1006A6204(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70438[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 sub_1006AD7A4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1006AD7DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100034C50(a2, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
  __p = 0uLL;
  v6 = 0;
  sub_1006AD8B0(a1 + 32, &__p, (a2 + 24));
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_100034C50(a2 + 48, *(a1 + 96), *(a1 + 104), *(a1 + 104) - *(a1 + 96));
  v4 = *(a1 + 120);
  *(a2 + 72) = 1;
  *(a2 + 76) = v4;
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1006AD86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 24);
  if (v13)
  {
    *(v11 + 32) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v14 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1006AD8B0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    sub_100034C50(a3, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
  }

  return result;
}

_BYTE *sub_1006AD8F0(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          sub_1000CE3D4();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1006ADA1C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 288);
  if (v3 == *(a2 + 288))
  {
    if (*(result + 288))
    {
      return sub_1006ADA88(result + 8, a2 + 8);
    }
  }

  else
  {
    v4 = result + 8;
    if (v3)
    {
      result = sub_1002AF7A0(v4);
      v5 = 0;
    }

    else
    {
      result = sub_1002AF704(v4, a2 + 8);
      v5 = 1;
    }

    *(v2 + 288) = v5;
  }

  return result;
}

uint64_t sub_1006ADA88(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (*(result + 272) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_1002AF7A0(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_101E70468[v4])(v6);
    }
  }

  return result;
}

double sub_1006ADB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 272))
  {
    sub_1002AF7A0(a1);
    sub_1006A1138(a1, a3);
    *(a1 + 272) = 0;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v7 = *a3;
    *(a2 + 16) = *(a3 + 16);
    *a2 = v7;
    *(a3 + 23) = 0;
    *a3 = 0;
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    v8 = *(a3 + 24);
    *(a2 + 40) = *(a3 + 40);
    *(a2 + 24) = v8;
    *(a3 + 47) = 0;
    *(a3 + 24) = 0;
    sub_100015184(a2 + 48, (a3 + 48));
    sub_100015184(a2 + 72, (a3 + 72));
    sub_100015184(a2 + 96, (a3 + 96));
    *(a2 + 120) = *(a3 + 120);
    return sub_1006ADBE4(a2 + 128, a3 + 128);
  }

  return result;
}

double sub_1006ADBE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      sub_100015184(a1 + 48, (a2 + 48));
      sub_100015184(a1 + 72, (a2 + 72));
      *&result = sub_100015184(a1 + 96, (a2 + 96)).n128_u64[0];
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (*(a1 + 128))
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      *(a1 + 104) = v7;
      operator delete(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      *(a1 + 80) = v8;
      operator delete(v8);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      *(a1 + 56) = v9;
      operator delete(v9);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 128) = 0;
  }

  else
  {

    *&result = sub_1006A1244(a1, a2).n128_u64[0];
  }

  return result;
}

void sub_1006ADD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 272) == 1)
  {
    sub_1006ADBE4(a2, a3);
    sub_1006ADBE4(a2 + 136, a3 + 136);
  }

  else
  {

    sub_1006ADD88(a1, a3);
  }
}

uint64_t sub_1006ADD88(uint64_t a1, uint64_t a2)
{
  sub_1002AF7A0(a1);
  sub_1006A1200(a1, a2);
  sub_1006A1200((a1 + 136), a2 + 136);
  *(a1 + 272) = 1;
  return a1;
}

void sub_1006ADDF8(uint64_t a1)
{
  v8 = (a1 + 176);
  sub_1006ADEC8(&v8);
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1002472DC(a1 + 104, *(a1 + 112));
  sub_100009970(a1 + 80, *(a1 + 88));
  sub_1002472DC(a1 + 56, *(a1 + 64));
  v5 = *(a1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger(a1);
}

void sub_1006ADEC8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006ADF1C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006ADF1C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 1048;
    do
    {
      if (*(v4 + 1040) == 1)
      {
        if (*(v4 + 1039) < 0)
        {
          operator delete(*(v4 + 1016));
        }

        sub_1006A27BC(v4 + 48);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v5 = v4 == v3;
      v4 -= 1048;
    }

    while (!v5);
  }

  a1[1] = v3;
}

void *sub_1006AE018(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E704C8;
  sub_1006AE0F4(a1 + 3, a2);
  return a1;
}

void sub_1006AE094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E704C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1006AE0F4(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D3700(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_1006AE150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006AE168(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);

  sub_1002472DC(a1, v3);
}

void sub_1006AE1AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006AE1AC(a1, *a2);
    sub_1006AE1AC(a1, a2[1]);
    sub_1006AE218(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1006AE218(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void sub_1006AE27C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1006AE27C(a1, *a2);
    sub_1006AE27C(a1, *(a2 + 1));
    if (a2[208] == 1 && a2[207] < 0)
    {
      operator delete(*(a2 + 23));
    }

    if (a2[168] == 1 && a2[167] < 0)
    {
      operator delete(*(a2 + 18));
    }

    v4 = (a2 + 120);
    sub_1006ACCB8(&v4);
    if (a2[112] == 1 && a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_1006AE3BC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70518;
  sub_100914A8C(a1 + 3);
  return a1;
}

void sub_1006AE438(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006AE520(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E70568;
  sub_1009FF8EC((a1 + 3), a2);
}

void sub_1006AE59C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E70568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006AE618(uint64_t a1)
{
  *a1 = off_101E705B8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_1006AE684(uint64_t a1)
{
  *a1 = off_101E705B8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

void sub_1006AE7D4(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_100DC3ED0(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1006AE800(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E705B8;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  v6 = (a2 + 16);
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *v6 = result;
  }

  v8 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 63) < 0)
  {
    return sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  v9 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v9;
  return result;
}

void sub_1006AE8A8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_100DC3ED0(v2);
  _Unwind_Resume(a1);
}

void sub_1006AE8CC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

void sub_1006AE918(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 16));

  operator delete(a1);
}

uint64_t sub_1006AE974(uint64_t a1, uint64_t a2)
{
  sub_1006B04D4(v85, a2 + 8);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 24))
      {
        dispatch_assert_queue_V2(*(v4 + 24));
        sub_1006AF6DC(v120, v85);
        if (v120[56] == 10)
        {
          sub_1005833A8(v82, v120);
          v7 = 1;
        }

        else
        {
          v7 = 0;
          v82[0] = 0;
        }

        v83[0] = v7;
        sub_1006AF788(v120);
        if (v83[0] == 1)
        {
          sub_1005833A8(v73, v82);
          if (v76 == 9)
          {
            sub_100581E40(&__src, v73);
            memset(v80, 0, sizeof(v80));
            sub_100034C50(v80, v74, v75, v75 - v74);
            v8 = 1;
          }

          else
          {
            v8 = 0;
            LOBYTE(__src) = 0;
          }

          v81[0] = v8;
          sub_100583454(v73);
          if (v81[0] == 1)
          {
            v71[1] = 0;
            v71[0] = 0;
            v72 = 0;
            sub_100A972E8(v71);
            v119 = 0;
            v118 = 0u;
            v117 = 0u;
            v116 = 0u;
            v115 = 0u;
            v114 = 0u;
            v113 = 0u;
            v112 = 0u;
            v111 = 0u;
            v110 = 0u;
            v109 = 0u;
            v108 = 0u;
            *v107 = 0u;
            memset(v106, 0, sizeof(v106));
            v105 = 0u;
            v104 = 0u;
            sub_100B27D98(&v104);
            sub_100B27E08(&v104, "imdn <urn:ietf:params:imdn>");
            if (v72 >= 0)
            {
              v11 = v71;
            }

            else
            {
              v11 = v71[0];
            }

            sub_100B27E1C(&v104, "imdn.Message-ID", v11);
            sub_100B27E08(&v104, "mls <http://www.gsma.com/rcs/mls>");
            ctu::base64::encode();
            if ((SBYTE7(v56) & 0x80u) == 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            sub_100B27E1C(&v104, "mls.Epoch-Authenticator", v12);
            if (SBYTE7(v56) < 0)
            {
              operator delete(__p[0]);
            }

            std::to_string(__p, __val);
            if ((SBYTE7(v56) & 0x80u) == 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            sub_100B27E1C(&v104, "mls.Era-Id", v13);
            if (SBYTE7(v56) < 0)
            {
              operator delete(__p[0]);
            }

            v70 = 0;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            *v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            memset(v57, 0, sizeof(v57));
            *__p = 0u;
            sub_100BE2724(__p, "message/mls-rcs-client");
            v52 = 0;
            v53 = 0;
            v54 = 0;
            sub_100BE2728(__p, v80, v35);
            sub_100B27EC8(&v104, v35, &v52);
            if (v35[0])
            {
              v35[1] = v35[0];
              operator delete(v35[0]);
            }

            v51 = 0;
            memset(v50, 0, sizeof(v50));
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
            *v35 = 0u;
            if (SHIBYTE(v78) < 0)
            {
              sub_100005F2C(__dst, __src, *(&__src + 1));
            }

            else
            {
              *__dst = __src;
              v34 = v78;
            }

            if (SHIBYTE(v72) < 0)
            {
              sub_100005F2C(v31, v71[0], v71[1]);
            }

            else
            {
              *v31 = *v71;
              v32 = v72;
            }

            sub_10067A1B4(v4, __dst, v31, v35);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            if (SHIBYTE(v34) < 0)
            {
              operator delete(__dst[0]);
            }

            if (v51)
            {
              v28[0] = 0;
              v28[1] = 0;
              sub_100679904(v4, v50 + 8, v28);
              v18 = v28[0];
              sub_100C18C94(v35, v29);
              sub_100581E40(v86, &__src);
              LOBYTE(v95[0]) = 0;
              BYTE8(v96) = 0;
              LOBYTE(v97[0]) = 0;
              BYTE8(v98) = 0;
              sub_1009CE42C(v18, v29, v86);
              if (BYTE8(v98) == 1 && SBYTE7(v98) < 0)
              {
                operator delete(v97[0]);
              }

              if (BYTE8(v96) == 1 && v95[0])
              {
                v95[1] = v95[0];
                operator delete(v95[0]);
              }

              if (BYTE8(v94) == 1 && v93[0])
              {
                v93[1] = v93[0];
                operator delete(v93[0]);
              }

              if (*(&v91 + 1))
              {
                *&v92 = *(&v91 + 1);
                operator delete(*(&v91 + 1));
              }

              if (v90[0])
              {
                v90[1] = v90[0];
                operator delete(v90[0]);
              }

              if (*(&v88 + 1))
              {
                *&v89 = *(&v88 + 1);
                operator delete(*(&v88 + 1));
              }

              if (SBYTE7(v87) < 0)
              {
                operator delete(v86[0]);
              }

              if (SHIBYTE(v30) < 0)
              {
                operator delete(v29[0]);
              }

              v103 = 0;
              v102 = 0u;
              v101 = 0u;
              v100 = 0u;
              v99 = 0u;
              v98 = 0u;
              *v97 = 0u;
              v96 = 0u;
              *v95 = 0u;
              v94 = 0u;
              *v93 = 0u;
              v92 = 0u;
              v91 = 0u;
              *v90 = 0u;
              v89 = 0u;
              v88 = 0u;
              v87 = 0u;
              *v86 = 0u;
              if (*(a1 + 63) < 0)
              {
                sub_100005F2C(v26, *(a1 + 40), *(a1 + 48));
              }

              else
              {
                *v26 = *(a1 + 40);
                v27 = *(a1 + 56);
              }

              sub_100BA5EB4();
            }

            v19 = (*(**(v4 + 48) + 16))(*(v4 + 48), *(v4 + 96));
            if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
            {
              sub_1017795CC();
            }

            v20 = *(v4 + 432);
            if (v20)
            {
              if (*(a1 + 63) < 0)
              {
                sub_100005F2C(v29, *(a1 + 40), *(a1 + 48));
              }

              else
              {
                *v29 = *(a1 + 40);
                v30 = *(a1 + 56);
              }

              DWORD2(v87) = 5;
              (*(*v20 + 24))(v20, v29, v86);
              sub_101779600(v86, v29);
            }

            if (v51 == 1)
            {
              sub_100C18C58(v35);
            }

            if (v52)
            {
              v53 = v52;
              operator delete(v52);
            }

            v24 = v22;
            *&v56 = v22;
            if (SHIBYTE(v59) < 0)
            {
              operator delete(v58[1]);
            }

            std::locale::~locale(v57);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            *&v104 = v21;
            *(&v104 + *(v21 - 24)) = v23;
            *&v105 = v24;
            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107[1]);
            }

            std::locale::~locale(v106);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            if (SHIBYTE(v72) < 0)
            {
              operator delete(v71[0]);
            }
          }

          else
          {
            v16 = (*(**(v4 + 48) + 16))(*(v4 + 48), *(v4 + 96));
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
            {
              sub_101779598();
            }

            v17 = *(v4 + 432);
            if (*(a1 + 63) < 0)
            {
              sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
            }

            else
            {
              *__p = *(a1 + 40);
              *&v56 = *(a1 + 56);
            }

            DWORD2(v105) = 5;
            (*(*v17 + 24))(v17, __p, &v104);
            sub_101779600(&v104, __p);
          }

          sub_101779634(v81, v82, &__src, v83);
        }

        else
        {
          sub_1006AF6DC(&v104 + 8, v85);
          v9 = DWORD2(v116);
          sub_1006AF788(&v104 + 8);
          if (v9 == 9)
          {
            v10 = *(v4 + 432);
            if (v10)
            {
              if (*(a1 + 63) < 0)
              {
                sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
              }

              else
              {
                *__p = *(a1 + 40);
                *&v56 = *(a1 + 56);
              }

              (*(*v10 + 32))(v10, __p, 0);
              sub_101760E98(__p);
            }
          }

          else
          {
            v14 = (*(**(v4 + 48) + 16))(*(v4 + 48), *(v4 + 96));
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
            {
              asString(v84);
              sub_101779544();
            }

            v15 = *(v4 + 432);
            if (v15)
            {
              if (*(a1 + 63) < 0)
              {
                sub_100005F2C(v35, *(a1 + 40), *(a1 + 48));
              }

              else
              {
                *v35 = *(a1 + 40);
                *&v36 = *(a1 + 56);
              }

              (*(*v15 + 32))(v15, v35, 0);
              sub_101760E98(v35);
            }
          }
        }
      }

      sub_100004A34(v6);
    }
  }

  return sub_1006AF788(v85);
}

void sub_1006AF450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, void *__p, void *a63)
{
  if (a61 == 1)
  {
    sub_100C18C58(&a27);
  }

  if (__p)
  {
    a63 = __p;
    operator delete(__p);
  }

  sub_10068C9D8(&a65);
  sub_10068C9D8(&STACK[0x760]);
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  sub_1006B0438(&STACK[0x3C8]);
  if (LOBYTE(STACK[0x548]) == 1)
  {
    sub_100583454(&STACK[0x478]);
  }

  sub_100004A34(v65);
  sub_1006AF788(v66 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AF690(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006AF6DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 224) = -1;
  sub_1006AF724(a1, a2);
  return a1;
}

uint64_t sub_1006AF724(uint64_t a1, uint64_t a2)
{
  result = sub_1006AF788(a1);
  v5 = *(a2 + 224);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E70680[v5])(&v6, a2);
    *(a1 + 224) = v5;
  }

  return result;
}

uint64_t sub_1006AF788(uint64_t result)
{
  v1 = result;
  v2 = *(result + 224);
  if (v2 != -1)
  {
    result = (off_101E70628[v2])(&v3, result);
  }

  *(v1 + 224) = -1;
  return result;
}

void sub_1006AF7F0(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + 176);
  sub_10003CA58(&v7);
  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1006AF894(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + 176);
  sub_10003CA58(&v7);
  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}