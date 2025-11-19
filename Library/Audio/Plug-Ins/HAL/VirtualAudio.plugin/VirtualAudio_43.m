void sub_394404()
{
  qword_6F5038 = 0;
  qword_6F5030 = &qword_6F5038;
  qword_6F5050 = 0;
  qword_6F5040 = 0;
  unk_6F5048 = &qword_6F5050;
  qword_6F5070 = 0;
  qword_6F5068 = 0;
  qword_6F5058 = 0;
  unk_6F5060 = &qword_6F5068;
  sub_C57B4(v0, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_6F5030, v0, qword_6F46C0);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_39449C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F5030);
  _Unwind_Resume(a1);
}

void sub_3944CC()
{
  qword_6F5088 = 0;
  qword_6F5080 = &qword_6F5088;
  qword_6F50A0 = 0;
  qword_6F5090 = 0;
  unk_6F5098 = &qword_6F50A0;
  qword_6F50C0 = 0;
  qword_6F50B8 = 0;
  qword_6F50A8 = 0;
  unk_6F50B0 = &qword_6F50B8;
  sub_C57B4(v0, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_6F5080, v0, qword_6F46B8);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_394564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F5080);
  _Unwind_Resume(a1);
}

uint64_t sub_394594()
{
  qword_6F50D8 = 0;
  qword_6F50D0 = &qword_6F50D8;
  qword_6F50F0 = 0;
  qword_6F50E0 = 0;
  unk_6F50E8 = &qword_6F50F0;
  qword_6F5110 = 0;
  qword_6F5108 = 0;
  qword_6F50F8 = 0;
  unk_6F5100 = &qword_6F5108;
  sub_3FC3D0(&qword_6F50D0, &qword_709310, qword_6F47C0);
  v1[0] = 0x696D646600000001;
  v1[1] = 2;
  v2 = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  return sub_3FC3D0(&qword_6F50D0, v1, qword_6F46B0);
}

uint64_t sub_394654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  result = sub_3FC3D0(a2, &qword_709310, qword_6F4890);
  if (*(a1 + 32) == 1)
  {
    return sub_3FD764(a2, &qword_709310, qword_6F3DF8, 0);
  }

  return result;
}

uint64_t sub_3946F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  sub_3FC3D0(a2, &qword_709310, qword_6F48A0);
  v9 = 0x696D766300000001;
  v10 = *sub_C53D8();
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_3FC3D0(a2, &v9, qword_6F48B0);
  v9 = 0x696D6F6300000001;
  v10 = *sub_C53D8();
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_3FC3D0(a2, &v9, qword_6F48B0);
  v9 = 0x676D637400000001;
  v10 = *sub_C53D8();
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_3FC3D0(a2, &v9, qword_6F48B0);
  for (i = 0; i != 20; i += 4)
  {
    v5 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v9) = 1;
    HIDWORD(v9) = v5;
    v10 = *sub_C53D8();
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    sub_3FC3D0(a2, &v9, qword_6F48C0);
  }

  if (*(a1 + 32))
  {
    sub_3FD764(a2, &qword_709310, qword_6F3DF8, 0);
    for (j = 0; j != 20; j += 4)
    {
      v7 = *&aOvpvivpvcgpvcv[j];
      LODWORD(v9) = 1;
      HIDWORD(v9) = v7;
      v10 = *sub_C53D8();
      v11 = 0;
      v13 = 0;
      v14 = 0;
      v12 = 0;
      sub_3FD764(a2, &v9, &unk_5A3CE8, 0);
    }
  }

  return sub_3FDE10(a2, &qword_709310, 1);
}

uint64_t sub_39492C()
{
  qword_6F5218 = 0;
  qword_6F5210 = &qword_6F5218;
  qword_6F5230 = 0;
  qword_6F5220 = 0;
  unk_6F5228 = &qword_6F5230;
  qword_6F5250 = 0;
  qword_6F5248 = 0;
  qword_6F5238 = 0;
  unk_6F5240 = &qword_6F5248;
  sub_3FC3D0(&qword_6F5210, &qword_709310, qword_6F48F0);
  v3 = 0x696D766300000001;
  v4 = *sub_C53D8();
  v5 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_3FC3D0(&qword_6F5210, &v3, qword_6F4900);
  v3 = 0x696D6F6300000001;
  v4 = *sub_C53D8();
  v5 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_3FC3D0(&qword_6F5210, &v3, qword_6F4900);
  v3 = 0x676D637400000001;
  v4 = *sub_C53D8();
  v5 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_3FC3D0(&qword_6F5210, &v3, qword_6F4900);
  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv[i];
    LODWORD(v3) = 1;
    HIDWORD(v3) = v1;
    v4 = *sub_C53D8();
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    sub_3FC3D0(&qword_6F5210, &v3, qword_6F4910);
    LODWORD(v3) = 1;
    HIDWORD(v3) = v1;
    v4 = *sub_C53D8();
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    sub_3FD764(&qword_6F5210, &v3, &unk_5A3CE8, 0);
  }

  return sub_3FDE10(&qword_6F5210, &qword_709310, 1);
}

uint64_t sub_394B44()
{
  qword_6F5268 = 0;
  qword_6F5260 = &qword_6F5268;
  qword_6F5280 = 0;
  qword_6F5270 = 0;
  unk_6F5278 = &qword_6F5280;
  qword_6F52A0 = 0;
  qword_6F5298 = 0;
  qword_6F5288 = 0;
  unk_6F5290 = &qword_6F5298;
  sub_3FC3D0(&qword_6F5260, &qword_709310, qword_6F48D0);
  sub_C57B4(v1, 1, 1768776806, 1919443299);
  sub_3FC3D0(&qword_6F5260, v1, qword_6F48D0);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_3FD47C(&qword_6F5260, 0);
  return sub_3FDE10(&qword_6F5260, &qword_709310, 1);
}

void sub_394C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_6F5260);
  _Unwind_Resume(a1);
}

uint64_t sub_394C48()
{
  qword_6F52B8 = 0;
  qword_6F52B0 = &qword_6F52B8;
  qword_6F52D0 = 0;
  qword_6F52C0 = 0;
  unk_6F52C8 = &qword_6F52D0;
  qword_6F52F0 = 0;
  qword_6F52E8 = 0;
  qword_6F52D8 = 0;
  unk_6F52E0 = &qword_6F52E8;
  sub_3FC3D0(&qword_6F52B0, &qword_709310, qword_6F4920);
  sub_3FD47C(&qword_6F52B0, 0);
  return sub_3FDE10(&qword_6F52B0, &qword_709310, 1);
}

void sub_394CE8()
{
  qword_6F5308 = 0;
  qword_6F5300 = &qword_6F5308;
  qword_6F5320 = 0;
  qword_6F5310 = 0;
  unk_6F5318 = &qword_6F5320;
  qword_6F5340 = 0;
  qword_6F5338 = 0;
  qword_6F5328 = 0;
  unk_6F5330 = &qword_6F5338;
  sub_3FC3D0(&qword_6F5300, &qword_709310, qword_6F44A8);
  sub_3FD47C(&qword_6F5300, 0);
  sub_ABF48();
  if (!xmmword_6FD620)
  {
    sub_3FDE10(&qword_6F5300, &qword_709310, 1);
  }
}

void sub_394D98()
{
  qword_6F5358 = 0;
  qword_6F5350 = &qword_6F5358;
  qword_6F5370 = 0;
  qword_6F5360 = 0;
  unk_6F5368 = &qword_6F5370;
  qword_6F5390 = 0;
  qword_6F5388 = 0;
  qword_6F5378 = 0;
  unk_6F5380 = &qword_6F5388;
  sub_3FC3D0(&qword_6F5350, &qword_709310, qword_6F44B8);
  v0 = 0x696D646600000001;
  *&v1 = 1;
  DWORD2(v1) = 0;
  v2 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  sub_3FC3D0(&qword_6F5350, &v0, qword_6F44D8);
  v0 = 0x6D6F767000000001;
  v1 = *sub_C53D8();
  v2 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  sub_3FC3D0(&qword_6F5350, &v0, qword_6F44C8);
  v0 = 0x6D6F767000000001;
  *&v1 = 1;
  DWORD2(v1) = 0;
  v2 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  sub_3FC3D0(&qword_6F5350, &v0, qword_6F44E8);
  sub_3FD47C(&qword_6F5350, 0);
  sub_3FD764(&qword_6F5350, &qword_709310, qword_6F3DD8, dword_6F3E08);
  sub_ABF48();
  if (!xmmword_6FD620)
  {
    sub_3FDE10(&qword_6F5350, &qword_709310, 1);
  }
}

uint64_t sub_394F38()
{
  qword_6F53A8 = 0;
  qword_6F53A0 = &qword_6F53A8;
  qword_6F53C0 = 0;
  qword_6F53B0 = 0;
  unk_6F53B8 = &qword_6F53C0;
  qword_6F53E0 = 0;
  qword_6F53D8 = 0;
  qword_6F53C8 = 0;
  qword_6F53D0 = &qword_6F53D8;
  sub_3FC910(&qword_6F53A0, &qword_6F4308);
  v0 = qword_6F53D8;
  if (!qword_6F53D8)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v1 = v0;
      v2 = *(v0 + 28);
      if (v2 <= 0x696D6466)
      {
        break;
      }

      v0 = *v1;
      if (!*v1)
      {
        goto LABEL_7;
      }
    }

    if (v2 == 1768776806)
    {
      break;
    }

    v0 = *(v1 + 8);
    if (!v0)
    {
      goto LABEL_7;
    }
  }

  *(v1 + 40) = 1886216809;
  return sub_84CDC(&qword_6F53A0);
}

uint64_t sub_395090()
{
  qword_6F53F8 = 0;
  qword_6F53F0 = &qword_6F53F8;
  qword_6F5410 = 0;
  qword_6F5400 = 0;
  unk_6F5408 = &qword_6F5410;
  qword_6F5430 = 0;
  qword_6F5428 = 0;
  qword_6F5418 = 0;
  unk_6F5420 = &qword_6F5428;
  return sub_3FC910(&qword_6F53F0, &qword_6F4328);
}

uint64_t sub_395100()
{
  qword_6F5618 = 0;
  qword_6F5610 = &qword_6F5618;
  qword_6F5630 = 0;
  qword_6F5620 = 0;
  unk_6F5628 = &qword_6F5630;
  qword_6F5650 = 0;
  qword_6F5648 = 0;
  qword_6F5638 = 0;
  unk_6F5640 = &qword_6F5648;
  result = _os_feature_enabled_impl();
  if (result)
  {
    sub_3FC3D0(&qword_6F5610, &qword_709310, qword_6F4940);
    sub_3FD764(&qword_6F5610, &qword_709310, &unk_5A3D78, 1);
    return sub_3FD47C(&qword_6F5610, 6);
  }

  return result;
}

void sub_3951C8(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    sub_477A0(v12);
    goto LABEL_31;
  }

  v10 = sub_1658B4(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 7);
      *(v9 + 28) = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= *(v15 + 7))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      sub_46B44(a1, v16, v17, v9);
      if (v10)
      {
        v10 = sub_1658B4(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  sub_477A0(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_3953E8(uint64_t a1)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  operator new();
}

void sub_395E0C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_6F5910);
  sub_249E00(v1);
  _Unwind_Resume(a1);
}

void sub_396020()
{
  v0 = sub_3FC88C(qword_6F5680, &qword_709310, qword_6F47F8);
  sub_3FD47C(v0, 0);
  sub_C57B4(v1, 1, 1768776806, 1751410292);
  sub_3FC3D0(qword_6F5680, v1, qword_6F47F8);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1214539380);
  sub_3FC3D0(qword_6F5680, v1, qword_6F47F8);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1647393080);
  sub_3FC3D0(qword_6F5680, v1, qword_6F47F8);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1214329654);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4830);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1214394677);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4820);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1647718502);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4860);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1647718503);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4870);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1647522096);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4840);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1647521842);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4850);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  sub_C57B4(v1, 1, 1768776806, 1752709424);
  sub_3FC3D0(qword_6F5680, v1, qword_6F4880);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_396304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(qword_6F5680);
  _Unwind_Resume(a1);
}

void sub_396478(_Unwind_Exception *a1)
{
  sub_477A0(v1[11]);
  sub_477A0(v1[7]);
  sub_4E0BC(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_3964B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_3965B4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_3965E8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        *v9 = "StandardUtilities.h";
        *&v9[8] = 1024;
        *&v9[10] = 1146;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Mismatched Policy Values", &v8, 0x12u);
      }
    }
  }

  sub_44E44(&v8, (a2 + 2));
  sub_47714(&v8, *(a3 + 8), (a3 + 16));
  *a1 = *a2;
  sub_44E44((a1 + 8), &v8);
  sub_477A0(*&v9[4]);
}

void *sub_396720(void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_273320(a1, v4, *a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_39679C(void *result, unsigned int *a2, uint64_t a3)
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
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 28);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
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

void *sub_39692C(void *result, unsigned int *a2, uint64_t a3)
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
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 28);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
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

uint64_t sub_396ABC(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_2B1E18(result);

    operator delete();
  }

  return result;
}

uint64_t sub_396B08(uint64_t a1)
{
  v3 = 1;
  sub_4BA00(v4, &v3, 1);
  *(a1 + 8) = 0;
  *a1 = off_6DA5E0;
  *(a1 + 16) = 2;
  sub_44E44((a1 + 24), v4);
  sub_477A0(v4[1]);
  return a1;
}

uint64_t sub_396B9C(uint64_t a1)
{
  v3 = 1;
  sub_4BA00(v4, &v3, 1);
  *(a1 + 8) = 0;
  *a1 = off_6DA628;
  *(a1 + 16) = 2;
  sub_44E44((a1 + 24), v4);
  sub_477A0(v4[1]);
  return a1;
}

