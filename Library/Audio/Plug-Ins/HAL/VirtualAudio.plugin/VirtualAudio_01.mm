void sub_1A548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_210C50(&a48);
  _Unwind_Resume(a1);
}

void sub_1A8C0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1A92C(uint64_t a1, int *a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      v31 = a2[2];
      sub_22CE0(&v32);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      v31 = a2[2];
      sub_22CE0(&v32);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (*a2 != 1651798132)
  {
    sub_27A4();
    LOBYTE(v30) = (*(qword_6E94F8 + 16))();
    v9 = *a2;
    v8 = 4;
    if (*a2 > 1702248803)
    {
      if (v9 <= 1919774834)
      {
        if (v9 > 1853059699)
        {
          if (v9 > 1886413411)
          {
            if (v9 <= 1886807153)
            {
              if (v9 == 1886413412 || v9 == 1886413426)
              {
                goto LABEL_175;
              }

              v13 = 1886807139;
              goto LABEL_174;
            }

            if (v9 > 1918987631)
            {
              if (v9 != 1918987632)
              {
                v10 = 1919773028;
                goto LABEL_163;
              }

              goto LABEL_170;
            }

            if (v9 == 1886807154)
            {
              goto LABEL_175;
            }

            v12 = 1902539642;
          }

          else
          {
            if (v9 <= 1869838182)
            {
              if (v9 == 1853059700)
              {
                goto LABEL_164;
              }

              if (v9 == 1869574756)
              {
                goto LABEL_175;
              }

              v13 = 1869575794;
              goto LABEL_174;
            }

            if (v9 > 1885631345)
            {
              if (v9 == 1885631346)
              {
                goto LABEL_175;
              }

              v12 = 1886216547;
            }

            else
            {
              if (v9 == 1869838183)
              {
                goto LABEL_164;
              }

              v12 = 1885434482;
            }
          }
        }

        else
        {
          if (v9 > 1769302371)
          {
            if (v9 <= 1836348004)
            {
              if (v9 == 1769302372)
              {
                goto LABEL_178;
              }

              if (v9 != 1818326127)
              {
                v13 = 1835888484;
                goto LABEL_174;
              }

              goto LABEL_175;
            }

            if (v9 <= 1852729710)
            {
              if (v9 == 1836348005)
              {
                goto LABEL_178;
              }

              v12 = 1852012899;
              goto LABEL_159;
            }

            if (v9 != 1852729711)
            {
              if (v9 != 1853059619)
              {
                goto LABEL_186;
              }

              v17 = a2[1];
              sub_D6978(__p, a1);
              v8 = (16 * LODWORD(__p[2]));
              sub_477A0(__p[1]);
            }

            goto LABEL_178;
          }

          if (v9 <= 1718641516)
          {
            if (v9 == 1702248804 || v9 == 1702392685)
            {
              goto LABEL_175;
            }

            v10 = 1718383987;
            goto LABEL_163;
          }

          if (v9 <= 1735682403)
          {
            if (v9 == 1718641517)
            {
              goto LABEL_178;
            }

            v12 = 1719165555;
            goto LABEL_159;
          }

          if (v9 == 1735682404)
          {
            goto LABEL_183;
          }

          v12 = 1752657012;
        }
      }

      else
      {
        if (v9 > 1953002092)
        {
          if (v9 <= 1983997010)
          {
            if (v9 <= 1969318243)
            {
              if (v9 != 1953002093)
              {
                if (v9 == 1953002354)
                {
                  goto LABEL_164;
                }

                v13 = 1953719148;
                goto LABEL_174;
              }

              goto LABEL_175;
            }

            if (v9 > 1970303086)
            {
              if (v9 == 1970303087)
              {
                goto LABEL_164;
              }

              v13 = 1983996971;
              goto LABEL_174;
            }

            if (v9 != 1969318244)
            {
              v13 = 1969844082;
              goto LABEL_174;
            }

            goto LABEL_178;
          }

          if (v9 > 1986294895)
          {
            if (v9 > 2020111982)
            {
              if (v9 == 2020111983 || v9 == 2021027692)
              {
                v8 = 16;
                goto LABEL_178;
              }

              goto LABEL_186;
            }

            if (v9 != 1986294896)
            {
              v13 = 1986361444;
              goto LABEL_174;
            }

            goto LABEL_178;
          }

          if (v9 > 1986225267)
          {
            if (v9 == 1986225268)
            {
              goto LABEL_178;
            }

            v15 = 1986225518;
LABEL_169:
            if (v9 != v15)
            {
              goto LABEL_186;
            }

            goto LABEL_170;
          }

          if (v9 == 1983997011)
          {
            goto LABEL_175;
          }

          v10 = 1986225266;
LABEL_163:
          if (v9 == v10)
          {
            goto LABEL_164;
          }

          goto LABEL_186;
        }

        if (v9 <= 1936878959)
        {
          if (v9 > 1935962991)
          {
            if (v9 > 1936876402)
            {
              if (v9 == 1936876403)
              {
                goto LABEL_164;
              }

              v13 = 1936876644;
              goto LABEL_174;
            }

            if (v9 != 1935962992)
            {
              v13 = 1936744803;
              goto LABEL_174;
            }

            goto LABEL_175;
          }

          if (v9 == 1919774835)
          {
            goto LABEL_170;
          }

          if (v9 != 1920165219)
          {
            v13 = 1935762281;
            goto LABEL_174;
          }

          goto LABEL_178;
        }

        if (v9 > 1937138531)
        {
          if (v9 > 1952997987)
          {
            if (v9 != 1952997988)
            {
              v13 = 1952998002;
              goto LABEL_174;
            }

            goto LABEL_175;
          }

          if (v9 == 1937138532)
          {
            goto LABEL_175;
          }

          v15 = 1937208929;
          goto LABEL_169;
        }

        if (v9 == 1936878960)
        {
          goto LABEL_170;
        }

        if (v9 == 1936879204)
        {
          goto LABEL_175;
        }

        v12 = 1936946787;
      }
    }

    else
    {
      if (v9 > 1668443503)
      {
        if (v9 <= 1684893795)
        {
          if (v9 > 1684238450)
          {
            if (v9 <= 1684498540)
            {
              if (v9 <= 1684365923)
              {
                if (v9 != 1684238451)
                {
                  v10 = 1684304756;
                  goto LABEL_163;
                }

LABEL_164:
                v8 = 8;
                goto LABEL_178;
              }

              if (v9 == 1684365924)
              {
                goto LABEL_175;
              }

              v13 = 1684370276;
              goto LABEL_174;
            }

            if (v9 <= 1684500588)
            {
              if (v9 == 1684498541)
              {
                goto LABEL_178;
              }

              v12 = 1684498544;
              goto LABEL_159;
            }

            if (v9 != 1684500589)
            {
              v13 = 1684500594;
              goto LABEL_174;
            }

LABEL_175:
            v19 = (**(a1 + 872) + 32);
LABEL_176:
            v20 = (*v19)();
LABEL_177:
            v8 = v20;
            goto LABEL_178;
          }

          if (v9 > 1684104047)
          {
            if (v9 > 1684107363)
            {
              if (v9 == 1684107364)
              {
                goto LABEL_175;
              }

              v10 = 1684236338;
            }

            else
            {
              if (v9 == 1684104048)
              {
                goto LABEL_164;
              }

              v10 = 1684104051;
            }

            goto LABEL_163;
          }

          if (v9 != 1668443504)
          {
            if (v9 == 1668577648)
            {
              goto LABEL_178;
            }

            v15 = 1668705648;
            goto LABEL_169;
          }

LABEL_170:
          v18 = *(a1 + 792);
          if (!v18)
          {
            v27 = sub_5544(14);
            v28 = *v27;
            if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = "VirtualAudio_Device.cpp";
              WORD2(__p[1]) = 1024;
              *(&__p[1] + 6) = 2357;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
            }

            v29 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v29, "Precondition failure.");
          }

          v19 = (*v18 + 64);
          goto LABEL_176;
        }

        if (v9 <= 1685287010)
        {
          if (v9 > 1685276754)
          {
            if ((v9 - 1685278561) <= 0x11 && ((1 << (v9 - 97)) & 0x20003) != 0)
            {
              goto LABEL_175;
            }

            v13 = 1685276755;
LABEL_174:
            if (v9 == v13)
            {
              goto LABEL_175;
            }

LABEL_186:
            v20 = sub_54880(a1, a2);
            goto LABEL_177;
          }

          if (v9 == 1684893796)
          {
            goto LABEL_175;
          }

          if (v9 != 1685025633)
          {
            v13 = 1685087596;
            goto LABEL_174;
          }

LABEL_178:
          sub_210C50(&v30);
          return v8;
        }

        if (v9 <= 1685483629)
        {
          if ((v9 - 1685287011) < 2)
          {
            goto LABEL_175;
          }

          if (v9 == 1685287523)
          {
            goto LABEL_164;
          }

          v10 = 1685288051;
          goto LABEL_163;
        }

        if (v9 == 1685483630)
        {
          goto LABEL_178;
        }

        if (v9 == 1685484390)
        {
          goto LABEL_170;
        }

        if (v9 != 1701733224)
        {
          goto LABEL_186;
        }

        *&v32.mSelector = 0x676C6F6270616373;
        v32.mElement = 0;
        sub_2153AC(__p, a1, &v32);
        goto LABEL_120;
      }

      if (v9 <= 1635083360)
      {
        if (v9 <= 1633973867)
        {
          if (v9 <= 1633904998)
          {
            if (v9 == 1165513555 || v9 == 1633776747)
            {
              goto LABEL_175;
            }

            v11 = 25449;
          }

          else
          {
            if (v9 > 1633907569)
            {
              if (v9 == 1633907570)
              {
                goto LABEL_175;
              }

              v10 = 1633970532;
              goto LABEL_163;
            }

            if (v9 == 1633904999)
            {
              goto LABEL_175;
            }

            v11 = 28525;
          }

          v13 = v11 | 0x61630000;
          goto LABEL_174;
        }

        if (v9 > 1634692198)
        {
          if (v9 > 1634890858)
          {
            if (v9 != 1634890859)
            {
              v13 = 1635020147;
              goto LABEL_174;
            }
          }

          else if (v9 != 1634692199)
          {
            v13 = 1634755428;
            goto LABEL_174;
          }

          goto LABEL_175;
        }

        if (v9 == 1633973868)
        {
          goto LABEL_175;
        }

        if (v9 == 1634035054)
        {
          goto LABEL_178;
        }

        if (v9 != 1634300531)
        {
          goto LABEL_186;
        }

LABEL_183:
        v22 = *(a1 + 872);
        memset(__p, 0, sizeof(__p));
        sub_1215C(__p, *(v22 + 144), *(v22 + 152), (*(v22 + 152) - *(v22 + 144)) >> 3);
        v16 = __p[0];
        v8 = (LODWORD(__p[1]) - LODWORD(__p[0])) & 0xFFFFFFF8;
        if (!__p[0])
        {
          goto LABEL_178;
        }

LABEL_184:
        operator delete(v16);
        goto LABEL_178;
      }

      if (v9 <= 1650881393)
      {
        if (v9 > 1635152992)
        {
          v14 = v9 - 1635152993;
          if (v14 <= 0xE && ((1 << v14) & 0x4015) != 0)
          {
            goto LABEL_175;
          }

          goto LABEL_186;
        }

        if (v9 == 1635083361 || v9 == 1635083378)
        {
          v8 = 32;
          goto LABEL_178;
        }

        if (v9 != 1635148648)
        {
          goto LABEL_186;
        }

        *&v32.mSelector = 0x676C6F6270617362;
        v32.mElement = 0;
        sub_2153AC(__p, a1, &v32);
LABEL_120:
        v16 = __p[0];
        v8 = (LODWORD(__p[1]) - LODWORD(__p[0])) & 0xFFFFFFFC;
        if (!__p[0])
        {
          goto LABEL_178;
        }

        goto LABEL_184;
      }

      if (v9 <= 1651861091)
      {
        if (v9 == 1650881394)
        {
          goto LABEL_178;
        }

        if (v9 != 1651664739)
        {
          v13 = 1651798898;
          goto LABEL_174;
        }

        goto LABEL_175;
      }

      if (v9 > 1668047202)
      {
        if (v9 == 1668047203)
        {
          goto LABEL_175;
        }

        v12 = 1668247661;
      }

      else
      {
        if (v9 == 1651861092)
        {
          goto LABEL_164;
        }

        v12 = 1667658618;
      }
    }

LABEL_159:
    if (v9 != v12)
    {
      goto LABEL_186;
    }

    goto LABEL_178;
  }

  return *(a1 + 956);
}

void sub_1B7CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_210C50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B80C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = 1;
  if (*a2 <= 1818850144)
  {
    if (v2 <= 1735354733)
    {
      if (v2 <= 1684434035)
      {
        if (v2 <= 1667330159)
        {
          if (v2 == 1634429294)
          {
            return v3;
          }

          v4 = 1634955892;
          goto LABEL_55;
        }

        if (v2 != 1667330160)
        {
          v4 = 1668049764;
          goto LABEL_55;
        }

        v6 = (*(*a1 + 184))(a1);
        if (v6)
        {
          goto LABEL_74;
        }

        return 0;
      }

      if (v2 > 1718839673)
      {
        if (v2 == 1718839674)
        {
          return v3;
        }

        v4 = 1718843939;
        goto LABEL_55;
      }

      if (v2 != 1684434036)
      {
        v4 = 1684629094;
        goto LABEL_55;
      }

      goto LABEL_48;
    }

    if (v2 <= 1768124269)
    {
      if (v2 > 1751412336)
      {
        if (v2 == 1751412337)
        {
          return v3;
        }

        v4 = 1751737454;
      }

      else
      {
        if (v2 == 1735354734)
        {
          return v3;
        }

        v4 = 1735356005;
      }

      goto LABEL_55;
    }

    if (v2 > 1818454125)
    {
      if (v2 == 1818454126)
      {
        v6 = (*(*a1 + 160))(a1);
        if (v6)
        {
          goto LABEL_74;
        }

        return 0;
      }

      if (v2 == 1818455662)
      {
        v6 = (*(*a1 + 176))(a1);
        if (v6)
        {
          goto LABEL_74;
        }

        return 0;
      }
    }

    else
    {
      if (v2 == 1768124270)
      {
        v6 = (*(*a1 + 152))(a1);
        if (v6)
        {
          goto LABEL_74;
        }

        return 0;
      }

      if (v2 == 1818452846)
      {
        v6 = (*(*a1 + 168))(a1);
        if (v6)
        {
          goto LABEL_74;
        }

        return 0;
      }
    }

    goto LABEL_56;
  }

  if (v2 <= 1870030193)
  {
    if (v2 <= 1819173228)
    {
      if (v2 <= 1818850925)
      {
        if (v2 == 1818850145)
        {
          return v3;
        }

        v4 = 1818850162;
        goto LABEL_55;
      }

      if (v2 == 1818850926)
      {
        return v3;
      }

      if (v2 != 1819107691)
      {
        goto LABEL_56;
      }

      v6 = (*(*a1 + 144))(a1);
      if (v6)
      {
        goto LABEL_74;
      }

      return 0;
    }

    if (v2 > 1836411235)
    {
      if (v2 != 1836411236)
      {
        v4 = 1869180523;
LABEL_55:
        if (v2 == v4)
        {
          return v3;
        }

        goto LABEL_56;
      }

      v6 = (*(*a1 + 200))(a1);
      if (v6)
      {
LABEL_74:
        CFRelease(v6);
        return 1;
      }

      return 0;
    }

    if (v2 == 1819173229)
    {
      v6 = (*(*a1 + 136))(a1);
      if (v6)
      {
        goto LABEL_74;
      }

      return 0;
    }

    v5 = 1819569763;
    goto LABEL_34;
  }

  if (v2 <= 1937009954)
  {
    if (v2 > 1936092275)
    {
      if (v2 == 1936092276)
      {
        return a2[1] == 1869968496;
      }

      if (v2 == 1936482681)
      {
LABEL_48:
        v10 = a2[1];
        return v10 == 1768845428 || v10 == 1869968496;
      }

LABEL_56:
      v12 = sub_1537C(a1, a2) == 0;
      return !v12;
    }

    if (v2 == 1870030194)
    {
      return v3;
    }

    v5 = 1935763060;
LABEL_34:
    if (v2 == v5)
    {
      v7 = a2[1];
      if (v7 == 1869968496)
      {
        v9 = a1[38];
        v8 = a1[39];
      }

      else
      {
        if (v7 != 1768845428)
        {
          return 0;
        }

        v9 = a1[35];
        v8 = a1[36];
      }

      v12 = ((v8 - v9) & 0x7FFFFFFF8) == 0;
      return !v12;
    }

    goto LABEL_56;
  }

  if (v2 > 1953653101)
  {
    if (v2 == 1953653102)
    {
      return v3;
    }

    if (v2 == 1969841184)
    {
      v6 = (*(*a1 + 192))(a1);
      if (v6)
      {
        goto LABEL_74;
      }

      return 0;
    }

    goto LABEL_56;
  }

  if (v2 != 1937009955)
  {
    v5 = 1937077093;
    goto LABEL_34;
  }

  v13 = a2[1];
  v3 = 1;
  if (v13 != 1735159650 && v13 != 1768845428 && v13 != 1869968496)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1BD4C(void *a1, int *a2)
{
  sub_27A4();
  v22 = (*(qword_6E94F8 + 16))();
  v4 = *a2;
  v5 = 1;
  if (*a2 <= 1701733223)
  {
    if (v4 <= 1668247660)
    {
      if (v4 > 1635083360)
      {
        if (v4 > 1650881393)
        {
          if (v4 <= 1651798897)
          {
            if (v4 == 1650881394)
            {
              goto LABEL_139;
            }

            if (v4 != 1651664739)
            {
              v6 = 1651798132;
              goto LABEL_158;
            }
          }

          else
          {
            if (v4 > 1667658617)
            {
              if (v4 != 1667658618)
              {
                v6 = 1668047203;
                goto LABEL_158;
              }

              goto LABEL_139;
            }

            if (v4 != 1651798898)
            {
              v9 = 1651861092;
              goto LABEL_169;
            }
          }

          goto LABEL_159;
        }

        if (v4 > 1635152992)
        {
          v10 = v4 - 1635152993;
          if (v10 <= 0xE && ((1 << v10) & 0x4015) != 0)
          {
            goto LABEL_159;
          }

          goto LABEL_170;
        }

        if (v4 != 1635083361 && v4 != 1635083378)
        {
          v7 = 1635148648;
          goto LABEL_138;
        }

        goto LABEL_162;
      }

      if (v4 <= 1633973867)
      {
        if (v4 <= 1633904998)
        {
          if (v4 == 1165513555 || v4 == 1633776747)
          {
            goto LABEL_159;
          }

          v8 = 25449;
        }

        else
        {
          if (v4 > 1633907569)
          {
            if (v4 == 1633907570)
            {
              goto LABEL_159;
            }

            v9 = 1633970532;
LABEL_169:
            if (v4 == v9)
            {
              goto LABEL_162;
            }

            goto LABEL_170;
          }

          if (v4 == 1633904999)
          {
            goto LABEL_159;
          }

          v8 = 28525;
        }

        v6 = v8 | 0x61630000;
        goto LABEL_158;
      }

      if (v4 > 1634692198)
      {
        if (v4 > 1634890858)
        {
          if (v4 != 1634890859)
          {
            v6 = 1635020147;
            goto LABEL_158;
          }
        }

        else if (v4 != 1634692199)
        {
          v6 = 1634755428;
          goto LABEL_158;
        }

        goto LABEL_159;
      }

      if (v4 == 1633973868)
      {
        goto LABEL_159;
      }

      if (v4 != 1634035054)
      {
        v7 = 1634300531;
        goto LABEL_138;
      }

      v18 = a2[1];
      v17 = v18 == 1869968496 || v18 == 1768845428;
LABEL_177:
      v5 = v17;
      goto LABEL_162;
    }

    if (v4 > 1684500593)
    {
      if (v4 <= 1685287010)
      {
        if (v4 > 1685087595)
        {
          if ((v4 - 1685278561) <= 0x11 && ((1 << (v4 - 97)) & 0x20003) != 0 || v4 == 1685087596)
          {
            goto LABEL_159;
          }

          v6 = 1685276755;
LABEL_158:
          if (v4 == v6)
          {
            goto LABEL_159;
          }

LABEL_170:
          v15 = sub_1FF40(a1, a2);
          goto LABEL_161;
        }

        if (v4 == 1684500594 || v4 == 1684893796)
        {
          goto LABEL_159;
        }

        v7 = 1685025633;
        goto LABEL_138;
      }

      if (v4 > 1685288050)
      {
        if (v4 == 1685288051)
        {
          goto LABEL_139;
        }

        if (v4 == 1685483630)
        {
          goto LABEL_159;
        }

        v11 = 1685484390;
        goto LABEL_165;
      }

      if ((v4 - 1685287011) < 2)
      {
        goto LABEL_159;
      }

      if (v4 != 1685287523)
      {
        goto LABEL_170;
      }

      v12 = a2[1];
      v13 = 1768845428;
      goto LABEL_176;
    }

    if (v4 <= 1684236337)
    {
      if (v4 <= 1668705647)
      {
        if (v4 == 1668247661)
        {
          v14 = (*a1 + 48);
          goto LABEL_160;
        }

        if (v4 != 1668443504)
        {
          v9 = 1668577648;
          goto LABEL_169;
        }

        goto LABEL_171;
      }

      if (v4 > 1684104050)
      {
        if (v4 != 1684104051)
        {
          v6 = 1684107364;
          goto LABEL_158;
        }

        goto LABEL_139;
      }

      if (v4 == 1668705648)
      {
        goto LABEL_171;
      }

      v7 = 1684104048;
    }

    else
    {
      if (v4 <= 1684370275)
      {
        if (v4 <= 1684304755)
        {
          if (v4 == 1684236338)
          {
            goto LABEL_139;
          }

          v7 = 1684238451;
          goto LABEL_138;
        }

        if (v4 != 1684304756)
        {
          v6 = 1684365924;
          goto LABEL_158;
        }

LABEL_175:
        v12 = a2[1];
        v13 = 1869968496;
LABEL_176:
        v17 = v12 == v13;
        goto LABEL_177;
      }

      if (v4 > 1684498543)
      {
        if (v4 != 1684498544)
        {
          v6 = 1684500589;
          goto LABEL_158;
        }

        goto LABEL_139;
      }

      if (v4 == 1684370276)
      {
        goto LABEL_159;
      }

      v7 = 1684498541;
    }

LABEL_138:
    if (v4 != v7)
    {
      goto LABEL_170;
    }

    goto LABEL_139;
  }

  if (v4 > 1919774834)
  {
    if (v4 > 1953002092)
    {
      if (v4 <= 1983997010)
      {
        if (v4 > 1969318243)
        {
          if (v4 > 1970303086)
          {
            if (v4 != 1970303087)
            {
              v6 = 1983996971;
              goto LABEL_158;
            }
          }

          else if (v4 != 1969318244)
          {
            v6 = 1969844082;
            goto LABEL_158;
          }

          goto LABEL_139;
        }

        if (v4 != 1953002093)
        {
          if (v4 != 1953002354)
          {
            v6 = 1953719148;
            goto LABEL_158;
          }

          goto LABEL_139;
        }

        goto LABEL_159;
      }

      if (v4 <= 1986294895)
      {
        if (v4 <= 1986225267)
        {
          if (v4 == 1983997011)
          {
            goto LABEL_159;
          }

          v7 = 1986225266;
          goto LABEL_138;
        }

        if (v4 == 1986225268)
        {
          goto LABEL_139;
        }

        v11 = 1986225518;
LABEL_165:
        if (v4 != v11)
        {
          goto LABEL_170;
        }

        goto LABEL_171;
      }

      if (v4 <= 2020111982)
      {
        if (v4 != 1986294896)
        {
          v6 = 1986361444;
          goto LABEL_158;
        }

        goto LABEL_139;
      }

      if (v4 != 2020111983 && v4 != 2021027692)
      {
        goto LABEL_170;
      }

      goto LABEL_175;
    }

    if (v4 <= 1936878959)
    {
      if (v4 > 1935962991)
      {
        if (v4 > 1936876402)
        {
          if (v4 != 1936876403)
          {
            v6 = 1936876644;
            goto LABEL_158;
          }

          goto LABEL_139;
        }

        if (v4 != 1935962992)
        {
          v6 = 1936744803;
          goto LABEL_158;
        }

        goto LABEL_159;
      }

      if (v4 != 1919774835)
      {
        if (v4 != 1920165219)
        {
          v6 = 1935762281;
          goto LABEL_158;
        }

        goto LABEL_139;
      }

      goto LABEL_171;
    }

    if (v4 > 1937138531)
    {
      if (v4 > 1952997987)
      {
        if (v4 == 1952997988)
        {
          goto LABEL_159;
        }

        v7 = 1952998002;
        goto LABEL_138;
      }

      if (v4 == 1937138532)
      {
        goto LABEL_159;
      }

      v11 = 1937208929;
      goto LABEL_165;
    }

    if (v4 == 1936878960)
    {
      goto LABEL_171;
    }

    if (v4 == 1936879204)
    {
      goto LABEL_159;
    }

    v7 = 1936946787;
    goto LABEL_138;
  }

  if (v4 > 1853059618)
  {
    if (v4 > 1886216546)
    {
      if (v4 <= 1886807153)
      {
        if (v4 <= 1886413425)
        {
          if (v4 != 1886216547)
          {
            v6 = 1886413412;
            goto LABEL_158;
          }

          goto LABEL_139;
        }

        if (v4 != 1886413426)
        {
          v6 = 1886807139;
          goto LABEL_158;
        }

LABEL_139:
        v5 = 0;
        goto LABEL_162;
      }

      if (v4 <= 1918987631)
      {
        if (v4 != 1886807154)
        {
          v9 = 1902539642;
          goto LABEL_169;
        }

LABEL_159:
        a1 = a1[109];
        v14 = (*a1 + 24);
LABEL_160:
        v15 = (*v14)(a1, a2);
LABEL_161:
        v5 = v15;
        goto LABEL_162;
      }

      if (v4 != 1918987632)
      {
        v9 = 1919773028;
        goto LABEL_169;
      }

LABEL_171:
      a1 = a1[99];
      if (!a1)
      {
        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "VirtualAudio_Device.cpp";
          v25 = 1024;
          v26 = 2273;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v14 = (*a1 + 56);
      goto LABEL_160;
    }

    if (v4 > 1869575793)
    {
      if (v4 > 1885434481)
      {
        if (v4 != 1885434482)
        {
          v6 = 1885631346;
          goto LABEL_158;
        }

        goto LABEL_139;
      }

      if (v4 == 1869575794)
      {
        goto LABEL_159;
      }

      v7 = 1869838183;
      goto LABEL_138;
    }

    if (v4 == 1853059619)
    {
      goto LABEL_139;
    }

    if (v4 != 1853059700)
    {
      v6 = 1869574756;
      goto LABEL_158;
    }

    v17 = a1[54] == 0;
    goto LABEL_177;
  }

  if (v4 > 1752657011)
  {
    if (v4 <= 1835888483)
    {
      if (v4 != 1752657012 && v4 != 1769302372)
      {
        v6 = 1818326127;
        goto LABEL_158;
      }

      goto LABEL_139;
    }

    if (v4 <= 1852012898)
    {
      if (v4 == 1835888484)
      {
        goto LABEL_159;
      }

      v7 = 1836348005;
      goto LABEL_138;
    }

    if (v4 != 1852012899)
    {
      v7 = 1852729711;
      goto LABEL_138;
    }
  }

  else
  {
    if (v4 <= 1718383986)
    {
      if (v4 == 1701733224)
      {
        goto LABEL_139;
      }

      if (v4 != 1702248804)
      {
        v6 = 1702392685;
        goto LABEL_158;
      }

      goto LABEL_159;
    }

    if (v4 > 1719165554)
    {
      if (v4 == 1719165555)
      {
        goto LABEL_139;
      }

      v7 = 1735682404;
      goto LABEL_138;
    }

    if (v4 != 1718383987)
    {
      v9 = 1718641517;
      goto LABEL_169;
    }
  }

LABEL_162:
  sub_210C50(&v22);
  return v5;
}

void sub_1C918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

_BYTE *sub_1C940(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  sub_27A4();
  v151 = (*(qword_6E94F8 + 16))();
  if (((*(*a1 + 48))(a1, a2) & 1) == 0)
  {
    v115 = sub_5544(14);
    v42 = 2003332927;
    if (*v115 && os_log_type_enabled(*v115, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v147 = a2[2];
      sub_22CE0(&v150);
    }

    goto LABEL_354;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v116 = sub_5544(14);
    v42 = 561211770;
    if (*v116 && os_log_type_enabled(*v116, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v147 = a2[2];
      sub_22CE0(&v150);
    }

    goto LABEL_354;
  }

  if (!a6)
  {
    v117 = sub_5544(14);
    v42 = 561211770;
    if (*v117 && os_log_type_enabled(*v117, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v147 = a2[2];
      sub_22CE0(&v150);
    }

    goto LABEL_354;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v118 = sub_5544(14);
    v42 = 1852797029;
    if (*v118 && os_log_type_enabled(*v118, OS_LOG_TYPE_ERROR))
    {
      __p = *a2;
      v147 = a2[2];
      sub_22CE0(&v150);
    }

    goto LABEL_354;
  }

  v14 = *a2;
  if (*a2 == 1836414053)
  {
    v15 = sub_5544(1);
    v16 = sub_5544(39);
    v17 = 0;
    *buf = 0x100000002;
    v18 = *(v15 + 8);
    while (1)
    {
      v19 = *&buf[v17];
      if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
      {
        break;
      }

      v17 += 4;
      if (v17 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_12:
    v20 = *v15;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v148 = *a2;
      v149 = a2[2];
      sub_22CE0(&v150);
    }

    v14 = *a2;
  }

  if (v14 == 1987013741)
  {
    v21 = sub_5544(1);
    v22 = sub_5544(39);
    v23 = 0;
    *buf = 0x100000002;
    v24 = *(v21 + 8);
    while (1)
    {
      v25 = *&buf[v23];
      if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
      {
        break;
      }

      v23 += 4;
      if (v23 == 8)
      {
        goto LABEL_23;
      }
    }

    if ((v24 & v25) == 0)
    {
      v21 = v22;
    }

LABEL_23:
    v26 = *v21;
    if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v148 = *a2;
      v149 = a2[2];
      sub_22CE0(&v150);
    }
  }

  v27 = *a2;
  if (*a2 == 1836478308)
  {
    v28 = sub_5544(1);
    v29 = sub_5544(39);
    v30 = 0;
    *buf = 0x100000002;
    v31 = *(v28 + 8);
    while (1)
    {
      v32 = *&buf[v30];
      if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
      {
        break;
      }

      v30 += 4;
      if (v30 == 8)
      {
        goto LABEL_33;
      }
    }

    if ((v31 & v32) == 0)
    {
      v28 = v29;
    }

LABEL_33:
    v33 = *v28;
    if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v148 = *a2;
      v149 = a2[2];
      sub_22CE0(&v150);
    }

    v27 = *a2;
  }

  if (v27 <= 1685287522)
  {
    if (v27 > 1651861091)
    {
      if (v27 <= 1684500588)
      {
        if (v27 > 1668705647)
        {
          if (v27 > 1684304755)
          {
            if (v27 != 1684304756)
            {
              if (v27 != 1684365924)
              {
                v34 = 1684370276;
                goto LABEL_187;
              }

LABEL_188:
              if ((*(*a1 + 64))(a1, a2, a3, a4) == a5)
              {
                goto LABEL_189;
              }

              v119 = sub_5544(14);
              v42 = 561211770;
              if (*v119 && os_log_type_enabled(*v119, OS_LOG_TYPE_ERROR))
              {
                __p = *a2;
                v147 = a2[2];
                sub_22CE0(&v150);
              }

LABEL_354:
              exception = __cxa_allocate_exception(0x10uLL);
              *exception = &off_6DDDD0;
              exception[2] = v42;
            }

LABEL_196:
            if ((*(*a1 + 64))(a1, a2, a3, a4) == a5)
            {
              goto LABEL_189;
            }

            v74 = sub_5544(14);
            v42 = 561211770;
            if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
            {
              __p = *a2;
              v147 = a2[2];
              sub_22CE0(&v150);
            }

            goto LABEL_354;
          }

          if (v27 != 1668705648)
          {
            v34 = 1684107364;
            goto LABEL_187;
          }

          goto LABEL_164;
        }

        if (v27 <= 1668443503)
        {
          if (v27 == 1651861092)
          {
            v75 = *a6;
            v76 = (*(*a1 + 648))(a1);
            v77 = sub_5544(1);
            LODWORD(v7) = vcvtad_u64_f64(v75 * v76);
            v78 = *v77;
            if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = "VirtualAudio_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3179;
              *&buf[18] = 2048;
              *&buf[20] = v75;
              *&buf[28] = 1024;
              *&buf[30] = v7;
              *&buf[34] = 2048;
              *&buf[36] = v76;
              _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client request to set buffer duration of %f seconds (equivalent to frame size of %u with sample rate of %f)", buf, 0x2Cu);
            }

            (*(*a1 + 504))(a1, v7);
            sub_EA448(a1);
          }

          else
          {
            if (v27 != 1668247661)
            {
              goto LABEL_200;
            }

            if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
            {
              v127 = sub_5544(14);
              v42 = 561211770;
              if (*v127 && os_log_type_enabled(*v127, OS_LOG_TYPE_ERROR))
              {
                __p = *a2;
                v147 = a2[2];
                sub_22CE0(&v150);
              }

              goto LABEL_354;
            }

            (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 2019976293, 0, *a6);
          }

          goto LABEL_190;
        }

        if (v27 != 1668443504)
        {
          if (v27 != 1668577648)
          {
            goto LABEL_200;
          }

          if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
          {
            v129 = sub_5544(14);
            v42 = 561211770;
            if (*v129 && os_log_type_enabled(*v129, OS_LOG_TYPE_ERROR))
            {
              __p = *a2;
              v147 = a2[2];
              sub_22CE0(&v150);
            }

            goto LABEL_354;
          }

          *(a1 + 984) = *a6;
          goto LABEL_190;
        }

LABEL_164:
        v65 = *(a1 + 792);
        if (v65)
        {
          (*(*v65 + 80))(v65, a2, a3, a4, a5, a6, 0);
          goto LABEL_190;
        }

        v120 = sub_5544(14);
        v121 = *v120;
        if (*v120 && os_log_type_enabled(*v120, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3166;
          _os_log_impl(&dword_0, v121, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

LABEL_310:
        v124 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v124, "Precondition failure.");
      }

      if (v27 <= 1685087595)
      {
        if (v27 == 1684500589 || v27 == 1684500594)
        {
          goto LABEL_188;
        }

        v34 = 1684893796;
      }

      else
      {
        if ((v27 - 1685278561) <= 0x11 && ((1 << (v27 - 97)) & 0x20003) != 0 || (v27 - 1685287011) < 2)
        {
          goto LABEL_188;
        }

        v34 = 1685087596;
      }

LABEL_187:
      if (v27 == v34)
      {
        goto LABEL_188;
      }

LABEL_200:
      sub_21054(a1, a2, a3, a4, a5, a6);
      goto LABEL_190;
    }

    if (v27 <= 1634890858)
    {
      if (v27 > 1633970531)
      {
        if (v27 <= 1634035053)
        {
          if (v27 == 1633970532)
          {
            goto LABEL_188;
          }

          v34 = 1633973868;
          goto LABEL_187;
        }

        if (v27 != 1634035054)
        {
          if (v27 == 1634692199)
          {
            goto LABEL_188;
          }

          v34 = 1634755428;
          goto LABEL_187;
        }

        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v133 = sub_5544(14);
          v42 = 561211770;
          if (*v133 && os_log_type_enabled(*v133, OS_LOG_TYPE_ERROR))
          {
            __p = *a2;
            v147 = a2[2];
            sub_22CE0(&v150);
          }

          goto LABEL_354;
        }

        v86 = a2[1];
        if (v86 == 1768845428 || v86 == 1869968496)
        {
          v87 = *a6;
          v88 = sub_5544(1);
          v89 = sub_5544(25);
          v90 = 0;
          *buf = 0x100000002;
          v91 = *(v88 + 8);
          while (1)
          {
            v92 = *&buf[v90];
            if (((v91 & v92) != 0) != ((*(v89 + 8) & v92) != 0))
            {
              break;
            }

            v90 += 4;
            if (v90 == 8)
            {
              goto LABEL_249;
            }
          }

          if ((v91 & v92) == 0)
          {
            v88 = v89;
          }

LABEL_249:
          v102 = *v88;
          if (v102 && os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            v103 = "disable";
            if (v87 == 1)
            {
              v103 = "enable";
            }

            *&buf[4] = "VirtualAudio_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3088;
            *buf = 136315906;
            *&buf[18] = 2080;
            *&buf[20] = v103;
            if (v86 == 1768845428)
            {
              v104 = "input";
            }

            else
            {
              v104 = "output";
            }

            *&buf[28] = 2080;
            *&buf[30] = v104;
            _os_log_impl(&dword_0, v102, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client request to %s %s audio enhancement processing", buf, 0x26u);
          }

          memset(buf, 0, 24);
          sub_179498(a1, v86 == 1768845428, v87 == 1, buf);
          if (*buf != *&buf[8])
          {
            sub_49C48(&v150);
            sub_DED5C(*buf, *&buf[8]);
            sub_1DB848(&v150.__r_.__value_.__l.__data_, 0);
          }

          goto LABEL_259;
        }

        v140 = sub_5544(14);
        v42 = 2003332927;
        v113 = *v140;
        if (!*v140 || !os_log_type_enabled(*v140, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_354;
        }

        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3083;
        v114 = "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid property scope for kVirtualAudioDevicePropertyAudioEnhancementProcessingIsEnabled";
LABEL_287:
        _os_log_impl(&dword_0, v113, OS_LOG_TYPE_ERROR, v114, buf, 0x12u);
        goto LABEL_354;
      }

      if (v27 > 1633906540)
      {
        if (v27 == 1633906541)
        {
          goto LABEL_188;
        }

        v43 = 29554;
      }

      else
      {
        if (v27 == 1633776747)
        {
LABEL_171:
          if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
          {
            v66 = sub_5544(14);
            v42 = 561211770;
            if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
            {
              __p = *a2;
              v147 = a2[2];
              sub_22CE0(&v150);
            }

            goto LABEL_354;
          }

          goto LABEL_189;
        }

        v43 = 26983;
      }

      if (v27 != (v43 | 0x61630000))
      {
        goto LABEL_200;
      }

      goto LABEL_171;
    }

    if (v27 > 1635152992)
    {
      if ((v27 - 1635152993) <= 0xE && ((1 << (v27 - 97)) & 0x4015) != 0)
      {
        goto LABEL_188;
      }

      v34 = 1651664739;
      goto LABEL_187;
    }

    switch(v27)
    {
      case 1634890859:
        goto LABEL_171;
      case 1635083361:
        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v134 = sub_5544(14);
          v42 = 561211770;
          if (*v134 && os_log_type_enabled(*v134, OS_LOG_TYPE_ERROR))
          {
            __p = *a2;
            v147 = a2[2];
            sub_22CE0(&v150);
          }

          goto LABEL_354;
        }

        v93 = *(a6 + 1);
        *buf = *a6;
        *&buf[16] = v93;
        sub_213648(&__p, a1);
        v94 = *(a1 + 872);
        if (sub_213830(*(v94 + 288), *(v94 + 292)) & 1) == 0 && (sub_21390C(v94) & 1) == 0 && (sub_213A58(a1 + 960, buf))
        {
LABEL_233:
          sub_213C14();
          v95 = *(a1 + 8);
          v96 = *(a1 + 872);
          v97 = v96[36];
          (*(*v96 + 504))(&v150);
          v98 = sub_213C90(v97, 0, &v150);
          sub_1EA050(v95, (a1 + 960), v98, *(*(a1 + 872) + 292));
          sub_477A0(v150.__r_.__value_.__l.__size_);
          sub_1C8C94(a1);
        }

        break;
      case 1635083378:
        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v128 = sub_5544(14);
          v42 = 561211770;
          if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_ERROR))
          {
            __p = *a2;
            v147 = a2[2];
            sub_22CE0(&v150);
          }

          goto LABEL_354;
        }

        v63 = *(a6 + 1);
        *buf = *a6;
        *&buf[16] = v63;
        sub_213F30(&__p, a1);
        v64 = *(a1 + 872);
        if ((sub_213830(*(v64 + 288), *(v64 + 292)) & 1) == 0 && (sub_21390C(v64) & 1) == 0 && sub_214118((a1 + 960), buf))
        {
          goto LABEL_233;
        }

        break;
      default:
        goto LABEL_200;
    }

    sub_213D94(&__p);
    goto LABEL_190;
  }

  if (v27 > 1918987631)
  {
    if (v27 <= 1952997987)
    {
      if (v27 <= 1936876643)
      {
        if (v27 > 1919774834)
        {
          if (v27 != 1919774835)
          {
            v34 = 1935762281;
            goto LABEL_187;
          }
        }

        else if (v27 != 1918987632)
        {
          v34 = 1919773028;
          goto LABEL_187;
        }
      }

      else
      {
        if (v27 <= 1936879203)
        {
          if (v27 == 1936876644)
          {
            if ((*(*a1 + 64))(a1, a2, a3, a4) <= a5)
            {
              goto LABEL_189;
            }

            v79 = sub_5544(14);
            v42 = 561211770;
            if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
            {
              __p = *a2;
              v147 = a2[2];
              sub_22CE0(&v150);
            }

            goto LABEL_354;
          }

          v35 = 1936878960;
        }

        else
        {
          if (v27 == 1936879204)
          {
            if ((*(*a1 + 64))(a1, a2, a3, a4) <= a5)
            {
              goto LABEL_189;
            }

            v85 = sub_5544(14);
            v42 = 561211770;
            if (*v85 && os_log_type_enabled(*v85, OS_LOG_TYPE_ERROR))
            {
              __p = *a2;
              v147 = a2[2];
              sub_22CE0(&v150);
            }

            goto LABEL_354;
          }

          if (v27 == 1937138532)
          {
            goto LABEL_188;
          }

          v35 = 1937208929;
        }

        if (v27 != v35)
        {
          goto LABEL_200;
        }
      }

      goto LABEL_164;
    }

    if (v27 <= 1970303086)
    {
      if (v27 > 1953719147)
      {
        if (v27 == 1953719148)
        {
          goto LABEL_188;
        }

        v34 = 1969844082;
      }

      else
      {
        if (v27 == 1952997988)
        {
          goto LABEL_188;
        }

        v34 = 1953002093;
      }

      goto LABEL_187;
    }

    if (v27 <= 1986361443)
    {
      if (v27 == 1970303087)
      {
        goto LABEL_190;
      }

      v34 = 1983996971;
      goto LABEL_187;
    }

    if (v27 == 1986361444)
    {
      goto LABEL_188;
    }

    if (v27 == 2020111983)
    {
      v80 = sub_5544(1);
      v81 = sub_5544(39);
      v82 = 0;
      *buf = 0x100000002;
      v83 = *(v80 + 8);
      while (1)
      {
        v84 = *&buf[v82];
        if (((v83 & v84) != 0) != ((*(v81 + 8) & v84) != 0))
        {
          break;
        }

        v82 += 4;
        if (v82 == 8)
        {
          goto LABEL_237;
        }
      }

      if ((v83 & v84) == 0)
      {
        v80 = v81;
      }

LABEL_237:
      v99 = *v80;
      if (v99 && os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = *a6;
        (*(*a1 + 112))(&v150, a1);
        v101 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3130;
        *&buf[18] = 2048;
        *&buf[20] = v100;
        *&buf[28] = 2080;
        *&buf[30] = v101;
        _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client registering external hardware volume handler %p on VAD '%s'.", buf, 0x26u);
        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }
      }

      if (atomic_load_explicit(&qword_6E98B8, memory_order_acquire) != -1)
      {
        *buf = &__p;
        v150.__r_.__value_.__r.__words[0] = buf;
        std::__call_once(&qword_6E98B8, &v150, sub_214608);
      }

      *qword_6E98C0 = *a6;
      goto LABEL_190;
    }

    if (v27 != 2021027692)
    {
      goto LABEL_200;
    }

    if (a2[1] == 1869968496)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v135 = sub_5544(14);
        v42 = 561211770;
        if (*v135 && os_log_type_enabled(*v135, OS_LOG_TYPE_ERROR))
        {
          __p = *a2;
          v147 = a2[2];
          sub_22CE0(&v150);
        }

        goto LABEL_354;
      }

      if (*(a1 + 792))
      {
        v36 = sub_5544(1);
        v37 = sub_5544(39);
        v38 = 0;
        *buf = 0x100000002;
        v39 = *(v36 + 8);
        while (1)
        {
          v40 = *&buf[v38];
          if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
          {
            break;
          }

          v38 += 4;
          if (v38 == 8)
          {
            goto LABEL_276;
          }
        }

        if ((v39 & v40) == 0)
        {
          v36 = v37;
        }

LABEL_276:
        v109 = *v36;
        if (v109 && os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v110 = *a6;
          (*(*a1 + 112))(&v150, a1);
          v111 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3119;
          *&buf[18] = 2048;
          *&buf[20] = v110;
          *&buf[28] = 2080;
          *&buf[30] = v111;
          _os_log_impl(&dword_0, v109, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client registering external volume handler %p on VAD '%s'.", buf, 0x26u);
          if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v150.__r_.__value_.__l.__data_);
          }
        }

        sub_20FEBC(*(a1 + 792), *a6, *(a6 + 1));
        goto LABEL_190;
      }

      v112 = sub_5544(14);
      v113 = *v112;
      v42 = 2003329396;
      if (!*v112 || !os_log_type_enabled(*v112, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_354;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3114;
      v114 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mOutputMasterVolumeControl is NULL]: attempt to register external volume handler when output master volume control is NULL";
    }

    else
    {
      v125 = sub_5544(14);
      v42 = 1970171760;
      v113 = *v125;
      if (!*v125 || !os_log_type_enabled(*v125, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_354;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3112;
      v114 = "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): an external volume handler is only supported for output";
    }

    goto LABEL_287;
  }

  if (v27 <= 1852012898)
  {
    if (v27 <= 1718383986)
    {
      if (v27 > 1702248803)
      {
        if (v27 == 1702248804)
        {
          goto LABEL_188;
        }

        v34 = 1702392685;
        goto LABEL_187;
      }

      if (v27 == 1685287523)
      {
        goto LABEL_196;
      }

      if (v27 != 1685483630)
      {
        goto LABEL_200;
      }

      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v41 = sub_5544(14);
        v42 = 561211770;
        if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          __p = *a2;
          v147 = a2[2];
          sub_22CE0(&v150);
        }

        goto LABEL_354;
      }

LABEL_189:
      (*(**(a1 + 872) + 48))(*(a1 + 872), a2, a3, a4, a5, a6);
      goto LABEL_190;
    }

    if (v27 > 1818326126)
    {
      if (v27 == 1818326127)
      {
        goto LABEL_188;
      }

      if (v27 != 1835888484)
      {
        goto LABEL_200;
      }

      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v130 = sub_5544(14);
        v42 = 561211770;
        if (*v130 && os_log_type_enabled(*v130, OS_LOG_TYPE_ERROR))
        {
          __p = *a2;
          v147 = a2[2];
          sub_22CE0(&v150);
        }

        goto LABEL_354;
      }

      (*(**(a1 + 872) + 48))(*(a1 + 872), a2, a3, a4, a5, a6);
      memset(buf, 0, 24);
      v67 = *(a1 + 8);
      v150.__r_.__value_.__r.__words[0] = 0x696E70746C746E63;
      LODWORD(v150.__r_.__value_.__r.__words[1]) = 0;
      v68 = sub_163EF0(buf, v67);
      sub_172ED8(v68, &v150);
      sub_DED5C(*buf, *&buf[8]);
