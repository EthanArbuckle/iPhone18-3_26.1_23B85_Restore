void sub_249C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_249C4C(uint64_t a1)
{
  sub_2492C0(*(a1 + 72));
  sub_249314(*(a1 + 48));
  sub_2493B4(a1);
  return a1;
}

uint64_t sub_249C88(uint64_t a1)
{
  sub_2492C0(*(a1 + 80));
  sub_249314(*(a1 + 56));
  sub_2493B4((a1 + 8));
  return a1;
}

void sub_249CC4(void *a1)
{
  if (a1)
  {
    sub_249CC4(*a1);
    sub_249CC4(a1[1]);
    sub_477A0(a1[18]);
    sub_477A0(a1[15]);
    if (*(a1 + 72) == 1)
    {
      v2 = a1[6];
      if (v2)
      {
        a1[7] = v2;
        operator delete(v2);
      }
    }

    operator delete(a1);
  }
}

void sub_249D3C()
{
  sub_249E54(qword_6E8DE8);
  sub_477A0(qword_6E8DC8);
  sub_477A0(qword_6E8DB0);
  sub_477A0(qword_6E8D98);
  sub_477A0(qword_6E8D80);
  if (qword_6E8D60)
  {
    qword_6E8D68 = qword_6E8D60;
    operator delete(qword_6E8D60);
  }

  v0 = qword_6E8D50;

  sub_249EB0(v0);
}

uint64_t sub_249DB4(uint64_t a1)
{
  sub_477A0(*(a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_249E00(uint64_t a1)
{
  sub_249CC4(*(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_477A0(*(a1 + 72));
  sub_477A0(*(a1 + 40));
  sub_4E0BC(a1);
  return a1;
}

void sub_249E54(void *a1)
{
  if (a1)
  {
    sub_249E54(*a1);
    sub_249E54(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void sub_249EB0(void *a1)
{
  if (a1)
  {
    sub_249EB0(*a1);
    sub_249EB0(a1[1]);
    sub_2492C0(a1[14]);
    sub_249314(a1[11]);
    sub_2493B4(a1 + 5);

    operator delete(a1);
  }
}

uint64_t *sub_249F14(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_6E8D48)
  {
    qword_6E8D48 = *qword_6E8D48;
    a3 = *a2;
  }

  result = sub_46B9C(qword_6E8D50, a3);
  ++qword_6E8D58;
  return result;
}

uint64_t sub_249F74(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = *(a2 + 24);
  sub_44E44((a1 + 32), a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  sub_24A55C((a1 + 64), (a2 + 64));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_99AD4(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  *(a1 + 120) = 0;
  v4 = (a1 + 120);
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  v5 = *(a2 + 112);
  v6 = (a2 + 120);
  if (v5 != v6)
  {
    do
    {
      v7 = *v4;
      v8 = a1 + 120;
      if (*(a1 + 112) == v4)
      {
        goto LABEL_10;
      }

      v9 = *v4;
      v10 = a1 + 120;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = *(v9 + 8);
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = *(v10 + 16);
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = *(v5 + 8);
      if (*(v8 + 32) < v12)
      {
LABEL_10:
        if (v7)
        {
          v13 = (v8 + 8);
        }

        else
        {
          v13 = (a1 + 120);
        }
      }

      else
      {
        v13 = (a1 + 120);
        if (v7)
        {
          v13 = (a1 + 120);
          while (1)
          {
            while (1)
            {
              v16 = v7;
              v17 = *(v7 + 32);
              if (v12 >= v17)
              {
                break;
              }

              v7 = *v16;
              v13 = v16;
              if (!*v16)
              {
                goto LABEL_14;
              }
            }

            if (v17 >= v12)
            {
              break;
            }

            v13 = v16 + 1;
            v7 = v16[1];
            if (!v7)
            {
              goto LABEL_14;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_14:
        operator new();
      }

      v14 = v5[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v5[2];
          v11 = *v15 == v5;
          v5 = v15;
        }

        while (!v11);
      }

      v5 = v15;
    }

    while (v15 != v6);
  }

  return a1;
}

void sub_24A4A8(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 72));
  sub_477A0(*(v1 + 40));
  sub_4E0BC(v1);
  _Unwind_Resume(a1);
}

void *sub_24A55C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_1DF868(a1, v3, *(v5 + 7));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void sub_24A608(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_477A0(*(a2 + 144));
    sub_477A0(*(a2 + 120));
    if (*(a2 + 72) == 1)
    {
      v3 = *(a2 + 48);
      if (v3)
      {
        *(a2 + 56) = v3;
        operator delete(v3);
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void **sub_24A680(void **a1)
{
  sub_477A0(a1[7]);
  sub_24A6BC(a1[4]);
  sub_24A6BC(a1[1]);
  return a1;
}

void sub_24A6BC(void *a1)
{
  if (a1)
  {
    sub_24A6BC(*a1);
    sub_24A6BC(a1[1]);
    sub_24A720(a1[13]);
    v2 = a1[9];
    a1[9] = 0;
    if (v2)
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void sub_24A720(void *a1)
{
  if (a1)
  {
    sub_24A720(*a1);
    sub_24A720(a1[1]);
    sub_477A0(a1[12]);
    v2 = a1[8];
    if (v2)
    {
      a1[9] = v2;
      operator delete(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      a1[6] = v3;
      operator delete(v3);
    }

    operator delete(a1);
  }
}

void sub_24A794(void ***a1)
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
        v6 = v4 - 88;
        sub_EF868((v4 - 72));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_24A81C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v6 = v2[1];
      v5 = v2[2];
      v2[2] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v6;
    }
  }
}

std::string *sub_24A8B0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10();
  *(a1 + 104) = 0;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  *a1 = 1953460273;
  if ((*(a1 + 12) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  *(a1 + 8) = 2;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 5;
  LODWORD(v5) = 1;
  sub_1F8148((a1 + 24), &v5, &v5 + 4, 1uLL);
  *&v5 = 0x400000003;
  sub_1F8148((a1 + 48), &v5, &v5 + 8, 2uLL);
  *(a1 + 72) = 16843009;
  *(a1 + 78) = 257;
  *(a1 + 84) = 257;
  *(a1 + 88) = 256;
  *(a1 + 304) = -1047527424;
  *(a1 + 308) = 1;
  *(a1 + 340) = 1103101952;
  *(a1 + 344) = 1;
  *(a1 + 364) = 0;
  *(a1 + 368) = 1;
  *(a1 + 372) = 0;
  *(a1 + 376) = 1;
  *(a1 + 356) = 0;
  *(a1 + 360) = 1;
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 380) = -1040187392;
  *(a1 + 384) = 1;
  *(a1 + 430) = 257;
  *(a1 + 312) = 0;
  *(a1 + 316) = 1;
  *(a1 + 320) = 257;
  *(a1 + 428) = 257;
  if ((*(a1 + 692) & 1) == 0)
  {
    *(a1 + 692) = 1;
  }

  *(a1 + 688) = 1836282987;
  if ((*(a1 + 700) & 1) == 0)
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 696) = 2;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 8;
  if ((*(a1 + 716) & 1) == 0)
  {
    *(a1 + 716) = 1;
  }

  *(a1 + 712) = 8;
  *(a1 + 728) = 13;
  *(a1 + 732) = 1;
  *(a1 + 736) = 13;
  *(a1 + 740) = 1;
  *(a1 + 744) = 13;
  *(a1 + 748) = 1;
  *(a1 + 760) = 13;
  *(a1 + 764) = 1;
  *(a1 + 828) = 17;
  *(a1 + 832) = 1;
  *(a1 + 836) = 3;
  *(a1 + 840) = 1;
  *(a1 + 844) = 12;
  *(a1 + 848) = 1;
  *(a1 + 852) = 17;
  *(a1 + 856) = 1;
  *(a1 + 904) = 6;
  *(a1 + 908) = 1;
  *(a1 + 912) = 17;
  *(a1 + 916) = 1;
  *(a1 + 920) = 10;
  *(a1 + 924) = 1;
  *(a1 + 928) = 5;
  *(a1 + 932) = 1;
  *(a1 + 860) = 257;
  sub_30F70C(&v5, 87);
  v3 = (a1 + 952);
  if (*(a1 + 976) == 1)
  {
    if (*(a1 + 975) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v5;
    *(a1 + 968) = v6;
  }

  else
  {
    *v3 = v5;
    *(a1 + 968) = v6;
    *(a1 + 976) = 1;
  }

  sub_1F826C((a1 + 984), "_top_mic_general");
  sub_1F826C((a1 + 1016), "_top_mic_measurement");
  return sub_1F826C((a1 + 1048), "_top_mic_hearing_accessibility");
}

void sub_24AEF0()
{
  sub_24A8B0(v0);
  sub_47DB04(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

std::__shared_weak_count *sub_24AF84(uint64_t *a1, int8x8_t *a2, int *a3)
{
  v4 = a2[6];
  if (!*&v4)
  {
    goto LABEL_19;
  }

  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = v6 ^ *a3 ^ v7;
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ v5 ^ v7;
    if (*&v4 <= v8)
    {
      v10 = v8 % v4.i32[0];
    }
  }

  else
  {
    v10 = (v4.i32[0] - 1) & v8;
  }

  v11 = *(*&a2[5] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v8)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v4)
      {
        v13 %= *&v4;
      }
    }

    else
    {
      v13 &= *&v4 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 5) != v6 || *(v12 + 4) != v5 || *(v12 + 6) != v7)
  {
    goto LABEL_18;
  }

  v14 = sub_24B24C(&a2[5], a3);
  v15 = v14;
  *a1 = 0;
  a1[1] = 0;
  v16 = v14[5];
  if (!v16)
  {
    goto LABEL_19;
  }

  result = std::__shared_weak_count::lock(v16);
  a1[1] = result;
  if (!result)
  {
    goto LABEL_19;
  }

  v18 = v15[4];
  *a1 = v18;
  if (!v18)
  {
    sub_1A8C0(result);
    goto LABEL_19;
  }

  return result;
}

uint64_t *sub_24B24C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ *a2 ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ v2 ^ v4;
    if (*&v6 <= v5)
    {
      v8 = v5 % v6.i32[0];
    }
  }

  else
  {
    v8 = (v6.i32[0] - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (*(v10 + 5) != v3 || *(v10 + 4) != v2 || *(v10 + 6) != v4)
  {
    goto LABEL_19;
  }

  return v10;
}

uint64_t sub_24B68C(uint64_t a1, uint64_t a2)
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

void sub_24B710(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BB1E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_24B784(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_24B7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(24);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&v22, a2);
        v6 = v24;
        v7 = v22;
        sub_23148(__p, (a1 + 8));
        v8 = &v22;
        if (v6 < 0)
        {
          v8 = v7;
        }

        if (v21 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136316162;
        v26 = "Port.cpp";
        v27 = 1024;
        v28 = 436;
        v29 = 1024;
        v30 = a2;
        v31 = 2080;
        v32 = v8;
        v33 = 2080;
        v34 = v9;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting sub-port %u (%s) active on port %s.", buf, 0x2Cu);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(v22);
        }
      }
    }
  }

  (*(*a1 + 432))(&v22, a1, a2);
  v10 = v22;
  if (v22 == v23)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v13 = v21;
      v14 = __p[0];
      sub_23148(v18, (a1 + 8));
      v15 = __p;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v19 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = v18[0];
      }

      *buf = 136316162;
      v26 = "Port.cpp";
      v27 = 1024;
      v28 = 438;
      v29 = 1024;
      v30 = a2;
      v31 = 2080;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find a match for sub-port %u (%s) active on port %s.", buf, 0x2Cu);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Could not find a match for sub-port %u (%s) active on port %s.");
  }

  *(a1 + 120) = a2;
  *(a1 + 124) = 1;
  if (v10)
  {
    v23 = v10;
    operator delete(v10);
  }
}

void sub_24BAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BB20()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "Port.cpp";
      v5 = 1024;
      v6 = 470;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Cannot set routable state if CanSetRoutable() returns false.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Cannot set routable state if CanSetRoutable() returns false.");
}

void sub_24BC08(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = sub_5544(24);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_23148(&v30, (a1 + 8));
        v8 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
        v9 = v30.__r_.__value_.__r.__words[0];
        sub_22170(__p, a2);
        v10 = &v30;
        if (v8 < 0)
        {
          v10 = v9;
        }

        if (v29 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136316162;
        *&buf[4] = "Port.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 763;
        *&buf[18] = 2080;
        *&buf[20] = v10;
        v32 = 1024;
        v33 = a2;
        v34 = 2080;
        v35 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port: %s; ID: %u (%s)", buf, 0x2Cu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v13 == v12)
  {
LABEL_33:
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&v30, a2);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v30;
      }

      else
      {
        v25 = v30.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 776;
      *&buf[18] = 2080;
      *&buf[20] = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No match found for internal sub-port ID: %s", buf, 0x1Cu);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No match found for internal sub-port ID: %s");
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    v17 = v13[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_A04EC(buf, *(v16 + 32), *(v16 + 40), a2);
    if (v14)
    {
      operator delete(v14);
    }

    v18 = *&buf[16];
    v14 = *buf;
    v27 = *buf;
    v19 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v20 = sub_5544(24);
      if (*(v20 + 8))
      {
        v21 = *v20;
        if (*v20)
        {
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
          {
            sub_24C060(&v30, v14, v19);
            v22 = &v30;
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = v30.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "Port.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 771;
            *&buf[18] = 2080;
            *&buf[20] = v22;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning %s", buf, 0x1Cu);
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v15 = 1;
    }

    if (v17)
    {
      sub_1A8C0(v17);
    }

    if (v14 != v19)
    {
      break;
    }

    v13 += 2;
    if (v13 == v12)
    {
      *a3 = v27;
      a3[2] = v18;
      goto LABEL_33;
    }
  }

  *a3 = v27;
  a3[2] = v18;
  if (!(v15 & 1 | (v14 == 0)))
  {
    a3[1] = v14;
    operator delete(v14);
  }
}

void sub_24BFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_24C060(std::string *a1, unsigned int *a2, unsigned int *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_22170(&v13, *a2);
      v7 = std::string::insert(&v13, 0, "'", 1uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v14, "'", 1uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v16 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v16 >= 0)
      {
        v12 = HIBYTE(v16);
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a1, v11, v12);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (++a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_24C1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

CFMutableDictionaryRef sub_24C22C@<X0>(uint64_t a1@<X8>)
{
  result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = result;
  *(a1 + 8) = 257;
  return result;
}

void sub_24C27C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "Port.cpp";
      v5 = 1024;
      v6 = 749;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): not implemented", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "not implemented");
}

char *sub_24C364@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[495] < 0)
  {
    return sub_54A0(a2, *(result + 59), *(result + 60));
  }

  *a2 = *(result + 472);
  *(a2 + 16) = *(result + 61);
  return result;
}

void sub_24C390(os_unfair_lock_s *a1)
{
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_23148(__p, a1 + 2);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "Port.cpp";
    v10 = 1024;
    v11 = 605;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Port: %s does not have sub-ports with Polar patterns", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Port: %s does not have sub-ports with Polar patterns");
}

uint64_t sub_24C4BC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v4 != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v7;
        sub_1A8C0(v6);
        if (v8 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (*v7 == a2)
      {
        goto LABEL_8;
      }

      v4 += 2;
    }

    while (v4 != v5);
    v4 = v5;
LABEL_8:
    v5 = *(a1 + 104);
  }

  if (v4 == v5)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v19, a2);
      v12 = v20;
      v13 = v19[0];
      sub_22170(__p, *(a1 + 144));
      v14 = v19;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136315906;
      v22 = "Port.cpp";
      v23 = 1024;
      v24 = 580;
      v25 = 2080;
      v26 = v14;
      v27 = 2080;
      v28 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get type for unknown sub-port (%s) type on port with type %s.", buf, 0x26u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get type for unknown sub-port (%s) type on port with type %s.");
  }

  return (*v4)[1];
}