uint64_t sub_396C30(uint64_t a1, uint64_t a2)
{
  v3 = sub_59410(a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 32;
  if ((v5 & 0x100000000) != 0)
  {
    return sub_4B8C4(a1 + 16, v5);
  }

  else
  {
    return *(a1 + 16) == 3;
  }
}

uint64_t sub_396CA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_63250(&v14);
  sub_22564(&v14, "[ ", 2);
  if (*(a1 + 8))
  {
    v4 = "src";
  }

  else
  {
    v4 = "dst";
  }

  sub_22564(&v14, v4, 3);
  sub_22564(&v14, "/prop ", 6);
  sub_22170(v12, 0x62616C74u);
  if ((v13 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = v12[1];
  }

  sub_22564(&v14, v5, v6);
  sub_22564(&v14, ": ", 2);
  sub_1DE284(__p, a1 + 16);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  sub_22564(&v14, v7, v8);
  sub_22564(&v14, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  sub_1DDDEC(a2, &v14);
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_396EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1DDE94(&a22);
  _Unwind_Resume(a1);
}

void sub_396F2C(uint64_t a1)
{
  *a1 = off_6DA628;
  sub_477A0(*(a1 + 32));

  operator delete();
}

uint64_t sub_396F94(uint64_t a1)
{
  *a1 = off_6DA628;
  sub_477A0(*(a1 + 32));
  return a1;
}

uint64_t sub_396FDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_59410(a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 32;
  if ((v5 & 0x100000000) != 0)
  {
    return sub_4B8C4(a1 + 16, v5);
  }

  else
  {
    return *(a1 + 16) == 3;
  }
}

uint64_t sub_39704C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_63250(&v14);
  sub_22564(&v14, "[ ", 2);
  if (*(a1 + 8))
  {
    v4 = "src";
  }

  else
  {
    v4 = "dst";
  }

  sub_22564(&v14, v4, 3);
  sub_22564(&v14, "/prop ", 6);
  sub_22170(v12, 0x646F6170u);
  if ((v13 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = v12[1];
  }

  sub_22564(&v14, v5, v6);
  sub_22564(&v14, ": ", 2);
  sub_1DE284(__p, a1 + 16);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  sub_22564(&v14, v7, v8);
  sub_22564(&v14, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  sub_1DDDEC(a2, &v14);
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_39728C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1DDE94(&a22);
  _Unwind_Resume(a1);
}

void sub_3972D8(uint64_t a1)
{
  *a1 = off_6DA5E0;
  sub_477A0(*(a1 + 32));

  operator delete();
}

uint64_t sub_397340(uint64_t a1)
{
  *a1 = off_6DA5E0;
  sub_477A0(*(a1 + 32));
  return a1;
}

void *sub_39739C(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 32);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

void sub_397584(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_3975E0(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  operator new();
}

void sub_397A1C(_Unwind_Exception *a1)
{
  v3 = v2;
  (*(*v3 + 8))(v3);
  sub_24A81C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_397AA0(_WORD *a1)
{
  result = (*(*a1 + 160))(a1);
  if (result)
  {
    return (a1[92] & 1) == 0;
  }

  return result;
}

void sub_397AF4(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

_BYTE *sub_397B30(void *a1)
{
  sub_27A4();
  v70 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x676C6F62696E6F74;
  inAddress.mElement = 0;
  AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
  v66 = 0;
  ioDataSize = 4;
  v65 = 0x676C6F626D61696ELL;
  PropertyData = AudioObjectGetPropertyData(1u, &v65, 0, 0, &ioDataSize, &v66 + 4);
  if (outData)
  {
    v2 = HIDWORD(v66) == 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v5 = a1[18];
  v4 = a1[19];
  if (v5 != v4)
  {
    do
    {
      PropertyData = (*(**v5 + 416))(*v5);
      ++v5;
    }

    while (v5 != v4);
    v5 = a1[18];
    v4 = a1[19];
  }

  if (v5 != v4)
  {
    do
    {
      v6 = *v5;
      if (!*v5)
      {
        v57 = sub_5544(14);
        v58 = sub_468EC(1, *v57, *(v57 + 8));
        v59 = v58;
        if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          buf[0].n128_u32[0] = 136315394;
          *(buf[0].n128_u64 + 4) = "VirtualAudio_PlugIn.mm";
          buf[0].n128_u16[6] = 1024;
          *(&buf[0].n128_u32[3] + 2) = 2113;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v7 = *sub_5544(2);
      v8 = v7;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(v6 + 8);
        v10 = *(v6 + 400);
        buf[0].n128_u32[0] = 136315906;
        *(buf[0].n128_u64 + 4) = "VirtualAudio_PlugIn.mm";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 2116;
        buf[1].n128_u16[1] = 1024;
        buf[1].n128_u32[1] = v9;
        buf[1].n128_u16[4] = 2112;
        *(&buf[1].n128_u64[1] + 2) = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing to destroy VirtualAudio_Device ID %u (%@).", buf, 0x22u);
      }

      if (v3)
      {
        sub_27A4();
        buf[0].n128_u8[0] = (*(qword_6E94F8 + 16))(&qword_6E94F8);
        (*(*v6 + 8))(v6);
        PropertyData = sub_210C50(buf);
      }

      else
      {
        v11 = *(v6 + 440);
        if (v11)
        {
          sub_13FC68(v11);
        }

        PropertyData = sub_5544(1);
        v12 = *PropertyData;
        if (*PropertyData)
        {
          PropertyData = os_log_type_enabled(*PropertyData, OS_LOG_TYPE_DEBUG);
          if (PropertyData)
          {
            (*(*v6 + 112))(__p, v6);
            v13 = __p;
            if (v75 < 0)
            {
              v13 = *__p;
            }

            buf[0].n128_u32[0] = 136315650;
            *(buf[0].n128_u64 + 4) = "VirtualAudio_Device.cpp";
            buf[0].n128_u16[6] = 1024;
            *(&buf[0].n128_u32[3] + 2) = 595;
            buf[1].n128_u16[1] = 2080;
            *(buf[1].n128_u64 + 4) = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Finalized VirtualAudio_Device: %s.", buf, 0x1Cu);
            if (v75 < 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != a1[19]);
  }

  if (v3)
  {
    if (caulk::build::detail::get_kind(PropertyData))
    {
      +[CiderService StopService];
    }

    v14 = a1[16];
    if (v14)
    {
      sub_27A4();
      v72 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
      v15 = sub_809C0();
      sub_47BD8(v15);
      if (*(v15 + 392) != sub_231984)
      {
        v61 = sub_5544(14);
        v62 = *v61;
        if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
        {
          buf[0].n128_u32[0] = 136315394;
          *(buf[0].n128_u64 + 4) = "PortManager.cpp";
          buf[0].n128_u16[6] = 1024;
          *(&buf[0].n128_u32[3] + 2) = 494;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inProc does not match the client port listener.", buf, 0x12u);
        }

        v63 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v63, "inProc does not match the client port listener.");
      }

      *(v15 + 392) = 0;
      *(v15 + 400) = 0;
      sub_47C90(v15);
      v16 = *(v14 + 56);
      memset(buf, 0, 24);
      v17 = *(v14 + 40);
      if (v17 != (v14 + 48))
      {
        do
        {
          sub_88A00(__p, v17 + 4, "", 95);
          v18 = sub_231DE8(v14, *__p, buf);
          if (*&__p[8])
          {
            sub_1A8C0(*&__p[8]);
          }

          if (!v18)
          {
            v21 = sub_5544(14);
            v22 = *v21;
            if (*v21)
            {
              if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "VirtualAudio_PortManager.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 96;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: error destroying port", __p, 0x12u);
              }
            }
          }

          v19 = v17[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v17[2];
              v2 = *v20 == v17;
              v17 = v20;
            }

            while (!v2);
          }

          v17 = v20;
        }

        while (v20 != (v14 + 48));
      }

      sub_218AD4(buf);
      if (*(v14 + 56))
      {
        v55 = sub_5544(14);
        v56 = *v55;
        if (*v55)
        {
          if (os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PortManager.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 102;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: port vector not empty after teardown", __p, 0x12u);
          }
        }
      }

      if (v16)
      {
        sub_1DB7C8(&v71);
        strcpy(__p, "strpbolg");
        __p[9] = 0;
        *&__p[10] = 0;
        (*(**(v14 + 32) + 88))(*(v14 + 32), 1, __p, 1);
        sub_1DB63C(&v71);
      }

      *__p = buf;
      sub_218D2C(__p);
      sub_210C50(&v72);
    }

    v23 = sub_8703C();
    (*(*v23 + 16))(v23, 0, 0);
    sub_363558();
    buf[1].n128_u64[1] = 0;
    sub_23DACC(buf);
    sub_23DDE8(buf);
    v24 = sub_5544(6);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
    {
      buf[0].n128_u32[0] = 136315394;
      *(buf[0].n128_u64 + 4) = "SingletonFactory_Aspen.cpp";
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = 85;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Beginning destruction of singletons.", buf, 0x12u);
    }

    v26 = sub_5544(18);
    v27 = sub_5544(6);
    v28 = 0;
    buf[0].n128_u64[0] = 0x100000002;
    v29 = *(v26 + 8);
    while (1)
    {
      v30 = buf[0].n128_i32[v28];
      if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
      {
        break;
      }

      if (++v28 == 2)
      {
        goto LABEL_58;
      }
    }

    if ((v29 & v30) == 0)
    {
      v26 = v27;
    }

LABEL_58:
    v31 = *v26;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      buf[0].n128_u32[0] = 136315394;
      *(buf[0].n128_u64 + 4) = "DeviceInfoListener.cpp";
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = 34;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to destroy DeviceInfoListener.", buf, 0x12u);
    }

    if (qword_70A210)
    {
      (*(*qword_70A210 + 8))(qword_70A210);
      qword_70A210 = 0;
      v32 = sub_5544(9);
      v33 = sub_5544(6);
      v34 = 0;
      buf[0].n128_u64[0] = 0x100000002;
      v35 = *(v32 + 8);
      while (1)
      {
        v36 = buf[0].n128_i32[v34];
        if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
        {
          break;
        }

        if (++v34 == 2)
        {
          goto LABEL_68;
        }
      }

      if ((v35 & v36) == 0)
      {
        v32 = v33;
      }

LABEL_68:
      v37 = *v32;
      if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        buf[0].n128_u32[0] = 136315394;
        *(buf[0].n128_u64 + 4) = "PortManager.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 317;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to destroy PortManager.", buf, 0x12u);
      }

      v38 = qword_6E7E10;
      if (qword_6E7E10)
      {
        if (*(qword_6E7E10 + 392) || *(qword_6E7E10 + 400))
        {
          v39 = sub_5544(9);
          v40 = *v39;
          if (*v39)
          {
            if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = "PortManager.cpp";
              buf[0].n128_u16[6] = 1024;
              *(&buf[0].n128_u32[3] + 2) = 340;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mClientListener is not NULL on destruction.", buf, 0x12u);
            }
          }
        }

        if (atomic_load((v38 + 656)))
        {
          v42 = sub_5544(9);
          v43 = *v42;
          if (*v42)
          {
            if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = "PortManager.cpp";
              buf[0].n128_u16[6] = 1024;
              *(&buf[0].n128_u32[3] + 2) = 341;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifications are suspended on destruction", buf, 0x12u);
            }
          }
        }

        v44 = *(v38 + 304);
        v45 = *(v38 + 408);
        if (v45)
        {
          LODWORD(v45) = (*(*v45 + 152))(v45);
        }

        if (v44 > v45)
        {
          v46 = sub_5544(9);
          v47 = *v46;
          if (*v46)
          {
            if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = "PortManager.cpp";
              buf[0].n128_u16[6] = 1024;
              *(&buf[0].n128_u32[3] + 2) = 347;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mConnectedPorts is not empty on destruction.", buf, 0x12u);
            }
          }
        }

        sub_11DC68(*(v38 + 672));
        sub_65310((v38 + 632));
        sub_65310((v38 + 608));
        sub_D169C(*(v38 + 592));
        sub_4BC698(v38 + 448);
        sub_65310((v38 + 424));
        v48 = *(v38 + 416);
        if (v48)
        {
          sub_1A8C0(v48);
        }

        sub_257B7C(v38 + 352);
        sub_DDE50(v38 + 312);
        sub_4E0BC((v38 + 288));
        sub_13AB3C(v38);
        operator delete();
      }

      v53 = sub_5544(14);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136315394;
        *(buf[0].n128_u64 + 4) = "PortManager.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 319;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sPortManager is NULL]: sPortManager is NULL!", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v52, "sPortManager is NULL!");
    }

    else
    {
      v50 = sub_5544(14);
      v51 = *v50;
      if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u32[0] = 136315394;
        *(buf[0].n128_u64 + 4) = "DeviceInfoListener.cpp";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 36;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sDeviceInfoListener is NULL]: sDeviceInfoListener is NULL!", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v52, "sDeviceInfoListener is NULL!");
    }
  }

  return sub_210C50(&v70);
}

void sub_399298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, char a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a23;
  sub_218D2C(&a29);
  sub_210C50(&a22);
  sub_210C50(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_3995D0(uint64_t a1, unsigned int a2, int *a3, void *a4)
{
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      v6 = *a3;
      a3 += 3;
      if (v6 == 1768845172)
      {
        break;
      }

      if (!--v5)
      {
        return 0;
      }
    }

    ioDataSize = 4;
    outData = 1;
    *&inAddress.mSelector = 0x676C6F62696E6F74;
    inAddress.mElement = 0;
    PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v8 = *sub_5544(2);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, PropertyData);
          if (v37 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          *buf = 136315906;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1845;
          *&buf[18] = 1024;
          *&buf[20] = PropertyData;
          *&buf[24] = 2080;
          *&buf[26] = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') reading kAudioHardwarePropertyIsInitingOrExiting property", buf, 0x22u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(*__p);
          }
        }
      }

LABEL_15:

      return 0;
    }

    if (outData)
    {
      return 0;
    }

    if (!a4)
    {
      v26 = *sub_5544(2);
      v9 = v26;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1852;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Received NULL client data", buf, 0x12u);
      }

      goto LABEL_15;
    }

    if ((sub_231C4() & 1) != 0 || sub_23238("VA_Initialization", 0x11uLL) != &qword_709F00)
    {
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      v13 = os_signpost_id_generate(qword_6F6848);
      if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
      {
        qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
        __cxa_guard_release(&qword_6F6850);
      }

      v14 = qword_6F6848;
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VA_Initialization", "Initializing VirtualAudio plugin", buf, 2u);
      }
    }

    else
    {
      v13 = 0;
    }

    v32 = v13;
    v16 = sub_5544(43);
    if (*(v16 + 8))
    {
      v17 = *v16;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "SignpostUtilities.h";
          *&buf[12] = 1024;
          *&buf[14] = 51;
          *&buf[18] = 2080;
          *&buf[20] = "kVAInitialization";
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
        }
      }
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_399E30;
    *&buf[24] = &unk_6DBD10;
    *&buf[32] = a4;
    v39 = a4;
    v19 = buf;
    v20 = a4[71];
    v22 = v21 = v20;
    dispatch_async(v22, v19);

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v27[0] = 1;
      v31 = 4;
      strcpy(__p, "niavbolg");
      __p[9] = 0;
      *&__p[10] = 0;
      (*(*a4 + 72))(a4, __p, 0, 0, &v31, v27);
      v23 = *sub_5544(2);
      v24 = v23;
      if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315650;
        *&__p[4] = "VirtualAudio_PlugIn.mm";
        v34 = 1024;
        v35 = 2083;
        v36 = 1024;
        v37 = v27[0];
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VA Init Status: %u", __p, 0x18u);
      }
    }

    sub_39A1B0(&v32);
    sub_27A4();
    v25 = atomic_load(&qword_6E9558);
    if (v25 == pthread_self())
    {
      sub_27A4();
      (*(qword_6E94F8 + 24))();
    }
  }

  return 0;
}

void sub_399E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_39A364(*(a1 + 40));
  v2 = v1;
  if (atomic_load_explicit(&qword_6F5A30, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&qword_6F5A30, &v3, sub_39D650);
  }
}

os_signpost_id_t *sub_39A1B0(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315650;
        v10 = "SignpostUtilities.h";
        v11 = 1024;
        v12 = 51;
        v13 = 2080;
        v14 = "kVAInitialization";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v9, 0x1Cu);
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

    v5 = qword_6F6848;
    v6 = v5;
    v7 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_Initialization", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_39A358(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_39A364(uint64_t result)
{
  if (!*(result + 108))
  {
    *(result + 108) = 1;
    v1 = *sub_5544(2);
    v2 = v1;
    if (v1)
    {
      v3 = v1;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        buf = 136315394;
        buf_4 = "VirtualAudio_PlugIn.mm";
        buf_12 = 1024;
        buf_14 = 1897;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ***** Beginning Deferred Initialization *****", &buf, 0x12u);
      }
    }

    sub_2CCEC4();
  }

  return result;
}

void sub_39CFDC(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(v2);
}