LABEL_259:
      v150.__r_.__value_.__r.__words[0] = buf;
      sub_DECD0(&v150);
      goto LABEL_190;
    }

    if (v27 == 1718383987)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) == a5)
      {
        if (((*(**(a1 + 872) + 16))(*(a1 + 872), a2) & 1) == 0)
        {
          goto LABEL_190;
        }

        goto LABEL_189;
      }

      v132 = sub_5544(14);
      v42 = 561211770;
      if (*v132 && os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        v147 = a2[2];
        sub_22CE0(&v150);
      }

      goto LABEL_354;
    }

    if (v27 != 1718641517)
    {
      goto LABEL_200;
    }

    if (sub_42A530(a1 + 464) || sub_42A530(a1 + 568))
    {
      v122 = sub_5544(14);
      v123 = *v122;
      if (*v122 && os_log_type_enabled(*v122, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3187;
        _os_log_impl(&dword_0, v123, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      goto LABEL_310;
    }

    v51 = sub_5544(1);
    v52 = *v51;
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
    {
      v53 = "true";
      v54 = *a6;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *buf = 136315650;
      if (!v54)
      {
        v53 = "false";
      }

      *&buf[12] = 1024;
      *&buf[14] = 3190;
      *&buf[18] = 2080;
      *&buf[20] = v53;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client request to set force LPCM to %s", buf, 0x1Cu);
    }

    v55 = *(a1 + 312) - *(a1 + 304);
    if ((v55 & 0x7FFFFFFF8) != 0)
    {
      sub_212F34(&__p, a1);
      v56 = a5;
      if (sub_42A530(a1 + 464) || sub_42A530(a1 + 568))
      {
        v57 = 0;
        memset(&v150, 0, sizeof(v150));
        v58 = (v55 >> 3);
        while (1)
        {
          v59 = *(a1 + 304);
          if (v57 >= (*(a1 + 312) - v59) >> 3)
          {
            v60 = 0;
          }

          else
          {
            v60 = *(v59 + 8 * v57);
          }

          (*(*v60 + 80))(v60, a2, a3, a4, v56, a6, a7);
          v61 = sub_5544(1);
          v62 = *v61;
          if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3209;
            *&buf[18] = 2048;
            *&buf[20] = v60;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Refreshing output stream %p for force LPCM stream preference change.", buf, 0x1Cu);
          }

          sub_23B68C(v60, &v150);
          if (v58 == ++v57)
          {
            sub_13738C(*(a1 + 440));
          }
        }
      }

      v142 = sub_5544(14);
      v143 = *v142;
      if (*v142 && os_log_type_enabled(*v142, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3198;
        _os_log_impl(&dword_0, v143, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
      }

      v144 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v144, "Invariant failure.");
    }
  }

  else if (v27 <= 1885631345)
  {
    if (v27 > 1869574755)
    {
      if (v27 == 1869574756)
      {
        goto LABEL_188;
      }

      v34 = 1869575794;
      goto LABEL_187;
    }

    if (v27 == 1852012899)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) == a5)
      {
        a3 = 0;
        a4 = 0;
        goto LABEL_189;
      }

      v131 = sub_5544(14);
      v42 = 561211770;
      if (*v131 && os_log_type_enabled(*v131, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        v147 = a2[2];
        sub_22CE0(&v150);
      }

      goto LABEL_354;
    }

    if (v27 != 1853059700)
    {
      goto LABEL_200;
    }

    v44 = *a6;
    kdebug_trace();
    if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
    {
      v136 = sub_5544(14);
      v42 = 561211770;
      if (*v136 && os_log_type_enabled(*v136, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        v147 = a2[2];
        sub_22CE0(&v150);
      }

      goto LABEL_354;
    }

    v45 = *a6;
    v46 = sub_5544(1);
    v47 = sub_5544(37);
    v48 = 0;
    *buf = 0x100000002;
    v49 = *(v46 + 8);
    while (1)
    {
      v50 = *&buf[v48];
      if (((v49 & v50) != 0) != ((*(v47 + 8) & v50) != 0))
      {
        break;
      }

      v48 += 4;
      if (v48 == 8)
      {
        goto LABEL_262;
      }
    }

    if ((v49 & v50) == 0)
    {
      v46 = v47;
    }

LABEL_262:
    v105 = *v46;
    if (v105 && os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      __p = *(a1 + 384);
      sub_68108(&v150, &__p);
      v106 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3046;
      *&buf[18] = 2048;
      *&buf[20] = v45;
      *&buf[28] = 2080;
      *&buf[30] = v106;
      _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client request to set nominal sample rate to %f on VAD: '%s'.", buf, 0x26u);
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }
    }

    if (sub_B4754(*(a1 + 304), *(a1 + 312)) && sub_212ECC(*(a1 + 872)))
    {
      v45 = v45 * 16.0;
    }

    v107 = a2[1];
    if (!sub_D72B0(a1, v45))
    {
      v137 = sub_5544(1);
      v138 = *v137;
      if (*v137 && os_log_type_enabled(*v137, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3055;
        *&buf[18] = 2048;
        *&buf[20] = v45;
        _os_log_impl(&dword_0, v138, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempt to set unsupported value for kAudioDevicePropertyNominalSampleRate (%f). Poor form but not likely a serious issue. Quietly returning failure.", buf, 0x1Cu);
      }

      v139 = __cxa_allocate_exception(0x10uLL);
      *v139 = &off_6DDDD0;
      v139[2] = 560226676;
    }

    sub_EA2C8(a1, v45);
    sub_EA448(a1);
    v108 = *a6;
    kdebug_trace();
  }

  else
  {
    if (v27 <= 1886807138)
    {
      if (v27 == 1885631346)
      {
        goto LABEL_188;
      }

      v34 = 1886413412;
      goto LABEL_187;
    }

    if (v27 == 1886807139 || v27 == 1886807154)
    {
      goto LABEL_188;
    }

    if (v27 != 1902539642)
    {
      goto LABEL_200;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
    {
      v126 = sub_5544(14);
      v42 = 561211770;
      if (*v126 && os_log_type_enabled(*v126, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        v147 = a2[2];
        sub_22CE0(&v150);
      }

      goto LABEL_354;
    }

    (*(*a1 + 512))(a1, *a6);
  }

LABEL_190:
  if (*a2 == 1987013741)
  {
    if (a2[2])
    {
      v69 = sub_5544(1);
      v70 = *v69;
      if (*v69)
      {
        if (os_log_type_enabled(*v69, OS_LOG_TYPE_DEBUG))
        {
          v71 = *a6;
          v72 = a2[2];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3333;
          *&buf[18] = 2048;
          *&buf[20] = v71;
          *&buf[28] = 1024;
          *&buf[30] = v72;
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d Applying Individual volume %f to %u", buf, 0x22u);
        }
      }
    }
  }

  return sub_210C50(&v151);
}

void sub_1FCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_210C50(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1FF40(uint64_t a1, int *a2)
{
  result = 0;
  v4 = *a2;
  if (*a2 > 1818455661)
  {
    if (v4 <= 1870030193)
    {
      if (v4 <= 1819173228)
      {
        v7 = v4 == 1818455662 || v4 == 1818850926;
        v8 = 1819107691;
        goto LABEL_34;
      }

      if (v4 <= 1836411235)
      {
        if (v4 == 1819173229)
        {
          return result;
        }

        v6 = 1819569763;
        goto LABEL_54;
      }

      if (v4 == 1836411236)
      {
        return result;
      }

      v5 = 1869180523;
    }

    else
    {
      if (v4 <= 1937009954)
      {
        if (v4 > 1936092275)
        {
          if (v4 == 1936092276)
          {
            return result;
          }

          v6 = 1936482681;
        }

        else
        {
          if (v4 == 1870030194)
          {
            return result;
          }

          v6 = 1935763060;
        }

        goto LABEL_54;
      }

      if (v4 > 1953653101)
      {
        if (v4 == 1953653102)
        {
          return result;
        }

        v6 = 1969841184;
LABEL_54:
        if (v4 == v6)
        {
          return result;
        }

        return sub_201D4(a1, a2);
      }

      if (v4 == 1937009955)
      {
        return result;
      }

      v5 = 1937077093;
    }

LABEL_44:
    if (v4 == v5)
    {
      return 1;
    }

    return sub_201D4(a1, a2);
  }

  if (v4 <= 1718843938)
  {
    if (v4 > 1668049763)
    {
      if (v4 <= 1684629093)
      {
        if (v4 == 1668049764)
        {
          return result;
        }

        v6 = 1684434036;
        goto LABEL_54;
      }

      if (v4 == 1684629094)
      {
        return result;
      }

      v5 = 1718839674;
      goto LABEL_44;
    }

    v7 = v4 == 1634429294 || v4 == 1634955892;
    v8 = 1667330160;
LABEL_34:
    if (v7 || v4 == v8)
    {
      return result;
    }

    return sub_201D4(a1, a2);
  }

  if (v4 > 1751737453)
  {
    if (v4 > 1818452845)
    {
      if (v4 == 1818452846)
      {
        return result;
      }

      v6 = 1818454126;
    }

    else
    {
      if (v4 == 1751737454)
      {
        return result;
      }

      v6 = 1768124270;
    }

    goto LABEL_54;
  }

  if (v4 > 1735356004)
  {
    if (v4 == 1735356005)
    {
      return result;
    }

    v6 = 1751412337;
    goto LABEL_54;
  }

  if (v4 != 1718843939)
  {
    v5 = 1735354734;
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_201D4(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1818850145 || *a2 == 1818850162)
  {
    return 1;
  }

  v4 = sub_1537C(a1, a2);
  if (!v4)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HP_Object.cpp";
      v11 = 1024;
      v12 = 176;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): unknown property", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v5 = *(*v4 + 24);

  return v5();
}

uint64_t sub_20368(uint64_t a1, int *a2)
{
  result = (*(**(a1 + 8) + 696))(*(a1 + 8));
  if (result)
  {
    v5 = result;
    result = 0;
    v6 = *a2;
    if (*a2 <= 1818456941)
    {
      v7 = v6 == 1668506475;
      v8 = 1818455660;
    }

    else
    {
      v7 = v6 == 1818456942 || v6 == 1819501422;
      v8 = 1835295843;
    }

    if (!v7 && v6 != v8)
    {
      v10 = (*(**(a1 + 8) + 712))(*(a1 + 8));
      v11 = 1735159650;
      return (*(*v5 + 56))(v5, &v10);
    }
  }

  return result;
}

uint64_t sub_2049C(uint64_t a1, uint64_t a2)
{
  if (a2 > 1919774834)
  {
    if (a2 > 1986098019)
    {
      if (a2 == 1986098020 || a2 == 1986229104)
      {
        return a2;
      }

      v2 = 1986817377;
    }

    else
    {
      if (a2 == 1919774835 || a2 == 1936878960)
      {
        return a2;
      }

      v2 = 1937208929;
    }
  }

  else if (a2 > 1684633186)
  {
    if (a2 == 1684633187 || a2 == 1836478308)
    {
      return a2;
    }

    v2 = 1918987632;
  }

  else
  {
    if (a2 == 1064725619 || a2 == 1668443504)
    {
      return a2;
    }

    v2 = 1668705648;
  }

  if (a2 == v2)
  {
    return a2;
  }

  return sub_20798(a1, a2);
}

uint64_t sub_2058C(uint64_t a1, int *a2)
{
  v3 = 0;
  v4 = *a2;
  if (*a2 <= 1818456931)
  {
    if ((v4 - 1818453106) >= 2)
    {
      v5 = 25718;
      goto LABEL_6;
    }

    return v3;
  }

  if (v4 == 1818456932)
  {
    return v3;
  }

  v5 = 29558;
LABEL_6:
  if (v4 == (v5 | 0x6C630000))
  {
    return (*(*a1 + 176))(a1) ^ 1;
  }

  return sub_1E6BC0(a1, a2);
}

uint64_t sub_20634(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 > 1919774834)
  {
    if (v4 <= 1986098019)
    {
      v5 = v4 == 1919774835 || v4 == 1936878960;
      v6 = 1937208929;
    }

    else
    {
      if (v4 > 1986229103)
      {
        v5 = v4 == 1986817377;
        v7 = 29552;
      }

      else
      {
        v5 = v4 == 1986098020;
        v7 = 25966;
      }

      v6 = v7 | 0x76630000;
    }
  }

  else if (v4 <= 1684633186)
  {
    v5 = v4 == 1064725619 || v4 == 1668443504;
    v6 = 1668705648;
  }

  else if (v4 > 1836478307)
  {
    v5 = v4 == 1836478308;
    v6 = 1918987632;
  }

  else
  {
    v5 = v4 == 1684633187;
    v6 = 1685484390;
  }

  if (v5 || v4 == v6)
  {
    v13 = v2;
    v14 = v3;
    v9 = *(a1 + 96);
    v11 = v4;
    v12 = 1735159650;
    return (*(*v9 + 24))(v9, &v11);
  }

  else
  {

    return sub_2058C(a1, a2);
  }
}

uint64_t sub_20798(uint64_t a1, int a2)
{
  if (a2 <= 1852601890)
  {
    if (a2 > 1835295842)
    {
      if (a2 <= 1836462691)
      {
        v2 = 1836281890;
        if (a2 == 1836414053)
        {
          v3 = 1650685548;
        }

        else
        {
          v3 = 0;
        }

        if (a2 == 1836281966)
        {
          v4 = 1936745334;
        }

        else
        {
          v4 = v3;
        }

        if (a2 == 1836281891)
        {
          v5 = 1936745315;
        }

        else
        {
          v5 = v4;
        }

        if (a2 == 1835295859)
        {
          v6 = 1935893353;
        }

        else
        {
          v6 = 0;
        }

        if (a2 == 1835295843)
        {
          v7 = 1935894894;
        }

        else
        {
          v7 = v6;
        }

        goto LABEL_101;
      }

      v2 = 1836475426;
      if (a2 == 1836479331)
      {
        v22 = 1818456950;
      }

      else
      {
        v22 = 0;
      }

      if (a2 == 1836475490)
      {
        v23 = 1818453110;
      }

      else
      {
        v23 = v22;
      }

      if (a2 == 1836475427)
      {
        v5 = 1818453106;
      }

      else
      {
        v5 = v23;
      }

      v19 = 1836462692;
      v20 = 1818456932;
      v21 = a2 == 1836462707;
      v7 = 1818453107;
      goto LABEL_77;
    }

    if (a2 <= 1784767338)
    {
      v2 = 1668510306;
      if (a2 == 1684157046)
      {
        v26 = 1818453107;
      }

      else
      {
        v26 = 0;
      }

      if (a2 == 1668510307)
      {
        v5 = 1935893353;
      }

      else
      {
        v5 = v26;
      }

      v13 = 1668506403;
      v14 = 1935892841;
      v15 = a2 == 1668506475;
      v16 = 1668049771;
    }

    else
    {
      v2 = 1818456941;
      if (a2 == 1835295779)
      {
        v11 = 1935892841;
      }

      else
      {
        v11 = 0;
      }

      if (a2 == 1819501422)
      {
        v12 = 1935894894;
      }

      else
      {
        v12 = v11;
      }

      if (a2 == 1818456942)
      {
        v5 = 1935894894;
      }

      else
      {
        v5 = v12;
      }

      v13 = 1784767339;
      v14 = 1650685548;
      v15 = a2 == 1818455660;
      v16 = 1935894894;
    }

    goto LABEL_96;
  }

  if (a2 <= 1937125987)
  {
    if (a2 <= 1936682094)
    {
      v2 = 1935946357;
      if (a2 == 1936553332)
      {
        v27 = 1650685548;
      }

      else
      {
        v27 = 0;
      }

      if (a2 == 1935946358)
      {
        v5 = 1818453107;
      }

      else
      {
        v5 = v27;
      }

      v13 = 1852601891;
      v14 = 1935892841;
      v15 = a2 == 1852601964;
      v16 = 1935893353;
LABEL_96:
      if (!v15)
      {
        v16 = 0;
      }

      if (a2 == v13)
      {
        v7 = v14;
      }

      else
      {
        v7 = v16;
      }

      goto LABEL_101;
    }

    v2 = 1936748066;
    if (a2 == 1936945763)
    {
      v17 = 1935893353;
    }

    else
    {
      v17 = 0;
    }

    if (a2 == 1936941859)
    {
      v18 = 1935892841;
    }

    else
    {
      v18 = v17;
    }

    if (a2 == 1936748067)
    {
      v5 = 1936745315;
    }

    else
    {
      v5 = v18;
    }

    v19 = 1936682095;
    v20 = 1650685548;
    v21 = a2 == 1936744814;
    v7 = 1936745334;
LABEL_77:
    if (!v21)
    {
      v7 = 0;
    }

    if (a2 == v19)
    {
      v7 = v20;
    }

    goto LABEL_101;
  }

  if (a2 > 1953002100)
  {
    v2 = 1986290210;
    if (a2 == 1987013741)
    {
      v24 = 1818456950;
    }

    else
    {
      v24 = 0;
    }

    if (a2 == 1987013732)
    {
      v25 = 1818453110;
    }

    else
    {
      v25 = v24;
    }

    if (a2 == 1986290211)
    {
      v5 = 1818453106;
    }

    else
    {
      v5 = v25;
    }

    v19 = 1953002101;
    v20 = 1650685548;
    v21 = a2 == 1983013986;
    v7 = 1818456932;
    goto LABEL_77;
  }

  v2 = 1937140835;
  if (a2 == 1953002099)
  {
    v8 = 1650685548;
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 1937140845)
  {
    v9 = 1818456950;
  }

  else
  {
    v9 = v8;
  }

  if (a2 == 1937140836)
  {
    v5 = 1818453110;
  }

  else
  {
    v5 = v9;
  }

  v7 = 1818456932;
  if (a2 == 1937138723)
  {
    v10 = 1818453106;
  }

  else
  {
    v10 = 0;
  }

  if (a2 != 1937125988)
  {
    v7 = v10;
  }

LABEL_101:
  if (a2 <= v2)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_20BAC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "HP_Object.cpp";
      v30 = 1024;
      v31 = 242;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): address isn't settable", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 1852797029;
LABEL_32:
    exception[2] = v19;
  }

  if (*a2 == 1818850162)
  {
    if (a5 == 12)
    {
      v10 = *(*a1 + 104);
      v11 = a1;
      v12 = a6;

      return v10(v11, v12);
    }

    v23 = sub_5544(14);
    v21 = *v23;
    if (!*v23 || !os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136315394;
    v29 = "HP_Object.cpp";
    v30 = 1024;
    v31 = 251;
    v22 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyListenerRemoved";
    goto LABEL_26;
  }

  if (*a2 == 1818850145)
  {
    if (a5 == 12)
    {
      v10 = *(*a1 + 96);
      v11 = a1;
      v12 = a6;

      return v10(v11, v12);
    }

    v20 = sub_5544(14);
    v21 = *v20;
    if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136315394;
    v29 = "HP_Object.cpp";
    v30 = 1024;
    v31 = 246;
    v22 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyListenerAdded";
LABEL_26:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 561211770;
    goto LABEL_32;
  }

  v14 = sub_1537C(a1, a2);
  if (!v14)
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *a2;
      v26 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v19 = 2003332927;
    goto LABEL_32;
  }

  v15 = *(*v14 + 48);

  return v15();
}

uint64_t sub_21054(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  v9 = *a2;
  if (*a2 > 1869180522)
  {
    if (v9 == 1869180523)
    {
      result = (*(*a1 + 64))(a1);
      if (result == a5)
      {
        return result;
      }

      v27 = sub_5544(14);
      v23 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "HP_Device.cpp";
        v33 = 1024;
        v34 = 837;
        v24 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyHogMode";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (v9 != 1937077093)
    {
LABEL_15:

      return sub_20BAC(a1, a2, a3, a4, a5, a6);
    }

    v14 = a2[1];
    if ((*(*a1 + 64))(a1) != a5)
    {
      v25 = sub_5544(14);
      v23 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "HP_Device.cpp";
        v33 = 1024;
        v34 = 849;
        v24 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyIOProcStreamUsage";
        goto LABEL_44;
      }

LABEL_45:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v15 = *a6;
    v16 = a6[2];
    v17 = *(*a1 + 424);

    return v17(a1, v15, v14 == 1768845428, v16, a6 + 3);
  }

  else
  {
    if (v9 != 1718839674)
    {
      if (v9 == 1735354734)
      {
        if ((*(*a1 + 64))(a1) == a5)
        {
          v10 = *a1;
          if (*a6)
          {
            v11 = *(v10 + 360);
            v12 = a1;
          }

          else
          {
            v11 = *(v10 + 392);
            v12 = a1;
          }

          return v11(v12, 0);
        }

        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v32 = "HP_Device.cpp";
          v33 = 1024;
          v34 = 825;
          v24 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceIsRunning";
LABEL_44:
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
          goto LABEL_45;
        }

        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if ((*(*a1 + 64))(a1) != a5)
    {
      v26 = sub_5544(14);
      v23 = *v26;
      if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "HP_Device.cpp";
        v33 = 1024;
        v34 = 842;
        v24 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyBufferFrameSize";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v18 = sub_5544(5);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a6;
      (*(*a1 + 112))(__p, a1);
      v21 = v30 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v32 = "HP_Device.cpp";
      v33 = 1024;
      v34 = 843;
      v35 = 1024;
      v36 = v20;
      v37 = 2080;
      v38 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client request to set buffer frame size to %u on VAD: '%s'.", buf, 0x22u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return (*(*a1 + 504))(a1, *a6);
  }
}

uint64_t sub_21660(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(**(a1 + 8) + 696))(*(a1 + 8));
  if (result)
  {
    v15 = result;
    v16 = (*(**(a1 + 8) + 712))(*(a1 + 8), *a2);
    v17 = 1735159650;
    return (*(*v15 + 80))(v15, &v16, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_21774(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 > 1919774834)
  {
    if (v4 <= 1986098019)
    {
      v5 = v4 == 1919774835 || v4 == 1936878960;
      v6 = 1937208929;
    }

    else
    {
      if (v4 > 1986229103)
      {
        v5 = v4 == 1986817377;
        v7 = 29552;
      }

      else
      {
        v5 = v4 == 1986098020;
        v7 = 25966;
      }

      v6 = v7 | 0x76630000;
    }
  }

  else if (v4 <= 1684633186)
  {
    v5 = v4 == 1064725619 || v4 == 1668443504;
    v6 = 1668705648;
  }

  else if (v4 > 1836478307)
  {
    v5 = v4 == 1836478308;
    v6 = 1918987632;
  }

  else
  {
    v5 = v4 == 1684633187;
    v6 = 1685484390;
  }

  if (v5 || v4 == v6)
  {
    v13 = v2;
    v14 = v3;
    v9 = *(a1 + 96);
    v11 = v4;
    v12 = 1735159650;
    return (*(*v9 + 16))(v9, &v11);
  }

  else
  {

    return sub_22120(a1, a2);
  }
}

uint64_t sub_218D8(void **a1, int *a2, uint64_t a3, uint64_t a4, int a5, unsigned __int32 *a6)
{
  if ((((*a1)[6])(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v26 = *a2;
      v31 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v32 = a2[2];
      sub_22CE0(__p);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 561211770;
  }

  if (!a6)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v33 = a2[2];
      sub_22CE0(__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = 561211770;
  }

  if ((((*a1)[7])(a1, a2) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      v34 = a2[2];
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 1852797029;
  }

  v12 = *a2;
  if (*a2 <= 1919774834)
  {
    if (v12 > 1836478307)
    {
      if (v12 != 1836478308)
      {
        v13 = 1918987632;
        goto LABEL_17;
      }
    }

    else if (v12 != 1668443504)
    {
      v13 = 1668705648;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v12 <= 1937208928)
  {
    if (v12 != 1919774835)
    {
      v13 = 1936878960;
      goto LABEL_17;
    }

LABEL_18:
    if (((*a1)[8])(a1, a2, a3, a4) != a5)
    {
      v24 = sub_5544(14);
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        v30 = *a2;
        v35 = a2[2];
        sub_22CE0(__p);
      }

      v25 = __cxa_allocate_exception(0x10uLL);
      *v25 = &off_6DDDD0;
      v25[2] = 561211770;
    }

    v14 = *(*a1[12] + 48);

    return v14();
  }

  if (v12 == 1937208929 || v12 == 1986817377)
  {
    goto LABEL_18;
  }

  v13 = 1986098020;
LABEL_17:
  if (v12 == v13)
  {
    goto LABEL_18;
  }

  return sub_23EC0(a1, a2, a3, a4, a5, a6);
}

void sub_220FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22120(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((*a2 - 1818453106) <= 4 && ((1 << (*a2 - 114)) & 0x13) != 0 || v2 == 1818456932 || v2 == 1818456950)
  {
    return 1;
  }

  else
  {
    return sub_1C9D1C(a1, a2);
  }
}

uint64_t sub_22170(_BYTE *a1, unsigned int a2)
{
  sub_2288C(v9);
  if (a2 <= 0x7Fu)
  {
    if ((_DefaultRuneLocale.__runetype[a2] & 0x40000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!__maskrune(a2, 0x40000uLL))
  {
    goto LABEL_18;
  }

  if (BYTE1(a2) <= 0x7Fu)
  {
    if ((_DefaultRuneLocale.__runetype[BYTE1(a2)] & 0x40000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!__maskrune(BYTE1(a2), 0x40000uLL))
  {
    goto LABEL_18;
  }

  if (BYTE2(a2) <= 0x7Fu)
  {
    if ((_DefaultRuneLocale.__runetype[BYTE2(a2)] & 0x40000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!__maskrune(BYTE2(a2), 0x40000uLL))
  {
    goto LABEL_18;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v4 = __maskrune(HIBYTE(a2), 0x40000uLL);
  }

  else
  {
    v4 = _DefaultRuneLocale.__runetype[HIBYTE(a2)] & 0x40000;
  }

  if (v4)
  {
    __s[0] = HIBYTE(a2);
    __s[1] = BYTE2(a2);
    __s[2] = BYTE1(a2);
    __s[3] = a2;
    __s[4] = 0;
    v5 = strlen(__s);
    sub_22564(&v10, __s, v5);
    goto LABEL_19;
  }

LABEL_18:
  std::ostream::operator<<();
LABEL_19:
  sub_22B30(a1, &v11);
  v10 = v6;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_22400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275074(va);
  _Unwind_Resume(a1);
}

void sub_22418(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    v3 = *(a1 + 8);
    v2 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v2 = 22;
  }

  if (v2 < a2)
  {
    operator new();
  }

  operator new();
}

void sub_2253C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *sub_22564(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v20 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_755AC();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_2280C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x227E0);
}

void (__cdecl ***sub_2288C(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_22BD8((a1 + 3), 24);
  return a1;
}

void sub_22B08(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void *sub_22B30(_BYTE *a1, uint64_t a2)
{
  result = sub_22C94(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_22BD8(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_23034(a1);
  return a1;
}

void sub_22C6C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_22C94(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_22CE0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22418(a1, 0x1FuLL);
}

void sub_22F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 73) < 0)
  {
    operator delete(*(v48 - 96));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

void sub_23034(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_23148(uint64_t a1, os_unfair_lock_t lock)
{
  os_unfair_lock_lock(lock);
  if (SHIBYTE(lock[7]._os_unfair_lock_opaque) < 0)
  {
    sub_54A0(a1, *&lock[2]._os_unfair_lock_opaque, *&lock[4]._os_unfair_lock_opaque);
  }

  else
  {
    *a1 = *&lock[2]._os_unfair_lock_opaque;
    *(a1 + 16) = *&lock[6]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
}

uint64_t sub_231C4()
{
  if ((atomic_load_explicit(&qword_6E8610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8610))
  {
    byte_6E8608 = sub_28AF20();
    __cxa_guard_release(&qword_6E8610);
  }

  return byte_6E8608;
}

uint64_t *sub_23238(void *__s2, size_t a2)
{
  v2 = qword_709F00;
  if (!qword_709F00)
  {
    return &qword_709F00;
  }

  v5 = &qword_709F00;
  do
  {
    v6 = sub_232D8(*(v2 + 32), *(v2 + 40), __s2, a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v2;
    }

    v2 = *(v2 + ((v6 >> 4) & 8));
  }

  while (v2);
  if (v5 == &qword_709F00 || (sub_232D8(__s2, a2, v5[4], v5[5]) & 0x80) != 0)
  {
    return &qword_709F00;
  }

  return v5;
}

uint64_t sub_232D8(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_23338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248A0(&v12, (a1 + 504), "", 81);
  (*(*v12 + 48))(v12, a2, a3, a4, a5, a6);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_23408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23420(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v44 = sub_5544(14);
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      v50 = *a2;
      LODWORD(v51) = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > a5)
  {
    v46 = sub_5544(14);
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      v50 = *a2;
      LODWORD(v51) = a2[2];
      sub_22CE0(__p);
    }

    v47 = __cxa_allocate_exception(0x10uLL);
    *v47 = &off_6DDDD0;
    v47[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v48 = sub_5544(14);
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      v50 = *a2;
      LODWORD(v51) = a2[2];
      sub_22CE0(__p);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    *v49 = &off_6DDDD0;
    v49[2] = 1970171760;
  }

  v12 = *a2;
  if (*a2 > 1987013731)
  {
    if (v12 == 1987013732)
    {
      v25 = sub_5908C(a5, a6);
      *__p = v25;
      v26 = *(a1 + 552);
      *buf = v26;
      v27 = *(a1 + 560);
      *&v50 = v27;
      *(a1 + 616) = *sub_E521C(buf, __p, &v50);
      if (*(a1 + 560) < v25)
      {
        v28 = sub_5544(19);
        v29 = *v28;
        if (*v28)
        {
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 560);
            *buf = 136316162;
            *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 404;
            v55 = 2048;
            v56 = *__p;
            v57 = 2048;
            v58 = v30;
            v59 = 2048;
            v60 = v30;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d desiredVolume (%f) is greater than the maximum decibel volume of the device (%f). Clamping to mUserVolumeRangeDecibels.mMaximum (%f)", buf, 0x30u);
          }
        }
      }

      if (*(a1 + 552) > *__p)
      {
        v31 = sub_5544(19);
        v32 = *v31;
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 552);
            *buf = 136316162;
            *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 405;
            v55 = 2048;
            v56 = *__p;
            v57 = 2048;
            v58 = v33;
            v59 = 2048;
            v60 = v33;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d desiredVolume (%f) is less than the minimum decibel volume of the device (%f). Clamping to mUserVolumeRangeDecibels.mMinimum (%f)", buf, 0x30u);
          }
        }
      }

LABEL_34:
      sub_55B58(a1);
      return;
    }

    if (v12 == 1987013741)
    {
      v18 = sub_5908C(a5, a6);
      v19 = 1.0;
      if (v18 <= 1.0)
      {
        v19 = v18;
      }

      v20 = v18 < 0.0;
      v21 = 0.0;
      if (!v20)
      {
        v21 = v19;
      }

      sub_5B898(a1 + 568, v21);
      *(a1 + 616) = v22;

      sub_55B58(a1);
      return;
    }

    goto LABEL_21;
  }

  if (v12 == 1836414053)
  {
    *(a1 + 625) = sub_306740(a5, a6) != 0;
    sub_5659C(buf, (a1 + 528), "", 414);
    *__p = 1836414053;
    *&__p[4] = *(a1 + 544);
    (*(**buf + 48))(*buf, __p, 0, 0, a5, a6);
    v24 = *&buf[8];
    if (!*&buf[8])
    {
      return;
    }

LABEL_25:
    sub_1A8C0(v24);
    return;
  }

  if (v12 != 1836478308)
  {
LABEL_21:
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v50 = *a2;
      LODWORD(v51) = a2[2];
      sub_22CE0(__p);
    }

    return;
  }

  if (*(a1 + 624) == 1)
  {
    *(a1 + 616) = *(a1 + 620);
    v13 = sub_5544(19);
    v14 = sub_5544(39);
    v15 = 0;
    *buf = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *&buf[v15];
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_41;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_41:
    v39 = *v13;
    if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 620);
      sub_5659C(&v50, (a1 + 528), "", 736);
      sub_23148(__p, v50 + 2);
      if (v53 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = *__p;
      }

      *buf = 136315906;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 736;
      v55 = 2048;
      v56 = v40;
      v57 = 2080;
      v58 = v41;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying default input gain of %f dB on VAD '%s'.", buf, 0x26u);
      if (v53 < 0)
      {
        operator delete(*__p);
      }

      if (v51)
      {
        sub_1A8C0(v51);
      }
    }

    goto LABEL_34;
  }

  v34 = sub_5544(19);
  v35 = sub_5544(39);
  v36 = 0;
  *buf = 0x100000002;
  v37 = *(v34 + 8);
  while (1)
  {
    v38 = *&buf[v36];
    if (((v37 & v38) != 0) != ((*(v35 + 8) & v38) != 0))
    {
      break;
    }

    v36 += 4;
    if (v36 == 8)
    {
      goto LABEL_53;
    }
  }

  if ((v37 & v38) == 0)
  {
    v34 = v35;
  }

LABEL_53:
  v42 = *v34;
  if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    sub_5659C(&v50, (a1 + 528), "", 742);
    sub_23148(__p, v50 + 2);
    if (v53 >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 742;
    v55 = 2080;
    v56 = *&v43;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring request to apply default volume. This control has no default volume on VAD '%s'. Defaulting to driver initialized input gain", buf, 0x1Cu);
    if (v53 < 0)
    {
      operator delete(*__p);
    }

    v24 = v51;
    if (v51)
    {
      goto LABEL_25;
    }
  }
}

void sub_23E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EC0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, unsigned __int32 *a6)
{
  if (*a2 == 1818453110)
  {
    if ((*(*a1 + 64))(a1) == a5)
    {
      v8.n128_u32[0] = *a6;
      v9 = *(*a1 + 248);
      v10 = a1;

      return v9(v10, v8);
    }

    v15 = sub_5544(14);
    v13 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "HP_Control.cpp";
      v19 = 1024;
      v20 = 510;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyDecibelValue";
      goto LABEL_20;
    }

LABEL_21:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 561211770;
  }

  if (*a2 == 1818456950)
  {
    if ((*(*a1 + 64))(a1) == a5)
    {
      v8.n128_u32[0] = *a6;
      v9 = *(*a1 + 264);
      v10 = a1;

      return v9(v10, v8);
    }

    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "HP_Control.cpp";
      v19 = 1024;
      v20 = 505;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioLevelControlPropertyScalarValue";
LABEL_20:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, &v17, 0x12u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  return sub_20BAC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_241A8(uint64_t a1, float a2)
{
  v6 = a2;
  v2 = *(a1 + 96);
  v4 = 0x676C6F62766F6C6DLL;
  v5 = 0;
  return (*(*v2 + 48))(v2, &v4, 0, 0, 4, &v6);
}

uint64_t sub_24214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_24784(*(a1 + 80), *(a1 + 88));
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  while (v14 != v13)
  {
    v15 = *v14;
    v14 += 2;
    result = (*(*v15 + 48))(v15, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_242B8(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *a2;
      v19 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 2003332927;
LABEL_36:
    exception[2] = v15;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v20 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 561211770;
    goto LABEL_36;
  }

  v8 = *a2;
  if (*a2 > 1919774834)
  {
    if (v8 <= 1986098019)
    {
      if (v8 == 1919774835 || v8 == 1936878960)
      {
        goto LABEL_24;
      }

      v9 = 1937208929;
    }

    else
    {
      if (v8 > 1986229103)
      {
        if (v8 == 1986817377)
        {
          goto LABEL_24;
        }

        v10 = 29552;
      }

      else
      {
        if (v8 == 1986098020)
        {
          goto LABEL_24;
        }

        v10 = 25966;
      }

      v9 = v10 | 0x76630000;
    }
  }

  else if (v8 <= 1684633186)
  {
    if (v8 == 1064725619 || v8 == 1668443504)
    {
      goto LABEL_24;
    }

    v9 = 1668705648;
  }

  else
  {
    if (v8 <= 1836478307)
    {
      if (v8 != 1684633187)
      {
        v9 = 1685484390;
        goto LABEL_23;
      }

LABEL_24:
      v11 = a1[12];
      *buf = *a2;
      v23 = 1735159650;
      return (*(*v11 + 32))(v11, buf, a3, a4);
    }

    if (v8 == 1836478308)
    {
      goto LABEL_24;
    }

    v9 = 1918987632;
  }

LABEL_23:
  if (v8 == v9)
  {
    goto LABEL_24;
  }

  return sub_2470C(a1, a2);
}

uint64_t sub_2470C(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = 4;
  if (*a2 <= 1818453109)
  {
    if (v3 == 1818453106)
    {
      return 16;
    }

    else if (v3 != 1818453107)
    {
      return sub_1C821C(a1, a2);
    }
  }

  else if (v3 != 1818453110 && v3 != 1818456932 && v3 != 1818456950)
  {
    return sub_1C821C(a1, a2);
  }

  return result;
}

uint64_t sub_24784(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "ControlSet.h";
        v7 = 1024;
        v8 = 222;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v5, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  return result;
}

std::__shared_weak_count *sub_248A0(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_24A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24A44(uint64_t a1, int *a2)
{
  v2 = atomic_load((a1 + 104));
  if ((v2 & 1) == 0)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 226;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  v4 = *a2;
  v5 = 1;
  if (*a2 > 1886282098)
  {
    if (v4 > 1936745837)
    {
      if (v4 > 1953653605)
      {
        if (v4 > 1986164322)
        {
          if (v4 > 1986947427)
          {
            if (v4 == 1986947428 || v4 == 2004050279)
            {
              goto LABEL_141;
            }

            v6 = 2004054901;
            goto LABEL_140;
          }

          if (v4 != 1986164323)
          {
            v6 = 1986814563;
            goto LABEL_140;
          }

          goto LABEL_141;
        }

        if (v4 > 1953719141)
        {
          if (v4 == 1953719142)
          {
            sub_4CC644(buf);
            v5 = *buf != 0;
            sub_46228(buf);
            return v5;
          }

          if (v4 == 1970040164)
          {
            goto LABEL_141;
          }

          v6 = 1970496630;
          goto LABEL_140;
        }

        if (v4 != 1953653606)
        {
          if (v4 == 1953655149)
          {
            sub_25704(&v20, (a1 + 88), "", 282);
            sub_250794(buf, v20);
            v5 = *buf != *&buf[8];
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            v13 = v21;
            if (v21)
            {
              goto LABEL_144;
            }

            return v5;
          }

          goto LABEL_153;
        }

        sub_25704(buf, (a1 + 88), "", 286);
        sub_34B234(&v20, *buf);
        goto LABEL_152;
      }

      if (v4 > 1936749679)
      {
        if (v4 <= 1937204589)
        {
          if (v4 != 1936749680)
          {
            v6 = 1936945763;
            goto LABEL_140;
          }

          goto LABEL_135;
        }

        if (v4 == 1937204590 || v4 == 1952609377)
        {
          goto LABEL_141;
        }

        if (v4 != 1952740208)
        {
          goto LABEL_153;
        }

        sub_25704(buf, (a1 + 88), "", 302);
        v8 = (*(**buf + 328))(*buf);
      }

      else
      {
        if (v4 <= 1936747875)
        {
          if (v4 != 1936745838)
          {
            v6 = 1936746611;
            goto LABEL_140;
          }

          goto LABEL_141;
        }

        if ((v4 - 1936747876) < 2)
        {
          goto LABEL_141;
        }

        if (v4 == 1936748141)
        {
          sub_25704(buf, (a1 + 88), "", 270);
LABEL_136:
          v13 = *&buf[8];
          v5 = *(*buf + 96) != *(*buf + 104);
          if (!*&buf[8])
          {
            return v5;
          }

          goto LABEL_144;
        }

        if (v4 != 1936748656)
        {
          goto LABEL_153;
        }

        sub_25704(buf, (a1 + 88), "", 278);
        v8 = sub_A0D78(*buf, a2[2]);
      }
    }

    else
    {
      if (v4 <= 1886614881)
      {
        if (v4 > 1886484337)
        {
          if (v4 <= 1886613100)
          {
            if (v4 == 1886484338)
            {
              return v5;
            }

            v12 = 26978;
          }

          else
          {
            if (v4 == 1886613101 || v4 == 1886613619)
            {
              return v5;
            }

            v12 = 29793;
          }

          v9 = v12 | 0x70730000;
        }

        else
        {
          if (v4 > 1886415203)
          {
            if (v4 == 1886415204 || v4 == 1886417524)
            {
              return v5;
            }

            v10 = 1886417762;
LABEL_95:
            if (v4 != v10)
            {
              goto LABEL_153;
            }

            goto LABEL_135;
          }

          if (v4 == 1886282099)
          {
            sub_25704(buf, (a1 + 88), "", 266);
            v8 = (*(**buf + 256))(*buf);
            goto LABEL_142;
          }

          v9 = 1886353262;
        }

        goto LABEL_126;
      }

      if (v4 <= 1935895922)
      {
        if (v4 > 1886742883)
        {
          if (v4 == 1886742884 || v4 == 1886810226)
          {
            return v5;
          }

          v6 = 1935762278;
          goto LABEL_140;
        }

        if (v4 == 1886614882)
        {
          return v5;
        }

        v9 = 1886681456;
        goto LABEL_126;
      }

      if (v4 <= 1936744815)
      {
        if (v4 == 1935895923)
        {
          return v5;
        }

        if (v4 == 1936221550)
        {
          goto LABEL_141;
        }

        v6 = 1936225136;
        goto LABEL_140;
      }

      if (v4 == 1936744816 || v4 == 1936745318)
      {
        goto LABEL_141;
      }

      if (v4 != 1936745586)
      {
        goto LABEL_153;
      }

      sub_25704(buf, (a1 + 88), "", 274);
      v8 = sub_A15BC(*buf, a2[2]);
    }

LABEL_142:
    v5 = v8;
    goto LABEL_143;
  }

  if (v4 <= 1717987684)
  {
    if (v4 > 1651797099)
    {
      if (v4 <= 1685021039)
      {
        if (v4 > 1651798885)
        {
          if (v4 == 1651798886 || v4 == 1668051827)
          {
            goto LABEL_141;
          }

          v6 = 1684826732;
          goto LABEL_140;
        }

        if (v4 == 1651797100)
        {
          goto LABEL_141;
        }

        v7 = 28787;
LABEL_102:
        v6 = v7 | 0x62740000;
        goto LABEL_140;
      }

      if (v4 <= 1685287025)
      {
        if (v4 != 1685021040 && v4 != 1685088612)
        {
          goto LABEL_153;
        }

        sub_25704(buf, (a1 + 88), "", 255);
        v8 = (*(**buf + 392))(*buf);
        goto LABEL_142;
      }

      if (v4 == 1685287026)
      {
        return v5;
      }

      if (v4 == 1685484390)
      {
        goto LABEL_141;
      }

      if (v4 != 1702392685)
      {
        goto LABEL_153;
      }

      v18 = *a2;
      v19 = a2[2];
      sub_22D75C(&v20, (a1 + 88));
      sub_22CB30(buf, &v20, 1);
      v11 = sub_F30C8(&v18, buf);
    }

    else
    {
      if (v4 > 1650551923)
      {
        if (v4 > 1651796324)
        {
          if ((v4 - 1651796325) <= 0xE && ((1 << (v4 - 101)) & 0x4801) != 0)
          {
            goto LABEL_141;
          }

          goto LABEL_153;
        }

        if (v4 == 1650551924 || v4 == 1651271025)
        {
          goto LABEL_141;
        }

        v7 = 24946;
        goto LABEL_102;
      }

      if (v4 > 1633773924)
      {
        if (v4 == 1633773925 || v4 == 1633973868)
        {
          goto LABEL_141;
        }

        v6 = 1650551140;
        goto LABEL_140;
      }

      if (v4 == 1165513555)
      {
        goto LABEL_141;
      }

      if (v4 != 1633772644)
      {
        goto LABEL_153;
      }

      v18 = 0x676C6F6275414444;
      v19 = 0;
      sub_22D75C(&v20, (a1 + 88));
      sub_22CB30(buf, &v20, 1);
      v11 = sub_F30C8(&v18, buf);
    }

    v5 = v11;
    sub_65310(buf);
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    return v5;
  }

  if (v4 <= 1885434721)
  {
    if (v4 > 1768382831)
    {
      if (v4 <= 1819505772)
      {
        if (v4 == 1768382832 || v4 == 1819046768)
        {
          goto LABEL_141;
        }

        v6 = 1819503987;
LABEL_140:
        if (v4 == v6)
        {
          goto LABEL_141;
        }

LABEL_153:
        v5 = 1;
        if (v4 != 1818850145 && v4 != 1818850162)
        {
          return sub_1537C(a1, a2) != 0;
        }

        return v5;
      }

      if (v4 == 1819505773 || v4 == 1869832547)
      {
        goto LABEL_141;
      }

      v10 = 1885430643;
      goto LABEL_95;
    }

    if (v4 > 1752327776)
    {
      if (v4 == 1752327777)
      {
        return v5;
      }

      if (v4 == 1752462195)
      {
        goto LABEL_141;
      }

      v6 = 1767989616;
      goto LABEL_140;
    }

    if (v4 != 1717987685)
    {
      v6 = 1717987696;
      goto LABEL_140;
    }

LABEL_141:
    sub_25704(buf, (a1 + 88), "", 363);
    v8 = (*(**buf + 16))(*buf, a2);
    goto LABEL_142;
  }

  if (v4 > 1885955427)
  {
    if (v4 <= 1886218595)
    {
      if (v4 == 1885955428)
      {
        goto LABEL_141;
      }

      if (v4 == 1885956208)
      {
        return v5;
      }

      v9 = 1885959026;
LABEL_126:
      if (v4 == v9)
      {
        return v5;
      }

      goto LABEL_153;
    }

    if (v4 == 1886218596)
    {
      return v5;
    }

    if (v4 != 1886220902)
    {
      v9 = 1886282093;
      goto LABEL_126;
    }

    sub_25704(buf, (a1 + 88), "", 294);
    sub_34C228(&v20, *buf);
    goto LABEL_152;
  }

  if (v4 <= 1885566063)
  {
    if (v4 == 1885434722)
    {
LABEL_135:
      sub_25704(buf, (a1 + 88), "", 262);
      goto LABEL_136;
    }

    if (v4 != 1885561196)
    {
      goto LABEL_153;
    }

    sub_25704(buf, (a1 + 88), "", 310);
    v8 = (*(**buf + 344))(*buf);
    goto LABEL_142;
  }

  if (v4 == 1885566064)
  {
    return v5;
  }

  if (v4 == 1885696116)
  {
    sub_25704(buf, (a1 + 88), "", 306);
    v5 = ((*(**buf + 112))(*buf) >> 32) & 1;
    goto LABEL_143;
  }

  if (v4 != 1885759844)
  {
    goto LABEL_153;
  }

  sub_25704(buf, (a1 + 88), "", 290);
  sub_34BB3C(&v20, *buf);
LABEL_152:
  v5 = v20 != 0;
  sub_46228(&v20);
LABEL_143:
  v13 = *&buf[8];
  if (*&buf[8])
  {
LABEL_144:
    sub_1A8C0(v13);
  }

  return v5;
}

void sub_25668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  sub_65310(&a13);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_25704(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_25878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_258A8(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 == 1937204590 || v4 == 1986164323)
  {
    return 1;
  }

  if (v4 != 1986814563)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v7 = sub_441880(*(a1 + 192), *(a1 + 200));
  v8 = 0x6F75747043567323;
  v9 = 0;
  return (*(*v7 + 16))(v7, &v8);
}

void sub_2594C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *Mutable, unsigned int *a5, void *a6)
{
  v6 = atomic_load((a1 + 104));
  if ((v6 & 1) == 0)
  {
    v124 = sub_5544(14);
    v125 = *v124;
    if (*v124 && os_log_type_enabled(*v124, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "VirtualAudio_Port.cpp";
      *&cf[12] = 1024;
      *&cf[14] = 695;
      _os_log_impl(&dword_0, v125, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", cf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v127 = sub_5544(14);
    if (*v127 && os_log_type_enabled(*v127, OS_LOG_TYPE_ERROR))
    {
      v219 = *a2;
      LODWORD(v220) = *(a2 + 8);
      sub_22CE0(&v231);
    }

    v128 = __cxa_allocate_exception(0x10uLL);
    *v128 = &off_6DDDD0;
    v128[2] = 2003332927;
  }

  if ((a3 == 0) != (Mutable == 0))
  {
    v129 = sub_5544(14);
    if (*v129 && os_log_type_enabled(*v129, OS_LOG_TYPE_ERROR))
    {
      v219 = *a2;
      LODWORD(v220) = *(a2 + 8);
      sub_22CE0(&v231);
    }

    v130 = __cxa_allocate_exception(0x10uLL);
    *v130 = &off_6DDDD0;
    v130[2] = 561211770;
  }

  if (!a6)
  {
    v131 = sub_5544(14);
    if (*v131 && os_log_type_enabled(*v131, OS_LOG_TYPE_ERROR))
    {
      v219 = *a2;
      LODWORD(v220) = *(a2 + 8);
      sub_22CE0(&v231);
    }

    v132 = __cxa_allocate_exception(0x10uLL);
    *v132 = &off_6DDDD0;
    v132[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 > 1886282098)
  {
    if (v13 > 1936745837)
    {
      if (v13 > 1953653605)
      {
        if (v13 > 1986164322)
        {
          if (v13 <= 1986947427)
          {
            if (v13 != 1986164323)
            {
              v14 = 1986814563;
              goto LABEL_180;
            }
          }

          else if (v13 != 1986947428)
          {
            if (v13 != 2004050279)
            {
              v14 = 2004054901;
              goto LABEL_180;
            }

            v216.__r_.__value_.__r.__words[0] = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            LOWORD(v216.__r_.__value_.__r.__words[1]) = 257;
            sub_25704(&v217, (a1 + 88), "", 992);
            (*(*v217 + 272))(&v219);
            sub_22D61C(&v231, &v219, "", 992);
            for (i = v232; i != &v231; i = *(i + 1))
            {
              v73 = *(a1 + 80);
              v74 = *(i + 2);
              memset(cf, 0, 24);
              strcpy(&cf[24], "cwdv");
              BYTE2(v223) = 0;
              v224 = 3;
              v226[0] = 0;
              v226[1] = 0;
              v225 = v226;
              v227 = 44739242;
              v229 = 0;
              v230 = 0;
              __p = 0;
              v75 = sub_9DE4C(*(v73 + 128), v74, cf);
              if (SHIBYTE(v230) < 0)
              {
                operator delete(__p);
              }

              sub_477A0(v226[0]);
              if (*cf)
              {
                *&cf[8] = *cf;
                operator delete(*cf);
              }

              sub_A072C(&v216, v75);
            }

            sub_87980(&v231);
            sub_65310(&v219);
            if (*(&v217 + 1))
            {
              sub_1A8C0(*(&v217 + 1));
            }

            if (v216.__r_.__value_.__r.__words[0])
            {
              CFRetain(v216.__r_.__value_.__l.__data_);
              v76 = v216.__r_.__value_.__r.__words[0];
            }

            else
            {
              v76 = 0;
            }

            *a6 = v76;
            v93 = &v216;
LABEL_279:
            sub_A0804(v93);
            return;
          }

          goto LABEL_181;
        }

        if (v13 > 1953719141)
        {
          if (v13 != 1953719142)
          {
            if (v13 != 1970040164)
            {
              v14 = 1970496630;
              goto LABEL_180;
            }

            goto LABEL_181;
          }

          v62 = *a5;
          if (v62 < (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v169 = sub_5544(14);
            if (*v169 && os_log_type_enabled(*v169, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v170 = __cxa_allocate_exception(0x10uLL);
            *v170 = &off_6DDDD0;
            v170[2] = 561211770;
          }

          sub_4CC644(cf);
          v63 = *cf;
          *cf = 0;
          *a6 = v63;
          sub_46228(cf);
          return;
        }

        if (v13 != 1953653606)
        {
          if (v13 != 1953655149)
          {
            goto LABEL_310;
          }

          v42 = *a5;
          if (v42 < (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v157 = sub_5544(14);
            if (*v157 && os_log_type_enabled(*v157, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v158 = __cxa_allocate_exception(0x10uLL);
            *v158 = &off_6DDDD0;
            v158[2] = 561211770;
          }

          sub_22D558(a1, a5, a6);
          return;
        }

        v81 = *a5;
        if (v81 < (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v189 = sub_5544(14);
          if (*v189 && os_log_type_enabled(*v189, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v190 = __cxa_allocate_exception(0x10uLL);
          *v190 = &off_6DDDD0;
          v190[2] = 561211770;
        }

        sub_25704(cf, (a1 + 88), "", 876);
        sub_34B234(&v231, *cf);
        goto LABEL_309;
      }

      if (v13 <= 1936749679)
      {
        if (v13 <= 1936747875)
        {
          if (v13 != 1936745838)
          {
            v14 = 1936746611;
            goto LABEL_180;
          }

          goto LABEL_181;
        }

        if ((v13 - 1936747876) < 2)
        {
          goto LABEL_181;
        }

        if (v13 == 1936748141)
        {
          v101 = *a5;
          if (v101 != (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v203 = sub_5544(14);
            if (*v203 && os_log_type_enabled(*v203, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v204 = __cxa_allocate_exception(0x10uLL);
            *v204 = &off_6DDDD0;
            v204[2] = 561211770;
          }

          sub_25704(&v231, (a1 + 88), "", 843);
          v102 = *(a2 + 8);
          (*(*v231 + 240))(cf);
          if (cf[23] >= 0)
          {
            v36 = cf;
          }

          else
          {
            v36 = *cf;
          }

          if (cf[23] >= 0)
          {
            v37 = cf[23];
          }

          else
          {
            v37 = *&cf[8];
          }

LABEL_356:
          sub_45240(&v219, v36, v37);
          *a6 = CFRetain(v219);
          sub_452F0(&v219);
          if ((cf[23] & 0x80000000) != 0)
          {
            operator delete(*cf);
          }

LABEL_358:
          v47 = v232;
          if (!v232)
          {
            return;
          }

LABEL_184:
          sub_1A8C0(v47);
          return;
        }

        if (v13 != 1936748656)
        {
          goto LABEL_310;
        }

        v16 = *a5;
        if (v16 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v135 = sub_5544(14);
          if (*v135 && os_log_type_enabled(*v135, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v136 = __cxa_allocate_exception(0x10uLL);
          *v136 = &off_6DDDD0;
          v136[2] = 561211770;
        }

        sub_25704(cf, (a1 + 88), "", 865);
        v17 = *cf;
        v18 = *(a2 + 8);
        v19 = sub_9F094(a1);
        LODWORD(v219) = v19;
        BYTE4(v219) = BYTE4(v19);
        v20 = (*(*v17 + 248))(v17, v18, &v219);
        v21 = sub_A14D8(&v231, v20);
        v22 = v231;
        v231 = 0;
        *a6 = v22;
        sub_A1588(v21);
        goto LABEL_183;
      }

      if (v13 <= 1937204589)
      {
        if (v13 != 1936749680)
        {
          v14 = 1936945763;
          goto LABEL_180;
        }

        v89 = *a5;
        if (v89 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v195 = sub_5544(14);
          if (*v195 && os_log_type_enabled(*v195, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v196 = __cxa_allocate_exception(0x10uLL);
          *v196 = &off_6DDDD0;
          v196[2] = 561211770;
        }

        sub_25704(cf, (a1 + 88), "", 837);
        v24 = (*(**cf + 232))(*cf, *(a2 + 8));
        goto LABEL_273;
      }

      if (v13 == 1937204590 || v13 == 1952609377)
      {
        goto LABEL_181;
      }

      if (v13 != 1952740208)
      {
        goto LABEL_310;
      }

      v28 = *a5;
      if (v28 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v143 = sub_5544(14);
        if (*v143 && os_log_type_enabled(*v143, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v144 = __cxa_allocate_exception(0x10uLL);
        *v144 = &off_6DDDD0;
        v144[2] = 561211770;
      }

      sub_25704(&v231, (a1 + 88), "", 900);
      (*(*v231 + 336))(cf);
      v29 = *cf;
      if (*cf)
      {
LABEL_177:
        CFRetain(v29);
        v50 = *cf;
LABEL_314:
        *a6 = v50;
        sub_A1D30(cf);
        goto LABEL_358;
      }

LABEL_313:
      v50 = 0;
      goto LABEL_314;
    }

    if (v13 <= 1886614881)
    {
      if (v13 <= 1886484337)
      {
        if (v13 <= 1886415203)
        {
          if (v13 == 1886282099)
          {
            v79 = *a5;
            if (v79 != (*(*a1 + 64))(a1, a2, a3, Mutable))
            {
              v187 = sub_5544(14);
              if (*v187 && os_log_type_enabled(*v187, OS_LOG_TYPE_ERROR))
              {
                v219 = *a2;
                LODWORD(v220) = *(a2 + 8);
                sub_22CE0(&v231);
              }

              v188 = __cxa_allocate_exception(0x10uLL);
              *v188 = &off_6DDDD0;
              v188[2] = 561211770;
            }

            v80 = sub_A1DA8(*(a1 + 80));
            sub_A1E78(cf, a1, SHIDWORD(v80));
            v26 = *cf;
            if (*cf)
            {
              goto LABEL_276;
            }

            goto LABEL_277;
          }

          if (v13 != 1886353262)
          {
            goto LABEL_310;
          }

          v41 = *a5;
          if (v41 != (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v155 = sub_5544(14);
            if (*v155 && os_log_type_enabled(*v155, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v156 = __cxa_allocate_exception(0x10uLL);
            *v156 = &off_6DDDD0;
            v156[2] = 561211770;
          }

          sub_25704(cf, (a1 + 88), "", 905);
          v24 = sub_A82E4(*cf);
          goto LABEL_273;
        }

        if (v13 != 1886415204)
        {
          if (v13 != 1886417524)
          {
            if (v13 == 1886417762)
            {
              v25 = *a5;
              if (v25 != (*(*a1 + 64))(a1, a2, a3, Mutable))
              {
                v139 = sub_5544(14);
                if (*v139 && os_log_type_enabled(*v139, OS_LOG_TYPE_ERROR))
                {
                  v219 = *a2;
                  LODWORD(v220) = *(a2 + 8);
                  sub_22CE0(&v231);
                }

                v140 = __cxa_allocate_exception(0x10uLL);
                *v140 = &off_6DDDD0;
                v140[2] = 561211770;
              }

              sub_22D480(cf, a1);
              v26 = *cf;
              if (*cf)
              {
                goto LABEL_276;
              }

              goto LABEL_277;
            }

            goto LABEL_310;
          }

          v68 = *a5;
          if (v68 < (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v179 = sub_5544(14);
            if (*v179 && os_log_type_enabled(*v179, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v180 = __cxa_allocate_exception(0x10uLL);
            *v180 = &off_6DDDD0;
            v180[2] = 561211770;
          }

          sub_22CD94(&v218, a1);
          sub_22D050(&v231, a1, *(a2 + 4));
          sub_25704(cf, (a1 + 88), "", 795);
          v69 = *(*cf + 144);
          if (*&cf[8])
          {
            sub_1A8C0(*&cf[8]);
          }

          v70 = 0;
          while (*&aBphpbphptbmpie[v70] != v69)
          {
            v70 += 4;
            if (v70 == 32)
            {
              goto LABEL_330;
            }
          }

          v107 = sub_5544(24);
          v108 = *v107;
          if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_DEFAULT))
          {
            sub_25704(&v217, (a1 + 88), "", 798);
            v109 = v217;
            v217 = 0uLL;
            v215 = *(&v109 + 1);
            sub_23148(&v219, (v109 + 8));
            v110 = v221;
            v111 = v219;
            sub_1D9C0C(&v216, v231, v232);
            v112 = &v219;
            if (v110 < 0)
            {
              v112 = v111;
            }

            if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v113 = &v216;
            }

            else
            {
              v113 = v216.__r_.__value_.__r.__words[0];
            }

            *cf = 136315906;
            *&cf[4] = "VirtualAudio_Port.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 798;
            *&cf[18] = 2080;
            *&cf[20] = v112;
            *&cf[28] = 2080;
            v223 = v113;
            _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Partner ports for: %s -- { %s }", cf, 0x26u);
            if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v216.__r_.__value_.__l.__data_);
            }

            if (v221 < 0)
            {
              operator delete(v219);
            }

            if (v215)
            {
              sub_1A8C0(v215);
            }

            if (*(&v217 + 1))
            {
              sub_1A8C0(*(&v217 + 1));
            }
          }

LABEL_330:
          v115 = v231;
          v114 = v232;
          v116 = v232 - v231;
          *a5 = v232 - v231;
          if (v114 != v115)
          {
            memmove(a6, v115, v116);
          }

          if (v115)
          {
            operator delete(v115);
          }

          sub_22D2E4(&v218);
          return;
        }

        v53 = *a5;
        if (v53 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v167 = sub_5544(14);
          if (*v167 && os_log_type_enabled(*v167, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v168 = __cxa_allocate_exception(0x10uLL);
          *v168 = &off_6DDDD0;
          v168[2] = 561211770;
        }

        sub_25704(&v231, (a1 + 88), "", 735);
        sub_251248(cf, v231);
        if (cf[23] >= 0)
        {
          v54 = cf;
        }

        else
        {
          v54 = *cf;
        }

        if (cf[23] >= 0)
        {
          v55 = cf[23];
        }

        else
        {
          v55 = *&cf[8];
        }

        sub_45240(&v217, v54, v55);
        if ((cf[23] & 0x80000000) != 0)
        {
          operator delete(*cf);
        }

        if (v232)
        {
          sub_1A8C0(v232);
        }

        if (!v217)
        {
          v56 = sub_5544(24);
          v57 = *v56;
          if (*v56)
          {
            if (os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
            {
              v58 = &v231;
              sub_22170(&v231, 0x70706964u);
              if (v233 < 0)
              {
                v58 = v231;
              }

              sub_25704(&v216, (a1 + 88), "", 737);
              v59 = *&v216.__r_.__value_.__l.__data_;
              *&v216.__r_.__value_.__l.__data_ = 0uLL;
              v214 = *(&v59 + 1);
              sub_23148(&v219, (v59 + 8));
              if (v221 >= 0)
              {
                v60 = &v219;
              }

              else
              {
                v60 = v219;
              }

              *cf = 136315906;
              *&cf[4] = "VirtualAudio_Port.cpp";
              *&cf[12] = 1024;
              *&cf[14] = 737;
              *&cf[18] = 2080;
              *&cf[20] = v58;
              *&cf[28] = 2080;
              v223 = v60;
              goto LABEL_368;
            }
          }
        }

LABEL_296:
        v100 = v217;
        *&v217 = 0;
        *a6 = v100;
        sub_452F0(&v217);
        return;
      }

      if (v13 > 1886613100)
      {
        if (v13 != 1886613101)
        {
          if (v13 == 1886613619)
          {
            v71 = *a5;
            if (v71 != (*(*a1 + 64))(a1, a2, a3, Mutable))
            {
              v181 = sub_5544(14);
              if (*v181 && os_log_type_enabled(*v181, OS_LOG_TYPE_ERROR))
              {
                v219 = *a2;
                LODWORD(v220) = *(a2 + 8);
                sub_22CE0(&v231);
              }

              v182 = __cxa_allocate_exception(0x10uLL);
              *v182 = &off_6DDDD0;
              v182[2] = 561211770;
            }

            sub_25704(cf, (a1 + 88), "", 776);
            v24 = (*(**cf + 456))(*cf);
          }

          else
          {
            if (v13 != 1886614625)
            {
              goto LABEL_310;
            }

            v27 = *a5;
            if (v27 != (*(*a1 + 64))(a1, a2, a3, Mutable))
            {
              v141 = sub_5544(14);
              if (*v141 && os_log_type_enabled(*v141, OS_LOG_TYPE_ERROR))
              {
                v219 = *a2;
                LODWORD(v220) = *(a2 + 8);
                sub_22CE0(&v231);
              }

              v142 = __cxa_allocate_exception(0x10uLL);
              *v142 = &off_6DDDD0;
              v142[2] = 561211770;
            }

            sub_25704(cf, (a1 + 88), "", 812);
            v24 = (*(**cf + 96))(*cf);
          }

          goto LABEL_273;
        }

        v64 = *a5;
        if (v64 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v171 = sub_5544(14);
          if (*v171 && os_log_type_enabled(*v171, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v172 = __cxa_allocate_exception(0x10uLL);
          *v172 = &off_6DDDD0;
          v172[2] = 561211770;
        }

        sub_25704(&v231, (a1 + 88), "", 760);
        (*(*v231 + 144))(cf);
        if (cf[23] >= 0)
        {
          v36 = cf;
        }

        else
        {
          v36 = *cf;
        }

        if (cf[23] >= 0)
        {
          v37 = cf[23];
        }

        else
        {
          v37 = *&cf[8];
        }

        goto LABEL_356;
      }

      if (v13 != 1886484338)
      {
        if (v13 != 1886611810)
        {
          goto LABEL_310;
        }

        v43 = *a5;
        if (v43 < (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v159 = sub_5544(14);
          if (*v159 && os_log_type_enabled(*v159, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v160 = __cxa_allocate_exception(0x10uLL);
          *v160 = &off_6DDDD0;
          v160[2] = 561211770;
        }

        sub_22CB9C(cf, a1, *(a2 + 4), 1);
        v44 = *cf;
        v45 = *&cf[8] - *cf;
        v86 = *&cf[8] == *cf;
        *a5 = *&cf[8] - *cf;
        if (!v86)
        {
          memmove(a6, v44, v45);
        }

        if (v44)
        {
          operator delete(v44);
        }

        return;
      }

      v82 = *a5;
      if (v82 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v191 = sub_5544(14);
        if (*v191 && os_log_type_enabled(*v191, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v192 = __cxa_allocate_exception(0x10uLL);
        *v192 = &off_6DDDD0;
        v192[2] = 561211770;
      }

      sub_25704(cf, (a1 + 88), "", 771);
      v83 = ((*(**cf + 112))(*cf) & 0x1FFFFFFFFLL) == 0x165707177;
    }

    else
    {
      if (v13 > 1935895922)
      {
        if (v13 <= 1936744815)
        {
          if (v13 != 1935895923)
          {
            if (v13 != 1936221550)
            {
              v14 = 1936225136;
              goto LABEL_180;
            }

            goto LABEL_181;
          }

          v94 = *a5;
          if (v94 != (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v199 = sub_5544(14);
            if (*v199 && os_log_type_enabled(*v199, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v200 = __cxa_allocate_exception(0x10uLL);
            *v200 = &off_6DDDD0;
            v200[2] = 561211770;
          }

          sub_25704(cf, (a1 + 88), "", 1016);
          v95 = *cf;
          v96 = sub_31097C();
          if (*(v95 + 144) == 1886216809)
          {
            v83 = v96;
          }

          else
          {
            v83 = 0;
          }

          goto LABEL_338;
        }

        if (v13 == 1936744816 || v13 == 1936745318)
        {
          goto LABEL_181;
        }

        if (v13 != 1936745586)
        {
          goto LABEL_310;
        }

        v32 = *a5;
        if (v32 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v147 = sub_5544(14);
          if (*v147 && os_log_type_enabled(*v147, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v148 = __cxa_allocate_exception(0x10uLL);
          *v148 = &off_6DDDD0;
          v148[2] = 561211770;
        }

        if ((a3 | 8) != 8)
        {
          v211 = sub_5544(14);
          v212 = *v211;
          if (*v211 && os_log_type_enabled(*v211, OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "VirtualAudio_Port.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 849;
            _os_log_impl(&dword_0, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", cf, 0x12u);
          }

          v213 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v213, "Precondition failure.");
        }

        if (Mutable)
        {
          *cf = Mutable;
          *&cf[8] = 0;
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          *cf = Mutable;
          *&cf[8] = 257;
          if (!Mutable)
          {
            v118 = sub_A1DA8(*(a1 + 80)) >> 32;
            goto LABEL_347;
          }
        }

        v117 = *(a1 + 80);
        CFRetain(Mutable);
        sub_A17A8(&v231, Mutable);
        v118 = sub_A1854(v117, &v231) >> 32;
        sub_4BA7C(&v231);
LABEL_347:
        sub_25704(&v219, (a1 + 88), "", 857);
        sub_A18AC(&v231, v219, v118, *(a2 + 8));
        if (v231)
        {
          CFRetain(v231);
          v119 = v231;
        }

        else
        {
          v119 = 0;
        }

        *a6 = v119;
        sub_A1D30(&v231);
        if (v220)
        {
          sub_1A8C0(v220);
        }

        sub_A1D30(cf);
        return;
      }

      if (v13 > 1886742883)
      {
        if (v13 != 1886742884)
        {
          if (v13 != 1886810226)
          {
            v14 = 1935762278;
            goto LABEL_180;
          }

          v77 = *a5;
          if (v77 != (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v183 = sub_5544(14);
            if (*v183 && os_log_type_enabled(*v183, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v184 = __cxa_allocate_exception(0x10uLL);
            *v184 = &off_6DDDD0;
            v184[2] = 561211770;
          }

          sub_25704(cf, (a1 + 88), "", 807);
          v24 = (*(**cf + 320))(*cf);
          goto LABEL_273;
        }

        v65 = *a5;
        if (v65 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v173 = sub_5544(14);
          if (*v173 && os_log_type_enabled(*v173, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v174 = __cxa_allocate_exception(0x10uLL);
          *v174 = &off_6DDDD0;
          v174[2] = 561211770;
        }

        sub_25704(&v231, (a1 + 88), "", 729);
        if (v231[303] < 0)
        {
          sub_54A0(cf, *(v231 + 35), *(v231 + 36));
        }

        else
        {
          *cf = *(v231 + 280);
          *&cf[16] = *(v231 + 37);
        }

        if (cf[23] >= 0)
        {
          v36 = cf;
        }

        else
        {
          v36 = *cf;
        }

        if (cf[23] >= 0)
        {
          v37 = cf[23];
        }

        else
        {
          v37 = *&cf[8];
        }

        goto LABEL_356;
      }

      if (v13 != 1886614882)
      {
        if (v13 != 1886681456)
        {
          goto LABEL_310;
        }

        v46 = *a5;
        if (v46 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v161 = sub_5544(14);
          if (*v161 && os_log_type_enabled(*v161, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v162 = __cxa_allocate_exception(0x10uLL);
          *v162 = &off_6DDDD0;
          v162[2] = 561211770;
        }

        sub_25704(cf, (a1 + 88), "", 705);
        v47 = *&cf[8];
        v48 = *(*cf + 144);
        goto LABEL_226;
      }

      v84 = *a5;
      if (v84 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v193 = sub_5544(14);
        if (*v193 && os_log_type_enabled(*v193, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v194 = __cxa_allocate_exception(0x10uLL);
        *v194 = &off_6DDDD0;
        v194[2] = 561211770;
      }

      v85 = 0;
      if (a3 >= 4 && Mutable)
      {
        v85 = *Mutable | 0x100000000;
      }

      v86 = (v85 & 0x100000000) == 0 || v85 == 0;
      v87 = v86;
      sub_25704(cf, (a1 + 88), "", 712);
      if (v87)
      {
        v88 = 304;
      }

      else
      {
        v88 = 304;
        if (*(*cf + 312))
        {
          v88 = 308;
        }
      }

      v83 = *(*cf + v88);
    }

LABEL_338:
    *a6 = v83;
    goto LABEL_183;
  }

  if (v13 <= 1717987684)
  {
    if (v13 > 1651797099)
    {
      if (v13 > 1685021039)
      {
        if (v13 > 1685287025)
        {
          switch(v13)
          {
            case 1685287026:
              v52 = *a5;
              if (v52 != (*(*a1 + 64))(a1, a2, a3, Mutable))
              {
                v165 = sub_5544(14);
                if (*v165 && os_log_type_enabled(*v165, OS_LOG_TYPE_ERROR))
                {
                  v219 = *a2;
                  LODWORD(v220) = *(a2 + 8);
                  sub_22CE0(&v231);
                }

                v166 = __cxa_allocate_exception(0x10uLL);
                *v166 = &off_6DDDD0;
                v166[2] = 561211770;
              }

              if (a3 != 8 || !Mutable)
              {
                v209 = sub_5544(14);
                if (*v209 && os_log_type_enabled(*v209, OS_LOG_TYPE_ERROR))
                {
                  v219 = *a2;
                  LODWORD(v220) = *(a2 + 8);
                  sub_22CE0(&v231);
                }

                v210 = __cxa_allocate_exception(0x10uLL);
                *v210 = &off_6DDDD0;
                v210[2] = 561211770;
              }

              *a6 = sub_3B4424(*(a1 + 80), *(a1 + 8), *Mutable, Mutable[1]);
              break;
            case 1685484390:
              goto LABEL_181;
            case 1702392685:
              sub_22D75C(&v231, (a1 + 88));
              sub_22CB30(cf, &v231, 1);
              sub_4DC5B8(a2, a3, Mutable, a5, a6, cf);
              sub_65310(cf);
              if (v232)
              {
                std::__shared_weak_count::__release_weak(v232);
              }

              break;
            default:
              goto LABEL_310;
          }

          return;
        }

        if (v13 == 1685021040)
        {
          sub_25704(cf, (a1 + 88), "", 1002);
          v24 = (*(**cf + 392))(*cf);
          goto LABEL_273;
        }

        if (v13 != 1685088612)
        {
          goto LABEL_310;
        }

        v38 = *a5;
        if (v38 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v153 = sub_5544(14);
          if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v154 = __cxa_allocate_exception(0x10uLL);
          *v154 = &off_6DDDD0;
          v154[2] = 561211770;
        }

        sub_25704(&v231, (a1 + 88), "", 1008);
        if ((*(*v231 + 392))(v231))
        {
          sub_25704(&v219, (a1 + 88), "", 1009);
          (*(*v219 + 408))(cf);
          if (cf[23] >= 0)
          {
            v39 = cf;
          }

          else
          {
            v39 = *cf;
          }

          if (cf[23] >= 0)
          {
            v40 = cf[23];
          }

          else
          {
            v40 = *&cf[8];
          }

          sub_45240(&v216, v39, v40);
          *a6 = v216.__r_.__value_.__r.__words[0];
          sub_452F0(&v216.__r_.__value_.__l.__data_);
          if ((cf[23] & 0x80000000) != 0)
          {
            operator delete(*cf);
          }

          if (v220)
          {
            sub_1A8C0(v220);
          }
        }

        else
        {
          *a6 = 0;
        }

        goto LABEL_358;
      }

      if (v13 > 1651798885)
      {
        if (v13 == 1651798886 || v13 == 1668051827)
        {
          goto LABEL_181;
        }

        v14 = 1684826732;
        goto LABEL_180;
      }

      if (v13 == 1651797100)
      {
        goto LABEL_181;
      }

      v15 = 28787;
    }

    else
    {
      if (v13 <= 1650551923)
      {
        if (v13 > 1633773924)
        {
          if (v13 == 1633773925 || v13 == 1633973868)
          {
            goto LABEL_181;
          }

          v14 = 1650551140;
          goto LABEL_180;
        }

        if (v13 != 1165513555)
        {
          if (v13 != 1633772644)
          {
            goto LABEL_310;
          }

          sub_25704(cf, (a1 + 88), "", 1022);
          v24 = sub_34C924(*(*cf + 192), *(*cf + 200));
          goto LABEL_273;
        }

        goto LABEL_181;
      }

      if (v13 > 1651796324)
      {
        v31 = v13 - 1651796325;
        if (v31 <= 0xE && ((1 << v31) & 0x4801) != 0)
        {
          goto LABEL_181;
        }

        goto LABEL_310;
      }

      if (v13 == 1650551924 || v13 == 1651271025)
      {
        goto LABEL_181;
      }

      v15 = 24946;
    }

    v14 = v15 | 0x62740000;
    goto LABEL_180;
  }

  if (v13 <= 1885434721)
  {
    if (v13 > 1768382831)
    {
      if (v13 <= 1819505772)
      {
        if (v13 == 1768382832 || v13 == 1819046768)
        {
          goto LABEL_181;
        }

        v14 = 1819503987;
LABEL_180:
        if (v13 == v14)
        {
          goto LABEL_181;
        }

        goto LABEL_310;
      }

      if (v13 == 1819505773 || v13 == 1869832547)
      {
        goto LABEL_181;
      }

      if (v13 == 1885430643)
      {
        v33 = *a5;
        if (v33 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v149 = sub_5544(14);
          if (*v149 && os_log_type_enabled(*v149, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v150 = __cxa_allocate_exception(0x10uLL);
          *v150 = &off_6DDDD0;
          v150[2] = 561211770;
        }

        v231 = sub_A1DA8(*(a1 + 80));
        v232 = v34;
        sub_9E9C8(cf, a1, &v231);
        v26 = *cf;
        if (*cf)
        {
LABEL_276:
          CFRetain(v26);
          v92 = *cf;
LABEL_278:
          *a6 = v92;
          v93 = cf;
          goto LABEL_279;
        }

LABEL_277:
        v92 = 0;
        goto LABEL_278;
      }

      goto LABEL_310;
    }

    if (v13 > 1752327776)
    {
      if (v13 != 1752327777)
      {
        if (v13 != 1752462195)
        {
          v14 = 1767989616;
          goto LABEL_180;
        }

        goto LABEL_181;
      }

      v66 = *a5;
      if (v66 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v175 = sub_5544(14);
        if (*v175 && os_log_type_enabled(*v175, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v176 = __cxa_allocate_exception(0x10uLL);
        *v176 = &off_6DDDD0;
        v176[2] = 561211770;
      }

      sub_25704(cf, (a1 + 88), "", 986);
      v24 = (*(**cf + 464))(*cf);
LABEL_273:
      *a6 = v24;
      goto LABEL_183;
    }

    if (v13 != 1717987685)
    {
      v14 = 1717987696;
      goto LABEL_180;
    }

LABEL_181:
    v51 = *a5;
    if (v51 != (*(*a1 + 64))(a1, a2, a3, Mutable))
    {
      v133 = sub_5544(14);
      if (*v133)
      {
        if (os_log_type_enabled(*v133, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }
      }

      v134 = __cxa_allocate_exception(0x10uLL);
      *v134 = &off_6DDDD0;
      v134[2] = 561211770;
    }

    sub_25704(cf, (a1 + 88), "", 982);
    (*(**cf + 40))(*cf, a2, a3, Mutable, a5, a6);
    goto LABEL_183;
  }

  if (v13 <= 1885955427)
  {
    if (v13 > 1885566063)
    {
      if (v13 != 1885566064)
      {
        if (v13 != 1885696116)
        {
          if (v13 != 1885759844)
          {
            goto LABEL_310;
          }

          v30 = *a5;
          if (v30 < (*(*a1 + 64))(a1, a2, a3, Mutable))
          {
            v145 = sub_5544(14);
            if (*v145 && os_log_type_enabled(*v145, OS_LOG_TYPE_ERROR))
            {
              v219 = *a2;
              LODWORD(v220) = *(a2 + 8);
              sub_22CE0(&v231);
            }

            v146 = __cxa_allocate_exception(0x10uLL);
            *v146 = &off_6DDDD0;
            v146[2] = 561211770;
          }

          sub_25704(cf, (a1 + 88), "", 882);
          sub_34BB3C(&v231, *cf);
          goto LABEL_309;
        }

        v78 = *a5;
        if (v78 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v185 = sub_5544(14);
          if (*v185 && os_log_type_enabled(*v185, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v186 = __cxa_allocate_exception(0x10uLL);
          *v186 = &off_6DDDD0;
          v186[2] = 561211770;
        }

        sub_25704(cf, (a1 + 88), "", 724);
        *a6 = (*(**cf + 112))(*cf);
LABEL_183:
        v47 = *&cf[8];
        if (!*&cf[8])
        {
          return;
        }

        goto LABEL_184;
      }

      v67 = *a5;
      if (v67 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v177 = sub_5544(14);
        if (*v177 && os_log_type_enabled(*v177, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v178 = __cxa_allocate_exception(0x10uLL);
        *v178 = &off_6DDDD0;
        v178[2] = 561211770;
      }

      sub_25704(cf, (a1 + 88), "", 718);
      v47 = *&cf[8];
      v48 = *(*cf + 148);
LABEL_226:
      *a6 = v48;
      if (!v47)
      {
        return;
      }

      goto LABEL_184;
    }

    if (v13 == 1885434722)
    {
      v90 = *a5;
      if (v90 != (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v197 = sub_5544(14);
        if (*v197 && os_log_type_enabled(*v197, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v198 = __cxa_allocate_exception(0x10uLL);
        *v198 = &off_6DDDD0;
        v198[2] = 561211770;
      }

      v231 = sub_A1DA8(*(a1 + 80));
      v232 = v91;
      sub_A08C4(cf, a1);
      v26 = *cf;
      if (*cf)
      {
        goto LABEL_276;
      }

      goto LABEL_277;
    }

    if (v13 != 1885561196)
    {
LABEL_310:

      sub_A654C(a1, a2, a3, Mutable, a5, a6);
      return;
    }

    v49 = *a5;
    if (v49 != (*(*a1 + 64))(a1, a2, a3, Mutable))
    {
      v163 = sub_5544(14);
      if (*v163 && os_log_type_enabled(*v163, OS_LOG_TYPE_ERROR))
      {
        v219 = *a2;
        LODWORD(v220) = *(a2 + 8);
        sub_22CE0(&v231);
      }

      v164 = __cxa_allocate_exception(0x10uLL);
      *v164 = &off_6DDDD0;
      v164[2] = 561211770;
    }

    sub_25704(&v231, (a1 + 88), "", 929);
    (*(*v231 + 352))(cf);
    v29 = *cf;
    if (*cf)
    {
      goto LABEL_177;
    }

    goto LABEL_313;
  }

  if (v13 > 1886218595)
  {
    if (v13 != 1886218596)
    {
      if (v13 != 1886220902)
      {
        if (v13 != 1886282093)
        {
          goto LABEL_310;
        }

        v35 = *a5;
        if (v35 != (*(*a1 + 64))(a1, a2, a3, Mutable))
        {
          v151 = sub_5544(14);
          if (*v151 && os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
          {
            v219 = *a2;
            LODWORD(v220) = *(a2 + 8);
            sub_22CE0(&v231);
          }

          v152 = __cxa_allocate_exception(0x10uLL);
          *v152 = &off_6DDDD0;
          v152[2] = 561211770;
        }

        sub_25704(&v231, (a1 + 88), "", 754);
        (*(*v231 + 136))(cf);
        if (cf[23] >= 0)
        {
          v36 = cf;
        }

        else
        {
          v36 = *cf;
        }

        if (cf[23] >= 0)
        {
          v37 = cf[23];
        }

        else
        {
          v37 = *&cf[8];
        }

        goto LABEL_356;
      }

      v105 = *a5;
      if (v105 < (*(*a1 + 64))(a1, a2, a3, Mutable))
      {
        v207 = sub_5544(14);
        if (*v207 && os_log_type_enabled(*v207, OS_LOG_TYPE_ERROR))
        {
          v219 = *a2;
          LODWORD(v220) = *(a2 + 8);
          sub_22CE0(&v231);
        }

        v208 = __cxa_allocate_exception(0x10uLL);
        *v208 = &off_6DDDD0;
        v208[2] = 561211770;
      }

      sub_25704(cf, (a1 + 88), "", 889);
      sub_34C228(&v231, *cf);
LABEL_309:
      v106 = v231;
      v231 = 0;
      *a6 = v106;
      sub_46228(&v231);
      goto LABEL_183;
    }

    v97 = *a5;
    if (v97 != (*(*a1 + 64))(a1, a2, a3, Mutable))
    {
      v201 = sub_5544(14);
      if (*v201 && os_log_type_enabled(*v201, OS_LOG_TYPE_ERROR))
      {
        v219 = *a2;
        LODWORD(v220) = *(a2 + 8);
        sub_22CE0(&v231);
      }

      v202 = __cxa_allocate_exception(0x10uLL);
      *v202 = &off_6DDDD0;
      v202[2] = 561211770;
    }

    sub_25704(&v231, (a1 + 88), "", 745);
    sub_251308(cf, v231);
    if (cf[23] >= 0)
    {
      v98 = cf;
    }

    else
    {
      v98 = *cf;
    }

    if (cf[23] >= 0)
    {
      v99 = cf[23];
    }

    else
    {
      v99 = *&cf[8];
    }

    sub_45240(&v217, v98, v99);
    if ((cf[23] & 0x80000000) != 0)
    {
      operator delete(*cf);
    }

    if (v232)
    {
      sub_1A8C0(v232);
    }

    if (!v217)
    {
      v120 = sub_5544(24);
      v57 = *v120;
      if (*v120)
      {
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_ERROR))
        {
          v121 = &v231;
          sub_22170(&v231, 0x706D6964u);
          if (v233 < 0)
          {
            v121 = v231;
          }

          sub_25704(&v216, (a1 + 88), "", 747);
          v122 = *&v216.__r_.__value_.__l.__data_;
          *&v216.__r_.__value_.__l.__data_ = 0uLL;
          v214 = *(&v122 + 1);
          sub_23148(&v219, (v122 + 8));
          if (v221 >= 0)
          {
            v123 = &v219;
          }

          else
          {
            v123 = v219;
          }

          *cf = 136315906;
          *&cf[4] = "VirtualAudio_Port.cpp";
          *&cf[12] = 1024;
          *&cf[14] = 747;
          *&cf[18] = 2080;
          *&cf[20] = v121;
          *&cf[28] = 2080;
          v223 = v123;
LABEL_368:
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, v61, cf, 0x26u);
          if (v221 < 0)
          {
            operator delete(v219);
          }

          if (v214)
          {
            sub_1A8C0(v214);
          }

          if (v216.__r_.__value_.__l.__size_)
          {
            sub_1A8C0(v216.__r_.__value_.__l.__size_);
          }

          if (v233 < 0)
          {
            operator delete(v231);
          }

          goto LABEL_296;
        }
      }
    }

    goto LABEL_296;
  }

  if (v13 == 1885955428)
  {
    goto LABEL_181;
  }

  if (v13 != 1885956208)
  {
    if (v13 != 1885959026)
    {
      goto LABEL_310;
    }

    v23 = *a5;
    if (v23 != (*(*a1 + 64))(a1, a2, a3, Mutable))
    {
      v137 = sub_5544(14);
      if (*v137 && os_log_type_enabled(*v137, OS_LOG_TYPE_ERROR))
      {
        v219 = *a2;
        LODWORD(v220) = *(a2 + 8);
        sub_22CE0(&v231);
      }

      v138 = __cxa_allocate_exception(0x10uLL);
      *v138 = &off_6DDDD0;
      v138[2] = 561211770;
    }

    sub_25704(cf, (a1 + 88), "", 765);
    v24 = (*(**cf + 160))(*cf);
    goto LABEL_273;
  }

  v103 = *a5;
  if (v103 != (*(*a1 + 64))(a1, a2, a3, Mutable))
  {
    v205 = sub_5544(14);
    if (*v205 && os_log_type_enabled(*v205, OS_LOG_TYPE_ERROR))
    {
      v219 = *a2;
      LODWORD(v220) = *(a2 + 8);
      sub_22CE0(&v231);
    }

    v206 = __cxa_allocate_exception(0x10uLL);
    *v206 = &off_6DDDD0;
    v206[2] = 561211770;
  }

  sub_25704(cf, (a1 + 88), "", 921);
  if (((*(**cf + 112))(*cf) & 0x100000000) != 0)
  {
    sub_25704(&v231, (a1 + 88), "", 922);
    v104 = (*(*v231 + 112))(v231) == 1701865584;
    if (v232)
    {
      sub_1A8C0(v232);
    }
  }

  else
  {
    v104 = 0;
  }

  if (*&cf[8])
  {
    sub_1A8C0(*&cf[8]);
  }

  *a6 = v104;
}

void sub_2B584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2B938(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load((a1 + 104));
  if ((v4 & 1) == 0)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 514;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = a2[2];
      sub_22CE0(&__p);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 2003332927;
  }

  if ((a3 != 0) == (a4 == 0))
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = a2[2];
      sub_22CE0(&__p);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  v9 = *a2;
  v10 = 4;
  if (*a2 > 1886282092)
  {
    if (v9 > 1936745585)
    {
      if (v9 <= 1952740207)
      {
        if (v9 > 1936748140)
        {
          if (v9 <= 1936945762)
          {
            if (v9 != 1936748141 && v9 != 1936748656)
            {
              v11 = 29808;
LABEL_129:
              v13 = v11 | 0x73700000;
              goto LABEL_130;
            }

            return 8;
          }

          if (v9 == 1936945763 || v9 == 1937204590)
          {
            goto LABEL_100;
          }

          v15 = 1952609377;
          goto LABEL_99;
        }

        if (v9 <= 1936746610)
        {
          if (v9 != 1936745586)
          {
            v11 = 25966;
            goto LABEL_129;
          }

          return 8;
        }

        if (v9 == 1936746611 || v9 == 1936747876)
        {
          return v10;
        }

        v17 = 28005;
LABEL_89:
        v15 = v17 | 0x73700000;
        goto LABEL_99;
      }

      if (v9 > 1970496629)
      {
        if (v9 > 1986947427)
        {
          if (v9 != 1986947428 && v9 != 2004050279)
          {
            v13 = 2004054901;
            goto LABEL_130;
          }
        }

        else if (v9 != 1970496630 && v9 != 1986164323)
        {
          v13 = 1986814563;
          goto LABEL_130;
        }

        goto LABEL_100;
      }

      if (v9 > 1953655148)
      {
        if (v9 == 1953655149)
        {
          sub_25704(&__p, (a1 + 88), "", 582);
          sub_250794(buf, __p);
          v25 = *&buf[8] - *buf;
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v10 = v25 & 0xFFFFFFFC;
          v20 = v37;
          if (!v37)
          {
            return v10;
          }

          goto LABEL_102;
        }

        if (v9 == 1953719142)
        {
          return 8;
        }

        v15 = 1970040164;
        goto LABEL_99;
      }

      if (v9 != 1952740208)
      {
        v19 = 1953653606;
        goto LABEL_136;
      }

      sub_25704(buf, (a1 + 88), "", 586);
      v21 = (*(**buf + 328))(*buf);
LABEL_153:
      if (v21)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

LABEL_101:
      v20 = *&buf[8];
      if (!*&buf[8])
      {
        return v10;
      }

LABEL_102:
      sub_1A8C0(v20);
      return v10;
    }

    if (v9 > 1886614624)
    {
      if (v9 > 1935762277)
      {
        if (v9 <= 1936225135)
        {
          if (v9 == 1935762278 || v9 == 1935895923)
          {
            return v10;
          }

          v13 = 1936221550;
          goto LABEL_130;
        }

        if (v9 == 1936225136 || v9 == 1936744816)
        {
          return v10;
        }

        v17 = 25446;
        goto LABEL_89;
      }

      if (v9 > 1886681455)
      {
        if (v9 == 1886681456)
        {
          return v10;
        }

        if (v9 != 1886742884)
        {
          v13 = 1886810226;
          goto LABEL_130;
        }

        return 8;
      }

      if (v9 == 1886614625)
      {
        return v10;
      }

      v16 = 30050;
LABEL_122:
      v13 = v16 | 0x70730000;
      goto LABEL_130;
    }

    if (v9 > 1886417761)
    {
      if (v9 <= 1886611809)
      {
        if (v9 != 1886417762)
        {
          v13 = 1886484338;
          goto LABEL_130;
        }

        return 8;
      }

      if (v9 != 1886611810)
      {
        if (v9 == 1886613101)
        {
          return 8;
        }

        v16 = 28787;
        goto LABEL_122;
      }

      v14 = sub_22DA0C(a1, a2[1]);
      return (4 * v14);
    }

    if (v9 > 1886353261)
    {
      if (v9 == 1886353262)
      {
        return v10;
      }

      if (v9 == 1886415204)
      {
        return 8;
      }

      if (v9 != 1886417524)
      {
        goto LABEL_131;
      }

      v14 = sub_22DB98(a1, a2[1]);
      return (4 * v14);
    }

    if (v9 == 1886282093)
    {
      return 8;
    }

    v19 = 1886282099;
LABEL_136:
    if (v9 != v19)
    {
      goto LABEL_131;
    }

    return 8;
  }

  if (v9 > 1717987684)
  {
    if (v9 > 1885430642)
    {
      if (v9 <= 1885759843)
      {
        if (v9 > 1885561195)
        {
          if (v9 != 1885561196)
          {
            if (v9 == 1885566064)
            {
              return v10;
            }

            v13 = 1885696116;
            goto LABEL_130;
          }

          sub_25704(buf, (a1 + 88), "", 595);
          v21 = (*(**buf + 344))(*buf);
          goto LABEL_153;
        }

        if (v9 == 1885430643)
        {
          return 8;
        }

        v19 = 1885434722;
      }

      else
      {
        if (v9 <= 1885959025)
        {
          if (v9 != 1885759844)
          {
            if (v9 == 1885955428)
            {
              return v10;
            }

            v13 = 1885956208;
LABEL_130:
            if (v9 != v13)
            {
              goto LABEL_131;
            }

            return v10;
          }

          return 8;
        }

        if (v9 == 1885959026)
        {
          return v10;
        }

        if (v9 == 1886218596)
        {
          return 8;
        }

        v19 = 1886220902;
      }

      goto LABEL_136;
    }

    if (v9 > 1768382831)
    {
      if (v9 <= 1819503986)
      {
        if (v9 != 1768382832)
        {
          v13 = 1819046768;
          goto LABEL_130;
        }
      }

      else if (v9 != 1819503987 && v9 != 1819505773)
      {
        v13 = 1869832547;
        goto LABEL_130;
      }

      goto LABEL_100;
    }

    if (v9 <= 1752327776)
    {
      if (v9 == 1717987685)
      {
        return v10;
      }

      v13 = 1717987696;
      goto LABEL_130;
    }

    if (v9 == 1752327777)
    {
      return v10;
    }

    if (v9 != 1752462195)
    {
      v15 = 1767989616;
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  if (v9 <= 1651797099)
  {
    if (v9 > 1650551923)
    {
      if (v9 > 1651796324)
      {
        v18 = v9 - 1651796325;
        if (v18 <= 0xE && ((1 << v18) & 0x4801) != 0)
        {
          return v10;
        }

        goto LABEL_131;
      }

      if (v9 == 1650551924 || v9 == 1651271025)
      {
        return v10;
      }

      v12 = 24946;
LABEL_112:
      v13 = v12 | 0x62740000;
      goto LABEL_130;
    }

    if (v9 <= 1633773924)
    {
      if (v9 != 1165513555)
      {
        v13 = 1633772644;
        goto LABEL_130;
      }

      goto LABEL_100;
    }

    if (v9 != 1633773925 && v9 != 1633973868)
    {
      v15 = 1650551140;
      goto LABEL_99;
    }

LABEL_100:
    sub_25704(buf, (a1 + 88), "", 682);
    v10 = (*(**buf + 32))(*buf, a2, a3, a4);
    goto LABEL_101;
  }

  if (v9 > 1685021039)
  {
    if (v9 > 1685287025)
    {
      switch(v9)
      {
        case 1685287026:
          if (a3 != 8 || !a4)
          {
            v23 = sub_5544(14);
            if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              v33 = *a2;
              v34 = a2[2];
              sub_22CE0(&__p);
            }

            v24 = __cxa_allocate_exception(0x10uLL);
            *v24 = &off_6DDDD0;
            v24[2] = 561211770;
          }

          return v10;
        case 1685484390:
          return 8;
        case 1702392685:
          v33 = 0x676C6F626578736DLL;
          v34 = 0;
          sub_22D75C(&__p, (a1 + 88));
          sub_22CB30(buf, &__p, 1);
          v10 = sub_4DC4A4(&v33, a3, a4, buf);
          sub_65310(buf);
          if (v37)
          {
            std::__shared_weak_count::__release_weak(v37);
          }

          return v10;
      }

      goto LABEL_131;
    }

    if (v9 == 1685021040)
    {
      return v10;
    }

    if (v9 != 1685088612)
    {
      goto LABEL_131;
    }

    sub_25704(buf, (a1 + 88), "", 642);
    v21 = (*(**buf + 392))(*buf);
    goto LABEL_153;
  }

  if (v9 <= 1651798885)
  {
    if (v9 == 1651797100)
    {
      return v10;
    }

    v12 = 28787;
    goto LABEL_112;
  }

  if (v9 == 1651798886 || v9 == 1668051827)
  {
    goto LABEL_100;
  }

  v15 = 1684826732;
LABEL_99:
  if (v9 == v15)
  {
    goto LABEL_100;
  }

LABEL_131:

  return sub_E1CEC(a1, a2);
}

void sub_2C748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_65310(&a11);
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  _Unwind_Resume(a1);
}

void sub_2C7BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int *a5, uint64_t a6)
{
  if (*a2 == 1986095470)
  {
    v12 = *a5;
    if (v12 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v366 = sub_5544(14);
      v367 = sub_468EC(1, *v366, *(v366 + 8));
      v368 = v367;
      if (v367)
      {
        v369 = v367;
        if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v13 = *sub_5544(2);
    v14 = v13;
    if (v13)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5890;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Get on queue to get initialization state", buf, 0x12u);
      }
    }

    v647[0] = _NSConcreteStackBlock;
    v647[1] = 3221225472;
    v647[2] = sub_3AF9CC;
    v647[3] = &unk_6DC438;
    v647[4] = a1;
    v15 = v647;
    v16 = *(a1 + 568);
    v18 = v17 = v16;
    dispatch_sync(v18, v15);

    *a6 = *(a1 + 108) != 2;
    return;
  }

  sub_27A4();
  v646 = (*(qword_6E94F8 + 16))();
  if (*(a1 + 108) != 2)
  {
    v371 = sub_5544(14);
    v372 = sub_468EC(1, *v371, *(v371 + 8));
    v373 = v372;
    if (v372 && os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5904;
      _os_log_impl(&dword_0, v373, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): VirtualAudio PlugIn is not initialized yet", buf, 0x12u);
    }

    v374 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v374, "VirtualAudio PlugIn is not initialized yet");
LABEL_766:
  }

  if (((*(*a1 + 48))(a1, a2) & 1) == 0)
  {
    v375 = sub_5544(14);
    v376 = sub_468EC(1, *v375, *(v375 + 8));
    v377 = 2003332927;
    if (v376)
    {
      v378 = v376;
      if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
      {
        *__p = *a2;
        *&__p[8] = *(a2 + 8);
        sub_22CE0(v652);
      }

      goto LABEL_931;
    }

    goto LABEL_774;
  }

  if ((a3 == 0) != (a4 == 0))
  {
    v379 = sub_5544(14);
    v377 = 561211770;
    v380 = sub_468EC(1, *v379, *(v379 + 8));
    if (v380)
    {
      v378 = v380;
      if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
      {
        *__p = *a2;
        *&__p[8] = *(a2 + 8);
        sub_22CE0(v652);
      }

      goto LABEL_931;
    }

    goto LABEL_774;
  }

  if (!a6)
  {
    v381 = sub_5544(14);
    v377 = 561211770;
    v382 = sub_468EC(1, *v381, *(v381 + 8));
    if (v382)
    {
      v378 = v382;
      if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
      {
        *__p = *a2;
        *&__p[8] = *(a2 + 8);
        sub_22CE0(v652);
      }

      goto LABEL_931;
    }

    goto LABEL_774;
  }

  v19 = *a2;
  if (*a2 > 1819173228)
  {
    if (v19 > 1936028520)
    {
      if (v19 > 1986094178)
      {
        if (v19 <= 1987077485)
        {
          if ((v19 - 1986094179) >= 2)
          {
            if (v19 != 1987016304)
            {
              goto LABEL_314;
            }

            v56 = sub_5544(2);
            v57 = sub_468EC(3, *v56, *(v56 + 8));
            v58 = v57;
            if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 6692;
              _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%25s:%-5d GetProperty kVirtualAudioPlugInPropertyOverrideToPartnerPort not supported", buf, 0x12u);
            }

            goto LABEL_739;
          }

          goto LABEL_161;
        }

        if (v19 != 1987077486)
        {
          if (v19 == 2019714413)
          {
            v85 = *a5;
            if (v85 == (*(*a1 + 64))(a1, a2, a3, a4))
            {
              *a6 = *(*(a1 + 216) + 24);
              *a5 = 16;
              goto LABEL_739;
            }

            v455 = sub_5544(14);
            v377 = 561211770;
            v456 = sub_468EC(1, *v455, *(v455 + 8));
            if (v456)
            {
              v378 = v456;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          goto LABEL_314;
        }

        v110 = *a5;
        if (v110 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v469 = sub_5544(14);
          v377 = 561211770;
          v470 = sub_468EC(1, *v469, *(v469 + 8));
          if (v470)
          {
            v378 = v470;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        v111 = **(a1 + 216);
      }

      else
      {
        if (v19 <= 1936745572)
        {
          if (v19 != 1936028521 && v19 != 1936225648)
          {
            if (v19 == 1936745332)
            {
              v44 = *a5;
              if (v44 >= (*(*a1 + 64))(a1, a2, a3, a4))
              {
                sub_2682E4(buf, *(a1 + 112));
                sub_3B2F0C(buf, a5, a6);
                sub_4E0BC(buf);
                goto LABEL_739;
              }

              v439 = sub_5544(14);
              v377 = 561211770;
              v440 = sub_468EC(1, *v439, *(v439 + 8));
              if (v440)
              {
                v378 = v440;
                if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
                {
                  *__p = *a2;
                  *&__p[8] = *(a2 + 8);
                  sub_22CE0(v652);
                }

                goto LABEL_931;
              }

              goto LABEL_774;
            }

            goto LABEL_314;
          }

          goto LABEL_161;
        }

        if (v19 != 1936745573)
        {
          if (v19 != 1936746862)
          {
            if (v19 == 1936882284)
            {
              v67 = *a5;
              if (v67 == (*(*a1 + 64))(a1, a2, a3, a4))
              {
                v68 = sub_8703C();
                (*(*v68 + 344))(buf);
                v69 = *&buf[8];
                v70 = sub_8703C();
                (*(*v70 + 344))(v652);
                v71 = v652[2];
                *a6 = v69;
                *(a6 + 8) = v71;
                goto LABEL_739;
              }

              v451 = sub_5544(14);
              v377 = 561211770;
              v452 = sub_468EC(1, *v451, *(v451 + 8));
              if (v452)
              {
                v378 = v452;
                if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
                {
                  *__p = *a2;
                  *&__p[8] = *(a2 + 8);
                  sub_22CE0(v652);
                }

                goto LABEL_931;
              }

              goto LABEL_774;
            }

            goto LABEL_314;
          }

          goto LABEL_180;
        }

        v134 = *a5;
        if (v134 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v481 = sub_5544(14);
          v377 = 561211770;
          v482 = sub_468EC(1, *v481, *(v481 + 8));
          if (v482)
          {
            v378 = v482;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        v135 = *(a1 + 112);
        if (!v135)
        {
          v514 = sub_5544(14);
          v515 = sub_468EC(1, *v514, *(v514 + 8));
          v492 = v515;
          if (v515 && os_log_type_enabled(v515, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6657;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_1090;
        }

        v111 = !sub_2727D0(v135, 6);
      }

      goto LABEL_709;
    }

    if (v19 > 1886549106)
    {
      if (v19 <= 1919120503)
      {
        if (v19 == 1886549107)
        {
          v124 = *a5;
          if (v124 == (*(*a1 + 64))(a1, a2, a3, a4))
          {
            memset(buf, 0, 24);
            strcpy(&buf[24], "cwdv");
            LOBYTE(v677) = 0;
            LODWORD(v678) = 3;
            v681 = 0;
            v680 = 0;
            v679 = &v680;
            v685 = 0;
            v683 = 0;
            v684 = 0;
            LODWORD(v682) = 44731050;
            memset(v652, 0, 24);
            sub_4625C(v652, a4, a4 + 4 * (a3 >> 2), a3 >> 2);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            *buf = *v652;
            *&buf[16] = v652[2];
            v125 = *(a2 + 4);
            v126 = v682 & 0xFFFFFFCF;
            if (v125 != 1768845428)
            {
              if (v125 == 1869968496)
              {
                v126 |= 0x10u;
              }

              else
              {
                v126 |= 0x20u;
              }
            }

            LODWORD(v682) = v126;
            sub_45ED0(__p, *(a1 + 128), buf);
            v314 = sub_5544(2);
            v315 = sub_5544(35);
            v316 = 0;
            v652[0] = 0x100000002;
            v317 = *(v314 + 8);
            while (1)
            {
              v318 = *(v652 + v316);
              if (((v317 & v318) != 0) != ((*(v315 + 8) & v318) != 0))
              {
                break;
              }

              v316 += 4;
              if (v316 == 8)
              {
                goto LABEL_651;
              }
            }

            if ((v317 & v318) == 0)
            {
              v314 = v315;
            }

            v317 = *(v314 + 8);
LABEL_651:
            v319 = sub_468EC(6, *v314, v317);
            v320 = v319;
            if (v319)
            {
              v321 = v319;
              if (os_log_type_enabled(v321, OS_LOG_TYPE_DEBUG))
              {
                p_theDict = &theDict;
                sub_22170(&theDict, *(a2 + 4));
                if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_theDict = theDict.__r_.__value_.__r.__words[0];
                }

                sub_24C060(v651, *buf, *&buf[8]);
                v323 = v651[23];
                v324 = *v651;
                sub_3B2CF4(v650, *&__p[8], __p);
                v325 = v651;
                if (v323 < 0)
                {
                  v325 = v324;
                }

                if (v650[23] >= 0)
                {
                  v326 = v650;
                }

                else
                {
                  v326 = *v650;
                }

                LODWORD(v652[0]) = 136316162;
                *(v652 + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v652[1]) = 1024;
                *(&v652[1] + 6) = 6411;
                WORD1(v652[2]) = 2080;
                *(&v652[2] + 4) = p_theDict;
                WORD2(v652[3]) = 2080;
                *(&v652[3] + 6) = v325;
                HIWORD(v652[4]) = 2080;
                v653 = v326;
                _os_log_impl(&dword_0, v321, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning connected ports for scope '%s' and VirtualAudioPortTypes %s: %s", v652, 0x30u);
                if ((v650[23] & 0x80000000) != 0)
                {
                  operator delete(*v650);
                }

                if ((v651[23] & 0x80000000) != 0)
                {
                  operator delete(*v651);
                }

                if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(theDict.__r_.__value_.__l.__data_);
                }
              }
            }

            v652[0] = sub_4DFFC(*&__p[8], __p);
            *a6 = CFRetain(v652[0]);
            sub_46228(v652);
            sub_4E0BC(__p);
            sub_46934(buf);
            goto LABEL_739;
          }

          v475 = sub_5544(14);
          v377 = 561211770;
          v476 = sub_468EC(1, *v475, *(v475 + 8));
          if (v476)
          {
            v378 = v476;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        if (v19 != 1886872690)
        {
          if (v19 != 1903653475)
          {
            goto LABEL_314;
          }

          v33 = *a5;
          if (v33 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v435 = sub_5544(14);
            v377 = 561211770;
            v436 = sub_468EC(1, *v435, *(v435 + 8));
            if (v436)
            {
              v378 = v436;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          if (!a3)
          {
            v34 = sub_5544(2);
            v35 = sub_468EC(3, *v34, *(v34 + 8));
            v36 = v35;
            if (v35)
            {
              v37 = v35;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }
            }

            if (sub_7E96C())
            {
              sub_232774(v652, *(a1 + 128), *(a2 + 4));
              v38 = sub_5544(2);
              v39 = sub_5544(35);
              v40 = 0;
              *buf = 0x100000002;
              v41 = *(v38 + 8);
              while (1)
              {
                v42 = *&buf[v40];
                if (((v41 & v42) != 0) != ((*(v39 + 8) & v42) != 0))
                {
                  break;
                }

                v40 += 4;
                if (v40 == 8)
                {
                  goto LABEL_679;
                }
              }

              if ((v41 & v42) == 0)
              {
                v38 = v39;
              }

              v41 = *(v38 + 8);
LABEL_679:
              v332 = sub_468EC(3, *v38, v41);
              v333 = v332;
              if (v332)
              {
                v334 = v332;
                if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1D9C0C(__p, v652[0], v652[1]);
                  v335 = __p[23] >= 0 ? __p : *__p;
                  *buf = 136315650;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 6553;
                  *&buf[18] = 2080;
                  *&buf[20] = v335;
                  _os_log_impl(&dword_0, v334, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connected quiesceable wired ports: %s", buf, 0x1Cu);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }
              }

              v336 = sub_AFB90(v652);
              *buf = 0;
              *a6 = v336;
              sub_46228(buf);
              if (v652[0])
              {
                operator delete(v652[0]);
              }

              goto LABEL_739;
            }

            v262 = sub_2326F4(*(a1 + 128));
            *__p = 0;
            if (v262)
            {
              sub_A14D8(&theDict, v262);
              *buf = &theDict;
              *&buf[8] = 1;
              v263 = sub_3B2E0C(buf);
              v264 = *__p;
              *__p = v263;
              v652[0] = v264;
              sub_46228(v652);
              if (theDict.__r_.__value_.__r.__words[0])
              {
                CFRelease(theDict.__r_.__value_.__l.__data_);
              }
            }

            v265 = sub_5544(2);
            v266 = sub_5544(35);
            v267 = 0;
            *buf = 0x100000002;
            v268 = *(v265 + 8);
            while (1)
            {
              v269 = *&buf[v267];
              if (((v268 & v269) != 0) != ((*(v266 + 8) & v269) != 0))
              {
                break;
              }

              v267 += 4;
              if (v267 == 8)
              {
                goto LABEL_692;
              }
            }

            if ((v268 & v269) == 0)
            {
              v265 = v266;
            }

            v268 = *(v265 + 8);
LABEL_692:
            v337 = sub_468EC(6, *v265, v268);
            v338 = v337;
            if (v337)
            {
              v339 = v337;
              if (os_log_type_enabled(v339, OS_LOG_TYPE_DEBUG))
              {
                if (v262)
                {
                  sub_3B2EA4(v652, *__p);
                  if (SHIBYTE(v652[2]) >= 0)
                  {
                    v340 = v652;
                  }

                  else
                  {
                    v340 = v652[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 6573;
                  *&buf[18] = 2080;
                  *&buf[20] = v340;
                  _os_log_impl(&dword_0, v339, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning Last connected quiesceable wired port: %s", buf, 0x1Cu);
                  if (SHIBYTE(v652[2]) < 0)
                  {
                    operator delete(v652[0]);
                  }
                }

                else
                {
                  *buf = 136315650;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 6573;
                  *&buf[18] = 2080;
                  *&buf[20] = "None";
                  _os_log_impl(&dword_0, v339, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning Last connected quiesceable wired port: %s", buf, 0x1Cu);
                }
              }
            }

            v353 = *__p;
            *__p = 0;
            *a6 = v353;
            v281 = __p;
            goto LABEL_738;
          }

          v490 = sub_5544(14);
          v491 = sub_468EC(1, *v490, *(v490 + 8));
          v492 = v491;
          if (v491 && os_log_type_enabled(v491, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6546;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_1090;
        }

        if ((sub_7E96C() & 1) == 0)
        {
          v652[0] = v652;
          v652[1] = v652;
          v652[2] = 0;
          *__p = __p;
          *&__p[8] = __p;
          *&__p[16] = 0;
          sub_87CE8(buf, v652, __p);
          sub_65310(__p);
          sub_65310(v652);
          sub_87E74(v652, buf);
          memset(__p, 0, 24);
          sub_87D50();
        }

        sub_7E9F0(&v639);
        v95 = *a5;
        if (v95 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v601 = sub_5544(14);
          v602 = sub_468EC(1, *v601, *(v601 + 8));
          v603 = v602;
          if (v602)
          {
            v604 = v602;
            if (os_log_type_enabled(v604, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }
          }

          v605 = __cxa_allocate_exception(0x10uLL);
          *v605 = &off_6DDDD0;
          v605[2] = 561211770;
        }

        if ((a3 | 8) != 8)
        {
          v631 = sub_5544(14);
          v632 = sub_468EC(1, *v631, *(v631 + 8));
          v633 = v632;
          if (v632 && os_log_type_enabled(v632, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6503;
            _os_log_impl(&dword_0, v633, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v634 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v634, "Precondition failure.");
        }

        sub_10FD4(&v638, a4);
        if (v638.__r_.__value_.__r.__words[0] && (sub_7EC04(&v638), v638.__r_.__value_.__r.__words[0]))
        {
          sub_38188(buf, a1, &v638, 0, 1);
        }

        else
        {
          sub_A1DF4(buf, a1);
        }

        memset(v652, 0, 24);
        LODWORD(v653) = 3;
        v655 = 0;
        v656 = 0;
        v654 = &v655;
        v659 = 0;
        v660 = 0;
        v658 = 0;
        v657 = 44731048;
        LODWORD(v652[3]) = 1986295651;
        HIDWORD(v652[3]) = *&buf[4];
        LOBYTE(v652[4]) = 1;
        sub_270D20(v651, *(a1 + 112), buf, v652, v721);
        switch(*v651)
        {
          case 0:
            sub_87554(*(a2 + 4), &v651[8]);
            memset(__p, 0, 24);
            strcpy(&__p[24], "cwdv");
            __p[32] = 0;
            LODWORD(v668) = 3;
            v671 = 0;
            v670 = 0;
            v669 = &v670;
            v672 = 44739242;
            v675 = 0;
            v673 = 0;
            v674 = 0;
            sub_87760(v650, a1, &v651[8], __p);
            sub_46934(__p);
            v327 = sub_5544(2);
            v328 = sub_5544(35);
            v329 = 0;
            *__p = 0x100000002;
            v330 = *(v327 + 8);
            while (1)
            {
              v331 = *&__p[v329];
              if (((v330 & v331) != 0) != ((*(v328 + 8) & v331) != 0))
              {
                break;
              }

              v329 += 4;
              if (v329 == 8)
              {
                goto LABEL_703;
              }
            }

            if ((v330 & v331) == 0)
            {
              v327 = v328;
            }

            v330 = *(v327 + 8);
LABEL_703:
            v341 = sub_468EC(6, *v327, v330);
            v342 = v341;
            if (v341)
            {
              v343 = v341;
              if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
              {
                sub_879F8(&theDict, buf);
                cf = *a2;
                LODWORD(v641) = *(a2 + 8);
                sub_22CE0(&v645);
              }
            }

            theDict.__r_.__value_.__r.__words[0] = &theDict;
            theDict.__r_.__value_.__l.__size_ = &theDict;
            theDict.__r_.__value_.__r.__words[2] = 0;
            sub_87CE8(__p, &theDict, &v651[8]);
            sub_65310(&theDict);
            sub_87E74(&theDict, __p);
            memset(&v645, 0, sizeof(v645));
            sub_87D50();
          case 2:
            v620 = sub_5544(14);
            v432 = 1852793716;
            v621 = sub_468EC(1, *v620, *(v620 + 8));
            v431 = v621;
            if (!v621 || !os_log_type_enabled(v621, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1123;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6525;
            v622 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsWithDeviceForRouteConfiguration)";
            break;
          case 1:
            v429 = sub_5544(14);
            v430 = sub_468EC(1, *v429, *(v429 + 8));
            v431 = v430;
            v432 = 1852797556;
            if (v430 && os_log_type_enabled(v430, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6525;
              _os_log_impl(&dword_0, v431, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsWithDeviceForRouteConfiguration)", __p, 0x12u);
              v432 = 1852797556;
            }

LABEL_1123:

            v625 = __cxa_allocate_exception(0x10uLL);
            *v625 = &off_6DDDD0;
            v625[2] = v432;
          default:
            v623 = sub_5544(14);
            v432 = 2003329396;
            v624 = sub_468EC(1, *v623, *(v623 + 8));
            v431 = v624;
            if (!v624 || !os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1123;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6525;
            v622 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsWithDeviceForRouteConfiguration)";
            break;
        }

        _os_log_impl(&dword_0, v431, OS_LOG_TYPE_ERROR, v622, __p, 0x12u);
        goto LABEL_1123;
      }

      if (v19 != 1919120504)
      {
        if (v19 != 1920297328)
        {
          if (v19 == 1920426613)
          {
            v60 = *a5;
            if (v60 == (*(*a1 + 64))(a1, a2, a3, a4))
            {
              *a6 = *(a1 + 200);
              goto LABEL_739;
            }

            v447 = sub_5544(14);
            v377 = 561211770;
            v448 = sub_468EC(1, *v447, *(v447 + 8));
            if (v448)
            {
              v378 = v448;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          goto LABEL_314;
        }

        v106 = *a5;
        if (v106 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v463 = sub_5544(14);
          v377 = 561211770;
          v464 = sub_468EC(1, *v463, *(v463 + 8));
          if (v464)
          {
            v378 = v464;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        v107 = *(a1 + 192) == 0;
LABEL_271:
        v111 = !v107;
        goto LABEL_709;
      }

      v128 = *a5;
      if (v128 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v479 = sub_5544(14);
        v377 = 561211770;
        v480 = sub_468EC(1, *v479, *(v479 + 8));
        if (v480)
        {
          v378 = v480;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      v129 = sub_5544(2);
      v130 = sub_5544(35);
      v131 = 0;
      *buf = 0x100000002;
      v132 = *(v129 + 8);
      while (1)
      {
        v133 = *&buf[v131];
        if (((v132 & v133) != 0) != ((*(v130 + 8) & v133) != 0))
        {
          break;
        }

        v131 += 4;
        if (v131 == 8)
        {
          goto LABEL_436;
        }
      }

      if ((v132 & v133) == 0)
      {
        v129 = v130;
      }

      v132 = *(v129 + 8);
LABEL_436:
      v228 = sub_468EC(6, *v129, v132);
      v229 = v228;
      if (v228)
      {
        v230 = v228;
        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v652, *(a1 + 224));
          v231 = SHIBYTE(v652[2]) >= 0 ? v652 : v652[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6334;
          *&buf[18] = 2080;
          *&buf[20] = v231;
          _os_log_impl(&dword_0, v230, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning current category: '%s'", buf, 0x1Cu);
          if (SHIBYTE(v652[2]) < 0)
          {
            operator delete(v652[0]);
          }
        }
      }

      v111 = *(a1 + 224);
LABEL_709:
      *a6 = v111;
      goto LABEL_739;
    }

    if (v19 <= 1885958771)
    {
      if (v19 == 1819173229)
      {
        v108 = *a5;
        if (v108 == (*(*a1 + 64))(a1, a2, a3, a4))
        {
          *a6 = @"com.apple.audio.CoreAudio.VirtualAudio";
          CFRetain(@"com.apple.audio.CoreAudio.VirtualAudio");
          goto LABEL_739;
        }

        v465 = sub_5544(14);
        v377 = 561211770;
        v466 = sub_468EC(1, *v465, *(v465 + 8));
        if (v466)
        {
          v378 = v466;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      if (v19 != 1868853875)
      {
        goto LABEL_314;
      }

      v73 = *a5;
      if (v73 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v453 = sub_5544(14);
        v377 = 561211770;
        v454 = sub_468EC(1, *v453, *(v453 + 8));
        if (v454)
        {
          v378 = v454;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      if (a3 == 8)
      {
        if (a4)
        {
          sub_10FD4(v652, a4);
          sub_A3240(buf, v652);
          sub_4BA7C(v652);
          v74 = *&buf[8];
          if (*&buf[8] == buf)
          {
LABEL_158:
            v75 = 1;
          }

          else
          {
            while (sub_A5224(v74 + 16))
            {
              v74 = *(v74 + 8);
              if (v74 == buf)
              {
                goto LABEL_158;
              }
            }

            v75 = 0;
          }

          *a6 = v75;
          sub_76304(buf);
          goto LABEL_739;
        }

        v524 = sub_5544(14);
        v525 = sub_468EC(1, *v524, *(v524 + 8));
        v492 = v525;
        if (v525 && os_log_type_enabled(v525, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6712;
          _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        v500 = sub_5544(14);
        v501 = sub_468EC(1, *v500, *(v500 + 8));
        v492 = v501;
        if (v501 && os_log_type_enabled(v501, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6711;
          _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      goto LABEL_1090;
    }

    if (v19 != 1885958772)
    {
      if (v19 != 1886350709)
      {
        if (v19 != 1886548848)
        {
          goto LABEL_314;
        }

        v48 = *a5;
        if (v48 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v443 = sub_5544(14);
          v377 = 561211770;
          v444 = sub_468EC(1, *v443, *(v443 + 8));
          if (v444)
          {
            v378 = v444;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        if ((a3 | 8) != 8)
        {
          v585 = sub_5544(14);
          v586 = sub_468EC(1, *v585, *(v585 + 8));
          v492 = v586;
          if (v586 && os_log_type_enabled(v586, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6172;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_1090;
        }

        v49 = *(a2 + 8);
        if (!a4)
        {
          sub_A1DF4(buf, a1);
          sub_44E98(v652, buf);
          sub_4AE8C(buf);
          v50 = sub_45324(**(a1 + 112), v652[0], v652[1], v49, &v659, v661, v665, v666);
          sub_4AF90(v652);
          goto LABEL_259;
        }

        sub_10FD4(__p, a4);
        sub_37E90(__p);
        sub_38188(buf, a1, __p, 0, 1);
        sub_44E98(v652, buf);
        sub_4AE8C(buf);
        v50 = sub_45324(**(a1 + 112), v652[0], v652[1], v49, &v659, v661, v665, v666);
        sub_4AF90(v652);
        v51 = __p;
LABEL_258:
        sub_4BA7C(v51);
LABEL_259:
        *a6 = v50;
        goto LABEL_739;
      }

      v116 = *a5;
      if (v116 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v473 = sub_5544(14);
        v377 = 561211770;
        v474 = sub_468EC(1, *v473, *(v473 + 8));
        if (v474)
        {
          v378 = v474;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      v117 = sub_5544(2);
      v118 = sub_5544(39);
      v119 = 0;
      *buf = 0x100000002;
      v120 = *(v117 + 8);
      while (1)
      {
        v121 = *&buf[v119];
        if (((v120 & v121) != 0) != ((*(v118 + 8) & v121) != 0))
        {
          break;
        }

        v119 += 4;
        if (v119 == 8)
        {
          goto LABEL_429;
        }
      }

      if ((v120 & v121) == 0)
      {
        v117 = v118;
      }

      v120 = *(v117 + 8);
LABEL_429:
      v225 = sub_468EC(3, *v117, v120);
      v226 = v225;
      if (v225 && os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
      {
        v227 = *(a1 + 168);
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 6597;
        *&buf[18] = 1024;
        *&buf[20] = v227;
        _os_log_impl(&dword_0, v226, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Returning policy mute: %u.", buf, 0x18u);
      }

      v111 = *(a1 + 168);
      goto LABEL_709;
    }

    v138 = *a5;
    if (v138 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v485 = sub_5544(14);
      v377 = 561211770;
      v486 = sub_468EC(1, *v485, *(v485 + 8));
      if (v486)
      {
        v378 = v486;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    if (a3 != 8 || !a4)
    {
      v520 = sub_5544(14);
      v377 = 561211770;
      v521 = sub_468EC(1, *v520, *(v520 + 8));
      if (v521)
      {
        v378 = v521;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    memset(&theDict, 0, sizeof(theDict));
    cf = 0;
    sub_10FD4(&v639, a4);
    sub_A6818(&v639, "kVirtualAudioPlugInPropertyPickedRoutesForRouteConfiguration");
    sub_38188(buf, a1, &v639, 0, 1);
    if (v723)
    {
      v139 = v722;
    }

    else
    {
      v139 = &qword_6F5A00;
    }

    sub_75848(v651, v139);
    sub_3AE5F4(v652, a1, buf, v651);
    if ((v655 & 1) != 0 || !LODWORD(v652[0]))
    {
      sub_3AF510(v652);
      sub_87F44(__p, a1, v652, v651);
      v140 = cf;
      cf = *__p;
      *__p = v140;
      sub_46228(__p);
      v141 = sub_5544(2);
      if (sub_76378(*v141, v141[1]))
      {
        sub_BCD50(&v644, buf);
        sub_27E10C(&v645, "Returning pickedRoutes for routeConfiguration ", &v644);
        sub_27E0AC(__p, &v645, ":");
        sub_3AFCC4(v650, &cf, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v645.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v644.__r_.__value_.__l.__data_);
        }

        for (i = *&v650[8]; i != v650; i = *(i + 8))
        {
          v143 = sub_5544(2);
          v144 = sub_5544(35);
          v145 = 0;
          *__p = 0x100000002;
          v146 = *(v143 + 8);
          while (1)
          {
            v147 = *&__p[v145];
            if (((v146 & v147) != 0) != ((*(v144 + 8) & v147) != 0))
            {
              break;
            }

            v145 += 4;
            if (v145 == 8)
            {
              if ((v146 & 1) == 0)
              {
                goto LABEL_304;
              }

              goto LABEL_298;
            }
          }

          if ((v146 & v147) == 0)
          {
            v143 = v144;
          }

          if (*(v143 + 8))
          {
LABEL_298:
            v148 = *v143;
            if (v148)
            {
              v149 = v148;
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
              {
                v150 = (i + 16);
                if (*(i + 39) < 0)
                {
                  v150 = *v150;
                }

                *__p = 136315650;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 6144;
                *&__p[18] = 2080;
                *&__p[20] = v150;
                _os_log_impl(&dword_0, v149, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", __p, 0x1Cu);
              }
            }

            continue;
          }

LABEL_304:
          ;
        }

        sub_20BC1C(v650);
      }

      sub_88CE8(__p, "active devices");
      sub_3B12E4(&__p[8], cf);
      sub_88E68(&theDict, __p);
      sub_1D5D20(__p);
      sub_3AF510(v652);
      sub_3B131C(__p, &v652[3]);
      sub_88E68(&theDict, __p);
      sub_1D5D20(__p);
      sub_3AF510(v652);
      sub_3B13F0(__p, &v652[4]);
      sub_88E68(&theDict, __p);
      sub_1D5D20(__p);
      v151 = sub_65448(&theDict);
      *__p = 0;
      *a6 = v151;
      sub_4BA7C(__p);
      if (v655 == 1)
      {
        sub_DF7E4(v652);
      }

      sub_76304(v651);
      sub_4AE8C(buf);
      sub_4BA7C(&v639.__r_.__value_.__l.__data_);
      sub_46228(&cf);
      *buf = &theDict;
      sub_65830(buf);
      goto LABEL_739;
    }

    if (LODWORD(v652[0]) == 2)
    {
      v614 = sub_5544(14);
      v428 = 1852793716;
      v615 = sub_468EC(1, *v614, *(v614 + 8));
      v427 = v615;
      if (!v615 || !os_log_type_enabled(v615, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1115;
      }

      *__p = 136315394;
      *&__p[4] = "VirtualAudio_PlugIn.mm";
      *&__p[12] = 1024;
      *&__p[14] = 6137;
      v616 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyPickedRoutesForRouteConfiguration.)";
    }

    else
    {
      if (LODWORD(v652[0]) == 1)
      {
        v425 = sub_5544(14);
        v426 = sub_468EC(1, *v425, *(v425 + 8));
        v427 = v426;
        v428 = 1852797556;
        if (v426 && os_log_type_enabled(v426, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 6137;
          _os_log_impl(&dword_0, v427, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyPickedRoutesForRouteConfiguration.)", __p, 0x12u);
          v428 = 1852797556;
        }

LABEL_1115:

        v619 = __cxa_allocate_exception(0x10uLL);
        *v619 = &off_6DDDD0;
        v619[2] = v428;
      }

      v617 = sub_5544(14);
      v428 = 2003329396;
      v618 = sub_468EC(1, *v617, *(v617 + 8));
      v427 = v618;
      if (!v618 || !os_log_type_enabled(v618, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1115;
      }

      *__p = 136315394;
      *&__p[4] = "VirtualAudio_PlugIn.mm";
      *&__p[12] = 1024;
      *&__p[14] = 6137;
      v616 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyPickedRoutesForRouteConfiguration.)";
    }

    _os_log_impl(&dword_0, v427, OS_LOG_TYPE_ERROR, v616, __p, 0x12u);
    goto LABEL_1115;
  }

  if (v19 <= 1651664754)
  {
    if (v19 > 1634629489)
    {
      if (v19 <= 1635152482)
      {
        if (v19 != 1634629490)
        {
          if (v19 != 1634756195)
          {
            if (v19 == 1634759267)
            {
              v20 = *a5;
              if (v20 == (*(*a1 + 64))(a1, a2, a3, a4))
              {
                if ((a3 | 8) == 8)
                {
                  v644.__r_.__value_.__r.__words[0] = 0;
                  if (!a4)
                  {
                    sub_AEEB4(buf, *(a1 + 120));
                    sub_AF140(v652, a1, buf);
                    v270 = v644.__r_.__value_.__r.__words[0];
                    v644.__r_.__value_.__l.__data_ = v652[0];
                    v652[0] = v270;
                    sub_46228(v652);
                    sub_76304(buf);
                    v271 = sub_5544(2);
                    if (sub_76378(*v271, v271[1]))
                    {
                      sub_53E8(buf, "Returning active ports for category/mode [null]:");
                      sub_3AFCC4(v652, &v644, buf);
                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      for (j = v652[1]; j != v652; j = *(j + 1))
                      {
                        v273 = sub_5544(2);
                        v274 = sub_5544(35);
                        v275 = 0;
                        *buf = 0x100000002;
                        v276 = *(v273 + 8);
                        while (1)
                        {
                          v277 = *&buf[v275];
                          if (((v276 & v277) != 0) != ((*(v274 + 8) & v277) != 0))
                          {
                            break;
                          }

                          v275 += 4;
                          if (v275 == 8)
                          {
                            if ((v276 & 1) == 0)
                            {
                              goto LABEL_548;
                            }

                            goto LABEL_542;
                          }
                        }

                        if ((v276 & v277) == 0)
                        {
                          v273 = v274;
                        }

                        if (*(v273 + 8))
                        {
LABEL_542:
                          v278 = *v273;
                          if (v278)
                          {
                            v279 = v278;
                            if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
                            {
                              v280 = (j + 16);
                              if (*(j + 39) < 0)
                              {
                                v280 = *v280;
                              }

                              *buf = 136315650;
                              *&buf[4] = "VirtualAudio_PlugIn.mm";
                              *&buf[12] = 1024;
                              *&buf[14] = 6105;
                              *&buf[18] = 2080;
                              *&buf[20] = v280;
                              _os_log_impl(&dword_0, v279, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
                            }
                          }

                          continue;
                        }

LABEL_548:
                        ;
                      }

                      sub_20BC1C(v652);
                    }

                    goto LABEL_550;
                  }

                  sub_10FD4(&cf, a4);
                  sub_755C4(&cf);
                  sub_38188(buf, a1, &cf, 0, 1);
                  if (v723)
                  {
                    v21 = v722;
                  }

                  else
                  {
                    v21 = &qword_6F5A00;
                  }

                  sub_75848(&theDict, v21);
                  sub_269208(v652, *(a1 + 112), buf, &theDict, 0);
                  switch(LODWORD(v652[0]))
                  {
                    case 0:
                      sub_87F44(__p, a1, &v652[1], &theDict);
                      v22 = v644.__r_.__value_.__r.__words[0];
                      v644.__r_.__value_.__r.__words[0] = *__p;
                      *__p = v22;
                      sub_46228(__p);
                      v23 = sub_5544(2);
                      if (sub_76378(*v23, v23[1]))
                      {
                        sub_879F8(&v645, buf);
                        sub_27E10C(v650, "Returning active ports for category/mode ", &v645);
                        sub_27E0AC(__p, v650, ":");
                        sub_3AFCC4(v651, &v644, __p);
                        if ((__p[23] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        if ((v650[23] & 0x80000000) != 0)
                        {
                          operator delete(*v650);
                        }

                        if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v645.__r_.__value_.__l.__data_);
                        }

                        for (k = *&v651[8]; k != v651; k = *(k + 8))
                        {
                          v25 = sub_5544(2);
                          v26 = sub_5544(35);
                          v27 = 0;
                          *__p = 0x100000002;
                          v28 = *(v25 + 8);
                          while (1)
                          {
                            v29 = *&__p[v27];
                            if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
                            {
                              break;
                            }

                            v27 += 4;
                            if (v27 == 8)
                            {
                              if ((v28 & 1) == 0)
                              {
                                goto LABEL_47;
                              }

                              goto LABEL_41;
                            }
                          }

                          if ((v28 & v29) == 0)
                          {
                            v25 = v26;
                          }

                          if (*(v25 + 8))
                          {
LABEL_41:
                            v30 = *v25;
                            if (v30)
                            {
                              v31 = v30;
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                              {
                                v32 = (k + 16);
                                if (*(k + 39) < 0)
                                {
                                  v32 = *v32;
                                }

                                *__p = 136315650;
                                *&__p[4] = "VirtualAudio_PlugIn.mm";
                                *&__p[12] = 1024;
                                *&__p[14] = 6099;
                                *&__p[18] = 2080;
                                *&__p[20] = v32;
                                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", __p, 0x1Cu);
                              }
                            }

                            continue;
                          }

LABEL_47:
                          ;
                        }

                        sub_20BC1C(v651);
                      }

                      *__p = &v652[1];
                      sub_847A8(__p);
                      sub_76304(&theDict);
                      sub_4AE8C(buf);
                      sub_4BA7C(&cf);
LABEL_550:
                      *a6 = CFRetain(v644.__r_.__value_.__l.__data_);
                      v281 = &v644;
LABEL_738:
                      sub_46228(&v281->__r_.__value_.__l.__data_);
                      goto LABEL_739;
                    case 2:
                      v577 = sub_5544(14);
                      v424 = 1852793716;
                      v578 = sub_468EC(1, *v577, *(v577 + 8));
                      v423 = v578;
                      if (!v578 || !os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_1062;
                      }

                      *__p = 136315394;
                      *&__p[4] = "VirtualAudio_PlugIn.mm";
                      *&__p[12] = 1024;
                      *&__p[14] = 6093;
                      v579 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForRouteConfiguration.)";
                      break;
                    case 1:
                      v421 = sub_5544(14);
                      v422 = sub_468EC(1, *v421, *(v421 + 8));
                      v423 = v422;
                      v424 = 1852797556;
                      if (v422 && os_log_type_enabled(v422, OS_LOG_TYPE_ERROR))
                      {
                        *__p = 136315394;
                        *&__p[4] = "VirtualAudio_PlugIn.mm";
                        *&__p[12] = 1024;
                        *&__p[14] = 6093;
                        _os_log_impl(&dword_0, v423, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForRouteConfiguration.)", __p, 0x12u);
                        v424 = 1852797556;
                      }

LABEL_1062:

                      v582 = __cxa_allocate_exception(0x10uLL);
                      *v582 = &off_6DDDD0;
                      v582[2] = v424;
                    default:
                      v580 = sub_5544(14);
                      v424 = 2003329396;
                      v581 = sub_468EC(1, *v580, *(v580 + 8));
                      v423 = v581;
                      if (!v581 || !os_log_type_enabled(v581, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_1062;
                      }

                      *__p = 136315394;
                      *&__p[4] = "VirtualAudio_PlugIn.mm";
                      *&__p[12] = 1024;
                      *&__p[14] = 6093;
                      v579 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForRouteConfiguration.)";
                      break;
                  }

                  _os_log_impl(&dword_0, v423, OS_LOG_TYPE_ERROR, v579, __p, 0x12u);
                  goto LABEL_1062;
                }

                v583 = sub_5544(14);
                v584 = sub_468EC(1, *v583, *(v583 + 8));
                v492 = v584;
                if (v584 && os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 6074;
                  _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                }

                goto LABEL_1090;
              }

              v433 = sub_5544(14);
              v377 = 561211770;
              v434 = sub_468EC(1, *v433, *(v433 + 8));
              if (v434)
              {
                v378 = v434;
                if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
                {
                  *__p = *a2;
                  *&__p[8] = *(a2 + 8);
                  sub_22CE0(v652);
                }

LABEL_931:

LABEL_932:
                v489 = __cxa_allocate_exception(0x10uLL);
                *v489 = &off_6DDDD0;
                v489[2] = v377;
              }

              goto LABEL_774;
            }

LABEL_314:
            sub_A654C(a1, a2, a3, a4, a5, a6);
            goto LABEL_739;
          }

          v91 = *a5;
          if (v91 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v457 = sub_5544(14);
            v377 = 561211770;
            v458 = sub_468EC(1, *v457, *(v457 + 8));
            if (v458)
            {
              v378 = v458;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

LABEL_774:
            v378 = 0;
            goto LABEL_932;
          }

          if ((a3 | 4) == 4)
          {
            v645.__r_.__value_.__r.__words[0] = 0;
            *buf = sub_3AFAA4(a1, a3, a4);
            *&buf[8] = v92;
            v93 = *(a1 + 216);
            __p[0] = 0;
            __p[8] = 0;
            v94 = *(v93 + 16) == 1 && (sub_98A64(__p, *(v93 + 8)), __p[8] = 1, *__p) && CFDictionaryGetCount(*__p) != 0;
            sub_43E6C(v652, buf, v94, 0);
            sub_3A6658(__p);
            if (!a4)
            {
              sub_AEEB4(buf, *(a1 + 120));
              sub_AF140(__p, a1, buf);
              v293 = v645.__r_.__value_.__r.__words[0];
              v645.__r_.__value_.__r.__words[0] = *__p;
              *__p = v293;
              sub_46228(__p);
              sub_76304(buf);
              goto LABEL_583;
            }

            v157 = 1852793716;
            *__p = 1852796517;
            memset(&__p[8], 0, 24);
            *&__p[32] = 0x756E64656175746FLL;
            *&theDict.__r_.__value_.__r.__words[1] = 0uLL;
            theDict.__r_.__value_.__r.__words[0] = &theDict.__r_.__value_.__l.__size_;
            *&v651[8] = 0;
            *&v651[16] = 0;
            *v651 = &v651[8];
            *v650 = &v650[8];
            *&v650[8] = 0;
            v158 = *(a1 + 472) != 0;
            v159 = *(a1 + 560) != 0;
            *&v650[16] = 0;
            sub_26D168(buf, v652, &theDict, &v652[2], v651, v650, __p, 1668248944, v158, v159);
            sub_477A0(*&v650[8]);
            sub_4B0F4(*&v651[8]);
            sub_4B0F4(theDict.__r_.__value_.__l.__size_);
            v160 = *(a1 + 112);
            v651[0] = 0;
            v651[4] = 0;
            sub_269208(&theDict, v160, buf, &qword_6F5A00, 0);
            switch(LODWORD(theDict.__r_.__value_.__l.__data_))
            {
              case 0:
                sub_87F44(v651, a1, &theDict.__r_.__value_.__l.__size_, &qword_6F5A00);
                v161 = v645.__r_.__value_.__r.__words[0];
                v645.__r_.__value_.__r.__words[0] = *v651;
                *v651 = v161;
                sub_46228(v651);
                *v651 = &theDict.__r_.__value_.__l.__size_;
                sub_847A8(v651);
                sub_4AF90(buf);
LABEL_583:
                v294 = sub_5544(2);
                if (sub_76378(*v294, v294[1]))
                {
                  if (a4)
                  {
                    sub_22170(v651, v652[0]);
                  }

                  else
                  {
                    sub_53E8(v651, "null");
                  }

                  sub_27E10C(&theDict, "Returning active ports for category [", v651);
                  sub_27E0AC(buf, &theDict, "]:");
                  sub_3AFCC4(__p, &v645, buf);
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(theDict.__r_.__value_.__l.__data_);
                  }

                  if ((v651[23] & 0x80000000) != 0)
                  {
                    operator delete(*v651);
                  }

                  for (m = *&__p[8]; m != __p; m = *(m + 8))
                  {
                    v345 = sub_5544(2);
                    v346 = sub_5544(35);
                    v347 = 0;
                    *buf = 0x100000002;
                    v348 = *(v345 + 8);
                    while (1)
                    {
                      v349 = *&buf[v347];
                      if (((v348 & v349) != 0) != ((*(v346 + 8) & v349) != 0))
                      {
                        break;
                      }

                      v347 += 4;
                      if (v347 == 8)
                      {
                        if ((v348 & 1) == 0)
                        {
                          goto LABEL_732;
                        }

                        goto LABEL_726;
                      }
                    }

                    if ((v348 & v349) == 0)
                    {
                      v345 = v346;
                    }

                    if (*(v345 + 8))
                    {
LABEL_726:
                      v350 = *v345;
                      if (v350)
                      {
                        v351 = v350;
                        if (os_log_type_enabled(v350, OS_LOG_TYPE_DEBUG))
                        {
                          v352 = (m + 16);
                          if (*(m + 39) < 0)
                          {
                            v352 = *v352;
                          }

                          *buf = 136315650;
                          *&buf[4] = "VirtualAudio_PlugIn.mm";
                          *&buf[12] = 1024;
                          *&buf[14] = 6065;
                          *&buf[18] = 2080;
                          *&buf[20] = v352;
                          _os_log_impl(&dword_0, v351, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
                        }
                      }

                      continue;
                    }

LABEL_732:
                    ;
                  }

                  sub_20BC1C(__p);
                }

                *a6 = CFRetain(v645.__r_.__value_.__l.__data_);
                sub_477A0(v652[3]);
                v281 = &v645;
                goto LABEL_738;
              case 2:
                v572 = sub_5544(14);
                v573 = sub_468EC(1, *v572, *(v572 + 8));
                v420 = v573;
                if (!v573 || !os_log_type_enabled(v573, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1139;
                }

                *v651 = 136315394;
                *&v651[4] = "VirtualAudio_PlugIn.mm";
                *&v651[12] = 1024;
                *&v651[14] = 6056;
                v574 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForCategory.)";
                break;
              case 1:
                v418 = sub_5544(14);
                v419 = sub_468EC(1, *v418, *(v418 + 8));
                v420 = v419;
                if (v419 && os_log_type_enabled(v419, OS_LOG_TYPE_ERROR))
                {
                  *v651 = 136315394;
                  *&v651[4] = "VirtualAudio_PlugIn.mm";
                  *&v651[12] = 1024;
                  *&v651[14] = 6056;
                  _os_log_impl(&dword_0, v420, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForCategory.)", v651, 0x12u);
                  v157 = 1852797556;
                }

                else
                {
                  v157 = 1852797556;
                }

LABEL_1139:

                v635 = __cxa_allocate_exception(0x10uLL);
                *v635 = &off_6DDDD0;
                v635[2] = v157;
              default:
                v575 = sub_5544(14);
                v157 = 2003329396;
                v576 = sub_468EC(1, *v575, *(v575 + 8));
                v420 = v576;
                if (!v576 || !os_log_type_enabled(v576, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1139;
                }

                *v651 = 136315394;
                *&v651[4] = "VirtualAudio_PlugIn.mm";
                *&v651[12] = 1024;
                *&v651[14] = 6056;
                v574 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActivePortsForCategory.)";
                break;
            }

            _os_log_impl(&dword_0, v420, OS_LOG_TYPE_ERROR, v574, v651, 0x12u);
            goto LABEL_1139;
          }

          v589 = sub_5544(14);
          v590 = sub_468EC(1, *v589, *(v589 + 8));
          v492 = v590;
          if (v590 && os_log_type_enabled(v590, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6041;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

LABEL_1090:

          v374 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v374, "Precondition failure.");
          goto LABEL_766;
        }

        sub_B1668(&v644);
        v123 = *a5;
        if (v123 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v509 = sub_5544(14);
          v510 = sub_468EC(1, *v509, *(v509 + 8));
          v511 = v510;
          if (v510)
          {
            v512 = v510;
            if (os_log_type_enabled(v512, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }
          }

          v513 = __cxa_allocate_exception(0x10uLL);
          *v513 = &off_6DDDD0;
          v513[2] = 561211770;
        }

        if ((a3 | 8) != 8)
        {
          v610 = sub_5544(14);
          v611 = sub_468EC(1, *v610, *(v610 + 8));
          v612 = v611;
          if (v611 && os_log_type_enabled(v611, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6010;
            _os_log_impl(&dword_0, v612, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v613 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v613, "Precondition failure.");
        }

        if (a4)
        {
          sub_10FD4(&cf, a4);
        }

        else
        {
          *&buf[8] = 0;
          *buf = 0;
          cf = sub_69CE8(buf);
        }

        sub_B187C(&cf);
        sub_38188(buf, a1, &cf, 0, 1);
        if (v723)
        {
          v282 = v722;
        }

        else
        {
          v282 = &qword_6F5A00;
        }

        sub_75848(&theDict, v282);
        sub_269208(v652, *(a1 + 112), buf, &theDict, 1);
        switch(LODWORD(v652[0]))
        {
          case 0:
            sub_87F44(&v639, a1, &v652[1], &theDict);
            v283 = sub_5544(2);
            if (sub_76378(*v283, v283[1]))
            {
              sub_879F8(&v645, buf);
              sub_27E10C(v650, "Returning active non-wireless ports for category/mode ", &v645);
              sub_27E0AC(__p, v650, ":");
              sub_3AFCC4(v651, &v639, __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if ((v650[23] & 0x80000000) != 0)
              {
                operator delete(*v650);
              }

              if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v645.__r_.__value_.__l.__data_);
              }

              for (n = *&v651[8]; n != v651; n = *(n + 8))
              {
                v285 = sub_5544(2);
                v286 = sub_5544(35);
                v287 = 0;
                *__p = 0x100000002;
                v288 = *(v285 + 8);
                while (1)
                {
                  v289 = *&__p[v287];
                  if (((v288 & v289) != 0) != ((*(v286 + 8) & v289) != 0))
                  {
                    break;
                  }

                  v287 += 4;
                  if (v287 == 8)
                  {
                    if ((v288 & 1) == 0)
                    {
                      goto LABEL_579;
                    }

                    goto LABEL_573;
                  }
                }

                if ((v288 & v289) == 0)
                {
                  v285 = v286;
                }

                if (*(v285 + 8))
                {
LABEL_573:
                  v290 = *v285;
                  if (v290)
                  {
                    v291 = v290;
                    if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
                    {
                      v292 = (n + 16);
                      if (*(n + 39) < 0)
                      {
                        v292 = *v292;
                      }

                      *__p = 136315650;
                      *&__p[4] = "VirtualAudio_PlugIn.mm";
                      *&__p[12] = 1024;
                      *&__p[14] = 6032;
                      *&__p[18] = 2080;
                      *&__p[20] = v292;
                      _os_log_impl(&dword_0, v291, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", __p, 0x1Cu);
                    }
                  }

                  continue;
                }

LABEL_579:
                ;
              }

              sub_20BC1C(v651);
            }

            *a6 = CFRetain(v639.__r_.__value_.__l.__data_);
            sub_46228(&v639.__r_.__value_.__l.__data_);
            *__p = &v652[1];
            sub_847A8(__p);
            sub_76304(&theDict);
            sub_4AE8C(buf);
            sub_4BA7C(&cf);
            sub_B1A40(&v644);
            goto LABEL_739;
          case 2:
            v556 = sub_5544(14);
            v403 = 1852793716;
            v557 = sub_468EC(1, *v556, *(v556 + 8));
            v402 = v557;
            if (!v557 || !os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1033;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6027;
            v558 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonWirelessPortsForRouteConfiguration.)";
            break;
          case 1:
            v400 = sub_5544(14);
            v401 = sub_468EC(1, *v400, *(v400 + 8));
            v402 = v401;
            v403 = 1852797556;
            if (v401 && os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6027;
              _os_log_impl(&dword_0, v402, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonWirelessPortsForRouteConfiguration.)", __p, 0x12u);
              v403 = 1852797556;
            }

LABEL_1033:

            v561 = __cxa_allocate_exception(0x10uLL);
            *v561 = &off_6DDDD0;
            v561[2] = v403;
          default:
            v559 = sub_5544(14);
            v403 = 2003329396;
            v560 = sub_468EC(1, *v559, *(v559 + 8));
            v402 = v560;
            if (!v560 || !os_log_type_enabled(v560, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1033;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6027;
            v558 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActiveNonWirelessPortsForRouteConfiguration.)";
            break;
        }

        _os_log_impl(&dword_0, v402, OS_LOG_TYPE_ERROR, v558, __p, 0x12u);
        goto LABEL_1033;
      }

      if (v19 != 1635152483)
      {
        if (v19 != 1651077236)
        {
          if (v19 != 1651077731)
          {
            goto LABEL_314;
          }

          sub_AFE00(&v644);
          v59 = *a5;
          if (v59 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v495 = sub_5544(14);
            v496 = sub_468EC(1, *v495, *(v495 + 8));
            v497 = v496;
            if (v496)
            {
              v498 = v496;
              if (os_log_type_enabled(v498, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }
            }

            v499 = __cxa_allocate_exception(0x10uLL);
            *v499 = &off_6DDDD0;
            v499[2] = 561211770;
          }

          if ((a3 | 8) != 8)
          {
            v597 = sub_5544(14);
            v598 = sub_468EC(1, *v597, *(v597 + 8));
            v599 = v598;
            if (v598 && os_log_type_enabled(v598, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 6246;
              _os_log_impl(&dword_0, v599, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            v600 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v600, "Precondition failure.");
          }

          sub_10FD4(&cf, a4);
          if (cf && (sub_A6818(&cf, "kVirtualAudioPlugInPropertyBuiltInPortsForRouteConfiguration"), cf))
          {
            sub_38188(buf, a1, &cf, 0, 1);
          }

          else
          {
            sub_A1DF4(buf, a1);
          }

          memset(v652, 0, 24);
          LODWORD(v653) = 3;
          v655 = 0;
          v656 = 0;
          v654 = &v655;
          v659 = 0;
          v660 = 0;
          v658 = 0;
          v657 = 44698266;
          LODWORD(v652[3]) = 1986295651;
          HIDWORD(v652[3]) = *&buf[4];
          LOBYTE(v652[4]) = 1;
          sub_26DA2C(&theDict, *(a1 + 112), buf, v652, v721);
          switch(LODWORD(theDict.__r_.__value_.__l.__data_))
          {
            case 0:
              sub_87554(0x6F757470, &theDict.__r_.__value_.__l.__size_);
              memset(v651, 0, 24);
              sub_87840(v650, &theDict.__r_.__value_.__l.__size_, "", 6275);
              for (ii = *&v650[8]; ii != v650; ii = *(ii + 8))
              {
                v210 = *(ii + 16);
                memset(__p, 0, 24);
                strcpy(&__p[24], "cwdv");
                __p[32] = 0;
                LODWORD(v668) = 3;
                v670 = 0;
                v671 = 0;
                v669 = &v670;
                v674 = 0;
                v675 = 0;
                v673 = 0;
                v672 = 44731050;
                LODWORD(v645.__r_.__value_.__l.__data_) = sub_9DE4C(*(a1 + 128), v210, __p);
                sub_AFD28(v651, &v645);
                if (SHIBYTE(v675) < 0)
                {
                  operator delete(v673);
                }

                sub_477A0(v670);
                if (*__p)
                {
                  *&__p[8] = *__p;
                  operator delete(*__p);
                }
              }

              sub_87980(v650);
              v211 = sub_5544(2);
              v212 = sub_5544(35);
              v213 = 0;
              *__p = 0x100000002;
              v214 = *(v211 + 8);
              while (1)
              {
                v215 = *&__p[v213];
                if (((v214 & v215) != 0) != ((*(v212 + 8) & v215) != 0))
                {
                  break;
                }

                v213 += 4;
                if (v213 == 8)
                {
                  goto LABEL_503;
                }
              }

              if ((v214 & v215) == 0)
              {
                v211 = v212;
              }

              v214 = *(v211 + 8);
LABEL_503:
              v254 = sub_468EC(6, *v211, v214);
              v255 = v254;
              if (v254)
              {
                v256 = v254;
                if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
                {
                  sub_22170(v650, *buf);
                  v257 = v650[23];
                  v258 = *v650;
                  sub_1D9C0C(&v645, *v651, *&v651[8]);
                  v259 = v650;
                  if (v257 < 0)
                  {
                    v259 = v258;
                  }

                  if ((v645.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v260 = &v645;
                  }

                  else
                  {
                    v260 = v645.__r_.__value_.__r.__words[0];
                  }

                  *__p = 136315906;
                  *&__p[4] = "VirtualAudio_PlugIn.mm";
                  *&__p[12] = 1024;
                  *&__p[14] = 6283;
                  *&__p[18] = 2080;
                  *&__p[20] = v259;
                  *&__p[28] = 2080;
                  *&__p[30] = v260;
                  _os_log_impl(&dword_0, v256, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning built-in ports for category '%s': %s", __p, 0x26u);
                  if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v645.__r_.__value_.__l.__data_);
                  }

                  if ((v650[23] & 0x80000000) != 0)
                  {
                    operator delete(*v650);
                  }
                }
              }

              *__p = sub_AFB90(v651);
              *a6 = CFRetain(*__p);
              sub_46228(__p);
              if (*v651)
              {
                operator delete(*v651);
              }

              sub_65310(&theDict.__r_.__value_.__l.__size_);
              sub_46934(v652);
              sub_4AE8C(buf);
              sub_4BA7C(&cf);
              sub_B0680(&v644);
              goto LABEL_739;
            case 2:
              v544 = sub_5544(14);
              v395 = 1852793716;
              v545 = sub_468EC(1, *v544, *(v544 + 8));
              v394 = v545;
              if (!v545 || !os_log_type_enabled(v545, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1017;
              }

              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6270;
              v546 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)";
              break;
            case 1:
              v392 = sub_5544(14);
              v393 = sub_468EC(1, *v392, *(v392 + 8));
              v394 = v393;
              v395 = 1852797556;
              if (v393 && os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 6270;
                _os_log_impl(&dword_0, v394, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)", __p, 0x12u);
                v395 = 1852797556;
              }

LABEL_1017:

              v549 = __cxa_allocate_exception(0x10uLL);
              *v549 = &off_6DDDD0;
              v549[2] = v395;
            default:
              v547 = sub_5544(14);
              v395 = 2003329396;
              v548 = sub_468EC(1, *v547, *(v547 + 8));
              v394 = v548;
              if (!v548 || !os_log_type_enabled(v548, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1017;
              }

              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6270;
              v546 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)";
              break;
          }

          _os_log_impl(&dword_0, v394, OS_LOG_TYPE_ERROR, v546, __p, 0x12u);
          goto LABEL_1017;
        }

        v102 = *a5;
        if (v102 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v461 = sub_5544(14);
          v377 = 561211770;
          v462 = sub_468EC(1, *v461, *(v461 + 8));
          if (v462)
          {
            v378 = v462;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        if ((a3 | 4) != 4)
        {
          v591 = sub_5544(14);
          v592 = sub_468EC(1, *v591, *(v591 + 8));
          v492 = v592;
          if (v592 && os_log_type_enabled(v592, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6210;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_1090;
        }

        *buf = sub_3AFAA4(a1, a3, a4);
        *&buf[8] = v103;
        v104 = *(a1 + 216);
        LOBYTE(v652[0]) = 0;
        LOBYTE(v652[1]) = 0;
        v105 = *(v104 + 16) == 1 && (sub_98A64(v652, *(v104 + 8)), LOBYTE(v652[1]) = 1, v652[0]) && CFDictionaryGetCount(v652[0]) != 0;
        sub_43E6C(&theDict, buf, v105, 0);
        v162 = 1852793716;
        sub_3A6658(v652);
        *buf = *&theDict.__r_.__value_.__l.__data_;
        *&buf[24] = 0;
        *&buf[16] = &buf[24];
        v680 = 0;
        v679 = 0;
        v677 = 0;
        v678 = &v679;
        v682 = 0;
        v681 = &v682;
        v686 = 0;
        v685 = 0;
        v683 = 0;
        v684 = &v685;
        v688 = 0;
        v687 = &v688;
        v693 = 0;
        v691 = 0;
        v689 = 0;
        v690 = 0;
        v692 = 0;
        v694 = 1668248944;
        v695 = 1852796517;
        v698 = 0;
        v696 = 0;
        v697 = 0;
        v699 = 0x756E64656175746FLL;
        v700 = 0u;
        v701 = 0u;
        v702 = 0u;
        v703 = 0u;
        v704 = 0u;
        v705 = 1065353216;
        *&v707[8] = 0u;
        v706 = 0u;
        *v707 = 0u;
        *&v707[16] = 1065353216;
        v708 = 0u;
        v709 = 0u;
        v710 = 1065353216;
        v711 = 0;
        v712 = 0;
        v714 = 0;
        v715 = 0;
        v716 = 0;
        v713 = 0;
        v720 = 0;
        v718 = 0;
        v717 = 0;
        v719 = 0;
        memset(v652, 0, 24);
        LODWORD(v653) = 3;
        v655 = 0;
        v656 = 0;
        v654 = &v655;
        v659 = 0;
        v660 = 0;
        v658 = 0;
        v657 = 44698266;
        LODWORD(v652[3]) = 1986295651;
        HIDWORD(v652[3]) = HIDWORD(theDict.__r_.__value_.__r.__words[0]);
        LOBYTE(v652[4]) = 1;
        v163 = *(a1 + 112);
        __p[0] = 0;
        __p[4] = 0;
        sub_26DA2C(v651, v163, buf, v652, __p);
        switch(*v651)
        {
          case 0:
            sub_87554(0x6F757470, &v651[8]);
            memset(v650, 0, 24);
            sub_87840(&v645, &v651[8], "", 6227);
            for (jj = v645.__r_.__value_.__l.__size_; jj != &v645; jj = jj->__r_.__value_.__l.__size_)
            {
              v165 = jj->__r_.__value_.__r.__words[2];
              memset(__p, 0, 24);
              strcpy(&__p[24], "cwdv");
              __p[32] = 0;
              LODWORD(v668) = 3;
              v670 = 0;
              v671 = 0;
              v669 = &v670;
              v674 = 0;
              v675 = 0;
              v673 = 0;
              v672 = 44731050;
              LODWORD(v644.__r_.__value_.__l.__data_) = sub_9DE4C(*(a1 + 128), v165, __p);
              sub_AFD28(v650, &v644);
              if (SHIBYTE(v675) < 0)
              {
                operator delete(v673);
              }

              sub_477A0(v670);
              if (*__p)
              {
                *&__p[8] = *__p;
                operator delete(*__p);
              }
            }

            sub_87980(&v645);
            v166 = sub_5544(2);
            v167 = sub_5544(35);
            v168 = 0;
            *__p = 0x100000002;
            v169 = *(v166 + 8);
            while (1)
            {
              v170 = *&__p[v168];
              if (((v169 & v170) != 0) != ((*(v167 + 8) & v170) != 0))
              {
                break;
              }

              v168 += 4;
              if (v168 == 8)
              {
                goto LABEL_484;
              }
            }

            if ((v169 & v170) == 0)
            {
              v166 = v167;
            }

            v169 = *(v166 + 8);
LABEL_484:
            v247 = sub_468EC(6, *v166, v169);
            v248 = v247;
            if (v247)
            {
              v249 = v247;
              if (os_log_type_enabled(v249, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(&v645, theDict.__r_.__value_.__l.__data_);
                v250 = SHIBYTE(v645.__r_.__value_.__r.__words[2]);
                v251 = v645.__r_.__value_.__r.__words[0];
                sub_1D9C0C(&v644, *v650, *&v650[8]);
                v252 = &v645;
                if (v250 < 0)
                {
                  v252 = v251;
                }

                if ((v644.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v253 = &v644;
                }

                else
                {
                  v253 = v644.__r_.__value_.__r.__words[0];
                }

                *__p = 136315906;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 6234;
                *&__p[18] = 2080;
                *&__p[20] = v252;
                *&__p[28] = 2080;
                *&__p[30] = v253;
                _os_log_impl(&dword_0, v249, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning built-in ports for category '%s': %s", __p, 0x26u);
                if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v644.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v645.__r_.__value_.__l.__data_);
                }
              }
            }

            *__p = sub_AFB90(v650);
            *a6 = CFRetain(*__p);
            sub_46228(__p);
            if (*v650)
            {
              operator delete(*v650);
            }

LABEL_498:
            sub_65310(&v651[8]);
            sub_46934(v652);
            sub_4AF90(buf);
            v183 = v649;
LABEL_499:
            sub_477A0(v183);
            goto LABEL_739;
          case 2:
            v526 = sub_5544(14);
            v527 = sub_468EC(1, *v526, *(v526 + 8));
            v385 = v527;
            if (!v527 || !os_log_type_enabled(v527, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1125;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6222;
            v528 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)";
            break;
          case 1:
            v383 = sub_5544(14);
            v384 = sub_468EC(1, *v383, *(v383 + 8));
            v385 = v384;
            if (v384 && os_log_type_enabled(v384, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6222;
              _os_log_impl(&dword_0, v385, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)", __p, 0x12u);
              v162 = 1852797556;
            }

            else
            {
              v162 = 1852797556;
            }

LABEL_1125:

            v626 = __cxa_allocate_exception(0x10uLL);
            *v626 = &off_6DDDD0;
            v626[2] = v162;
          default:
            v529 = sub_5544(14);
            v162 = 2003329396;
            v530 = sub_468EC(1, *v529, *(v529 + 8));
            v385 = v530;
            if (!v530 || !os_log_type_enabled(v530, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1125;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6222;
            v528 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyBuiltInPortsForCategory.)";
            break;
        }

        _os_log_impl(&dword_0, v385, OS_LOG_TYPE_ERROR, v528, __p, 0x12u);
        goto LABEL_1125;
      }

LABEL_182:
      v87 = *a5;
      if (v87 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v412 = sub_5544(14);
        v377 = 561211770;
        v413 = sub_468EC(1, *v412, *(v412 + 8));
        if (v413)
        {
          v378 = v413;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      if ((a3 | 8) != 8)
      {
        v502 = sub_5544(14);
        v503 = sub_468EC(1, *v502, *(v502 + 8));
        v492 = v503;
        if (v503 && os_log_type_enabled(v503, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6293;
          _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        goto LABEL_1090;
      }

      sub_10FD4(&theDict, a4);
      if (!theDict.__r_.__value_.__r.__words[0])
      {
        goto LABEL_189;
      }

      v88 = "kVirtualAudioPlugInPropertyAvailableSubPortsForRouteConfiguration";
      if (*a2 == 1633907299)
      {
        v88 = "kVirtualAudioPlugInPropertyBuiltInPortsForRouteConfiguration";
      }

      *buf = v88;
      sub_9E804(&theDict, buf);
      if (theDict.__r_.__value_.__r.__words[0])
      {
        sub_38188(buf, a1, &theDict, 0, 1);
      }

      else
      {
LABEL_189:
        sub_A1DF4(buf, a1);
      }

      sub_44E98(v652, buf);
      sub_4AE8C(buf);
      *__p = *v652;
      v89 = sub_9E618(*(a1 + 128), *(a2 + 8));
      if (!v89)
      {
        v361 = sub_5544(14);
        v362 = sub_468EC(1, *v361, *(v361 + 8));
        v363 = v362;
        if (v362 && os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
        {
          v364 = *(a2 + 8);
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6316;
          *&buf[18] = 1024;
          *&buf[20] = v364;
          _os_log_impl(&dword_0, v363, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [vaPort is NULL]: VirtualAudio_Port could not be located for ID: %u", buf, 0x18u);
        }

        v365 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v365, "VirtualAudio_Port could not be located for ID: %u");
      }

      if (*a2 == 1635152483)
      {
        sub_A08C4(buf, v89);
        v90 = *buf;
        if (*buf)
        {
          goto LABEL_316;
        }
      }

      else
      {
        sub_9E9C8(buf, v89, __p);
        v90 = *buf;
        if (*buf)
        {
LABEL_316:
          CFRetain(v90);
          v156 = *buf;
          goto LABEL_318;
        }
      }

      v156 = 0;
LABEL_318:
      sub_A0804(buf);
      *a6 = v156;
      sub_4AF90(v652);
      if (theDict.__r_.__value_.__r.__words[0])
      {
        CFRelease(theDict.__r_.__value_.__l.__data_);
      }

      goto LABEL_739;
    }

    if (v19 > 1634624370)
    {
      if (v19 != 1634624371)
      {
        if (v19 != 1634627952)
        {
          if (v19 != 1634627954)
          {
            goto LABEL_314;
          }

          v45 = *a5;
          if (v45 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v441 = sub_5544(14);
            v377 = 561211770;
            v442 = sub_468EC(1, *v441, *(v441 + 8));
            if (v442)
            {
              v378 = v442;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          if (a3 != 8 || !a4)
          {
            v516 = sub_5544(14);
            v377 = 561211770;
            v517 = sub_468EC(1, *v516, *(v516 + 8));
            if (v517)
            {
              v378 = v517;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          sub_10FD4(&v643, a4);
          sub_3B1078(&v643);
          sub_38188(buf, a1, &v643, 0, 1);
          if (v723)
          {
            v46 = v722;
          }

          else
          {
            v46 = &qword_6F5A00;
          }

          sub_75848(&v645, v46);
          LODWORD(theDict.__r_.__value_.__l.__data_) = 0;
          v649 = 0;
          *&theDict.__r_.__value_.__r.__words[1] = 0uLL;
          sub_3B123C(__p);
          v672 &= 0xFFFFFFFC;
          *v651 = 1885566825;
          LODWORD(v652[0]) = 2;
          sub_4BA00(&v652[1], v651, 1);
          LODWORD(v668) = v652[0];
          sub_477A0(v670);
          v47 = v652[2];
          v669 = v652[1];
          v670 = v652[2];
          v671 = v652[3];
          if (v652[3])
          {
            *(v652[2] + 2) = &v670;
            v652[1] = &v652[2];
            v652[2] = 0;
            v652[3] = 0;
            v47 = 0;
          }

          else
          {
            v669 = &v670;
          }

          sub_477A0(v47);
          sub_7FB94(v652, buf);
          v296 = 1852793716;
          v661[14] = 1852796517;
          sub_4B0F4(v652[3]);
          v652[3] = 0;
          v652[4] = 0;
          v652[2] = &v652[3];
          if (v664 < 0)
          {
            *v662 = 0;
            v663 = 0;
          }

          else
          {
            LOBYTE(v662) = 0;
            v664 = 0;
          }

          sub_270D20(v651, *(a1 + 112), v652, __p, v721);
          switch(*v651)
          {
            case 0:
              v297 = "non-quiesceable";
              if (*&v651[24])
              {
                v298 = sub_3114B0();
                if (v298)
                {
                  v299 = 1;
                }

                else
                {
                  v299 = 2;
                }

                if (v298)
                {
                  v297 = "non-wireless";
                }
              }

              else
              {
                v299 = 2;
              }

              sub_269208(v650, *(a1 + 112), buf, &v645, v299);
              LODWORD(theDict.__r_.__value_.__l.__data_) = *v650;
              sub_DF1AC(&theDict.__r_.__value_.__l.__size_);
              *&theDict.__r_.__value_.__r.__words[1] = *&v650[8];
              v649 = *&v650[24];
              memset(&v650[8], 0, 24);
              v644.__r_.__value_.__r.__words[0] = &v650[8];
              sub_847A8(&v644);
              switch(LODWORD(theDict.__r_.__value_.__l.__data_))
              {
                case 0:
                  sub_87F44(&v642, a1, &theDict.__r_.__value_.__l.__size_, &v645);
                  sub_53E8(&v644, v297);
                  v300 = sub_5544(2);
                  if (sub_76378(*v300, v300[1]))
                  {
                    std::operator+<char>();
                    sub_27E0AC(&v638, &v637, " ports for category/mode ");
                    sub_879F8(&v636, buf);
                    if ((v636.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v301 = &v636;
                    }

                    else
                    {
                      v301 = v636.__r_.__value_.__r.__words[0];
                    }

                    if ((v636.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v636.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v636.__r_.__value_.__l.__size_;
                    }

                    v303 = std::string::append(&v638, v301, size);
                    v304 = *&v303->__r_.__value_.__l.__data_;
                    v639.__r_.__value_.__r.__words[2] = v303->__r_.__value_.__r.__words[2];
                    *&v639.__r_.__value_.__l.__data_ = v304;
                    v303->__r_.__value_.__l.__size_ = 0;
                    v303->__r_.__value_.__r.__words[2] = 0;
                    v303->__r_.__value_.__r.__words[0] = 0;
                    sub_27E0AC(v650, &v639, ":");
                    sub_3AFCC4(&cf, &v642, v650);
                    if ((v650[23] & 0x80000000) != 0)
                    {
                      operator delete(*v650);
                    }

                    if (SHIBYTE(v639.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v639.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v636.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v636.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v638.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v638.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v637.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v637.__r_.__value_.__l.__data_);
                    }

                    for (kk = v641; kk != &cf; kk = *(kk + 8))
                    {
                      v306 = sub_5544(2);
                      v307 = sub_5544(35);
                      v308 = 0;
                      *v650 = 0x100000002;
                      v309 = *(v306 + 8);
                      while (1)
                      {
                        v310 = *&v650[v308];
                        if (((v309 & v310) != 0) != ((*(v307 + 8) & v310) != 0))
                        {
                          break;
                        }

                        v308 += 4;
                        if (v308 == 8)
                        {
                          if ((v309 & 1) == 0)
                          {
                            goto LABEL_637;
                          }

                          goto LABEL_631;
                        }
                      }

                      if ((v309 & v310) == 0)
                      {
                        v306 = v307;
                      }

                      if (*(v306 + 8))
                      {
LABEL_631:
                        v311 = *v306;
                        if (v311)
                        {
                          v312 = v311;
                          if (os_log_type_enabled(v311, OS_LOG_TYPE_DEBUG))
                          {
                            v313 = (kk + 16);
                            if (*(kk + 39) < 0)
                            {
                              v313 = *v313;
                            }

                            *v650 = 136315650;
                            *&v650[4] = "VirtualAudio_PlugIn.mm";
                            *&v650[12] = 1024;
                            *&v650[14] = 5998;
                            *&v650[18] = 2080;
                            *&v650[20] = v313;
                            _os_log_impl(&dword_0, v312, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", v650, 0x1Cu);
                          }
                        }

                        continue;
                      }

LABEL_637:
                      ;
                    }

                    sub_20BC1C(&cf);
                  }

                  *a6 = CFRetain(v642);
                  if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v644.__r_.__value_.__l.__data_);
                  }

                  sub_46228(&v642);
                  sub_65310(&v651[8]);
                  sub_4AF90(v652);
                  sub_46934(__p);
                  v652[0] = &theDict.__r_.__value_.__r.__words[1];
                  sub_847A8(v652);
                  sub_76304(&v645);
                  sub_4AE8C(buf);
                  v295 = &v643;
                  goto LABEL_642;
                case 2:
                  v567 = sub_5544(14);
                  v568 = sub_468EC(1, *v567, *(v567 + 8));
                  v409 = v568;
                  if (!v568 || !os_log_type_enabled(v568, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1133;
                  }

                  *v650 = 136315394;
                  *&v650[4] = "VirtualAudio_PlugIn.mm";
                  *&v650[12] = 1024;
                  *&v650[14] = 5991;
                  v569 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration.)";
                  break;
                case 1:
                  v407 = sub_5544(14);
                  v408 = sub_468EC(1, *v407, *(v407 + 8));
                  v409 = v408;
                  if (v408 && os_log_type_enabled(v408, OS_LOG_TYPE_ERROR))
                  {
                    *v650 = 136315394;
                    *&v650[4] = "VirtualAudio_PlugIn.mm";
                    *&v650[12] = 1024;
                    *&v650[14] = 5991;
                    _os_log_impl(&dword_0, v409, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration.)", v650, 0x12u);
                    v296 = 1852797556;
                  }

                  else
                  {
                    v296 = 1852797556;
                  }

LABEL_1133:

                  v630 = __cxa_allocate_exception(0x10uLL);
                  *v630 = &off_6DDDD0;
                  v630[2] = v296;
                default:
                  v570 = sub_5544(14);
                  v296 = 2003329396;
                  v571 = sub_468EC(1, *v570, *(v570 + 8));
                  v409 = v571;
                  if (!v571 || !os_log_type_enabled(v571, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1133;
                  }

                  *v650 = 136315394;
                  *&v650[4] = "VirtualAudio_PlugIn.mm";
                  *&v650[12] = 1024;
                  *&v650[14] = 5991;
                  v569 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration.)";
                  break;
              }

              _os_log_impl(&dword_0, v409, OS_LOG_TYPE_ERROR, v569, v650, 0x12u);
              goto LABEL_1133;
            case 2:
              v562 = sub_5544(14);
              v563 = sub_468EC(1, *v562, *(v562 + 8));
              v406 = v563;
              if (!v563 || !os_log_type_enabled(v563, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1131;
              }

              *v650 = 136315394;
              *&v650[4] = "VirtualAudio_PlugIn.mm";
              *&v650[12] = 1024;
              *&v650[14] = 5982;
              v564 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration)";
              break;
            case 1:
              v404 = sub_5544(14);
              v405 = sub_468EC(1, *v404, *(v404 + 8));
              v406 = v405;
              if (v405 && os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
              {
                *v650 = 136315394;
                *&v650[4] = "VirtualAudio_PlugIn.mm";
                *&v650[12] = 1024;
                *&v650[14] = 5982;
                _os_log_impl(&dword_0, v406, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration)", v650, 0x12u);
                v296 = 1852797556;
              }

              else
              {
                v296 = 1852797556;
              }

LABEL_1131:

              v629 = __cxa_allocate_exception(0x10uLL);
              *v629 = &off_6DDDD0;
              v629[2] = v296;
            default:
              v565 = sub_5544(14);
              v296 = 2003329396;
              v566 = sub_468EC(1, *v565, *(v565 + 8));
              v406 = v566;
              if (!v566 || !os_log_type_enabled(v566, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1131;
              }

              *v650 = 136315394;
              *&v650[4] = "VirtualAudio_PlugIn.mm";
              *&v650[12] = 1024;
              *&v650[14] = 5982;
              v564 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForRouteConfiguration)";
              break;
          }

          _os_log_impl(&dword_0, v406, OS_LOG_TYPE_ERROR, v564, v650, 0x12u);
          goto LABEL_1131;
        }

        v112 = *a5;
        if (v112 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v471 = sub_5544(14);
          v377 = 561211770;
          v472 = sub_468EC(1, *v471, *(v471 + 8));
          if (v472)
          {
            v378 = v472;
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }

            goto LABEL_931;
          }

          goto LABEL_774;
        }

        if ((a3 | 4) != 4)
        {
          v593 = sub_5544(14);
          v594 = sub_468EC(1, *v593, *(v593 + 8));
          v492 = v594;
          if (v594 && os_log_type_enabled(v594, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 5923;
            _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_1090;
        }

        *buf = sub_3AFAA4(a1, a3, a4);
        *&buf[8] = v113;
        v114 = *(a1 + 216);
        __p[0] = 0;
        __p[8] = 0;
        v115 = *(v114 + 16) == 1 && (sub_98A64(__p, *(v114 + 8)), __p[8] = 1, *__p) && CFDictionaryGetCount(*__p) != 0;
        sub_43E6C(v652, buf, v115, 0);
        v171 = 1852793716;
        sub_3A6658(__p);
        *__p = 1852796517;
        memset(&__p[8], 0, 24);
        *&__p[32] = 0x756E64656175746FLL;
        *&theDict.__r_.__value_.__r.__words[1] = 0uLL;
        theDict.__r_.__value_.__r.__words[0] = &theDict.__r_.__value_.__l.__size_;
        *&v651[8] = 0;
        *&v651[16] = 0;
        *v651 = &v651[8];
        *&v650[8] = 0;
        *&v650[16] = 0;
        *v650 = &v650[8];
        sub_26D168(buf, v652, &theDict, &v652[2], v651, v650, __p, 1668248944, 0, 0);
        sub_477A0(*&v650[8]);
        sub_4B0F4(*&v651[8]);
        sub_4B0F4(theDict.__r_.__value_.__l.__size_);
        v172 = *(a1 + 112);
        v651[0] = 0;
        v651[4] = 0;
        sub_269208(&theDict, v172, buf, &qword_6F5A00, 2);
        switch(LODWORD(theDict.__r_.__value_.__l.__data_))
        {
          case 0:
            sub_87F44(&cf, a1, &theDict.__r_.__value_.__l.__size_, &qword_6F5A00);
            v173 = sub_5544(2);
            if (sub_76378(*v173, v173[1]))
            {
              sub_22170(&v644, v652[0]);
              sub_27E10C(&v645, "Returning active non-quiesceable ports for category [", &v644);
              sub_27E0AC(v651, &v645, "]:");
              sub_3AFCC4(v650, &cf, v651);
              if ((v651[23] & 0x80000000) != 0)
              {
                operator delete(*v651);
              }

              if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v645.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v644.__r_.__value_.__l.__data_);
              }

              for (mm = *&v650[8]; mm != v650; mm = *(mm + 8))
              {
                v175 = sub_5544(2);
                v176 = sub_5544(35);
                v177 = 0;
                *v651 = 0x100000002;
                v178 = *(v175 + 8);
                while (1)
                {
                  v179 = *&v651[v177];
                  if (((v178 & v179) != 0) != ((*(v176 + 8) & v179) != 0))
                  {
                    break;
                  }

                  v177 += 4;
                  if (v177 == 8)
                  {
                    if ((v178 & 1) == 0)
                    {
                      goto LABEL_360;
                    }

                    goto LABEL_354;
                  }
                }

                if ((v178 & v179) == 0)
                {
                  v175 = v176;
                }

                if (*(v175 + 8))
                {
LABEL_354:
                  v180 = *v175;
                  if (v180)
                  {
                    v181 = v180;
                    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                    {
                      v182 = (mm + 16);
                      if (*(mm + 39) < 0)
                      {
                        v182 = *v182;
                      }

                      *v651 = 136315650;
                      *&v651[4] = "VirtualAudio_PlugIn.mm";
                      *&v651[12] = 1024;
                      *&v651[14] = 5941;
                      *&v651[18] = 2080;
                      *&v651[20] = v182;
                      _os_log_impl(&dword_0, v181, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", v651, 0x1Cu);
                    }
                  }

                  continue;
                }

LABEL_360:
                ;
              }

              sub_20BC1C(v650);
            }

            *a6 = CFRetain(cf);
            sub_46228(&cf);
            *v651 = &theDict.__r_.__value_.__l.__size_;
            sub_847A8(v651);
            sub_4AF90(buf);
            v183 = v652[3];
            goto LABEL_499;
          case 2:
            v539 = sub_5544(14);
            v540 = sub_468EC(1, *v539, *(v539 + 8));
            v391 = v540;
            if (!v540 || !os_log_type_enabled(v540, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1129;
            }

            *v651 = 136315394;
            *&v651[4] = "VirtualAudio_PlugIn.mm";
            *&v651[12] = 1024;
            *&v651[14] = 5937;
            v541 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForCategory.)";
            break;
          case 1:
            v389 = sub_5544(14);
            v390 = sub_468EC(1, *v389, *(v389 + 8));
            v391 = v390;
            if (v390 && os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
            {
              *v651 = 136315394;
              *&v651[4] = "VirtualAudio_PlugIn.mm";
              *&v651[12] = 1024;
              *&v651[14] = 5937;
              _os_log_impl(&dword_0, v391, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForCategory.)", v651, 0x12u);
              v171 = 1852797556;
            }

            else
            {
              v171 = 1852797556;
            }

LABEL_1129:

            v628 = __cxa_allocate_exception(0x10uLL);
            *v628 = &off_6DDDD0;
            v628[2] = v171;
          default:
            v542 = sub_5544(14);
            v171 = 2003329396;
            v543 = sub_468EC(1, *v542, *(v542 + 8));
            v391 = v543;
            if (!v543 || !os_log_type_enabled(v543, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1129;
            }

            *v651 = 136315394;
            *&v651[4] = "VirtualAudio_PlugIn.mm";
            *&v651[12] = 1024;
            *&v651[14] = 5937;
            v541 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyActiveNonQuiesceablePortsForCategory.)";
            break;
        }

        _os_log_impl(&dword_0, v391, OS_LOG_TYPE_ERROR, v541, v651, 0x12u);
        goto LABEL_1129;
      }

      v136 = *a5;
      if (v136 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v483 = sub_5544(14);
        v377 = 561211770;
        v484 = sub_468EC(1, *v483, *(v483 + 8));
        if (v484)
        {
          v378 = v484;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      v137 = sub_46AC8C();
      v107 = *(v137 + 72) == *(v137 + 80);
      goto LABEL_271;
    }

    if (v19 == 1633907299)
    {
      goto LABEL_182;
    }

    if (v19 != 1633969267)
    {
      goto LABEL_314;
    }

    if (!_os_feature_enabled_impl())
    {
      v111 = sub_48DC8() == 2 || sub_48DC8() == 1;
      goto LABEL_709;
    }

    v72 = sub_48DC8();
LABEL_522:
    *a6 = v72;
    goto LABEL_739;
  }

  if (v19 <= 1684632433)
  {
    if (v19 > 1668310626)
    {
      if (v19 != 1668310627)
      {
        if (v19 != 1668313699)
        {
          if (v19 != 1668575346)
          {
            goto LABEL_314;
          }

          v52 = *a5;
          if (v52 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v445 = sub_5544(14);
            v377 = 561211770;
            v446 = sub_468EC(1, *v445, *(v445 + 8));
            if (v446)
            {
              v378 = v446;
              if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
              {
                *__p = *a2;
                *&__p[8] = *(a2 + 8);
                sub_22CE0(v652);
              }

              goto LABEL_931;
            }

            goto LABEL_774;
          }

          if ((a3 | 4) != 4)
          {
            v587 = sub_5544(14);
            v588 = sub_468EC(1, *v587, *(v587 + 8));
            v492 = v588;
            if (v588 && os_log_type_enabled(v588, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 6342;
              _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            goto LABEL_1090;
          }

          *&__p[16] = 0;
          *&__p[8] = 0;
          *__p = &__p[8];
          v652[0] = sub_3AFAA4(a1, a3, a4);
          v652[1] = v53;
          v54 = *(a1 + 216);
          theDict.__r_.__value_.__s.__data_[0] = 0;
          theDict.__r_.__value_.__s.__data_[8] = 0;
          v55 = *(v54 + 16) == 1 && (sub_98A64(&theDict, *(v54 + 8)), theDict.__r_.__value_.__s.__data_[8] = 1, theDict.__r_.__value_.__r.__words[0]) && CFDictionaryGetCount(theDict.__r_.__value_.__l.__data_) != 0;
          sub_43E6C(buf, v652, v55, 0);
          sub_3A6658(&theDict);
          v184 = sub_134B74(*(a1 + 112), *buf, __p);
          if (v184)
          {
            if (v184 == 2)
            {
              v414 = sub_5544(14);
              v415 = 1852793716;
              v416 = sub_468EC(1, *v414, *(v414 + 8));
              v417 = v416;
              if (v416 && os_log_type_enabled(v416, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v652[0]) = 136315394;
                *(v652 + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v652[1]) = 1024;
                *(&v652[1] + 6) = 6350;
                _os_log_impl(&dword_0, v417, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyCategoryInfo.)", v652, 0x12u);
              }
            }

            else
            {
              v534 = sub_5544(14);
              v535 = sub_468EC(1, *v534, *(v534 + 8));
              v417 = v535;
              v415 = 1852797556;
              if (v535 && os_log_type_enabled(v535, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v652[0]) = 136315394;
                *(v652 + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v652[1]) = 1024;
                *(&v652[1] + 6) = 6350;
                _os_log_impl(&dword_0, v417, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyCategoryInfo.)", v652, 0x12u);
                v415 = 1852797556;
              }
            }

            v536 = __cxa_allocate_exception(0x10uLL);
            *v536 = &off_6DDDD0;
            v536[2] = v415;
          }

          v185 = *__p;
          v186 = sub_3B2C2C(*__p, &__p[8]);
          v187 = sub_3B2C90(v185, &__p[8]);
          memset(&theDict, 0, sizeof(theDict));
          if (&__p[8] != v186)
          {
            v188 = sub_5544(2);
            v189 = sub_468EC(6, *v188, *(v188 + 8));
            v190 = v189;
            if (v189)
            {
              v191 = v189;
              if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(v651, *(v186 + 7));
                v192 = v651[23] >= 0 ? v651 : *v651;
                v193 = *(v186 + 32);
                LODWORD(v652[0]) = 136315906;
                *(v652 + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v652[1]) = 1024;
                *(&v652[1] + 6) = 6364;
                WORD1(v652[2]) = 2080;
                *(&v652[2] + 4) = v192;
                WORD2(v652[3]) = 1024;
                *(&v652[3] + 6) = v193;
                _os_log_impl(&dword_0, v191, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found category info key / value pair. key: '%s'; value: %u", v652, 0x22u);
                if ((v651[23] & 0x80000000) != 0)
                {
                  operator delete(*v651);
                }
              }
            }

            sub_88CE8(v652, "broadcast");
            v194 = &kCFBooleanTrue;
            if (!*(v186 + 32))
            {
              v194 = &kCFBooleanFalse;
            }

            v652[1] = *v194;
            sub_88E68(&theDict, v652);
            sub_1D5D20(v652);
          }

          if (&__p[8] != v187)
          {
            v195 = sub_5544(2);
            v196 = sub_468EC(6, *v195, *(v195 + 8));
            v197 = v196;
            if (v196)
            {
              v198 = v196;
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(v651, *(v187 + 7));
                v199 = v651[23] >= 0 ? v651 : *v651;
                v200 = *(v187 + 32);
                LODWORD(v652[0]) = 136315906;
                *(v652 + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v652[1]) = 1024;
                *(&v652[1] + 6) = 6372;
                WORD1(v652[2]) = 2080;
                *(&v652[2] + 4) = v199;
                WORD2(v652[3]) = 1024;
                *(&v652[3] + 6) = v200;
                _os_log_impl(&dword_0, v198, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found category info key / value pair. key: '%s'; value: %u", v652, 0x22u);
                if ((v651[23] & 0x80000000) != 0)
                {
                  operator delete(*v651);
                }
              }
            }

            sub_88CE8(v652, "policyMute");
            v201 = &kCFBooleanTrue;
            if (!*(v187 + 32))
            {
              v201 = &kCFBooleanFalse;
            }

            v652[1] = *v201;
            sub_88E68(&theDict, v652);
            sub_1D5D20(v652);
          }

          v652[0] = sub_65448(&theDict);
          *a6 = CFRetain(v652[0]);
          sub_4BA7C(v652);
          v652[0] = &theDict;
          sub_65830(v652);
          sub_477A0(*&buf[24]);
          sub_477A0(*&__p[8]);
          goto LABEL_739;
        }

        sub_9DFDC(&cf);
        v122 = *a5;
        if (v122 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v504 = sub_5544(14);
          v505 = sub_468EC(1, *v504, *(v504 + 8));
          v506 = v505;
          if (v505)
          {
            v507 = v505;
            if (os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
            {
              *__p = *a2;
              *&__p[8] = *(a2 + 8);
              sub_22CE0(v652);
            }
          }

          v508 = __cxa_allocate_exception(0x10uLL);
          *v508 = &off_6DDDD0;
          v508[2] = 561211770;
        }

        if ((a3 | 8) != 8)
        {
          v606 = sub_5544(14);
          v607 = sub_468EC(1, *v606, *(v606 + 8));
          v608 = v607;
          if (v607 && os_log_type_enabled(v607, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 6453;
            _os_log_impl(&dword_0, v608, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v609 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v609, "Precondition failure.");
        }

        sub_10FD4(&v639, a4);
        if (v639.__r_.__value_.__r.__words[0] && (sub_9E1F0(&v639), v639.__r_.__value_.__r.__words[0]))
        {
          sub_38188(buf, a1, &v639, 0, 1);
        }

        else
        {
          sub_A1DF4(buf, a1);
        }

        memset(v652, 0, 24);
        LODWORD(v653) = 3;
        v655 = 0;
        v656 = 0;
        v654 = &v655;
        v659 = 0;
        v660 = 0;
        v658 = 0;
        v657 = 44731048;
        LODWORD(v652[3]) = 1986295651;
        HIDWORD(v652[3]) = *&buf[4];
        LOBYTE(v652[4]) = 1;
        sub_26DA2C(&theDict, *(a1 + 112), buf, v652, v721);
        switch(LODWORD(theDict.__r_.__value_.__l.__data_))
        {
          case 0:
            sub_87554(*(a2 + 4), &theDict.__r_.__value_.__l.__size_);
            memset(__p, 0, 24);
            strcpy(&__p[24], "cwdv");
            __p[32] = 0;
            LODWORD(v668) = 3;
            v671 = 0;
            v670 = 0;
            v669 = &v670;
            v675 = 0;
            v673 = 0;
            v674 = 0;
            v672 = 44731050;
            sub_87760(v651, a1, &theDict.__r_.__value_.__l.__size_, __p);
            sub_46934(__p);
            v216 = sub_5544(2);
            v217 = sub_5544(35);
            v218 = 0;
            *__p = 0x100000002;
            v219 = *(v216 + 8);
            while (1)
            {
              v220 = *&__p[v218];
              if (((v219 & v220) != 0) != ((*(v217 + 8) & v220) != 0))
              {
                break;
              }

              v218 += 4;
              if (v218 == 8)
              {
                goto LABEL_464;
              }
            }

            if ((v219 & v220) == 0)
            {
              v216 = v217;
            }

            v219 = *(v216 + 8);
LABEL_464:
            v239 = sub_468EC(6, *v216, v219);
            v240 = v239;
            if (v239)
            {
              v241 = v239;
              if (os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG))
              {
                v242 = v650;
                sub_879F8(v650, buf);
                if (v650[23] < 0)
                {
                  v242 = *v650;
                }

                sub_22170(&v645, *(a2 + 4));
                v243 = SHIBYTE(v645.__r_.__value_.__r.__words[2]);
                v244 = v645.__r_.__value_.__r.__words[0];
                sub_87BA8(&v644, v651);
                v245 = &v645;
                if (v243 < 0)
                {
                  v245 = v244;
                }

                if ((v644.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v246 = &v644;
                }

                else
                {
                  v246 = v644.__r_.__value_.__r.__words[0];
                }

                *__p = 136316162;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 6485;
                *&__p[18] = 2080;
                *&__p[20] = v242;
                *&__p[28] = 2080;
                *&__p[30] = v245;
                *&__p[38] = 2080;
                v668 = v246;
                _os_log_impl(&dword_0, v241, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning for category/mode: %s; scope: %s; connected ports: %s", __p, 0x30u);
                if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v644.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v645.__r_.__value_.__l.__data_);
                }

                if ((v650[23] & 0x80000000) != 0)
                {
                  operator delete(*v650);
                }
              }
            }

            *__p = sub_47A88(*v651, &v651[8]);
            *a6 = CFRetain(*__p);
            sub_46228(__p);
            sub_477A0(*&v651[8]);
            sub_65310(&theDict.__r_.__value_.__l.__size_);
            sub_46934(v652);
            sub_4AE8C(buf);
            sub_4BA7C(&v639.__r_.__value_.__l.__data_);
            sub_9E45C(&cf);
            goto LABEL_739;
          case 2:
            v550 = sub_5544(14);
            v399 = 1852793716;
            v551 = sub_468EC(1, *v550, *(v550 + 8));
            v398 = v551;
            if (!v551 || !os_log_type_enabled(v551, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1025;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6476;
            v552 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)";
            break;
          case 1:
            v396 = sub_5544(14);
            v397 = sub_468EC(1, *v396, *(v396 + 8));
            v398 = v397;
            v399 = 1852797556;
            if (v397 && os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6476;
              _os_log_impl(&dword_0, v398, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)", __p, 0x12u);
              v399 = 1852797556;
            }

LABEL_1025:

            v555 = __cxa_allocate_exception(0x10uLL);
            *v555 = &off_6DDDD0;
            v555[2] = v399;
          default:
            v553 = sub_5544(14);
            v399 = 2003329396;
            v554 = sub_468EC(1, *v553, *(v553 + 8));
            v398 = v554;
            if (!v554 || !os_log_type_enabled(v554, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1025;
            }

            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6476;
            v552 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)";
            break;
        }

        _os_log_impl(&dword_0, v398, OS_LOG_TYPE_ERROR, v552, __p, 0x12u);
        goto LABEL_1025;
      }

      v152 = *a5;
      if (v152 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v487 = sub_5544(14);
        v377 = 561211770;
        v488 = sub_468EC(1, *v487, *(v487 + 8));
        if (v488)
        {
          v378 = v488;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      if ((a3 | 4) != 4)
      {
        v595 = sub_5544(14);
        v596 = sub_468EC(1, *v595, *(v595 + 8));
        v492 = v596;
        if (v596 && os_log_type_enabled(v596, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6421;
          _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        goto LABEL_1090;
      }

      *buf = sub_3AFAA4(a1, a3, a4);
      *&buf[8] = v153;
      v154 = *(a1 + 216);
      LOBYTE(v652[0]) = 0;
      LOBYTE(v652[1]) = 0;
      v155 = *(v154 + 16) == 1 && (sub_98A64(v652, *(v154 + 8)), LOBYTE(v652[1]) = 1, v652[0]) && CFDictionaryGetCount(v652[0]) != 0;
      sub_43E6C(&theDict, buf, v155, 0);
      v202 = 1852793716;
      sub_3A6658(v652);
      *buf = *&theDict.__r_.__value_.__l.__data_;
      *&buf[24] = 0;
      *&buf[16] = &buf[24];
      v680 = 0;
      v679 = 0;
      v677 = 0;
      v678 = &v679;
      v682 = 0;
      v681 = &v682;
      v686 = 0;
      v685 = 0;
      v683 = 0;
      v684 = &v685;
      v688 = 0;
      v687 = &v688;
      v693 = 0;
      v691 = 0;
      v689 = 0;
      v690 = 0;
      v692 = 0;
      v694 = 1668248944;
      v695 = 1852796517;
      v698 = 0;
      v696 = 0;
      v697 = 0;
      v699 = 0x756E64656175746FLL;
      v700 = 0u;
      v701 = 0u;
      v702 = 0u;
      v703 = 0u;
      v704 = 0u;
      v705 = 1065353216;
      *&v707[8] = 0u;
      v706 = 0u;
      *v707 = 0u;
      *&v707[16] = 1065353216;
      v708 = 0u;
      v709 = 0u;
      v710 = 1065353216;
      v711 = 0;
      v712 = 0;
      v714 = 0;
      v715 = 0;
      v716 = 0;
      v713 = 0;
      v720 = 0;
      v718 = 0;
      v717 = 0;
      v719 = 0;
      memset(v652, 0, 24);
      LODWORD(v653) = 3;
      v655 = 0;
      v656 = 0;
      v654 = &v655;
      v659 = 0;
      v660 = 0;
      v658 = 0;
      v657 = 44731048;
      LODWORD(v652[3]) = 1986295651;
      HIDWORD(v652[3]) = HIDWORD(theDict.__r_.__value_.__r.__words[0]);
      LOBYTE(v652[4]) = 1;
      v203 = *(a1 + 112);
      __p[0] = 0;
      __p[4] = 0;
      sub_26DA2C(v651, v203, buf, v652, __p);
      switch(*v651)
      {
        case 0:
          sub_87554(*(a2 + 4), &v651[8]);
          memset(__p, 0, 24);
          strcpy(&__p[24], "cwdv");
          __p[32] = 0;
          LODWORD(v668) = 3;
          v671 = 0;
          v670 = 0;
          v669 = &v670;
          v675 = 0;
          v673 = 0;
          v674 = 0;
          v672 = 44731050;
          sub_87760(v650, a1, &v651[8], __p);
          sub_46934(__p);
          v204 = sub_5544(2);
          v205 = sub_5544(35);
          v206 = 0;
          *__p = 0x100000002;
          v207 = *(v204 + 8);
          while (1)
          {
            v208 = *&__p[v206];
            if (((v207 & v208) != 0) != ((*(v205 + 8) & v208) != 0))
            {
              break;
            }

            v206 += 4;
            if (v206 == 8)
            {
              goto LABEL_448;
            }
          }

          if ((v207 & v208) == 0)
          {
            v204 = v205;
          }

          v207 = *(v204 + 8);
LABEL_448:
          v232 = sub_468EC(6, *v204, v207);
          v233 = v232;
          if (v232)
          {
            v234 = v232;
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(&v645, theDict.__r_.__value_.__l.__data_);
              v235 = SHIBYTE(v645.__r_.__value_.__r.__words[2]);
              v236 = v645.__r_.__value_.__r.__words[0];
              sub_87BA8(&v644, v650);
              v237 = &v645;
              if (v235 < 0)
              {
                v237 = v236;
              }

              if ((v644.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v238 = &v644;
              }

              else
              {
                v238 = v644.__r_.__value_.__r.__words[0];
              }

              *__p = 136315906;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 6441;
              *&__p[18] = 2080;
              *&__p[20] = v237;
              *&__p[28] = 2080;
              *&__p[30] = v238;
              _os_log_impl(&dword_0, v234, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning connected ports for category '%s': %s", __p, 0x26u);
              if (SHIBYTE(v644.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v644.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v645.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v645.__r_.__value_.__l.__data_);
              }
            }
          }

          *__p = sub_47A88(*v650, &v650[8]);
          *a6 = CFRetain(*__p);
          sub_46228(__p);
          sub_477A0(*&v650[8]);
          goto LABEL_498;
        case 2:
          v531 = sub_5544(14);
          v532 = sub_468EC(1, *v531, *(v531 + 8));
          v388 = v532;
          if (!v532 || !os_log_type_enabled(v532, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1127;
          }

          *__p = 136315394;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 6433;
          v533 = "%25s:%-5d EXCEPTION (kVirtualAudioObjectCategoryNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)";
          break;
        case 1:
          v386 = sub_5544(14);
          v387 = sub_468EC(1, *v386, *(v386 + 8));
          v388 = v387;
          if (v387 && os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VirtualAudio_PlugIn.mm";
            *&__p[12] = 1024;
            *&__p[14] = 6433;
            _os_log_impl(&dword_0, v388, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)", __p, 0x12u);
            v202 = 1852797556;
          }

          else
          {
            v202 = 1852797556;
          }

LABEL_1127:

          v627 = __cxa_allocate_exception(0x10uLL);
          *v627 = &off_6DDDD0;
          v627[2] = v202;
        default:
          v537 = sub_5544(14);
          v202 = 2003329396;
          v538 = sub_468EC(1, *v537, *(v537 + 8));
          v388 = v538;
          if (!v538 || !os_log_type_enabled(v538, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1127;
          }

          *__p = 136315394;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 6433;
          v533 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): (Error processing kVirtualAudioPlugInPropertyConnectedPortsForCategory.)";
          break;
      }

      _os_log_impl(&dword_0, v388, OS_LOG_TYPE_ERROR, v533, __p, 0x12u);
      goto LABEL_1127;
    }

    if (v19 == 1651664755)
    {
      v109 = *a5;
      if (v109 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v467 = sub_5544(14);
        v377 = 561211770;
        v468 = sub_468EC(1, *v467, *(v467 + 8));
        if (v468)
        {
          v378 = v468;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      v72 = MGGetBoolAnswer();
      goto LABEL_522;
    }

    if (v19 != 1667329392)
    {
      goto LABEL_314;
    }

LABEL_161:
    v76 = sub_5544(2);
    v77 = sub_5544(35);
    v78 = 0;
    *buf = 0x100000002;
    v79 = *(v76 + 8);
    while (1)
    {
      v80 = *&buf[v78];
      if (((v79 & v80) != 0) != ((*(v77 + 8) & v80) != 0))
      {
        break;
      }

      v78 += 4;
      if (v78 == 8)
      {
        goto LABEL_167;
      }
    }

    if ((v79 & v80) == 0)
    {
      v76 = v77;
    }

LABEL_167:
    v81 = *v76;
    v82 = v81;
    if (v81)
    {
      v83 = v81;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v652, *a2);
        v84 = SHIBYTE(v652[2]) >= 0 ? v652 : v652[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 6679;
        *&buf[18] = 2080;
        *&buf[20] = v84;
        _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d GetPropertyData() unsupported for '%s'", buf, 0x1Cu);
        if (SHIBYTE(v652[2]) < 0)
        {
          operator delete(v652[0]);
        }
      }
    }

    goto LABEL_739;
  }

  if (v19 > 1701737067)
  {
    if (v19 == 1701737068)
    {
      v111 = *(a1 + 552);
      goto LABEL_709;
    }

    if (v19 != 1751480691)
    {
      if (v19 != 1768845421)
      {
        goto LABEL_314;
      }

      v61 = *a5;
      if (v61 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v449 = sub_5544(14);
        v377 = 561211770;
        v450 = sub_468EC(1, *v449, *(v449 + 8));
        if (v450)
        {
          v378 = v450;
          if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
          {
            *__p = *a2;
            *&__p[8] = *(a2 + 8);
            sub_22CE0(v652);
          }

          goto LABEL_931;
        }

        goto LABEL_774;
      }

      v62 = sub_5544(2);
      v63 = sub_5544(35);
      v64 = 0;
      *buf = 0x100000002;
      v65 = *(v62 + 8);
      while (1)
      {
        v66 = *&buf[v64];
        if (((v65 & v66) != 0) != ((*(v63 + 8) & v66) != 0))
        {
          break;
        }

        v64 += 4;
        if (v64 == 8)
        {
          goto LABEL_417;
        }
      }

      if ((v65 & v66) == 0)
      {
        v62 = v63;
      }

      v65 = *(v62 + 8);
LABEL_417:
      v221 = sub_468EC(6, *v62, v65);
      v222 = v221;
      if (v221)
      {
        v223 = v221;
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v652, *(a1 + 228));
          v224 = SHIBYTE(v652[2]) >= 0 ? v652 : v652[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6590;
          *&buf[18] = 2080;
          *&buf[20] = v224;
          _os_log_impl(&dword_0, v223, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning current mode: '%s'", buf, 0x1Cu);
          if (SHIBYTE(v652[2]) < 0)
          {
            operator delete(v652[0]);
          }
        }
      }

      v111 = *(a1 + 228);
      goto LABEL_709;
    }

LABEL_180:
    v86 = *a5;
    if (v86 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v410 = sub_5544(14);
      v377 = 561211770;
      v411 = sub_468EC(1, *v410, *(v410 + 8));
      if (v411)
      {
        v378 = v411;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    v72 = sub_1CA64C();
    goto LABEL_522;
  }

  if (v19 == 1684632434)
  {
    v127 = *a5;
    if (v127 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v477 = sub_5544(14);
      v377 = 561211770;
      v478 = sub_468EC(1, *v477, *(v477 + 8));
      if (v478)
      {
        v378 = v478;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    if (a3 != 8 || !a4)
    {
      v518 = sub_5544(14);
      v377 = 561211770;
      v519 = sub_468EC(1, *v518, *(v518 + 8));
      if (v519)
      {
        v378 = v519;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    sub_10FD4(buf, a4);
    v50 = sub_3B14D0(a1, buf);
    v51 = buf;
    goto LABEL_258;
  }

  if (v19 != 1685283955)
  {
    if (v19 != 1701013875)
    {
      goto LABEL_314;
    }

    v43 = *a5;
    if (v43 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v437 = sub_5544(14);
      v377 = 561211770;
      v438 = sub_468EC(1, *v437, *(v437 + 8));
      if (v438)
      {
        v378 = v438;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }

        goto LABEL_931;
      }

      goto LABEL_774;
    }

    if (a3 != 8)
    {
      v493 = sub_5544(14);
      v494 = sub_468EC(1, *v493, *(v493 + 8));
      v492 = v494;
      if (v494 && os_log_type_enabled(v494, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 6726;
        _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      goto LABEL_1090;
    }

    if (!a4)
    {
      v522 = sub_5544(14);
      v523 = sub_468EC(1, *v522, *(v522 + 8));
      v492 = v523;
      if (v523 && os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 6727;
        _os_log_impl(&dword_0, v492, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      goto LABEL_1090;
    }

    *a6 = 0;
    sub_10FD4(__p, a4);
    if (*__p)
    {
      sub_38188(buf, a1, __p, 0, 1);
    }

    else
    {
      sub_A1DF4(buf, a1);
    }

    sub_44E98(v652, buf);
    sub_4AE8C(buf);
    if (v652[0] == 0x696D646663706172 && !BYTE4(v652[1]))
    {
      *a6 = 1;
    }

    sub_4AF90(v652);
    v295 = __p;
LABEL_642:
    sub_4BA7C(v295);
    goto LABEL_739;
  }

  v96 = *a5;
  if (v96 != (*(*a1 + 64))(a1, a2, a3, a4))
  {
    v459 = sub_5544(14);
    v377 = 561211770;
    v460 = sub_468EC(1, *v459, *(v459 + 8));
    if (v460)
    {
      v378 = v460;
      if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
      {
        *__p = *a2;
        *&__p[8] = *(a2 + 8);
        sub_22CE0(v652);
      }

      goto LABEL_931;
    }

    goto LABEL_774;
  }

  if (!_os_feature_enabled_impl())
  {
    v261 = sub_2450DC();
    v72 = sub_2451FC(v261);
    goto LABEL_522;
  }

  v97 = sub_5544(8);
  v98 = sub_468EC(2, *v97, *(v97 + 8));
  v99 = v98;
  if (v98)
  {
    v100 = v98;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v652, 0x64736473u);
      v101 = SHIBYTE(v652[2]) >= 0 ? v652 : v652[0];
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6614;
      *&buf[18] = 2080;
      *&buf[20] = v101;
      _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling GetProperty() on deprecated property %s.", buf, 0x1Cu);
      if (SHIBYTE(v652[2]) < 0)
      {
        operator delete(v652[0]);
      }
    }
  }

  *a6 = 0;
LABEL_739:
  if (*a2 == 1668575346)
  {
    v354 = sub_5544(2);
    v355 = sub_5544(35);
    v356 = 0;
    *buf = 0x100000002;
    v357 = *(v354 + 8);
    while (1)
    {
      v358 = *&buf[v356];
      if (((v357 & v358) != 0) != ((*(v355 + 8) & v358) != 0))
      {
        break;
      }

      v356 += 4;
      if (v356 == 8)
      {
        if ((v357 & 1) == 0)
        {
          goto LABEL_752;
        }

        goto LABEL_748;
      }
    }

    if ((v357 & v358) == 0)
    {
      v354 = v355;
    }

    if (*(v354 + 8))
    {
LABEL_748:
      v359 = *v354;
      if (v359)
      {
        v360 = v359;
        if (os_log_type_enabled(v360, OS_LOG_TYPE_DEBUG))
        {
          *__p = *a2;
          *&__p[8] = *(a2 + 8);
          sub_22CE0(v652);
        }
      }
    }
  }

LABEL_752:
  sub_210C50(&v646);
}