void sub_24C6A4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24C6D4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  (*(*a1 + 224))(a1);
  if (*(a4 + 4) == 1 && !sub_A0D78(a1, a3))
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&__p, (a1 + 8));
      v46 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      v54 = "Port.cpp";
      v55 = 1024;
      v56 = 549;
      v57 = 2080;
      v58 = v46;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempting to set a polar pattern on a port (%s) that does not support polar patterns.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to set a polar pattern on a port (%s) that does not support polar patterns.");
  }

  v9 = sub_5544(24);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(&__p, (a1 + 8));
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v54 = "Port.cpp";
    v55 = 1024;
    v56 = 551;
    v57 = 2080;
    v58 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting preferred sub-port on port %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v13 != v12)
  {
    do
    {
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *v15;
        sub_1A8C0(v14);
        if (v16 == a3)
        {
          goto LABEL_17;
        }
      }

      else if (*v15 == a3)
      {
        goto LABEL_17;
      }

      v13 += 2;
    }

    while (v13 != v12);
    v13 = v12;
LABEL_17:
    v12 = *(a1 + 104);
  }

  if (v13 == v12)
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, a3);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      sub_22170(v50, *(a1 + 144));
      v36 = v51;
      v37 = v50[0];
      sub_22170(v48, a3);
      v38 = v50;
      if (v36 < 0)
      {
        v38 = v37;
      }

      if (v49 >= 0)
      {
        v39 = v48;
      }

      else
      {
        v39 = v48[0];
      }

      *buf = 136316162;
      v54 = "Port.cpp";
      v55 = 1024;
      v56 = 558;
      v57 = 2080;
      v58 = p_p;
      v59 = 2080;
      v60 = v38;
      v61 = 2080;
      v62 = v39;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to set unknown sub-port (%s) preferred on port with type %s. Requested sub-port: %s", buf, 0x30u);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v40, "Attempt to set unknown sub-port (%s) preferred on port with type %s. Requested sub-port: %s");
  }

  v18 = *v13;
  v17 = v13[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  if (v19 != v20)
  {
    v21 = v19 + 16;
    do
    {
      v22 = *(v21 - 8);
      v23 = v22 != 1852796517 || v21 == v20;
      v21 += 16;
    }

    while (!v23);
    if (v22 != 1852796517)
    {
      v41 = sub_5544(14);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "SubPort.cpp";
        v55 = 1024;
        v56 = 137;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v43, "Precondition failure.");
    }
  }

  *(a1 + 128) = *v19;
  *(a1 + 132) = 1;
  if (*(v18 + 8) >= 2)
  {
    v24 = sub_5544(24);
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_4D89A4(&__p, v18);
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v54 = "Port.cpp";
        v55 = 1024;
        v56 = 564;
        v57 = 2080;
        v58 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client has set a preferred sub-port that does not have client scope: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v27 = *(a1 + 124);
  v28 = *(a1 + 132);
  if (v27 == v28 && v27 != 0)
  {
    v27 = *(a1 + 120);
    v28 = *(a1 + 128);
  }

  if (v27 != v28)
  {
    v30 = sub_809C0();
    v31 = *(a1 + 80);
    v32 = *(a1 + 88);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257DAC(v30, 0x70707570u, v31, v32, a5);
    if (v32)
    {
      std::__shared_weak_count::__release_weak(v32);
    }
  }

  if (v17)
  {
    sub_1A8C0(v17);
  }
}

void sub_24CCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24CDC4(uint64_t a1)
{
  if (*(a1 + 96) == *(a1 + 104))
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "Port.cpp";
      v19 = 1024;
      v20 = 500;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a1 + 124) != 1)
  {
    return 0;
  }

  v2 = sub_5544(24);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        if ((*(a1 + 124) & 1) == 0)
        {
          sub_1EC054();
        }

        v4 = *(a1 + 120);
        sub_22170(&__p, v4);
        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136315906;
        v18 = "Port.cpp";
        v19 = 1024;
        v20 = 503;
        v21 = 1024;
        v22 = v4;
        v23 = 2080;
        v24 = p_p;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Looking up client visible port ID for %u (%s)", buf, 0x22u);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  if ((*(a1 + 124) & 1) == 0)
  {
    sub_1EC054();
  }

  sub_24D0D8(&__p, a1, *(a1 + 120));
  if (!__p)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "Port.cpp";
      v19 = 1024;
      v20 = 505;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Precondition failure.");
  }

  v6 = *__p;
  if (v15)
  {
    sub_1A8C0(v15);
  }

  return v6 | 0x100000000;
}

void sub_24D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D0D8(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v6 == v7)
  {
    v8 = *a1;
LABEL_10:
    *a1 = v8;
    v10 = sub_5544(24);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v18, a3);
      v12 = v19;
      v13 = v18[0];
      sub_23148(__p, (a2 + 8));
      v14 = v18;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v17 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136316162;
      v21 = "Port.cpp";
      v22 = 1024;
      v23 = 430;
      v24 = 1024;
      v25 = a3;
      v26 = 2080;
      v27 = v14;
      v28 = 2080;
      v29 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find match for internal sub-port ID %u (%s) for Port %s", buf, 0x2Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v6;
      v9 = v6[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      buf[0] = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v18[0]) = 0;
      BYTE4(v18[0]) = 0;
      if (sub_A03F8(v8, a3, buf, v18))
      {
        break;
      }

      if (v9)
      {
        sub_1A8C0(v9);
      }

      v6 += 2;
      if (v6 == v7)
      {
        a1[1] = v9;
        goto LABEL_10;
      }
    }

    *a1 = v8;
    a1[1] = v9;
  }
}

void sub_24D2B0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_24D304(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 208), a2);
  std::string::operator=((a1 + 232), a2 + 1);

  return std::string::operator=((a1 + 256), a2 + 2);
}

void sub_24D354(uint64_t a1)
{
  v2 = a1 + 368;
  v15 = a1 + 368;
  v3 = (*(*(a1 + 368) + 16))(a1 + 368);
  v16 = v3;
  *(a1 + 496) = 1;
  sub_B0484(&v13, (a1 + 320));
  for (i = v14; i != &v13; i = i[1])
  {
    v5 = i[2];
    v6 = *(a1 + 88);
    v11 = *(a1 + 80);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*(v5 + 368) + 16))(v5 + 368);
    sub_24D780((v5 + 320), &v11);
    if (v7)
    {
      (*(*(v5 + 368) + 24))(v5 + 368);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  sub_87980(&v13);
  sub_65310((a1 + 320));
  sub_B0484(&v13, (a1 + 344));
  for (j = v14; j != &v13; j = j[1])
  {
    v9 = j[2];
    v10 = *(a1 + 88);
    v11 = *(a1 + 80);
    v12 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_24D580(v9, &v11);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  sub_87980(&v13);
  sub_65310((a1 + 344));
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_24D544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

void sub_24D580(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 368;
  v16 = a1 + 368;
  v5 = (*(*(a1 + 368) + 16))(a1 + 368);
  v17 = v5;
  v6 = sub_5544(24);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_11AB44(v14, a2);
    v8 = v15;
    v9 = v14[0];
    sub_23148(__p, (a1 + 8));
    v10 = v14;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    v19 = "Port.cpp";
    v20 = 1024;
    v21 = 711;
    v22 = 2080;
    v23 = v10;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d removing partner port %s from %s", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  sub_24D780((a1 + 344), a2);
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void sub_24D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_224F4C(&a18);
  _Unwind_Resume(a1);
}

void sub_24D780(uint64_t *a1, uint64_t *a2)
{
  v37[0] = v37;
  v37[1] = v37;
  v38 = 0;
  v2 = a1[1];
  if (v2 == a1)
  {
    goto LABEL_72;
  }

  do
  {
    v5 = v2[3];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      v7 = v6;
      if (v6)
      {
        v8 = v2[2];
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v6);
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 0;
LABEL_7:
    v9 = a2[1];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      v11 = v10;
      if (v10)
      {
        v12 = *a2;
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v10);
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = 0;
        if (!v7)
        {
LABEL_18:
          v14 = 0;
          v13 = 0;
          if (!v11)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (!v11)
    {
LABEL_22:
      v16 = v14 == 0;
      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_23:
      sub_1A8C0(v13);
      goto LABEL_24;
    }

LABEL_19:
    v15 = std::__shared_weak_count::lock(v11);
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = v14 == v12;
    sub_1A8C0(v15);
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v17 = v2[1];
    if (!v16)
    {
      goto LABEL_71;
    }

    while (1)
    {
      if (v17 == a1)
      {
        v29 = 1;
        goto LABEL_60;
      }

      v18 = v17[3];
      if (v18)
      {
        v19 = std::__shared_weak_count::lock(v18);
        v20 = v19;
        if (v19)
        {
          v21 = v17[2];
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v19);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      v22 = a2[1];
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        v24 = v23;
        if (v23)
        {
          v25 = *a2;
          atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v23);
          if (!v20)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v25 = 0;
          if (!v20)
          {
LABEL_45:
            v21 = 0;
            v26 = 0;
            if (!v24)
            {
              goto LABEL_49;
            }

            goto LABEL_46;
          }
        }
      }

      else
      {
        v25 = 0;
        v24 = 0;
        if (!v20)
        {
          goto LABEL_45;
        }
      }

      v26 = std::__shared_weak_count::lock(v20);
      if (!v26)
      {
        v21 = 0;
      }

      if (!v24)
      {
LABEL_49:
        v28 = v21 == 0;
        if (!v26)
        {
          goto LABEL_51;
        }

LABEL_50:
        sub_1A8C0(v26);
        goto LABEL_51;
      }

LABEL_46:
      v27 = std::__shared_weak_count::lock(v24);
      if (!v27)
      {
        goto LABEL_49;
      }

      v28 = v21 == v25;
      sub_1A8C0(v27);
      if (v26)
      {
        goto LABEL_50;
      }

LABEL_51:
      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }

      if (!v20)
      {
        break;
      }

      std::__shared_weak_count::__release_weak(v20);
      if (!v28)
      {
        goto LABEL_59;
      }

LABEL_57:
      v17 = v17[1];
    }

    if (v28)
    {
      goto LABEL_57;
    }

LABEL_59:
    v29 = 0;
LABEL_60:
    if (v2 != v17)
    {
      v30 = *v17;
      if (v37 != a1)
      {
        if (v30 == v2)
        {
          v33 = 1;
        }

        else
        {
          v31 = -1;
          v32 = v2;
          do
          {
            v32 = v32[1];
            ++v31;
          }

          while (v32 != v30);
          v33 = v31 + 2;
        }

        a1[2] -= v33;
        v38 += v33;
      }

      v34 = *(v30 + 8);
      v35 = *v2;
      *(v35 + 8) = v34;
      *v34 = v35;
      v36 = v37[0];
      *(v37[0] + 8) = v2;
      *v2 = v36;
      v37[0] = v30;
      *(v30 + 8) = v37;
    }

    if ((v29 & 1) == 0)
    {
      v17 = v17[1];
    }

LABEL_71:
    v2 = v17;
  }

  while (v17 != a1);
LABEL_72:
  sub_65310(v37);
}

uint64_t sub_24DA98(uint64_t a1, int *a2)
{
  if (a2[1] != 1735159650)
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[2];
  if (*a2 == 1886282093)
  {
    if (v3)
    {
      return 0;
    }
  }

  else if (v2 != 1886614625 && v2 != 1886613101 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_24DAF4(uint64_t a1, int *a2)
{
  if (a2[1] != 1735159650)
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[2];
  if (*a2 == 1886282093)
  {
    if (v3)
    {
      return 0;
    }
  }

  else if (v2 != 1886614625 && v2 != 1886613101 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_24DB50(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v22 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_21:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *a2;
      v23 = *(a2 + 2);
      sub_22CE0(__p);
    }

    goto LABEL_16;
  }

  if (!a6)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v24 = *(a2 + 2);
      sub_22CE0(__p);
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_21;
  }

  result = (*(*a1 + 24))(a1, a2);
  if ((result & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        v21 = *a2;
        v25 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 1852797029;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_24DFD8(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v19 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_16:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *a2;
      v20 = *(a2 + 2);
      sub_22CE0(__p);
    }

    goto LABEL_15;
  }

  if (!a6)
  {
    v15 = sub_5544(14);
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v18 = *a2;
        v21 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_24E33C(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v8 = sub_5544(14);
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v14 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v10 = 2003332927;
LABEL_12:
    exception[2] = v10;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v15 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v10 = 561211770;
    goto LABEL_12;
  }

  return 0;
}

void sub_24E5F4(uint64_t a1)
{
  *(a1 + 584) = 0;
  sub_24D354(a1);

  sub_F7240(a1);
}

uint64_t sub_24E630(uint64_t a1)
{
  sub_24EA34(a1);
  v2 = *(a1 + 144);
  if ((sub_31122C() & 1) == 0 && (v2 != 1885565807 ? (v4 = v2 == 1886745455) : (v4 = 1), !v4 ? (v5 = v2 == 1886745449) : (v5 = 1), v5))
  {
    v6 = *(a1 + 200);
    *buf = *(a1 + 192);
    *&buf[8] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(&__p, buf, "", 1497);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    if ((*(a1 + 184) & 1) == 0)
    {
      goto LABEL_26;
    }

    v7 = __p;
    v8 = (*(*__p + 88))(__p, 0);
    v9 = (*(*v7 + 312))(v7);
    v10 = sub_4DADAC(v7, 0);
    v11 = sub_5544(14);
    v12 = v8 + ((v9 >> 1) >> 31);
    v13 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "PortUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1505;
      v30 = 1024;
      *v31 = v12;
      *&v31[4] = 1024;
      *&v31[6] = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Number of Non Tap Input Streams: %u; Input Channels: %u", buf, 0x1Eu);
    }

    v14 = v10 < 3 && v12 == 1;
    v3 = v14;
    if ((*(a1 + 184) & 1) == 0)
    {
LABEL_26:
      v15 = __p;
      v16 = (*(*__p + 88))(__p, 1);
      v17 = sub_4DADAC(v15, 1);
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "PortUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1517;
        v30 = 1024;
        *v31 = v16;
        *&v31[4] = 1024;
        *&v31[6] = v17;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Number of Output Streams: %u; Output Channels: %u", buf, 0x1Eu);
      }

      v3 = v17 < 3 && v16 == 1;
    }

    if (v27)
    {
      sub_1A8C0(v27);
    }
  }

  else
  {
    v3 = 1;
  }

  v21 = sub_5544(14);
  v22 = *v21;
  if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v23 = "true";
    }

    else
    {
      v23 = "false";
    }

    sub_23148(&__p, (a1 + 8));
    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "PortUtilities.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1524;
    v30 = 2080;
    *v31 = v23;
    *&v31[8] = 2080;
    v32 = p_p;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Port returning %s for telephony support: %s", buf, 0x26u);
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  *(a1 + 585) = v3;
  *(a1 + 584) = 1;
  sub_F7240(a1);
  return 1;
}

void sub_24E9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_24EA34(os_unfair_lock_s *a1)
{
  sub_F7240(a1);
  v2 = sub_5544(24);
  v3 = sub_5544(9);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      if ((v5 & 1) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

  if (*(v2 + 8))
  {
LABEL_9:
    v7 = *v2;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_23148(__p, a1 + 2);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "Port.cpp";
      v12 = 1024;
      v13 = 154;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Instantiated Port: %s.", buf, 0x1Cu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_24EBA4(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_24EBDC(uint64_t a1)
{
  *a1 = off_6BB218;
  v2 = sub_5544(24);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_23148(__p, (a1 + 8));
    v4 = v18 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "Port.cpp";
    v20 = 1024;
    v21 = 211;
    v22 = 2080;
    v23 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deleting port %s", buf, 0x1Cu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(a1 + 144);
  if (v5 != 1885433888)
  {
    v6 = atomic_load(qword_70A338);
    if (v6 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v5);
          v13 = v18 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "Port.cpp";
          v20 = 1024;
          v21 = 221;
          v22 = 2080;
          v23 = v13;
          v24 = 2048;
          v25 = a1;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: A Port of type '%s' at %p is being destroyed by something other than the Object Destruction Handler", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if ((*(a1 + 496) & 1) == 0)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v5);
          v16 = v18 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "Port.cpp";
          v20 = 1024;
          v21 = 224;
          v22 = 2080;
          v23 = v16;
          v24 = 2048;
          v25 = a1;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: A Port of type '%s' at %p was not torn down prior to being destroyed", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  v7 = *(a1 + 504);
  if (v7)
  {
    *(a1 + 512) = v7;
    operator delete(v7);
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  sub_42A4D8(a1 + 368);
  sub_65310((a1 + 344));
  sub_65310((a1 + 320));
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_477A0(*(a1 + 168));
  *buf = a1 + 96;
  sub_72C14(buf);
  v9 = *(a1 + 88);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_13BFA8(a1);
  return a1;
}

void sub_24EF74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_24EF88(uint64_t a1)
{
  v2 = *(a1 + 608);
  if (!v2)
  {
    sub_46A74();
  }

  v3 = (*(*v2 + 48))(v2);
  v4 = sub_5544(24);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        sub_23148(__p, (a1 + 8));
        if (v10 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        v7 = "Disabled";
        *&buf[4] = "Port.cpp";
        v12 = 1024;
        *buf = 136315906;
        if (v3)
        {
          v7 = "Enabled";
        }

        v13 = 907;
        v14 = 2080;
        v15 = v6;
        v16 = 2080;
        v17 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dynamic Port updating state: %s will be %s", buf, 0x26u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  *buf = a1 + 616;
  v8 = (*(*(a1 + 616) + 16))(a1 + 616);
  buf[8] = v8;
  *(a1 + 720) = v3;
  sub_F7240(a1);
  if (v8)
  {
    (*(*(a1 + 616) + 24))(a1 + 616);
  }
}

void sub_24F15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24F188(uint64_t a1)
{
  v2 = a1 + 616;
  v3 = (*(*(a1 + 616) + 16))(a1 + 616);
  v4 = *(a1 + 720);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v4;
}

void sub_24F20C(uint64_t a1)
{
  v2 = a1 + 616;
  v3 = (*(*(a1 + 616) + 16))(a1 + 616);
  *(a1 + 720) = 0;
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  sub_24D354(a1);
}

void sub_24F2BC(uint64_t a1)
{
  sub_24F2F4(a1);

  operator delete();
}

uint64_t sub_24F2F4(uint64_t a1)
{
  *a1 = off_6BB638;
  if (*(a1 + 720))
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "Port.cpp";
        v7 = 1024;
        v8 = 877;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Dynamic port is being destroyed while still enabled!", &v5, 0x12u);
      }
    }
  }

  sub_42A4D8(a1 + 616);
  sub_246B88(a1 + 584);
  sub_24EBDC(a1);
  return a1;
}

void sub_24F3F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

_BYTE *sub_24F408(_BYTE *a1, uint64_t a2)
{
  *a1 = a2;
  a1[8] = 0;
  v3 = atomic_load((a2 + 96));
  if (v3 != pthread_self())
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "CAMutexWrapper.h";
        v9 = 1024;
        v10 = 120;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Major problem: Unlocker attempted to unlock a mutex not owned by the current thread!", &v7, 0x12u);
      }
    }
  }

  (*(**a1 + 24))();
  a1[8] = 1;
  return a1;
}

void sub_24F520(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

_BYTE *sub_24F52C(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 16))();
  }

  return a1;
}