void sub_39D768(std::string *a1, uint64_t a2)
{
  v3 = a1;
  if (*(a2 + 108) != 2)
  {
    sub_53E8(&v153, "VirtualAudio PlugIn is not initialized yet. Initialization state: ");
    std::to_string(&__dst, *(a2 + 108));
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    std::string::append(&v153, p_dst, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&__dst, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v153;
    }

    v3->__r_.__value_.__r.__words[0] = 0;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    sub_83F3C();
  }

  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_63250(&v153);
  v127 = v3;
  sub_22564(&v153, "Routing Information:", 20);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v4 = v3->__r_.__value_.__l.__size_;
  v5 = v3->__r_.__value_.__r.__words[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v145 = v3;
    if (v12)
    {
      sub_1D8BB8(v12);
    }

    v13 = 24 * v9;
    v14 = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v13 = v14;
    memset(&__p, 0, sizeof(__p));
    v15 = 24 * v9 + 24;
    v16 = v127->__r_.__value_.__l.__size_ - v127->__r_.__value_.__r.__words[0];
    v17 = (24 * v9 - v16);
    memcpy(v17, v127->__r_.__value_.__l.__data_, v16);
    v18 = v127->__r_.__value_.__r.__words[0];
    v127->__r_.__value_.__r.__words[0] = v17;
    v127->__r_.__value_.__l.__size_ = v15;
    v19 = v127->__r_.__value_.__r.__words[2];
    v127->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v18;
    v144 = v19;
    __dst.__r_.__value_.__r.__words[0] = v18;
    __dst.__r_.__value_.__l.__size_ = v18;
    sub_12574(&__dst);
    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v127->__r_.__value_.__l.__size_ = v15;
    v3 = v127;
    if (v20 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *&__p.__r_.__value_.__l.__data_;
    *(v4 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v4 = v6;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v4 + 24;
  }

  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  sub_63250(&v153);
  sub_22564(&v153, "- Category: ", 12);
  sub_22170(&v140, *(a2 + 224));
  if (v142 >= 0)
  {
    v21 = &v140;
  }

  else
  {
    v21 = v140;
  }

  if (v142 >= 0)
  {
    v22 = HIBYTE(v142);
  }

  else
  {
    v22 = v141;
  }

  sub_22564(&v153, v21, v22);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v23 = v3->__r_.__value_.__l.__size_;
  v24 = v3->__r_.__value_.__r.__words[2];
  if (v23 >= v24)
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v27 = v26 + 1;
    if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v28 > v27)
    {
      v27 = 2 * v28;
    }

    if (v28 >= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v27;
    }

    v145 = v3;
    if (v29)
    {
      sub_1D8BB8(v29);
    }

    v30 = 24 * v26;
    v31 = *&__p.__r_.__value_.__l.__data_;
    *(v30 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v30 = v31;
    memset(&__p, 0, sizeof(__p));
    v32 = 24 * v26 + 24;
    v33 = v3->__r_.__value_.__l.__size_ - v3->__r_.__value_.__r.__words[0];
    v34 = (24 * v26 - v33);
    memcpy(v34, v3->__r_.__value_.__l.__data_, v33);
    v35 = v3->__r_.__value_.__r.__words[0];
    v3->__r_.__value_.__r.__words[0] = v34;
    v3->__r_.__value_.__l.__size_ = v32;
    v36 = v3->__r_.__value_.__r.__words[2];
    v3->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v35;
    v144 = v36;
    __dst.__r_.__value_.__r.__words[0] = v35;
    __dst.__r_.__value_.__l.__size_ = v35;
    sub_12574(&__dst);
    v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = v32;
    if (v37 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25 = *&__p.__r_.__value_.__l.__data_;
    *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v23 = v25;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v23 + 24;
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v140);
  }

  v153.__r_.__value_.__r.__words[0] = v128;
  *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  sub_63250(&v153);
  sub_22564(&v153, "- Mode: ", 8);
  sub_22170(&v140, *(a2 + 228));
  if (v142 >= 0)
  {
    v38 = &v140;
  }

  else
  {
    v38 = v140;
  }

  if (v142 >= 0)
  {
    v39 = HIBYTE(v142);
  }

  else
  {
    v39 = v141;
  }

  sub_22564(&v153, v38, v39);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v40 = v3->__r_.__value_.__l.__size_;
  v41 = v3->__r_.__value_.__r.__words[2];
  if (v40 >= v41)
  {
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v44 = v43 + 1;
    if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v45 > v44)
    {
      v44 = 2 * v45;
    }

    if (v45 >= 0x555555555555555)
    {
      v46 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v46 = v44;
    }

    v145 = v3;
    if (v46)
    {
      sub_1D8BB8(v46);
    }

    v47 = 24 * v43;
    v48 = *&__p.__r_.__value_.__l.__data_;
    *(v47 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v47 = v48;
    memset(&__p, 0, sizeof(__p));
    v49 = 24 * v43 + 24;
    v50 = v3->__r_.__value_.__l.__size_ - v3->__r_.__value_.__r.__words[0];
    v51 = (24 * v43 - v50);
    memcpy(v51, v3->__r_.__value_.__l.__data_, v50);
    v52 = v3->__r_.__value_.__r.__words[0];
    v3->__r_.__value_.__r.__words[0] = v51;
    v3->__r_.__value_.__l.__size_ = v49;
    v53 = v3->__r_.__value_.__r.__words[2];
    v3->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v52;
    v144 = v53;
    __dst.__r_.__value_.__r.__words[0] = v52;
    __dst.__r_.__value_.__l.__size_ = v52;
    sub_12574(&__dst);
    v54 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = v49;
    if (v54 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v42 = *&__p.__r_.__value_.__l.__data_;
    *(v40 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v40 = v42;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v40 + 24;
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v140);
  }

  v153.__r_.__value_.__r.__words[0] = v128;
  *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  sub_63250(&v153);
  sub_22564(&v153, "- Silent Mode State: ", 21);
  v55 = sub_8703C();
  v56 = (**v55)(v55);
  if (v56)
  {
    v57 = "Enabled";
  }

  else
  {
    v57 = "Disabled";
  }

  if (v56)
  {
    v58 = 7;
  }

  else
  {
    v58 = 8;
  }

  sub_22564(&v153, v57, v58);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v59 = v3->__r_.__value_.__l.__size_;
  v60 = v3->__r_.__value_.__r.__words[2];
  if (v59 >= v60)
  {
    v62 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v63 = v62 + 1;
    if (v62 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v64 > v63)
    {
      v63 = 2 * v64;
    }

    if (v64 >= 0x555555555555555)
    {
      v65 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v65 = v63;
    }

    v145 = v3;
    if (v65)
    {
      sub_1D8BB8(v65);
    }

    v66 = 24 * v62;
    v67 = *&__p.__r_.__value_.__l.__data_;
    *(v66 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v66 = v67;
    memset(&__p, 0, sizeof(__p));
    v68 = 24 * v62 + 24;
    v69 = v3->__r_.__value_.__l.__size_ - v3->__r_.__value_.__r.__words[0];
    v70 = (24 * v62 - v69);
    memcpy(v70, v3->__r_.__value_.__l.__data_, v69);
    v71 = v3->__r_.__value_.__r.__words[0];
    v3->__r_.__value_.__r.__words[0] = v70;
    v3->__r_.__value_.__l.__size_ = v68;
    v72 = v3->__r_.__value_.__r.__words[2];
    v3->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v71;
    v144 = v72;
    __dst.__r_.__value_.__r.__words[0] = v71;
    __dst.__r_.__value_.__l.__size_ = v71;
    sub_12574(&__dst);
    v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = v68;
    if (v73 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v61 = *&__p.__r_.__value_.__l.__data_;
    *(v59 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v59 = v61;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v59 + 24;
  }

  v153.__r_.__value_.__r.__words[0] = v128;
  *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  v74 = *(a2 + 112);
  v153.__r_.__value_.__r.__words[0] = &v153;
  *&v153.__r_.__value_.__r.__words[1] = &v153;
  sub_1CA268(&v134, v74, &v153);
  sub_65310(&v153);
  if (v135[1])
  {
    v140 = &v140;
    v141 = &v140;
    v142 = 0;
    if (v134 != v135)
    {
      sub_11325C();
    }

    sub_63250(&v153);
    v3 = v127;
    sub_22564(&v153, "- Override VirtualAudio_Port ID(s): ", 36);
    memset(&__dst, 0, sizeof(__dst));
    strcpy(&v144, "cwdv");
    LOBYTE(v145) = 0;
    v146 = 3;
    v148[0] = 0;
    v148[1] = 0;
    v147 = v148;
    v149 = 44739242;
    v151 = 0;
    v152 = 0;
    v150 = 0;
    sub_87760(&v130, a2, &v140, &__dst);
    sub_87BA8(&v133, &v130);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v133;
    }

    else
    {
      v75 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v133.__r_.__value_.__l.__size_;
    }

    sub_22564(&v153, v75, v76);
    sub_E1504(&v139, &v153.__r_.__value_.__l.__size_);
    v77 = v127->__r_.__value_.__l.__size_;
    v78 = v127->__r_.__value_.__r.__words[2];
    if (v77 >= v78)
    {
      v80 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v127->__r_.__value_.__r.__words[0]) >> 3);
      v81 = v80 + 1;
      if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_189A00();
      }

      v82 = 0xAAAAAAAAAAAAAAABLL * ((v78 - v127->__r_.__value_.__r.__words[0]) >> 3);
      if (2 * v82 > v81)
      {
        v81 = 2 * v82;
      }

      if (v82 >= 0x555555555555555)
      {
        v83 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v83 = v81;
      }

      v138 = v127;
      if (v83)
      {
        sub_1D8BB8(v83);
      }

      v84 = 24 * v80;
      v85 = *&v139.__r_.__value_.__l.__data_;
      *(v84 + 16) = *(&v139.__r_.__value_.__l + 2);
      *v84 = v85;
      memset(&v139, 0, sizeof(v139));
      v86 = 24 * v80 + 24;
      v87 = v127->__r_.__value_.__l.__size_ - v127->__r_.__value_.__r.__words[0];
      v88 = (24 * v80 - v87);
      memcpy(v88, v127->__r_.__value_.__l.__data_, v87);
      v89 = v127->__r_.__value_.__r.__words[0];
      v127->__r_.__value_.__r.__words[0] = v88;
      v127->__r_.__value_.__l.__size_ = v86;
      v90 = v127->__r_.__value_.__r.__words[2];
      v127->__r_.__value_.__r.__words[2] = 0;
      __p.__r_.__value_.__r.__words[2] = v89;
      v137 = v90;
      __p.__r_.__value_.__r.__words[0] = v89;
      __p.__r_.__value_.__l.__size_ = v89;
      sub_12574(&__p);
      v91 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
      v127->__r_.__value_.__l.__size_ = v86;
      if (v91 < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v79 = *&v139.__r_.__value_.__l.__data_;
      *(v77 + 16) = *(&v139.__r_.__value_.__l + 2);
      *v77 = v79;
      memset(&v139, 0, sizeof(v139));
      v127->__r_.__value_.__l.__size_ = v77 + 24;
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    sub_477A0(*v131);
    if (SHIBYTE(v152) < 0)
    {
      operator delete(v150);
    }

    sub_477A0(v148[0]);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v153.__r_.__value_.__r.__words[0] = v128;
    *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
    if (v155 < 0)
    {
      operator delete(v154);
    }

    std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    sub_65310(&v140);
  }

  sub_63250(&v153);
  sub_22564(&v153, "- Activation Trigger: ", 22);
  sub_22170(&v140, *(a2 + 240));
  if (v142 >= 0)
  {
    v92 = &v140;
  }

  else
  {
    v92 = v140;
  }

  if (v142 >= 0)
  {
    v93 = HIBYTE(v142);
  }

  else
  {
    v93 = v141;
  }

  sub_22564(&v153, v92, v93);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v94 = v3->__r_.__value_.__l.__size_;
  v95 = v3->__r_.__value_.__r.__words[2];
  if (v94 >= v95)
  {
    v97 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v98 = v97 + 1;
    if (v97 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v99 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v99 > v98)
    {
      v98 = 2 * v99;
    }

    if (v99 >= 0x555555555555555)
    {
      v100 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v100 = v98;
    }

    v145 = v3;
    if (v100)
    {
      sub_1D8BB8(v100);
    }

    v101 = 24 * v97;
    v102 = *&__p.__r_.__value_.__l.__data_;
    *(v101 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v101 = v102;
    memset(&__p, 0, sizeof(__p));
    v103 = 24 * v97 + 24;
    v104 = v3->__r_.__value_.__l.__size_ - v3->__r_.__value_.__r.__words[0];
    v105 = (24 * v97 - v104);
    memcpy(v105, v3->__r_.__value_.__l.__data_, v104);
    v106 = v3->__r_.__value_.__r.__words[0];
    v3->__r_.__value_.__r.__words[0] = v105;
    v3->__r_.__value_.__l.__size_ = v103;
    v107 = v3->__r_.__value_.__r.__words[2];
    v3->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v106;
    v144 = v107;
    __dst.__r_.__value_.__r.__words[0] = v106;
    __dst.__r_.__value_.__l.__size_ = v106;
    sub_12574(&__dst);
    v108 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = v103;
    if (v108 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v96 = *&__p.__r_.__value_.__l.__data_;
    *(v94 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v94 = v96;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v94 + 24;
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v140);
  }

  v153.__r_.__value_.__r.__words[0] = v128;
  *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((*(a2 + 271) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 256))
    {
      goto LABEL_169;
    }
  }

  else if (!*(a2 + 271))
  {
    goto LABEL_169;
  }

  sub_63250(&v153);
  sub_22564(&v153, "- Activation Device: ", 21);
  v109 = *(a2 + 271);
  if (v109 >= 0)
  {
    v110 = a2 + 248;
  }

  else
  {
    v110 = *(a2 + 248);
  }

  if (v109 >= 0)
  {
    v111 = *(a2 + 271);
  }

  else
  {
    v111 = *(a2 + 256);
  }

  sub_22564(&v153, v110, v111);
  sub_E1504(&__p, &v153.__r_.__value_.__l.__size_);
  v112 = v3->__r_.__value_.__l.__size_;
  v113 = v3->__r_.__value_.__r.__words[2];
  if (v112 >= v113)
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v3->__r_.__value_.__r.__words[0]) >> 3);
    v116 = v115 + 1;
    if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v117 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v3->__r_.__value_.__r.__words[0]) >> 3);
    if (2 * v117 > v116)
    {
      v116 = 2 * v117;
    }

    if (v117 >= 0x555555555555555)
    {
      v118 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v118 = v116;
    }

    v145 = v3;
    if (v118)
    {
      sub_1D8BB8(v118);
    }

    v119 = 24 * v115;
    v120 = *&__p.__r_.__value_.__l.__data_;
    *(v119 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v119 = v120;
    memset(&__p, 0, sizeof(__p));
    v121 = 24 * v115 + 24;
    v122 = v3->__r_.__value_.__l.__size_ - v3->__r_.__value_.__r.__words[0];
    v123 = (24 * v115 - v122);
    memcpy(v123, v3->__r_.__value_.__l.__data_, v122);
    v124 = v3->__r_.__value_.__r.__words[0];
    v3->__r_.__value_.__r.__words[0] = v123;
    v3->__r_.__value_.__l.__size_ = v121;
    v125 = v3->__r_.__value_.__r.__words[2];
    v3->__r_.__value_.__r.__words[2] = 0;
    __dst.__r_.__value_.__r.__words[2] = v124;
    v144 = v125;
    __dst.__r_.__value_.__r.__words[0] = v124;
    __dst.__r_.__value_.__l.__size_ = v124;
    sub_12574(&__dst);
    v126 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = v121;
    if (v126 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v114 = *&__p.__r_.__value_.__l.__data_;
    *(v112 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v112 = v114;
    memset(&__p, 0, sizeof(__p));
    v3->__r_.__value_.__l.__size_ = v112 + 24;
  }

  v153.__r_.__value_.__r.__words[0] = v128;
  *(v153.__r_.__value_.__r.__words + *(v128 - 24)) = v129;
  if (v155 < 0)
  {
    operator delete(v154);
  }

  std::locale::~locale(&v153.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_169:
  sub_DFB4C(&v133, a2);
  sub_39FCD0(v3, v3->__r_.__value_.__l.__size_, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v133.__r_.__value_.__l.__size_ - v133.__r_.__value_.__r.__words[0]) >> 3));
  sub_102E90();
  sub_53E8(&v153, "\nTimeSyncClockDeviceManager: ");
  v130 = 0;
  *v131 = 0;
  v132 = 0;
  sub_83F3C();
}

void sub_39F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_39FCD0(std::string *result, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    size = result->__r_.__value_.__l.__size_;
    v9 = result->__r_.__value_.__r.__words[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - size) >> 3)) >= a5)
    {
      v15 = size - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((size - a2) >> 3)) >= a5)
      {
        v17 = 3 * a5;
        sub_39FF40(result, a2, result->__r_.__value_.__l.__size_, a2 + 24 * a5);
        v18 = (v6 + 8 * v17);
        do
        {
          result = std::string::operator=(v7, v6);
          v6 = (v6 + 24);
          ++v7;
        }

        while (v6 != v18);
      }

      else
      {
        v16 = (a3 + v15);
        result = sub_85890(result, (a3 + v15), a4, result->__r_.__value_.__l.__size_);
        v8->__r_.__value_.__l.__size_ = result;
        if (v15 >= 1)
        {
          sub_39FF40(v8, v7, size, &v7[a5]);
          do
          {
            result = std::string::operator=(v7, v6);
            v6 = (v6 + 24);
            ++v7;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v11 = result->__r_.__value_.__r.__words[0];
      v12 = a5 - 0x5555555555555555 * ((size - result->__r_.__value_.__r.__words[0]) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_189A00();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v31 = v8;
      if (v14)
      {
        sub_1D8BB8(v14);
      }

      v19 = 8 * ((a2 - v11) >> 3);
      v28 = 0;
      v29 = v19;
      v30 = v19;
      v20 = (v19 + 24 * a5);
      v21 = 24 * a5;
      do
      {
        if (*(v6 + 23) < 0)
        {
          sub_54A0(v19, *v6, *(v6 + 1));
        }

        else
        {
          v22 = *v6;
          *(v19 + 16) = *(v6 + 2);
          *v19 = v22;
        }

        v19 += 24;
        v6 = (v6 + 24);
        v21 -= 24;
      }

      while (v21);
      memcpy(v20, v7, v8->__r_.__value_.__l.__size_ - v7);
      v23 = v8->__r_.__value_.__r.__words[0];
      *&v30 = &v20[v8->__r_.__value_.__l.__size_ - v7];
      v8->__r_.__value_.__l.__size_ = v7;
      v24 = v7 - v23;
      v25 = (v29 - (v7 - v23));
      memcpy(v25, v23, v24);
      v26 = v8->__r_.__value_.__r.__words[0];
      v8->__r_.__value_.__r.__words[0] = v25;
      v27 = v8->__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__r.__words[1] = v30;
      *&v30 = v26;
      *(&v30 + 1) = v27;
      v28 = v26;
      v29 = v26;
      return sub_12574(&v28);
    }
  }

  return result;
}

__n128 sub_39FF40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      result = *v6;
      v7[1].n128_u64[0] = v6[1].n128_u64[0];
      *v7 = result;
      v7 = (v7 + 24);
      v6->n128_u64[1] = 0;
      v6[1].n128_u64[0] = 0;
      v6->n128_u64[0] = 0;
      v6 = (v6 + 24);
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = (v4 + v9 - 24);
      if (*(v4 + v9 - 1) < 0)
      {
        operator delete(*v11);
      }

      v12 = (v9 - 24 + v5);
      result = *v12;
      *(v4 + v9 - 8) = v12[1].n128_u64[0];
      *v11 = result;
      *(v5 + v9 - 1) = 0;
      v12->n128_u8[0] = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }

  return result;
}

_BYTE *sub_3A000C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_27A4();
    (*(qword_6E94F8 + 24))();
  }

  return a1;
}

uint64_t **sub_3A0070(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      v2[4] = v3;
      operator delete(v3);
    }

    sub_1F9D64(v2 + 2);
    sub_1F9D64(v2 + 1);
    sub_1F9D64(v2);

    operator delete();
  }

  return result;
}

uint64_t *sub_3A00EC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_27A4();
    v9 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v3 = atomic_load(&qword_6E9558);
    if (v3 != pthread_self())
    {
      v4 = sub_5544(8);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          v11 = 1024;
          v12 = 2038;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to acquire routing mutex.", buf, 0x12u);
        }
      }
    }

    sub_210C50(&v9);
    sub_477A0(*(v2 + 592));
    sub_477A0(*(v2 + 560));
    *buf = v2 + 528;
    sub_86D0C(buf);
    sub_C31F4(*(v2 + 512));
    sub_15B510((v2 + 480));
    if (*(v2 + 464) == 1 && *(v2 + 463) < 0)
    {
      operator delete(*(v2 + 440));
    }

    *buf = v2 + 416;
    sub_9DD40(buf);
    sub_4B064(v2 + 368);
    sub_4B064(v2 + 328);
    sub_4B064(v2 + 288);
    *buf = v2 + 264;
    sub_11C50(buf);
    *buf = v2 + 240;
    sub_11C50(buf);
    if (*(v2 + 231) < 0)
    {
      operator delete(*(v2 + 208));
    }

    v6 = *(v2 + 184);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    sub_4B0F4(*(v2 + 160));
    sub_477A0(*(v2 + 128));
    sub_178A90(*(v2 + 104));
    sub_98A08(*(v2 + 80));
    sub_477A0(*(v2 + 56));
    v7 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    sub_267FE8((v2 + 8));

    operator delete();
  }

  return result;
}

void sub_3A0398(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

pthread_t sub_3A03A8()
{
  sub_27A4();
  v0 = atomic_load(&qword_6E9558);
  result = pthread_self();
  if (v0 == result)
  {
    sub_27A4();
    return (*(qword_6E94F8 + 24))();
  }

  return result;
}

uint64_t sub_3A0418(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_3A044C(uint64_t a1)
{
  if (*(a1 + 896) == 1)
  {
    sub_4AE8C(a1 + 80);
  }

  if (*(a1 + 56) == 1)
  {
    sub_175F78((a1 + 24));
  }

  return a1;
}

_BYTE *sub_3A0498(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = sub_468EC(1, *v2, *(v2 + 8));
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_PlugIn.mm";
      v8 = 1024;
      v9 = 2295;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return sub_3A05D4(a1);
}

_BYTE *sub_3A05D4(uint64_t a1)
{
  sub_27A4();
  v20 = (*(qword_6E94F8 + 16))();
  v2 = *(a1 + 144);
  for (i = *(a1 + 152); v2 != i; ++v2)
  {
    v4 = *v2;
    v5 = *(*v2 + 312) - *(*v2 + 304);
    if ((v5 & 0x7FFFFFFF8) != 0)
    {
      v6 = 0;
      v7 = (v5 >> 3) - 1;
      do
      {
        v8 = *(v4 + 304);
        if (v6 >= (*(v4 + 312) - v8) >> 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v8 + 8 * v6);
        }

        if (!*(v9 + 120))
        {
          v13 = sub_5544(14);
          v14 = *v13;
          if (*v13)
          {
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v24 = "VirtualAudio_Stream.cpp";
              v25 = 1024;
              v26 = 444;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: underlying stream is NULL", buf, 0x12u);
            }
          }
        }

        v10 = sub_123DE4(*(v9 + 120));
        if (v7 == v6++)
        {
          v12 = 1;
        }

        else
        {
          v12 = v10;
        }
      }

      while (v12 != 1);
      if (v10 && (_os_feature_enabled_impl() & 1) != 0)
      {
        continue;
      }
    }

    v15 = *sub_5544(2);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v4 + 384);
        sub_68108(&__p, &v21);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        v24 = "VirtualAudio_PlugIn.mm";
        v25 = 1024;
        v26 = 2324;
        v27 = 2048;
        v28 = v4;
        v29 = 2080;
        v30 = p_p;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing stream format preference for VAD %p (%s)", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_221A90(v4);
  }

  return sub_210C50(&v20);
}

_BYTE *sub_3A08AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = sub_468EC(1, *v2, *(v2 + 8));
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_PlugIn.mm";
      v8 = 1024;
      v9 = 2287;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return sub_3A05D4(a1);
}

uint64_t **sub_3A09E8(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      operator delete();
    }

    operator delete();
  }

  return result;
}

_BYTE *sub_3A0A5C(uint64_t a1)
{
  sub_27A4();
  v10 = (*(qword_6E94F8 + 16))();
  v2 = sub_758D4(1987276900, 0, *(a1 + 144), *(a1 + 152));
  if (v2)
  {
    v3 = v2;
    v4 = sub_8703C();
    v5 = (*(*v4 + 280))(v4);
    if ((*(**(v3 + 872) + 368))(*(v3 + 872), 1685287015, 1752200291, 0))
    {
      v6 = sub_5544(2);
      v8 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "VirtualAudio_Utilities.cpp";
        v13 = 1024;
        v14 = 681;
        v15 = 1024;
        v16 = v5 == 1;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetHapticVibrationParameterOnDSP vibrating = %d", buf, 0x18u);
      }

      v7.n128_u64[0] = 0;
      if (v5 == 1)
      {
        v7.n128_f32[0] = 1.0;
      }

      (*(**(v3 + 872) + 384))(*(v3 + 872), 1685287015, 1752200291, 0, v7);
    }
  }

  return sub_210C50(&v10);
}

_BYTE *sub_3A0C70(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = sub_468EC(1, *v2, *(v2 + 8));
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_PlugIn.mm";
      v8 = 1024;
      v9 = 2430;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return sub_3A0A5C(a1);
}

void sub_3A0DAC(uint64_t a1)
{
  v2 = sub_8703C();
  v3 = (*(*v2 + 192))(v2);
  v4 = *sub_5544(2);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "active";
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    *buf = 136315650;
    if (v3 == 2)
    {
      v6 = "not active";
    }

    v21 = 1024;
    v22 = 2374;
    v23 = 2080;
    v24 = *&v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d External power adapter state is now: %s", buf, 0x1Cu);
  }

  sub_27A4();
  v17 = (*(qword_6E94F8 + 16))();
  v7 = 0.0;
  if (v3 == 1)
  {
    if (byte_6E84E0 == 1)
    {
      if (byte_6E84E1)
      {
        v7 = *&dword_6E4998;
LABEL_14:
        v9 = *sub_5544(2);
        v10 = v9;
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          v21 = 1024;
          v22 = 2397;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using defaults haptic override", buf, 0x12u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      byte_6E84E0 = 1;
      *buf = 0;
      v8 = sub_286A88(@"HapticsExternalPowerAttenuation", buf);
      if (v8)
      {
        v7 = *buf;
      }

      else
      {
        v7 = *&dword_6E4998;
      }

      dword_6E4998 = LODWORD(v7);
      byte_6E84E1 = v8;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    v7 = -7.96;
  }

LABEL_19:
  v11 = sub_758D4(1987738234, 0, *(a1 + 144), *(a1 + 152));
  if (v11)
  {
    v12 = v11;
    if (*(sub_9F278(v11, 1) + 16))
    {
      if ((*(**(v12 + 872) + 368))(*(v12 + 872), 1987013737, 1601402742, 0))
      {
        v13 = *sub_5544(2);
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(v12 + 384);
            sub_68108(&__p, &v18);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            v21 = 1024;
            v22 = 2413;
            v23 = 2048;
            v24 = v7;
            v25 = 2080;
            v26 = p_p;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying ExternalPowerAdapter HapticGain (%f) on VAD: '%s'.", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        *buf = v3 == 1;
        (*(**(v12 + 872) + 416))(*(v12 + 872), 1987013737, 64003, buf, 4, 1, 0);
        (*(**(v12 + 872) + 384))(*(v12 + 872), 1987013737, 1601402742, 0, v7);
      }
    }
  }

  sub_210C50(&v17);
  sub_34DC94();
}

void sub_3A1230(uint64_t a1)
{
  if (!a1)
  {
    v1 = sub_5544(14);
    v2 = sub_468EC(1, *v1, *(v1 + 8));
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "VirtualAudio_PlugIn.mm";
      v7 = 1024;
      v8 = 2303;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_3A0DAC(a1);
}

uint64_t sub_3A136C()
{
  if (off_6F5AB0 >= 2)
  {
    off_6F5AB0();
  }

  result = dword_6F5AB8;
  if (dword_6F5AB8)
  {
    inData = 1;
    *&inAddress.mSelector = 0x676C6F6273687570;
    inAddress.mElement = 0;
    result = AudioObjectSetPropertyData(dword_6F5AB8, &inAddress, 0, 0, 4u, &inData);
    v1 = result;
    if (result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v1;
    }
  }

  return result;
}

void sub_3A1464(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_3A1764(signed int a1)
{
  if (a1 <= 1919186543)
  {
    if (a1 > 1919050850)
    {
      if (a1 <= 1919181935)
      {
        if (a1 == 1919050851)
        {
          return 0;
        }

        v3 = 1919118966;
      }

      else
      {
        if (a1 == 1919181936 || a1 == 1919184754)
        {
          return 0;
        }

        v3 = 1919185776;
      }
    }

    else if (a1 <= 1667327074)
    {
      if (!a1)
      {
        return 0;
      }

      v3 = 1651799408;
    }

    else
    {
      if (a1 == 1667327075 || a1 == 1918989155)
      {
        return 0;
      }

      v3 = 1919050611;
    }
  }

  else
  {
    result = 1;
    if (a1 <= 1919971426)
    {
      if (a1 <= 1919904884)
      {
        if (a1 == 1919186544)
        {
          return result;
        }

        v3 = 1919842148;
      }

      else
      {
        if (a1 == 1919904885 || a1 == 1919907442)
        {
          return 0;
        }

        v3 = 1919970403;
      }
    }

    else
    {
      if (a1 <= 1920168052)
      {
        if (a1 != 1919971427 && a1 != 1919971701)
        {
          if (a1 == 1920099684)
          {
            return result;
          }

          goto LABEL_33;
        }

        return 0;
      }

      if (a1 == 1920429155)
      {
        return 0;
      }

      if (a1 == 1920360819)
      {
        return result;
      }

      v3 = 1920168053;
    }
  }

  if (a1 != v3)
  {
LABEL_33:
    v4 = *sub_5544(20);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a1);
        if (v9 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315650;
        v11 = "RoutingManager_Utilities.h";
        v12 = 1024;
        v13 = 131;
        v14 = 2080;
        v15 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported VirtualAudioPlugInRouteChangeReason %s", buf, 0x1Cu);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_3A1A44(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = sub_5544(14);
    v3 = sub_468EC(1, *v2, *(v2 + 8));
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "RoutingManager_Utilities.h";
      v8 = 1024;
      v9 = 231;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return a1 + 8;
}

uint64_t sub_3A1B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v9 = *(a1 + 8);
    if (*(v9 + 136) < 1)
    {
      sub_3A97BC((v9 + 16), (a2 + 16));
      sub_3A9A34((v9 + 160), (a2 + 160));
      sub_3A97BC((v6 + 16), (v9 + 16));
      sub_3A9A34((v6 + 160), (v9 + 160));
      return v9;
    }

    sub_3A97BC((a1 + 16), (v9 + 16));
    sub_3A9A34((v6 + 160), (v9 + 160));
    sub_3A97BC((v9 + 16), (a2 + 16));
    v8 = (v9 + 160);
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    sub_3A97BC((a1 + 16), (a2 + 16));
    v8 = (v6 + 160);
LABEL_6:
    sub_3A9A34(v8, (a2 + 160));
    return a2;
  }

  if (a5 >= a3)
  {
    sub_1762D0(a4, (a1 + 16));
    v15 = a4 + 168;
    v16 = *(v6 + 8);
    if (v16 == a2)
    {
      sub_17601C(v6 + 16, (v16 + 16));
      v9 = *(v6 + 8);
      v17 = 1;
    }

    else
    {
      v17 = 1;
      do
      {
        if (*(v16 + 136) < 1)
        {
          sub_1762D0(v15, (v16 + 16));
          ++v17;
          v15 += 168;
        }

        else
        {
          sub_17601C(v6 + 16, (v16 + 16));
          v6 = *(v6 + 8);
        }

        v16 = *(v16 + 8);
      }

      while (v16 != a2);
      sub_17601C(v6 + 16, (v16 + 16));
      v9 = *(v6 + 8);
      if (v15 <= a4)
      {
LABEL_39:
        if (a4 && v17)
        {
          v26 = (a4 + 144);
          do
          {
            sub_65310(v26);
            v27 = *(v26 - 1);
            if (v27)
            {
              std::__shared_weak_count::__release_weak(v27);
            }

            v28 = *(v26 - 6);
            if (v28)
            {
              *(v26 - 5) = v28;
              operator delete(v28);
            }

            sub_477A0(*(v26 - 8));
            v29 = *(v26 - 14);
            if (v29)
            {
              std::__shared_weak_count::__release_weak(v29);
            }

            v26 += 21;
            --v17;
          }

          while (v17);
        }

        return v9;
      }
    }

    v24 = v9;
    v25 = a4;
    do
    {
      sub_17601C(v24 + 16, v25);
      v25 = (v25 + 168);
      v24 = *(v24 + 8);
    }

    while (v25 < v15);
    goto LABEL_39;
  }

  v12 = a3 / 2;
  if (a3 <= -2)
  {
    v18 = a3 / 2;
    v13 = a1;
    do
    {
      v13 = *v13;
    }

    while (!__CFADD__(v18++, 1));
  }

  else
  {
    v13 = a1;
    if ((a3 + 1) >= 3)
    {
      v14 = v12 + 1;
      v13 = a1;
      do
      {
        v13 = *(v13 + 8);
        --v14;
      }

      while (v14 > 1);
    }
  }

  v20 = *v13;
  v21 = a3 / 2;
  if (*(*v13 + 136) <= 0)
  {
    while (v20 != a1)
    {
      --v21;
      v20 = *v20;
      if (v20[34] >= 1)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v6 = sub_3A1B78(a1);
  }

  v22 = a3 - v12;
  if (*(v13 + 136) < 1)
  {
    v23 = v13;
LABEL_51:
    v9 = sub_3A1B78(v23);
  }

  else
  {
    v9 = *(a2 + 8);
    v23 = v13;
    while (1)
    {
      v23 = *(v23 + 8);
      if (v23 == a2)
      {
        break;
      }

      --v22;
      if (*(v23 + 136) <= 0)
      {
        goto LABEL_51;
      }
    }
  }

  if (v6 != v13)
  {
    if (v13 != v9)
    {
      v30 = v13;
      while (1)
      {
        sub_3A97BC((v6 + 16), (v30 + 16));
        sub_3A9A34((v6 + 160), (v30 + 160));
        v6 = *(v6 + 8);
        v30 = *(v30 + 8);
        if (v30 == v9)
        {
          break;
        }

        if (v6 == v13)
        {
          v13 = v30;
        }
      }

      if (v6 != v13)
      {
        v31 = v6;
        v32 = v13;
        do
        {
          while (1)
          {
            sub_3A97BC((v31 + 16), (v32 + 16));
            sub_3A9A34((v31 + 160), (v32 + 160));
            v31 = *(v31 + 8);
            v32 = *(v32 + 8);
            if (v32 == v9)
            {
              break;
            }

            if (v31 == v13)
            {
              v13 = v32;
            }
          }

          v32 = v13;
        }

        while (v31 != v13);
      }
    }

    return v6;
  }

  return v9;
}

void sub_3A1EFC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_27A4();
  (*(qword_6E94F8 + 16))();
  if (*a3)
  {
    v4 = AudioObjectCreate();
    if (!v4)
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = sub_468EC(1, *v5, *(v5 + 8));
    v7 = v6;
    if (v6)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2096;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: AudioObjectCreate failed to create a device ID for a new virtual audio device.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  v9 = sub_5544(14);
  v10 = sub_468EC(1, *v9, *(v9 + 8));
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2091;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v12, "Precondition failure.");
}

void sub_3A3BA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 + 39) < 0)
  {
    operator delete(*(v48 + 16));
  }

  if (v49 < 0)
  {
    operator delete(v50);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  operator delete();
}

uint64_t sub_3A40D8(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "voice processing configuration");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_3A4124(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_22170(v83, *(a2 + 4));
  v5 = *(a2 + 64);
  if ((*(a2 + 72) & 1) == 0)
  {
    v5 = 0.0;
  }

  std::to_string(&v82, v5);
  if (v4)
  {
    v6 = "Failed";
  }

  else
  {
    v6 = "Succeeded";
  }

  if (v4)
  {
    v7 = 6;
  }

  else
  {
    v7 = 9;
  }

  cf = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_53E8(v77, "Result");
  CFRetain(cf);
  *valuePtr = *v77;
  v8 = v78;
  v77[0] = 0;
  v77[1] = 0;
  v78 = 0;
  v79 = 0;
  *&valuePtr[16] = v8;
  *&valuePtr[24] = cf;
  if ((v84 & 0x80u) == 0)
  {
    v9 = v83;
  }

  else
  {
    v9 = v83[0];
  }

  if (v9)
  {
    if ((v84 & 0x80u) == 0)
    {
      v10 = v84;
    }

    else
    {
      v10 = v83[1];
    }

    v72 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    if (!v72)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }
  }

  else
  {
    v72 = 0;
  }

  sub_53E8(v73, "route change reason");
  if (v72)
  {
    CFRetain(v72);
  }

  *&valuePtr[32] = *v73;
  *&valuePtr[48] = v74;
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  v75 = 0;
  *&valuePtr[56] = v72;
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v82;
  }

  else
  {
    v12 = v82.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    v69 = CFStringCreateWithBytes(0, v12, size, 0x8000100u, 0);
    if (!v69)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
    }
  }

  else
  {
    v69 = 0;
  }

  v15 = a1;
  sub_347A20(&__p, "route_change_time_ms", &v69);
  v16 = 0;
  v17 = 0;
  *&valuePtr[64] = __p;
  v18 = v71;
  memset(&__p, 0, sizeof(__p));
  v71 = 0;
  v87 = v18;
  v81[0] = 0;
  v81[1] = 0;
  v80 = v81;
  while (1)
  {
    v19 = v81;
    if (v80 == v81)
    {
      goto LABEL_40;
    }

    v20 = v16;
    v21 = v81;
    if (v16)
    {
      do
      {
        v19 = v20;
        v20 = *(v20 + 1);
      }

      while (v20);
    }

    else
    {
      do
      {
        v19 = v21[2];
        v22 = *v19 == v21;
        v21 = v19;
      }

      while (v22);
    }

    if ((sub_6F834(v19 + 4, &valuePtr[v17]) & 0x80) != 0)
    {
LABEL_40:
      if (!v16)
      {
        v85 = v81;
LABEL_45:
        operator new();
      }

      v85 = v19;
      v23 = v19 + 1;
    }

    else
    {
      v23 = sub_6F86C(&v80, &v85, &valuePtr[v17]);
    }

    if (!*v23)
    {
      goto LABEL_45;
    }

    v17 += 32;
    if (v17 == 96)
    {
      break;
    }

    v16 = v81[0];
  }

  for (i = 0; i != -96; i -= 32)
  {
    v25 = &valuePtr[i];
    v26 = *(&v87 + i);
    if (v26)
    {
      CFRelease(v26);
    }

    if (*(v25 + 87) < 0)
    {
      operator delete(v25[8]);
    }
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v4 && *(a2 + 56) == 1)
  {
    v27 = *sub_3A1A44(a2);
    v28 = _os_feature_enabled_impl();
    if (v27 == 1668509810)
    {
      v29 = 1668309362;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 == 1668114797;
    v31 = v27 & 0xFFFFFFFF00000000 | v29;
    if ((v28 & v30) != 0)
    {
      v32 = 0x64706C62636D756CLL;
    }

    else
    {
      v32 = v31;
    }

    sub_22170(valuePtr, v32);
    if (valuePtr[23] >= 0)
    {
      v33 = valuePtr;
    }

    else
    {
      v33 = *valuePtr;
    }

    if (v33)
    {
      if (valuePtr[23] >= 0)
      {
        v34 = valuePtr[23];
      }

      else
      {
        v34 = *&valuePtr[8];
      }

      v85 = CFStringCreateWithBytes(0, v33, v34, 0x8000100u, 0);
      if (!v85)
      {
        v60 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v60, "Could not construct");
      }

      if ((valuePtr[23] & 0x80) != 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v85 = 0;
      if ((valuePtr[23] & 0x80) != 0)
      {
LABEL_89:
        operator delete(*valuePtr);
      }
    }

    sub_53E8(valuePtr, "category");
    v35 = v85;
    if (v85)
    {
      CFRetain(v85);
    }

    *&valuePtr[24] = v35;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    v36 = HIDWORD(v32);
    sub_22170(valuePtr, v36);
    if (valuePtr[23] >= 0)
    {
      v37 = valuePtr;
    }

    else
    {
      v37 = *valuePtr;
    }

    if (v37)
    {
      if (valuePtr[23] >= 0)
      {
        v38 = valuePtr[23];
      }

      else
      {
        v38 = *&valuePtr[8];
      }

      cf = CFStringCreateWithBytes(0, v37, v38, 0x8000100u, 0);
      if (!cf)
      {
        v61 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v61, "Could not construct");
      }

      if ((valuePtr[23] & 0x80) != 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      cf = 0;
      if ((valuePtr[23] & 0x80) != 0)
      {
LABEL_105:
        operator delete(*valuePtr);
      }
    }

    sub_53E8(valuePtr, "mode");
    v39 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *&valuePtr[24] = v39;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    sub_A7E20(valuePtr, (v15 + 448), v36);
    if (valuePtr[23] >= 0)
    {
      v40 = valuePtr;
    }

    else
    {
      v40 = *valuePtr;
    }

    if (v40)
    {
      if (valuePtr[23] >= 0)
      {
        v41 = valuePtr[23];
      }

      else
      {
        v41 = *&valuePtr[8];
      }

      v72 = CFStringCreateWithBytes(0, v40, v41, 0x8000100u, 0);
      if (!v72)
      {
        v62 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v62, "Could not construct");
      }

      if ((valuePtr[23] & 0x80) != 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v72 = 0;
      if ((valuePtr[23] & 0x80) != 0)
      {
LABEL_121:
        operator delete(*valuePtr);
      }
    }

    sub_53E8(valuePtr, "active devices");
    v42 = v72;
    if (v72)
    {
      CFRetain(v72);
    }

    *&valuePtr[24] = v42;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    sub_AEEB4(v73, *(v15 + 120));
    sub_88BA4(v77, v73);
    sub_A84F4(valuePtr, (v15 + 448), v77);
    if (valuePtr[23] >= 0)
    {
      v43 = valuePtr;
    }

    else
    {
      v43 = *valuePtr;
    }

    if (v43)
    {
      if (valuePtr[23] >= 0)
      {
        v44 = valuePtr[23];
      }

      else
      {
        v44 = *&valuePtr[8];
      }

      v69 = CFStringCreateWithBytes(0, v43, v44, 0x8000100u, 0);
      if (!v69)
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v63, "Could not construct");
      }

      if ((valuePtr[23] & 0x80) == 0)
      {
        goto LABEL_138;
      }
    }

    else
    {
      v69 = 0;
      if ((valuePtr[23] & 0x80) == 0)
      {
        goto LABEL_138;
      }
    }

    operator delete(*valuePtr);