void sub_24F588(uint64_t a1)
{
  *(a1 + 584) = 0;
  sub_F7240(a1);

  sub_24D354(a1);
}

uint64_t sub_24F5C4(uint64_t a1)
{
  sub_24EA34(a1);
  *(a1 + 584) = 1;
  sub_F7240(a1);
  return 1;
}

NSObject *sub_24F5FC(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 77;
  v9 = (*(a1[77] + 16))(a1 + 77);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (*a2 != 1885959026 || v11 != 1735159650 || v12 != 0)
  {
    if (v11 == 1735159650)
    {
      if (v10 == 1886282093 || (v10 != 1886614625 ? (v15 = v10 == 1886613101) : (v15 = 1), v15))
      {
        if (!v12)
        {
LABEL_26:
          v21 = (&dword_0 + 1);
          if (!v9)
          {
            return v21;
          }

          goto LABEL_33;
        }
      }
    }

    goto LABEL_31;
  }

  v16 = a1 + 74;
  for (i = a1[75]; i != v16; i = i[1])
  {
    if (i[2] == a3 && i[3] == a4)
    {
      if (i != v16)
      {
        v20 = *i;
        v19 = i[1];
        *(v20 + 8) = v19;
        *v19 = v20;
        --a1[76];
        operator delete(i);
        goto LABEL_26;
      }

      break;
    }
  }

  v22 = sub_5544(24);
  v21 = *v22;
  if (*v22)
  {
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "Port.cpp";
      v26 = 1024;
      v27 = 1035;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified routability listener does not exist", buf, 0x12u);
    }

LABEL_31:
    v21 = 0;
  }

  if (v9)
  {
LABEL_33:
    (*(*v8 + 24))(v8);
  }

  return v21;
}

NSObject *sub_24F824(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 77;
  v9 = (*(a1[77] + 16))(a1 + 77);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (*a2 == 1885959026 && v11 == 1735159650 && v12 == 0)
  {
    v16 = a1 + 74;
    for (i = a1[75]; ; i = i[1])
    {
      if (i == v16)
      {
        goto LABEL_30;
      }

      if (i[2] == a3 && i[3] == a4)
      {
        break;
      }
    }

    if (i == v16)
    {
LABEL_30:
      operator new();
    }

    v19 = sub_5544(24);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "Port.cpp";
        v24 = 1024;
        v25 = 1009;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified routability listener already exists", buf, 0x12u);
      }

LABEL_28:
      v20 = 0;
      if (v9)
      {
        goto LABEL_33;
      }

      return v20;
    }
  }

  else
  {
    if (v11 != 1735159650)
    {
      goto LABEL_28;
    }

    if (v10 != 1886282093 && v10 != 1886614625 && v10 != 1886613101)
    {
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_28;
    }

    v20 = (&dword_0 + 1);
  }

  if (v9)
  {
LABEL_33:
    (*(*v8 + 24))(v8);
  }

  return v20;
}

void sub_24FA6C(void *a1)
{
  sub_24FAA4(a1);

  operator delete();
}

uint64_t sub_24FAA4(void *a1)
{
  *a1 = off_6BB850;
  sub_42A4D8((a1 + 77));
  sub_4E0BC(a1 + 74);

  return sub_24EBDC(a1);
}

std::string *sub_24FB08(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[", 1uLL);
  std::to_string(&v29, *a2);
  v4 = std::string::insert(&v29, 0, "iesp: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v30, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v32 = v6->__r_.__value_.__r.__words[2];
  v31 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v8 = &v31;
  }

  else
  {
    v8 = v31;
  }

  if (v32 >= 0)
  {
    v9 = HIBYTE(v32);
  }

  else
  {
    v9 = *(&v31 + 1);
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::to_string(&v29, *(a2 + 4));
  v10 = std::string::insert(&v29, 0, "iess: ", 6uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v30, "; ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v32 = v12->__r_.__value_.__r.__words[2];
  v31 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v14 = &v31;
  }

  else
  {
    v14 = v31;
  }

  if (v32 >= 0)
  {
    v15 = HIBYTE(v32);
  }

  else
  {
    v15 = *(&v31 + 1);
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::to_string(&v29, *(a2 + 8));
  v16 = std::string::insert(&v29, 0, "pris: ", 6uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v30, "; ", 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  v31 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v20 = &v31;
  }

  else
  {
    v20 = v31;
  }

  if (v32 >= 0)
  {
    v21 = HIBYTE(v32);
  }

  else
  {
    v21 = *(&v31 + 1);
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::to_string(&v29, *(a2 + 12));
  v22 = std::string::insert(&v29, 0, "iede: ", 6uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v30, "; ", 2uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v32 = v24->__r_.__value_.__r.__words[2];
  v31 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v26 = &v31;
  }

  else
  {
    v26 = v31;
  }

  if (v32 >= 0)
  {
    v27 = HIBYTE(v32);
  }

  else
  {
    v27 = *(&v31 + 1);
  }

  std::string::append(a1, v26, v27);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_24FE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24FEE8(void *a1, unsigned int a2)
{
  sub_33DED4(a1, a2);
  sub_33E4AC((a1 + 3), a2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24FF28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24FF44(uint64_t a1, unsigned int a2, AudioObjectID a3)
{
  sub_33DED4(a1, a2);
  sub_33E4AC(a1 + 24, a2);
  v9 = &off_6DACD8;
  cf = 0;
  v20 = a3;
  inAddress = 0x676C6F626C6E616DLL;
  LODWORD(inAddress_8) = 0;
  sub_12794C(v16, &v20, &inAddress, 0, 0);
  LOBYTE(inAddress) = 0;
  v15 = 0;
  if (v19)
  {
    v6 = v18;
    v18 = 0;
    inAddress = &off_6DACD8;
    inAddress_8 = v6;
    v15 = 1;
    sub_8AAAC(&v17);
    if (v15)
    {
      v7 = inAddress_8;
      inAddress_8 = 0;
      v11 = &off_6DACD8;
      theString = v7;
LABEL_5:
      sub_8AAAC(&inAddress);
      goto LABEL_6;
    }
  }

  sub_224064(&v11, cf);
  v11 = &off_6DACD8;
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_48540((a1 + 48), theString);
  sub_8AAAC(&v11);
  sub_8AAAC(&v9);
  return a1;
}

void sub_2500B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_8AAAC(&a11);
  sub_8AAAC(&a9);
  if (*(v11 + 47) < 0)
  {
    operator delete(*(v11 + 24));
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void *sub_2500F8(void *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      v4 = *(a2 + 48);
      return sub_54A0(result, v4, v3);
    }

LABEL_7:
    if (*(a2 + 47) < 0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        v4 = *(a2 + 24);
        return sub_54A0(result, v4, v3);
      }
    }

    else if (*(a2 + 47))
    {
      *result = *(a2 + 24);
      v2 = *(a2 + 40);
      goto LABEL_14;
    }

    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *result = *a2;
      v2 = *(a2 + 16);
      goto LABEL_14;
    }

    v3 = *(a2 + 8);
    v4 = *a2;
    return sub_54A0(result, v4, v3);
  }

  if (!*(a2 + 71))
  {
    goto LABEL_7;
  }

  *result = *(a2 + 48);
  v2 = *(a2 + 64);
LABEL_14:
  result[2] = v2;
  return result;
}

uint64_t sub_250178(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, __int128 *a6, void *a7, __int128 *a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = off_6BB218;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15 = a7[1];
  v16 = v15 - *a7;
  if (v15 != *a7)
  {
    if (!((v16 >> 4) >> 60))
    {
      sub_1DC690(v16 >> 4);
    }

    sub_189A00();
  }

  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v17 = *a2;
  *(a1 + 149) = *(a2 + 5);
  *(a1 + 144) = v17;
  sub_44E44((a1 + 160), (a2 + 2));
  *(a1 + 184) = *(a2 + 20);
  *(a1 + 192) = *a3;
  v18 = a3[1];
  *(a1 + 200) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_54A0((a1 + 208), *a5, *(a5 + 8));
  }

  else
  {
    v19 = *a5;
    *(a1 + 224) = *(a5 + 16);
    *(a1 + 208) = v19;
  }

  if (*(a5 + 47) < 0)
  {
    sub_54A0((a1 + 232), *(a5 + 24), *(a5 + 32));
  }

  else
  {
    v20 = *(a5 + 24);
    *(a1 + 248) = *(a5 + 40);
    *(a1 + 232) = v20;
  }

  if (*(a5 + 71) < 0)
  {
    sub_54A0((a1 + 256), *(a5 + 48), *(a5 + 56));
  }

  else
  {
    v21 = *(a5 + 48);
    *(a1 + 272) = *(a5 + 64);
    *(a1 + 256) = v21;
  }

  if (*(a6 + 23) < 0)
  {
    sub_54A0((a1 + 280), *a6, *(a6 + 1));
  }

  else
  {
    v22 = *a6;
    *(a1 + 296) = *(a6 + 2);
    *(a1 + 280) = v22;
  }

  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 320;
  *(a1 + 328) = a1 + 320;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 344;
  *(a1 + 352) = a1 + 344;
  *(a1 + 360) = 0;
  sub_53E8(__p, "Port Sibling/Partner List Mutex");
  *(a1 + 368) = off_6D3C50;
  v23 = (a1 + 376);
  if ((__p[23] & 0x80000000) != 0)
  {
    sub_54A0(v23, *__p, *&__p[8]);
    v24 = __p[23];
    *(a1 + 400) = 850045863;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    if (v24 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    *v23 = *__p;
    *(a1 + 392) = *&__p[16];
    *(a1 + 400) = 850045863;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
  }

  if (*(a8 + 23) < 0)
  {
    sub_54A0((a1 + 472), *a8, *(a8 + 1));
  }

  else
  {
    v25 = *a8;
    *(a1 + 488) = *(a8 + 2);
    *(a1 + 472) = v25;
  }

  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  sub_46980(a1 + 504, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  sub_2500F8(__p, a5);
  if ((__p[23] & 0x80000000) != 0)
  {
    v26 = *&__p[8];
    operator delete(*__p);
    if (v26)
    {
      goto LABEL_32;
    }
  }

  else if (__p[23])
  {
    goto LABEL_32;
  }

  v27 = sub_5544(24);
  v28 = *v27;
  if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
  {
    *__p = 136315394;
    *&__p[4] = "Port.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 147;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d port name is zero-length.", __p, 0x12u);
  }

LABEL_32:
  v29 = *(a6 + 23);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a6 + 1);
  }

  if (!v29)
  {
    v31 = sub_5544(24);
    v32 = *v31;
    if (*v31)
    {
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "Port.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 148;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d inUID is zero-length.", __p, 0x12u);
      }
    }
  }

  return a1;
}