LABEL_138:
    sub_7624C(v77[1]);
    sub_76304(v73);
    sub_53E8(valuePtr, "active on demand devices");
    v45 = v69;
    if (v69)
    {
      CFRetain(v69);
    }

    *&valuePtr[24] = v45;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    *valuePtr = *(sub_3A1A44(a2) + 40);
    v68 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    if (!v68)
    {
      v58 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v58, "Could not construct");
    }

    sub_53E8(valuePtr, "expanse session");
    CFRetain(v68);
    *&valuePtr[24] = v68;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    *valuePtr = *(sub_3A1A44(a2) + 41);
    v67 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    if (!v67)
    {
      v59 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v59, "Could not construct");
    }

    sub_53E8(valuePtr, "studio mic input");
    CFRetain(v67);
    *&valuePtr[24] = v67;
    sub_1871CC(&v80, valuePtr);
    if (*&valuePtr[24])
    {
      CFRelease(*&valuePtr[24]);
    }

    if ((valuePtr[23] & 0x80000000) != 0)
    {
      operator delete(*valuePtr);
    }

    v46 = sub_3A1A44(a2);
    sub_175EEC(v73, v46 + 16);
    v47 = v73[1];
    if (v73[1] == v73)
    {
      goto LABEL_158;
    }

    while (*(v47 + 5) || *(v47 + 4) != 1986291046)
    {
      v47 = v47[1];
      if (v47 == v73)
      {
        goto LABEL_158;
      }
    }

    if (v47 == v73)
    {
LABEL_158:
      *valuePtr = 0;
      v90 = 0u;
      *&valuePtr[8] = 1;
      memset(&valuePtr[12], 0, 60);
      *&valuePtr[72] = &valuePtr[80];
      *&valuePtr[80] = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      *&v90 = 0;
      DWORD2(v90) = 1;
      v91 = 0;
      v92 = 0;
    }

    else
    {
      *valuePtr = *(v47 + 1);
      v52 = v47[5];
      *&valuePtr[16] = v47[4];
      *&valuePtr[24] = v52;
      v53 = v47[6];
      *&valuePtr[32] = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53 + 2, 1uLL, memory_order_relaxed);
      }

      *&valuePtr[40] = *(v47 + 7);
      *&valuePtr[56] = *(v47 + 9);
      sub_141858(&valuePtr[72], v47 + 11);
      v89 = 0;
      *&v90 = 0;
      v88 = 0;
      sub_1417D4(&v88, v47[14], v47[15], (v47[15] - v47[14]) >> 4);
      DWORD2(v90) = *(v47 + 34);
      BYTE12(v90) = *(v47 + 140);
      v54 = v47[19];
      v91 = v47[18];
      v92 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }
    }

    if (!*&valuePtr[32] || *(*&valuePtr[32] + 8) == -1)
    {
      goto LABEL_206;
    }

    if (v92)
    {
      v48 = std::__shared_weak_count::lock(v92);
      if (v48 && v91)
      {
        sub_3FED44(&__p, v91, v36);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (p_p)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = __p.__r_.__value_.__l.__size_;
          }

          v66 = CFStringCreateWithBytes(0, p_p, v50, 0x8000100u, 0);
          if (!v66)
          {
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "Could not construct");
          }
        }

        else
        {
          v66 = 0;
        }

        sub_347A20(v77, "user preferred input", &v66);
        sub_1871CC(&v80, v77);
        if (v79)
        {
          CFRelease(v79);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }

        if (v66)
        {
          CFRelease(v66);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_205:
        sub_1A8C0(v48);
LABEL_206:
        if (v92)
        {
          std::__shared_weak_count::__release_weak(v92);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        sub_477A0(*&valuePtr[80]);
        if (*&valuePtr[32])
        {
          std::__shared_weak_count::__release_weak(*&valuePtr[32]);
        }

        sub_175F78(v73);
        if (v67)
        {
          CFRelease(v67);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        if (v69)
        {
          CFRelease(v69);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v85)
        {
          CFRelease(v85);
        }

        goto LABEL_224;
      }
    }

    else
    {
      v48 = 0;
    }

    __p.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v64 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v64, "Could not construct");
    }

    sub_347A20(v77, "user preferred input", &__p.__r_.__value_.__l.__data_);
    sub_1871CC(&v80, v77);
    if (v79)
    {
      CFRelease(v79);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77[0]);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      CFRelease(__p.__r_.__value_.__l.__data_);
    }

    if (!v48)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

LABEL_224:
  std::mutex::lock((v15 + 296));
  memset(valuePtr, 0, 24);
  sub_1215C(valuePtr, *(v15 + 360), *(v15 + 368), (*(v15 + 368) - *(v15 + 360)) >> 3);
  std::mutex::unlock((v15 + 296));
  v55 = sub_184010(&v80);
  v65 = v55;
  v56 = *valuePtr;
  sub_A9D34(&v65, *valuePtr, *&valuePtr[8], 10, 0);
  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    operator delete(v56);
  }

  sub_187354(v81[0]);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }
}

void sub_3A5030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, const void *a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, const void *a47, void *a48)
{
  sub_1DB0E0(&a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1A8C0(v48);
  sub_20323C(&a48);
  sub_175F78(&a23);
  sub_21794C(&a12);
  sub_21794C(&a13);
  sub_452F0(&a14);
  sub_452F0(&a22);
  sub_452F0(&a27);
  sub_452F0(&a47);
  sub_187354(a33);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3A557C(unsigned int a1)
{
  if (a1 >= 3)
  {
    v3 = sub_5544(14);
    v4 = sub_468EC(1, *v3, *(v3 + 8));
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_3A571C(__p, a1);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315650;
        v12 = "VirtualAudio_PlugIn.mm";
        v13 = 1024;
        v14 = 517;
        v15 = 2080;
        v16 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Unsupported result returned from RoutingManager: %s", buf, 0x1Cu);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  return dword_5A3F18[a1];
}

_BYTE *sub_3A571C(_BYTE *a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = "kCategoryNotSupported";
      goto LABEL_14;
    }

    if (a2 == 3)
    {
      v3 = "kRouteProcessed";
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      v3 = "kOk";
      goto LABEL_14;
    }

    if (a2 == 1)
    {
      v3 = "kRoutingNotSupported";
LABEL_14:

      return sub_53E8(a1, v3);
    }
  }

  v4 = *sub_5544(20);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "RoutingManager_Utilities.h";
    v9 = 1024;
    v10 = 93;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported RoutingUtilities::Result", &v7, 0x12u);
  }

  return sub_53E8(a1, "unknown");
}

void sub_3A58CC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  snprintf(__str, 0x13uLL, "%p", *(a1 + 16));
  sub_53E8(&v6, __str);
  v3 = std::string::insert(&v6, 0, "Destroying objects for VirtualAudio_DestroyedObjectTracker ", 0x3BuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ".", 1uLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_3A59C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3A5A04(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 != v3)
  {
    do
    {
      v4 = (*(**v2 + 544))(*v2);
      sub_9650C(v4);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_3A5DB4(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(v2);
}

uint64_t sub_3A5DD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CDFA8;
  a2[1] = v2;
  return result;
}

const void **sub_3A5F44(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_3A5F78(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *sub_3A5FBC(std::string **a1, uint64_t a2)
{
  std::string::append(*a1, "[ ", 2uLL);
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::string::append(*a1, ", ", 2uLL);
      }

      sub_22170(&__p, *(*(v4 + 16) + 144));
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

      std::string::append(*a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(*a1, "(", 3uLL);
      sub_22170(&__p, *(*(v4 + 16) + 304));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(*a1, v8, v9);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (sub_34D11C(*(v4 + 16)))
      {
        std::string::append(*a1, "_b204", 5uLL);
      }

      std::string::append(*a1, ")", 2uLL);
      if (sub_A83F4(*(v4 + 16)))
      {
        std::string::append(*a1, "(", 3uLL);
        v10 = sub_A83F4(*(v4 + 16));
        std::to_string(&__p, v10);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(*a1, v11, v12);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::string::append(*a1, ")", 2uLL);
      }

      v13 = *(*(v4 + 16) + 136);
      if ((v13 & 0x100000000) != 0 && v13)
      {
        std::string::append(*a1, "(", 3uLL);
        sub_22170(&__p, v13);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &__p;
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(*a1, v14, v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::string::append(*a1, ")", 2uLL);
        if (sub_A0D78(*(v4 + 16), v13))
        {
          v16 = *(v4 + 16);
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__s.__data_[4] = 0;
          v17 = (*(*v16 + 248))(v16, v13, &__p);
          std::string::append(*a1, "(", 3uLL);
          sub_22170(&__p, v17);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &__p;
          }

          else
          {
            v18 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v19 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(*a1, v18, v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::string::append(*a1, ")", 2uLL);
        }
      }

      v4 = *(v4 + 8);
      v5 = 1;
    }

    while (v4 != a2);
  }

  return std::string::append(*a1, " ]", 2uLL);
}

void sub_3A62C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3A62F0(char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

CFArrayRef sub_3A635C(int *a1, int *a2)
{
  v3 = a1;
  memset(v6, 0, sizeof(v6));
  sub_47A08(v6, a2 - a1);
  for (; v3 != a2; ++v3)
  {
    sub_EAD30(v6, v3);
  }

  v4 = sub_477F0(v6);
  v7 = v6;
  sub_47988(&v7);
  return v4;
}

void sub_3A63E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_47988(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_3A6400(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "audio session ids");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_3A644C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_189A00();
}

BOOL sub_3A64A0(const __CFDictionary **a1)
{
  v2 = *a1;
  if (!v2)
  {
    v5 = sub_5544(14);
    v6 = sub_468EC(1, *v5, *(v5 + 8));
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VirtualAudio_PlugIn.mm";
      v12 = 1024;
      v13 = 862;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (CFDictionaryGetCount(v2) != 1)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v9);
  }

  return sub_3A7260(v3);
}

uint64_t sub_3A6658(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *sub_3A6698(void *result, void *a2)
{
  *result = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return result;
}

const void *sub_3A6704(const void *result)
{
  if (result)
  {
    return CFGetTypeID(result);
  }

  return result;
}

void *sub_3A6724(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_3A67EC(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_189A00();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      sub_1D7C28(v14);
    }

    v32 = 4 * v15;
    v33 = 4 * a5;
    v34 = (4 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 4;
    }

    while (v33);
    memcpy((v32 + 4 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 4 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v28 = &__dst[4 * a5];
    v29 = &v10[-4 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v28);
    }

    v27 = 4 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[4 * a5];
    v22 = &v10[v19];
    if (&v20[-4 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -4 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 4;
        v23 += 4;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

void sub_3A6A58(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    return;
  }

  do
  {
    v7 = v4[4];
    if ((sub_E1688(v7) & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_7;
    }

    *buf = 2003329396;
    buf[8] = 0;
    buf[32] = 0;
    v8 = sub_E16FC(v7);
    v37 = v8;
    if (!v8)
    {
      v2 = 0;
      v33 = 0uLL;
LABEL_10:
      buf[0] = 0;
      v9 = 1;
      goto LABEL_21;
    }

    sub_128080(&__p, v8 >> 2);
    *buf = sub_E1770(v7);
    if (*buf)
    {
      LOBYTE(v33) = 0;
LABEL_14:
      v12 = __p;
      if (__p)
      {
        v9 = 0;
        goto LABEL_16;
      }

      v9 = 0;
      v10 = 0;
LABEL_7:
      buf[0] = 0;
      goto LABEL_8;
    }

    sub_1280F8(&buf[8], &__p);
    LOBYTE(v33) = 0;
    if ((buf[32] & 1) == 0)
    {
      goto LABEL_14;
    }

    v33 = *&buf[8];
    v2 = *&buf[24];
    memset(&buf[8], 0, 24);
    v12 = __p;
    if (!__p)
    {
      goto LABEL_10;
    }

    v9 = 1;
LABEL_16:
    v35 = v12;
    operator delete(v12);
    if ((buf[32] & 1) == 0 || !*&buf[8])
    {
      buf[0] = 0;
      if (v9)
      {
        goto LABEL_21;
      }

LABEL_19:
      v10 = 0;
LABEL_8:
      p_p = &__p;
      goto LABEL_22;
    }

    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
    buf[0] = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    *buf = v33;
    *&buf[16] = v2;
    buf[24] = 1;
    v10 = *(&v33 + 1);
    p_p = buf;
    v2 = 0;
LABEL_22:
    __p = 0;
    v35 = 0;
    v36 = 0;
    v13 = *p_p;
    p_p[1] = 0;
    p_p[2] = 0;
    *p_p = 0;
    if (__p)
    {
      operator delete(__p);
      if ((v9 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (!v9)
    {
      goto LABEL_28;
    }

    if (*buf)
    {
      operator delete(*buf);
    }

LABEL_28:
    v14 = *sub_5544(2);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v7 + 112))(&__p, v7);
        v17 = &__p;
        if (v36 < 0)
        {
          v17 = __p;
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 880;
        *&buf[18] = 2080;
        *&buf[20] = v17;
        *&buf[28] = 2048;
        *&buf[30] = (v10 - v13) >> 2;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Partners for port %s : %zd", buf, 0x26u);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
        }
      }
    }

    sub_3A67EC(a1, *(a1 + 8), v13, v10, (v10 - v13) >> 2);
    if (v13)
    {
      operator delete(v13);
    }

    v18 = v4[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v4[2];
        v20 = *v19 == v4;
        v4 = v19;
      }

      while (!v20);
    }

    v4 = v19;
  }

  while (v19 != v3);
  v21 = *a1;
  v22 = *(a1 + 8);
  if (*a1 != v22)
  {
    do
    {
      v23 = *v21;
      sub_2820();
      v24 = sub_3D90(v23);
      if (!v24)
      {
        v29 = sub_5544(14);
        v30 = sub_468EC(1, *v29, *(v29 + 8));
        v31 = v30;
        if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 888;
          *&buf[18] = 1024;
          *&buf[20] = v23;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID (%u)", buf, 0x18u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 560947818;
      }

      v25 = *sub_5544(2);
      v26 = v25;
      if (v25)
      {
        v27 = v25;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v24 + 112))(&__p, v24);
          v28 = &__p;
          if (v36 < 0)
          {
            v28 = __p;
          }

          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 889;
          *&buf[18] = 2080;
          *&buf[20] = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added %s to port list", buf, 0x1Cu);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p);
          }
        }
      }

      sub_114B44(a2, v24);
      ++v21;
    }

    while (v21 != v22);
  }
}

void sub_3A6FFC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3A7074(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

BOOL sub_3A70B4(int *a1)
{
  LODWORD(v9[0]) = 1885565807;
  v21 = 0;
  v20 = 0uLL;
  sub_4625C(&v20, v9, v9 + 4, 1uLL);
  *v10 = v20;
  v11 = v21;
  strcpy(v12, "cwdv");
  v12[8] = 0;
  v13 = 3;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v16 = 44739242;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v2 = sub_809C0();
  *&v20 = off_6CDD68;
  v22 = &v20;
  sub_256FB0(v9, v2, v10, &v20);
  sub_85148(&v20);
  if (v9[2])
  {
    v3 = 0;
    v4 = *a1;
    do
    {
      v5 = *&aBphpbphpoelpMv[v3 + 12];
      v6 = v5 == v4;
      v7 = v5 == v4 || v3 == 4;
      v3 += 4;
    }

    while (!v7);
  }

  else
  {
    v6 = 0;
  }

  sub_65310(v9);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v15[0]);
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v6;
}

void sub_3A7234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_85148(v5 - 64);
  sub_46934(va);
  _Unwind_Resume(a1);
}

BOOL sub_3A7260(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "user preferred input", 20, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_3A7310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3A7348(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void sub_3A7418(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 168);
  if ((sub_10A958(v4) & 1) == 0)
  {
    v117 = sub_5544(14);
    v118 = sub_468EC(1, *v117, *(v117 + 8));
    v119 = v118;
    if (v118 && os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      *v162 = 136315394;
      *&v162[4] = "VirtualAudio_PlugIn.mm";
      *&v162[12] = 1024;
      *&v162[14] = 3995;
      _os_log_impl(&dword_0, v119, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v162, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = *(a2 + 200);
  if (v5 == 1936747378)
  {
LABEL_8:
    memset(v162, 0, sizeof(v162));
    strcpy(v163, "cwdv");
    v164 = 0;
    v165 = 3;
    v167 = 0;
    v168 = 0;
    v166 = &v167;
    v169 = 44739242;
    memset(&v170, 0, sizeof(v170));
    *buf = 0x7073706B706D6269;
    sub_1F8148(v162, buf, &buf[8], 2uLL);
    v6 = sub_809C0();
    *buf = off_6CDD68;
    *&buf[24] = buf;
    sub_256FB0(__src, v6, v162, buf);
    sub_85148(buf);
    v7 = sub_5544(2);
    v8 = sub_5544(14);
    v9 = 0;
    *buf = 0x100000002;
    v10 = *(v7 + 8);
    while (1)
    {
      v11 = *&buf[v9];
      if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
      {
        break;
      }

      v9 += 4;
      if (v9 == 8)
      {
        goto LABEL_14;
      }
    }

    if ((v10 & v11) == 0)
    {
      v7 = v8;
    }

LABEL_14:
    v12 = *v7;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_3FE7D0(&__p, __src);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3706;
        *&buf[18] = 2080;
        *&buf[20] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VirtualAudio_Port: built-in mic and speaker are added to the override list: %s.", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    for (i = __src[1]; i != __src; i = i->__shared_owners_)
    {
      sub_2585A8((a2 + 16), (a2 + 24), &i->__shared_weak_owners_);
    }

    sub_65310(__src);
LABEL_60:
    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    sub_477A0(v167);
    v33 = *v162;
    if (*v162)
    {
      *&v162[8] = *v162;
LABEL_157:
      operator delete(v33);
      return;
    }

    return;
  }

  if (v5 != 1651275109)
  {
    if (v5 != 1635087471)
    {
      return;
    }

    if (v4 != 1668047476)
    {
      if (v4 == 1668047728)
      {
        memset(v162, 0, sizeof(v162));
        strcpy(v163, "cwdv");
        v164 = 0;
        v165 = 3;
        v167 = 0;
        v168 = 0;
        v166 = &v167;
        v169 = 44739242;
        memset(&v170, 0, sizeof(v170));
        *buf = 0x7073746F70737469;
        sub_1F8148(v162, buf, &buf[8], 2uLL);
        v17 = sub_809C0();
        *buf = off_6CDD68;
        *&buf[24] = buf;
        sub_2574C4(&__p, v17, v162, buf);
        sub_85148(buf);
        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        LOBYTE(v152) = 0;
        *&v154[2] = 3;
        v156 = 0;
        v157 = 0;
        v155 = &v156;
        v158 = 44739242;
        v160 = 0;
        v161 = 0;
        v159 = 0;
        __src[0] = 0x70687062706D6274;
        sub_1F8148(buf, __src, &__src[1], 2uLL);
        if (sub_28A198())
        {
          sub_34AAA8(v134, buf);
          if (v135)
          {
            p_p = v134;
          }

          else
          {
            p_p = &__p;
          }
        }

        else
        {
          v134[0] = v134;
          v134[1] = v134;
          v135 = 0;
          p_p = &__p;
        }

        sub_87840(&v149, p_p, "", 3897);
        v30 = v150;
        if (v150 != &v149)
        {
          do
          {
            v31 = v30[2];
            __src[0] = 0;
            __src[1] = 0;
            v139 = 0;
            strcpy(&v140, "cwdv");
            v141 = 0;
            v142 = 3;
            v144[0] = 0;
            v144[1] = 0;
            v143 = v144;
            v147 = 0;
            v148 = 0;
            v146 = 0;
            v145 = 44731050;
            v32 = sub_9DE4C(*(a1 + 128), v31, __src);
            sub_3A93A8(*(a1 + 128), v32, a2);
            if (SHIBYTE(v148) < 0)
            {
              operator delete(v146);
            }

            sub_477A0(v144[0]);
            if (__src[0])
            {
              __src[1] = __src[0];
              operator delete(__src[0]);
            }

            v30 = v30[1];
          }

          while (v30 != &v149);
        }

        sub_87980(&v149);
        sub_65310(v134);
        if (SHIBYTE(v161) < 0)
        {
          operator delete(v159);
        }

        sub_477A0(v156);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v29 = &__p;
        goto LABEL_59;
      }

      if (v4 == 1668051824)
      {
        goto LABEL_8;
      }

      LODWORD(__src[0]) = 1885892674;
      memset(buf, 0, 24);
      sub_4625C(buf, __src, __src + 4, 1uLL);
      *v162 = *buf;
      *&v162[16] = *&buf[16];
      strcpy(v163, "cwdv");
      v164 = 0;
      v165 = 3;
      v167 = 0;
      v168 = 0;
      v166 = &v167;
      v169 = 44739242;
      memset(&v170, 0, sizeof(v170));
      v19 = sub_809C0();
      *buf = off_6C2960;
      *&buf[24] = buf;
      sub_2574C4(__src, v19, v162, buf);
      sub_85148(buf);
      for (j = __src[1]; j != __src; j = j->__shared_owners_)
      {
        v21 = j[1].__vftable;
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = v22;
            shared_weak_owners = j->__shared_weak_owners_;
            if (shared_weak_owners)
            {
              v25 = sub_34A918(shared_weak_owners);
              sub_1A8C0(v23);
              if (v25)
              {
                v114 = 1;
                goto LABEL_39;
              }
            }

            else
            {
              sub_1A8C0(v23);
            }
          }
        }
      }

      v114 = 0;
LABEL_39:
      sub_65310(__src);
      if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }

      sub_477A0(v167);
      if (*v162)
      {
        *&v162[8] = *v162;
        operator delete(*v162);
      }

      if (v114)
      {
        __src[0] = 0x706D627470687062;
        memset(buf, 0, 24);
        sub_4625C(buf, __src, &__src[1], 2uLL);
        *v162 = *buf;
        *&v162[16] = *&buf[16];
        strcpy(v163, "cwdv");
        v164 = 0;
        v165 = 3;
        v167 = 0;
        v168 = 0;
        v166 = &v167;
        v169 = 44739242;
        memset(&v170, 0, sizeof(v170));
        v26 = sub_809C0();
        *buf = off_6CDD68;
        *&buf[24] = buf;
        sub_2574C4(__src, v26, v162, buf);
        sub_85148(buf);
        sub_87840(buf, __src, "", 3682);
        for (k = *&buf[8]; k != buf; k = *(k + 8))
        {
          v28 = sub_9DE4C(*(a1 + 128), *(k + 16), v162);
          sub_3A9018(*(a1 + 128), v28, a2);
        }

        sub_87980(buf);
        v29 = __src;
LABEL_59:
        sub_65310(v29);
        goto LABEL_60;
      }

      v34 = *(a2 + 168);
      if (v34 != 1668049007)
      {
        if (v34 == 1668051817)
        {
          v35 = sub_5544(2);
          v36 = sub_5544(14);
          v37 = 0;
          *v162 = 0x100000002;
          v38 = *(v35 + 8);
          while (1)
          {
            v39 = *&v162[v37];
            if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
            {
              break;
            }

            v37 += 4;
            if (v37 == 8)
            {
              goto LABEL_220;
            }
          }

          if ((v38 & v39) == 0)
          {
            v35 = v36;
          }

LABEL_220:
          v115 = *v35;
          v116 = v115;
          if (v115 && os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            *v162 = 136315394;
            *&v162[4] = "VirtualAudio_PlugIn.mm";
            *&v162[12] = 1024;
            *&v162[14] = 3929;
            _os_log_impl(&dword_0, v116, OS_LOG_TYPE_DEBUG, "%25s:%-5d - kVirtualAudioPortTypeReceiverBuiltIn is added to disallowed port types.", v162, 0x12u);
          }

          *v162 = 1886545251;
          sub_49DA0((a2 + 88), (a2 + 96), 0x70726563u);
          sub_1C4454((a2 + 112), 0x70726563u);
          return;
        }

        if (*(a2 + 512) || *(a2 + 204) != 1768842095)
        {
          return;
        }

        *v162 = 0x706D627470687062;
        __src[1] = 0;
        v139 = 0;
        __src[0] = 0;
        sub_4625C(__src, v162, &v162[8], 2uLL);
        if (*(a2 + 696))
        {
          *v162 = 1885892674;
          sub_AFD28(__src, v162);
        }

        memset(v162, 0, sizeof(v162));
        v121 = __src[0];
        sub_46980(v162, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
        strcpy(v163, "cwdv");
        v164 = 0;
        v165 = 3;
        v167 = 0;
        v168 = 0;
        v166 = &v167;
        v169 = 44739242;
        memset(&v170, 0, sizeof(v170));
        v75 = sub_809C0();
        *buf = off_6CDD68;
        *&buf[24] = buf;
        sub_2574C4(v134, v75, v162, buf);
        sub_87840(&__p, v134, "", 3727);
        sub_65310(v134);
        sub_85148(buf);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ == &__p)
        {
LABEL_166:
          v78 = 0;
        }

        else
        {
          while (1)
          {
            v77 = (*(**(size + 16) + 368))(*(size + 16));
            v78 = v77 == 1;
            if (v77 == 1)
            {
              break;
            }

            size = *(size + 8);
            if (size == &__p)
            {
              goto LABEL_166;
            }
          }
        }

        v79 = sub_8703C();
        v80 = (*(*v79 + 184))(v79);
        v81 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ == &__p)
        {
LABEL_224:
          sub_87980(&__p);
          if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v170.__r_.__value_.__l.__data_);
          }

          sub_477A0(v167);
          if (*v162)
          {
            *&v162[8] = *v162;
            operator delete(*v162);
          }

          if (v121)
          {
            v33 = v121;
            goto LABEL_157;
          }

          return;
        }

        v122 = v80 == 0;
        if (v80)
        {
          v82 = 1;
        }

        else
        {
          v82 = v78;
        }

        v123 = v82;
        while (1)
        {
          v83 = sub_9DE4C(*(a1 + 128), *(v81 + 16), v162);
          v84 = (*(**(v81 + 16) + 112))(*(v81 + 16));
          v85 = (v84 & 0x100000000) != 0 ? v84 : 1701868910;
          if ((*(**(v81 + 16) + 368))(*(v81 + 16)) == 1)
          {
            break;
          }

          v91 = _os_feature_enabled_impl();
          if (v85 == 1701865584)
          {
            v92 = v91;
          }

          else
          {
            v92 = 0;
          }

          if (v92 == 1)
          {
            if ((*(**(v81 + 16) + 368))(*(v81 + 16)) != -1)
            {
              goto LABEL_199;
            }

            v93 = sub_5544(2);
            v94 = sub_5544(14);
            v95 = 0;
            *buf = 0x100000002;
            v96 = *(v93 + 8);
            while (1)
            {
              v97 = *&buf[v95];
              if (((v96 & v97) != 0) != ((*(v94 + 8) & v97) != 0))
              {
                break;
              }

              v95 += 4;
              if (v95 == 8)
              {
                goto LABEL_215;
              }
            }

            if ((v96 & v97) == 0)
            {
              v93 = v94;
            }

LABEL_215:
            v113 = *v93;
            v99 = v113;
            if (v113 && os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3746;
              *&buf[18] = 1024;
              *&buf[20] = v83;
              v100 = v99;
              v101 = "%25s:%-5d - VirtualAudio_Port: not changing routability of %u (headphones).";
LABEL_194:
              _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEBUG, v101, buf, 0x18u);
            }

LABEL_195:

            goto LABEL_211;
          }

          v102 = v123;
          if (v85 != 1701869160)
          {
            v102 = 1;
          }

          if (v102)
          {
LABEL_199:
            v103 = sub_5544(2);
            v104 = sub_5544(14);
            v105 = 0;
            *buf = 0x100000002;
            v106 = *(v103 + 8);
            while (1)
            {
              v107 = *&buf[v105];
              if (((v106 & v107) != 0) != ((*(v104 + 8) & v107) != 0))
              {
                break;
              }

              v105 += 4;
              if (v105 == 8)
              {
                goto LABEL_205;
              }
            }

            if ((v106 & v107) == 0)
            {
              v103 = v104;
            }

LABEL_205:
            v108 = *v103;
            v109 = v108;
            if (v108)
            {
              v110 = v108;
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
              {
                v111 = (*(**(v81 + 16) + 368))(*(v81 + 16));
                v112 = (*(**(v81 + 16) + 160))(*(v81 + 16));
                *buf = 136316418;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3755;
                *&buf[18] = 1024;
                *&buf[20] = v83;
                *&buf[24] = 1024;
                *&buf[26] = v122;
                *&buf[30] = 1024;
                v152 = v111;
                v153 = 1024;
                *v154 = v112;
                _os_log_impl(&dword_0, v110, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VirtualAudio_Port: %u (DnDState=%u, InEarState=%u, IsRoutable=%u) is added to the unroutable list.", buf, 0x2Au);
              }
            }

            sub_3A9018(*(a1 + 128), v83, a2);
            goto LABEL_211;
          }

          sub_3A93A8(*(a1 + 128), v83, a2);
LABEL_211:
          v81 = *(v81 + 8);
          if (v81 == &__p)
          {
            goto LABEL_224;
          }
        }

        v86 = sub_5544(2);
        v87 = sub_5544(14);
        v88 = 0;
        *buf = 0x100000002;
        v89 = *(v86 + 8);
        while (1)
        {
          v90 = *&buf[v88];
          if (((v89 & v90) != 0) != ((*(v87 + 8) & v90) != 0))
          {
            break;
          }

          v88 += 4;
          if (v88 == 8)
          {
            goto LABEL_191;
          }
        }

        if ((v89 & v90) == 0)
        {
          v86 = v87;
        }

LABEL_191:
        v98 = *v86;
        v99 = v98;
        if (v98 && os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3739;
          *&buf[18] = 1024;
          *&buf[20] = v83;
          v100 = v99;
          v101 = "%25s:%-5d - VirtualAudio_Port: not changing routability of %u (in ear).";
          goto LABEL_194;
        }

        goto LABEL_195;
      }
    }
  }

  *v162 = 0x70687062706D6274;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  sub_4625C(&v131, v162, &v162[8], 2uLL);
  memset(v162, 0, sizeof(v162));
  v40 = v131;
  v41 = v132;
  v42 = (v132 - v131) >> 2;
  sub_46980(v162, v131, v132, v42);
  strcpy(v163, "cwdv");
  v164 = 0;
  v165 = 3;
  v167 = 0;
  v168 = 0;
  v166 = &v167;
  v169 = 44739242;
  memset(&v170, 0, sizeof(v170));
  sub_34AAA8(v130, v162);
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }

  sub_477A0(v167);
  if (*v162)
  {
    *&v162[8] = *v162;
    operator delete(*v162);
  }

  if (sub_28A198())
  {
    sub_65234(&v127, v130);
  }

  else
  {
    v127 = &v127;
    v128 = &v127;
    v129 = 0;
  }

  v124 = &v124;
  v125 = &v124;
  v126 = 0;
  v43 = *(a2 + 199);
  if ((v43 & 0x80u) != 0)
  {
    v43 = *(a2 + 184);
  }

  if (v43)
  {
    __src[0] = 0x70687062706D6274;
    memset(buf, 0, 24);
    sub_4625C(buf, __src, &__src[1], 2uLL);
    *v162 = *buf;
    *&v162[16] = *&buf[16];
    strcpy(v163, "cwdv");
    v164 = 0;
    v165 = 3;
    v167 = 0;
    v168 = 0;
    v166 = &v167;
    v169 = 44739242;
    memset(&v170, 0, sizeof(v170));
    std::string::operator=(&v170, (a2 + 176));
    v44 = sub_809C0();
    *buf = off_6CDD68;
    *&buf[24] = buf;
    sub_2574C4(__src, v44, v162, buf);
    sub_85148(buf);
    if (!v129)
    {
      goto LABEL_95;
    }

    shared_owners = __src[1];
    if (__src[1] == __src)
    {
      goto LABEL_95;
    }

    while (1)
    {
      sub_88A00(buf, &shared_owners->__shared_weak_owners_, "", 626);
      v46 = (*(**buf + 112))(*buf);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if ((v46 & 0x1FFFFFFFFLL) == 0x165707668)
      {
        break;
      }

      shared_owners = shared_owners->__shared_owners_;
      if (shared_owners == __src)
      {
        goto LABEL_95;
      }
    }

    if (shared_owners == __src)
    {
LABEL_95:
      v53 = __src[1];
      v54 = __src;
      if (__src[1] == __src)
      {
LABEL_101:
        sub_136004(&v124, v54, __src);
      }

      else
      {
        while (1)
        {
          sub_88A00(buf, &v53->__shared_weak_owners_, "", 3822);
          v55 = (*(**buf + 368))(*buf);
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v55 == 2)
          {
            break;
          }

          v53 = v53->__shared_owners_;
          if (v53 == __src)
          {
            v54 = __src[1];
            goto LABEL_101;
          }
        }

        v56 = sub_5544(2);
        v57 = sub_5544(14);
        v58 = 0;
        *buf = 0x100000002;
        v59 = *(v56 + 8);
        while (1)
        {
          v60 = *&buf[v58];
          if (((v59 & v60) != 0) != ((*(v57 + 8) & v60) != 0))
          {
            break;
          }

          v58 += 4;
          if (v58 == 8)
          {
            goto LABEL_108;
          }
        }

        if ((v59 & v60) == 0)
        {
          v56 = v57;
        }

LABEL_108:
        v61 = *v56;
        v62 = v61;
        if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          if (*(a2 + 199) >= 0)
          {
            v63 = a2 + 176;
          }

          else
          {
            v63 = *(a2 + 176);
          }

          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3825;
          *&buf[18] = 2080;
          *&buf[20] = v63;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Device: %s ports are not added to the routable list because device is out of ear.", buf, 0x1Cu);
        }
      }
    }

    else
    {
      sub_136004(&v124, v128, &v127);
    }

    sub_65310(__src);
    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    sub_477A0(v167);
    v64 = *v162;
    if (*v162)
    {
      *&v162[8] = *v162;
LABEL_140:
      operator delete(v64);
    }
  }

  else
  {
    memset(buf, 0, 24);
    sub_46980(buf, v40, v41, v42);
    strcpy(&buf[24], "cwdv");
    LOBYTE(v152) = 0;
    *&v154[2] = 3;
    v156 = 0;
    v157 = 0;
    v155 = &v156;
    v158 = 44739242;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    __p.__r_.__value_.__r.__words[0] = off_6CDE88;
    v137 = &__p;
    v47 = sub_809C0();
    *&v162[8] = 0;
    *&v162[16] = 0;
    *v162 = &v162[8];
    sub_83FDC(v134, &__p);
    sub_85D64(__src, v47, buf, v162, v134);
    sub_85148(v134);
    sub_4B0F4(*&v162[8]);
    v48 = __src[1];
    if (__src[1])
    {
      if (__src[1]->__shared_owners_ != -1)
      {
        v149 = 0;
        v150 = 0;
        v49 = std::__shared_weak_count::lock(__src[1]);
        if (v49)
        {
          v50 = v49;
          v51 = __src[0];
          atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v52 = v150;
          v149 = v51;
          v150 = v50;
          if (v52)
          {
            std::__shared_weak_count::__release_weak(v52);
          }

          sub_1A8C0(v50);
        }

        else
        {
          v65 = v150;
          v149 = 0;
          v150 = 0;
          if (v65)
          {
            std::__shared_weak_count::__release_weak(v65);
          }
        }

        sub_CF934(v162, &v149, 1);
        if (v150)
        {
          std::__shared_weak_count::__release_weak(v150);
        }

        if (v130[2])
        {
          v66 = v130;
        }

        else
        {
          v66 = v162;
        }

        sub_136004(&v124, *(v66 + 1), v66);
        sub_65310(v162);
      }

      std::__shared_weak_count::__release_weak(v48);
    }

    v149 = 0x706D627470687062;
    __src[1] = 0;
    v139 = 0;
    __src[0] = 0;
    sub_4625C(__src, &v149, &v150, 2uLL);
    *v162 = *__src;
    *&v162[16] = v139;
    strcpy(v163, "cwdv");
    v164 = 0;
    v165 = 3;
    v167 = 0;
    v168 = 0;
    v166 = &v167;
    v169 = 44739242;
    memset(&v170, 0, sizeof(v170));
    v67 = sub_809C0();
    __src[0] = off_6CDD68;
    v140 = __src;
    sub_2574C4(&v149, v67, v162, __src);
    sub_85148(__src);
    sub_87840(__src, &v149, "", 3693);
    for (m = __src[1]; m != __src; m = m->__shared_owners_)
    {
      if (sub_34AEE4(m->__shared_weak_owners_) == 2)
      {
        v69 = sub_9DE4C(*(a1 + 128), m->__shared_weak_owners_, v162);
        sub_3A9018(*(a1 + 128), v69, a2);
      }
    }

    sub_87980(__src);
    sub_65310(&v149);
    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    sub_477A0(v167);
    if (*v162)
    {
      *&v162[8] = *v162;
      operator delete(*v162);
    }

    sub_85148(&__p);
    if (SHIBYTE(v161) < 0)
    {
      operator delete(v159);
    }

    sub_477A0(v156);
    v64 = *buf;
    if (*buf)
    {
      *&buf[8] = *buf;
      goto LABEL_140;
    }
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  v70 = v125;
  if (v125 != &v124)
  {
    do
    {
      sub_88A00(v162, v70 + 2, "", 3869);
      v71 = (*(**v162 + 376))(*v162);
      if (*&v162[8])
      {
        sub_1A8C0(*&v162[8]);
      }

      if (v71)
      {
        sub_652A0();
      }

      v70 = v70[1];
    }

    while (v70 != &v124);
    if (*&buf[16])
    {
      sub_477A0(*(a2 + 504));
      *(a2 + 504) = 0;
      *(a2 + 512) = 0;
      *(a2 + 496) = a2 + 504;
      sub_87840(__src, buf, "", 3877);
      for (n = __src[1]; n != __src; n = n->__shared_owners_)
      {
        v73 = n->__shared_weak_owners_;
        memset(v162, 0, sizeof(v162));
        strcpy(v163, "cwdv");
        v164 = 0;
        v165 = 3;
        v167 = 0;
        v168 = 0;
        v166 = &v167;
        memset(&v170, 0, sizeof(v170));
        v169 = 44731050;
        v74 = sub_9DE4C(*(a1 + 128), v73, v162);
        sub_3A93A8(*(a1 + 128), v74, a2);
        if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v170.__r_.__value_.__l.__data_);
        }

        sub_477A0(v167);
        if (*v162)
        {
          *&v162[8] = *v162;
          operator delete(*v162);
        }
      }

      sub_87980(__src);
    }
  }

  sub_65310(buf);
  sub_65310(&v124);
  sub_65310(&v127);
  sub_65310(v130);
  if (v40)
  {
    v33 = v40;
    goto LABEL_157;
  }
}