void sub_250628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_250750(v20 + 528);
  v27 = *(v20 + 504);
  if (v27)
  {
    *(v20 + 512) = v27;
    operator delete(v27);
  }

  if (*(v20 + 495) < 0)
  {
    operator delete(*v25);
  }

  sub_42A4D8(v24);
  sub_65310(v23);
  sub_65310(v22);
  if (*(v20 + 303) < 0)
  {
    operator delete(*v21);
  }

  sub_1E19A0(v20 + 208);
  v28 = *(v20 + 200);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  sub_477A0(*(v20 + 168));
  __p = a10;
  sub_72C14(&__p);
  v29 = *(v20 + 88);
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_13BFA8(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_250750(uint64_t a1)
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

void sub_250794(uint64_t a1, uint64_t a2)
{
  sub_5659C(&v3, (a2 + 192), "", 652);
  (*(*v3 + 288))();
  v2 = v4;
  if (v4)
  {

    sub_1A8C0(v2);
  }
}

void sub_250844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25085C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 368;
  v16 = a1 + 368;
  v5 = (*(*(a1 + 368) + 16))(a1 + 368);
  v17 = v5;
  if (*(a1 + 496) != 1)
  {
    sub_849B8();
  }

  v6 = sub_5544(24);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_11AB44(v14, a2);
    v8 = v15;
    v9 = v14[0];
    sub_23148(__p, (a1 + 8));
    v10 = v14;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    v19 = "Port.cpp";
    v20 = 1024;
    v21 = 661;
    v22 = 2080;
    v23 = v10;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Not adding sibling port %s to %s. This Port is already torn down", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void sub_250A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_224F4C(&a18);
  _Unwind_Resume(a1);
}

void *sub_250A70(void *a1, uint64_t a2)
{
  v4 = a2 + 368;
  v5 = (*(*(a2 + 368) + 16))(a2 + 368);
  result = sub_1132E8(a1, *(a2 + 328), a2 + 320);
  if (v5)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

uint64_t sub_250B30(uint64_t a1, uint64_t *a2)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_AddPartnerPort", 0x11uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        sub_11AB44(v34, a2);
        v6 = SBYTE3(v38);
        v7 = *v34;
        sub_23148(__p, (a1 + 8));
        v8 = v34;
        if (v6 < 0)
        {
          v8 = v7;
        }

        if (v29 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = v8;
        v31 = 2080;
        v32 = v9;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VA_AddPartnerPort", "Add Partner Port (%s) to %s", buf, 0x16u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE3(v38) < 0)
        {
          operator delete(*v34);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v27 = v4;
  v10 = sub_5544(43);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        *v34 = 136315650;
        *&v34[4] = "SignpostUtilities.h";
        v35 = 1024;
        v36 = 81;
        v37 = 2080;
        v38 = "kAddPartnerPort";
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", v34, 0x1Cu);
      }
    }
  }

  v12 = (*(*(a1 + 368) + 16))(a1 + 368);
  v13 = *(a1 + 496);
  if (v13 == 1)
  {
    v14 = sub_5544(24);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_11AB44(__p, a2);
      v16 = v29;
      v17 = __p[0];
      sub_23148(buf, (a1 + 8));
      v18 = __p;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v33 >= 0)
      {
        v19 = buf;
      }

      else
      {
        v19 = *buf;
      }

      *v34 = 136315906;
      *&v34[4] = "Port.cpp";
      v35 = 1024;
      v36 = 694;
      v37 = 2080;
      v38 = v18;
      v39 = 2080;
      v40 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Not adding partner port %s to %s. This Port is already torn down", v34, 0x26u);
      if (v33 < 0)
      {
        operator delete(*buf);
      }

      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if ((a1 + 344) == sub_1166C4(*(a1 + 352), (a1 + 344), a2))
  {
    v20 = sub_5544(24);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_11AB44(__p, a2);
      v22 = v29;
      v23 = __p[0];
      sub_23148(buf, (a1 + 8));
      v24 = __p;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if (v33 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      *v34 = 136315906;
      *&v34[4] = "Port.cpp";
      v35 = 1024;
      v36 = 701;
      v37 = 2080;
      v38 = v24;
      v39 = 2080;
      v40 = v25;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d adding partner port (%s) to %s", v34, 0x26u);
      if (v33 < 0)
      {
        operator delete(*buf);
      }

      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_849B8();
  }

  if (v12)
  {
    (*(*(a1 + 368) + 24))(a1 + 368);
  }

  sub_2510AC(&v27);
  return v13 ^ 1u;
}

void sub_25102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_signpost_id_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_224F4C(&a9);
  sub_2510AC(&a11);
  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_2510AC(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 81;
        v11 = 2080;
        v12 = "kAddPartnerPort";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_AddPartnerPort", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_25123C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_251248(uint64_t a1, uint64_t a2)
{
  sub_5659C(&v3, (a2 + 192), "", 734);
  (*(*v3 + 456))();
  v2 = v4;
  if (v4)
  {

    sub_1A8C0(v2);
  }
}

void sub_2512F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_251308(uint64_t a1, uint64_t a2)
{
  sub_5659C(&v3, (a2 + 192), "", 739);
  (*(*v3 + 464))();
  v2 = v4;
  if (v4)
  {

    sub_1A8C0(v2);
  }
}

void sub_2513B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2513C8(uint64_t a1, unsigned int a2)
{
  sub_24D0D8(&v6, a1, a2);
  if (v6)
  {
    v2 = *v6 & 0xFFFFFF00;
    v3 = *v6;
    v4 = 0x100000000;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
  }

  if (v7)
  {
    sub_1A8C0(v7);
  }

  return v4 | v2 | v3;
}

uint64_t sub_251440(uint64_t a1, uint64_t a2)
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

uint64_t sub_2514D8(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, __int128 *a6, void *a7, __int128 *a8, uint64_t a9)
{
  v10 = sub_250178(a1, a2, a3, a4, a5, a6, a7, a8);
  *v10 = off_6BB638;
  sub_251440((v10 + 73), a9);
  sub_53E8(__p, "Port Dynamic mutex");
  *(a1 + 616) = off_6D3C50;
  v11 = (a1 + 624);
  if (SHIBYTE(v15) < 0)
  {
    sub_54A0(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v15);
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v11 = *__p;
    *(a1 + 640) = v15;
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
  }

  *(a1 + 720) = 0;
  return a1;
}

void sub_2515D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_246B88(v15 + 584);
  sub_24EBDC(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_25160C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, __int128 *a6, void *a7, __int128 *a8, char a9, char a10)
{
  v11 = sub_250178(a1, a2, a3, a4, a5, a6, a7, a8);
  *v11 = off_6BB850;
  *(v11 + 584) = a10 ^ 1;
  *(v11 + 585) = a9;
  *(v11 + 592) = v11 + 592;
  *(v11 + 600) = v11 + 592;
  *(v11 + 608) = 0;
  sub_53E8(__p, "Port Routability Mutex");
  *(a1 + 616) = off_6D3C50;
  v12 = (a1 + 624);
  if ((__p[23] & 0x80000000) != 0)
  {
    sub_54A0(v12, *__p, *&__p[8]);
    v13 = __p[23];
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
    if (v13 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    *v12 = *__p;
    *(a1 + 640) = *&__p[16];
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
  }

  if ((*(a1 + 184) & 0x40) == 0)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "Port.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 936;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): CanSetRoutable() must be true.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "CanSetRoutable() must be true.");
  }

  return a1;
}

void sub_251800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_42A4D8(v16);
  sub_4E0BC(v15);
  sub_24EBDC(v14);
  _Unwind_Resume(a1);
}

void sub_251858(uint64_t a1)
{
  sub_88A00(&v50, (a1 + 32), "", 57);
  v2 = v50;
  v3 = (*(**(a1 + 8) + 328))(*(a1 + 8), v50);
  v4 = *(v2 + 144);
  if ((v5 & 1) == 0 || !v3)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, v4);
      v40 = v49 >= 0 ? __dst : __dst[0];
      *buf = 136315650;
      v53 = "RoutingHandlerAction_SetDSPParameter.cpp";
      v54 = 1024;
      v55 = 61;
      v56 = 2080;
      v57 = v40;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No dsp chain found for port type %s", buf, 0x1Cu);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No dsp chain found for port type %s");
  }

  v6 = *(v3 + 152);
  if (((*(*v6 + 144))(v6, *(a1 + 16)) & 1) == 0)
  {
    v11 = sub_5544(20);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    if (*(v6 + 735) < 0)
    {
      sub_54A0(__dst, *(v6 + 712), *(v6 + 720));
    }

    else
    {
      *__dst = *(v6 + 712);
      v49 = *(v6 + 728);
    }

    v15 = SHIBYTE(v49);
    v16 = __dst[0];
    sub_22170(v46, *(a1 + 16));
    v17 = __dst;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v47 >= 0)
    {
      v18 = v46;
    }

    else
    {
      v18 = v46[0];
    }

    *buf = 136315906;
    v53 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v54 = 1024;
    v55 = 67;
    v56 = 2080;
    v57 = v17;
    v58 = 2080;
    v59 = *&v18;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d DSPChain %s with AU %s not found", buf, 0x26u);
    goto LABEL_71;
  }

  if (!(*(*v6 + 56))(v6, *(a1 + 16), *(a1 + 48), 0))
  {
    v13 = sub_5544(20);
    v14 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    if (*(v6 + 735) < 0)
    {
      sub_54A0(__dst, *(v6 + 712), *(v6 + 720));
    }

    else
    {
      *__dst = *(v6 + 712);
      v49 = *(v6 + 728);
    }

    if (v49 >= 0)
    {
      v19 = __dst;
    }

    else
    {
      v19 = __dst[0];
    }

    sub_22170(v46, *(a1 + 48));
    v20 = SHIBYTE(v47);
    v21 = v46[0];
    sub_22170(v44, *(a1 + 16));
    v22 = v46;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v45 >= 0)
    {
      v23 = v44;
    }

    else
    {
      v23 = v44[0];
    }

    *buf = 136316162;
    v53 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v54 = 1024;
    v55 = 85;
    v56 = 2080;
    v57 = v19;
    v58 = 2080;
    v59 = *&v22;
    v60 = 2080;
    v61 = v23;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP chain : %s does not have Parameter %s for AU : %s", buf, 0x30u);
    goto LABEL_69;
  }

  v7 = sub_5544(20);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = __dst;
    sub_22170(__dst, *(a1 + 48));
    if (v49 < 0)
    {
      v9 = __dst[0];
    }

    v10 = *(a1 + 24);
    if (*(v6 + 735) < 0)
    {
      sub_54A0(v46, *(v6 + 712), *(v6 + 720));
    }

    else
    {
      *v46 = *(v6 + 712);
      v47 = *(v6 + 728);
    }

    if (v47 >= 0)
    {
      v24 = v46;
    }

    else
    {
      v24 = v46[0];
    }

    sub_22170(v44, *(a1 + 16));
    v25 = v45;
    v26 = v44[0];
    sub_22170(__p, v4);
    v27 = v44;
    if (v25 < 0)
    {
      v27 = v26;
    }

    v28 = __p[0];
    *buf = 136316674;
    if (v43 >= 0)
    {
      v28 = __p;
    }

    v53 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v54 = 1024;
    v55 = 74;
    v56 = 2080;
    v57 = v9;
    v58 = 2048;
    v59 = v10;
    v60 = 2080;
    v61 = v24;
    v62 = 2080;
    v63 = v27;
    v64 = 2080;
    v65 = v28;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Parameter (%s, %f) for chain : %s AU : %s Port type : %s", buf, 0x44u);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if ((*(*v6 + 72))(v6, *(a1 + 16), *(a1 + 48), 0, *(a1 + 24)))
  {
    v29 = sub_5544(20);
    v30 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v31 = __dst;
        sub_22170(__dst, *(a1 + 48));
        if (v49 < 0)
        {
          v31 = __dst[0];
        }

        v32 = *(a1 + 24);
        if (*(v6 + 735) < 0)
        {
          sub_54A0(v46, *(v6 + 712), *(v6 + 720));
        }

        else
        {
          *v46 = *(v6 + 712);
          v47 = *(v6 + 728);
        }

        if (v47 >= 0)
        {
          v33 = v46;
        }

        else
        {
          v33 = v46[0];
        }

        sub_22170(v44, *(a1 + 16));
        v34 = v45;
        v35 = v44[0];
        sub_22170(__p, v4);
        v36 = v44;
        if (v34 < 0)
        {
          v36 = v35;
        }

        v37 = __p[0];
        *buf = 136316674;
        if (v43 >= 0)
        {
          v37 = __p;
        }

        v53 = "RoutingHandlerAction_SetDSPParameter.cpp";
        v54 = 1024;
        v55 = 80;
        v56 = 2080;
        v57 = v31;
        v58 = 2048;
        v59 = v32;
        v60 = 2080;
        v61 = v33;
        v62 = 2080;
        v63 = v36;
        v64 = 2080;
        v65 = v37;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting DSP Parameter (%s, %f) for chain : %s AU : %s Port type : %s", buf, 0x44u);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_69:
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

LABEL_71:
        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46[0]);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }
  }

LABEL_75:
  if (v51)
  {
    sub_1A8C0(v51);
  }
}