void sub_3A8D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, std::__shared_weak_count *a53, uint64_t a54, char a55, uint64_t a56)
{
  if (a39)
  {
    operator delete(a39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3A9018(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_9E618(a1, a2);
  v23 = v5;
  if (!v5)
  {
    v17 = sub_5544(14);
    v18 = sub_468EC(1, *v17, *(v17 + 8));
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v25 = 1024;
      v26 = 3773;
      v27 = 1024;
      LODWORD(v28) = a2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [vaPort is NULL]: Lookup of VirtualAudio port with id %u failed", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Lookup of VirtualAudio port with id %u failed");
  }

  v6 = v5;
  v7 = sub_5544(2);
  v8 = sub_5544(14);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_8;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_8:
  v12 = *v7;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      (*(*v6 + 112))(__p, v6);
      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v25 = 1024;
      v26 = 3775;
      v27 = 2080;
      v28 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VirtualAudio_Port: %s is added to the unroutable list.", buf, 0x1Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_3A92D4((a3 + 496), v6);
  return sub_114B44(a3 + 520, v6);
}

void sub_3A92D4(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_75234(v3, v5);

      operator delete(v5);
    }
  }
}

void sub_3A93A8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_9E618(a1, a2);
  v22 = v5;
  if (!v5)
  {
    v16 = sub_5544(14);
    v17 = sub_468EC(1, *v16, *(v16 + 8));
    v18 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v24 = 1024;
      v25 = 3785;
      v26 = 1024;
      LODWORD(v27) = a2;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [vaPort is NULL]: Lookup of VirtualAudio port with id %u failed", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Lookup of VirtualAudio port with id %u failed");
  }

  v6 = v5;
  v7 = sub_5544(2);
  v8 = sub_5544(14);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_8;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_8:
  v12 = *v7;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      (*(*v6 + 112))(__p, v6);
      if (v21 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v24 = 1024;
      v25 = 3787;
      v26 = 2080;
      v27 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VirtualAudio_Port: %s is added to the routable list.", buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_114B44(a3 + 496, v6);
  sub_3A92D4((a3 + 520), v6);
}

void sub_3A9764(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_3A97BC(__int128 *a1, __int128 *a2)
{
  v23 = *a1;
  v24 = *(a1 + 2);
  *v25 = *(a1 + 24);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  v4 = a1 + 9;
  v5 = a1 + 5;
  v6 = *(a1 + 10);
  v28 = *(a1 + 9);
  v29 = v6;
  v30 = *(a1 + 11);
  if (v30)
  {
    v6[2] = &v29;
    *v4 = v5;
    *v5 = 0;
    *(a1 + 11) = 0;
  }

  else
  {
    v28 = &v29;
  }

  v7 = (a1 + 6);
  *__p = a1[6];
  v32 = *(a1 + 14);
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  *(a1 + 12) = 0;
  v33 = *(a1 + 30);
  v34 = *(a1 + 124);
  *v35 = a1[8];
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  v8 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v8;
  v9 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a1 + 4);
  *(a1 + 24) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v11;
  sub_176264(v4, a2 + 9);
  v12 = *v7;
  if (*v7)
  {
    *(a1 + 13) = v12;
    operator delete(v12);
    *v7 = 0;
    *(a1 + 13) = 0;
    *(a1 + 14) = 0;
  }

  a1[6] = a2[6];
  *(a1 + 14) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v13 = *(a2 + 30);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 30) = v13;
  v14 = a2[8];
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v15 = *(a1 + 17);
  a1[8] = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *a2 = v23;
  *(a2 + 2) = v24;
  v16 = *(a2 + 4);
  *(a2 + 24) = *v25;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *(a2 + 40) = v26;
  *(a2 + 56) = v27;
  v17 = a2 + 5;
  sub_477A0(*(a2 + 10));
  v18 = v29;
  *(a2 + 9) = v28;
  *(a2 + 10) = v18;
  v19 = v30;
  *(a2 + 11) = v30;
  if (v19)
  {
    v18[2] = v17;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    *(a2 + 9) = v17;
  }

  v20 = *(a2 + 12);
  if (v20)
  {
    *(a2 + 13) = v20;
    operator delete(v20);
  }

  a2[6] = *__p;
  *(a2 + 14) = v32;
  __p[1] = 0;
  v32 = 0;
  __p[0] = 0;
  *(a2 + 30) = v33;
  *(a2 + 124) = v34;
  v21 = *v35;
  v35[0] = 0;
  v35[1] = 0;
  v22 = *(a2 + 17);
  a2[8] = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    if (v35[1])
    {
      std::__shared_weak_count::__release_weak(v35[1]);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_477A0(v29);
}

__int128 *sub_3A9A34(__int128 *result, uint64_t *a2)
{
  v2 = *(result + 2);
  *(result + 2) = a2[2];
  a2[2] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  if (*(result + 2))
  {
    **(result + 1) = result;
    v4 = *result;
  }

  else
  {
    *result = result;
    v4 = result;
  }

  *(v4 + 1) = result;
  if (a2[2])
  {
    *a2[1] = a2;
    v5 = *a2;
  }

  else
  {
    *a2 = a2;
    v5 = a2;
  }

  v5[1] = a2;
  return result;
}

void sub_3A9AA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[23];
  v1 += 23;
  sub_477A0(v2);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t sub_3A9AE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CDFF0;
  a2[1] = v2;
  return result;
}

void sub_3A9B74(void *a1, uint64_t a2, int a3)
{
  v5 = sub_9E618(a2, a3);
  if (!v5)
  {
    v12 = sub_5544(14);
    v13 = sub_468EC(1, *v12, *(v12 + 8));
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1027;
      v20 = 1024;
      LODWORD(v21) = a3;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No virtual audio port found with port id %u", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No virtual audio port found with port id %u");
  }

  v6 = *(v5 + 96);
  *buf = *(v5 + 88);
  *&buf[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25704(v18, buf, "", 1029);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = sub_5544(2);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        if (*(v18[0] + 303) < 0)
        {
          sub_54A0(__p, *(v18[0] + 280), *(v18[0] + 288));
        }

        else
        {
          *__p = *(v18[0] + 280);
          v17 = *(v18[0] + 296);
        }

        v10 = __p;
        if (v17 < 0)
        {
          v10 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1030;
        v20 = 2080;
        v21 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Requested port is %s", buf, 0x1Cu);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v11 = v18[1];
  *a1 = v18[0];
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v11);
  }
}

void sub_3A9DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(a1);
}

void *sub_3A9E30(void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_8470C(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_3A9EAC(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v5 = *a2 & 0xFFFFFFFF00000000;
  if (*a2 == 1668509810)
  {
    v6 = 1668309362;
  }

  else
  {
    v6 = *a2;
  }

  v7 = (_os_feature_enabled_impl() & (v6 == 1668114797)) == 0;
  v8 = 0x64706C62636D756CLL;
  if (v7)
  {
    v8 = v5 | v6;
  }

  *a2 = v8;
  a2[1] = v4;

  return sub_D13F0(a1, a2);
}

uint64_t sub_3A9F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  sub_20309C(a1 + 8, a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  sub_D0D94(a1 + 80, a3);
  *(a1 + 896) = 1;
  return a1;
}

void sub_3A9FB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_175F78((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3A9FD8(uint64_t *result, void *a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  v2 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = *result;
    *(v7 + 8) = v3;
    *v3 = v7;
    *result = v4;
    *(v4 + 8) = result;
    result[2] = v2;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_3AA01C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_3AA058(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = *(a1 + 8);
    do
    {
      v21 = *(v3 + 28);
      v5 = sub_758D4(v21, SHIDWORD(v21), *(v4 + 144), *(v4 + 152));
      if (v5)
      {
        v6 = v5;
        v7 = *sub_5544(32);
        v8 = v7;
        if (v7)
        {
          v9 = v7;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(v6 + 8);
            sub_68108(&__p, &v21);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136316162;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 5074;
            *&buf[18] = 1024;
            *&buf[20] = v10;
            v24 = 2048;
            v25 = v6;
            v26 = 2080;
            v27 = p_p;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying device %u (%p) of VAD '%s' that route change failed.", buf, 0x2Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        memset(buf, 0, sizeof(buf));
        sub_2143EC(&__p);
        sub_221830(v6, buf);
        sub_214518(&__p);
        __p.__r_.__value_.__r.__words[0] = buf;
        sub_DECD0(&__p);
      }

      v12 = sub_DA5E8(v4 + 176, v21, HIDWORD(v21));
      if (v4 + 184 != v12)
      {
        v13 = v12;
        v14 = *(v12 + 8);
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
          v16 = v12;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*(v4 + 176) == v12)
        {
          *(v4 + 176) = v15;
        }

        v18 = *(v4 + 184);
        --*(v4 + 192);
        sub_75234(v18, v13);
        operator delete(v13);
      }

      v19 = v3[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v3[2];
          v17 = *v20 == v3;
          v3 = v20;
        }

        while (!v17);
      }

      v3 = v20;
    }

    while (v20 != v2);
  }
}

void sub_3AA5C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3AA604(uint64_t a1, unsigned int *a2)
{
  v3 = sub_144A14(*a1, *(a1 + 8), *a2, a2[1]);
  *(a1 + 8) = v3;
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

  *(a1 + 8) = v5;
  return a1;
}

void sub_3AA70C(uint64_t a1)
{
  *a1 = off_6CDDB0;
  sub_3AA774(*(a1 + 24));

  operator delete();
}

void sub_3AA774(void *a1)
{
  if (a1)
  {
    sub_3AA774(*a1);
    sub_3AA774(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_3AA7F0(uint64_t a1)
{
  *a1 = off_6CDDB0;
  sub_3AA774(*(a1 + 24));
  return a1;
}

void sub_3AA838(void *a1, int a2)
{
  sub_40B088(a1, a2);
  if (atomic_load_explicit(&qword_6F5A38, memory_order_acquire) != -1)
  {
    *buf = &v24;
    __p.__r_.__value_.__r.__words[0] = buf;
    std::__call_once(&qword_6F5A38, &__p, sub_3AAD24);
  }

  if ((byte_6E8371 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v3 = getenv("AudioRoutingEngine");
    if (!v3)
    {
      goto LABEL_8;
    }

    sub_1D8C10(&__p, v3);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_8:
      v5 = CFPreferencesCopyValue(@"AudioRoutingEngine", @"com.apple.celestial", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      if (v5)
      {
        sub_48540(buf, v5);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = *buf;
        CFRelease(v5);
      }
    }

    v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v6 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_)
      {
        byte_6E8371 = 1;
LABEL_33:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_34;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        byte_6E8371 = 1;
        goto LABEL_34;
      }

      p_p = &__p;
    }

    v8 = (p_p + v6);
    while (p_p != v8)
    {
      p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
      p_p = (p_p + 1);
    }

    v9 = *sub_5544(14);
    v10 = v9;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      *&buf[12] = 1024;
      *&buf[14] = 265;
      *&buf[18] = 2080;
      *&buf[20] = "com.apple.celestial AudioRoutingEngine";
      v27 = 2080;
      v28 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %s.", buf, 0x26u);
    }

    v12 = std::string::compare(&__p, "virtualaudio");
    if (!v12 || !std::string::compare(&__p, "none") || !std::string::compare(&__p, "mecca"))
    {
      byte_6E8370 = v12 != 0;
    }

    byte_6E8371 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  v13 = byte_6E8370;
  v14 = sub_5544(2);
  if (v13)
  {
    v15 = *v14;
    v16 = v15;
    if (v15)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5459;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using Virtual Audio Plug-In: NO", buf, 0x12u);
      }
    }
  }

  else
  {
    if (*(v14 + 8))
    {
      v17 = *v14;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 5464;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using Virtual Audio Plug-In: YES", buf, 0x12u);
        }
      }
    }

    __p.__r_.__value_.__r.__words[0] = 0x676C6F62696E6F74;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    v19 = AudioObjectAddPropertyListener(1u, &__p, sub_3995D0, a1);
    if (v19)
    {
      v20 = sub_5544(14);
      v21 = sub_468EC(1, *v20, *(v20 + 8));
      v22 = v21;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5473;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theError) [error theError is an error]: error registering a kAudioHardwarePropertyIsInitingOrExiting property listener with the HAL system", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v19;
    }
  }
}