void sub_251FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    sub_1A8C0(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_2520B0(uint64_t a1)
{
  sub_88A00(&v47, (a1 + 32), "", 24);
  v2 = v47;
  v3 = (*(**(a1 + 8) + 328))(*(a1 + 8), v47);
  v4 = *(v2 + 144);
  if ((v5 & 1) == 0 || !v3)
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, v4);
      v37 = v46 >= 0 ? __dst : __dst[0];
      *buf = 136315650;
      v50 = "RoutingHandlerAction_SetDSPParameter.cpp";
      v51 = 1024;
      v52 = 28;
      v53 = 2080;
      v54 = v37;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No dsp chain found for port type %s", buf, 0x1Cu);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No dsp chain found for port type %s");
  }

  v6 = *(v3 + 152);
  if (((*(*v6 + 144))(v6, *(a1 + 16)) & 1) == 0)
  {
    v11 = sub_5544(20);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_22170(__dst, *(a1 + 16));
    if (v46 >= 0)
    {
      v13 = __dst;
    }

    else
    {
      v13 = __dst[0];
    }

    *buf = 136315650;
    v50 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v51 = 1024;
    v52 = 33;
    v53 = 2080;
    v54 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d DSPChain with AU %s not found", buf, 0x1Cu);
    goto LABEL_68;
  }

  if (!(*(*v6 + 56))(v6, *(a1 + 16), *(a1 + 48), 0))
  {
    v14 = sub_5544(20);
    v15 = *v14;
    if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    if (*(v6 + 735) < 0)
    {
      sub_54A0(__dst, *(v6 + 712), *(v6 + 720));
    }

    else
    {
      *__dst = *(v6 + 712);
      v46 = *(v6 + 728);
    }

    if (v46 >= 0)
    {
      v16 = __dst;
    }

    else
    {
      v16 = __dst[0];
    }

    sub_22170(v43, *(a1 + 48));
    v17 = SHIBYTE(v44);
    v18 = v43[0];
    sub_22170(v41, *(a1 + 16));
    v19 = v43;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v42 >= 0)
    {
      v20 = v41;
    }

    else
    {
      v20 = v41[0];
    }

    *buf = 136316162;
    v50 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v51 = 1024;
    v52 = 51;
    v53 = 2080;
    v54 = v16;
    v55 = 2080;
    v56 = *&v19;
    v57 = 2080;
    v58 = v20;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP chain : %s does not have Parameter %s for AU : %s", buf, 0x30u);
    goto LABEL_64;
  }

  v7 = sub_5544(20);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = __dst;
    sub_22170(__dst, *(a1 + 48));
    if (v46 < 0)
    {
      v9 = __dst[0];
    }

    v10 = *(a1 + 20);
    if (*(v6 + 735) < 0)
    {
      sub_54A0(v43, *(v6 + 712), *(v6 + 720));
    }

    else
    {
      *v43 = *(v6 + 712);
      v44 = *(v6 + 728);
    }

    if (v44 >= 0)
    {
      v21 = v43;
    }

    else
    {
      v21 = v43[0];
    }

    sub_22170(v41, *(a1 + 16));
    v22 = v42;
    v23 = v41[0];
    sub_22170(__p, v4);
    v24 = v41;
    if (v22 < 0)
    {
      v24 = v23;
    }

    v25 = __p[0];
    *buf = 136316674;
    if (v40 >= 0)
    {
      v25 = __p;
    }

    v50 = "RoutingHandlerAction_SetDSPParameter.cpp";
    v51 = 1024;
    v52 = 40;
    v53 = 2080;
    v54 = v9;
    v55 = 2048;
    v56 = v10;
    v57 = 2080;
    v58 = v21;
    v59 = 2080;
    v60 = v24;
    v61 = 2080;
    v62 = v25;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Parameter (%s, %f) for chain : %s AU : %s Port type : %s", buf, 0x44u);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if ((*(*v6 + 72))(v6, *(a1 + 16), *(a1 + 48), 0, *(a1 + 20)))
  {
    v26 = sub_5544(20);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        v28 = __dst;
        sub_22170(__dst, *(a1 + 48));
        if (v46 < 0)
        {
          v28 = __dst[0];
        }

        v29 = *(a1 + 20);
        if (*(v6 + 735) < 0)
        {
          sub_54A0(v43, *(v6 + 712), *(v6 + 720));
        }

        else
        {
          *v43 = *(v6 + 712);
          v44 = *(v6 + 728);
        }

        if (v44 >= 0)
        {
          v30 = v43;
        }

        else
        {
          v30 = v43[0];
        }

        sub_22170(v41, *(a1 + 16));
        v31 = v42;
        v32 = v41[0];
        sub_22170(__p, v4);
        v33 = v41;
        if (v31 < 0)
        {
          v33 = v32;
        }

        v34 = __p[0];
        *buf = 136316674;
        if (v40 >= 0)
        {
          v34 = __p;
        }

        v50 = "RoutingHandlerAction_SetDSPParameter.cpp";
        v51 = 1024;
        v52 = 46;
        v53 = 2080;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        v57 = 2080;
        v58 = v30;
        v59 = 2080;
        v60 = v33;
        v61 = 2080;
        v62 = v34;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting DSP Parameter  (%s, %f) for chain : %s AU : %s Port type : %s", buf, 0x44u);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_64:
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[0]);
        }

LABEL_68:
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }
  }

LABEL_70:
  if (v48)
  {
    sub_1A8C0(v48);
  }
}

void sub_2527E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    sub_1A8C0(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_2528B8(void *a1)
{
  *a1 = off_6BBA60;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_252924(void *a1)
{
  *a1 = off_6BBA60;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_252970(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6BBBD0;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_252A08(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_252A50(a1);
  return sub_252E94(&v2);
}

void sub_252A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_252E94(va);
  _Unwind_Resume(a1);
}

void sub_252A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 24);
  v3[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_252FDC(&v6, v3, 239);
  if (v6)
  {
    sub_253164(v6);
    sub_88CE8(&v8, "gm_mitigation");
    cf = kCFBooleanFalse;
    v10[0] = &v8;
    v10[1] = 1;
    v2 = sub_69CE8(v10);
    v5 = v2;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    CFRetain(v2);
    v4 = v2;
    sub_23E2D8(v2, 8, 4);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v2);
  }

  if (v7)
  {
    sub_1A8C0(v7);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_252B78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_252BC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a2)
  {
    sub_1D5D20(va);
    JUMPOUT(0x252BF4);
  }

  JUMPOUT(0x252BB0);
}

void sub_252BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x252BE4);
  }

  JUMPOUT(0x252BB0);
}

void sub_252BE8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x252BF4);
  }

  JUMPOUT(0x252BB0);
}

void sub_252C04(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x252C10);
  }

  JUMPOUT(0x252BB0);
}

void sub_252E54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  __cxa_end_catch();
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  JUMPOUT(0x252BB0);
}

caulk::concurrent::message **sub_252E94(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6BBBF8;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_252F10(caulk::concurrent::message *this)
{
  *this = off_6BBBF8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_252F80(caulk::concurrent::message *this)
{
  *this = off_6BBBF8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

std::__shared_weak_count *sub_252FDC(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "StandardUtilities.h";
        v14 = 1024;
        v15 = 284;
        v16 = 2080;
        v17 = "";
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_253134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_253164(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1 + 1);
  sub_25357C();
  std::recursive_mutex::lock(&stru_6E7D50);
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v3 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = qword_6E7D98;
  if (!qword_6E7D98)
  {
    goto LABEL_9;
  }

  v6 = &qword_6E7D98;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != &qword_6E7D98 && v6[4] <= v4)
  {
    v12 = sub_5544(25);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "GMMonitorIODelegate.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 106;
      v26 = 2048;
      v27 = v4;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Removing observer %zu", buf, 0x1Cu);
    }

    v14 = v6[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v16 = v6;
      do
      {
        v15 = v16[2];
        v17 = *v15 == v16;
        v16 = v15;
      }

      while (!v17);
    }

    if (qword_6E7D90 == v6)
    {
      qword_6E7D90 = v15;
    }

    --qword_6E7DA0;
    sub_75234(qword_6E7D98, v6);
    v18 = v6[6];
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    operator delete(v6);
    if (!qword_6E7DA0)
    {
      v19 = atomic_load(&qword_6E7DA8 + 1);
      if (v19)
      {
        sub_1CC144(xmmword_6E7D40);
        atomic_store(0, &qword_6E7DA8 + 1);
        v20 = sub_5544(25);
        v21 = *v20;
        if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "GMMonitorIODelegate.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 115;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No more observers, unregistered monitor", buf, 0x12u);
        }

        sub_88CE8(&v23, "gm_inference_running");
        cf = kCFBooleanFalse;
        *buf = &v23;
        *&buf[8] = 1;
        v22 = sub_69CE8(buf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        CFRetain(v22);
        *buf = v22;
        sub_23E2D8(v22, 8, 4);
        if (v22)
        {
          CFRelease(v22);
        }

        CFRelease(v22);
      }
    }
  }

  else
  {
LABEL_9:
    v10 = sub_5544(25);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "GMMonitorIODelegate.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 124;
      v26 = 2048;
      v27 = v4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Did not find observer %zu", buf, 0x1Cu);
    }
  }

  std::recursive_mutex::unlock(&stru_6E7D50);

  std::recursive_mutex::unlock(a1 + 1);
}

void sub_2534FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25357C()
{
  if ((atomic_load_explicit(&qword_6E7DC0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6E7DC0))
    {
      sub_2535F8();
    }
  }
}

void sub_2535F8()
{
  xmmword_6E7D40 = 0uLL;
  std::recursive_mutex::recursive_mutex(&stru_6E7D50);
  qword_6E7DA0 = 0;
  qword_6E7D98 = 0;
  qword_6E7D90 = &qword_6E7D98;
  LOWORD(qword_6E7DA8) = 0;
  BYTE2(qword_6E7DA8) = 0;
  qword_6E7DB0 = 0;
  sub_1CC48C();
}

void sub_253764(_Unwind_Exception *a1)
{
  sub_2537F4(qword_6E7D98);
  std::recursive_mutex::~recursive_mutex(&stru_6E7D50);
  if (*(&xmmword_6E7D40 + 1))
  {
    sub_1A8C0(*(&xmmword_6E7D40 + 1));
  }

  _Unwind_Resume(a1);
}

dispatch_block_t sub_2537A8()
{
  if (qword_6E7DB0)
  {
    _Block_release(qword_6E7DB0);
    qword_6E7DB0 = 0;
  }

  return dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &stru_6BBB00);
}

void sub_2537F4(void *a1)
{
  if (a1)
  {
    sub_2537F4(*a1);
    sub_2537F4(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void sub_25384C(id a1)
{
  v1 = sub_5544(25);
  v2 = *v1;
  if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "GMMonitorIODelegate.cpp";
    v5 = 1024;
    v6 = 186;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Lockout time complete. Disabling mitigation.", &v3, 0x12u);
  }

  sub_25357C();
  sub_25391C(&xmmword_6E7D40, 0);
}

void sub_25391C(uint64_t a1, unsigned __int8 a2)
{
  sub_8BEE4();
  dispatch_assert_queue_V2(qword_709F20);
  atomic_store(a2, (a1 + 104));
  v4 = sub_5544(25);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v6 = atomic_load((a1 + 104));
    v16 = "GMMonitorIODelegate.cpp";
    v15 = 136315650;
    if (v6)
    {
      v7 = "running";
    }

    else
    {
      v7 = "not running";
    }

    v17 = 1024;
    v18 = 163;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Notification received that inference is %s", &v15, 0x1Cu);
  }

  std::recursive_mutex::lock((a1 + 16));
  v8 = *(a1 + 80);
  if (v8 != (a1 + 88))
  {
    do
    {
      v9 = v8[6];
      if (v9)
      {
        v10 = v8[5];
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v11 = std::__shared_weak_count::lock(v9);
        if (v11)
        {
          if (v10)
          {
            atomic_load((a1 + 104));
            sub_253AE8(v10);
          }

          sub_1A8C0(v11);
        }

        std::__shared_weak_count::__release_weak(v9);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != (a1 + 88));
  }

  std::recursive_mutex::unlock((a1 + 16));
}

void sub_253AE8(uint64_t a1)
{
  sub_8BEE4();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t *sub_253B88(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v22 = a1;
  v23 = v2;
  v24 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  v25 = *(a1 + 16);
  sub_252FDC(&v28, &v23, 260);
  v4 = v28;
  if (v28)
  {
    v5 = sub_5544(25);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      if (*(v4 + 47) < 0)
      {
        sub_54A0(&__dst, *(v4 + 24), *(v4 + 32));
      }

      else
      {
        __dst = *(v4 + 24);
        v36 = *(v4 + 40);
      }

      p_dst = &__dst;
      if (v36 < 0)
      {
        p_dst = __dst;
      }

      *&buf[4] = "GMMonitorIODelegate.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 266;
      v8 = "true";
      *buf = 136315906;
      if (!v3)
      {
        v8 = "false";
      }

      v31 = 2080;
      v32 = p_dst;
      v33 = 2080;
      v34 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Handling model manager inference mitigation IO delegate for chain %s. Mitigating? %s", buf, 0x26u);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__dst);
      }
    }

    v9 = *(v4 + 56);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 48);
        if (v12)
        {
          sub_88CE8(&__dst, "gm_mitigation");
          v13 = &kCFBooleanTrue;
          if (!v3)
          {
            v13 = &kCFBooleanFalse;
          }

          *(&__dst + 1) = *v13;
          *buf = &__dst;
          *&buf[8] = 1;
          v14 = sub_69CE8(buf);
          v27 = v14;
          if (*(&__dst + 1))
          {
            CFRelease(*(&__dst + 1));
          }

          if (__dst)
          {
            CFRelease(__dst);
          }

          CFRetain(v14);
          cf = v14;
          if (v3)
          {
            v15 = 3;
          }

          else
          {
            v15 = 4;
          }

          sub_23E2D8(v14, 8, v15);
          if (cf)
          {
            CFRelease(cf);
          }

          if ((sub_231C4() & 1) != 0 || sub_23238("VA_DSPAdaptiveFiltering", 0x17uLL) != &qword_709F00)
          {
            if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
            {
              qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
              __cxa_guard_release(&qword_6F6850);
            }

            v16 = os_signpost_id_generate(qword_6F6848);
            if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
            {
              qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
              __cxa_guard_release(&qword_6F6850);
            }

            if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v17 = qword_6F6848;
              if (os_signpost_enabled(qword_6F6848))
              {
                if (v25)
                {
                  v18 = "true";
                }

                else
                {
                  v18 = "false";
                }

                *buf = 136315138;
                *&buf[4] = v18;
                _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VA_DSPAdaptiveFiltering", "Applying adaptive filtering for GM Coex Mitigation: %s", buf, 0xCu);
              }
            }
          }

          else
          {
            v16 = 0;
          }

          *&__dst = v16;
          v19 = sub_5544(43);
          if (*(v19 + 8))
          {
            v20 = *v19;
            if (*v19)
            {
              if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "SignpostUtilities.h";
                *&buf[12] = 1024;
                *&buf[14] = 108;
                v31 = 2080;
                v32 = "kDSPAdaptiveFiltering";
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
              }
            }
          }

          (*(*v12 + 72))(v12, 1685287015, 1735222127, 0, v3);
          sub_25436C(&__dst);
          if (v27)
          {
            CFRelease(v27);
          }
        }

        sub_1A8C0(v11);
      }
    }
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  return sub_92750(&v22);
}

void sub_254324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  __cxa_end_catch();
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_92750(&a9);
  JUMPOUT(0x254064);
}