void sub_3AACF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3AAD24()
{
  sub_5544(0);
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "Log.cpp";
      v4 = 1024;
      v5 = 117;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Virtual Audio logging has been initialized.", &v2, 0x12u);
    }
  }
}

BOOL sub_3AADE8()
{
  sub_ABF48();
  if (DWORD2(xmmword_6FD620) == 1)
  {
    return 1;
  }

  sub_ABF48();
  return xmmword_6FD620 == 1;
}

uint64_t sub_3AAE2C(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "route change reason");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3AAECC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_3AAF00(uint64_t *a1, uint64_t *a2)
{
  sub_758D4(1986291046, 0, a1, a2);
  sub_ABF48();
  if (xmmword_6FD620 == 1)
  {
    *buf = -1024458752;
    v3 = 0;
    v4 = 0;
    v2 = 0;
    sub_3AF6C4(&v2, buf, &buf[4], 1uLL);
  }

  *buf = 0xC2F0000000000000;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  sub_3AF6C4(&v2, buf, &v6, 2uLL);
}

void sub_3AB10C(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3AB148(uint64_t a1, uint64_t a2)
{
  sub_88CE8(a1, "siri input source UUID");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *(a1 + 8) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3AB1F4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_3AB228(uint64_t a1, unint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  if (a2 > 1668313665)
  {
    if (a2 == 1668313715)
    {
      goto LABEL_7;
    }

    v5 = 29250;
  }

  else
  {
    if (a2 == 1668301427)
    {
      goto LABEL_7;
    }

    v5 = 24946;
  }

  if (a2 != (v5 | 0x63700000))
  {
    return;
  }

LABEL_7:
  v6 = HIDWORD(a2);
  if (SHIDWORD(a2) > 1936749156)
  {
    if (HIDWORD(a2) != 1937007472)
    {
      v7 = 29285;
LABEL_12:
      if (HIDWORD(a2) != (v7 | 0x73700000))
      {
        return;
      }
    }
  }

  else if (HIDWORD(a2) != 1835229549)
  {
    v7 = 25456;
    goto LABEL_12;
  }

  v8 = *(a1 + 144);
  v9 = *(a1 + 152);
  v10 = sub_758D4(1986291305, 0, v8, v9);
  if (!v10)
  {
    v10 = sub_758D4(1986291046, 0, v8, v9);
  }

  sub_2226F4(v10, a4, v6);
}

BOOL sub_3AB348(_BOOL8 a1)
{
  v2 = CFStringCreateWithBytes(0, "network uplink clock uses baseband", 34, 0x8000100u, 0);
  v6 = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = v2;
  if (!a1 || (a1 = CFDictionaryContainsKey(a1, v2) != 0, (v3 = v6) != 0))
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_3AB400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3AB438(const __CFDictionary *a1)
{
  v3 = CFStringCreateWithBytes(0, "network uplink clock uses baseband", 34, 0x8000100u, 0);
  v7 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if ((!a1 || (Value = CFDictionaryGetValue(a1, v3), (v3 = v7) != 0)) && (CFRelease(v3), !a1) || !Value)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(v6);
  }

  return sub_27CA94(Value);
}

uint64_t sub_3AB594(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = off_6DAEC8;
  v5 = a1 + 16;
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  if (!v7)
  {
    v6 = (a1 + 40);
    goto LABEL_5;
  }

  if (v7 != a3)
  {
    *(a1 + 40) = v7;
LABEL_5:
    *v6 = 0;
    goto LABEL_7;
  }

  *(a1 + 40) = v5;
  (*(**v6 + 24))(*v6, v5);
LABEL_7:
  if (*(a2 + 23) < 0)
  {
    sub_54A0((a1 + 48), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *(a1 + 48) = v8;
  }

  return a1;
}

uint64_t sub_3AB680(uint64_t a1)
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

void sub_3AB700(UInt8 *a1, CFTypeRef cf)
{
  v3 = CFCopyDescription(cf);
  sub_1267C(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_3AB754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void sub_3AB768(uint64_t *a1)
{
  v19 = *a1;
  v1 = sub_127524();
  v2 = sub_1276A4("EnableHALMediaMonitor");
  v3 = *sub_5544(2);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    v22 = 1024;
    v23 = 8489;
    v24 = 1024;
    v25[0] = v1;
    LOWORD(v25[1]) = 1024;
    *(&v25[1] + 2) = v2 > 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlugInHUPhandler VAD capture=%d HAL capture=%d\n", buf, 0x1Eu);
  }

  v5 = sub_5544(2);
  v6 = sub_5544(14);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_10:
  v10 = *v5;
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    v22 = 1024;
    v23 = 7603;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>", buf, 0x12u);
  }

  v12 = sub_5544(2);
  v13 = sub_5544(14);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      goto LABEL_19;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_19:
  v17 = *v12;
  v18 = v17;
  if (v17)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v22 = 1024;
      v23 = 7604;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ***** Logging Current VA State *****", buf, 0x12u);
    }
  }

  sub_39D768(&v20, v19);
}

uint64_t sub_3AC088(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_3AC0C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_3AC100(void *a1)
{
  v2 = a1[1];
  *&buf[8] = 0;
  *buf = 0;
  v3 = sub_69CE8(buf);
  __p[0].__r_.__value_.__r.__words[0] = v3;
  sub_38188(v44, v2, __p, 0, 0);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v2 + 112);
  v6 = a1[2];
  v5 = a1[3];
  sub_27A4();
  v7 = atomic_load(&qword_6E9558);
  if (v7 == pthread_self())
  {
    if ((*(v4 + 408) & 1) == 0)
    {
      v37 = sub_5544(14);
      v38 = *v37;
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6652;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: This method should only be used in the context of a current expanse route", buf, 0x12u);
        }
      }
    }

    v8 = v5[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v5;
        if (*v5)
        {
          if (*(v11 + 303) < 0)
          {
            sub_54A0(__p, *(v11 + 280), *(v11 + 288));
          }

          else
          {
            __p[0] = *(v11 + 280);
          }

          v12 = sub_1F07F0(v4 + 72, &__p[0].__r_.__value_.__l.__data_);
          if (v4 + 80 != v12)
          {
            v13 = sub_1F07F0(v4 + 72, (v12 + 32));
            if (v4 + 80 != v13)
            {
              v14 = v13;
              v15 = *(v13 + 8);
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                v17 = v13;
                do
                {
                  v16 = v17[2];
                  v18 = *v16 == v17;
                  v17 = v16;
                }

                while (!v18);
              }

              if (*(v4 + 72) == v13)
              {
                *(v4 + 72) = v16;
              }

              v19 = *(v4 + 80);
              --*(v4 + 88);
              sub_75234(v19, v14);
              if (*(v14 + 55) < 0)
              {
                operator delete(*(v14 + 32));
              }

              operator delete(v14);
            }
          }

          v20 = sub_5544(8);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = __p;
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __p[0].__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6663;
            *&buf[18] = 2080;
            *&buf[20] = v22;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RouteToPartner: Allowing port %s", buf, 0x1Cu);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        sub_1A8C0(v10);
      }
    }

    v23 = v6[1];
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = v24;
        v26 = *v6;
        if (v26)
        {
          v27 = (v26 + 280);
          if (*(v26 + 303) < 0)
          {
            sub_54A0(buf, *(v26 + 280), *(v26 + 288));
          }

          else
          {
            *buf = *v27;
            *&buf[16] = *(v26 + 296);
          }

          sub_261F68(v4 + 72, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v28 = sub_5544(8);
          v29 = *v28;
          if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v26 + 303) < 0)
            {
              sub_54A0(__p, *(v26 + 280), *(v26 + 288));
            }

            else
            {
              *&__p[0].__r_.__value_.__l.__data_ = *v27;
              __p[0].__r_.__value_.__r.__words[2] = *(v26 + 296);
            }

            v30 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
            v31 = __p[0].__r_.__value_.__r.__words[0];
            sub_22170(v45, *(v26 + 144));
            v32 = __p;
            if (v30 < 0)
            {
              v32 = v31;
            }

            if (v46 >= 0)
            {
              v33 = v45;
            }

            else
            {
              v33 = v45[0];
            }

            *buf = 136315906;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6670;
            *&buf[18] = 2080;
            *&buf[20] = v32;
            v48 = 2080;
            v49 = v33;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowing current port (%s, %s)", buf, 0x26u);
            if (v46 < 0)
            {
              operator delete(v45[0]);
            }

            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }
        }

        sub_1A8C0(v25);
      }
    }

    v34 = sub_5544(8);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
    {
      sub_25B214(__p, v4 + 72);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0].__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6673;
      *&buf[18] = 2080;
      *&buf[20] = v36;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d All disallowed ports : %s", buf, 0x1Cu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    sub_271104(v43, v4, 1919907442);
  }

  v39 = sub_5544(14);
  v40 = *v39;
  if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6651;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_3AC70C(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_4AE8C(&STACK[0x388]);
  _Unwind_Resume(a1);
}

__n128 sub_3AC7F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CE230;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_3AC89C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(v2 + 476) = *(a1 + 20);
  *(v2 + 472) = v3;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 488);
  *(v2 + 480) = v5;
  *(v2 + 488) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(v2 + 504);
  *(v2 + 496) = v8;
  *(v2 + 504) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *sub_5544(2);
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "VirtualAudio_PlugIn.mm";
    v14 = 1024;
    v15 = 7529;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resetting state as routing to partner failed", &v12, 0x12u);
  }
}

void sub_3AC9C4(void *a1)
{
  sub_3ACA00(a1 + 8);

  operator delete(a1);
}

void sub_3ACA00(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_3ACA58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = off_6CE1E8;
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(a2 + 20) = *(result + 20);
  *(a2 + 16) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_3ACB54(void *a1)
{
  *a1 = off_6CE1E8;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_3ACBCC(void *a1)
{
  *a1 = off_6CE1E8;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_3ACC24()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 24);

  return v0();
}

uint64_t sub_3ACCFC(const __CFDictionary *a1)
{
  v1 = sub_4A4DC(a1, "VAD type 4cc");
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_4A8F8(v1);
}

void *sub_3ACD7C(void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_2673C4(a1, v4, *a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void sub_3ACDF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 8) + 112);
  v31 = **(a1 + 16);
  sub_3AD250(v32, &v31, 1);
  v5 = *(a1 + 24);
  v6 = sub_5544(2);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_265948(&v40, v5);
    v8 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *v47 = "RoutingManager.cpp";
    *&v47[8] = 1024;
    *&v47[10] = 4758;
    v48 = 2080;
    v49 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Undo disallowed ports : %s", buf, 0x1Cu);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  v30 = a2;
  v11 = *v5;
  v10 = v5 + 1;
  v9 = v11;
  if (v11 != v10)
  {
    v12 = v4 + 13;
    do
    {
      v13 = *(v9 + 8);
      sub_15B860(&v38, v9 + 5);
      v14 = *v12;
      if (!*v12)
      {
        goto LABEL_18;
      }

      v15 = v4 + 13;
      do
      {
        v16 = *(v14 + 32);
        v17 = v16 >= v13;
        v18 = v16 < v13;
        if (v17)
        {
          v15 = v14;
        }

        v14 = *(v14 + 8 * v18);
      }

      while (v14);
      if (v15 != v12 && *(v15 + 8) <= v13)
      {
        *&v40.__r_.__value_.__r.__words[1] = 0uLL;
        v40.__r_.__value_.__r.__words[0] = &v40.__r_.__value_.__l.__size_;
        v22 = v15[5];
        v44 = (v15 + 6);
        v45 = v22;
        v42 = &v39;
        v43 = v38;
        v41.n128_u64[0] = &v40;
        v41.n128_u64[1] = &v40.__r_.__value_.__l.__size_;
        sub_26D5B8(buf, &v45, &v44, &v43, &v42, &v41);
        if (v40.__r_.__value_.__r.__words[2])
        {
          if (v15 + 5 != &v40)
          {
            sub_26D7C0(v15 + 5, v40.__r_.__value_.__l.__data_, &v40.__r_.__value_.__l.__size_);
          }
        }

        else
        {
          v23 = v15[1];
          v24 = v15;
          if (v23)
          {
            do
            {
              v25 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v25 = v24[2];
              v26 = *v25 == v24;
              v24 = v25;
            }

            while (!v26);
          }

          if (v4[12] == v15)
          {
            v4[12] = v25;
          }

          v27 = v4[13];
          --v4[14];
          sub_75234(v27, v15);
          sub_98A08(v15[6]);
          operator delete(v15);
        }

        sub_98A08(v40.__r_.__value_.__l.__size_);
      }

      else
      {
LABEL_18:
        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v40, v13);
          v21 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *v47 = "PortTypes.h";
          *&v47[8] = 1024;
          *&v47[10] = 111;
          v48 = 2080;
          v49 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not find entry for VAD '%s'", buf, 0x1Cu);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }
        }
      }

      sub_98A08(v39);
      v28 = v9[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v9[2];
          v26 = *v29 == v9;
          v9 = v29;
        }

        while (!v26);
      }

      v9 = v29;
    }

    while (v29 != v10);
  }

  sub_272638(buf, v32);
  sub_2715F8(&v33, v4, 0, buf);
  sub_477A0(*&v47[4]);
  *v30 = v33;
  sub_20309C(v30 + 8, &v34);
  *(v30 + 64) = v37;
  *(v30 + 80) = 0;
  *(v30 + 896) = 0;
  if (v36 == 1)
  {
    sub_175F78(v35);
  }

  sub_477A0(v32[1]);
}

void sub_3AD1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 == 1)
  {
    sub_175F78(&a20);
  }

  sub_477A0(a15);
  _Unwind_Resume(a1);
}

void *sub_3AD250(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_271F04(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

__n128 sub_3AD2D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CE350;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_3AD380()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 24);

  return v0();
}

BOOL sub_3AD458(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_3AD510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void sub_3AD548(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v35 = 0;
  v36 = 0;
  v34 = &v35;
  if (**(a1 + 8) == 1986095474)
  {
    v5 = *(a1 + 16);
    v7 = *v5;
    v6 = v5[1];
    v48.__r_.__value_.__r.__words[0] = v7;
    v48.__r_.__value_.__l.__size_ = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    sub_3A9E30(buf, &v48, 1);
    LODWORD(v42) = 1986291046;
    v43 = *buf;
    v44 = *&buf[8];
    v45[0] = *&buf[16];
    if (*&buf[16])
    {
      *(*&buf[8] + 16) = &v44;
      *buf = &buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
    }

    else
    {
      v43 = &v44;
    }

    sub_3ACD7C(&v37, &v42, 1);
    sub_4B14C(v35);
    v8 = v38;
    v34 = v37;
    v35 = v38;
    v36 = v39;
    if (v39)
    {
      *(v38 + 2) = &v35;
      v37 = &v38;
      v38 = 0;
      v39 = 0;
      v8 = 0;
    }

    else
    {
      v34 = &v35;
    }

    sub_4B14C(v8);
    sub_4B0F4(v44);
    sub_4B0F4(*&buf[8]);
    if (v48.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v48.__r_.__value_.__l.__size_);
    }
  }

  v9 = *(v4 + 112);
  v32 = **(a1 + 32);
  sub_3AD250(v33, &v32, 1);
  sub_2726F4(&v37, (v9 + 9));
  v31 = v9;
  v11 = v9 + 12;
  v10 = v9[12];
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v12 = v11 + 1;
  if (v10 != v11 + 1)
  {
    do
    {
      if (!*sub_26746C(&v40, v41, buf, &v48, *(v10 + 8)))
      {
        operator new();
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != v12);
  }

  v16 = v34;
  if (v34 != &v35)
  {
    do
    {
      sub_15B860(&v48, v16 + 5);
      v17 = *(v16 + 8);
      v18 = *v12;
      if (!*v12)
      {
        goto LABEL_30;
      }

      v19 = v11 + 1;
      do
      {
        v20 = *(v18 + 8);
        v21 = v20 >= v17;
        v22 = v20 < v17;
        if (v21)
        {
          v19 = v18;
        }

        v18 = v18[v22];
      }

      while (v18);
      if (v19 != v12 && *(v19 + 8) <= v17)
      {
        sub_272748(v19 + 5, v48.__r_.__value_.__l.__data_, &v48.__r_.__value_.__l.__size_);
      }

      else
      {
LABEL_30:
        *buf = *(v16 + 8);
        sub_2726F4(&buf[8], &v48);
        v23 = *v12;
        if (!*v12)
        {
LABEL_36:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            v25 = *(v23 + 32);
            if (*buf >= v25)
            {
              break;
            }

            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_36;
            }
          }

          if (v25 >= *buf)
          {
            break;
          }

          v23 = v24[1];
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        sub_98A08(*&buf[16]);
      }

      sub_98A08(v48.__r_.__value_.__l.__size_);
      v26 = v16[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v16[2];
          v15 = *v27 == v16;
          v16 = v27;
        }

        while (!v15);
      }

      v16 = v27;
    }

    while (v27 != &v35);
  }

  v28 = sub_5544(8);
  v29 = *v28;
  if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_25B214(&v48, (v31 + 9));
    v30 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v48 : v48.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4783;
    *&buf[18] = 2080;
    *&buf[20] = v30;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowed Ports: %s", buf, 0x1Cu);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }
  }

  sub_272638(buf, v33);
  sub_27268C(&v42, v31, buf);
  sub_477A0(*&buf[8]);
  sub_178A90(v41[0]);
  sub_98A08(v38);
  *a2 = v42;
  sub_20309C(a2 + 8, &v43);
  *(a2 + 64) = v47;
  *(a2 + 80) = 0;
  *(a2 + 896) = 0;
  if (v46 == 1)
  {
    sub_175F78(v45);
  }

  sub_477A0(v33[1]);
  sub_4B14C(v35);
}