os_signpost_id_t *sub_25436C(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 108;
        v11 = 2080;
        v12 = "kDSPAdaptiveFiltering";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_DSPAdaptiveFiltering", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2544FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_254508(caulk::concurrent::message *this)
{
  *this = off_6BBBF8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_254578(caulk::concurrent::message *this)
{
  *this = off_6BBBF8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2545D4(unint64_t a1)
{
  std::recursive_mutex::lock((a1 + 64));
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25357C();
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7 = std::__shared_weak_count::lock(v2);
    if (v7 && v3)
    {
      v8 = sub_5544(25);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        if (*(v3 + 47) < 0)
        {
          sub_54A0(__p, *(v3 + 24), *(v3 + 32));
        }

        else
        {
          *__p = *(v3 + 24);
          v37 = *(v3 + 40);
        }

        v12 = __p;
        if (v37 < 0)
        {
          v12 = __p[0];
        }

        *buf = 136315906;
        v40 = "GMMonitorIODelegate.cpp";
        v41 = 1024;
        v42 = 71;
        v43 = 2080;
        v44 = v12;
        v45 = 2048;
        v46 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Adding model manager monitor observer %s (hash %zu)", buf, 0x26u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::recursive_mutex::lock(&stru_6E7D50);
      v13 = qword_6E7D98;
      if (qword_6E7D98)
      {
        v14 = &qword_6E7D98;
        v15 = qword_6E7D98;
        do
        {
          v16 = *(v15 + 32);
          v17 = v16 >= v6;
          v18 = v16 < v6;
          if (v17)
          {
            v14 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        if (v14 != &qword_6E7D98)
        {
          if (v6 >= v14[4])
          {
            atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v27 = v14[6];
            v14[5] = v3;
            v14[6] = v2;
            if (v27)
            {
              std::__shared_weak_count::__release_weak(v27);
            }

            goto LABEL_57;
          }

          v19 = v14[4];
          if (v6 >= v19)
          {
            if (v19 >= v6)
            {
              goto LABEL_57;
            }

            v24 = v14 + 1;
            v31 = v14[1];
            if (v31)
            {
              do
              {
                v24 = v31;
                v31 = *v31;
                v32 = v24;
              }

              while (v31);
            }

            else
            {
              v32 = v14;
              do
              {
                v33 = v32;
                v32 = v32[2];
              }

              while (*v32 != v33);
            }

            if (v32 != &qword_6E7D98 && v6 >= v32[4])
            {
              v24 = &qword_6E7D98;
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = *(v13 + 32);
                  if (v6 >= v35)
                  {
                    break;
                  }

                  v13 = *v34;
                  v24 = v34;
                  if (!*v34)
                  {
                    goto LABEL_56;
                  }
                }

                if (v35 >= v6)
                {
                  break;
                }

                v24 = v34 + 1;
                v13 = v34[1];
                if (!v13)
                {
                  goto LABEL_56;
                }
              }
            }

            goto LABEL_55;
          }
        }

        v20 = *v14;
        if (qword_6E7D90 == v14)
        {
          v22 = v14;
          goto LABEL_52;
        }

        if (v20)
        {
          v21 = *v14;
          do
          {
            v22 = v21;
            v21 = *(v21 + 8);
          }

          while (v21);
          goto LABEL_40;
        }
      }

      else
      {
        v20 = 0;
        v14 = &qword_6E7D98;
        v22 = &qword_6E7D98;
        if (qword_6E7D90 == &qword_6E7D98)
        {
          goto LABEL_52;
        }
      }

      v22 = v14;
      do
      {
        v23 = v22;
        v22 = v22[2];
      }

      while (*v22 == v23);
LABEL_40:
      if (v22[4] >= v6)
      {
        if (qword_6E7D98)
        {
          v24 = &qword_6E7D98;
          while (1)
          {
            while (1)
            {
              v25 = v13;
              v26 = *(v13 + 32);
              if (v6 >= v26)
              {
                break;
              }

              v13 = *v25;
              v24 = v25;
              if (!*v25)
              {
                goto LABEL_56;
              }
            }

            if (v26 >= v6)
            {
              break;
            }

            v24 = v25 + 1;
            v13 = v25[1];
            if (!v13)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v24 = &qword_6E7D98;
        }

LABEL_55:
        if (!*v24)
        {
LABEL_56:
          operator new();
        }

LABEL_57:
        v28 = atomic_load(&qword_6E7DA8 + 1);
        if ((v28 & 1) == 0)
        {
          if (qword_6E7DA0)
          {
            v38[0] = off_6BBB50;
            v38[1] = sub_254CAC;
            v38[3] = v38;
            sub_1CBEFC(xmmword_6E7D40, v38);
            sub_133B84(v38);
            atomic_store(1u, &qword_6E7DA8 + 1);
            v29 = sub_5544(25);
            v30 = *v29;
            if (*v29)
            {
              if (os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v40 = "GMMonitorIODelegate.cpp";
                v41 = 1024;
                v42 = 82;
                _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d Central model manager inference handler is created", buf, 0x12u);
              }
            }
          }
        }

        std::recursive_mutex::unlock(&stru_6E7D50);
        atomic_load(&qword_6E7DA8);
        sub_253AE8(v3);
      }

LABEL_52:
      if (v20)
      {
        v24 = v22 + 1;
      }

      else
      {
        v24 = v14;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = sub_5544(25);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v40 = "GMMonitorIODelegate.cpp";
    v41 = 1024;
    v42 = 95;
    v43 = 2048;
    v44 = v6;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add model manager monitor observer for chain at %zu to central callback handler", buf, 0x1Cu);
  }

  if (v7)
  {
    sub_1A8C0(v7);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v2)
  {
LABEL_16:
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_17:
  std::recursive_mutex::unlock((a1 + 64));
}

void sub_254B9C(_Unwind_Exception *a1)
{
  sub_1A8C0(v3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::recursive_mutex::unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_254C18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BBB50;
  a2[1] = v2;
  return result;
}

void sub_254CAC(int a1)
{
  sub_25357C();
  BYTE2(qword_6E7DA8) = a1;
  sub_88CE8(&v11, "gm_inference_running");
  v2 = &kCFBooleanTrue;
  if (!a1)
  {
    v2 = &kCFBooleanFalse;
  }

  cf = *v2;
  *buf = &v11;
  *&buf[8] = 1;
  v3 = sub_69CE8(buf);
  v10 = v3;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  CFRetain(v3);
  v11 = v3;
  if (a1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  sub_23E2D8(v3, 8, v4);
  if (v3)
  {
    CFRelease(v3);
  }

  v5 = atomic_load(&qword_6E7DA8);
  if (v5)
  {
    if (!BYTE2(qword_6E7DA8))
    {
      qword_6E7DB0 = sub_2537A8();
      v6 = dispatch_time(0, 1000000000 * dword_6E7DB8);
      sub_8BEE4();
      dispatch_after(v6, qword_709F20, qword_6E7DB0);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if ((qword_6E7DA8 & 0x10000) != 0)
  {
LABEL_16:
    v7 = sub_5544(25);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "GMMonitorIODelegate.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Mitigation is required again. Cancelling any existing lockout.", buf, 0x12u);
    }

    dispatch_block_cancel(qword_6E7DB0);
  }

  sub_8BEE4();
  v9 = &xmmword_6E7D40;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_254F54;
  v14 = &unk_6BBB20;
  v15 = &v9;
  dispatch_sync(qword_709F20, buf);
LABEL_21:
  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_254EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BA7C(va);
  _Unwind_Resume(a1);
}

void sub_254F64(uint64_t a1)
{
  sub_254F9C(a1);

  operator delete();
}

uint64_t sub_254F9C(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v9 = *(a1 + 40);
        }

        v4 = __p;
        if (v9 < 0)
        {
          v4 = __p[0];
        }

        *buf = 136315650;
        v11 = "GMMonitorIODelegate.cpp";
        v12 = 1024;
        v13 = 252;
        v14 = 2080;
        v15 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying model manager inference mitigation IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_253164(a1);
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v5 = *(a1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_2550F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_255114(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BBB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_255188(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_4E0BC(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2551D4(uint64_t result, int a2)
{
  if (!atomic_load((result + 656)))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "PortManager.cpp";
      v9 = 1024;
      v10 = 881;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (atomic_fetch_add((result + 656), 0xFFFFFFFF) == 1 || a2 != 0)
  {
    sub_26C0(result);
    operator new();
  }

  return result;
}

void sub_2556AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_255768(&a38);
  sub_2557C4(&a40);
  _Unwind_Resume(a1);
}

_BYTE *sub_255768(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t sub_2557C4(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_4650(result);

    operator delete();
  }

  return result;
}

uint64_t sub_255810(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  if ((sub_2160(a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "shared_unlocker attempted to unlock a mutex not owned by the current thread.");
  }

  sub_3174(*a1);
  *(a1 + 8) = 1;
  return a1;
}

uint64_t sub_2558A4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_26C0(*a1);
  }

  return a1;
}

void sub_2558E0(uint64_t a1, uint64_t *a2)
{
  sub_25704(&v45, a2, "", 510);
  v4 = v45;
  (*(*v45 + 264))(&v42, v45);
  v5 = v44;
  v6 = v44;
  if ((v44 & 0x80u) != 0)
  {
    v5 = v43;
  }

  if (v5)
  {
    memset(buf, 0, 24);
    strcpy(&buf[24], "cwdv");
    BYTE2(v56) = 0;
    LODWORD(v58) = 3;
    *(&v59 + 1) = 0;
    v60 = 0;
    *&v59 = &v59 + 8;
    v61 = 44739242;
    v63 = 0;
    v64 = 0;
    __p = 0;
    *&__dst = off_6BBF40;
    p_dst = &__dst;
    sub_256FB0(&v51, a1, buf, &__dst);
    sub_85148(&__dst);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(*(&v59 + 1));
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    *&__dst = a1;
    BYTE8(__dst) = 1;
    sub_26C0(a1);
    sub_80C2C(buf, a1 + 608);
    sub_3174(a1);
    sub_257280(&v51, &v51, *&buf[8], buf);
    v39 = &v39;
    v40 = &v39;
    v41 = 0;
    sub_250A70(&v49, v4);
    v38 = a1;
    sub_76388(&__dst, &v49);
    sub_65310(&v49);
    sub_B0484(&v49, &v51);
    for (i = v50; i != &v49; i = i[1])
    {
      v8 = *(&__dst + 1);
      v9 = i[2];
      while (v8 != &__dst)
      {
        if (*(v8 + 16) == v9)
        {
          goto LABEL_61;
        }

        v8 = *(v8 + 8);
      }

      (*(*v9 + 264))(v47);
      v10 = i[2];
      v11 = i[3];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = a2[1];
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        v14 = v13;
        if (v13)
        {
          v15 = *a2;
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v13);
          if (v11)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v15 = 0;
          if (v11)
          {
LABEL_20:
            v16 = std::__shared_weak_count::lock(v11);
            if (!v16)
            {
              v10 = 0;
            }

            if (!v14)
            {
              goto LABEL_29;
            }

            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
        if (v11)
        {
          goto LABEL_20;
        }
      }

      v10 = 0;
      v16 = 0;
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_26:
      v17 = std::__shared_weak_count::lock(v14);
      if (v17)
      {
        v18 = v10 == v15;
        sub_1A8C0(v17);
        if (!v16)
        {
          goto LABEL_31;
        }

LABEL_30:
        sub_1A8C0(v16);
        goto LABEL_31;
      }

LABEL_29:
      v18 = v10 == 0;
      if (v16)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (!v18)
      {
        v19 = (v48 & 0x80u) == 0 ? v48 : v47[1];
        if (v19)
        {
          v20 = v44;
          if ((v44 & 0x80u) != 0)
          {
            v20 = v43;
          }

          if (v20 == v19)
          {
            if ((v44 & 0x80u) == 0)
            {
              v21 = &v42;
            }

            else
            {
              v21 = v42;
            }

            if ((v48 & 0x80u) == 0)
            {
              v22 = v47;
            }

            else
            {
              v22 = v47[0];
            }

            v23 = memcmp(v21, v22, v19) == 0;
            if (!v14)
            {
              goto LABEL_53;
            }

LABEL_52:
            std::__shared_weak_count::__release_weak(v14);
          }

          else
          {
            v23 = 0;
            if (v14)
            {
              goto LABEL_52;
            }
          }

LABEL_53:
          if (v11)
          {
            std::__shared_weak_count::__release_weak(v11);
          }

          if (v23)
          {
            v24 = i[2];
            v25 = i[3];
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          goto LABEL_59;
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

LABEL_59:
      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

LABEL_61:
      ;
    }

    sub_87980(&v49);
    sub_87980(&__dst);
    sub_65310(buf);
    sub_65310(&v51);
    if (v41)
    {
      v26 = sub_5544(9);
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          v28 = v41;
          if (v41 == 1)
          {
            v29 = "";
          }

          else
          {
            v29 = "s";
          }

          if (*(v4 + 303) < 0)
          {
            sub_54A0(&__dst, *(v4 + 280), *(v4 + 288));
          }

          else
          {
            __dst = *(v4 + 280);
            v53 = *(v4 + 296);
          }

          v30 = SHIBYTE(v53);
          v31 = __dst;
          sub_256268(&v51, v40, &v39);
          v32 = &__dst;
          if (v30 < 0)
          {
            v32 = v31;
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v51;
          }

          else
          {
            v33 = v51.__r_.__value_.__r.__words[0];
          }

          *buf = 136316418;
          *&buf[4] = "PortManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 551;
          *&buf[18] = 2048;
          *&buf[20] = v28;
          *&buf[28] = 2080;
          v56 = v29;
          v57 = 2080;
          v58 = v32;
          LOWORD(v59) = 2080;
          *(&v59 + 2) = v33;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found %ld prospective partner port%s for port %s: %s", buf, 0x3Au);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(__dst);
          }
        }
      }
    }

    sub_47BD8(v38);
    sub_B0484(buf, &v39);
    for (j = *&buf[8]; j != buf; j = *(j + 8))
    {
      v35 = *(j + 24);
      *&__dst = *(j + 16);
      *(&__dst + 1) = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = sub_250B30(v4, &__dst);
      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      if (v36 && (sub_250B30(*(j + 16), a2) & 1) == 0)
      {
        v37 = *(j + 24);
        *&__dst = *(j + 16);
        *(&__dst + 1) = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_24D580(v4, &__dst);
        if (v37)
        {
          std::__shared_weak_count::__release_weak(v37);
        }
      }
    }

    sub_87980(buf);
    sub_47C90(v38);
    sub_65310(&v39);
    v6 = v44;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(v42);
  }

  if (v46)
  {
    sub_1A8C0(v46);
  }
}

void sub_255F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  sub_65310(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(a1);
}

std::string *sub_2560B8(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_11AB44(__p, a2 + 16);
      v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
      v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
      std::string::append(a1, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_256194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2561B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2561A0);
}

void sub_2561D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_256268(&v4, *(a1 + 40), a1 + 32);
  v3 = std::string::insert(&v4, 0, "Port disconnection(s): ", 0x17uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25624C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_256268(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_11AB44(__p, a2 + 16);
      v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
      v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
      std::string::append(a1, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_256344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_256368(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x256350);
}

void sub_256380(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(a1 + 32, *(a1 + 24));

  sub_21991C(a2, 1920099684);
}

void sub_2563C8(uint64_t a1)
{
  sub_65310((a1 + 32));

  operator delete();
}

std::string *sub_256440@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_53E8(a2, "Port update(s): { ");
  v4 = *(a1 + 16);
  if (v4 != (a1 + 24))
  {
    while (1)
    {
      sub_22170(&__p, *(v4 + 8));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a2, ": ", 2uLL);
      sub_256268(&__p, v4[6], (v4 + 5));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &__p;
      }

      else
      {
        v7 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v7, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      if (v10 == (a1 + 24))
      {
        break;
      }

      std::string::append(a2, ", ", 2uLL);
      v4 = v10;
    }
  }

  return std::string::append(a2, " }", 2uLL);
}

void sub_2565A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2565E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_20301C(a2, 1);
  v4 = sub_8703C();
  (*(*v4 + 344))(buf);
  v5 = *buf;
  if (*buf)
  {
    v12[0] = v12;
    v12[1] = v12;
    v12[2] = 0;
    sub_1CA268(&v13, *buf, v12);
    sub_17ECC4(buf, v5, (a1 + 16), &v13, 0);
    sub_256828(a2, buf);
    if (v18 == 1)
    {
      sub_175F78(v17);
    }

    sub_4B0F4(v13.__r_.__value_.__l.__size_);
    sub_65310(v12);
  }

  else
  {
    v6 = sub_5544(9);
    v7 = sub_5544(16);
    v8 = 0;
    *buf = 0x100000002;
    v9 = *(v6 + 8);
    while (1)
    {
      v10 = *&buf[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        break;
      }

      v8 += 4;
      if (v8 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_12:
    v11 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      v15 = 1024;
      v16 = 108;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", buf, 0x12u);
    }
  }
}

void sub_2567C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_175F78(&a18);
  }

  sub_4B0F4(a13);
  sub_65310(&a9);
  if (*(v22 + 56) == 1)
  {
    sub_175F78((v22 + 24));
  }

  _Unwind_Resume(a1);
}

void *sub_256828(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2 != a1)
  {
    v3 = a2;
    *a1 = *a2;
    LODWORD(v4) = *(a2 + 56);
    if (v4 == 1)
    {
      v57 = *(a2 + 8);
      sub_175EEC(&v58, a2 + 24);
      LOWORD(v4) = *(v3 + 48);
      v61 = v4;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      LOBYTE(v57) = 0;
    }

    v62 = v5;
    v6 = (v2 + 1);
    if (*(v2 + 56) == v5)
    {
      if (&v57 != v6 && *(v2 + 56))
      {
        v54 = v3;
        *v6 = v57;
        v7 = v2 + 3;
        v8 = v59;
        v9 = v2[4];
        if (v59 != &v58 && v9 != v7)
        {
          v56 = v2 + 3;
          v55 = v2;
          do
          {
            v10 = *(v8 + 1);
            *(v9 + 32) = v8[4];
            *(v9 + 16) = v10;
            v12 = v8[5];
            v11 = v8[6];
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
            }

            v13 = *(v9 + 48);
            *(v9 + 40) = v12;
            *(v9 + 48) = v11;
            if (v13)
            {
              std::__shared_weak_count::__release_weak(v13);
            }

            v14 = *(v8 + 7);
            *(v9 + 72) = *(v8 + 9);
            *(v9 + 56) = v14;
            if (v9 != v8)
            {
              v15 = v8[11];
              v16 = v8 + 12;
              if (*(v9 + 104))
              {
                v18 = (v9 + 96);
                v17 = *(v9 + 96);
                v19 = *(v9 + 88);
                *(v9 + 88) = v9 + 96;
                *(v17 + 16) = 0;
                *(v9 + 96) = 0;
                *(v9 + 104) = 0;
                if (*(v19 + 8))
                {
                  v20 = *(v19 + 8);
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  v21 = sub_1658B4(v20);
                  if (v15 == v16)
                  {
                    v23 = v20;
                  }

                  else
                  {
                    v22 = v15;
                    do
                    {
                      v23 = v21;
                      v24 = *(v22 + 8);
                      *(v20 + 32) = v24;
                      *(v20 + 40) = v22[5];
                      v25 = *v18;
                      v26 = (v9 + 96);
                      v27 = (v9 + 96);
                      if (*v18)
                      {
                        do
                        {
                          while (1)
                          {
                            v26 = v25;
                            if (v24 >= *(v25 + 8))
                            {
                              break;
                            }

                            v25 = *v25;
                            v27 = v26;
                            if (!*v26)
                            {
                              goto LABEL_29;
                            }
                          }

                          v25 = v25[1];
                        }

                        while (v25);
                        v27 = v26 + 1;
                      }

LABEL_29:
                      sub_46B44((v9 + 88), v26, v27, v20);
                      if (v21)
                      {
                        v21 = sub_1658B4(v21);
                      }

                      else
                      {
                        v21 = 0;
                      }

                      v28 = v22[1];
                      if (v28)
                      {
                        do
                        {
                          v15 = v28;
                          v28 = *v28;
                        }

                        while (v28);
                      }

                      else
                      {
                        do
                        {
                          v15 = v22[2];
                          v29 = *v15 == v22;
                          v22 = v15;
                        }

                        while (!v29);
                      }

                      if (!v23)
                      {
                        break;
                      }

                      v20 = v23;
                      v22 = v15;
                    }

                    while (v15 != v16);
                  }

                  sub_477A0(v23);
                  if (v21)
                  {
                    for (i = v21[2]; i; i = i[2])
                    {
                      v21 = i;
                    }

                    sub_477A0(v21);
                    v2 = v55;
                  }

                  else
                  {
                    v2 = v55;
                  }
                }

                else
                {
                  sub_477A0(0);
                }
              }

              if (v15 != v16)
              {
                operator new();
              }

              v31 = *(v9 + 112);
              v32 = v8[14];
              v33 = v8[15];
              v34 = v33 - v32;
              v35 = *(v9 + 128);
              if (v35 - v31 < (v33 - v32))
              {
                if (v31)
                {
                  *(v9 + 120) = v31;
                  operator delete(v31);
                  v35 = 0;
                  *(v9 + 112) = 0;
                  *(v9 + 120) = 0;
                  *(v9 + 128) = 0;
                }

                v36 = v34 >> 4;
                if (!((v34 >> 4) >> 60))
                {
                  if (v35 >> 3 > v36)
                  {
                    v36 = v35 >> 3;
                  }

                  if (v35 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v37 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  sub_203290(v9 + 112, v37);
                }

                sub_189A00();
              }

              v38 = *(v9 + 120);
              v7 = v56;
              if (v38 - v31 >= v34)
              {
                while (v32 != v33)
                {
                  *v31 = *v32;
                  *(v31 + 1) = *(v32 + 8);
                  v32 += 16;
                  v31 += 16;
                }

                *(v9 + 120) = v31;
              }

              else
              {
                if (v38 != v31)
                {
                  v39 = v32 + v38 - v31;
                  do
                  {
                    *v31 = *v32;
                    *(v31 + 1) = *(v32 + 8);
                    v32 += 16;
                    v31 += 16;
                  }

                  while (v32 != v39);
                  v32 = v39;
                }

                while (v32 != v33)
                {
                  *v38 = *v32;
                  *(v38 + 1) = *(v32 + 8);
                  v32 += 16;
                  v38 += 16;
                }

                *(v9 + 120) = v38;
              }
            }

            v40 = *(v8 + 34);
            *(v9 + 140) = *(v8 + 140);
            *(v9 + 136) = v40;
            v42 = v8[18];
            v41 = v8[19];
            if (v41)
            {
              atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
            }

            v43 = *(v9 + 152);
            *(v9 + 144) = v42;
            *(v9 + 152) = v41;
            if (v43)
            {
              std::__shared_weak_count::__release_weak(v43);
            }

            if (v9 != v8)
            {
              sub_136004((v9 + 160), v8[21], (v8 + 20));
            }

            v8 = v8[1];
            v9 = *(v9 + 8);
          }

          while (v8 != &v58 && v9 != v7);
        }

        if (v9 == v7)
        {
          if (v8 != &v58)
          {
            sub_203118();
          }
        }

        else
        {
          v44 = *(v2[3] + 8);
          v45 = *v9;
          *(v45 + 8) = v44;
          *v44 = v45;
          do
          {
            v46 = *(v9 + 8);
            --v2[5];
            sub_256ECC(v9);
            v9 = v46;
          }

          while (v46 != v7);
        }

        *(v2 + 24) = v61;
        v3 = v54;
      }
    }

    else if (*(v2 + 56))
    {
      sub_175F78(v2 + 3);
      *(v2 + 56) = 0;
    }

    else
    {
      *v6 = v57;
      v2[3] = v2 + 3;
      v2[4] = v2 + 3;
      v2[5] = 0;
      v47 = v60;
      if (v60)
      {
        v48 = v58;
        v4 = v59;
        v49 = *(v58 + 8);
        v50 = *v59;
        *(v50 + 8) = v49;
        *v49 = v50;
        v51 = v2[3];
        *(v51 + 8) = v4;
        *v4 = v51;
        v2[3] = v48;
        *(v48 + 8) = v2 + 3;
        v2[5] = v47;
        v60 = 0;
        LOWORD(v4) = v61;
      }

      *(v2 + 24) = v4;
      *(v2 + 56) = 1;
    }

    if (v62 == 1)
    {
      sub_175F78(&v58);
    }

    v52 = *(v3 + 64);
    *(v2 + 72) = *(v3 + 72);
    v2[8] = v52;
  }

  return v2;
}

void sub_256E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  __cxa_end_catch();
  if (a19 == 1)
  {
    sub_175F78(a11);
  }

  _Unwind_Resume(a1);
}

void sub_256ECC(uint64_t a1)
{
  sub_65310((a1 + 160));
  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  sub_477A0(*(a1 + 96));
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_256F38(uint64_t a1)
{
  sub_D169C(*(a1 + 24));

  operator delete();
}

void sub_256FB0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_26C0(a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8 - *a3 == 4)
  {
    v21 = *v9;
    *buf = &v21;
    v10 = sub_DB6B0((a2 + 352), v21) + 3;
    v9 = *a3;
    v8 = a3[1];
  }

  else
  {
    v10 = (a2 + 288);
  }

  if (v8 - v9 == 4)
  {
    v11 = sub_DB3D4(a3);
  }

  else
  {
    v11 = sub_462D0(a3);
  }

  v12 = v11;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  for (i = v10[1]; i != v10; i = i[1])
  {
    v14 = i[2];
    if (!v14)
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PortManager.cpp";
        v23 = 1024;
        v24 = 692;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (v12 || sub_46398(i[2], a3))
    {
      v15 = *(a4 + 24);
      if (!v15)
      {
        sub_46A74();
      }

      if ((*(*v15 + 48))(v15, v14))
      {
        v17 = *(v14 + 80);
        v16 = *(v14 + 88);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }
  }

  sub_3174(a2);
}

void sub_25721C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

void sub_257280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_25739C(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void sub_25746C(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_2574C4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_26C0(a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8 - *a3 == 4)
  {
    v23 = *v9;
    *buf = &v23;
    v10 = sub_DB6B0((a2 + 352), v23) + 3;
    v9 = *a3;
    v8 = a3[1];
  }

  else
  {
    v10 = (a2 + 288);
  }

  if (v8 - v9 == 4)
  {
    v11 = sub_DB3D4(a3);
  }

  else
  {
    v11 = sub_462D0(a3);
  }

  v12 = v11;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  for (i = v10[1]; i != v10; i = i[1])
  {
    v14 = i[2];
    if (!v14)
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PortManager.cpp";
        v25 = 1024;
        v26 = 692;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (v12 || sub_46398(i[2], a3))
    {
      v15 = *(a4 + 24);
      if (!v15)
      {
        sub_46A74();
      }

      if ((*(*v15 + 48))(v15, v14))
      {
        v16 = *(v14 + 88);
        if (v16)
        {
          v17 = *(v14 + 80);
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v18 = std::__shared_weak_count::lock(v16);
          v19 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_weak(v16);
            sub_1A8C0(v19);
          }

          else
          {
            std::__shared_weak_count::__release_weak(v16);
          }
        }

        operator new();
      }
    }
  }

  sub_3174(a2);
}

void sub_257778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

BOOL sub_2577DC(signed int a1)
{
  if (a1 <= 1919904884)
  {
    if (a1 == 1919184754)
    {
      return 0;
    }

    if (a1 == 1919842148)
    {
      return 1;
    }
  }

  else if (a1 == 1919904885 || a1 == 1920168053 || a1 == 1919971701)
  {
    return 0;
  }

  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3)
  {
    result = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_22170(__p, a1);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315650;
    v9 = "PortManager.cpp";
    v10 = 1024;
    v11 = 75;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled route change reason: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_257950(uint64_t a1)
{
  sub_65310((a1 + 72));
  sub_65310((a1 + 48));
  sub_D169C(*(a1 + 32));
  return a1;
}

uint64_t sub_25799C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BBCB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_257A38(uint64_t a1)
{
  sub_24EA34(a1);
  *(a1 + 584) = 1;
  return 1;
}

void sub_257A68(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_257ACC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BBCF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_257B40(void *a1)
{
  sub_257B7C((a1 + 8));
  sub_DDE50((a1 + 3));
  sub_4E0BC(a1);
  return a1;
}

uint64_t sub_257B7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_4E0BC(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_257BDC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_477A0(*(a1 + 56));
  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_257C34(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    sub_477A0(*(a2 + 88));
    v4 = *(a2 + 32);
    if (v4)
    {
      *(a2 + 40) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

std::logic_error *sub_257CB4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_257CE8(uint64_t a1, uint64_t a2)
{
  sub_25704(&v6, a2, "", 569);
  if ((*(v6 + 184) & 2) != 0)
  {
    v4 = 1717793397;
  }

  else
  {
    v4 = 1852011125;
  }

  sub_257DAC(a1, v4, *a2, *(a2 + 8), 0);
  v5 = v7;
  if (v7)
  {

    sub_1A8C0(v5);
  }
}

void sub_257D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_257DAC(uint64_t a1, unsigned int a2, uint64_t a3, std::__shared_weak_count *a4, int a5)
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v22 = a3;
  v23 = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_22ED54(&v14, &v22, 1);
  v17 = a2;
  v18[0] = v18;
  v18[1] = v18;
  v19 = 0;
  v8 = v16;
  if (v16)
  {
    v10 = v14;
    v9 = v15;
    v11 = *(v14 + 8);
    v12 = *v15;
    *(v12 + 8) = v11;
    *v11 = v12;
    v13 = v18[0];
    *(v18[0] + 8) = v9;
    *v9 = v13;
    *(v10 + 8) = v18;
    v18[0] = v10;
    v19 = v8;
    v16 = 0;
    a2 = v17;
  }

  sub_1165C0(&v20, a2);
  sub_65310(v18);
  sub_65310(&v14);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  sub_11ABFC(a1, &v20, a5);
  sub_D169C(v21[0]);
}

void *sub_257F28(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2585A8(a1, v4, (v6 + 16));
      v6 = *(v6 + 8);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_257FA8(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
LABEL_7:
    sub_DE7DC("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

double sub_257FF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a2;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  for (i = 0; v15 != a5; a4 = v15)
  {
    v10 = v16;
    v16 = sub_258248(v16, a3, a4 + 4);
    sub_25846C((v16 == v10), &v16, &v15, &v14, &i);
    if (v16 == a3)
    {
      break;
    }

    v11 = v15;
    v15 = sub_258248(v15, a5, v16 + 4);
    sub_25846C((v15 == v11), &v16, &v15, &v14, &i);
  }

  *a1 = a3;
  *(a1 + 8) = a5;
  result = *&v14;
  *(a1 + 16) = v14;
  return result;
}

void *sub_2580CC(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    sub_85034();
  }

  return result;
}

double sub_258148(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_2581DC(&v12, v7 + 4);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

void **sub_2581DC(void **a1, unint64_t *a2)
{
  v3 = sub_8470C(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void *sub_258248(void *a1, void *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if (sub_16B7FC(a1 + 4, a3))
  {
    v6 = 1;
LABEL_5:
    if (v6)
    {
      v7 = 0;
      v8 = v4;
      while (v8 != a2)
      {
        v9 = v8[1];
        v10 = v8;
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (!v11);
        }

        if (++v7 == v6)
        {
          v12 = v6;
          v7 = v6;
          goto LABEL_27;
        }
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
      v7 = 0;
      v8 = v4;
    }

LABEL_27:
    while (v8 != a2)
    {
      if (!sub_16B7FC(v8 + 4, a3))
      {
        goto LABEL_32;
      }

      v6 *= 2;
      v4 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0;
      v12 = -v6;
      if (-v6 > 1)
      {
        v13 = -v6;
      }

      else
      {
        v13 = 1;
      }

      while (v8 != a2)
      {
        v14 = *v8;
        v15 = v8;
        if (*v8)
        {
          do
          {
            v8 = v14;
            v14 = v14[1];
          }

          while (v14);
        }

        else
        {
          do
          {
            v8 = v15[2];
            v11 = *v8 == v15;
            v15 = v8;
          }

          while (v11);
        }

        if (++v7 == v13)
        {
          v7 = v13;
          goto LABEL_27;
        }
      }
    }

    v8 = a2;
LABEL_32:
    v16 = v7 - v12 + v6;
    if (v16)
    {
      if (v16 == 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v17 = v16 >> 1;
          v18 = v4;
          if (v16 >= 2)
          {
            v19 = v16 >> 1;
            v20 = v4;
            do
            {
              v21 = v20[1];
              if (v21)
              {
                do
                {
                  v18 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v18 = v20[2];
                  v11 = *v18 == v20;
                  v20 = v18;
                }

                while (!v11);
              }

              v20 = v18;
            }

            while (v19-- > 1);
          }

          if (sub_16B7FC(v18 + 4, a3))
          {
            v23 = v18[1];
            if (v23)
            {
              do
              {
                v4 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v4 = v18[2];
                v11 = *v4 == v18;
                v18 = v4;
              }

              while (!v11);
            }

            v17 = v16 + ~v17;
          }

          v16 = v17;
        }

        while (v17);
      }
    }
  }

  return v4;
}

void **sub_25846C(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_25853C(a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void **sub_25853C(void **a1, unint64_t *a2)
{
  v3 = sub_2585A8(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void *sub_2585A8(void *a1, void *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = a1 + 1;
  if (a1 + 1 == a2 || sub_16B7FC(a3, a2 + 4))
  {
    if (*a1 == v4)
    {
      v8 = v4;
LABEL_16:
      if (!*v4)
      {
        v17 = v4;
        goto LABEL_31;
      }

      v17 = v8;
      v10 = v8 + 1;
LABEL_30:
      v4 = *v10;
      if (!*v10)
      {
        goto LABEL_31;
      }

      return v4;
    }

    v7 = *v4;
    if (*v4)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v13 = v4;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    if (sub_16B7FC(v8 + 4, a3))
    {
      goto LABEL_16;
    }

LABEL_29:
    v10 = sub_86818(a1, &v17, a3);
    goto LABEL_30;
  }

  if (sub_16B7FC(v4 + 4, a3))
  {
    v10 = v4 + 1;
    v9 = v4[1];
    if (v9)
    {
      v11 = v4[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v4;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      if (!sub_16B7FC(a3, v12 + 4))
      {
        goto LABEL_29;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v17 = v12;
      v10 = v12;
    }

    else
    {
      v17 = v4;
    }

    goto LABEL_30;
  }

  v17 = v4;
  if (!v4)
  {
LABEL_31:
    operator new();
  }

  return v4;
}

void sub_258778(uint64_t a1, uint64_t a2, signed int a3)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = sub_2577DC(a3);
    sub_1150D4(a1, a2, v6, 0);
  }

  sub_116190(v7, a1, a2);
  if (v7[2])
  {
    sub_11ABFC(a1, v7, 0);
  }

  sub_D169C(v7[1]);
}

void sub_258830(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = *a1 + 16;
  for (i = *(*a1 + 24); i != v4; i = i[1])
  {
    sub_25704(&v14, i + 2, "", 748);
    v6 = *(v14 + 144);
    if (v15)
    {
      sub_1A8C0(v15);
    }

    sub_25704(&v14, i + 4, "", 749);
    v7 = *(v14 + 144);
    if (v15)
    {
      sub_1A8C0(v15);
    }

    v8 = v2 & 0xFFFFFF00;
    if (v7 == 1885888867)
    {
      v9 = 3;
    }

    else
    {
      v9 = 6;
    }

    if (v6 != 1885629550)
    {
      v9 = v2 & 0xFFFFFF00;
    }

    v10 = v6 == 1885629550;
    if (v6 == 1886613618)
    {
      v9 = 4;
      v10 = 1;
    }

    if (v6 == 1885433888)
    {
      v8 = 7;
    }

    v11 = v6 == 1885433888;
    if (v6 == 1885433443)
    {
      v8 = 2;
      v11 = 1;
    }

    if (v6 <= 1885629549)
    {
      v2 = v8;
    }

    else
    {
      v2 = v9;
    }

    if (v6 <= 1885629549)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = sub_108CA8(v6);
    if (v7 == 1886743662)
    {
      v2 = 5;
    }

    else
    {
      if (v13)
      {
        v2 = 9;
      }

      if (!v12 && !v13)
      {
        continue;
      }
    }

    sub_14BB28(a2, v2, (i + 2));
  }
}

void sub_2589F0(uint64_t a1, uint64_t a2, __n128 **a3, os_unfair_lock_s *a4, uint64_t *a5)
{
  if (!(*(*&a4->_os_unfair_lock_opaque + 328))(a4))
  {
    v10 = (*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0);
    if ((v10 + (((*(*&a4->_os_unfair_lock_opaque + 312))(a4) >> 1) >> 31)) >= 2)
    {
      if ((*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0) > 1)
      {
        sub_25704(&v19, ((*a3)[1].n128_u64[1] + 16), "", 313);
        v11 = v19;
        *buf = *(v19 + 144);
        sub_4BA00(&v18, buf, 1);
        v12 = *&a4[20]._os_unfair_lock_opaque;
        v13 = *&a4[22]._os_unfair_lock_opaque;
        v20[0] = v12;
        v20[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_3172E4(buf, v20, v11);
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        sub_102CA8(v20, buf);
        memset(v17, 0, sizeof(v17));
        sub_F91E4(v17, v20, buf, 1uLL);
      }

      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "RoutingHandler.cpp";
        v23 = 1024;
        v24 = 310;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  sub_258E8C(a1, a2, a3, a4, a5);
}

void sub_258E8C(uint64_t a1, uint64_t a2, __n128 **a3, os_unfair_lock_s *a4, uint64_t *a5)
{
  sub_300E78(v66, a3);
  if (v67 != 1)
  {
    sub_25704(&v69, ((*a3)[1].n128_u64[1] + 16), "", 414);
    v12 = v69.__r_.__value_.__r.__words[0];
    *buf = *(v69.__r_.__value_.__r.__words[0] + 144);
    sub_4BA00(v90, buf, 1);
    v13 = *&a4[22]._os_unfair_lock_opaque;
    __p[0] = *&a4[20]._os_unfair_lock_opaque;
    __p[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1uLL, memory_order_relaxed);
    }

    sub_317060(buf, __p, v12, 0, a5);
  }

  sub_25704(buf, v66, "", 291);
  v9 = *(*buf + 200);
  if (v9)
  {
    v10 = *(*buf + 192);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (std::__shared_weak_count::lock(v9))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v9);
  }

  else
  {
    v11 = 0;
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v11 != a4)
  {
    v14 = sub_5544(20);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_23148(__p, a4 + 2);
      v16 = v76;
      v17 = __p[0];
      sub_23148(v90, v11 + 2);
      v18 = __p;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((v90[23] & 0x80u) == 0)
      {
        v19 = v90;
      }

      else
      {
        v19 = *v90;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 335;
      *&buf[18] = 2080;
      *&buf[20] = v18;
      *&buf[28] = 2080;
      *&buf[30] = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Input Device: %s, Aux Input Device: %s", buf, 0x26u);
      if (v90[23] < 0)
      {
        operator delete(*v90);
      }

      if (v76 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0) < 3)
    {
      v20 = (*a3)[1].n128_u64[1];
      sub_300E78(v81, a3);
      if (v83)
      {
        sub_25704(&v80, (v20 + 16), "", 342);
        if (v83)
        {
          v21 = a4;
          sub_25704(v79, v81, "", 343);
          v22 = *(v79[0] + 144);
          v23 = v80;
          *buf = *(v80 + 144);
          *&buf[4] = v22;
          sub_4BA00(&v78, buf, 2);
          if (sub_108CA8(v22))
          {
            if (((*(*&v11->_os_unfair_lock_opaque + 312))(v11) & 0x100000000) != 0)
            {
              v24 = *&v21[22]._os_unfair_lock_opaque;
              *buf = *&v21[20]._os_unfair_lock_opaque;
              *&buf[8] = v24;
              if (v24)
              {
                atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
              }

              sub_317060(__p, buf, v23, 0, a5);
            }

            v57 = sub_5544(14);
            v58 = *v57;
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingHandler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 348;
              _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            v55 = sub_5544(14);
            v56 = *v55;
            if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingHandler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 347;
              _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Precondition failure.");
        }

        sub_1EC054();
      }

      v52 = sub_5544(14);
      v53 = *v52;
      if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 341;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v54 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v54, "Precondition failure.");
    }

    v49 = sub_5544(14);
    v50 = *v49;
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 337;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v51 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v51, "Precondition failure.");
  }

  v25 = (*a3)[1].n128_u64[1];
  sub_300E78(__p, a3);
  if ((v77 & 1) == 0)
  {
    v60 = sub_5544(14);
    v61 = *v60;
    if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 385;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v62 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v62, "Precondition failure.");
  }

  sub_25704(v79, (v25 + 16), "", 386);
  if ((v77 & 1) == 0)
  {
    sub_1EC054();
  }

  sub_25704(&v72, __p, "", 387);
  v26 = v72;
  v27 = *(v72 + 144);
  v28 = v79[0];
  *buf = *(v79[0] + 144);
  *&buf[4] = v27;
  sub_4BA00(&v74, buf, 2);
  if (((*(*&a4->_os_unfair_lock_opaque + 312))(a4) & 0x100000000) == 0 || !sub_108CA8(v27))
  {
    v46 = sub_5544(14);
    v47 = *v46;
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v48 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v48, "Precondition failure.");
  }

  sub_25AFA4(v90, v28, v79[1], a5);
  *buf = 0;
  *&buf[8] = *v90;
  *&buf[16] = *&v90[8];
  if (*&v90[8])
  {
    atomic_fetch_add_explicit((*&v90[8] + 16), 1uLL, memory_order_relaxed);
  }

  *&buf[24] = *&v90[16];
  v85 = v91;
  *&v90[24] = 0;
  v91 = 0;
  *&v90[16] = 0;
  v29 = v73;
  v69.__r_.__value_.__r.__words[0] = v26;
  v69.__r_.__value_.__l.__size_ = v73;
  v64 = v73;
  v65 = a2;
  v63 = a4;
  if (v73)
  {
    atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    v69.__r_.__value_.__r.__words[2] = 0;
    v70 = 0;
    v71 = 0;
    v86 = 1;
    v87 = v26;
    v88 = v29;
    atomic_fetch_add_explicit((v29 + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v69.__r_.__value_.__r.__words[1] = 0uLL;
    v70 = 0;
    v71 = 0;
    v86 = 1;
    v87 = v26;
    v88 = 0;
  }

  v30 = 0;
  memset(v89, 0, sizeof(v89));
  v70 = 0;
  v71 = 0;
  v69.__r_.__value_.__r.__words[2] = 0;
  v82 = 1065353216;
  memset(v81, 0, sizeof(v81));
  while (1)
  {
    v31 = *&buf[v30];
    if (!v81[1])
    {
      goto LABEL_59;
    }

    v32 = vcnt_s8(v81[1]);
    v32.i16[0] = vaddlv_u8(v32);
    if (v32.u32[0] > 1uLL)
    {
      v33 = *&buf[v30];
      if (v81[1] <= v31)
      {
        v33 = v31 % LODWORD(v81[1]);
      }
    }

    else
    {
      v33 = (LODWORD(v81[1]) - 1) & v31;
    }

    v34 = *(v81[0] + 8 * v33);
    if (!v34 || (v35 = *v34) == 0)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      v36 = v35[1];
      if (v36 == v31)
      {
        break;
      }

      if (v32.u32[0] > 1uLL)
      {
        if (v36 >= v81[1])
        {
          v36 %= v81[1];
        }
      }

      else
      {
        v36 &= v81[1] - 1;
      }

      if (v36 != v33)
      {
        goto LABEL_59;
      }

LABEL_58:
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_59;
      }
    }

    if (*(v35 + 4) != v31)
    {
      goto LABEL_58;
    }

    v30 += 48;
    if (v30 == 96)
    {
      v37 = 0;
      while (1)
      {
        v38 = &buf[v37 * 8];
        v39 = v89[v37];
        if (v39)
        {
          *(v38 + 10) = v39;
          operator delete(v39);
        }

        v40 = *(v38 + 8);
        if (v40)
        {
          std::__shared_weak_count::__release_weak(v40);
        }

        v37 -= 6;
        if (v37 == -12)
        {
          if (v64)
          {
            sub_1A8C0(v64);
          }

          if (*&v90[16])
          {
            *&v90[24] = *&v90[16];
            operator delete(*&v90[16]);
          }

          if (*&v90[8])
          {
            sub_1A8C0(*&v90[8]);
          }

          v41 = *&v63[22]._os_unfair_lock_opaque;
          v69.__r_.__value_.__r.__words[0] = *&v63[20]._os_unfair_lock_opaque;
          v69.__r_.__value_.__l.__size_ = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          memset(v90, 0, sizeof(v90));
          LODWORD(v91) = 1065353216;
          sub_F8204(buf, &v69, v81, v90);
          sub_167DD4(v90);
          if (v41)
          {
            std::__shared_weak_count::__release_weak(v41);
          }

          v42 = sub_5544(20);
          v43 = *v42;
          if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
          {
            sub_F89AC(&v69, buf);
            v44 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
            *v90 = 136315650;
            *&v90[4] = "RoutingHandler.cpp";
            *&v90[12] = 1024;
            *&v90[14] = 400;
            *&v90[18] = 2080;
            *&v90[20] = v44;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device description for creating aggregate with auxiliary input: %s", v90, 0x1Cu);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__data_);
            }
          }

          v45 = *a3;
          sub_103670(&v68, *(v65 + 8), a3);
          operator new();
        }
      }
    }
  }
}